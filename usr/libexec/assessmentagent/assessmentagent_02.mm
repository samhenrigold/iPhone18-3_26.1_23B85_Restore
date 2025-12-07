uint64_t sub_100033898()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_100033964(void *a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_100031FBC(a1, v4, v5, v6);
}

uint64_t sub_100033A10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100033A28()
{
  result = qword_1000B9678;
  if (!qword_1000B9678)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B9678);
  }

  return result;
}

uint64_t sub_100033A74()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100033AAC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100033B70(uint64_t a1, void *a2, void *a3)
{
  v7 = *(type metadata accessor for UUID() - 8);
  v8 = *(v3 + 16);
  v9 = v3 + ((*(v7 + 80) + 24) & ~*(v7 + 80));

  return sub_100032280(a1, a2, a3, v8, v9);
}

uint64_t sub_100033BFC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t sub_100033CEC()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100032680(v4, v0 + v2, v5, v6);
}

uint64_t sub_100033D88(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003F6C(&qword_1000B9608, &unk_100082268);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100033DF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100033E50(uint64_t a1)
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

char *sub_100033F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a2;
  v19 = a3;
  v17 = a1;
  v4 = *v3;
  v5 = *(*v3 + 88);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  v10 = *(v4 + 104);
  v11 = *(v5 - 8);
  v12 = *(v11 + 56);
  v12(&v3[v10], 1, 1, v5);
  v13 = *(*v3 + 120);
  *&v3[v13] = static Subscribers.Demand.none.getter();
  *&v3[*(*v3 + 128)] = 0;
  (*(v11 + 32))(v9, v17, v5);
  v12(v9, 0, 1, v5);
  swift_beginAccess();
  (*(v7 + 40))(&v3[v10], v9, v6);
  swift_endAccess();
  v14 = &v3[*(*v3 + 112)];
  v15 = v19;
  *v14 = v18;
  v14[1] = v15;
  return v3;
}

uint64_t sub_100034164(uint64_t a1)
{
  v3 = *(*v1 + 120);
  swift_beginAccess();
  v4 = *(v1 + v3);
  static Subscribers.Demand.unlimited.getter();
  if (static Subscribers.Demand.== infix(_:_:)())
  {
    goto LABEL_10;
  }

  static Subscribers.Demand.unlimited.getter();
  v5 = static Subscribers.Demand.== infix(_:_:)();
  v6 = static Subscribers.Demand.unlimited.getter();
  if (v5)
  {
LABEL_9:
    *(v1 + v3) = v6;
LABEL_10:
    swift_endAccess();
    return sub_1000343BC();
  }

  result = static Subscribers.Demand.== infix(_:_:)();
  if (result)
  {
    goto LABEL_7;
  }

  if ((v4 | a1) < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v6 = v4 + a1;
  if (__OFADD__(v4, a1))
  {
LABEL_7:
    v6 = static Subscribers.Demand.unlimited.getter();
    goto LABEL_9;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    goto LABEL_9;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_100034240()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - v5;
  v7 = *(v1 + 128);
  v8 = *(v0 + v7);
  if (v8)
  {
    [v8 cancel];
  }

  *(v0 + v7) = 0;
  swift_unknownObjectRelease();
  (*(*(v2 - 8) + 56))(v6, 1, 1, v2);
  v9 = *(*v0 + 104);
  swift_beginAccess();
  (*(v4 + 40))(v0 + v9, v6, v3);
  return swift_endAccess();
}

uint64_t sub_1000343BC()
{
  v1 = *(*v0 + 120);
  swift_beginAccess();
  v2 = *(v0 + v1);
  static Subscribers.Demand.unlimited.getter();
  result = static Subscribers.Demand.== infix(_:_:)();
  if (result)
  {
    goto LABEL_4;
  }

  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  if (v2)
  {
LABEL_4:
    v4 = *(*v0 + 128);
    if (*(v0 + v4))
    {
      return result;
    }

    v5 = sub_1000344B8();
    *(v0 + v4) = v5;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    [v5 resume];
  }

  else
  {
    v6 = *(*v0 + 128);
    result = *(v0 + v6);
    if (!result)
    {
      return result;
    }

    [result cancel];
    *(v0 + v6) = 0;
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1000344B8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(v0 + *(*v0 + 112));
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = *(v2 + 80);
  *(v5 + 32) = *(v1 + 96);
  *(v5 + 40) = v4;

  v6 = v3(sub_100034B48, v5);

  return v6;
}

uint64_t sub_1000345D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = *(a4 - 8);
  __chkstk_darwin(v7);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    v15 = *(*result + 104);
    swift_beginAccess();
    (*(v6 + 16))(v9, v14 + v15, v5);
    if ((*(v10 + 48))(v9, 1, a4) == 1)
    {

      return (*(v6 + 8))(v9, v5);
    }

    (*(v10 + 32))(v12, v9, a4);
    v16 = *(*v14 + 120);
    swift_beginAccess();
    v17 = *(v14 + v16);
    static Subscribers.Demand.unlimited.getter();
    if (static Subscribers.Demand.== infix(_:_:)())
    {
      goto LABEL_11;
    }

    static Subscribers.Demand.unlimited.getter();
    result = static Subscribers.Demand.== infix(_:_:)();
    if (result)
    {
      v18 = static Subscribers.Demand.unlimited.getter();
LABEL_10:
      *(v14 + v16) = v18;
LABEL_11:
      swift_endAccess();
      v19 = dispatch thunk of Subscriber.receive(_:)();
      swift_beginAccess();
      v20 = *(v14 + v16);
      static Subscribers.Demand.unlimited.getter();
      if (static Subscribers.Demand.== infix(_:_:)())
      {
LABEL_20:
        swift_endAccess();
        sub_1000343BC();

        return (*(v10 + 8))(v12, a4);
      }

      static Subscribers.Demand.unlimited.getter();
      v21 = static Subscribers.Demand.== infix(_:_:)();
      v22 = static Subscribers.Demand.unlimited.getter();
      if (v21)
      {
LABEL_19:
        *(v14 + v16) = v22;
        goto LABEL_20;
      }

      result = static Subscribers.Demand.== infix(_:_:)();
      if (result)
      {
LABEL_17:
        v22 = static Subscribers.Demand.unlimited.getter();
        goto LABEL_19;
      }

      if (((v20 | v19) & 0x8000000000000000) == 0)
      {
        v22 = v20 + v19;
        if (!__OFADD__(v20, v19))
        {
          if ((v22 & 0x8000000000000000) == 0)
          {
            goto LABEL_19;
          }

LABEL_25:
          __break(1u);
          return result;
        }

        goto LABEL_17;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (v17 < 0)
    {
      __break(1u);
    }

    else if (v17)
    {
      v18 = v17 - 1;
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_24;
  }

  return result;
}

uint64_t sub_10003492C()
{
  v1 = *(*v0 + 104);
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1000349EC()
{
  sub_10003492C();

  return swift_deallocClassInstance();
}

uint64_t sub_100034AD8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100034B10()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_100034B58()
{
  result = qword_1000B9708;
  if (!qword_1000B9708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9708);
  }

  return result;
}

uint64_t sub_100034BAC()
{
  if (qword_1000B64B8 != -1)
  {
    swift_once();
  }

  v0 = qword_1000BC660;

  return v0;
}

uint64_t sub_100034C14(uint64_t a1)
{
  *(v2 + 288) = a1;
  *(v2 + 296) = v1;
  return _swift_task_switch(sub_100034C34, 0, 0);
}

uint64_t sub_100034C34()
{
  sub_100026B2C(*(v0 + 296) + 104, v0 + 232);
  if (*(v0 + 256))
  {
    *(v0 + 224) = *(v0 + 280);
    v1 = *(v0 + 264);
    *(v0 + 192) = *(v0 + 248);
    *(v0 + 208) = v1;
    *(v0 + 176) = *(v0 + 232);
    v2 = *(v0 + 200);
    v3 = *(v0 + 208);
    sub_100005A3C((v0 + 176), v2);
    v4 = (*(v3 + 48))(v2, v3);
    v6 = v5;
    v7 = objc_allocWithZone(LSApplicationRecord);
    v10 = sub_10005B030(v4, v6, 0);
    v11 = [v10 localizedName];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    if (qword_1000B64F0 != -1)
    {
      swift_once();
    }

    sub_100003F6C(&qword_1000B9718, &unk_100083BF0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1000807D0;
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = sub_10003549C();
    *(v15 + 32) = v12;
    *(v15 + 40) = v14;
    v9 = String.init(format:_:)();
    v8 = v16;
    sub_100030C2C(v0 + 176);
  }

  else
  {
    sub_1000353E0(v0 + 232);
    if (qword_1000B64F8 != -1)
    {
      swift_once();
    }

    v9 = qword_1000BC6C8;
    v8 = unk_1000BC6D0;
  }

  if (qword_1000B64E8 != -1)
  {
    swift_once();
  }

  v18 = qword_1000BC6A8;
  v17 = unk_1000BC6B0;
  v19 = qword_1000B6500;

  if (v19 != -1)
  {
    swift_once();
  }

  v21 = qword_1000BC6D8;
  v20 = unk_1000BC6E0;
  v22 = qword_1000B6508;

  if (v22 != -1)
  {
    swift_once();
  }

  v24 = qword_1000BC6E8;
  v23 = unk_1000BC6F0;
  *(v0 + 96) = v18;
  *(v0 + 104) = v17;
  *(v0 + 112) = v9;
  *(v0 + 120) = v8;
  *(v0 + 128) = v21;
  *(v0 + 136) = v20;
  *(v0 + 144) = v24;
  *(v0 + 152) = v23;
  *(v0 + 160) = 16777473;
  *(v0 + 168) = 0x404E000000000000;
  v25 = *(v0 + 112);
  *(v0 + 16) = *(v0 + 96);
  *(v0 + 32) = v25;
  v26 = *(v0 + 144);
  *(v0 + 48) = *(v0 + 128);
  *(v0 + 64) = v26;
  *(v0 + 80) = *(v0 + 160);

  v27 = swift_task_alloc();
  *(v0 + 304) = v27;
  *v27 = v0;
  v27[1] = sub_100034FD0;

  return sub_100010108(v0 + 16);
}

uint64_t sub_100034FD0(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    sub_100035448(v4 + 96);
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 312) = a1;
    sub_100035448(v4 + 96);

    return _swift_task_switch(sub_10003512C, 0, 0);
  }
}

uint64_t sub_10003512C()
{
  if (*(v0 + 312))
  {
    sub_100034B58();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v2 = *(v0 + 288);
    *(v2 + 32) = 0;
    *v2 = 0u;
    *(v2 + 16) = 0u;
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000351DC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000F618;

  return sub_100034C14(a1);
}

unint64_t sub_100035288()
{
  result = qword_1000B9710;
  if (!qword_1000B9710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9710);
  }

  return result;
}

uint64_t sub_1000352DC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1000352F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_100035320(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_100035368(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000353E0(uint64_t a1)
{
  v2 = sub_100003F6C(&qword_1000BBFF0, &qword_100081B30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10003549C()
{
  result = qword_1000B9720[0];
  if (!qword_1000B9720[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B9720);
  }

  return result;
}

uint64_t Publishers.AEACombineLatestMany.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v50 = type metadata accessor for Subscribers.Completion();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = v42 - v13;
  v14 = swift_getAssociatedTypeWitness();
  v60 = a3;
  v61 = v14;
  v62 = AssociatedTypeWitness;
  v63 = a4;
  WitnessTable = a5;
  v65 = a6;
  v52 = _s20AEACombineLatestManyV5InnerC4SideVMa(0, &v60);
  v46 = *(v52 - 8);
  v15 = __chkstk_darwin(v52);
  v51 = (v42 - v16);
  v44 = *(a3 - 8);
  __chkstk_darwin(v15);
  v49 = v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v56 = type metadata accessor for Optional();
  v43 = *(v56 - 8);
  v18 = __chkstk_darwin(v56);
  v55 = v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = (v42 - v20);
  v60 = a3;
  v61 = v14;
  v45 = v14;
  v62 = AssociatedTypeWitness;
  v63 = a4;
  v54 = a5;
  WitnessTable = a5;
  v65 = a6;
  v42[1] = a6;
  v22 = _s20AEACombineLatestManyV5InnerCMa(0, &v60);

  v23 = Array.count.getter();
  v24 = sub_100037D80(a1, v23);
  v60 = a2;
  v53 = a3;
  type metadata accessor for Array();
  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {

    v63 = v22;
    WitnessTable = swift_getWitnessTable();
    v60 = v24;

    dispatch thunk of Subscriber.receive(subscription:)();
    sub_100003FB4(&v60);
    v60 = static Array._allocateUninitialized(_:)();
    dispatch thunk of Subscriber.receive(_:)();

    v25 = v47;
    (*(*(AssociatedTypeWitness - 8) + 56))(v47, 1, 1, AssociatedTypeWitness);
    dispatch thunk of Subscriber.receive(completion:)();

    return (*(v48 + 8))(v25, v50);
  }

  else
  {
    v50 = v24;
    v60 = a2;
    swift_getWitnessTable();
    Sequence.enumerated()();

    v58 = v59;
    type metadata accessor for EnumeratedSequence();
    EnumeratedSequence.makeIterator()();
    v48 = type metadata accessor for EnumeratedSequence.Iterator();
    v27 = (v43 + 32);
    v28 = TupleTypeMetadata2;
    v47 = (TupleTypeMetadata2 - 8);
    v29 = (v44 + 32);
    v30 = (v46 + 8);
    for (i = (v44 + 8); ; (*i)(v37, v41))
    {
      v32 = v55;
      EnumeratedSequence.Iterator.next()();
      (*v27)(v21, v32, v56);
      v33 = (*(*(v28 - 8) + 48))(v21, 1, v28);
      v34 = v50;
      if (v33 == 1)
      {
        break;
      }

      v35 = *v21;
      v36 = v21 + *(v28 + 48);
      v37 = v49;
      v38 = v53;
      (*v29)(v49, v36, v53);

      v39 = v51;
      sub_100035BA0(v35, v34, v51);
      v40 = v52;
      swift_getWitnessTable();
      Publisher.subscribe<A>(_:)();
      (*v30)(v39, v40);
      v41 = v38;
      v28 = TupleTypeMetadata2;
    }
  }
}

uint64_t sub_100035BA0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  *a3 = a1;
  a3[1] = a2;
  v4 = v3[6];
  v6[0] = v3[5];
  v6[1] = v4;
  v6[2] = v3[7];
  _s20AEACombineLatestManyV5InnerC4SideVMa(0, v6);
  return CombineIdentifier.init()();
}

uint64_t sub_100035C18@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v4 = type metadata accessor for Mirror.AncestorRepresentation();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003F6C(&qword_1000B98A8, &unk_1000828D0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = v18 - v10;
  __chkstk_darwin(v9);
  (*(v13 + 16))(v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  sub_100003F6C(&qword_1000B98B0, &unk_100085130);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1000807D0;
  *(v14 + 32) = 0xD000000000000012;
  *(v14 + 40) = 0x8000000100089510;
  *(v14 + 72) = type metadata accessor for CombineIdentifier();
  sub_100004F80((v14 + 48));
  v15 = a1[2];
  v19[0] = a1[1];
  v19[1] = v15;
  v19[2] = a1[3];
  _s20AEACombineLatestManyV5InnerCMa(0, v19);
  swift_getWitnessTable();
  CustomCombineIdentifierConvertible<>.combineIdentifier.getter();
  v16 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  (*(v5 + 104))(v7, enum case for Mirror.AncestorRepresentation.generated(_:), v4);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

void sub_100035EE4(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for String;
  strcpy(a1, "CombineLatest");
  *(a1 + 14) = -4864;
}

uint64_t sub_100035FC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 72);
  v5 = type metadata accessor for CombineIdentifier();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10003603C()
{
  v1 = *v0;
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003F6C(&qword_1000B98A8, &unk_1000828D0);
  __chkstk_darwin(v6 - 8);
  v8 = v12 - v7;
  v13 = v0;
  v9 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = v1[6];
  v12[0] = v1[5];
  v12[1] = v10;
  v12[2] = v1[7];
  _s20AEACombineLatestManyV5InnerCMa(0, v12);
  (*(v3 + 104))(v5, enum case for Mirror.AncestorRepresentation.generated(_:), v2);

  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

void *sub_100036218(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    if (a2)
    {
      v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v4[2] = v2;
      v5 = (v4 + 4);
      do
      {
        sub_1000382AC(v3, v5);
        v5 += 40;
        --v2;
      }

      while (v2);
    }

    else
    {
      v4 = _swiftEmptyArrayStorage;
    }

    sub_1000382E4(v3);
    return v4;
  }

  return result;
}

uint64_t *sub_10003629C()
{
  v1 = *v0;

  (*(*(*(v1 + 104) - 8) + 8))(v0 + *(*v0 + 128));

  return v0;
}

uint64_t sub_100036370()
{
  sub_10003629C();

  return swift_deallocClassInstance();
}

void sub_1000363C4(char *a1, uint64_t a2)
{
  v7 = *v2;
  if (*(v2 + *(*v2 + 176)) <= a2)
  {
    __break(1u);
    goto LABEL_22;
  }

  v4 = a2;
  v5 = a1;
  v3 = *(v2 + *(v7 + 184));
  os_unfair_lock_lock(v3);
  v8 = *v2;
  if (*(v2 + *(*v2 + 152)) & 1) != 0 || (*(v2 + v8[20]) & 1) != 0 || (*(v2 + v8[21]))
  {
    goto LABEL_8;
  }

  v6 = v8[18];
  swift_beginAccess();
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

  v9 = *(v2 + v6);
  if (*(v9 + 16) <= v4)
  {
    goto LABEL_24;
  }

  sub_1000382AC(v9 + 40 * v4 + 32, &v16);
  v10 = *&v17[8];
  sub_1000382E4(&v16);
  if (v10)
  {
LABEL_8:
    os_unfair_lock_unlock(v3);
    sub_100005A3C(v5, *(v5 + 3));
    dispatch thunk of Cancellable.cancel()();
  }

  else
  {
    sub_10000859C(v5, &v16);
    swift_beginAccess();
    v5 = *(v2 + v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v6) = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_25;
    }

    while (*(v5 + 2) > v4)
    {
      v12 = (v5 + 32);
      sub_100038314(&v16, &v5[40 * v4 + 32]);
      *(v2 + v6) = v5;
      swift_endAccess();
      v4 = *(v5 + 2);

      if (!v4)
      {
LABEL_19:

        os_unfair_lock_unlock(v3);
        v13 = *(v7 + 120);
        v14 = *(v7 + 80);
        *v17 = *(v7 + 96);
        v15 = *(v7 + 104);
        v16 = v14;
        *&v17[8] = v15;
        v18 = v13;
        *&v17[8] = _s20AEACombineLatestManyV5InnerCMa(0, &v16);
        *&v17[16] = swift_getWitnessTable();
        *&v16 = v2;

        dispatch thunk of Subscriber.receive(subscription:)();
        sub_100003FB4(&v16);
        return;
      }

      v6 = 0;
      while (v6 < *(v5 + 2))
      {
        sub_1000382AC(v12, &v16);
        v19[0] = v16;
        v19[1] = *v17;
        v20 = *&v17[16];
        if (*&v17[8] != 1)
        {
          if (!*&v17[8])
          {

            os_unfair_lock_unlock(v3);
            return;
          }

          sub_1000382E4(v19);
        }

        ++v6;
        v12 += 40;
        if (v4 == v6)
        {
          goto LABEL_19;
        }
      }

LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      v5 = sub_1000379FC(v5);
      *(v2 + v6) = v5;
    }

    __break(1u);
  }
}

void sub_1000366E8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *v2;
  v7 = *(*v2 + 88);
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v41 - v10;
  if (*(v2 + v5[22]) <= a2)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v12 = *(v2 + v6[23]);
  os_unfair_lock_lock(v12);
  v13 = *v2;
  if (*(v2 + *(*v2 + 152)) & 1) != 0 || (*(v2 + *(v13 + 160)) & 1) != 0 || (*(v2 + *(v13 + 168)))
  {
    os_unfair_lock_unlock(v12);

    goto LABEL_7;
  }

  v14 = *(v7 - 8);
  (*(v14 + 16))(v11, a1, v7);
  (*(v14 + 56))(v11, 0, 1, v7);
  v15 = a2;
  v16 = *(*v2 + 136);
  swift_beginAccess();
  v48 = type metadata accessor for Array();
  v17 = v2;
  Array._makeMutableAndUnique()();
  v18 = *(v2 + v16);
  sub_1000379A8(v15, v18, v8);
  v20 = *(v9 + 40);
  v19 = v9 + 40;
  v21 = v18 + ((*(v19 + 40) + 32) & ~*(v19 + 40));
  v22 = *(v19 + 32);
  v44 = v15;
  v20(v21 + v22 * v15, v11, v8);
  v23 = swift_endAccess();
  v47 = &v41;
  v46 = v17;
  v45 = v16;
  *v52 = *(v17 + v16);
  __chkstk_darwin(v23);
  v43 = v6[10];
  *(&v41 - 6) = v43;
  *(&v41 - 5) = v7;
  v24 = v6[13];
  v42 = v6[12];
  *(&v41 - 4) = v42;
  *(&v41 - 3) = v24;
  v26 = v6[14];
  v25 = v6[15];
  *(&v41 - 2) = v26;
  *(&v41 - 1) = v25;

  WitnessTable = swift_getWitnessTable();
  LOBYTE(v18) = Sequence.allSatisfy(_:)();

  if ((v18 & 1) == 0)
  {
    os_unfair_lock_unlock(v12);
    goto LABEL_7;
  }

  v47 = &v41;
  v41 = WitnessTable;
  *v52 = *(v46 + v45);
  __chkstk_darwin(v28);
  *(&v41 - 6) = v43;
  *(&v41 - 5) = v7;
  *(&v41 - 4) = v42;
  *(&v41 - 3) = v24;
  *(&v41 - 2) = v26;
  *(&v41 - 1) = v25;

  v29 = Sequence.compactMap<A>(_:)();

  os_unfair_lock_unlock(v12);
  *v52 = v29;
  v30 = dispatch thunk of Subscriber.receive(_:)();

  static Subscribers.Demand.unlimited.getter();
  v31 = static Subscribers.Demand.== infix(_:_:)();
  v32 = v44;
  if ((v31 & 1) == 0)
  {
    if ((v30 & 0x8000000000000000) == 0)
    {
      if (v30)
      {
        goto LABEL_12;
      }

LABEL_7:
      static Subscribers.Demand.none.getter();
      return;
    }

LABEL_27:
    __break(1u);
    return;
  }

LABEL_12:
  os_unfair_lock_lock(v12);
  v33 = v46;
  v34 = *(*v46 + 144);
  swift_beginAccess();
  v35 = *(v33 + v34);

  os_unfair_lock_unlock(v12);
  v36 = *(v35 + 16);
  if (v36)
  {
    v37 = 0;
    v38 = v35 + 32;
    do
    {
      if (v37 >= *(v35 + 16))
      {
        goto LABEL_26;
      }

      *v52 = v37;
      sub_1000382AC(v38, &v52[8]);
      if (*(&v53[0] + 1) == 2)
      {
        break;
      }

      v40 = *v52;
      *v52 = *&v52[8];
      *&v52[16] = *&v53[0];
      v53[0] = *(v53 + 8);
      v39 = v52;
      if (v40 != v32)
      {
        sub_1000382AC(v52, &v49);
        if (v50 > 1)
        {
          sub_100008748(&v49, v51);
          sub_100005A3C(v51, v51[3]);
          dispatch thunk of Subscription.request(_:)();
          sub_1000382E4(v52);
          sub_100003FB4(v51);
          goto LABEL_16;
        }

        sub_1000382E4(v52);
        v39 = &v49;
      }

      sub_1000382E4(v39);
LABEL_16:
      ++v37;
      v38 += 40;
    }

    while (v36 != v37);
  }
}

void sub_100036D30(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 96);
  swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for Subscribers.Completion();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v23 - v12;
  v14 = *(v2 + *(v5 + 184));
  os_unfair_lock_lock(v14);
  v15 = *v2;
  if (*(v2 + *(*v2 + 152)) & 1) != 0 || (v16 = *(v15 + 160), (*(v2 + v16)) || (*(v2 + *(v15 + 168)))
  {

LABEL_6:
    os_unfair_lock_unlock(v14);
    return;
  }

  v24 = *(v15 + 168);
  (*(v8 + 16))(v13, a1, v7);
  v23 = *(v6 - 8);
  if ((*(v23 + 48))(v13, 1, v6) != 1)
  {
    *(v2 + v16) = 1;
    sub_100037100(a1, a2);
    (*(v8 + 8))(v13, v7);
    return;
  }

  v27 = 0uLL;
  *v28 = 0;
  *&v28[8] = xmmword_1000807B0;
  v17 = *(*v2 + 144);
  swift_beginAccess();
  v18 = *(v2 + v17);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v17) = v18;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = sub_1000379FC(v18);
  *(v2 + v17) = v18;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if (*(v18 + 2) <= a2)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v20 = (v18 + 32);
  sub_100038314(&v27, &v18[40 * a2 + 32]);
  *(v2 + v17) = v18;
  swift_endAccess();
  v21 = *(v18 + 2);
  if (v21)
  {
    while (1)
    {
      sub_1000382AC(v20, &v27);
      v25[0] = v27;
      v25[1] = *v28;
      v26 = *&v28[16];
      if (*&v28[8] != 1)
      {
        break;
      }

      v20 += 40;
      if (!--v21)
      {
        goto LABEL_14;
      }
    }

    if (*&v28[8])
    {
      sub_1000382E4(v25);
    }

    goto LABEL_6;
  }

LABEL_14:
  v22 = v23;
  *(v2 + v24) = 1;
  (*(v22 + 56))(v11, 1, 1, v6);
  sub_100037100(v11, a2);
  (*(v8 + 8))(v11, v7);
}

void sub_100037100(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v20[1] = a1;
  v5 = *(*v2 + 88);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v20 - v8;
  (*(*(v5 - 8) + 56))(v20 - v8, 1, 1, v5);
  v10 = *(v3 + *(*v3 + 176));
  v11 = sub_100037A10(v9, v10, v6);
  (*(v7 + 8))(v9, v6);
  v12 = *(*v3 + 136);
  swift_beginAccess();
  *(v3 + v12) = v11;

  v13 = *(*v3 + 144);
  swift_beginAccess();
  v14 = *(v3 + v13);
  memset(v24, 0, 40);

  *(v3 + v13) = sub_100036218(v24, v10);

  os_unfair_lock_unlock(*(v3 + *(*v3 + 184)));
  v15 = *(v14 + 16);
  if (!v15)
  {
LABEL_11:

    dispatch thunk of Subscriber.receive(completion:)();
    return;
  }

  v16 = 0;
  v17 = v14 + 32;
  while (v16 < *(v14 + 16))
  {
    *v24 = v16;
    sub_1000382AC(v17, &v24[8]);
    if (*&v24[32] == 2)
    {
      goto LABEL_11;
    }

    v19 = *v24;
    *v24 = *&v24[8];
    *&v24[16] = *&v24[24];
    *&v24[24] = *&v24[32];
    v18 = v24;
    if (v19 != a2)
    {
      sub_1000382AC(v24, &v21);
      if (v22 > 1)
      {
        sub_100008748(&v21, v23);
        sub_100005A3C(v23, v23[3]);
        dispatch thunk of Cancellable.cancel()();
        sub_1000382E4(v24);
        sub_100003FB4(v23);
        goto LABEL_5;
      }

      sub_1000382E4(v24);
      v18 = &v21;
    }

    sub_1000382E4(v18);
LABEL_5:
    ++v16;
    v17 += 40;
    if (v15 == v16)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_100037448()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - v5;
  v7 = *(v0 + *(v1 + 184));
  os_unfair_lock_lock(v7);
  v8 = *(*v0 + 152);
  if (*(v0 + v8))
  {

    os_unfair_lock_unlock(v7);
  }

  else
  {
    v9 = *(*v0 + 144);
    swift_beginAccess();
    v10 = *(v0 + v9);
    *(v0 + v8) = 1;
    memset(v18, 0, sizeof(v18));
    v19 = xmmword_1000807B0;
    v11 = *(v0 + *(*v0 + 176));

    *(v0 + v9) = sub_100036218(v18, v11);

    (*(*(v2 - 8) + 56))(v6, 1, 1, v2);
    v12 = sub_100037A10(v6, v11, v3);
    (*(v4 + 8))(v6, v3);
    v13 = *(*v0 + 136);
    swift_beginAccess();
    *(v0 + v13) = v12;

    os_unfair_lock_unlock(v7);
    v14 = *(v10 + 16);
    if (v14)
    {
      v15 = v10 + 32;
      do
      {
        sub_1000382AC(v15, &v16);
        if (v17 <= 1)
        {
          sub_1000382E4(&v16);
        }

        else
        {
          sub_100008748(&v16, v18);
          sub_100005A3C(v18, v19);
          dispatch thunk of Cancellable.cancel()();
          sub_100003FB4(v18);
        }

        v15 += 40;
        --v14;
      }

      while (v14);
    }
  }
}

void sub_100037744(uint64_t a1)
{
  static Subscribers.Demand.unlimited.getter();
  if ((static Subscribers.Demand.== infix(_:_:)() & 1) == 0)
  {
    if (a1 < 0)
    {
      __break(1u);
    }

    else if (a1)
    {
      goto LABEL_4;
    }

    __break(1u);
    return;
  }

LABEL_4:
  v3 = *(v1 + *(*v1 + 184));
  os_unfair_lock_lock(v3);
  v4 = *v1;
  if (*(v1 + *(*v1 + 152)) & 1) != 0 || (*(v1 + v4[20]) & 1) != 0 || (*(v1 + v4[21]))
  {

    os_unfair_lock_unlock(v3);
  }

  else
  {
    v5 = v4[18];
    swift_beginAccess();
    v6 = *(v1 + v5);

    os_unfair_lock_unlock(v3);
    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = v6 + 32;
      do
      {
        sub_1000382AC(v8, &v9);
        if (v10 > 1)
        {
          sub_100008748(&v9, v11);
          sub_100005A3C(v11, v11[3]);
          dispatch thunk of Subscription.request(_:)();
          sub_100003FB4(v11);
        }

        else
        {
          sub_1000382E4(&v9);
        }

        v8 += 40;
        --v7;
      }

      while (v7);
    }
  }
}

uint64_t sub_1000379A8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v6 = a2;
  }

  if (*(v6 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100037A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = static Array._allocateUninitialized(_:)();
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      v9 = v7;
      v10 = *(a3 - 8);
      v11 = *(v10 + 16);
      v11(v7, a1, a3);
      v12 = a2 - 1;
      if (v12)
      {
        v13 = *(v10 + 72);
        v14 = v9 + v13;
        do
        {
          v11(v14, a1, a3);
          v14 += v13;
          --v12;
        }

        while (v12);
      }
    }

    type metadata accessor for Array();
    return v8;
  }

  return result;
}

uint64_t *sub_100037B14(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 88);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v15 - v9;
  *(v2 + *(v5 + 152)) = 0;
  *(v2 + *(*v2 + 160)) = 0;
  *(v2 + *(*v2 + 168)) = 0;
  v11 = *(*v2 + 184);
  v12 = swift_slowAlloc();
  *(v2 + v11) = v12;
  *v12 = 0;
  (*(*(*(v5 + 104) - 8) + 16))(v2 + *(*v2 + 128), a1);
  *(v2 + *(*v2 + 176)) = a2;
  (*(*(v6 - 8) + 56))(v10, 1, 1, v6);
  v13 = sub_100037A10(v10, a2, v7);
  (*(v8 + 8))(v10, v7);
  *(v2 + *(*v2 + 136)) = v13;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  *(v2 + *(*v2 + 144)) = sub_100036218(v15, a2);
  return v2;
}

uint64_t *sub_100037D80(uint64_t a1, uint64_t a2)
{
  v5 = v2[6];
  v7[0] = v2[5];
  v7[1] = v5;
  v7[2] = v2[7];
  _s20AEACombineLatestManyV5InnerCMa(0, v7);
  swift_allocObject();
  return sub_100037B14(a1, a2);
}

uint64_t sub_100037DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100037E40(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t sub_100037F0C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100037F24(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 40))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100037F78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

double sub_100037FDC(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100038018(_OWORD *a1)
{
  v6 = 0;
  v9 = &type metadata for Int;
  v1 = a1[2];
  v5[0] = a1[1];
  v5[1] = v1;
  v5[2] = a1[3];
  result = _s20AEACombineLatestManyV5InnerCMa(319, v5);
  if (v3 <= 0x3F)
  {
    v7 = 0;
    v10 = result;
    result = type metadata accessor for CombineIdentifier();
    if (v4 <= 0x3F)
    {
      v8 = 0;
      v11 = result;
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000380D4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for CombineIdentifier();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 72);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100038194(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CombineIdentifier();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 72);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10003841C(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_100005A3C((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_100003F6C(&qword_1000B7CC8, &unk_100080A50);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_100038518(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return _swift_task_switch(sub_100038538, 0, 0);
}

uint64_t sub_100038538()
{
  v1 = [objc_opt_self() serviceWithDefaultShellEndpoint];
  v0[21] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = String._bridgeToObjectiveC()();
    v0[22] = v3;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1000386E0;
    v4 = swift_continuation_init();
    v0[17] = sub_100003F6C(&qword_1000B9958, &qword_100082918);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10003841C;
    v0[13] = &unk_1000A8C58;
    v0[14] = v4;
    [v2 openApplication:v3 withOptions:0 completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1000386E0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_100038864;
  }

  else
  {
    v2 = sub_1000387F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000387F0()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100038864(uint64_t a1)
{
  v2 = v1[22];
  v3 = v1[21];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_1000388F8()
{
  v1 = v0;
  v2 = (v0 + 16);
  v3 = *(v0 + 16);
  if (v3)
  {
    v4 = *(v0 + 24);
    *v2 = 0;
    v2[1] = 0;
    v3();
    sub_10000858C(v3, v4);
    v5 = *(v1 + 16);
  }

  else
  {
    v5 = 0;
  }

  sub_10000858C(v5, *(v1 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_100038A14()
{
  v1 = sub_100003F6C(&qword_1000B7BA0, &qword_100080458);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v14 = sub_100003F6C(&qword_1000B9B68, &qword_1000829C0);
  v4 = *(v14 - 8);
  __chkstk_darwin(v14);
  v6 = &v13 - v5;
  v15 = *(v0 + 24);
  v7 = qword_1000B6460;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = qword_1000BC5B8;
  v16 = qword_1000BC5B8;
  v9 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  v10 = v8;
  sub_100003F6C(&qword_1000B9B70, &qword_1000829C8);
  sub_100022884(0, &qword_1000B7BC8, OS_dispatch_queue_serial_ptr);
  sub_100004EE0(&qword_1000B9B78, &qword_1000B9B70, &qword_1000829C8, &unk_100081748);
  sub_10003A5F8();
  Publisher.receive<A>(on:options:)();
  sub_100019B28(v3, &qword_1000B7BA0, &qword_100080458);

  sub_100004EE0(qword_1000B9B80, &qword_1000B9B68, &qword_1000829C0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  v11 = v14;
  Publisher<>.sink(receiveValue:)();

  (*(v4 + 8))(v6, v11);
  swift_beginAccess();
  sub_100003F6C(&qword_1000B80F0, &unk_100081CC0);
  sub_100004EE0(&qword_1000B80F8, &qword_1000B80F0, &unk_100081CC0, &protocol conformance descriptor for [A]);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();
}

void sub_100038D78(uint64_t *a1, uint64_t a2)
{
  v42 = *a1;
  v3 = a1[2];
  v4 = *(v3 + 16);
  if (v4)
  {
    swift_beginAccess();
    v5 = (v3 + 40);
    do
    {
      v6 = *(a2 + 48);
      if (*(v6 + 16))
      {
        v7 = *(v5 - 1);
        v8 = *v5;
        sub_10001C9CC(v7, *v5);

        v9 = sub_100020F6C(v7, v8);
        if (v10)
        {
          sub_100030BD0(*(v6 + 56) + 56 * v9, &v44);

          v48 = v44;
          v49 = v45;
          v50 = v46;
          v51 = v47;
          swift_beginAccess();
          v11 = sub_100020F6C(v7, v8);
          if (v12)
          {
            v13 = v11;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v15 = *(a2 + 48);
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_10006E09C();
            }

            sub_100005A80(*(*(v15 + 48) + 16 * v13), *(*(v15 + 48) + 16 * v13 + 8));
            v16 = *(v15 + 56) + 56 * v13;
            v18 = *(v16 + 16);
            v17 = *(v16 + 32);
            v19 = *v16;
            v47 = *(v16 + 48);
            v45 = v18;
            v46 = v17;
            v44 = v19;
            sub_10005177C(v13, v15);
            *(a2 + 48) = v15;
          }

          else
          {
            v47 = 0;
            v45 = 0u;
            v46 = 0u;
            v44 = 0u;
          }

          sub_100019B28(&v44, &qword_1000BBFF0, &qword_100081B30);
          swift_endAccess();
          v20 = *(&v49 + 1);
          v21 = v50;
          sub_100005A3C(&v48, *(&v49 + 1));
          v22 = (*(v21 + 40))(v20, v21);
          if (qword_1000B6420 != -1)
          {
            swift_once();
          }

          v23 = type metadata accessor for Logger();
          sub_10000C370(v23, qword_1000BC518);
          v24 = Logger.logObject.getter();
          v25 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            *v26 = 67240192;
            *(v26 + 4) = v22;
            _os_log_impl(&_mh_execute_header, v24, v25, "Removing PID %{public}d from exclusive frontmost list", v26, 8u);
          }

          [*(a2 + 16) stopFrontmostForPID:v22];
          swift_beginAccess();
          sub_100039FBC(v22);
          swift_endAccess();
          sub_1000394A0();
          sub_100005A80(v7, v8);
          sub_100030C2C(&v48);
        }

        else
        {
          sub_100005A80(v7, v8);
        }
      }

      v5 += 2;
      --v4;
    }

    while (v4);
  }

  v27 = *(v42 + 16);
  if (v27)
  {
    v28 = v42 + 32;
    v29 = *(a2 + 16);
    do
    {
      sub_100030BD0(v28, &v48);
      v30 = *(&v49 + 1);
      v31 = v50;
      sub_100005A3C(&v48, *(&v49 + 1));
      v32 = (*(v31 + 40))(v30, v31);
      v34 = *(&v49 + 1);
      v33 = v50;
      sub_100005A3C(&v48, *(&v49 + 1));
      v35 = (*(v33 + 24))(v34, v33);
      v37 = v36;
      sub_100030BD0(&v48, &v44);
      swift_beginAccess();
      sub_10003FD34(&v44, v35, v37);
      swift_endAccess();
      swift_beginAccess();
      sub_1000459D0(v43, v32);
      swift_endAccess();
      sub_1000394A0();
      if (qword_1000B6420 != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      sub_10000C370(v38, qword_1000BC518);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 67240192;
        *(v41 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v39, v40, "Adding PID %{public}d to exclusive frontmost list", v41, 8u);
      }

      [v29 startFrontmostForPID:v32];
      sub_100030C2C(&v48);
      v28 += 56;
      --v27;
    }

    while (v27);
  }
}

void sub_1000392AC()
{
  v1 = v0;
  if (qword_1000B6420 != -1)
  {
LABEL_16:
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C370(v2, qword_1000BC518);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Removing all exclusive frontmost processes", v5, 2u);
  }

  swift_beginAccess();
  v6 = *(v1 + 56);
  *(v1 + 56) = &_swiftEmptySetSingleton;
  v7 = sub_1000226C4(_swiftEmptyArrayStorage);
  swift_beginAccess();
  *(v1 + 48) = v7;

  v8 = 0;
  v9 = 1 << *(v6 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v6 + 56);
  v12 = (v9 + 63) >> 6;
  if (v11)
  {
    while (1)
    {
      v13 = v8;
LABEL_12:
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      [*(v1 + 16) stopFrontmostForPID:*(*(v6 + 48) + ((v13 << 8) | (4 * v14)))];
      if (!v11)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v13 >= v12)
    {
      break;
    }

    v11 = *(v6 + 56 + 8 * v13);
    ++v8;
    if (v11)
    {
      v8 = v13;
      goto LABEL_12;
    }
  }

  sub_1000394A0();
}

void sub_1000394A0()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    swift_beginAccess();
    v2 = *(v0 + 56);
    v3 = *(v2 + 16);
    if (v3)
    {
      v34 = _swiftEmptyArrayStorage;
      v30 = v1;
      swift_unknownObjectRetain();

      specialized ContiguousArray.reserveCapacity(_:)();
      v4 = v2 + 56;
      v5 = _HashTable.startBucket.getter();
      v6 = 0;
      v31 = v3;
      while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v2 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_28;
        }

        v9 = *(v2 + 36);
        [objc_allocWithZone(NSNumber) initWithInt:*(*(v2 + 48) + 4 * v5)];
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v7 = 1 << *(v2 + 32);
        if (v5 >= v7)
        {
          goto LABEL_29;
        }

        v10 = *(v4 + 8 * v8);
        if ((v10 & (1 << v5)) == 0)
        {
          goto LABEL_30;
        }

        if (v9 != *(v2 + 36))
        {
          goto LABEL_31;
        }

        v11 = v10 & (-2 << (v5 & 0x3F));
        if (v11)
        {
          v7 = __clz(__rbit64(v11)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v12 = v8 << 6;
          v13 = v8 + 1;
          v14 = (v2 + 64 + 8 * v8);
          while (v13 < (v7 + 63) >> 6)
          {
            v16 = *v14++;
            v15 = v16;
            v12 += 64;
            ++v13;
            if (v16)
            {
              sub_100019F1C(v5, v9, 0);
              v7 = __clz(__rbit64(v15)) + v12;
              goto LABEL_5;
            }
          }

          sub_100019F1C(v5, v9, 0);
        }

LABEL_5:
        ++v6;
        v5 = v7;
        if (v6 == v31)
        {

          v17 = v34;
          v1 = v30;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }

    else
    {
      swift_unknownObjectRetain();
      v17 = _swiftEmptyArrayStorage;
LABEL_20:
      sub_100039938(v17);

      isa = Array._bridgeToObjectiveC()().super.isa;

      v19 = String._bridgeToObjectiveC()();
      [v1 setArray:isa forKey:v19];

      v34 = 0;
      if ([v1 persistWithError:&v34])
      {
        v20 = v34;
        swift_unknownObjectRelease();
        return;
      }

      v21 = v34;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_1000B6420 == -1)
      {
        goto LABEL_23;
      }
    }

    swift_once();
LABEL_23:
    v22 = type metadata accessor for Logger();
    sub_10000C370(v22, qword_1000BC518);
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v34 = v26;
      *v25 = 136446210;
      swift_getErrorValue();
      v27 = sub_100067820(v32, v33);
      v29 = sub_100043D60(v27, v28, &v34);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to persist frontmost app scratchpad. Error %{public}s", v25, 0xCu);
      sub_100003FB4(v26);

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

char *sub_100039938(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_10004A99C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_100022884(0, &qword_1000B7890, NSNumber_ptr);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_10004A99C((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_100010B20(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_100022884(0, &qword_1000B7890, NSNumber_ptr);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_10004A99C((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_100010B20(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_100039B34(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_10004A99C(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_10004A99C((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_100010B20(&v8, &v2[4 * v6 + 4]);
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_100039C34()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_100039CB8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100048928();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_10003A0B8(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_100039DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  NSObject.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v20 = v3;
  v10 = ~v8;
  while (1)
  {
    v13 = (*(v6 + 48) + 24 * v9);
    v14 = v13[2];
    v15 = *v13 == a1 && v13[1] == a2;
    if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_100022884(0, &qword_1000B8878, NSObject_ptr);

      v11 = v14;
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        break;
      }
    }

    v9 = (v9 + 1) & v10;
    if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v20;
  v21 = *v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10004922C();
    v18 = v21;
  }

  v19 = *(*(v18 + 48) + 24 * v9);
  sub_10003A27C(v9);
  result = v19;
  *v20 = v21;
  return result;
}

unint64_t sub_100039FBC(unsigned int a1)
{
  v3 = *v1;
  v4 = static Hasher._hash(seed:bytes:count:)();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if ((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    while (*(*(v3 + 48) + 4 * v6) != a1)
    {
      v6 = (v6 + 1) & v7;
      if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v1;
    v13 = *v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100049398();
      v11 = v13;
    }

    v8 = *(*(v11 + 48) + 4 * v6);
    sub_10003A470(v6);
    v9 = 0;
    *v1 = v13;
  }

  else
  {
LABEL_5:
    v8 = 0;
    v9 = 1;
  }

  return v8 | (v9 << 32);
}

unint64_t sub_10003A0B8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_10003A27C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v11 = *(*(v3 + 48) + 24 * v6 + 16);
        Hasher.init(_seed:)();

        v12 = v11;
        String.hash(into:)();
        NSObject.hash(into:)();
        v13 = Hasher._finalize()();

        v14 = v13 & v7;
        if (v2 >= v9)
        {
          if (v14 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v14 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v14)
        {
LABEL_11:
          v15 = *(v3 + 48);
          v16 = v15 + 24 * v2;
          v17 = (v15 + 24 * v6);
          if (v2 != v6 || v16 >= v17 + 24)
          {
            v10 = *v17;
            *(v16 + 16) = *(v17 + 2);
            *v16 = v10;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_10003A470(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 4 * v6);
        v12 = static Hasher._hash(seed:bytes:count:)() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 4 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_10003A5F8()
{
  result = qword_1000B7BD8;
  if (!qword_1000B7BD8)
  {
    sub_100022884(255, &qword_1000B7BC8, OS_dispatch_queue_serial_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7BD8);
  }

  return result;
}

uint64_t sub_10003A6B8(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_100008748(a1, v6 + 16);
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  return v6;
}

uint64_t sub_10003A710()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 88);
  v26[1] = sub_100004B50(&qword_1000B9C20, &qword_100082A88);
  v26[4] = swift_getTupleTypeMetadata2();
  type metadata accessor for Optional();
  type metadata accessor for CurrentValueSubject();
  v26[3] = swift_getWitnessTable();
  v4 = type metadata accessor for Publishers.CompactMap();
  v5 = *(v4 - 8);
  v27 = v4;
  v28 = v5;
  __chkstk_darwin(v4);
  v7 = v26 - v6;
  sub_100004B50(&qword_1000B9C28, &unk_100082A90);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = type metadata accessor for Optional();
  __chkstk_darwin(v9 - 8);
  (*(*(TupleTypeMetadata2 - 8) + 56))(v26 - v10, 1, 1, TupleTypeMetadata2);
  v11 = CurrentValueSubject.__allocating_init(_:)();
  v13 = v1[5];
  v12 = v1[6];
  sub_100005A3C(v1 + 2, v13);
  v14 = (*(v12 + 16))(v13, v12);
  v26[2] = v15;
  v29 = v15;
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v18 = *(v2 + 80);
  v17[2] = v18;
  v17[3] = v3;
  v17[4] = v16;
  v17[5] = v11;
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = v3;
  v19[4] = sub_10003B498;
  v19[5] = v17;

  swift_getTupleTypeMetadata2();
  type metadata accessor for AnyPublisher();
  swift_getWitnessTable();
  v20 = Publisher<>.sink(receiveValue:)();

  v21 = swift_allocObject();
  *(v21 + 16) = v14;
  *(v21 + 24) = v20;
  type metadata accessor for AnyCancellable();
  swift_allocObject();

  v22 = AnyCancellable.init(_:)();
  v29 = v11;
  v23 = swift_allocObject();
  *(v23 + 16) = v18;
  *(v23 + 24) = v3;
  Publisher.compactMap<A>(_:)();

  v24 = v27;
  swift_getWitnessTable();
  Publisher.eraseToAnyPublisher()();

  (*(v28 + 8))(v7, v24);
  return v22;
}

uint64_t sub_10003ABEC(uint64_t a1, uint64_t (*a2)(void, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a2;
  v30 = a3;
  v27 = a1;
  sub_100004B50(&qword_1000B9C28, &unk_100082A90);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v28 = *(TupleTypeMetadata2 - 8);
  v9 = __chkstk_darwin(TupleTypeMetadata2);
  v11 = &v26 - v10;
  v12 = *(a7 - 8);
  __chkstk_darwin(v9);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v26 - v17;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return v29(0, 0);
  }

  v20 = *(Strong + 56);
  v26 = Strong;
  v20(v27);
  v21 = *(v12 + 32);
  v21(v11, v14, a7);
  v21(v18, v11, a7);
  v22 = &v18[*(TupleTypeMetadata2 + 48)];
  v23 = swift_allocObject();
  v24 = v30;
  *(v23 + 16) = v29;
  *(v23 + 24) = v24;
  *v22 = sub_10003B5F0;
  *(v22 + 1) = v23;
  (*(v28 + 56))(v18, 0, 1, TupleTypeMetadata2);

  CurrentValueSubject.send(_:)();

  return (*(v16 + 8))(v18, v15);
}

uint64_t sub_10003AED4(uint64_t a1, void (*a2)(uint64_t, uint64_t (*)(uint64_t, char), uint64_t), uint64_t a3, uint64_t a4)
{
  sub_100004B50(&qword_1000B9C28, &unk_100082A90);
  v6 = (a1 + *(swift_getTupleTypeMetadata2() + 48));
  v8 = *v6;
  v7 = v6[1];
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;

  a2(a1, sub_10003B5EC, v9);
}

uint64_t sub_10003AFA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v51 = a3;
  sub_100004B50(&qword_1000B9C28, &unk_100082A90);
  v50 = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(TupleTypeMetadata2 - 8);
  v7 = __chkstk_darwin(TupleTypeMetadata2);
  v47 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v46 = &v42 - v9;
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v42 - v16;
  __chkstk_darwin(v15);
  v19 = &v42 - v18;
  (*(v11 + 16))(&v42 - v18, a1, v10);
  v20 = 1;
  v48 = *(v6 + 48);
  if (v48(v19, 1, TupleTypeMetadata2) != 1)
  {
    v43 = *(TupleTypeMetadata2 + 48);
    v45 = v10;
    v21 = v50;
    v22 = *(*(v50 - 8) + 32);
    v23 = v46;
    v44 = v14;
    v22(v46, v19, v50);
    v24 = swift_allocObject();
    v49 = v6;
    v25 = v24;
    *(v24 + 16) = *&v19[v43];
    v26 = &v17[*(TupleTypeMetadata2 + 48)];
    v27 = v21;
    v10 = v45;
    v22(v17, v23, v27);
    v14 = v44;
    v20 = 0;
    *v26 = sub_100030DA8;
    v26[1] = v25;
    v6 = v49;
  }

  v30 = *(v6 + 56);
  v28 = v6 + 56;
  v29 = v30;
  v31 = 1;
  v30(v17, v20, 1, TupleTypeMetadata2);
  (*(v11 + 32))(v14, v17, v10);
  v32 = v48(v14, 1, TupleTypeMetadata2);
  v33 = v51;
  if (v32 != 1)
  {
    v34 = *(TupleTypeMetadata2 + 48);
    v35 = v50;
    v36 = *(*(v50 - 8) + 32);
    v37 = v47;
    v36(v47, v14, v50);
    v38 = swift_allocObject();
    v49 = v28;
    v39 = v38;
    *(v38 + 16) = *&v14[v34];
    v40 = &v33[*(TupleTypeMetadata2 + 48)];
    v36(v33, v37, v35);
    v31 = 0;
    *v40 = sub_10003B5A8;
    *(v40 + 1) = v39;
  }

  return v29(v33, v31, 1, TupleTypeMetadata2);
}

uint64_t sub_10003B3A4()
{
  sub_100003FB4((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_10003B420()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003B458()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003B4A4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003B4E8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003B570()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003B5F4()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_10000BD9C();
  sub_100003F6C(&unk_1000B7860, &qword_100080450);
  sub_10000BDF4();
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_10003B6A0(uint64_t a1, uint64_t a2)
{
  v17 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v17 - 8);
  __chkstk_darwin(v17);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100022884(0, &qword_1000B9CD0, OS_dispatch_source_ptr);
  sub_100022884(0, &qword_1000B9CD8, OS_dispatch_queue_ptr);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = static OS_dispatch_source.makeSignalSource(signal:queue:)();

  swift_getObjectType();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  aBlock[4] = sub_100023EE0;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100063354;
  aBlock[3] = &unk_1000A8ED8;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  sub_10003B5F4();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v14);
  (*(v4 + 8))(v6, v17);
  (*(v8 + 8))(v10, v7);

  OS_dispatch_source.resume()();
  return v12;
}

uint64_t sub_10003B938()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003B970(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10003B98C()
{
  result = qword_1000B9CE0;
  if (!qword_1000B9CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9CE0);
  }

  return result;
}

uint64_t sub_10003B9E0()
{
  if (qword_1000B64B0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000BC650;

  return v0;
}

uint64_t sub_10003BA48()
{
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001A778;

  return sub_10003CC60(v2);
}

uint64_t sub_10003BADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[32] = a4;
  v5[33] = v4;
  v5[30] = a2;
  v5[31] = a3;
  v5[29] = a1;
  return _swift_task_switch(sub_10003BB04, 0, 0);
}

uint64_t sub_10003BB04()
{
  v36 = v0;
  v1 = *(v0 + 264);
  sub_10000859C(v1 + 32, v0 + 152);
  sub_100026B2C(v1 + 80, v0 + 16);
  v2 = *(v0 + 40);
  if (v2)
  {
    v3 = *(v0 + 48);
    sub_100005A3C((v0 + 16), *(v0 + 40));
    v4 = (*(v3 + 48))(v2, v3);
    v6 = v5;
    sub_100030C2C(v0 + 16);
  }

  else
  {
    sub_1000353E0(v0 + 16);
    v4 = 0;
    v6 = 0;
  }

  v7 = *(v0 + 256);
  v34 = *(v0 + 240);
  sub_10003C9EC(*(v0 + 264), v0 + 16);
  sub_10000859C(v0 + 152, v0 + 192);
  v8 = swift_allocObject();
  v9 = *(v0 + 128);
  *(v8 + 112) = *(v0 + 112);
  *(v8 + 128) = v9;
  *(v8 + 144) = *(v0 + 144);
  v10 = *(v0 + 64);
  *(v8 + 48) = *(v0 + 48);
  *(v8 + 64) = v10;
  v11 = *(v0 + 96);
  *(v8 + 80) = *(v0 + 80);
  *(v8 + 96) = v11;
  v12 = *(v0 + 32);
  *(v8 + 16) = *(v0 + 16);
  *(v8 + 32) = v12;
  *(v8 + 152) = v34;
  *(v8 + 168) = v7;
  *(v8 + 176) = v4;
  *(v8 + 184) = v6;
  sub_100008748((v0 + 192), v8 + 192);
  v13 = qword_1000B6448;
  swift_unknownObjectRetain();

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = *(v0 + 264);
  v15 = type metadata accessor for Logger();
  sub_10000C370(v15, qword_1000BC590);
  sub_10003C9EC(v14, v0 + 16);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v35 = v19;
    *v18 = 136446210;
    v20 = Double.description.getter();
    v22 = v21;
    sub_10003CABC(v0 + 16);
    v23 = sub_100043D60(v20, v22, &v35);

    *(v18 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v16, v17, "Starting expiration timer -- the session will expire in %{public}s seconds", v18, 0xCu);
    sub_100003FB4(v19);
  }

  else
  {

    sub_10003CABC(v0 + 16);
  }

  v24 = *(v0 + 264);
  v25 = *(v24 + 24);
  v26 = *(v24 + 72);
  if (qword_1000B6460 != -1)
  {
    swift_once();
  }

  v27 = *(v0 + 232);
  v28 = qword_1000BC5B8;
  *(v0 + 48) = sub_10003CAA4;
  *(v0 + 56) = v8;
  *(v0 + 16) = _NSConcreteStackBlock;
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_100063354;
  *(v0 + 40) = &unk_1000A9080;
  v29 = _Block_copy((v0 + 16));

  v30 = [v25 scheduledTimerWithDuration:v28 queue:v29 handler:v26];
  _Block_release(v29);
  v27[3] = &type metadata for AEAExpirationDeactivation;
  v27[4] = &off_1000A9198;
  v31 = swift_allocObject();
  *v27 = v31;

  v31[2] = 0xD000000000000024;
  v31[3] = 0x8000000100089710;
  v31[4] = 5;
  v31[5] = v30;
  sub_100003FB4((v0 + 152));
  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_10003BF28(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_100003F6C(&qword_1000BA380, &qword_100080750);
  __chkstk_darwin(v12 - 8);
  v14 = &v32 - v13;
  if (qword_1000B6448 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000C370(v15, qword_1000BC590);
  sub_10003C9EC(a1, v36);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v33 = a3;
    v34 = a6;
    v20 = a5;
    v21 = v19;
    v35 = v19;
    *v18 = 136446210;
    v22 = Double.description.getter();
    v23 = a7;
    v25 = v24;
    sub_10003CABC(v36);
    v26 = sub_100043D60(v22, v25, &v35);
    a7 = v23;

    *(v18 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v16, v17, "The session expired after %{public}s seconds", v18, 0xCu);
    sub_100003FB4(v21);
    a5 = v20;
    a3 = v33;
    a6 = v34;
  }

  else
  {

    sub_10003CABC(v36);
  }

  sub_10003B98C();
  swift_allocError();
  a3();

  v27 = type metadata accessor for TaskPriority();
  (*(*(v27 - 8) + 56))(v14, 1, 1, v27);
  sub_10000859C(a7, v36);
  type metadata accessor for AgentActor();
  inited = swift_initStaticObject();
  v29 = sub_10001CFA8();
  v30 = swift_allocObject();
  v30[2] = inited;
  v30[3] = v29;
  v30[4] = a5;
  v30[5] = a6;
  sub_100008748(v36, (v30 + 6));

  sub_10006F6D0(0, 0, v14, &unk_100082CA8, v30);
}

uint64_t sub_10003C230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  type metadata accessor for AgentActor();
  swift_initStaticObject();
  sub_10001CFA8();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[8] = v7;
  v5[9] = v6;

  return _swift_task_switch(sub_10003C2C8, v7, v6);
}

uint64_t sub_10003C2C8()
{
  v13 = v0;
  v1 = v0[7];
  if (v1)
  {
    if (qword_1000B6448 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    v0[10] = sub_10000C370(v2, qword_1000BC590);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[6];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_100043D60(v5, v1, &v12);
      _os_log_impl(&_mh_execute_header, v3, v4, "Opening %{public}s because session expired", v6, 0xCu);
      sub_100003FB4(v7);
    }

    v8 = swift_task_alloc();
    v0[11] = v8;
    *v8 = v0;
    v8[1] = sub_10003C4E4;
    v9 = v0[6];

    return sub_100038518(v9, v1);
  }

  else
  {
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_10003C4E4()
{
  v2 = *v1;
  v2[12] = v0;

  if (v0)
  {
    v3 = v2[8];
    v4 = v2[9];

    return _swift_task_switch(sub_10003C614, v3, v4);
  }

  else
  {
    v5 = v2[1];

    return v5();
  }
}

uint64_t sub_10003C614()
{
  v12 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[6];
    v3 = v0[7];
    v5 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_100043D60(v4, v3, &v11);
    *(v5 + 12) = 2082;
    swift_getErrorValue();
    v6 = sub_100067820(v0[3], v0[4]);
    v8 = sub_100043D60(v6, v7, &v11);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to open %{public}s: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_10003C7D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10000F618;

  return sub_10003BADC(a1, a2, a3, a4);
}

unint64_t sub_10003C8AC()
{
  result = qword_1000B9CE8;
  if (!qword_1000B9CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9CE8);
  }

  return result;
}

__n128 sub_10003C900(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_10003C934(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_10003C97C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10003CA24()
{

  swift_unknownObjectRelease();
  sub_100003FB4(v0 + 6);
  if (v0[15])
  {
    sub_100003FB4(v0 + 12);
  }

  swift_unknownObjectRelease();

  sub_100003FB4(v0 + 24);

  return _swift_deallocObject(v0, 232, 7);
}

uint64_t sub_10003CAEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003CB04()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003CB44()
{
  swift_unknownObjectRelease();

  sub_100003FB4((v0 + 48));

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10003CB8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000F618;

  return sub_10003C230(a1, v4, v5, v6, v7);
}

uint64_t sub_10003CC80()
{
  if (qword_1000B6448 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C370(v1, qword_1000BC590);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Cancelling expiration timer", v4, 2u);
  }

  v5 = *(v0 + 16);

  [v5 cancel];
  v6 = *(v0 + 8);

  return v6();
}

id sub_10003CDE4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005A3C((v0 + 16), *(v0 + 40));
  v6 = [objc_opt_self() assessmentAgentPolicyStoreDirectoryURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = *(*v5 + 16);
  URL.path.getter();
  v8 = String._bridgeToObjectiveC()();

  v9 = [v7 fileExistsAtPath:v8];

  (*(v2 + 8))(v4, v1);
  return v9;
}

void *sub_10003D068(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000859C(v2 + 16, v25);
  v9 = [objc_opt_self() assessmentAgentPolicyStoreDirectoryURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = sub_10001A19C(v25, v25[3]);
  __chkstk_darwin(v10);
  v12 = (v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = *v12;
  v15 = type metadata accessor for AEAConcreteFileSystemPrimitives();
  v24[3] = v15;
  v24[4] = &off_1000A7928;
  v24[0] = v14;
  _s17WritingScratchpadCMa(0);
  v16 = swift_allocObject();
  v17 = sub_10001A19C(v24, v15);
  __chkstk_darwin(v17);
  v19 = (v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = *v19;
  v16[5] = v15;
  v16[6] = &off_1000A7928;
  v16[2] = v21;
  *(v16 + OBJC_IVAR____TtCC15assessmentagent14AEAPolicyStore17WritingScratchpad_backing) = _swiftEmptyDictionarySingleton;
  (*(v6 + 56))(v16 + OBJC_IVAR____TtCC15assessmentagent14AEAPolicyStore17WritingScratchpad____lazy_storage___fileURL, 1, 1, v5);
  (*(v6 + 32))(v16 + OBJC_IVAR____TtCC15assessmentagent14AEAPolicyStore17WritingScratchpad_directoryURL, v8, v5);
  v22 = (v16 + OBJC_IVAR____TtCC15assessmentagent14AEAPolicyStore17WritingScratchpad_fileName);
  *v22 = a1;
  v22[1] = a2;

  sub_100003FB4(v24);
  sub_100003FB4(v25);
  return v16;
}

uint64_t sub_10003D3DC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for URL();
  __chkstk_darwin(v5 - 8);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000859C(v2 + 16, v24);
  v8 = [objc_opt_self() assessmentAgentPolicyStoreDirectoryURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = sub_10001A19C(v24, v24[3]);
  __chkstk_darwin(v9);
  v11 = (v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = *v11;
  v14 = type metadata accessor for AEAConcreteFileSystemPrimitives();
  v23[3] = v14;
  v23[4] = &off_1000A7928;
  v23[0] = v13;
  _s17ReadingScratchpadCMa(0);
  v15 = swift_allocObject();
  v16 = sub_10001A19C(v23, v14);
  __chkstk_darwin(v16);
  v18 = (v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = *v18;

  v21 = sub_10003D8A0(v20, v7, a1, a2, v15);
  sub_100003FB4(v23);
  sub_100003FB4(v24);
  return v21;
}

uint64_t sub_10003D844()
{
  sub_100003FB4((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_10003D8A0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for AEAConcreteFileSystemPrimitives();
  v23 = &off_1000A7928;
  *(a5 + OBJC_IVAR____TtCC15assessmentagent14AEAPolicyStore17ReadingScratchpad____lazy_storage___backing) = 0;
  v21[0] = a1;
  (*(v11 + 56))(a5 + OBJC_IVAR____TtCC15assessmentagent14AEAPolicyStore17ReadingScratchpad____lazy_storage___fileURL, 1, 1, v10);
  sub_10000859C(v21, a5 + 16);
  (*(v11 + 16))(a5 + OBJC_IVAR____TtCC15assessmentagent14AEAPolicyStore17ReadingScratchpad_directoryURL, a2, v10);
  v14 = (a5 + OBJC_IVAR____TtCC15assessmentagent14AEAPolicyStore17ReadingScratchpad_fileName);
  *v14 = a3;
  v14[1] = a4;
  v15 = sub_100005A3C(v21, v22);
  sub_100074188(v13);
  v16 = *(*v15 + 16);
  URL.path.getter();
  v17 = String._bridgeToObjectiveC()();

  LODWORD(a4) = [v16 fileExistsAtPath:v17];

  v18 = *(v11 + 8);
  v18(a2, v10);
  v18(v13, v10);
  if (!a4)
  {

    a5 = 0;
  }

  sub_100003FB4(v21);
  return a5;
}

uint64_t sub_10003DAA0()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  sub_10000EF70();
  static DispatchQoS.userInteractive.getter();
  v7[1] = _swiftEmptyArrayStorage;
  sub_10003DE08(&qword_1000B9E58, 255, &type metadata accessor for OS_dispatch_queue_serial.Attributes, &protocol conformance descriptor for OS_dispatch_queue_serial.Attributes);
  sub_100003F6C(&qword_1000B9E60, &unk_100082DE0);
  sub_10003DE50();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  result = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_1000BC5B8 = result;
  return result;
}

uint64_t sub_10003DD48()
{
  if (qword_1000B6460 != -1)
  {
    swift_once();
  }

  return OS_dispatch_queue_serial_executor.asUnownedSerialExecutor()();
}

uint64_t sub_10003DDA0()
{
  type metadata accessor for AgentActor();

  return swift_initStaticObject();
}

uint64_t sub_10003DDD0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AgentActor();

  return static GlobalActor.sharedUnownedExecutor.getter(v3, a2);
}

uint64_t sub_10003DE08(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_10003DE50()
{
  result = qword_1000B9E68;
  if (!qword_1000B9E68)
  {
    sub_100004B50(&qword_1000B9E60, &unk_100082DE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9E68);
  }

  return result;
}

__n128 sub_10003DEB4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_10003DED8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10003DEF8, 0, 0);
}

uint64_t sub_10003DEF8()
{
  v11 = v0;
  if (qword_1000B6420 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C370(v1, qword_1000BC518);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_100043D60(v5, v4, &v10);
    _os_log_impl(&_mh_execute_header, v2, v3, "[%s] Deactivation succeeding in recovery", v6, 0xCu);
    sub_100003FB4(v7);
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_10003E080()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10001A778;

  return sub_10003DED8(v2, v3);
}

uint64_t sub_10003E128(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10003E148, 0, 0);
}

uint64_t sub_10003E148()
{
  v11 = v0;
  if (qword_1000B6420 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C370(v1, qword_1000BC518);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_100043D60(v5, v4, &v10);
    _os_log_impl(&_mh_execute_header, v2, v3, "[%s] Deactivation failing here", v6, 0xCu);
    sub_100003FB4(v7);
  }

  sub_10003E840();
  swift_allocError();
  swift_willThrow();
  v8 = v0[1];

  return v8();
}

uint64_t sub_10003E2F4()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000F618;

  return sub_10003E128(v2, v3);
}

uint64_t sub_10003E3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 40) = a8;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;

  return _swift_task_switch(sub_10003E438, 0, 0);
}

uint64_t sub_10003E438()
{
  if (*(v0 + 40) != 1)
  {
    v7 = *(v0 + 24);
    *(v7 + 32) = 0;
    *v7 = 0u;
    *(v7 + 16) = 0u;
    goto LABEL_5;
  }

  v1 = *(v0 + 32);
  swift_getObjectType();
  sub_10000D8C0(1);
  *(v0 + 16) = 0;
  v2 = [v1 persistWithError:v0 + 16];
  v3 = *(v0 + 16);
  if (v2)
  {
    v4 = *(v0 + 24);
    v4[3] = &type metadata for AEAFailingDeactivation;
    v4[4] = &off_1000A93F8;
    v5 = swift_allocObject();
    *v4 = v5;
    *(v5 + 16) = 0xD000000000000036;
    *(v5 + 24) = 0x8000000100089810;
    *(v5 + 32) = 4;
    *(v5 + 40) = 0;
    v6 = v3;
LABEL_5:
    v8 = *(v0 + 8);
    goto LABEL_7;
  }

  v9 = v3;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v8 = *(v0 + 8);
LABEL_7:

  return v8();
}

void sub_10003E5E0(void *a1@<X8>)
{
  a1[4] = &off_1000A93D8;
  *a1 = 0xD00000000000003FLL;
  a1[1] = 0x8000000100089850;
  a1[2] = 4;
  a1[3] = &type metadata for AEASuccedingDeactivation;
}

uint64_t sub_10003E61C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10001A778;

  return sub_10003E3A4(a1, a2, v7, v8, v9, v10, v11, v6);
}

uint64_t sub_10003E6CC()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_10003E704(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10003E74C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_10003E7A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_10003E7EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10003E840()
{
  result = qword_1000B9E70;
  if (!qword_1000B9E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9E70);
  }

  return result;
}

unint64_t sub_10003E8A8()
{
  result = qword_1000B9E78;
  if (!qword_1000B9E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9E78);
  }

  return result;
}

Swift::Int sub_10003E914()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10003E9A8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

void sub_10003EA04(uint64_t *a1@<X8>)
{
  v3 = [*(v1 + 16) dataRepresentation];
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

uint64_t sub_10003EA5C(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  sub_10003EB28();
  return static NSObject.== infix(_:_:)() & 1;
}

unint64_t sub_10003EAD4()
{
  result = qword_1000B9E80;
  if (!qword_1000B9E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9E80);
  }

  return result;
}

unint64_t sub_10003EB28()
{
  result = qword_1000B8878;
  if (!qword_1000B8878)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B8878);
  }

  return result;
}

void sub_10003EB74()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  if (qword_1000B64D8 != -1)
  {
    swift_once();
  }

  v2 = qword_1000BC6A0;
  v3 = String._bridgeToObjectiveC()();
  v4 = AELocalizedStringFromTableInBundle();

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  qword_1000BC5C0 = v5;
  *algn_1000BC5C8 = v7;
}

void sub_10003EC98()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  if (qword_1000B64D8 != -1)
  {
    swift_once();
  }

  v2 = qword_1000BC6A0;
  v3 = String._bridgeToObjectiveC()();
  v4 = AELocalizedStringFromTableInBundle();

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  qword_1000BC5D0 = v5;
  *algn_1000BC5D8 = v7;
}

void sub_10003EDBC()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  if (qword_1000B64D8 != -1)
  {
    swift_once();
  }

  v2 = qword_1000BC6A0;
  v3 = String._bridgeToObjectiveC()();
  v4 = AELocalizedStringFromTableInBundle();

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  qword_1000BC5E0 = v5;
  *algn_1000BC5E8 = v7;
}

void sub_10003EEE0()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  if (qword_1000B64D8 != -1)
  {
    swift_once();
  }

  v2 = qword_1000BC6A0;
  v3 = String._bridgeToObjectiveC()();
  v4 = AELocalizedStringFromTableInBundle();

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  qword_1000BC5F0 = v5;
  *algn_1000BC5F8 = v7;
}

void sub_10003F000()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  if (qword_1000B64D8 != -1)
  {
    swift_once();
  }

  v2 = qword_1000BC6A0;
  v3 = String._bridgeToObjectiveC()();
  v4 = AELocalizedStringFromTableInBundle();

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  qword_1000BC600 = v5;
  *algn_1000BC608 = v7;
}

void sub_10003F12C()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  if (qword_1000B64D8 != -1)
  {
    swift_once();
  }

  v2 = qword_1000BC6A0;
  v3 = String._bridgeToObjectiveC()();
  v4 = AELocalizedStringFromTableInBundle();

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  qword_1000BC610 = v5;
  *algn_1000BC618 = v7;
}

void sub_10003F250()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  if (qword_1000B64D8 != -1)
  {
    swift_once();
  }

  v2 = qword_1000BC6A0;
  v3 = String._bridgeToObjectiveC()();
  v4 = AELocalizedStringFromTableInBundle();

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  qword_1000BC620 = v5;
  *algn_1000BC628 = v7;
}

void sub_10003F374()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  if (qword_1000B64D8 != -1)
  {
    swift_once();
  }

  v2 = qword_1000BC6A0;
  v3 = String._bridgeToObjectiveC()();
  v4 = AELocalizedStringFromTableInBundle();

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  qword_1000BC630 = v5;
  *algn_1000BC638 = v7;
}

void sub_10003F498()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  if (qword_1000B64D8 != -1)
  {
    swift_once();
  }

  v2 = qword_1000BC6A0;
  v3 = String._bridgeToObjectiveC()();
  v4 = AELocalizedStringFromTableInBundle();

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  qword_1000BC640 = v5;
  *algn_1000BC648 = v7;
}

void sub_10003F5BC()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  if (qword_1000B64D8 != -1)
  {
    swift_once();
  }

  v2 = qword_1000BC6A0;
  v3 = String._bridgeToObjectiveC()();
  v4 = AELocalizedStringFromTableInBundle();

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  qword_1000BC650 = v5;
  *algn_1000BC658 = v7;
}

void sub_10003F6E0()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  if (qword_1000B64D8 != -1)
  {
    swift_once();
  }

  v2 = qword_1000BC6A0;
  v3 = String._bridgeToObjectiveC()();
  v4 = AELocalizedStringFromTableInBundle();

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  qword_1000BC660 = v5;
  *algn_1000BC668 = v7;
}

void sub_10003F80C()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  if (qword_1000B64D8 != -1)
  {
    swift_once();
  }

  v2 = qword_1000BC6A0;
  v3 = String._bridgeToObjectiveC()();
  v4 = AELocalizedStringFromTableInBundle();

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  qword_1000BC670 = v5;
  *algn_1000BC678 = v7;
}

void sub_10003F930()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  if (qword_1000B64D8 != -1)
  {
    swift_once();
  }

  v2 = qword_1000BC6A0;
  v3 = String._bridgeToObjectiveC()();
  v4 = AELocalizedStringFromTableInBundle();

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  qword_1000BC680 = v5;
  *algn_1000BC688 = v7;
}

void sub_10003FA54()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  if (qword_1000B64D8 != -1)
  {
    swift_once();
  }

  v2 = qword_1000BC6A0;
  v3 = String._bridgeToObjectiveC()();
  v4 = AELocalizedStringFromTableInBundle();

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  qword_1000BC690 = v5;
  *algn_1000BC698 = v7;
}

uint64_t sub_10003FB78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_100010B20(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1000407E8(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_100019B28(a1, &qword_1000B9F38, &qword_100083188);
    sub_100040684(a2, a3, v9);

    return sub_100019B28(v9, &qword_1000B9F38, &qword_100083188);
  }

  return result;
}

uint64_t sub_10003FC48(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1 == 2)
  {
    v6 = sub_100020DA8(a2, a3);
    v8 = v7;

    if (v8)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v4;
      v15 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_10006DAF8();
        v11 = v15;
      }

      result = sub_1000512AC(v6, v11);
      *v4 = v11;
    }
  }

  else
  {
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v4;
    sub_100040A84(a1 & 1, a2, a3, v14);

    *v4 = v16;
  }

  return result;
}

uint64_t sub_10003FD34(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a1 + 24))
  {
    v6 = *(a1 + 16);
    v10[0] = *a1;
    v10[1] = v6;
    v10[2] = *(a1 + 32);
    v11 = *(a1 + 48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_100040EE4(v10, a2, a3, isUniquelyReferenced_nonNull_native);
    result = sub_100005A80(a2, a3);
    *v3 = v9;
  }

  else
  {
    sub_100019B28(a1, &qword_1000BBFF0, &qword_100081B30);
    sub_100040728(a2, a3, v10);
    sub_100005A80(a2, a3);
    return sub_100019B28(v10, &qword_1000BBFF0, &qword_100081B30);
  }

  return result;
}

uint64_t sub_10003FE1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_100041030(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for UUID();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_100020E18(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_10006E580();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = type metadata accessor for UUID();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_100051AFC(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = type metadata accessor for UUID();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_10003FFDC(void *a1)
{
  v3 = sub_100005A3C((v1 + 16), *(v1 + 40));
  sub_100042268(*v3, a1, v40);
  if (*(v40[1] + 16))
  {
    if (qword_1000B6420 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C370(v4, qword_1000BC518);
    v54 = v40[0];
    v52 = v42;
    v53[0] = v41;
    v51 = v43;
    sub_1000426E4(&v54, &v38);

    sub_1000426E4(v53, &v38);
    sub_1000426E4(&v52, &v38);
    sub_1000426E4(&v51, &v38);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    sub_100019B28(&v54, &qword_1000B80D0, &qword_100083180);

    sub_100019B28(v53, &qword_1000B80D0, &qword_100083180);
    sub_100019B28(&v52, &qword_1000B80D0, &qword_100083180);
    sub_100019B28(&v51, &qword_1000B80D0, &qword_100083180);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *&v38 = v8;
      *v7 = 136446210;

      v9 = Array.description.getter();
      v11 = v10;

      v12 = sub_100043D60(v9, v11, &v38);

      *(v7 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v5, v6, "Missing participants (not installed): %{public}s", v7, 0xCu);
      sub_100003FB4(v8);
    }
  }

  if (*(v41 + 16))
  {
    if (qword_1000B6420 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000C370(v13, qword_1000BC518);
    v49 = v42;
    v50 = v40[0];
    v48 = v43;

    sub_1000426E4(&v50, &v38);

    sub_1000426E4(&v49, &v38);
    sub_1000426E4(&v48, &v38);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    sub_100019B28(&v50, &qword_1000B80D0, &qword_100083180);

    sub_100019B28(&v49, &qword_1000B80D0, &qword_100083180);
    sub_100019B28(&v48, &qword_1000B80D0, &qword_100083180);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v38 = v17;
      *v16 = 136446210;

      v18 = Array.description.getter();
      v20 = v19;

      v21 = sub_100043D60(v18, v20, &v38);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v14, v15, "Missing participants (restricted system applications): %{public}s", v16, 0xCu);
      sub_100003FB4(v17);
    }
  }

  v22 = sub_100021EC0(_swiftEmptyArrayStorage);
  v23 = v42;
  v47 = v42;
  if (*(v42 + 16))
  {
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;
    v39 = sub_100003F6C(&qword_1000B80D0, &qword_100083180);
    *&v38 = v23;
    sub_100010B20(&v38, v37);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1000407E8(v37, v24, v26, isUniquelyReferenced_nonNull_native);
  }

  v46 = v43;
  if (*(v43 + 16))
  {
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;
    v39 = sub_100003F6C(&qword_1000B80D0, &qword_100083180);
    *&v38 = v46;
    sub_100010B20(&v38, v37);

    v31 = swift_isUniquelyReferenced_nonNull_native();
    sub_1000407E8(v37, v28, v30, v31);
    v45 = v40[0];
    sub_100019B28(&v45, &qword_1000B80D0, &qword_100083180);

    sub_100019B28(&v47, &qword_1000B80D0, &qword_100083180);
    sub_100019B28(&v46, &qword_1000B80D0, &qword_100083180);

    if (*(v22 + 16))
    {
LABEL_17:
      v32 = AECoreErrorDomain;
      v33 = objc_allocWithZone(NSError);
      v34 = v32;
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v33 initWithDomain:v34 code:102 userInfo:isa];

      return swift_willThrow();
    }
  }

  else
  {
    v44 = v40[0];
    sub_100019B28(&v44, &qword_1000B80D0, &qword_100083180);

    sub_100019B28(&v47, &qword_1000B80D0, &qword_100083180);
    sub_100019B28(&v46, &qword_1000B80D0, &qword_100083180);
    if (*(v22 + 16))
    {
      goto LABEL_17;
    }
  }
}

double sub_100040684@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_100020DA8(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10006D7B0();
      v10 = v12;
    }

    sub_100010B20((*(v10 + 56) + 32 * v8), a3);
    sub_1000510FC(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_100040728@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_100020F6C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v14 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10006E09C();
      v10 = v14;
    }

    sub_100005A80(*(*(v10 + 48) + 16 * v8), *(*(v10 + 48) + 16 * v8 + 8));
    v11 = *(v10 + 56) + 56 * v8;
    v12 = *(v11 + 16);
    *a3 = *v11;
    *(a3 + 16) = v12;
    *(a3 + 32) = *(v11 + 32);
    *(a3 + 48) = *(v11 + 48);
    sub_10005177C(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 48) = 0;
    result = 0.0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  return result;
}

_OWORD *sub_1000407E8(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100020DA8(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10006D7B0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10006BC88(v16, a4 & 1);
    v11 = sub_100020DA8(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_100003FB4(v22);

    return sub_100010B20(a1, v22);
  }

  else
  {
    sub_100051E1C(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_100040938(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100020DD4(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_10006D954();
      goto LABEL_7;
    }

    sub_10006BF40(v13, a3 & 1);
    v19 = sub_100020DD4(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_100022828(a2, v21);
      return sub_100051E88(v10, v21, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_100003FB4(v17);

  return sub_100010B20(a1, v17);
}

unint64_t sub_100040A84(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_100020DA8(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_10006DAF8();
      result = v19;
      goto LABEL_8;
    }

    sub_10006C1F8(v16, a4 & 1);
    result = sub_100020DA8(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + result) = a1 & 1;
  }

  else
  {
    sub_100051F04(result, a2, a3, a1 & 1, v21);
  }

  return result;
}

uint64_t sub_100040BB8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100020DA8(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10006DC60();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10006C498(v16, a4 & 1);
    v11 = sub_100020DA8(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    sub_100051F4C(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_100040D00(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v28 = a1;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_100020E18(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_10006DC74();
      goto LABEL_9;
    }

    sub_10006C4AC(v18, a4 & 1);
    v21 = sub_100020E18(a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v15 = v21;
      goto LABEL_9;
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_9:
  v23 = v28;
  v24 = *v5;
  if (v19)
  {
    v25 = (v24[7] + 16 * v15);
    *v25 = v28;
    v25[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    return sub_100051F94(v15, v12, v23, a2, v24);
  }
}

uint64_t sub_100040EE4(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100020F6C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10006E09C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10006CB3C(v16, a4 & 1);
    v11 = sub_100020F6C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 56 * v11;

    return sub_100042A9C(a1, v22);
  }

  else
  {
    sub_100052054(v11, a2, a3, a1, v21);

    return sub_10001C9CC(a2, a3);
  }
}

uint64_t sub_100041030(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100020E18(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_10006E580();
      goto LABEL_7;
    }

    sub_10006D404(v17, a3 & 1);
    v22 = sub_100020E18(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1000520B8(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

Swift::Int sub_1000411FC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100053D1C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = v2 + 32;
  v5[1] = v3;
  result = sub_100041268(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_100041268(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = (v5 + 4);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_100041578(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100041360(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100041360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v37 = type metadata accessor for String.StandardComparator();
  result = __chkstk_darwin(v37);
  v36 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a2;
  if (a3 != a2)
  {
    v34 = *a4;
    v35 = (v9 + 8);
    v11 = v34 + 40 * a3 - 40;
    v12 = a1 - a3;
LABEL_5:
    v32 = v11;
    v33 = a3;
    v31 = v12;
    while (1)
    {
      v13 = v11 + 40;
      v38 = *(v11 + 40);
      v14 = *(v11 + 48);
      v16 = *v11;
      v15 = *(v11 + 8);

      v17 = v36;
      static String.StandardComparator.localizedStandard.getter();
      v18._countAndFlagsBits = v38;
      v18._object = v14;
      v19._countAndFlagsBits = v16;
      v19._object = v15;
      v20 = String.StandardComparator.compare(_:_:)(v18, v19);
      (*v35)(v17, v37);

      if (v20 != NSOrderedAscending)
      {
LABEL_4:
        a3 = v33 + 1;
        v11 = v32 + 40;
        v12 = v31 - 1;
        if (v33 + 1 == v30)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      v21 = *(v11 + 40);
      v22 = *(v11 + 56);
      v23 = *(v11 + 64);
      v24 = *(v11 + 72);
      v25 = *(v11 + 73);
      v26 = *(v11 + 16);
      *v13 = *v11;
      *(v11 + 56) = v26;
      v27 = *(v11 + 32);
      *v11 = v21;
      *(v11 + 16) = v22;
      *(v11 + 24) = v23;
      *(v11 + 32) = v24;
      *(v11 + 33) = v25;
      v11 -= 40;
      *(v13 + 32) = v27;
      if (__CFADD__(v12++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100041578(char **a1, uint64_t a2, NSComparisonResult *a3, uint64_t a4)
{
  v6 = v4;
  v133 = type metadata accessor for String.StandardComparator();
  result = __chkstk_darwin(v133);
  v132 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 + 1);
  if (v13 >= 1)
  {
    v120 = a4;
    v14 = 0;
    v131 = (v11 + 8);
    v15 = _swiftEmptyArrayStorage;
    v121 = a3;
    v124 = a1;
    while (1)
    {
      result = v14;
      v125 = v14;
      if (v14 + 1 >= v13)
      {
        v28 = v14 + 1;
      }

      else
      {
        v129 = v13;
        v122 = v15;
        v123 = v6;
        v16 = *a3;
        v17 = (*a3 + 40 * (v14 + 1));
        v18 = *v17;
        v5 = v17[1];
        v14 = v17[3];
        v19 = result;
        v127 = 40 * result;
        v20 = (v16 + 40 * result);
        v22 = *v20;
        v21 = v20[1];

        v23 = v132;
        static String.StandardComparator.localizedStandard.getter();
        v24._countAndFlagsBits = v18;
        v24._object = v5;
        v25._countAndFlagsBits = v22;
        v25._object = v21;
        v130 = String.StandardComparator.compare(_:_:)(v24, v25);
        v128 = *v131;
        v128(v23, v133);

        v26 = v19 + 2;
        v27 = (v20 + 13);
        while (1)
        {
          v28 = v129;
          if (v129 == v26)
          {
            break;
          }

          LODWORD(v134) = v130 == NSOrderedAscending;
          v30 = *(v27 - 3);
          v29 = *(v27 - 2);
          v14 = *v27;
          v5 = *(v27 - 8);
          v31 = *(v27 - 7);

          v32 = v132;
          static String.StandardComparator.localizedStandard.getter();
          v33._countAndFlagsBits = v30;
          v33._object = v29;
          v34._countAndFlagsBits = v5;
          v34._object = v31;
          v35 = String.StandardComparator.compare(_:_:)(v33, v34);
          v128(v32, v133);

          ++v26;
          v27 += 5;
          if (((v134 ^ (v35 != NSOrderedAscending)) & 1) == 0)
          {
            v28 = v26 - 1;
            break;
          }
        }

        v15 = v122;
        v6 = v123;
        a3 = v121;
        a1 = v124;
        result = v125;
        if (v130 == NSOrderedAscending)
        {
          if (v28 < v125)
          {
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
            return result;
          }

          if (v125 < v28)
          {
            v36 = 40 * v28 - 16;
            v37 = v127 + 33;
            v38 = v28;
            v39 = v125;
            do
            {
              if (v39 != --v38)
              {
                v49 = *a3;
                if (*a3 == NSOrderedSame)
                {
                  goto LABEL_125;
                }

                v40 = (v49 + v37);
                v41 = *(v49 + v37 - 33);
                v42 = v49 + v36;
                v43 = *(v40 - 17);
                v44 = *(v40 - 9);
                v45 = *(v40 - 1);
                v46 = *v40;
                v47 = *(v42 + 8);
                v48 = *(v42 - 8);
                *(v40 - 33) = *(v42 - 24);
                *(v40 - 17) = v48;
                *(v40 - 1) = v47;
                *(v42 - 24) = v41;
                *(v42 - 8) = v43;
                *v42 = v44;
                *(v42 + 8) = v45;
                *(v42 + 9) = v46;
              }

              ++v39;
              v36 -= 40;
              v37 += 40;
            }

            while (v39 < v38);
          }
        }
      }

      v50 = *(a3 + 1);
      if (v28 >= v50)
      {
        goto LABEL_28;
      }

      if (__OFSUB__(v28, result))
      {
        goto LABEL_117;
      }

      if (v28 - result >= v120)
      {
        goto LABEL_28;
      }

      if (__OFADD__(result, v120))
      {
        goto LABEL_118;
      }

      if (result + v120 >= v50)
      {
        v14 = *(a3 + 1);
      }

      else
      {
        v14 = (result + v120);
      }

      if (v14 < result)
      {
LABEL_119:
        __break(1u);
        goto LABEL_120;
      }

      if (v28 == v14)
      {
LABEL_28:
        v14 = v28;
        if (v28 < result)
        {
          goto LABEL_116;
        }
      }

      else
      {
        v122 = v15;
        v123 = v6;
        v130 = *a3;
        v97 = v130 + 40 * v28 - 40;
        v98 = result - v28;
        v126 = v14;
        do
        {
          v128 = v97;
          v129 = v28;
          v127 = v98;
          do
          {
            v99 = v97 + 40;
            v134 = *(v97 + 40);
            v100 = *(v97 + 48);
            v101 = *v97;
            v102 = *(v97 + 8);
            v5 = *(v97 + 24);

            v103 = v132;
            static String.StandardComparator.localizedStandard.getter();
            v104._countAndFlagsBits = v134;
            v104._object = v100;
            v105._countAndFlagsBits = v101;
            v105._object = v102;
            v106 = String.StandardComparator.compare(_:_:)(v104, v105);
            (*v131)(v103, v133);

            if (v106 != NSOrderedAscending)
            {
              break;
            }

            if (v130 == NSOrderedSame)
            {
              goto LABEL_122;
            }

            v107 = *(v97 + 40);
            v108 = *(v97 + 56);
            v109 = *(v97 + 64);
            v110 = *(v97 + 72);
            v111 = *(v97 + 73);
            v112 = *(v97 + 16);
            *v99 = *v97;
            *(v97 + 56) = v112;
            v113 = *(v97 + 32);
            *v97 = v107;
            *(v97 + 16) = v108;
            *(v97 + 24) = v109;
            *(v97 + 32) = v110;
            *(v97 + 33) = v111;
            v97 -= 40;
            *(v99 + 32) = v113;
          }

          while (!__CFADD__(v98++, 1));
          v28 = v129 + 1;
          v97 = v128 + 40;
          v14 = v126;
          v98 = v127 - 1;
        }

        while ((v129 + 1) != v126);
        v15 = v122;
        v6 = v123;
        a3 = v121;
        a1 = v124;
        if (v126 < v125)
        {
          goto LABEL_116;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100052CC0(0, *(v15 + 2) + 1, 1, v15);
        v15 = result;
      }

      v52 = *(v15 + 2);
      v51 = *(v15 + 3);
      v53 = v52 + 1;
      if (v52 >= v51 >> 1)
      {
        result = sub_100052CC0((v51 > 1), v52 + 1, 1, v15);
        v15 = result;
      }

      *(v15 + 2) = v53;
      v54 = &v15[16 * v52];
      *(v54 + 4) = v125;
      *(v54 + 5) = v14;
      v5 = *a1;
      if (!*a1)
      {
        goto LABEL_126;
      }

      if (v52)
      {
        while (1)
        {
          v55 = v53 - 1;
          if (v53 >= 4)
          {
            break;
          }

          if (v53 == 3)
          {
            v56 = *(v15 + 4);
            v57 = *(v15 + 5);
            v66 = __OFSUB__(v57, v56);
            v58 = v57 - v56;
            v59 = v66;
LABEL_48:
            if (v59)
            {
              goto LABEL_105;
            }

            v72 = &v15[16 * v53];
            v74 = *v72;
            v73 = *(v72 + 1);
            v75 = __OFSUB__(v73, v74);
            v76 = v73 - v74;
            v77 = v75;
            if (v75)
            {
              goto LABEL_108;
            }

            v78 = &v15[16 * v55 + 32];
            v80 = *v78;
            v79 = *(v78 + 1);
            v66 = __OFSUB__(v79, v80);
            v81 = v79 - v80;
            if (v66)
            {
              goto LABEL_111;
            }

            if (__OFADD__(v76, v81))
            {
              goto LABEL_112;
            }

            if (v76 + v81 >= v58)
            {
              if (v58 < v81)
              {
                v55 = v53 - 2;
              }

              goto LABEL_69;
            }

            goto LABEL_62;
          }

          v82 = &v15[16 * v53];
          v84 = *v82;
          v83 = *(v82 + 1);
          v66 = __OFSUB__(v83, v84);
          v76 = v83 - v84;
          v77 = v66;
LABEL_62:
          if (v77)
          {
            goto LABEL_107;
          }

          v85 = &v15[16 * v55];
          v87 = *(v85 + 4);
          v86 = *(v85 + 5);
          v66 = __OFSUB__(v86, v87);
          v88 = v86 - v87;
          if (v66)
          {
            goto LABEL_110;
          }

          if (v88 < v76)
          {
            goto LABEL_3;
          }

LABEL_69:
          v93 = v55 - 1;
          if (v55 - 1 >= v53)
          {
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
            goto LABEL_119;
          }

          if (*a3 == NSOrderedSame)
          {
            goto LABEL_123;
          }

          v94 = *&v15[16 * v93 + 32];
          v95 = *&v15[16 * v55 + 40];
          sub_100041E0C((*a3 + 40 * v94), (*a3 + 40 * *&v15[16 * v55 + 32]), *a3 + 40 * v95, v5);
          if (v6)
          {
          }

          if (v95 < v94)
          {
            goto LABEL_101;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v15 = sub_100052CAC(v15);
          }

          if (v93 >= *(v15 + 2))
          {
            goto LABEL_102;
          }

          v96 = &v15[16 * v93];
          *(v96 + 4) = v94;
          *(v96 + 5) = v95;
          v135 = v15;
          result = sub_100052C20(v55);
          v15 = v135;
          v53 = *(v135 + 2);
          if (v53 <= 1)
          {
            goto LABEL_3;
          }
        }

        v60 = &v15[16 * v53 + 32];
        v61 = *(v60 - 64);
        v62 = *(v60 - 56);
        v66 = __OFSUB__(v62, v61);
        v63 = v62 - v61;
        if (v66)
        {
          goto LABEL_103;
        }

        v65 = *(v60 - 48);
        v64 = *(v60 - 40);
        v66 = __OFSUB__(v64, v65);
        v58 = v64 - v65;
        v59 = v66;
        if (v66)
        {
          goto LABEL_104;
        }

        v67 = &v15[16 * v53];
        v69 = *v67;
        v68 = *(v67 + 1);
        v66 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v66)
        {
          goto LABEL_106;
        }

        v66 = __OFADD__(v58, v70);
        v71 = v58 + v70;
        if (v66)
        {
          goto LABEL_109;
        }

        if (v71 >= v63)
        {
          v89 = &v15[16 * v55 + 32];
          v91 = *v89;
          v90 = *(v89 + 1);
          v66 = __OFSUB__(v90, v91);
          v92 = v90 - v91;
          if (v66)
          {
            goto LABEL_113;
          }

          if (v58 < v92)
          {
            v55 = v53 - 2;
          }

          goto LABEL_69;
        }

        goto LABEL_48;
      }

LABEL_3:
      v13 = *(a3 + 1);
      a1 = v124;
      if (v14 >= v13)
      {
        goto LABEL_89;
      }
    }
  }

  v15 = _swiftEmptyArrayStorage;
LABEL_89:
  v14 = *a1;
  if (!*a1)
  {
    goto LABEL_127;
  }

  v5 = v15;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_120:
    result = sub_100052CAC(v5);
    v5 = result;
  }

  v135 = v5;
  v115 = *(v5 + 2);
  if (v115 >= 2)
  {
    while (*a3)
    {
      v116 = *&v5[16 * v115];
      v117 = *&v5[16 * v115 + 24];
      sub_100041E0C((*a3 + 40 * v116), (*a3 + 40 * *&v5[16 * v115 + 16]), *a3 + 40 * v117, v14);
      if (v6)
      {
      }

      if (v117 < v116)
      {
        goto LABEL_114;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_100052CAC(v5);
      }

      if (v115 - 2 >= *(v5 + 2))
      {
        goto LABEL_115;
      }

      v118 = &v5[16 * v115];
      *v118 = v116;
      *(v118 + 1) = v117;
      v135 = v5;
      result = sub_100052C20(v115 - 1);
      v5 = v135;
      v115 = *(v135 + 2);
      if (v115 <= 1)
      {
      }
    }

    goto LABEL_124;
  }
}

uint64_t sub_100041E0C(uint64_t *a1, uint64_t *a2, unint64_t a3, uint64_t *a4)
{
  v58 = type metadata accessor for String.StandardComparator();
  v8 = *(v58 - 8);
  __chkstk_darwin(v58);
  v57 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (a2 - a1) / 40;
  v55 = a3;
  v11 = a3 - a2;
  v12 = v11 / 40;
  if (v10 >= v11 / 40)
  {
    v28 = 5 * v12;
    if (a4 != a2 || &a2[v28] <= a4)
    {
      memmove(a4, a2, 40 * v12);
    }

    v14 = &a4[v28];
    if (v11 >= 40 && a2 > a1)
    {
      v52 = (v8 + 8);
      v53 = a4;
      v29 = v55;
      v56 = a1;
LABEL_23:
      v54 = a2;
      v51 = a2 - 5;
      v30 = v29 - 40;
      v31 = v14;
      do
      {
        v59 = v14;
        v32 = *(v31 - 5);
        v33 = *(v31 - 4);
        v31 -= 5;
        v55 = v32;
        v34 = v30;
        v35 = (v30 + 40);
        v36 = *(v54 - 5);
        v37 = *(v54 - 4);

        v38 = v57;
        static String.StandardComparator.localizedStandard.getter();
        v39._countAndFlagsBits = v55;
        v39._object = v33;
        v40._countAndFlagsBits = v36;
        v40._object = v37;
        v41 = String.StandardComparator.compare(_:_:)(v39, v40);
        (*v52)(v38, v58);

        if (v41 == NSOrderedAscending)
        {
          v44 = v56;
          v29 = v34;
          v14 = v59;
          v45 = v51;
          if (v35 != v54)
          {
            v46 = *v51;
            v47 = *(v51 + 1);
            *(v34 + 32) = v51[4];
            *v34 = v46;
            *(v34 + 16) = v47;
          }

          a4 = v53;
          if (v14 <= v53 || (a2 = v45, v45 <= v44))
          {
            a2 = v45;
            goto LABEL_36;
          }

          goto LABEL_23;
        }

        if (v35 != v59)
        {
          v42 = *v31;
          v43 = *(v31 + 1);
          *(v34 + 32) = v31[4];
          *v34 = v42;
          *(v34 + 16) = v43;
        }

        v30 = v34 - 40;
        v14 = v31;
        a4 = v53;
      }

      while (v31 > v53);
      v14 = v31;
      a2 = v54;
    }
  }

  else
  {
    v13 = 5 * v10;
    if (a4 != a1 || &a1[v13] <= a4)
    {
      memmove(a4, a1, v13 * 8);
    }

    v14 = &a4[v13];
    if (a2 - a1 >= 40 && a2 < v55)
    {
      v54 = (v8 + 8);
      v59 = &a4[v13];
      while (1)
      {
        v56 = a1;
        v15 = *a2;
        v16 = a2[1];
        v18 = *a4;
        v17 = a4[1];

        v19 = v57;
        static String.StandardComparator.localizedStandard.getter();
        v20._countAndFlagsBits = v15;
        v20._object = v16;
        v21._countAndFlagsBits = v18;
        v21._object = v17;
        v22 = String.StandardComparator.compare(_:_:)(v20, v21);
        (*v54)(v19, v58);

        if (v22 != NSOrderedAscending)
        {
          break;
        }

        v23 = a2;
        v24 = v56;
        v25 = v56 == a2;
        a2 += 5;
        v14 = v59;
        if (!v25)
        {
          goto LABEL_10;
        }

LABEL_11:
        a1 = v24 + 5;
        if (a4 >= v14 || a2 >= v55)
        {
          goto LABEL_33;
        }
      }

      v23 = a4;
      v24 = v56;
      v25 = v56 == a4;
      a4 += 5;
      v14 = v59;
      if (v25)
      {
        goto LABEL_11;
      }

LABEL_10:
      v26 = *v23;
      v27 = *(v23 + 1);
      v24[4] = v23[4];
      *v24 = v26;
      *(v24 + 1) = v27;
      goto LABEL_11;
    }

LABEL_33:
    a2 = a1;
  }

LABEL_36:
  v48 = 5 * ((v14 - a4) / 40);
  if (a2 != a4 || a2 >= &a4[v48])
  {
    memmove(a2, a4, v48 * 8);
  }

  return 1;
}

uint64_t sub_100042268@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v59[3] = type metadata accessor for AEAConcreteLaunchServicesPrimitives();
  v59[4] = &off_1000AC480;
  v59[0] = a1;
  v5 = a2[3];
  v6 = a2[4];
  sub_100005A3C(a2, v5);
  v7 = *(v6 + 48);

  v8 = v7(v5, v6);
  v10 = v9;
  v11 = objc_allocWithZone(LSApplicationRecord);
  *&v60[0] = sub_10005B030(v8, v10, 0);
  sub_100042A50();
  v12 = sub_10002CCB4();
  v14 = v13;

  v15 = a2[3];
  v16 = a2[4];
  sub_100005A3C(a2, v15);
  v17 = (*(v16 + 48))(v15, v16);
  v19 = v18;
  v20 = __chkstk_darwin(a2[7]);
  v21 = sub_100042754(v20, sub_100042A40);
  sub_100003F6C(&qword_1000B9F40, &unk_100083190);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000807D0;
  *(inited + 32) = v12;
  *(inited + 40) = v14;
  *(inited + 48) = v17;
  *(inited + 56) = v19;
  *(inited + 64) = 1;
  *&v60[0] = v21;

  sub_1000411FC(v60);

  v23 = *&v60[0];
  *&v60[0] = inited;
  sub_10006FAA8(v23);
  v24 = 0;
  v25 = *&v60[0];
  v26 = *(*&v60[0] + 16);
  v27 = _swiftEmptyArrayStorage;
LABEL_2:
  v28 = 40 * v24;
  while (v26 != v24)
  {
    if (v24 >= *(v25 + 16))
    {
      __break(1u);
LABEL_23:
      __break(1u);

      __break(1u);
      return result;
    }

    ++v24;
    v29 = v28 + 40;
    v30 = *(v25 + v28 + 65);
    v28 += 40;
    if (v30 == 2)
    {
      v31 = *(v25 + v29 - 8);
      v32 = *(v25 + v29);
      v33 = *(v25 + v29 + 8);
      v34 = *(v25 + v29 + 16);
      v35 = *(v25 + v29 + 24);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v60[0] = v27;
      v56 = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10004A8EC(0, v27[2] + 1, 1);
        v27 = *&v60[0];
      }

      v38 = v27[2];
      v37 = v27[3];
      if (v38 >= v37 >> 1)
      {
        sub_10004A8EC((v37 > 1), v38 + 1, 1);
        v27 = *&v60[0];
      }

      v27[2] = v38 + 1;
      v39 = &v27[5 * v38];
      v39[4] = v56;
      v39[5] = v32;
      v39[6] = v33;
      v39[7] = v34;
      *(v39 + 64) = v35;
      *(v39 + 65) = 2;
      goto LABEL_2;
    }
  }

  v40 = 0;
  v41 = _swiftEmptyArrayStorage;
LABEL_12:
  v42 = 40 * v40;
  while (v26 != v40)
  {
    if (v40 >= *(v25 + 16))
    {
      goto LABEL_23;
    }

    ++v40;
    v43 = v42 + 40;
    v44 = *(v25 + v42 + 65);
    v42 += 40;
    if (v44 == 1)
    {
      v45 = *(v25 + v43 - 8);
      v46 = *(v25 + v43);
      v47 = *(v25 + v43 + 8);
      v48 = *(v25 + v43 + 16);
      v49 = *(v25 + v43 + 24);

      v50 = swift_isUniquelyReferenced_nonNull_native();
      *&v60[0] = v41;
      v57 = v47;
      if ((v50 & 1) == 0)
      {
        sub_10004A8EC(0, v41[2] + 1, 1);
        v41 = *&v60[0];
      }

      v52 = v41[2];
      v51 = v41[3];
      if (v52 >= v51 >> 1)
      {
        sub_10004A8EC((v51 > 1), v52 + 1, 1);
        v41 = *&v60[0];
      }

      v41[2] = v52 + 1;
      v53 = &v41[5 * v52];
      v53[4] = v45;
      v53[5] = v46;
      v53[6] = v57;
      v53[7] = v48;
      *(v53 + 64) = v49;
      *(v53 + 65) = 1;
      goto LABEL_12;
    }
  }

  sub_100055CC8(v25, v27, v41, v60);
  result = sub_100003FB4(v59);
  v55 = v60[1];
  *a3 = v60[0];
  *(a3 + 16) = v55;
  *(a3 + 32) = v61;
  return result;
}

uint64_t sub_1000426E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003F6C(&qword_1000B80D0, &qword_100083180);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_100042754(uint64_t a1, void (*a2)(_OWORD *__return_ptr, void *, void, uint64_t))
{
  v2 = *(a1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v4 = a1;
  v45 = _swiftEmptyArrayStorage;
  sub_10004A8EC(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  v5 = v4 + 64;
  result = _HashTable.startBucket.getter();
  v7 = result;
  v8 = 0;
  v40 = *(v4 + 36);
  v35 = v4 + 72;
  v36 = v2;
  v37 = v4 + 64;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v4 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    if (v40 != *(v4 + 36))
    {
      goto LABEL_26;
    }

    v39 = v8;
    v11 = *(v4 + 48) + 40 * v7;
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = *(v11 + 24);
    LOBYTE(v11) = *(v11 + 32);
    v16 = (*(v4 + 56) + 16 * v7);
    v17 = *v16;
    v18 = v16[1];
    v19 = v4;
    v20 = v3;
    v21 = *(v16 + 1);
    v43[0] = v12;
    v43[1] = v13;
    v43[2] = v14;
    v43[3] = v15;
    v44 = v11;
    if (v18)
    {
      v22 = 256;
    }

    else
    {
      v22 = 0;
    }

    a2(v41, v43, v22 | v17, v21);
    v3 = v20;

    v45 = v20;
    v24 = v20[2];
    v23 = v20[3];
    if (v24 >= v23 >> 1)
    {
      result = sub_10004A8EC((v23 > 1), v24 + 1, 1);
      v3 = v45;
    }

    v3[2] = v24 + 1;
    v25 = &v3[5 * v24];
    v26 = v41[0];
    v27 = v41[1];
    *(v25 + 32) = v42;
    *(v25 + 2) = v26;
    *(v25 + 3) = v27;
    v9 = 1 << *(v19 + 32);
    if (v7 >= v9)
    {
      goto LABEL_27;
    }

    v4 = v19;
    v5 = v37;
    v28 = *(v37 + 8 * v10);
    if ((v28 & (1 << v7)) == 0)
    {
      goto LABEL_28;
    }

    if (v40 != *(v4 + 36))
    {
      goto LABEL_29;
    }

    v29 = v28 & (-2 << (v7 & 0x3F));
    if (v29)
    {
      v9 = __clz(__rbit64(v29)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v30 = v10 << 6;
      v31 = v10 + 1;
      v32 = (v35 + 8 * v10);
      while (v31 < (v9 + 63) >> 6)
      {
        v34 = *v32++;
        v33 = v34;
        v30 += 64;
        ++v31;
        if (v34)
        {
          result = sub_10001A784(v7, v40, 0);
          v9 = __clz(__rbit64(v33)) + v30;
          goto LABEL_4;
        }
      }

      result = sub_10001A784(v7, v40, 0);
    }

LABEL_4:
    v8 = v39 + 1;
    v7 = v9;
    if (v39 + 1 == v36)
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
LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_100042A50()
{
  result = qword_1000B9F48;
  if (!qword_1000B9F48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B9F48);
  }

  return result;
}

id sub_100042AF8()
{
  v1 = v0;
  swift_beginAccess();
  sub_10006F5E4();
  swift_endAccess();
  swift_beginAccess();
  *(v0 + 32) = _swiftEmptyDictionarySingleton;

  if (qword_1000B6438 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C370(v2, qword_1000BC560);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Removing all windows from assessment mode", v5, 2u);
  }

  return [*(v1 + 16) removeAllWindowsFromAssessmentMode];
}

uint64_t sub_100042C38()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_100042CC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003F6C(&qword_1000BA048, &unk_1000831F0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100042D4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003F6C(&qword_1000BA048, &unk_1000831F0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for AEAAnyTrustedParticipantSource(uint64_t a1)
{
  result = qword_1000BA0A8;
  if (!qword_1000BA0A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100042E14(uint64_t a1)
{
  sub_100042E80(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100042E80(uint64_t a1)
{
  if (!qword_1000BA0B8)
  {
    sub_100004B50(&qword_1000B8EB0, &qword_100083220);
    v1 = type metadata accessor for Published.Publisher();
    if (!v2)
    {
      atomic_store(v1, &qword_1000BA0B8);
    }
  }
}

void *sub_100042EE4(uint64_t a1)
{
  v3 = type metadata accessor for AEAParticipant.AuxiliaryProcess(0);
  v32 = *(v3 - 8);
  v33 = v3;
  __chkstk_darwin(v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (!v6)
  {
    return v7;
  }

  v28 = v1;
  v39 = _swiftEmptyArrayStorage;
  sub_10004A9BC(0, v6, 0);
  v7 = v39;
  v34 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v9 = result;
  v10 = 0;
  v29 = a1 + 64;
  v30 = v6;
  v31 = v5;
  while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
  {
    v12 = v9 >> 6;
    if ((*(v34 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_23;
    }

    v13 = *(a1 + 36);
    sub_100043A70(*(a1 + 48) + *(v32 + 72) * v9, v5);
    *(&v36 + 1) = v33;
    *&v37 = sub_10004C534(&qword_1000BA108, &unk_1000814E4);
    v14 = sub_100004F80(&v35);
    sub_100043A70(v5, v14);
    if (qword_1000B6450 != -1)
    {
      swift_once();
    }

    WORD4(v37) = word_1000BC5A8;
    v38 = qword_1000BC5B0;

    result = sub_100043AD4(v5);
    v39 = v7;
    v16 = v7[2];
    v15 = v7[3];
    if (v16 >= v15 >> 1)
    {
      result = sub_10004A9BC((v15 > 1), v16 + 1, 1);
      v7 = v39;
    }

    v7[2] = v16 + 1;
    v17 = &v7[7 * v16];
    v18 = v35;
    v19 = v36;
    v20 = v37;
    v17[10] = v38;
    *(v17 + 3) = v19;
    *(v17 + 4) = v20;
    *(v17 + 2) = v18;
    v11 = 1 << *(a1 + 32);
    if (v9 >= v11)
    {
      goto LABEL_24;
    }

    v21 = *(v34 + 8 * v12);
    if ((v21 & (1 << v9)) == 0)
    {
      goto LABEL_25;
    }

    if (v13 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v22 = v21 & (-2 << (v9 & 0x3F));
    if (v22)
    {
      v11 = __clz(__rbit64(v22)) | v9 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = v12 << 6;
      v24 = v12 + 1;
      v25 = (v29 + 8 * v12);
      while (v24 < (v11 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_100019F1C(v9, v13, 0);
          v11 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      result = sub_100019F1C(v9, v13, 0);
    }

LABEL_4:
    ++v10;
    v9 = v11;
    v5 = v31;
    if (v10 == v30)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100043240@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for AEAParticipant.AuxiliaryProcess(0);
  v48 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v39 - v8;
  v10 = *a1;
  v11 = *(*a1 + 32);
  v12 = v11 & 0x3F;
  v13 = ((1 << v11) + 63) >> 6;
  v14 = 8 * v13;

  if (v12 > 0xD)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v40 = v13;
    v41 = a2;
    v39[1] = v39;
    __chkstk_darwin(v15);
    v42 = v39 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v42, v14);
    v43 = 0;
    v13 = 0;
    a2 = (v10 + 56);
    v17 = 1 << *(v10 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v10 + 56);
    v20 = (v17 + 63) >> 6;
    *&v16 = 136446210;
    v44 = v16;
    v46 = v10;
    v47 = v4;
    v45 = v9;
    while (v19)
    {
      v26 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_14:
      v14 = v26 | (v13 << 6);
      sub_100043A70(*(v10 + 48) + *(v48 + 72) * v14, v9);
      if (v9[*(v4 + 24)])
      {
        sub_100043AD4(v9);
        *&v42[(v14 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v14;
        if (__OFADD__(v43++, 1))
        {
          __break(1u);
        }
      }

      else
      {
        v49 = v19;
        if (qword_1000B6430 != -1)
        {
          swift_once();
        }

        v29 = type metadata accessor for Logger();
        sub_10000C370(v29, qword_1000BC548);
        sub_100043A70(v9, v7);
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v30, v31))
        {
          v21 = v7;
          v22 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v50 = v14;
          *v22 = v44;
          v23 = *(v21 + 8);
          v24 = *(v21 + 16);

          sub_100043AD4(v21);
          v25 = sub_100043D60(v23, v24, &v50);

          *(v22 + 4) = v25;
          v10 = v46;
          v4 = v47;
          _os_log_impl(&_mh_execute_header, v30, v31, "Excluding untrusted auxiliary process: %{public}s", v22, 0xCu);
          sub_100003FB4(v14);

          v7 = v21;
          v9 = v45;
        }

        else
        {

          sub_100043AD4(v7);
        }

        sub_100043AD4(v9);
        v19 = v49;
      }
    }

    v27 = v13;
    while (1)
    {
      v13 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v13 >= v20)
      {
        v33 = sub_10004B9A0(v42, v40, v43, v10);
        a2 = v41;
        goto LABEL_23;
      }

      v28 = a2[v13];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v19 = (v28 - 1) & v28;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_25:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v37 = swift_slowAlloc();
  v38 = sub_10004BD54(v37, v13, v10, sub_1000436E8);

  v33 = v38;
LABEL_23:
  v34 = sub_100042EE4(v33);

  v35 = sub_10004C3EC(v34);

  *a2 = v35;
  return result;
}

uint64_t sub_1000436E8(uint64_t a1)
{
  v2 = type metadata accessor for AEAParticipant.AuxiliaryProcess(0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + *(v3 + 32));
  if ((v6 & 1) == 0)
  {
    if (qword_1000B6430 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000C370(v7, qword_1000BC548);
    sub_100043A70(a1, v5);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136446210;
      v12 = *(v5 + 1);
      v13 = *(v5 + 2);

      sub_100043AD4(v5);
      v14 = sub_100043D60(v12, v13, &v17);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "Excluding untrusted auxiliary process: %{public}s", v10, 0xCu);
      sub_100003FB4(v11);
    }

    else
    {

      sub_100043AD4(v5);
    }
  }

  return v6;
}

uint64_t sub_1000438C4()
{
  v0 = sub_100003F6C(&qword_1000BA0E8, &unk_100083238);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - v2;
  sub_100003F6C(&qword_1000BA048, &unk_1000831F0);
  sub_100003F6C(&qword_1000B7418, &qword_100081AB0);
  sub_100004EE0(&qword_1000BA0F0, &qword_1000BA048, &unk_1000831F0, &protocol conformance descriptor for Published<A>.Publisher);
  Publisher.map<A>(_:)();
  sub_100004EE0(&qword_1000BA0F8, &qword_1000BA0E8, &unk_100083238, &protocol conformance descriptor for Publishers.Map<A, B>);
  v4 = Publisher.eraseToAnyPublisher()();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_100043A70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AEAParticipant.AuxiliaryProcess(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100043AD4(uint64_t a1)
{
  v2 = type metadata accessor for AEAParticipant.AuxiliaryProcess(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100043B30@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_100043D60(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100043E2C(v11, 0, 0, 1, a1, a2);
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
    sub_10000C6FC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100003FB4(v11);
  return v7;
}

unint64_t sub_100043E2C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100043F38(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

void *sub_100043F38(uint64_t a1, unint64_t a2)
{
  v3 = sub_100043F84(a1, a2);
  sub_1000440B4(&off_1000A6118);
  return v3;
}

void *sub_100043F84(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000441A0(v5, 0);
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

  result = _StringObject.sharedUTF8.getter();
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
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000441A0(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
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

uint64_t sub_1000440B4(uint64_t result)
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

  result = sub_100044214(result, v11, 1, v3);
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

void *sub_1000441A0(uint64_t a1, uint64_t a2)
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

  sub_100003F6C(&qword_1000BA120, &qword_100083260);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100044214(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003F6C(&qword_1000BA120, &qword_100083260);
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

uint64_t sub_100044308(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_100047010(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100044458(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 32);
  v6 = *a2;
  v5 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v9 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v37 = v8;
  v38 = v7;
  String.hash(into:)();
  v34 = a2;
  v10 = *(a2 + 33);
  Hasher._combine(_:)(v4 & 1);
  v36 = v10;
  Hasher._combine(_:)(v10);
  v11 = Hasher._finalize()();
  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  v39 = v9 + 56;
  if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v32 = v9;
    v15 = *(v9 + 48);
    while (1)
    {
      v16 = v15 + 40 * v13;
      v17 = *(v16 + 16);
      v18 = *(v16 + 24);
      v19 = *(v16 + 32);
      v20 = *(v16 + 33);
      v21 = *v16 == v6 && *(v16 + 8) == v5;
      if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v22 = v17 == v37 && v18 == v38;
        if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && ((v19 ^ v4) & 1) == 0 && v20 == v36)
        {
          break;
        }
      }

      v13 = (v13 + 1) & v14;
      if (((*(v39 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v23 = *(v32 + 48) + 40 * v13;
    v25 = *v23;
    v24 = *(v23 + 8);
    v26 = *(v23 + 16);
    v27 = *(v23 + 24);
    v28 = *(v23 + 32);
    LOBYTE(v23) = *(v23 + 33);
    *a1 = v25;
    *(a1 + 8) = v24;
    *(a1 + 16) = v26;
    *(a1 + 24) = v27;
    *(a1 + 32) = v28;
    *(a1 + 33) = v23;

    return 0;
  }

  else
  {
LABEL_17:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = *v33;

    sub_100047190(v34, v13, isUniquelyReferenced_nonNull_native);
    *v33 = v40;
    v31 = *(v34 + 1);
    *a1 = *v34;
    *(a1 + 16) = v31;
    *(a1 + 32) = *(v34 + 16);
    return 1;
  }
}

uint64_t sub_1000446A0(uint64_t a1, uint64_t *a2)
{
  v65 = *v2;
  Hasher.init(_seed:)();
  v4 = *a2;
  v5 = a2[1];
  String.hash(into:)();
  v7 = a2[2];
  v6 = a2[3];
  v69 = v6 >> 60;
  if (v6 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  v62 = a2;
  v67 = *(a2 + 8);
  Hasher._combine(_:)(v67);
  v8 = Hasher._finalize()();
  v9 = v65;
  v10 = -1 << *(v65 + 32);
  v11 = v8 & ~v10;
  if (((*(v65 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_86:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v71 = *v61;
    sub_10001CA34(v62, v72);
    sub_1000473B4(v62, v11, isUniquelyReferenced_nonNull_native);
    *v61 = v71;
    v48 = *(v62 + 16);
    *a1 = *v62;
    *(a1 + 16) = v48;
    *(a1 + 32) = *(v62 + 32);
    return 1;
  }

  v70 = ~v10;
  if (v7)
  {
    v12 = 0;
  }

  else
  {
    v12 = v6 == 0xC000000000000000;
  }

  v13 = !v12;
  v64 = v13;
  v66 = v6 >> 62;
  v68 = v6;
  v14 = __OFSUB__(HIDWORD(v7), v7);
  v59 = v14;
  v60 = BYTE6(v6);
  while (1)
  {
    v17 = *(v9 + 48) + 40 * v11;
    v18 = *(v17 + 16);
    v19 = *(v17 + 24);
    v20 = *(v17 + 32);
    v21 = *v17 == v4 && *(v17 + 8) == v5;
    if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_17;
    }

    if (v19 >> 60 == 15)
    {
      if (v69 <= 0xE)
      {
        goto LABEL_15;
      }

      sub_10001C9B8(v18, v19);
      sub_10001C9B8(v7, v68);
      goto LABEL_26;
    }

    if (v69 > 0xE)
    {
LABEL_15:
      sub_10001C9B8(v18, v19);
      sub_10001C9B8(v7, v68);
      sub_10001CA20(v18, v19);
      v15 = v7;
      v16 = v68;
      goto LABEL_16;
    }

    v24 = v19 >> 62;
    if (v19 >> 62 == 3)
    {
      if (v18)
      {
        v25 = 0;
      }

      else
      {
        v25 = v19 == 0xC000000000000000;
      }

      v26 = v66;
      v28 = !v25 || v66 < 3;
      if (((v28 | v64) & 1) == 0)
      {

        sub_10001C9B8(0, 0xC000000000000000);
        sub_10001C9B8(0, 0xC000000000000000);
        sub_10001C9B8(0, 0xC000000000000000);
        sub_10001CA20(0, 0xC000000000000000);
        sub_10001CA20(0, 0xC000000000000000);

        v22 = 0;
        v23 = 0xC000000000000000;
LABEL_27:
        sub_10001CA20(v22, v23);
        if (v20 == v67)
        {
          break;
        }

        goto LABEL_17;
      }

LABEL_52:
      v29 = 0;
      if (v26 <= 1)
      {
        goto LABEL_49;
      }

      goto LABEL_53;
    }

    v26 = v66;
    if (v24 > 1)
    {
      if (v24 != 2)
      {
        goto LABEL_52;
      }

      v31 = *(v18 + 16);
      v30 = *(v18 + 24);
      v32 = __OFSUB__(v30, v31);
      v29 = v30 - v31;
      if (v32)
      {
        goto LABEL_90;
      }

      if (v66 <= 1)
      {
        goto LABEL_49;
      }
    }

    else if (v24)
    {
      LODWORD(v29) = HIDWORD(v18) - v18;
      if (__OFSUB__(HIDWORD(v18), v18))
      {
        goto LABEL_91;
      }

      v29 = v29;
      if (v66 <= 1)
      {
LABEL_49:
        v33 = v60;
        if (v26)
        {
          v33 = HIDWORD(v7) - v7;
          if (v59)
          {
            goto LABEL_89;
          }
        }

        goto LABEL_55;
      }
    }

    else
    {
      v29 = BYTE6(v19);
      if (v66 <= 1)
      {
        goto LABEL_49;
      }
    }

LABEL_53:
    if (v26 != 2)
    {
      if (!v29)
      {
LABEL_62:

        sub_10001C9B8(v18, v19);
        sub_10001C9B8(v18, v19);
        sub_10001C9B8(v7, v68);
        sub_10001CA20(v7, v68);
        sub_10001CA20(v18, v19);

LABEL_26:
        v22 = v18;
        v23 = v19;
        goto LABEL_27;
      }

LABEL_61:
      sub_10001C9B8(v18, v19);
      sub_10001C9B8(v7, v68);
      sub_10001CA20(v7, v68);
      v15 = v18;
      v16 = v19;
LABEL_16:
      sub_10001CA20(v15, v16);
      goto LABEL_17;
    }

    v35 = *(v7 + 16);
    v34 = *(v7 + 24);
    v32 = __OFSUB__(v34, v35);
    v33 = v34 - v35;
    if (v32)
    {
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
    }

LABEL_55:
    if (v29 != v33)
    {
      goto LABEL_61;
    }

    if (v29 < 1)
    {
      goto LABEL_62;
    }

    if (v24 > 1)
    {
      if (v24 != 2)
      {
        *&v72[6] = 0;
        *v72 = 0;

        sub_10001C9B8(v18, v19);
        sub_10001C9B8(v18, v19);
        v37 = v68;
        v36 = v7;
        sub_10001C9B8(v7, v68);
        goto LABEL_75;
      }

      v56 = *(v18 + 24);
      v58 = *(v18 + 16);

      sub_10001C9B8(v18, v19);
      sub_10001C9B8(v18, v19);
      sub_10001C9B8(v7, v68);
      v38 = __DataStorage._bytes.getter();
      if (v38)
      {
        v39 = v38;
        v40 = __DataStorage._offset.getter();
        v41 = v58;
        if (__OFSUB__(v58, v40))
        {
          goto LABEL_94;
        }

        v55 = v58 - v40 + v39;
      }

      else
      {
        v55 = 0;
        v41 = v58;
      }

      if (__OFSUB__(v56, v41))
      {
        goto LABEL_93;
      }

      __DataStorage._length.getter();
      v46 = v55;
    }

    else
    {
      if (!v24)
      {
        *v72 = v18;
        *&v72[8] = v19;
        v72[10] = BYTE2(v19);
        v72[11] = BYTE3(v19);
        v72[12] = BYTE4(v19);
        v72[13] = BYTE5(v19);

        sub_10001C9B8(v18, v19);
        sub_10001C9B8(v18, v19);
        v37 = v68;
        v36 = v7;
        sub_10001C9B8(v7, v68);
LABEL_75:
        sub_100043B30(v72, v36, v37, &v71);
        sub_10001CA20(v36, v68);
        v45 = v71;
        goto LABEL_82;
      }

      if (v18 >> 32 < v18)
      {
        goto LABEL_92;
      }

      sub_10001C9B8(v18, v19);
      sub_10001C9B8(v18, v19);
      sub_10001C9B8(v7, v68);
      v42 = __DataStorage._bytes.getter();
      if (v42)
      {
        v57 = v42;
        v43 = __DataStorage._offset.getter();
        if (__OFSUB__(v18, v43))
        {
          goto LABEL_95;
        }

        v44 = v18 - v43 + v57;
      }

      else
      {
        v44 = 0;
      }

      __DataStorage._length.getter();
      v46 = v44;
    }

    sub_100043B30(v46, v7, v68, v72);
    sub_10001CA20(v7, v68);
    v45 = v72[0];
LABEL_82:
    sub_10001CA20(v18, v19);

    sub_10001CA20(v18, v19);
    if (!v45)
    {
      v9 = v65;
      goto LABEL_17;
    }

    v9 = v65;
    if (v20 == v67)
    {
      break;
    }

LABEL_17:
    v11 = (v11 + 1) & v70;
    if (((*(v65 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_86;
    }
  }

  sub_10002C3E4(v62);
  v50 = *(v9 + 48) + 40 * v11;
  v52 = *v50;
  v51 = *(v50 + 8);
  v53 = *(v50 + 16);
  v54 = *(v50 + 24);
  LODWORD(v50) = *(v50 + 32);
  *a1 = v52;
  *(a1 + 8) = v51;
  *(a1 + 16) = v53;
  *(a1 + 24) = v54;
  *(a1 + 32) = v50;

  sub_10001C9B8(v53, v54);
  return 0;
}

uint64_t sub_100044E58(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for AEAParticipant.AuxiliaryProcess(0);
  v34 = *(v5 - 8);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v32 = &v32 - v9;
  v10 = type metadata accessor for String.Encoding();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v2;
  v14 = *v2;
  Hasher.init(_seed:)();
  v36 = a2;
  v15 = *(a2 + 8);
  v16 = *(a2 + 16);
  static String.Encoding.utf8.getter();
  v17 = String.data(using:allowLossyConversion:)();
  v19 = v18;
  result = (*(v11 + 8))(v13, v10);
  if (v19 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v35 = a1;
    Data.hash(into:)();
    sub_10001CA20(v17, v19);
    v21 = Hasher._finalize()();
    v22 = -1 << *(v14 + 32);
    v23 = v21 & ~v22;
    if ((*(v14 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
    {
      v24 = ~v22;
      v25 = *(v34 + 72);
      while (1)
      {
        sub_100043A70(*(v14 + 48) + v25 * v23, v8);
        if (*(v8 + 1) == v15 && *(v8 + 2) == v16)
        {
          break;
        }

        v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_100043AD4(v8);
        if (v27)
        {
          goto LABEL_12;
        }

        v23 = (v23 + 1) & v24;
        if (((*(v14 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      sub_100043AD4(v8);
LABEL_12:
      sub_100043AD4(v36);
      sub_100043A70(*(v14 + 48) + v25 * v23, v35);
      return 0;
    }

    else
    {
LABEL_10:
      v28 = v33;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = v36;
      v31 = v32;
      sub_100043A70(v36, v32);
      v37 = *v28;
      sub_100047B68(v31, v23, isUniquelyReferenced_nonNull_native);
      *v28 = v37;
      sub_10004C47C(v30, v35);
      return 1;
    }
  }

  return result;
}

uint64_t sub_100045154(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  Hasher.init(_seed:)();
  sub_10002C1E4();
  dispatch thunk of Hashable.hash(into:)();
  v5 = Hasher._finalize()();
  v6 = v4 + 56;
  v7 = -1 << *(v4 + 32);
  v8 = v5 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v49 = ~v7;
    v47 = v4;
    v48 = v4 + 56;
    while (1)
    {
      sub_100030BD0(*(v4 + 48) + 56 * v8, v52);
      v9 = v53;
      v10 = v54;
      sub_100005A3C(v52, v53);
      v11 = (*(v10 + 24))(v9, v10);
      v13 = v12;
      v14 = *(a2 + 24);
      v15 = *(a2 + 32);
      sub_100005A3C(a2, v14);
      v16 = (*(v15 + 24))(v14, v15);
      v18 = v16;
      v19 = v17;
      v20 = v13 >> 62;
      v21 = v17 >> 62;
      if (v13 >> 62 == 3)
      {
        break;
      }

      if (v20 > 1)
      {
        if (v20 != 2)
        {
          goto LABEL_32;
        }

        v29 = *(v11 + 16);
        v28 = *(v11 + 24);
        v30 = __OFSUB__(v28, v29);
        v27 = v28 - v29;
        if (v30)
        {
          goto LABEL_68;
        }

        if (v21 <= 1)
        {
          goto LABEL_29;
        }
      }

      else if (v20)
      {
        LODWORD(v27) = HIDWORD(v11) - v11;
        if (__OFSUB__(HIDWORD(v11), v11))
        {
          goto LABEL_69;
        }

        v27 = v27;
        if (v21 <= 1)
        {
LABEL_29:
          if (v21)
          {
            if (__OFSUB__(HIDWORD(v16), v16))
            {
              goto LABEL_67;
            }

            if (v27 != HIDWORD(v16) - v16)
            {
              goto LABEL_4;
            }
          }

          else if (v27 != BYTE6(v17))
          {
            goto LABEL_4;
          }

          goto LABEL_39;
        }
      }

      else
      {
        v27 = BYTE6(v13);
        if (v21 <= 1)
        {
          goto LABEL_29;
        }
      }

LABEL_33:
      if (v21 != 2)
      {
        if (v27)
        {
          goto LABEL_4;
        }

LABEL_43:
        sub_100005A80(v16, v17);
        v25 = v11;
        v26 = v13;
LABEL_44:
        sub_100005A80(v25, v26);
        goto LABEL_62;
      }

      v32 = *(v16 + 16);
      v31 = *(v16 + 24);
      v30 = __OFSUB__(v31, v32);
      v33 = v31 - v32;
      if (v30)
      {
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
        __break(1u);
LABEL_73:
        __break(1u);
      }

      if (v27 != v33)
      {
LABEL_4:
        sub_100005A80(v16, v17);
        sub_100005A80(v11, v13);
LABEL_5:
        sub_100030C2C(v52);
        goto LABEL_6;
      }

LABEL_39:
      if (v27 < 1)
      {
        goto LABEL_43;
      }

      if (v20 > 1)
      {
        if (v20 == 2)
        {
          v35 = *(v11 + 16);
          v34 = *(v11 + 24);
          v36 = __DataStorage._bytes.getter();
          if (v36)
          {
            v37 = __DataStorage._offset.getter();
            if (__OFSUB__(v35, v37))
            {
              goto LABEL_72;
            }

            v36 += v35 - v37;
          }

          if (__OFSUB__(v34, v35))
          {
            goto LABEL_71;
          }

LABEL_58:
          __DataStorage._length.getter();
          sub_100043B30(v36, v18, v19, v51);
          sub_100005A80(v11, v13);
          sub_100005A80(v18, v19);
          v4 = v47;
          v6 = v48;
          if ((v51[0] & 1) == 0)
          {
            goto LABEL_5;
          }

          goto LABEL_62;
        }

        memset(v51, 0, 14);
      }

      else
      {
        if (v20)
        {
          if (v11 >> 32 < v11)
          {
            goto LABEL_70;
          }

          v36 = __DataStorage._bytes.getter();
          if (v36)
          {
            v38 = __DataStorage._offset.getter();
            if (__OFSUB__(v11, v38))
            {
              goto LABEL_73;
            }

            v36 += v11 - v38;
          }

          goto LABEL_58;
        }

        v51[0] = v11;
        LOWORD(v51[1]) = v13;
        BYTE2(v51[1]) = BYTE2(v13);
        BYTE3(v51[1]) = BYTE3(v13);
        BYTE4(v51[1]) = BYTE4(v13);
        BYTE5(v51[1]) = BYTE5(v13);
      }

      sub_100043B30(v51, v16, v17, &v50);
      sub_100005A80(v11, v13);
      sub_100005A80(v18, v19);
      v6 = v48;
      if (!v50)
      {
        goto LABEL_5;
      }

LABEL_62:
      if (v55 != *(a2 + 40))
      {
        goto LABEL_5;
      }

      sub_10003EB28();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v40 = Dictionary._bridgeToObjectiveC()().super.isa;
      v41 = static NSObject.== infix(_:_:)();

      sub_100030C2C(v52);
      if (v41)
      {
        sub_100030C2C(a2);
        sub_100030BD0(*(v4 + 48) + 56 * v8, a1);
        return 0;
      }

LABEL_6:
      v8 = (v8 + 1) & v49;
      if (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_65;
      }
    }

    if (v11)
    {
      v22 = 0;
    }

    else
    {
      v22 = v13 == 0xC000000000000000;
    }

    if (v22 && v17 >> 62 == 3 && !v16 && v17 == 0xC000000000000000)
    {
      sub_100005A80(0, 0xC000000000000000);
      v25 = 0;
      v26 = 0xC000000000000000;
      goto LABEL_44;
    }

LABEL_32:
    v27 = 0;
    if (v21 <= 1)
    {
      goto LABEL_29;
    }

    goto LABEL_33;
  }

LABEL_65:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100030BD0(a2, v52);
  v51[0] = *v45;
  sub_100047E70(v52, v8, isUniquelyReferenced_nonNull_native);
  *v45 = v51[0];
  v44 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v44;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  return 1;
}

uint64_t sub_100045710(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = static Hasher._hash(seed:_:)();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 8 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_100048500(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1000457F4(Swift::Int *a1, Swift::Int a2, Swift::Int a3, void *a4)
{
  v8 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  NSObject.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v15 = (*(v8 + 48) + 24 * v11);
      v16 = v15[2];
      v17 = *v15 == a2 && v15[1] == a3;
      if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_10003EB28();

        v13 = v16;
        v14 = static NSObject.== infix(_:_:)();

        if (v14)
        {
          break;
        }
      }

      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v21 = (*(v8 + 48) + 24 * v11);
    v22 = v21[1];
    v23 = v21[2];
    *a1 = *v21;
    a1[1] = v22;
    a1[2] = v23;

    v24 = v23;
    return 0;
  }

  else
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v25;

    v19 = a4;
    sub_100048620(a2, a3, v19, v11, isUniquelyReferenced_nonNull_native);
    *v25 = v27;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = v19;
    return 1;
  }
}

uint64_t sub_1000459D0(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = static Hasher._hash(seed:bytes:count:)();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_100048804(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

Swift::Int sub_100045AB8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003F6C(&qword_1000B93F8, &unk_100083270);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_100045D18(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003F6C(&qword_1000BA148, &unk_100083290);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v33 = v1;
    v6 = 0;
    v34 = (v3 + 56);
    v35 = v3;
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
      v36 = (v9 - 1) & v9;
LABEL_15:
      v18 = *(v3 + 48) + 40 * (v14 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 24);
      v23 = *(v18 + 32);
      v24 = *(v18 + 33);
      Hasher.init(_seed:)();
      String.hash(into:)();
      String.hash(into:)();
      Hasher._combine(_:)(v23);
      Hasher._combine(_:)(v24);
      result = Hasher._finalize()();
      v25 = -1 << *(v5 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v11 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v11 + 8 * v27);
          if (v31 != -1)
          {
            v12 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v26) & ~*(v11 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v5 + 48) + 40 * v12;
      *v13 = v19;
      *(v13 + 8) = v20;
      *(v13 + 16) = v21;
      *(v13 + 24) = v22;
      *(v13 + 32) = v23;
      *(v13 + 33) = v24;
      ++*(v5 + 16);
      v3 = v35;
      v9 = v36;
    }

    v15 = v6;
    result = v34;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v10)
      {
        break;
      }

      v17 = v34[v6];
      ++v15;
      if (v17)
      {
        v14 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v32 = 1 << *(v3 + 32);
    if (v32 >= 64)
    {
      bzero(v34, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v34 = -1 << v32;
    }

    v2 = v33;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_100045FD4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003F6C(&qword_1000BA168, &qword_1000832C0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v36 = v1;
    v37 = v3;
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
    v12 = result + 56;
    v38 = result;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v39 = (v10 - 1) & v10;
LABEL_15:
      v18 = *(v3 + 48) + 40 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      v23 = *(v18 + 32);
      Hasher.init(_seed:)();
      v40 = v20;
      String.hash(into:)();
      if (v21 >> 60 == 15)
      {
        v24 = v21;
        v25 = v22;
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        v25 = v22;
        v24 = v21;
        Data.hash(into:)();
      }

      Hasher._combine(_:)(v23);
      result = Hasher._finalize()();
      v5 = v38;
      v26 = -1 << *(v38 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v12 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v12 + 8 * v28);
          if (v32 != -1)
          {
            v13 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v27) & ~*(v12 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v38 + 48) + 40 * v13;
      *v14 = v19;
      *(v14 + 8) = v40;
      *(v14 + 16) = v25;
      *(v14 + 24) = v24;
      *(v14 + 32) = v23;
      ++*(v38 + 16);
      v3 = v37;
      v10 = v39;
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
        v39 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v33 = 1 << *(v3 + 32);
    if (v33 >= 64)
    {
      v34 = v5;
      bzero(v7, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      v5 = v34;
    }

    else
    {
      *v7 = -1 << v33;
    }

    v2 = v36;
    *(v3 + 16) = 0;
  }

  v35 = v5;

  *v2 = v35;
  return result;
}

Swift::Int sub_1000462CC(uint64_t a1)
{
  v2 = v1;
  v42 = type metadata accessor for String.Encoding();
  v3 = *(v42 - 8);
  __chkstk_darwin(v42);
  v41 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AEAParticipant.AuxiliaryProcess(0);
  v40 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  sub_100003F6C(&qword_1000BA118, &qword_100083258);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v8 + 16))
  {
    v37 = v1;
    v38 = v8;
    v11 = 0;
    v12 = (v8 + 56);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = (v3 + 8);
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v43 = (v15 - 1) & v15;
LABEL_15:
      v22 = *(v8 + 48);
      v23 = *(v40 + 72);
      sub_10004C47C(v22 + v23 * (v19 | (v11 << 6)), v7);
      Hasher.init(_seed:)();
      v24 = v7;
      v25 = v41;
      static String.Encoding.utf8.getter();
      v26 = String.data(using:allowLossyConversion:)();
      v28 = v27;
      result = (*v39)(v25, v42);
      if (v28 >> 60 == 15)
      {
        goto LABEL_32;
      }

      Data.hash(into:)();
      sub_10001CA20(v26, v28);
      result = Hasher._finalize()();
      v29 = -1 << *(v10 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      v7 = v24;
      if (((-1 << v30) & ~*(v17 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v17 + 8 * v31);
          if (v35 != -1)
          {
            v18 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_10004C47C(v24, *(v10 + 48) + v18 * v23);
      ++*(v10 + 16);
      v8 = v38;
      v15 = v43;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v43 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    v36 = 1 << *(v8 + 32);
    if (v36 >= 64)
    {
      bzero(v12, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v36;
    }

    v2 = v37;
    *(v8 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

Swift::Int sub_1000466B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003F6C(&qword_1000BA100, &qword_100083248);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 56 * (v15 | (v6 << 6));
      v28 = *(v18 + 16);
      v29 = *(v18 + 32);
      v30 = *(v18 + 48);
      v27 = *v18;
      Hasher.init(_seed:)();
      sub_10002C1E4();
      dispatch thunk of Hashable.hash(into:)();
      result = Hasher._finalize()();
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 56 * v13;
      *(v14 + 48) = v30;
      *(v14 + 16) = v28;
      *(v14 + 32) = v29;
      *v14 = v27;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_100046944(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003F6C(&qword_1000BA128, &qword_100083268);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = static Hasher._hash(seed:_:)();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_100046B68(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003F6C(&qword_1000BA160, &unk_1000832B0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v3;
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
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 24 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      Hasher.init(_seed:)();
      String.hash(into:)();
      NSObject.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
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

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 24 * v13);
      *v14 = v19;
      v14[1] = v20;
      v14[2] = v21;
      ++*(v5 + 16);
      v3 = v30;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
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
      bzero(v7, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}