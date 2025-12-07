uint64_t sub_100002A38(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100002D40;

  return sub_100002AD0(a1, v1);
}

uint64_t sub_100002AD0(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_100002B6C, 0, 0);
}

uint64_t sub_100002B6C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[7];
    v4 = v0[5];
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v2;
    v6[5] = v4;
    v7 = v4;
    sub_1001D7F30(0, 0, v3, &unk_1004D23C8, v6);
  }

  v8 = v0[1];

  return v8(1);
}

uint64_t sub_100002C98()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100002CE0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10004B564(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100002D40(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_100002E3C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000368C;

  return sub_100002EF4(a1, v4);
}

uint64_t sub_100002EF4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100003784;

  return v6(a1);
}

uint64_t sub_100002FEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000368C;

  return sub_1000030AC(a1, v4, v5, v7, v6);
}

uint64_t sub_1000030AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_10000368C;

  return sub_100003148(a5);
}

uint64_t sub_100003148(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100003168, v1, 0);
}

uint64_t sub_100003168()
{
  v4 = (&async function pointer to dispatch thunk of XPCClientConnectionPool.add(connection:) + async function pointer to dispatch thunk of XPCClientConnectionPool.add(connection:));
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_100003538;
  v2 = *(v0 + 16);

  return v4(v2);
}

uint64_t sub_10000324C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for FenceServiceClient();
  v6 = sub_1000032D4(&qword_1005B09A0, v5, type metadata accessor for FenceServiceClient, &unk_1004D22A0);

  return static XPCAcceptedClient.== infix(_:_:)(v2, v3, v4, v6);
}

uint64_t sub_1000032D4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t *sub_10000331C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100003380(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for FenceServiceClient();
  *(v1 + 24) = swift_allocObject();

  return _swift_task_switch(sub_1000033F8, 0, 0);
}

uint64_t sub_1000033F8()
{
  v1 = v0[2];
  v2 = v0[3];
  swift_defaultActor_initialize();
  *(v2 + 112) = v1;
  v3 = v0[1];
  v4 = v0[3];

  return v3(v4);
}

Swift::Int sub_100003468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  type metadata accessor for FenceServiceClient();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000034C0(uint64_t a1)
{
  type metadata accessor for FenceServiceClient();
  sub_1000032D4(&qword_1005B09A0, v1, type metadata accessor for FenceServiceClient, &unk_1004D22A0);
  return XPCAcceptedClient.hash(into:)();
}

uint64_t sub_100003538(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = *(v3 + 24);

    return _swift_task_switch(sub_10024D3CC, v5, 0);
  }

  else
  {

    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_100003690()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100003788()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100003948(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v5 = type metadata accessor for FenceClientRequest();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  if (swift_weakLoadStrong())
  {
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    _Block_copy(a4);
    PropertyListDecoder.init()();
    sub_1000032D4(&qword_1005B09C0, 255, &type metadata accessor for FenceClientRequest, &protocol conformance descriptor for FenceClientRequest);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    v11 = swift_allocObject();
    *(v11 + 16) = sub_10000623C;
    *(v11 + 24) = v9;

    sub_100003E24(v8, sub_100005EFC, v11);

    (*(v6 + 8))(v8, v5);
  }

  else
  {
    sub_1002519F0();
    swift_allocError();
    _Block_copy(a4);
    v10 = _convertErrorToNSError(_:)();
    (a4)[2](a4, 0, v10);
  }
}

uint64_t sub_100003DB4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100003DEC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100003E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v23 = a3;
  v21 = *v3;
  v5 = type metadata accessor for FenceClientRequest();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v6 + 16))(v8, a1, v5);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = (v7 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  (*(v6 + 32))(v16 + v13, v8, v5);
  *(v16 + v14) = v3;
  v17 = (v16 + v15);
  v18 = v23;
  *v17 = v22;
  v17[1] = v18;
  *(v16 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8)) = v21;

  sub_1001D7F30(0, 0, v11, &unk_1004D2368, v16);
}

uint64_t sub_100004070()
{
  v1 = type metadata accessor for FenceClientRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_10000417C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100003690;

  return sub_100004230(a1, v4, v5, v6);
}

uint64_t sub_100004230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_100005FC0;

  return daemon.getter();
}

uint64_t sub_1000042C4(uint64_t a1)
{
  v3 = *v2;
  v3[471] = a1;
  v3[472] = v1;

  if (v1)
  {
    v4 = v3[441];

    return _swift_task_switch(sub_10020E684, v4, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[473] = v5;
    *v5 = v3;
    v5[1] = sub_10000443C;

    return daemon.getter();
  }
}

uint64_t sub_10000443C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 3792) = a1;

  v5 = swift_task_alloc();
  *(v3 + 3800) = v5;
  v6 = type metadata accessor for AccountService(0);
  v7 = sub_1000093B0(&qword_1005A9118, type metadata accessor for AccountService, &unk_1004DCC10);
  *v5 = v4;
  v5[1] = sub_100008B48;
  v8 = *(v2 + 3720);
  v9 = *(v2 + 3712);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_100004610()
{
  v1 = *(v0 + 144);

  return v1;
}

uint64_t sub_100004640()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t sub_100004670(uint64_t a1)
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1000046BC(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for Friend();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100024EF4(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_100237D20(&type metadata accessor for Friend, &qword_1005B0568, &qword_1004D1EB8);
      goto LABEL_12;
    }

    sub_100024BD8(v10 + 1);
  }

  v12 = *v3;
  sub_1000093F8(&qword_1005AE9B0, &type metadata accessor for Friend, &protocol conformance descriptor for Friend);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1000093F8(&qword_1005AE9B8, &type metadata accessor for Friend, &protocol conformance descriptor for Friend);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100004984(void *a1)
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

uint64_t sub_1000049D0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100004A24(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for FenceClientRequest() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100003690;

  return sub_100004B80(a1, v9, v10, v1 + v6, v11, v12, v13);
}

uint64_t sub_100004B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[105] = a7;
  v7[104] = a6;
  v7[103] = a5;
  v7[102] = a4;
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v7[106] = swift_task_alloc();
  sub_10004B564(&qword_1005A9148, &qword_1004D2370);
  v7[107] = swift_task_alloc();
  sub_10004B564(&qword_1005B09C8, &qword_1004D2378);
  v7[108] = swift_task_alloc();
  v8 = type metadata accessor for Fence.TriggerPosition();
  v7[109] = v8;
  v7[110] = *(v8 - 8);
  v7[111] = swift_task_alloc();
  sub_10004B564(&qword_1005B09D0, &unk_1004D2380);
  v7[112] = swift_task_alloc();
  sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v7[113] = swift_task_alloc();
  v9 = type metadata accessor for PersonHandle();
  v7[114] = v9;
  v7[115] = *(v9 - 8);
  v7[116] = swift_task_alloc();
  v10 = type metadata accessor for Fence.ID();
  v7[117] = v10;
  v7[118] = *(v10 - 8);
  v7[119] = swift_task_alloc();
  v7[120] = swift_task_alloc();
  v7[121] = swift_task_alloc();
  v7[122] = sub_10004B564(&qword_1005B09D8, &qword_1004D2390);
  v7[123] = swift_task_alloc();
  v11 = type metadata accessor for Fence();
  v7[124] = v11;
  v7[125] = *(v11 - 8);
  v7[126] = swift_task_alloc();
  v7[127] = swift_task_alloc();
  v7[128] = swift_task_alloc();
  v12 = type metadata accessor for FenceClientRequest();
  v7[129] = v12;
  v7[130] = *(v12 - 8);
  v7[131] = swift_task_alloc();

  return _swift_task_switch(sub_100004F40, 0, 0);
}

uint64_t sub_100004F40()
{
  v1 = v0[131];
  v2 = v0[130];
  v3 = v0[129];
  (*(v2 + 16))(v1, v0[102], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for FenceClientRequest.saveFence(_:))
  {
    v5 = v0[131];
    v6 = v0[128];
    v7 = v0[125];
    v8 = v0[124];
    (*(v0[130] + 96))(v5, v0[129]);
    (*(v7 + 32))(v6, v5, v8);
    v9 = swift_task_alloc();
    v0[132] = v9;
    *v9 = v0;
    v9[1] = sub_10024DC8C;
    v10 = v0[128];
    v11 = v0[127];

    return sub_100261468(v11, v10);
  }

  if (v4 == enum case for FenceClientRequest.deleteFence(_:))
  {
    v13 = v0[131];
    v14 = v0[121];
    v15 = v0[118];
    v16 = v0[117];
    (*(v0[130] + 96))(v13, v0[129]);
    (*(v15 + 32))(v14, v13, v16);
    v17 = swift_task_alloc();
    v0[134] = v17;
    *v17 = v0;
    v17[1] = sub_10024DFBC;
    v18 = v0[121];

    return sub_10026591C(v18);
  }

  if (v4 == enum case for FenceClientRequest.acceptFence(_:))
  {
    v19 = v0[131];
    v20 = v0[120];
    v21 = v0[118];
    v22 = v0[117];
    (*(v0[130] + 96))(v19, v0[129]);
    (*(v21 + 32))(v20, v19, v22);
    v23 = swift_task_alloc();
    v0[143] = v23;
    *v23 = v0;
    v23[1] = sub_10024ECDC;
    v24 = v0[126];
    v25 = v0[120];

    return sub_1002684B8(v24, v25);
  }

  if (v4 == enum case for FenceClientRequest.muteFences(_:))
  {
    v26 = v0[131];
    v27 = v0[125];
    v28 = v0[124];
    v29 = v0[116];
    v30 = v0[115];
    v31 = v0[114];
    v32 = v0[113];
    v33 = v0[112];
    (*(v0[130] + 96))(v26, v0[129]);
    v34 = *(sub_10004B564(&qword_1005B09E8, &qword_1004D23A0) + 48);
    (*(v30 + 32))(v29, v26, v31);
    sub_1001A5538(v26 + v34, v32);
    (*(v27 + 56))(v33, 1, 1, v28);
    v35 = swift_task_alloc();
    v0[145] = v35;
    *v35 = v0;
    v35[1] = sub_10024F018;
    v36 = v0[116];
    v37 = v0[113];
    v38 = v0[112];

    return sub_1002695FC(v36, v37, v38);
  }

  if (v4 == enum case for FenceClientRequest.triggerFence(_:))
  {
    v39 = v0[131];
    v40 = v0[119];
    v41 = v0[118];
    v42 = v0[117];
    v43 = v0[111];
    v44 = v0[110];
    v45 = v0[109];
    v46 = v0[107];
    (*(v0[130] + 96))(v39, v0[129]);
    v47 = *(sub_10004B564(&qword_1005B09E0, &qword_1004D2398) + 48);
    (*(v41 + 32))(v40, v39, v42);
    (*(v44 + 32))(v43, v39 + v47, v45);
    v48 = type metadata accessor for Fence.AcceptanceStatus();
    (*(*(v48 - 8) + 56))(v46, 1, 1, v48);
    v49 = swift_task_alloc();
    v0[147] = v49;
    *v49 = v0;
    v49[1] = sub_10024F358;
    v50 = v0[119];
    v51 = v0[111];
    v52 = v0[108];
    v53 = v0[107];

    return sub_1002789EC(v52, v50, v51, v53);
  }

  if (v4 == enum case for FenceClientRequest.fences(_:))
  {
    v54 = swift_task_alloc();
    v0[136] = v54;
    *v54 = v0;
    v55 = sub_10024E2B4;
LABEL_23:
    v54[1] = v55;

    return daemon.getter();
  }

  if (v4 == enum case for FenceClientRequest.startStreaming(_:))
  {
    v56 = v0[103];

    return _swift_task_switch(sub_1000057C8, v56, 0);
  }

  else
  {
    if (v4 == enum case for FenceClientRequest.forceRefreshClient(_:))
    {
      v54 = swift_task_alloc();
      v0[149] = v54;
      *v54 = v0;
      v55 = sub_10024F6DC;
      goto LABEL_23;
    }

    v57 = v0[131];
    v58 = v0[130];
    v59 = v0[129];
    v60 = v0[123];
    v61 = v0[104];
    sub_10005CF04();
    v62 = swift_allocError();
    *v63 = 1;
    *v60 = v62;
    swift_storeEnumTagMultiPayload();
    v61(v60);
    sub_100002CE0(v60, &qword_1005B09D8, &qword_1004D2390);
    (*(v58 + 8))(v57, v59);

    v64 = v0[1];

    return v64();
  }
}

uint64_t sub_1000057C8()
{
  v1 = *(v0 + 848);
  v2 = *(v0 + 824);
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = sub_1000032D4(&qword_1005AF4A8, 255, type metadata accessor for FenceService, &unk_1004D2208);
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v4;
  v5[4] = v2;
  swift_retain_n();
  sub_10020D620(0, 0, v1, &unk_1004D0730, v5);

  return _swift_task_switch(sub_100005918, 0, 0);
}

uint64_t sub_100005918()
{
  v1 = v0[123];
  v2 = v0[104];
  v3 = enum case for FenceResponse.void(_:);
  v4 = type metadata accessor for FenceResponse();
  (*(*(v4 - 8) + 104))(v1, v3, v4);
  swift_storeEnumTagMultiPayload();
  v2(v1);
  sub_100002CE0(v1, &qword_1005B09D8, &qword_1004D2390);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100005AD8(uint64_t a1, void (*a2)(uint64_t, unint64_t, uint64_t))
{
  v4 = type metadata accessor for FenceResponse();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004B564(&qword_1005B09D8, &qword_1004D2390);
  __chkstk_darwin(v8);
  v10 = (&v23 - v9);
  sub_100005F04(a1, &v23 - v9, &qword_1005B09D8, &qword_1004D2390);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v10;
    if (qword_1005A80F0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000A6F0(v12, qword_1005DFFA0);
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v15 = 136446466;
      *(v15 + 4) = sub_10000D01C(0xD000000000000016, 0x80000001004E5C30, &v24);
      *(v15 + 12) = 2114;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 14) = v18;
      *v16 = v18;
      _os_log_impl(&_mh_execute_header, v13, v14, "%{public}s: %{public}@", v15, 0x16u);
      sub_100002CE0(v16, &qword_1005A9670, &unk_1004C2480);

      sub_100004984(v17);
    }

    swift_errorRetain();
    a2(0, 0xF000000000000000, v11);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_1000032D4(&qword_1005B09F0, 255, &type metadata accessor for FenceResponse, &protocol conformance descriptor for FenceResponse);
    v20 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v22 = v21;
    sub_100005F6C(v20, v21);
    a2(v20, v22, 0);
    sub_1000049D0(v20, v22);

    sub_1000049D0(v20, v22);
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_100005F04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10004B564(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100005F6C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100005FC0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 32) = a1;

  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_1000032D4(&unk_1005AFA50, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000032D4(&qword_1005A90D0, 255, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_10000629C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

void sub_1000061A4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
    if (a3)
    {
LABEL_3:
      v7 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, isa);
}

uint64_t sub_100006264(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000629C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[6] = a1;
  v3[7] = v1;

  if (v1)
  {
    v5 = v3[2];

    return _swift_task_switch(sub_100250F70, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[8] = v6;
    *v6 = v4;
    v6[1] = sub_100012068;

    return sub_100006424();
  }
}

uint64_t sub_100006424()
{
  v1[441] = v0;
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v1[442] = swift_task_alloc();
  v2 = type metadata accessor for UUID();
  v1[443] = v2;
  v1[444] = *(v2 - 8);
  v1[445] = swift_task_alloc();
  v1[446] = *(type metadata accessor for FenceRecord(0) - 8);
  v1[447] = swift_task_alloc();
  v1[448] = swift_task_alloc();
  v1[449] = swift_task_alloc();
  v1[450] = swift_task_alloc();
  v3 = type metadata accessor for Friend();
  v1[451] = v3;
  v1[452] = *(v3 - 8);
  v1[453] = swift_task_alloc();
  v4 = type metadata accessor for Handle();
  v1[454] = v4;
  v1[455] = *(v4 - 8);
  v1[456] = swift_task_alloc();
  sub_10004B564(&qword_1005A9110, &qword_1004C25F8);
  v1[457] = swift_task_alloc();
  v5 = type metadata accessor for Account();
  v1[458] = v5;
  v1[459] = *(v5 - 8);
  v1[460] = swift_task_alloc();
  v6 = swift_task_alloc();
  v1[461] = v6;
  *v6 = v1;
  v6[1] = sub_100006760;

  return daemon.getter();
}

uint64_t type metadata accessor for FenceRecord(uint64_t a1)
{
  result = qword_1005AE690;
  if (!qword_1005AE690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100006760(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[462] = a1;

  v3 = swift_task_alloc();
  v2[463] = v3;
  v4 = type metadata accessor for Daemon();
  v2[464] = v4;
  v5 = type metadata accessor for LocalStorageService();
  v6 = sub_1000093B0(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[465] = v6;
  v7 = sub_1000093B0(&qword_1005AAB88, type metadata accessor for LocalStorageService, &unk_1004D5A30);
  *v3 = v9;
  v3[1] = sub_1000069F4;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100006964(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000069AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000069F4(uint64_t a1)
{
  v3 = *v2;
  v3[466] = a1;
  v3[467] = v1;

  if (v1)
  {
    v4 = v3[441];

    return _swift_task_switch(sub_10020E330, v4, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[468] = v5;
    *v5 = v3;
    v5[1] = sub_100006B6C;

    return daemon.getter();
  }
}

uint64_t sub_100006B6C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 3752) = a1;

  v5 = swift_task_alloc();
  *(v3 + 3760) = v5;
  v6 = type metadata accessor for CloudStorageService();
  v7 = sub_1000093B0(&qword_1005AD568, type metadata accessor for CloudStorageService, &unk_1004D03B0);
  *v5 = v4;
  v5[1] = sub_1000042C4;
  v8 = *(v2 + 3720);
  v9 = *(v2 + 3712);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_100006D44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_100006DC4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10023A25C(a1, a2, a3, *v3, &qword_1005B00D8, &qword_1004D1668, type metadata accessor for FriendRecord);
  *v3 = result;
  return result;
}

uint64_t sub_100006E08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100006E68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100006EC8(uint64_t a1@<X8>)
{
  v3 = *(v1 + 112);
  v4 = *(*v3 + class metadata base offset for ManagedBuffer + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  v6 = type metadata accessor for DatabaseState();
  (*(*(v6 - 8) + 16))(a1, v3 + v4, v6);

  os_unfair_lock_unlock((v3 + v5));
}

unint64_t sub_100006F90(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10001616C(a5, a6);
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

uint64_t sub_10000709C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100007100()
{
  v1 = *(*v0 + 48);

  return _swift_task_switch(sub_10000722C, v1, 0);
}

uint64_t sub_10000722C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = OBJC_IVAR____TtC13findmylocated14AccountService__account;
  swift_beginAccess();
  sub_100005F04(v1 + v3, v2, &qword_1005A9110, &qword_1004C25F8);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000072D0()
{
  v1 = *(*v0 + 3528);

  return _swift_task_switch(sub_1000073E0, v1, 0);
}

uint64_t sub_1000073E0()
{
  v25 = v0;
  v1 = v0[459];
  v2 = v0[458];
  v3 = v0[457];
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {

    sub_100002CE0(v3, &qword_1005A9110, &qword_1004C25F8);
    sub_10005CF04();
    v4 = swift_allocError();
    *v5 = 3;
    swift_willThrow();

    sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1004C1900;
    *(v6 + 32) = 33;
    v7 = sub_10004C9A8(v4);
    *(v6 + 64) = &type metadata for String;
    *(v6 + 72) = &off_10058C398;
    *(v6 + 40) = v7;
    *(v6 + 48) = v8;
    v9 = sub_1000105C0(v6);
    swift_setDeallocating();
    sub_100002CE0(v6 + 32, &qword_1005A8790, &qword_1004C0EB0);
    swift_deallocClassInstance();
    v10 = sub_10004C68C(3u, v9);
    v12 = v11;
    v14 = v13;

    sub_10001157C(v10, v12, v14);

    if (qword_1005A80B8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000A6F0(v15, qword_1005DFF18);
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v24 = v20;
      *v18 = 136446466;
      *(v18 + 4) = sub_10000D01C(0xD00000000000001FLL, 0x80000001004E5790, &v24);
      *(v18 + 12) = 2114;
      swift_errorRetain();
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 14) = v21;
      *v19 = v21;
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s failed: %{public}@", v18, 0x16u);
      sub_100002CE0(v19, &qword_1005A9670, &unk_1004C2480);

      sub_100004984(v20);
    }

    v22 = v0[1];

    return v22(_swiftEmptyArrayStorage);
  }

  else
  {
    (*(v1 + 32))(v0[460], v3, v2);

    return _swift_task_switch(sub_100007834, 0, 0);
  }
}

uint64_t sub_100007834()
{
  v1 = swift_task_alloc();
  *(v0 + 3856) = v1;
  *v1 = v0;
  v1[1] = sub_10000826C;

  return sub_1000078C8();
}

uint64_t sub_1000078E8()
{
  v1 = *(*(v0 + 56) + 112);
  *(v0 + 64) = v1;
  return _swift_task_switch(sub_10000790C, v1, 0);
}

uint64_t sub_10000790C()
{
  type metadata accessor for CloudStorageDatabase(0);
  sub_1001CC028(&qword_1005AF100, type metadata accessor for CloudStorageDatabase, &unk_1004D0160);
  *(v0 + 72) = Database.readConnection.getter();

  return _swift_task_switch(sub_100007A54, 0, 0);
}

uint64_t type metadata accessor for CloudStorageDatabase(uint64_t a1)
{
  result = qword_1005AEF28;
  if (!qword_1005AEF28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100007A54()
{
  if (v0[9])
  {
    if (qword_1005A8000 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Table();
    v2 = sub_10000A6F0(v1, qword_1005DFD08);
    v0[5] = v1;
    v0[6] = &protocol witness table for Table;
    v3 = sub_10000331C(v0 + 2);
    (*(*(v1 - 8) + 16))(v3, v2, v1);
    v4 = sub_100007C60((v0 + 2));

    sub_100004984(v0 + 2);
    v5 = v0[1];

    return v5(v4);
  }

  else
  {
    v7 = type metadata accessor for DatabaseError();
    sub_1001CC028(&qword_1005AF460, &type metadata accessor for DatabaseError, &protocol conformance descriptor for DatabaseError);
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, enum case for DatabaseError.notConnected(_:), v7);
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_100007C60(uint64_t a1)
{
  v1 = type metadata accessor for FenceRecord(0);
  v58 = *(v1 - 8);
  v2 = __chkstk_darwin(v1 - 8);
  v57 = (v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v2);
  v5 = v49 - v4;
  v6 = sub_10004B564(&qword_1005AF468, &qword_1004D06C0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v49 - v10;
  v12 = type metadata accessor for Row();
  v53 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = v49 - v17;
  __chkstk_darwin(v16);
  v20 = v49 - v19;
  v21 = v59;
  result = Connection.prepare(_:)();
  if (!v21)
  {
    v55 = v15;
    v56 = v12;
    v50 = v18;
    v51 = v20;
    v52 = v11;
    v49[0] = v5;
    v23 = result;

    v24 = dispatch thunk of _AnySequenceBox._underestimatedCount.getter();
    v60 = _swiftEmptyArrayStorage;
    sub_10001910C(0, v24 & ~(v24 >> 63), 0);
    v25 = v60;
    v49[1] = v23;
    result = dispatch thunk of _AnySequenceBox._makeIterator()();
    v59 = result;
    if (v24 < 0)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

    if (v24)
    {
      v26 = (v53 + 48);
      v27 = (v53 + 16);
      v54 = (v53 + 8);
      v28 = v56;
      while (1)
      {
        dispatch thunk of _AnyIteratorBoxBase.next()();
        result = (*v26)(v9, 1, v28);
        if (result == 1)
        {
          goto LABEL_19;
        }

        v29 = v55;
        (*v27)(v55, v9, v28);
        v30 = v57;
        sub_1001C56C8(v29, v57);
        (*v54)(v9, v28);
        v60 = v25;
        v32 = v25[2];
        v31 = v25[3];
        if (v32 >= v31 >> 1)
        {
          sub_10001910C((v31 > 1), v32 + 1, 1);
          v30 = v57;
          v25 = v60;
        }

        v25[2] = v32 + 1;
        sub_1001CCB04(v30, v25 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v32, type metadata accessor for FenceRecord);
        --v24;
        v28 = v56;
        if (!v24)
        {
          goto LABEL_11;
        }
      }
    }

    v28 = v56;
LABEL_11:
    v33 = v52;
    dispatch thunk of _AnyIteratorBoxBase.next()();
    v34 = v33;
    v35 = v53;
    v57 = *(v53 + 48);
    if ((v57)(v33, 1, v28) != 1)
    {
      v37 = *(v35 + 32);
      v36 = v35 + 32;
      v56 = v37;
      v38 = (v36 - 16);
      v53 = v36;
      v39 = (v36 - 24);
      v40 = v49[0];
      do
      {
        v41 = v51;
        v56(v51, v34, v28);
        v42 = v50;
        (*v38)(v50, v41, v28);
        sub_1001C56C8(v42, v40);
        v43 = v40;
        (*v39)(v41, v28);
        v60 = v25;
        v44 = v28;
        v46 = v25[2];
        v45 = v25[3];
        if (v46 >= v45 >> 1)
        {
          sub_10001910C((v45 > 1), v46 + 1, 1);
          v43 = v49[0];
          v25 = v60;
        }

        v25[2] = v46 + 1;
        sub_1001CCB04(v43, v25 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v46, type metadata accessor for FenceRecord);
        v47 = v52;
        v40 = v43;
        dispatch thunk of _AnyIteratorBoxBase.next()();
        v34 = v47;
        v48 = (v57)(v47, 1, v44);
        v28 = v44;
      }

      while (v48 != 1);
    }

    sub_100002CE0(v34, &qword_1005AF468, &qword_1004D06C0);
    sub_10004B564(&qword_1005AF470, &qword_1004D06C8);
    result = swift_allocObject();
    *(result + 16) = v25;
  }

  return result;
}

uint64_t sub_10000826C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 3864) = v1;

  if (v1)
  {
    v5 = sub_10020DB88;
  }

  else
  {
    *(v4 + 3872) = a1;
    v5 = sub_100008394;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100008394()
{
  v1 = *(v0 + 3728);
  *(v0 + 3880) = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

  return _swift_task_switch(sub_10000F1E4, v1, 0);
}

uint64_t sub_100008414()
{
  v1[153] = v0;
  sub_10004B564(&qword_1005AF468, &qword_1004D06C0);
  v1[154] = swift_task_alloc();
  v1[155] = swift_task_alloc();
  v2 = type metadata accessor for Row();
  v1[156] = v2;
  v1[157] = *(v2 - 8);
  v1[158] = swift_task_alloc();
  v1[159] = swift_task_alloc();
  v1[160] = swift_task_alloc();

  return _swift_task_switch(sub_10000F5EC, 0, 0);
}

void *sub_100008530()
{
  if (!v0[163])
  {
    v5 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError, &protocol conformance descriptor for DatabaseError);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for DatabaseError.notConnected(_:), v5);
    swift_willThrow();
    goto LABEL_7;
  }

  if (qword_1005A8158 != -1)
  {
    swift_once();
  }

  v1 = v0[162];
  v2 = type metadata accessor for Table();
  v3 = sub_10000A6F0(v2, qword_1005E00D8);
  v0[151] = v2;
  v0[152] = &protocol witness table for Table;
  v4 = sub_10000331C(v0 + 148);
  (*(*(v2 - 8) + 16))(v4, v3, v2);
  Connection.prepare(_:)();
  if (v1)
  {

    sub_100004984(v0 + 148);
LABEL_7:

    v7 = v0[1];

    return v7();
  }

  sub_100004984(v0 + 148);
  v9 = dispatch thunk of _AnySequenceBox._underestimatedCount.getter();
  sub_10000F708(0, v9 & ~(v9 >> 63), 0);
  result = dispatch thunk of _AnySequenceBox._makeIterator()();
  if (v9 < 0)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v10 = v0[157];
    v11 = (v10 + 48);
    v12 = (v10 + 16);
    v13 = (v10 + 8);
    do
    {
      v14 = v0[156];
      v15 = v0[154];
      dispatch thunk of _AnyIteratorBoxBase.next()();
      result = (*v11)(v15, 1, v14);
      if (result == 1)
      {
        goto LABEL_27;
      }

      v16 = v0[158];
      (*v12)(v16, v0[154], v0[156]);
      sub_10033C560(v16, (v0 + 2));
      (*v13)(v0[154], v0[156]);
      v18 = _swiftEmptyArrayStorage[2];
      v17 = _swiftEmptyArrayStorage[3];
      if (v18 >= v17 >> 1)
      {
        sub_10000F708((v17 > 1), v18 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v18 + 1;
      memcpy(&_swiftEmptyArrayStorage[73 * v18 + 4], v0 + 2, 0x241uLL);
    }

    while (--v9);
  }

  v19 = v0[157];
  v20 = v0[156];
  v21 = v0[155];
  dispatch thunk of _AnyIteratorBoxBase.next()();
  v35 = *(v19 + 48);
  if (v35(v21, 1, v20) != 1)
  {
    v24 = v0[157];
    v34 = *(v24 + 32);
    v25 = (v24 + 16);
    v26 = (v24 + 8);
    do
    {
      v27 = v0[160];
      v28 = v0[159];
      v29 = v0[156];
      v34(v27, v0[155], v29);
      (*v25)(v28, v27, v29);
      sub_10033C560(v28, (v0 + 75));
      (*v26)(v0[160], v0[156]);
      v31 = _swiftEmptyArrayStorage[2];
      v30 = _swiftEmptyArrayStorage[3];
      if (v31 >= v30 >> 1)
      {
        sub_10000F708((v30 > 1), v31 + 1, 1);
      }

      v32 = v0[156];
      v33 = v0[155];
      _swiftEmptyArrayStorage[2] = v31 + 1;
      memcpy(&_swiftEmptyArrayStorage[73 * v31 + 4], v0 + 75, 0x241uLL);
      dispatch thunk of _AnyIteratorBoxBase.next()();
    }

    while (v35(v33, 1, v32) != 1);
  }

  v22 = v0[155];

  sub_100002CE0(v22, &qword_1005AF468, &qword_1004D06C0);

  v23 = v0[1];

  return v23(_swiftEmptyArrayStorage);
}

uint64_t sub_100008B24()
{
  v1 = v0[441];
  v0[488] = v0[440];
  return _swift_task_switch(sub_10000F8DC, v1, 0);
}

uint64_t sub_100008B48(uint64_t a1)
{
  v3 = *v2;
  v3[476] = a1;
  v3[477] = v1;

  if (v1)
  {
    v4 = v3[441];

    return _swift_task_switch(sub_10020E9E4, v4, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[478] = v5;
    *v5 = v3;
    v5[1] = sub_10000E7C8;

    return sub_100008CC0();
  }
}

uint64_t sub_100008CC0()
{
  *(v1 + 24) = v0;
  v2 = swift_task_alloc();
  *(v1 + 32) = v2;
  *v2 = v1;
  v2[1] = sub_100008D54;

  return daemon.getter();
}

uint64_t sub_100008D54(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 40) = a1;

  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for LocalStorageService();
  v6 = sub_1000093F8(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000093F8(&qword_1005AAB88, type metadata accessor for LocalStorageService, &unk_1004D5A30);
  *v3 = v9;
  v3[1] = sub_1000097E8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100008F30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100008F78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100008FC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100009008(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100009050(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100009098(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000090E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100009128(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100009170(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000091B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100009200(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100009248(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100009290(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000092D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100009320(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100009368(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000093B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000093F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100009440(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100009488(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000094D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100009518(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100009560(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000095A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000095F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100009638(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100009680(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000096C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100009710(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100009758(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000097A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000097E8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[7] = a1;
  v3[8] = v1;

  if (v1)
  {
    v5 = v3[3];

    return _swift_task_switch(sub_10021C2F0, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[9] = v6;
    *v6 = v4;
    v6[1] = sub_10000E51C;

    return sub_100009970();
  }
}

uint64_t sub_100009970()
{
  *(v1 + 24) = v0;
  *(v1 + 32) = *v0;
  return _swift_task_switch(sub_1000099B8, 0, 0);
}

uint64_t sub_1000099B8()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  v5 = sub_10004B564(&qword_1005B0578, &qword_1004D5CA0);
  *v4 = v0;
  v4[1] = sub_10000E400;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0x6E656972466C6C61, 0xEC00000029287364, sub_100009CCC, v3, v5);
}

uint64_t sub_100009AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10004B564(&qword_1005B1C48, &qword_1004D5C78);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  type metadata accessor for WorkItemQueue.WorkItem();
  (*(v8 + 16))(v11, a1, v7);
  v12 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  (*(v8 + 32))(v13 + v12, v11, v7);
  *(v13 + ((v9 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_100009CD4()
{
  v2 = *(sub_10004B564(&qword_1005B1C48, &qword_1004D5C78) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100003690;

  return sub_100009DE8(v4, v0 + v3);
}

uint64_t sub_100009DE8(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = type metadata accessor for FriendRecord(0);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  sub_10004B564(&qword_1005B0B88, &qword_1004D5CC0);
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_100009F18, 0, 0);
}

uint64_t sub_100009F18()
{
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_10000C71C;

  return sub_100009FAC();
}

uint64_t sub_100009FCC()
{
  v1 = *(*(v0 + 56) + 112);
  *(v0 + 64) = v1;
  return _swift_task_switch(sub_100009FF0, v1, 0);
}

uint64_t sub_100009FF0()
{
  sub_10000A0A4();
  *(v0 + 72) = 0;
  v1 = *(v0 + 64);

  return _swift_task_switch(sub_10000A39C, v1, 0);
}

void sub_10000A0A4()
{
  v0 = type metadata accessor for SystemInfo.DeviceLockState();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v14 - v5;
  static SystemInfo.lockState.getter();
  (*(v1 + 104))(v4, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v0);
  sub_100006D44(&qword_1005B19E8, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  v7 = dispatch thunk of static Equatable.== infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  if (v7)
  {
    if (qword_1005A8128 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000A6F0(v9, qword_1005B1890);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_10000D01C(0x7261745365666173, 0xED00002928707574, &v15);
      _os_log_impl(&_mh_execute_header, v10, v11, "%{public}s Not starting up before first unlock!", v12, 0xCu);
      sub_100004984(v13);
    }
  }

  else
  {
    type metadata accessor for LocalStorageDatabase(0);
    sub_100006D44(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase, &unk_1004D5700);
    Database.startup()();
  }
}

uint64_t sub_10000A39C()
{
  type metadata accessor for LocalStorageDatabase(0);
  sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase, &unk_1004D5700);
  *(v0 + 80) = Database.readConnection.getter();

  return _swift_task_switch(sub_10000A4E4, 0, 0);
}

uint64_t type metadata accessor for LocalStorageDatabase(uint64_t a1)
{
  result = qword_1005B18D0;
  if (!qword_1005B18D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000A49C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000A4E4()
{
  if (v0[10])
  {
    if (qword_1005A8138 != -1)
    {
      swift_once();
    }

    v1 = v0[9];
    v2 = type metadata accessor for Table();
    v3 = sub_10000A6F0(v2, qword_1005E0078);
    v0[5] = v2;
    v0[6] = &protocol witness table for Table;
    v4 = sub_10000331C(v0 + 2);
    (*(*(v2 - 8) + 16))(v4, v3, v2);
    v5 = sub_10000A728((v0 + 2));

    sub_100004984(v0 + 2);
    if (!v1)
    {
      v6 = v0[1];

      return v6(v5);
    }
  }

  else
  {
    v8 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError, &protocol conformance descriptor for DatabaseError);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, enum case for DatabaseError.notConnected(_:), v8);
    swift_willThrow();
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_10000A6F0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000A728(uint64_t a1)
{
  v1 = type metadata accessor for FriendRecord(0);
  v58 = *(v1 - 8);
  v2 = __chkstk_darwin(v1 - 8);
  v57 = v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = v49 - v4;
  v6 = sub_10004B564(&qword_1005AF468, &qword_1004D06C0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v49 - v10;
  v12 = type metadata accessor for Row();
  v53 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = v49 - v17;
  __chkstk_darwin(v16);
  v20 = v49 - v19;
  v21 = v59;
  result = Connection.prepare(_:)();
  if (!v21)
  {
    v55 = v15;
    v56 = v12;
    v50 = v18;
    v51 = v20;
    v52 = v11;
    v49[0] = v5;
    v23 = result;

    v24 = dispatch thunk of _AnySequenceBox._underestimatedCount.getter();
    v60 = _swiftEmptyArrayStorage;
    sub_100006DC4(0, v24 & ~(v24 >> 63), 0);
    v25 = v60;
    v49[1] = v23;
    result = dispatch thunk of _AnySequenceBox._makeIterator()();
    v59 = result;
    if (v24 < 0)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

    if (v24)
    {
      v26 = (v53 + 48);
      v27 = (v53 + 16);
      v54 = (v53 + 8);
      v28 = v56;
      while (1)
      {
        dispatch thunk of _AnyIteratorBoxBase.next()();
        result = (*v26)(v9, 1, v28);
        if (result == 1)
        {
          goto LABEL_19;
        }

        v29 = v55;
        (*v27)(v55, v9, v28);
        v30 = v57;
        sub_10000AD34(v29, v57);
        (*v54)(v9, v28);
        v60 = v25;
        v32 = v25[2];
        v31 = v25[3];
        if (v32 >= v31 >> 1)
        {
          sub_100006DC4((v31 > 1), v32 + 1, 1);
          v30 = v57;
          v25 = v60;
        }

        v25[2] = v32 + 1;
        sub_10033C458(v30, v25 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v32, type metadata accessor for FriendRecord);
        --v24;
        v28 = v56;
        if (!v24)
        {
          goto LABEL_11;
        }
      }
    }

    v28 = v56;
LABEL_11:
    v33 = v52;
    dispatch thunk of _AnyIteratorBoxBase.next()();
    v34 = v33;
    v35 = v53;
    v57 = *(v53 + 48);
    if ((v57)(v33, 1, v28) != 1)
    {
      v37 = *(v35 + 32);
      v36 = v35 + 32;
      v56 = v37;
      v38 = (v36 - 16);
      v53 = v36;
      v39 = (v36 - 24);
      v40 = v49[0];
      do
      {
        v41 = v51;
        v56(v51, v34, v28);
        v42 = v50;
        (*v38)(v50, v41, v28);
        sub_10000AD34(v42, v40);
        v43 = v40;
        (*v39)(v41, v28);
        v60 = v25;
        v44 = v28;
        v46 = v25[2];
        v45 = v25[3];
        if (v46 >= v45 >> 1)
        {
          sub_100006DC4((v45 > 1), v46 + 1, 1);
          v43 = v49[0];
          v25 = v60;
        }

        v25[2] = v46 + 1;
        sub_10033C458(v43, v25 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v46, type metadata accessor for FriendRecord);
        v47 = v52;
        v40 = v43;
        dispatch thunk of _AnyIteratorBoxBase.next()();
        v34 = v47;
        v48 = (v57)(v47, 1, v44);
        v28 = v44;
      }

      while (v48 != 1);
    }

    sub_100002CE0(v34, &qword_1005AF468, &qword_1004D06C0);
    sub_10004B564(&qword_1005B1DD8, &qword_1004D6078);
    result = swift_allocObject();
    *(result + 16) = v25;
  }

  return result;
}

uint64_t sub_10000AD34@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v6 = sub_10004B564(&qword_1005AE998, &unk_1004D6030);
  __chkstk_darwin(v6 - 8);
  v101 = v92 - v7;
  v8 = sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
  __chkstk_darwin(v8 - 8);
  v99 = v92 - v9;
  v10 = type metadata accessor for FriendRecord(0);
  v11 = v10[36];
  v12 = type metadata accessor for Handle();
  v13 = *(v12 - 1);
  v14 = *(v13 + 56);
  v124 = v11;
  v104 = v12;
  v103 = v14;
  v102 = v13 + 56;
  (v14)(&a2[v11], 1, 1);
  if (qword_1005A81A8 != -1)
  {
    swift_once();
  }

  v121 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
  sub_10000A6F0(v121, qword_1005E01E0);
  Row.subscript.getter();
  v15 = v127;
  *a2 = v126;
  *(a2 + 1) = v15;
  v115 = v15;
  if (qword_1005A81B0 != -1)
  {
    swift_once();
  }

  v16 = sub_10004B564(&qword_1005B1A08, &qword_1004D5FF0);
  sub_10000A6F0(v16, qword_1005E01F8);
  Row.subscript.getter();
  v17 = v127;
  *(a2 + 2) = v126;
  *(a2 + 3) = v17;
  v114 = v17;
  if (qword_1005A81B8 != -1)
  {
    swift_once();
  }

  v123 = sub_10004B564(&qword_1005B1A10, &unk_1004D5800);
  sub_10000A6F0(v123, qword_1005E0210);
  Row.subscript.getter();
  if (v127 == 1)
  {
    v18 = v10[6];
    v19 = type metadata accessor for IDSStatus();
    (*(*(v19 - 8) + 56))(&a2[v18], 1, 1, v19);
  }

  else
  {
    IDSStatus.init(rawValue:)();
  }

  v20 = v10[16];
  if (qword_1005A81C0 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v16, qword_1005E0228);
  Row.subscript.getter();
  v21 = v127;
  v22 = &a2[v10[7]];
  *v22 = v126;
  *(v22 + 1) = v21;
  v113 = v21;
  if (qword_1005A81C8 != -1)
  {
    swift_once();
  }

  v23 = sub_10004B564(&qword_1005B1A18, &qword_1004D5810);
  sub_10000A6F0(v23, qword_1005E0240);
  Row.subscript.getter();
  *&a2[v10[8]] = v126;
  if (qword_1005A81D0 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v16, qword_1005E0258);
  Row.subscript.getter();
  v24 = v127;
  v25 = &a2[v10[9]];
  *v25 = v126;
  *(v25 + 1) = v24;
  v112 = v24;
  if (qword_1005A81D8 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v16, qword_1005E0270);
  Row.subscript.getter();
  v26 = v127;
  v27 = &a2[v10[10]];
  *v27 = v126;
  *(v27 + 1) = v26;
  v111 = v26;
  if (qword_1005A81E0 != -1)
  {
    swift_once();
  }

  v122 = sub_10004B564(&qword_1005B1A20, &qword_1004D5818);
  sub_10000A6F0(v122, qword_1005E0288);
  Row.subscript.getter();
  a2[v10[11]] = v126;
  if (qword_1005A81F0 != -1)
  {
    swift_once();
  }

  v28 = &a2[v20];
  sub_10000A6F0(v16, qword_1005E02B8);
  Row.subscript.getter();
  v29 = v127;
  v30 = &a2[v10[13]];
  *v30 = v126;
  *(v30 + 1) = v29;
  v110 = v29;
  if (qword_1005A81F8 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v16, qword_1005E02D0);
  Row.subscript.getter();
  v31 = v127;
  v32 = &a2[v10[14]];
  *v32 = v126;
  *(v32 + 1) = v31;
  v109 = v31;
  if (qword_1005A8208 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v16, qword_1005E0300);
  Row.subscript.getter();
  v33 = v127;
  *v28 = v126;
  *(v28 + 1) = v33;
  v108 = v33;
  if (qword_1005A81E8 != -1)
  {
    swift_once();
  }

  v34 = sub_10004B564(&qword_1005AF038, &unk_1004D0240);
  sub_10000A6F0(v34, qword_1005E02A0);
  Row.subscript.getter();
  v35 = v127;
  if (v127 >> 60 == 15)
  {
    v36 = 0;
    v107 = 0;
  }

  else
  {
    v120 = v34;
    v37 = v126;
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    sub_10001CCC4(&qword_1005A9E80, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    v3 = v2;
    if (v2)
    {

      sub_10001A794(v37, v35);

      v36 = 0;
      v107 = 0;
      v3 = 0;
    }

    else
    {
      sub_10001A794(v37, v35);

      v36 = v126;
      v107 = v126;
    }

    v34 = v120;
  }

  *&a2[v10[12]] = v36;
  if (qword_1005A8200 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v121, qword_1005E02E8);
  Row.subscript.getter();
  v38 = v127;
  v39 = &a2[v10[15]];
  *v39 = v126;
  *(v39 + 1) = v38;
  v106 = v38;
  if (qword_1005A8210 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v16, qword_1005E0318);
  Row.subscript.getter();
  v40 = v127;
  v41 = &a2[v10[17]];
  v98 = v126;
  *v41 = v126;
  *(v41 + 1) = v40;
  if (qword_1005A8218 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v16, qword_1005E0330);
  Row.subscript.getter();
  v42 = v127;
  v43 = &a2[v10[18]];
  v97 = v126;
  *v43 = v126;
  *(v43 + 1) = v42;
  v121 = v42;
  if (qword_1005A8220 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v123, qword_1005E0348);
  Row.subscript.getter();
  if (v127 == 1)
  {
    v44 = v10[19];
    v45 = type metadata accessor for IDSStatus();
    (*(*(v45 - 8) + 56))(&a2[v44], 1, 1, v45);
  }

  else
  {
    IDSStatus.init(rawValue:)();
  }

  if (qword_1005A8228 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v16, qword_1005E0360);
  Row.subscript.getter();
  v46 = v127;
  v47 = &a2[v10[20]];
  v96 = v126;
  *v47 = v126;
  *(v47 + 1) = v46;
  v120 = v46;
  if (qword_1005A8238 != -1)
  {
    swift_once();
  }

  v48 = sub_10004B564(&qword_1005B1A28, &unk_1004D5820);
  sub_10000A6F0(v48, qword_1005E0390);
  Row.subscript.getter();
  v49 = v127;
  v50 = &a2[v10[22]];
  v95 = v126;
  *v50 = v126;
  v100 = v49;
  v50[8] = v49;
  if (qword_1005A8240 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v16, qword_1005E03A8);
  Row.subscript.getter();
  v51 = v127;
  v52 = &a2[v10[23]];
  *v52 = v126;
  *(v52 + 1) = v51;
  v105 = v51;
  if (qword_1005A8248 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v16, qword_1005E03C0);
  Row.subscript.getter();
  v53 = v127;
  v54 = &a2[v10[24]];
  v94 = v126;
  *v54 = v126;
  *(v54 + 1) = v53;
  v119 = v53;
  if (qword_1005A8250 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v122, qword_1005E03D8);
  Row.subscript.getter();
  v55 = v10[25];
  v93 = v126;
  a2[v55] = v126;
  if (qword_1005A8260 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v16, qword_1005E0408);
  Row.subscript.getter();
  v56 = v127;
  v57 = &a2[v10[27]];
  v92[3] = v126;
  *v57 = v126;
  *(v57 + 1) = v56;
  v122 = v56;
  if (qword_1005A8268 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v16, qword_1005E0420);
  Row.subscript.getter();
  v58 = v127;
  v59 = &a2[v10[28]];
  v92[2] = v126;
  *v59 = v126;
  *(v59 + 1) = v58;
  v118 = v58;
  if (qword_1005A8270 != -1)
  {
    swift_once();
  }

  v123 = v40;
  sub_10000A6F0(v16, qword_1005E0438);
  Row.subscript.getter();
  v60 = v127;
  v61 = &a2[v10[29]];
  v92[1] = v126;
  *v61 = v126;
  *(v61 + 1) = v60;
  v117 = v60;
  if (qword_1005A8258 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v34, qword_1005E03F0);
  Row.subscript.getter();
  v62 = v127;
  if (v127 >> 60 == 15)
  {
    v63 = 0;
  }

  else
  {
    v64 = v126;
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    sub_10001CCC4(&qword_1005A9E80, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    if (v3)
    {

      sub_10001A794(v64, v62);

      v63 = 0;
      v3 = 0;
    }

    else
    {
      sub_10001A794(v64, v62);

      v63 = v126;
    }
  }

  v65 = v10[26];
  v116 = v63;
  *&a2[v65] = v63;
  if (qword_1005A8230 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v34, qword_1005E0378);
  Row.subscript.getter();
  v66 = v127;
  if (v127 >> 60 == 15)
  {
    v67 = 0;
  }

  else
  {
    v68 = v126;
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_10004B564(&qword_1005AE840, &qword_1004CF2E8);
    sub_10001C960();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    if (v3)
    {

      sub_10001A794(v68, v66);

      v67 = 0;
      v3 = 0;
    }

    else
    {
      sub_10001A794(v68, v66);

      v67 = v126;
    }
  }

  *&a2[v10[21]] = v67;
  if (qword_1005A8278 != -1)
  {
    swift_once();
  }

  v69 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  sub_10000A6F0(v69, qword_1005E0450);
  Row.subscript.getter();
  a2[v10[30]] = v126;
  if (qword_1005A8280 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v69, qword_1005E0468);
  Row.subscript.getter();
  a2[v10[31]] = v126;
  if (qword_1005A8288 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v69, qword_1005E0480);
  Row.subscript.getter();
  a2[v10[32]] = v126;
  if (qword_1005A8290 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v69, qword_1005E0498);
  Row.subscript.getter();
  a2[v10[33]] = v126;
  if (qword_1005A8298 != -1)
  {
    swift_once();
  }

  v70 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
  sub_10000A6F0(v70, qword_1005E04B0);
  Row.subscript.getter();
  v71 = v126;
  v72 = v127;
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_10004B564(&qword_1005B1DE0, &qword_1004D6080);
  sub_10001D550();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v3)
  {

    v82 = sub_100017710(v126);

    *&a2[v10[34]] = v82;
    if (qword_1005A82A0 != -1)
    {
      swift_once();
    }

    v83 = sub_10004B564(&qword_1005B1A30, &qword_1004D6050);
    sub_10000A6F0(v83, qword_1005E04C8);
    sub_10001D2D8();
    Row.subscript.getter();
    *&a2[v10[35]] = v126;
    if (v123)
    {
      if (v67)
      {
        if ((v100 & 1) == 0)
        {
          sub_100005F04(&a2[v10[19]], v101, &qword_1005AE998, &unk_1004D6030);
          v92[0] = v67;

          swift_bridgeObjectRetain_n();

          v115 = 0;

          v90 = v99;
          Handle.init(withID:qualifiedIdentifier:serverID:idsStatus:dsid:expiresByGroupId:trackingTimestamp:hashedDSID:favoriteOrder:reachable:pushIdentifiers:prettyName:contactIdentifier:siblingIdentifiers:)();
          sub_1000049D0(v71, v72);
          v91 = type metadata accessor for Row();
          (*(*(v91 - 8) + 8))(a1, v91);
          v103(v90, 0, 1, v104);
          return sub_1000228E0(v90, &a2[v124]);
        }

        v84 = type metadata accessor for Row();
        v85 = *(*(v84 - 8) + 8);

        v85(a1, v84);
        sub_1000049D0(v71, v72);
      }

      else
      {
        v87 = type metadata accessor for Row();
        v88 = *(*(v87 - 8) + 8);

        v88(a1, v87);
        sub_1000049D0(v71, v72);
      }
    }

    else
    {
      v86 = type metadata accessor for Row();
      (*(*(v86 - 8) + 8))(a1, v86);
      sub_1000049D0(v71, v72);
    }

    v89 = v124;
    sub_100002CE0(&a2[v124], &qword_1005B3360, &unk_1004C6AA0);
    return v103(&a2[v89], 1, 1, v104);
  }

  sub_1000049D0(v71, v72);

  if (qword_1005A84A0 != -1)
  {
    swift_once();
  }

  v73 = type metadata accessor for Logger();
  sub_10000A6F0(v73, qword_1005E0AC8);
  swift_errorRetain();
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v125 = v3;
    v126 = v104;
    *v76 = 136446210;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v77 = String.init<A>(describing:)();
    LODWORD(v103) = v75;
    v79 = sub_10000D01C(v77, v78, &v126);

    *(v76 + 4) = v79;
    _os_log_impl(&_mh_execute_header, v74, v103, "Read FriendRecord error: %{public}s", v76, 0xCu);
    sub_100004984(v104);
  }

  swift_willThrow();
  v80 = type metadata accessor for Row();
  (*(*(v80 - 8) + 8))(a1, v80);

  sub_100002CE0(&a2[v10[6]], &qword_1005AE998, &unk_1004D6030);

  sub_100002CE0(&a2[v10[19]], &qword_1005AE998, &unk_1004D6030);

  return sub_100002CE0(&a2[v124], &qword_1005B3360, &unk_1004C6AA0);
}

uint64_t sub_10000C71C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v4 = sub_10030C45C;
  }

  else
  {
    v4 = sub_10000C830;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10000C830()
{
  v42 = v0;
  v1 = v0[11];
  v2 = v0[6];
  v3 = v0[7];

  dispatch thunk of _AnySequenceBox._makeIterator()();

  dispatch thunk of _AnyIteratorBoxBase.next()();
  v5 = *(v3 + 48);
  v4 = v3 + 48;
  v40 = v5;
  if (v5(v1, 1, v2) != 1)
  {
    goto LABEL_6;
  }

  v6 = &_swiftEmptySetSingleton;
  while (1)
  {

    v7 = v6[2];
    if (!v7)
    {
      break;
    }

    v8 = sub_10022BCF4(v6[2], 0);
    v9 = *(type metadata accessor for Friend() - 8);
    v10 = sub_10023EAA8(&v41, &v8[(*(v9 + 80) + 32) & ~*(v9 + 80)], v7, v6);
    sub_10000E3F8(v41);
    if (v10 == v7)
    {
      goto LABEL_14;
    }

    __break(1u);
LABEL_6:
    v37 = v0[9];
    v39 = v0[6];
    v6 = &_swiftEmptySetSingleton;
    v38 = v4;
    do
    {
      sub_100318718(v0[11], v0[10], type metadata accessor for FriendRecord);
      if (qword_1005A8490 != -1)
      {
        swift_once();
      }

      v19 = v0[9];
      v18 = v0[10];
      v20 = v0[8];
      v21 = type metadata accessor for Logger();
      sub_10000A6F0(v21, qword_1005E0A98);
      sub_100318DB4(v18, v19, type metadata accessor for FriendRecord);
      sub_100318DB4(v18, v20, type metadata accessor for FriendRecord);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();
      v24 = os_log_type_enabled(v22, v23);
      v26 = v0[8];
      v25 = v0[9];
      if (v24)
      {
        v27 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v27 = 141558787;
        *(v27 + 4) = 1752392040;
        *(v27 + 12) = 2081;
        v28 = *v25;
        v29 = *(v37 + 8);

        sub_100318F00(v25, type metadata accessor for FriendRecord);
        v30 = sub_10000D01C(v28, v29, &v41);

        *(v27 + 14) = v30;
        *(v27 + 22) = 2160;
        *(v27 + 24) = 1752392040;
        *(v27 + 32) = 2081;
        v11 = v39;
        type metadata accessor for FriendInfoOption(0);
        sub_10000D108(&unk_1005AEA60, 255, type metadata accessor for FriendInfoOption, &protocol conformance descriptor for FriendInfoOption);
        v31 = Set.description.getter();
        v33 = v32;
        sub_100318F00(v26, type metadata accessor for FriendRecord);
        v34 = sub_10000D01C(v31, v33, &v41);

        *(v27 + 34) = v34;
        _os_log_impl(&_mh_execute_header, v22, v23, "Local storage service record:\nid:%{private,mask.hash}s\ntypes:%{private,mask.hash}s", v27, 0x2Au);
        swift_arrayDestroy();

        v4 = v38;
      }

      else
      {

        sub_100318F00(v26, type metadata accessor for FriendRecord);
        sub_100318F00(v25, type metadata accessor for FriendRecord);
        v11 = v39;
      }

      v13 = v0[10];
      v12 = v0[11];
      v14 = v0[6];
      v15 = *(v13 + *(v11 + 136));
      v16 = swift_task_alloc();
      *(v16 + 16) = v13;
      v17 = sub_10000D338(sub_10000D778, v16, v15);

      v6 = sub_10000E19C(v17, v6);

      sub_100318F00(v13, type metadata accessor for FriendRecord);
      dispatch thunk of _AnyIteratorBoxBase.next()();
    }

    while (v40(v12, 1, v14) != 1);
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_14:
  v0[3] = v8;
  sub_10004B564(&qword_1005B1C48, &qword_1004D5C78);
  CheckedContinuation.resume(returning:)();

  v35 = v0[1];

  return v35();
}

uint64_t sub_10000CDB0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10004B564(&qword_1005AE998, &unk_1004D6030);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 144);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10000CEEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000CF54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000CFBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10000D01C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100006F90(v11, 0, 0, 1, a1, a2);
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
    sub_10000709C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100004984(v11);
  return v7;
}

uint64_t sub_10000D108(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_10000D164(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for HandleType();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for ClientOrigin();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
    return result;
  }

  v16 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_5;
  }

  v17 = sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[12];

  return v18(v19, a2, a2, v17);
}

void *sub_10000D338(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v43 = a1;
  v5 = sub_10004B564(&qword_1005A9188, &unk_1004D80D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v33 - v6;
  v44 = type metadata accessor for Friend();
  v8 = *(v44 - 8);
  v9 = __chkstk_darwin(v44);
  v39 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v38 = &v33 - v11;
  v12 = type metadata accessor for FriendInfoOption(0) - 8;
  __chkstk_darwin(v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a3 + 56;
  v17 = 1 << *(a3 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a3 + 56);
  v20 = (v17 + 63) >> 6;
  v42 = (v8 + 48);
  v37 = v8;
  v40 = (v8 + 32);
  v21 = v13;
  v45 = a3;

  v23 = 0;
  v41 = _swiftEmptyArrayStorage;
  while (1)
  {
    v24 = v23;
    if (!v19)
    {
      break;
    }

LABEL_8:
    sub_10027499C(*(v45 + 48) + *(v21 + 72) * (__clz(__rbit64(v19)) | (v23 << 6)), v15, type metadata accessor for FriendInfoOption);
    v43(v15);
    if (v3)
    {
      sub_100274A04(v15, type metadata accessor for FriendInfoOption);
      v32 = v41;

      return v32;
    }

    v19 &= v19 - 1;
    sub_100274A04(v15, type metadata accessor for FriendInfoOption);
    if ((*v42)(v7, 1, v44) == 1)
    {
      result = sub_100002CE0(v7, &qword_1005A9188, &unk_1004D80D0);
    }

    else
    {
      v36 = v21;
      v25 = *v40;
      (*v40)(v38, v7, v44);
      v35 = v25;
      v25(v39, v38, v44);
      v26 = v41;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1001FCB80(0, v26[2] + 1, 1, v26);
      }

      v28 = v26[2];
      v27 = v26[3];
      v41 = v26;
      v29 = v28 + 1;
      v21 = v36;
      if (v28 >= v27 >> 1)
      {
        v33 = v28;
        v34 = v28 + 1;
        v31 = sub_1001FCB80((v27 > 1), v28 + 1, 1, v41);
        v28 = v33;
        v29 = v34;
        v41 = v31;
      }

      v30 = v41;
      v41[2] = v29;
      result = (v35)(v30 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v28, v39, v44);
    }
  }

  while (1)
  {
    v23 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v23 >= v20)
    {

      return v41;
    }

    v19 = *(v16 + 8 * v23);
    ++v24;
    if (v19)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10000D7A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v57 = type metadata accessor for ClientOrigin();
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v58 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v6 = __chkstk_darwin(v5 - 8);
  v63 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v62 = &v48 - v8;
  v9 = type metadata accessor for HandleType();
  v53 = *(v9 - 8);
  v54 = v9;
  __chkstk_darwin(v9);
  v61 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
  v12 = __chkstk_darwin(v11 - 8);
  v56 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v51 = &v48 - v15;
  v16 = __chkstk_darwin(v14);
  v60 = &v48 - v17;
  __chkstk_darwin(v16);
  v19 = &v48 - v18;
  v20 = type metadata accessor for Handle();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v59 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v64 = &v48 - v24;
  v25 = sub_10004B564(&qword_1005AE988, &qword_1004CF4E8);
  __chkstk_darwin(v25 - 8);
  v27 = &v48 - v26;
  v28 = type metadata accessor for FriendInfoOption(0);
  v29 = *(v28 - 1);
  __chkstk_darwin(v28);
  v31 = &v48 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for FriendRecord(0);
  v32 = *(v2 + *(v52 + 136));
  v66 = a1;
  sub_100023898(sub_100023B20, v32, v27);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    v33 = &qword_1005AE988;
    v34 = &qword_1004CF4E8;
    v35 = v27;
LABEL_5:
    sub_100002CE0(v35, v33, v34);
    v37 = 1;
    v38 = v65;
    goto LABEL_11;
  }

  sub_100023DCC(v27, v31);
  v50 = v2;
  sub_100023E30(a1, v19);
  v36 = *(v21 + 48);
  if (v36(v19, 1, v20) == 1)
  {
    sub_100006E08(v31, type metadata accessor for FriendInfoOption);
    v33 = &qword_1005B3360;
    v34 = &unk_1004C6AA0;
    v35 = v19;
    goto LABEL_5;
  }

  v49 = a1;
  v39 = v21;
  v40 = *(v21 + 32);
  v40(v64, v19, v20);
  v41 = v51;
  sub_100005F04(&v31[v28[12]], v51, &qword_1005B3360, &unk_1004C6AA0);
  if (v36(v41, 1, v20) == 1)
  {
    sub_100005F04(v50 + *(v52 + 144), v60, &qword_1005B3360, &unk_1004C6AA0);
    v42 = v36(v41, 1, v20);
    v43 = v58;
    if (v42 != 1)
    {
      sub_100002CE0(v41, &qword_1005B3360, &unk_1004C6AA0);
    }
  }

  else
  {
    v44 = v60;
    v40(v60, v41, v20);
    (*(v39 + 56))(v44, 0, 1, v20);
    v43 = v58;
  }

  (*(v39 + 16))(v59, v64, v20);
  (*(v53 + 16))(v61, v49, v54);
  sub_100005F04(&v31[v28[8]], v62, &unk_1005AE5B0, &qword_1004C32F0);
  sub_100005F04(&v31[v28[7]], v63, &unk_1005AE5B0, &qword_1004C32F0);
  (*(v55 + 16))(v43, &v31[v28[5]], v57);
  v58 = v20;
  v48 = v39;
  v45 = v60;
  sub_100005F04(v60, v56, &qword_1005B3360, &unk_1004C6AA0);
  v38 = v65;
  Friend.init(handle:type:expiry:createdAt:origin:secureLocationsCapable:shallowOrLiveSecureLocationsCapable:fallbackToLegacyAllowed:fallbackToLegacy:optedNotToShare:ownerHandle:)();
  sub_100002CE0(v45, &qword_1005B3360, &unk_1004C6AA0);
  (*(v48 + 8))(v64, v58);
  sub_100006E08(v31, type metadata accessor for FriendInfoOption);
  v37 = 0;
LABEL_11:
  v46 = type metadata accessor for Friend();
  return (*(*(v46 - 8) + 56))(v38, v37, 1, v46);
}

void *sub_10000DFC0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10004B564(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_10000E19C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Friend();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v18 - v9;
  v19 = a2;
  v11 = *(a1 + 16);
  if (v11)
  {
    v14 = *(v5 + 16);
    v12 = v5 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v8, v15, v4);
      sub_1000247D8(v10, v8);
      (*(v12 - 8))(v10, v4);
      v15 += v16;
      --v11;
    }

    while (v11);
    return v19;
  }

  return a2;
}

void *sub_10000E2FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10004B564(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = j__malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000E400()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_100306354;
  }

  else
  {

    v2 = sub_10000E648;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000E51C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 24);
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v5 = sub_10021C4BC;
  }

  else
  {
    v5 = sub_10000E664;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10000E664()
{
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF18);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 80);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v5 + 16);

    _os_log_impl(&_mh_execute_header, v2, v3, "DataManager load LocalStorage All friends count:%ld", v6, 0xCu);
  }

  else
  {
  }

  v7 = *(v0 + 80);
  v8 = *(v0 + 8);

  return v8(v7);
}

uint64_t sub_10000E7C8(uint64_t a1)
{
  v2 = *(*v1 + 3528);
  *(*v1 + 3832) = a1;

  return _swift_task_switch(sub_10000E924, v2, 0);
}

void *sub_10000E8E0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10023A25C(a1, a2, a3, *v3, &qword_1005B0048, &qword_1004D15A0, &type metadata accessor for Handle);
  *v3 = result;
  return result;
}

uint64_t sub_10000E924()
{
  v1 = v0[479];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[455];
    v4 = v0[452];
    sub_10000E8E0(0, v2, 0);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v17 = *(v4 + 56);
    v18 = v5;
    v7 = (v4 - 8);
    do
    {
      v8 = v0[453];
      v9 = v0[451];
      v18(v8, v6, v9);
      Friend.handle.getter();
      (*v7)(v8, v9);
      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        sub_10000E8E0((v10 > 1), v11 + 1, 1);
      }

      v12 = v0[456];
      v13 = v0[454];
      _swiftEmptyArrayStorage[2] = v11 + 1;
      (*(v3 + 32))(_swiftEmptyArrayStorage + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v11, v12, v13);
      v6 += v17;
      --v2;
    }

    while (v2);
  }

  v0[480] = _swiftEmptyArrayStorage;
  v14 = swift_task_alloc();
  v0[481] = v14;
  *v14 = v0;
  v14[1] = sub_1000072D0;
  v15 = v0[457];

  return sub_10000EB24(v15);
}

uint64_t sub_10000EB24(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = *v1;
  v3 = type metadata accessor for Account.TokenStatus();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_10000EC0C, v1, 0);
}

uint64_t sub_10000EC0C()
{
  if (static SystemInfo.underTest.getter())
  {
    v1 = v0[5];
    (*(v0[9] + 104))(v0[10], enum case for Account.TokenStatus.success(_:), v0[8]);
    Account.init(icloudIdentifier:dsid:authTokenStatus:appToken:appHostName:apsEnvironment:peopleURL:authToken:)();
    v2 = type metadata accessor for Account();
    (*(*(v2 - 8) + 56))(v1, 0, 1, v2);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[6];
    v6 = v0[7];
    v7 = sub_10000EE98(&qword_1005B5608, type metadata accessor for AccountService, &unk_1004DCC70);
    v8 = swift_task_alloc();
    v0[11] = v8;
    *(v8 + 16) = v5;
    *(v8 + 24) = v6;
    v9 = swift_task_alloc();
    v0[12] = v9;
    *v9 = v0;
    v9[1] = sub_100007100;

    return withCheckedContinuation<A>(isolation:function:_:)(v9, v5, v7, 0x6F44734974696E69, 0xEC0000002928656ELL, sub_1000070F8, v8, &type metadata for () + 1);
  }
}

uint64_t sub_10000EE98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000EEE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005AFA48, &unk_1004D1178);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - v6;
  if (*(a2 + OBJC_IVAR____TtC13findmylocated14AccountService_isInitialized))
  {
    if (qword_1005A85C8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000A6F0(v8, qword_1005E0D48);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Init is done. Resume all.", v11, 2u);
    }

    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (qword_1005A85C8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000A6F0(v13, qword_1005E0D48);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Init in progress; appending continuation.", v16, 2u);
    }

    (*(v5 + 16))(v7, a1, v4);
    v17 = OBJC_IVAR____TtC13findmylocated14AccountService_initContinuations;
    v18 = *(a2 + OBJC_IVAR____TtC13findmylocated14AccountService_initContinuations);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + v17) = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = sub_1001FD52C(0, v18[2] + 1, 1, v18);
      *(a2 + v17) = v18;
    }

    v21 = v18[2];
    v20 = v18[3];
    if (v21 >= v20 >> 1)
    {
      v18 = sub_1001FD52C((v20 > 1), v21 + 1, 1, v18);
    }

    v18[2] = v21 + 1;
    result = (*(v5 + 32))(v18 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v21, v7, v4);
    *(a2 + v17) = v18;
  }

  return result;
}

uint64_t sub_10000F1E4()
{
  v1 = *(v0 + 3728);
  v2 = sub_1000093B0(&qword_1005AAB90, type metadata accessor for LocalStorageService, &unk_1004D5A90);
  v3 = swift_task_alloc();
  *(v0 + 3888) = v3;
  v4 = sub_10004B564(&qword_1005AD8F0, &qword_1004CAE58);
  *v3 = v0;
  v3[1] = sub_1000193DC;
  v5 = *(v0 + 3728);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 3520, v1, v2, 0x65636E65466C6C61, 0xEB00000000292873, sub_10000840C, v5, v4);
}

uint64_t sub_10000F314(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10004B564(&qword_1005B1C38, &qword_1004D5B88);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  type metadata accessor for WorkItemQueue.WorkItem();
  (*(v6 + 16))(v8, a1, v5);
  v9 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  (*(v6 + 32))(v10 + v9, v8, v5);

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_10000F508()
{
  v2 = *(sub_10004B564(&qword_1005B1C38, &qword_1004D5B88) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_100019150(v4, v0 + v3);
}

uint64_t sub_10000F5EC()
{
  v1 = *(*(v0 + 1224) + 112);
  *(v0 + 1288) = v1;
  return _swift_task_switch(sub_10000F610, v1, 0);
}

uint64_t sub_10000F610()
{
  sub_10000A0A4();
  *(v0 + 1296) = 0;
  v1 = *(v0 + 1288);

  return _swift_task_switch(sub_100019204, v1, 0);
}

char *sub_10000F708(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000192B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_10000F728(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_10030EBCC;
  }

  else
  {
    *(v4 + 64) = a1;
    v5 = sub_10000F850;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10000F850()
{
  v0[3] = v0[8];
  sub_10004B564(&qword_1005B1C38, &qword_1004D5B88);
  CheckedContinuation.resume(returning:)();
  v1 = v0[1];

  return v1();
}

uint64_t sub_10000F8DC()
{
  v108 = v0;
  v1 = v0[485];
  v2 = _swiftEmptyDictionarySingleton;
  __dst[0] = _swiftEmptyDictionarySingleton;
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v0[487];
    v5 = v0[446];
    v6 = v0[450];
    v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v8 = *(v5 + 72);
    sub_1001C2B80(v1 + v7, v6);
    sub_10021A630(__dst, v6);
    if (v4)
    {
      v9 = v0[450];

      sub_1001769EC(v9);
    }

    sub_1001769EC(v0[450]);
    if (v3 != 1)
    {
      v13 = v8 + v7;
      v14 = 1;
      while (v14 < *(v1 + 16))
      {
        v15 = v0[450];
        sub_1001C2B80(v0[485] + v13, v15);
        sub_10021A630(__dst, v15);
        ++v14;
        sub_1001769EC(v0[450]);
        v13 += v8;
        if (v3 == v14)
        {
          goto LABEL_9;
        }
      }

LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

LABEL_9:
    v11 = 0;
    v12 = __dst[0];
  }

  else
  {
    v11 = v0[487];
    v12 = _swiftEmptyDictionarySingleton;
  }

  v16 = v0[488];
  v106 = _swiftEmptyDictionarySingleton;
  v17 = v16[2];
  if (v17)
  {
    memcpy(v0 + 2, v16 + 4, 0x241uLL);
    memcpy(__dst, v16 + 4, 0x241uLL);
    sub_10005D0C0((v0 + 2), (v0 + 75));
    sub_10021AB34(&v106, __dst);
    if (v11)
    {

      memcpy(v0 + 148, __dst, 0x241uLL);
      sub_10005D11C((v0 + 148));
    }

    memcpy(v0 + 221, __dst, 0x241uLL);
    sub_10005D11C((v0 + 221));
    if (v17 != 1)
    {
      v18 = v12;
      v19 = (v16 + 77);
      v20 = 1;
      while (v20 < v16[2])
      {
        memcpy(v0 + 2, v19, 0x241uLL);
        memcpy(__dst, v19, 0x241uLL);
        sub_10005D0C0((v0 + 2), (v0 + 75));
        sub_10021AB34(&v106, __dst);
        ++v20;
        memcpy(v0 + 221, __dst, 0x241uLL);
        sub_10005D11C((v0 + 221));
        v19 += 584;
        if (v17 == v20)
        {
          v12 = v18;
          goto LABEL_20;
        }
      }

LABEL_74:
      __break(1u);
LABEL_75:
      swift_once();
      goto LABEL_40;
    }

LABEL_20:
    v11 = 0;
    v2 = v106;
  }

  v101 = v16;
  v102 = v17;
  v99 = v12;
  v100 = v11;
  v103 = v1;
  if (v3)
  {
    v21 = v0[446];
    v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v23 = v0[485] + v22;
    v24 = *(v21 + 72);
    v25 = _swiftEmptyArrayStorage;
    do
    {
      sub_1001C2B80(v23, v0[449]);
      if (v2[2] && (sub_1001FD868(v0[449]), (v26 & 1) != 0))
      {
        sub_1001769EC(v0[449]);
      }

      else
      {
        sub_1001C2B80(v0[449], v0[448]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1001FD48C(0, v25[2] + 1, 1, v25);
        }

        v28 = v25[2];
        v27 = v25[3];
        v29 = v25;
        if (v28 >= v27 >> 1)
        {
          v29 = sub_1001FD48C((v27 > 1), v28 + 1, 1, v25);
        }

        v30 = v0[448];
        sub_1001769EC(v0[449]);
        v29[2] = v28 + 1;
        v25 = v29;
        sub_100176988(v30, v29 + v22 + v28 * v24);
      }

      v23 += v24;
      --v3;
    }

    while (v3);

    v1 = v103;
  }

  else
  {

    v25 = _swiftEmptyArrayStorage;
  }

  v31 = v25[2];
  if (!v31)
  {
    goto LABEL_44;
  }

  v32 = v25;
  v33 = v0[446];
  v34 = v0[444];
  sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1004C2310;
  *(v35 + 32) = 30;
  *(v35 + 64) = &type metadata for String;
  *(v35 + 72) = &off_10058C398;
  *(v35 + 40) = 0xD000000000000023;
  *(v35 + 48) = 0x80000001004E57B0;
  *(v35 + 80) = 31;
  *(v35 + 112) = &type metadata for Int;
  *(v35 + 120) = &off_10058C3A8;
  *(v35 + 88) = v31;
  v36 = sub_1000105C0(v35);
  swift_setDeallocating();
  sub_10004B564(&qword_1005A8790, &qword_1004C0EB0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v37 = sub_10004C68C(3u, v36);
  v39 = v38;
  v41 = v40;

  sub_10001157C(v37, v39, v41);

  __dst[0] = _swiftEmptyArrayStorage;
  sub_1002394E8(0, v31, 0);
  v42 = __dst[0];
  v43 = v32 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
  v104 = *(v33 + 72);
  v98 = v31;
  do
  {
    v44 = v0[447];
    v45 = v0[445];
    v46 = v0[443];
    sub_1001C2B80(v43, v44);
    (*(v34 + 16))(v45, v44, v46);
    sub_1001769EC(v44);
    __dst[0] = v42;
    v48 = *(v42 + 16);
    v47 = *(v42 + 24);
    if (v48 >= v47 >> 1)
    {
      sub_1002394E8((v47 > 1), v48 + 1, 1);
      v42 = __dst[0];
    }

    v49 = v0[445];
    v50 = v0[443];
    *(v42 + 16) = v48 + 1;
    (*(v34 + 32))(v42 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v48, v49, v50);
    v43 += v104;
    --v31;
  }

  while (v31);
  if (qword_1005A80B8 != -1)
  {
    goto LABEL_75;
  }

LABEL_40:
  v51 = type metadata accessor for Logger();
  sub_10000A6F0(v51, qword_1005DFF18);

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    __dst[0] = swift_slowAlloc();
    *v54 = 136446722;
    *(v54 + 4) = sub_10000D01C(0xD00000000000001FLL, 0x80000001004E5790, __dst);
    *(v54 + 12) = 2050;
    *(v54 + 14) = v98;
    *(v54 + 22) = 2082;
    v55 = Array.description.getter();
    v57 = v56;

    v58 = sub_10000D01C(v55, v57, __dst);

    *(v54 + 24) = v58;
    _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s no fmsFence for %{public}ld CKFence : %{public}s", v54, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v1 = v103;
LABEL_44:
  if (v102)
  {
    v59 = 0;
    v60 = v0[488] + 32;
    v61 = _swiftEmptyArrayStorage;
    do
    {
      v62 = v101[2];
      v63 = v62 >= v59;
      v64 = v62 - v59;
      if (v63)
      {
        v65 = v64;
      }

      else
      {
        v65 = 0;
      }

      v66 = (v60 + 584 * v59++);
      while (1)
      {
        if (!v65)
        {
          __break(1u);
          goto LABEL_73;
        }

        memcpy(v0 + 294, v66, 0x241uLL);
        v67 = v0[299];
        if (v67)
        {
          if ((v67 & 0x2000000000000000) != 0 ? HIBYTE(v67) & 0xF : v0[298] & 0xFFFFFFFFFFFFLL)
          {
            break;
          }
        }

        --v65;
        ++v59;
        v66 += 584;
        if (v59 - v102 == 1)
        {
          goto LABEL_64;
        }
      }

      sub_10005D0C0((v0 + 294), (v0 + 367));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      __dst[0] = v61;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10000F708(0, v61[2] + 1, 1);
        v61 = __dst[0];
      }

      v71 = v61[2];
      v70 = v61[3];
      if (v71 >= v70 >> 1)
      {
        sub_10000F708((v70 > 1), v71 + 1, 1);
        v61 = __dst[0];
      }

      v61[2] = v71 + 1;
      memcpy(&v61[73 * v71 + 4], v0 + 294, 0x241uLL);
    }

    while (v59 != v102);
  }

  else
  {
    v61 = _swiftEmptyArrayStorage;
  }

LABEL_64:
  v72 = v61[2];
  v73 = *(v1 + 16);

  if (v72 == v73)
  {

    v74 = v99;
  }

  else
  {
    v75 = v0[488];
    v76 = v0[442];
    v77 = v0[441];
    v78 = type metadata accessor for TaskPriority();
    (*(*(v78 - 8) + 56))(v76, 1, 1, v78);
    v79 = sub_1000093B0(&qword_1005AFFB0, type metadata accessor for DataManager, &unk_1004D1470);
    v80 = swift_allocObject();
    v80[2] = v77;
    v80[3] = v79;
    v74 = v99;
    v80[4] = v61;
    v80[5] = v99;
    v80[6] = v77;
    v80[7] = v75;
    swift_retain_n();

    sub_1001D7F30(0, 0, v76, &unk_1004D1DF8, v80);
  }

  v81 = v0[488];
  v82 = v0[480];
  v83 = v0[460];
  v84 = swift_task_alloc();
  v84[2] = v74;
  v84[3] = v83;
  v84[4] = v82;
  v85 = sub_100019510(sub_10021B2E4, v84, v81);

  v86 = v85[2];
  sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
  v87 = swift_allocObject();
  *(v87 + 32) = 34;
  *(v87 + 16) = xmmword_1004C2310;
  *(v87 + 64) = &type metadata for Int;
  *(v87 + 72) = &off_10058C3A8;
  *(v87 + 40) = v86;
  *(v87 + 80) = 33;
  *(v87 + 112) = &type metadata for String;
  *(v87 + 120) = &off_10058C398;
  *(v87 + 88) = 1701736270;
  *(v87 + 96) = 0xE400000000000000;
  v88 = sub_1000105C0(v87);
  swift_setDeallocating();
  sub_10004B564(&qword_1005A8790, &qword_1004C0EB0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v89 = sub_10004C68C(3u, v88);
  v91 = v90;
  v93 = v92;

  sub_10001157C(v89, v91, v93);

  __dst[0] = v85;

  sub_100011E48(__dst);
  if (v100)
  {
  }

  else
  {
    v94 = v0[460];
    v95 = v0[459];
    v96 = v0[458];

    v105 = __dst[0];
    (*(v95 + 8))(v94, v96);

    v97 = v0[1];

    return v97(v105);
  }
}

uint64_t sub_100010568()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

unint64_t sub_1000105C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10004B564(&qword_1005B0078, &qword_1004D1610);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100005F04(v4, v11, &qword_1005A8790, &qword_1004C0EB0);
      v5 = v11[0];
      result = sub_1000106F8(v11[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      result = sub_100010BD4(&v12, v3[7] + 40 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 48;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000106F8(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  sub_100010780(v1);
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_100010BEC(v1, v2);
}

unint64_t sub_100010780(char a1)
{
  result = 0x65636E6546646461;
  switch(a1)
  {
    case 1:
      result = 0x746E6169726176;
      break;
    case 2:
      result = 0x726F7461657263;
      break;
    case 3:
      result = 0x7265776F6C6C6F66;
      break;
    case 4:
    case 22:
      result = 0xD000000000000018;
      break;
    case 5:
    case 23:
      result = 0xD00000000000001ALL;
      break;
    case 6:
    case 7:
    case 18:
    case 26:
      result = 0xD000000000000010;
      break;
    case 8:
    case 37:
      v3 = 9;
      goto LABEL_21;
    case 9:
      result = 0xD00000000000001DLL;
      break;
    case 10:
      result = 0xD000000000000020;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    case 13:
    case 25:
      result = 0xD000000000000015;
      break;
    case 14:
    case 28:
      result = 0xD000000000000011;
      break;
    case 15:
      result = 0xD000000000000012;
      break;
    case 16:
      result = 0x6567676972547369;
      break;
    case 17:
      result = 0xD000000000000012;
      break;
    case 19:
      result = 0x636E65466574756DLL;
      break;
    case 20:
      result = 0x6E6F697469736F70;
      break;
    case 21:
      result = 0x6E61747065636361;
      break;
    case 24:
    case 29:
    case 36:
      result = 0xD000000000000013;
      break;
    case 27:
      result = 0xD000000000000012;
      break;
    case 30:
      result = 0x7573734961746164;
      break;
    case 31:
      v3 = 13;
LABEL_21:
      result = v3 | 0xD000000000000012;
      break;
    case 32:
      result = 0xD000000000000027;
      break;
    case 33:
      result = 0xD000000000000022;
      break;
    case 34:
      result = 0x756F4365636E6566;
      break;
    case 35:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100010BD4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_100010BEC(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = sub_100010780(*(*(v2 + 48) + v4));
      v9 = v8;
      if (v7 == sub_100010780(a1) && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
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

uint64_t sub_100010CF4(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x4B43747065636361;
    v7 = 0x65636E6546646461;
    v8 = 0x616E614D61746164;
    if (a1 != 3)
    {
      v8 = 0x65466574656C6564;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x6546747065636361;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x766E496572616873;
    v2 = 0x4672656767697274;
    if (a1 != 9)
    {
      v2 = 0x6546657461647075;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x636E65466574756DLL;
    v4 = 0xD000000000000013;
    if (a1 != 6)
    {
      v4 = 0x54534449646E6573;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

unint64_t sub_100010EA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10004B564(&qword_1005B0068, &qword_1004D1600);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100005F04(v4, &v13, &qword_1005B0070, &qword_1004D1608);
      v5 = v13;
      v6 = v14;
      result = sub_100011104(v13, v14, &String.hash(into:), sub_10001145C);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100010BD4(&v15, v3[7] + 40 * result);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100011004(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100011068(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005A8798, &qword_1004C0EB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100011104(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, Swift::Int))
{
  Hasher.init(_seed:)();
  a3(v10, a1, a2);
  v7 = Hasher._finalize()();

  return a4(a1, a2, v7);
}

Swift::Int sub_100011198(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10004B564(&qword_1005B0068, &qword_1004D1600);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_100010BD4(v24, v34);
      }

      else
      {
        sub_100011004(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_100010BD4(v34, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

unint64_t sub_10001145C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_100011514(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005A8798, &qword_1004C0EB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001157C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22[3] = &type metadata for FencesReliabilityMetric;
  v22[4] = &off_10058C238;
  v22[0] = a1;
  v22[1] = a2;
  v22[2] = a3;

  if ((static SystemInfo.underTest.getter() & 1) == 0)
  {
    v3 = String._bridgeToObjectiveC()();
    sub_100011004(v22, v21);
    v4 = swift_allocObject();
    sub_100010BD4(v21, v4 + 16);
    v19 = sub_100011AE4;
    v20 = v4;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 1107296256;
    v17[2] = sub_1000119E4;
    v18 = &unk_100597D00;
    v5 = _Block_copy(v17);

    v6 = AnalyticsSendEventLazy();
    _Block_release(v5);

    if (!v6)
    {
      if (qword_1005A7E80 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_10000A6F0(v7, qword_1005DFA50);
      sub_100011004(v22, v17);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        *&v21[0] = v11;
        *v10 = 136446210;
        v12 = sub_100011AEC(v17, v18);
        v13 = *v12;
        v14 = v12[1];

        sub_100004984(v17);
        v15 = sub_10000D01C(v13, v14, v21);

        *(v10 + 4) = v15;
        _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s is not enabled in the current config", v10, 0xCu);
        sub_100004984(v11);
      }

      else
      {

        sub_100004984(v17);
      }
    }
  }

  return sub_100004984(v22);
}

uint64_t sub_100011808()
{
  sub_100004984((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100011854(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100011864(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100011874(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100011884(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100011894(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000118A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000118B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000118C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000118D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000118E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000118F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100011904(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100011934(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100011944(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100011954(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100011964(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100011974(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100011994(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000119A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000119B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000119D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Class sub_1000119E4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_100011D18();
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

void *sub_100011A70(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  sub_100011AEC(a1, v1);
  v3 = (*(v2 + 16))(v1, v2);
  v4 = sub_100011B38(v3);

  return v4;
}

void *sub_100011AEC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void *sub_100011B38(uint64_t a1)
{
  sub_10004B564(&qword_1005A8A40, &qword_1004C18E0);
  result = static _DictionaryStorage.copy(original:)();
  v3 = 0;
  v27 = result;
  v28 = a1;
  v6 = *(a1 + 64);
  v5 = a1 + 64;
  v4 = v6;
  v7 = 1 << *(v5 - 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4;
  v10 = (v7 + 63) >> 6;
  v26 = result + 8;
  if (v9)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v29 = (v9 - 1) & v9;
LABEL_10:
      v14 = v11 | (v3 << 6);
      v15 = *(v28 + 56);
      v16 = (*(v28 + 48) + 16 * v14);
      v17 = v16[1];
      v33 = *v16;
      sub_100011004(v15 + 40 * v14, v30);
      v18 = v31;
      v19 = v32;
      sub_100011AEC(v30, v31);
      v20 = *(v19 + 8);

      v21 = v20(v18, v19);
      sub_100004984(v30);
      result = v27;
      *(v26 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v22 = (v27[6] + 16 * v14);
      *v22 = v33;
      v22[1] = v17;
      *(v27[7] + 8 * v14) = v21;
      v23 = v27[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      v27[2] = v25;
      v9 = v29;
      if (!v29)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v12 = v3;
    while (1)
    {
      v3 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v3 >= v10)
      {
        return result;
      }

      v13 = *(v5 + 8 * v3);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v29 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_100011D18()
{
  result = qword_1005B3440;
  if (!qword_1005B3440)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005B3440);
  }

  return result;
}

Swift::Int sub_100011E48(uint64_t *a1)
{
  v2 = *(type metadata accessor for Fence() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100011EF0(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_100011F3C(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_100011F3C(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for Fence();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for Fence() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100219354(v8, v9, a1, v4);
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
    return sub_100218FB4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100012068(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  *(v3 + 72) = a1;

  v5 = swift_task_alloc();
  *(v3 + 80) = v5;
  *v5 = v4;
  v5[1] = sub_100013518;

  return sub_1000121BC(a1);
}

uint64_t sub_1000121BC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for XPCAlarm.Criteria.Options();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  type metadata accessor for XPCAlarm.Criteria();
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for XPCAlarm();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = type metadata accessor for Fence.ID();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v6 = type metadata accessor for Fence.Schedule.Matcher();
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();
  v7 = type metadata accessor for Fence.Variant();
  v2[18] = v7;
  v2[19] = *(v7 - 8);
  v2[20] = swift_task_alloc();
  v8 = type metadata accessor for Fence.Schedule();
  v2[21] = v8;
  v2[22] = *(v8 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v9 = type metadata accessor for Fence();
  v2[25] = v9;
  v2[26] = *(v9 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v10 = type metadata accessor for Date();
  v2[29] = v10;
  v2[30] = *(v10 - 8);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();

  return _swift_task_switch(sub_1000125E8, v1, 0);
}

uint64_t sub_1000125E8()
{
  v147 = v0;
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Updating scheduler timer", v4, 2u);
  }

  v5 = v0[41];
  v6 = v0[29];
  v7 = v0[30];
  v8 = v0[3];

  v111 = *(v7 + 56);
  v111(v5, 1, 1, v6);
  static Date.now.getter();
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v0[26];
    v11 = v0[19];
    v13 = *(v10 + 16);
    v10 += 16;
    v12 = v13;
    v14 = v0[3] + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v15 = (v11 + 88);
    v142 = (v10 - 8);
    v124 = (v11 + 96);
    v125 = (v11 + 8);
    v16 = v0[22];
    v123 = (v16 + 32);
    v17 = v0[30];
    v122 = (v16 + 16);
    v144 = (v17 + 8);
    v114 = (v17 + 48);
    v112 = (v17 + 32);
    v18 = *(v10 + 56);
    v140 = enum case for Fence.Variant.scheduled(_:);
    v119 = (v16 + 8);
    v120 = (v0[16] + 8);
    v118 = (v17 + 16);
    v113 = (v0[13] + 8);
    v126 = v15;
    v127 = v13;
    v121 = v18;
    while (1)
    {
      v21 = v0[20];
      v22 = v0[18];
      v12(v0[28], v14, v0[25]);
      Fence.variant.getter();
      if ((*v15)(v21, v22) == v140)
      {
        break;
      }

      v19 = v0[20];
      v20 = v0[18];
      (*v142)(v0[28], v0[25]);
      (*v125)(v19, v20);
LABEL_8:
      v14 += v18;
      if (!--v9)
      {
        goto LABEL_25;
      }
    }

    v138 = v14;
    v139 = v9;
    v23 = v0[35];
    v24 = v0[29];
    v26 = v0[23];
    v25 = v0[24];
    v28 = v0[20];
    v27 = v0[21];
    (*v124)(v28, v0[18]);
    (*v123)(v25, v28, v27);
    (*v122)(v26, v25, v27);
    Fence.Schedule.Matcher.init(schedule:)();
    Fence.Schedule.Matcher.nextStartOrEndDate(from:)();
    static Date.distantFuture.getter();
    sub_1002AB19C(&qword_1005AE5D0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v29 = dispatch thunk of static Equatable.== infix(_:_:)();
    v30 = *v144;
    (*v144)(v23, v24);
    if (v29 & 1) != 0 || (sub_1002AB19C(&qword_1005B0BF0, &type metadata accessor for Date, &protocol conformance descriptor for Date), (dispatch thunk of static Comparable.< infix(_:_:)()))
    {
      v31 = v0[28];
      v32 = v0[27];
      v33 = v0[25];
      (*v118)(v0[33], v0[36], v0[29]);
      v12 = v127;
      v127(v32, v31, v33);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();
      v36 = os_log_type_enabled(v34, v35);
      v37 = v0[33];
      v38 = v0[28];
      v39 = v0[29];
      v40 = v0[27];
      v134 = v0[24];
      v136 = v0[25];
      v130 = v0[36];
      v132 = v0[21];
      v128 = v0[15];
      v129 = v0[17];
      if (v36)
      {
        v41 = v0[14];
        v115 = v0[12];
        v42 = swift_slowAlloc();
        v146[0] = swift_slowAlloc();
        *v42 = 136446466;
        v116 = v35;
        v43 = Date.localISO8601.getter();
        v117 = v38;
        v45 = v44;
        v30(v37, v39);
        v46 = sub_10000D01C(v43, v45, v146);

        *(v42 + 4) = v46;
        *(v42 + 12) = 2082;
        Fence.id.getter();
        sub_1002AB19C(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
        v47 = dispatch thunk of CustomStringConvertible.description.getter();
        v49 = v48;
        (*v113)(v41, v115);
        v50 = *v142;
        (*v142)(v40, v136);
        v51 = sub_10000D01C(v47, v49, v146);

        *(v42 + 14) = v51;
        _os_log_impl(&_mh_execute_header, v34, v116, "    Invalid next scheduled date: %{public}s.     FenceID: %{public}s", v42, 0x16u);
        swift_arrayDestroy();
        v12 = v127;

        v30(v130, v39);
        (*v120)(v129, v128);
        (*v119)(v134, v132);
        v50(v117, v136);
      }

      else
      {

        v52 = *v142;
        (*v142)(v40, v136);
        v30(v37, v39);
        v30(v130, v39);
        (*v120)(v129, v128);
        (*v119)(v134, v132);
        v52(v38, v136);
      }

      v14 = v138;
      v9 = v139;
      v15 = v126;
      v18 = v121;
      goto LABEL_8;
    }

    v137 = v30;
    v53 = v0[40];
    v54 = v0[29];
    sub_100005F04(v0[41], v53, &unk_1005AE5B0, &qword_1004C32F0);
    v55 = *v114;
    v56 = (*v114)(v53, 1, v54);
    v57 = v0[40];
    if (v56 == 1)
    {
      v58 = v0[28];
      v60 = v0[24];
      v59 = v0[25];
      v61 = v0[21];
      (*v120)(v0[17], v0[15]);
      (*v119)(v60, v61);
      (*v142)(v58, v59);
      sub_100002CE0(v57, &unk_1005AE5B0, &qword_1004C32F0);
      v14 = v138;
      v15 = v126;
      v18 = v121;
    }

    else
    {
      v62 = v0[34];
      v63 = v0[29];
      v64 = v0[24];
      v133 = v0[25];
      v135 = v0[28];
      v65 = v0[21];
      v66 = v0[17];
      v67 = v0[15];
      v131 = *v112;
      (*v112)(v62, v57, v63);
      v68 = static Date.< infix(_:_:)();
      v137(v62, v63);
      (*v120)(v66, v67);
      (*v119)(v64, v65);
      (*v142)(v135, v133);
      v14 = v138;
      v15 = v126;
      v18 = v121;
      if (v68)
      {
        v69 = v0[41];
        v70 = v0[36];
        v71 = v0[29];
        sub_100002CE0(v69, &unk_1005AE5B0, &qword_1004C32F0);
        v131(v69, v70, v71);
        v72 = v69;
        v73 = v71;
        goto LABEL_22;
      }
    }

    v74 = v0[39];
    v75 = v0[29];
    sub_100005F04(v0[41], v74, &unk_1005AE5B0, &qword_1004C32F0);
    if (v55(v74, 1, v75) != 1)
    {
      v80 = v0[39];
      v137(v0[36], v0[29]);
      sub_100002CE0(v80, &unk_1005AE5B0, &qword_1004C32F0);
      goto LABEL_24;
    }

    v76 = v0[41];
    v77 = v0[39];
    v78 = v0[36];
    v79 = v0[29];
    sub_100002CE0(v76, &unk_1005AE5B0, &qword_1004C32F0);
    sub_100002CE0(v77, &unk_1005AE5B0, &qword_1004C32F0);
    (*v112)(v76, v78, v79);
    v72 = v76;
    v73 = v79;
LABEL_22:
    v111(v72, 0, 1, v73);
LABEL_24:
    v9 = v139;
    v12 = v127;
    goto LABEL_8;
  }

LABEL_25:
  v81 = v0[38];
  v82 = v0[29];
  v83 = v0[30];
  sub_100005F04(v0[41], v81, &unk_1005AE5B0, &qword_1004C32F0);
  if ((*(v83 + 48))(v81, 1, v82) == 1)
  {
    v84 = v0[41];
    v85 = v0[38];
    (*(v0[30] + 8))(v0[37], v0[29]);
    sub_100002CE0(v84, &unk_1005AE5B0, &qword_1004C32F0);
    sub_100002CE0(v85, &unk_1005AE5B0, &qword_1004C32F0);

    v86 = v0[1];

    return v86();
  }

  else
  {
    v88 = v0[31];
    v89 = v0[32];
    v90 = v0[29];
    v91 = v0[30];
    (*(v91 + 32))(v89, v0[38], v90);
    v92 = *(v91 + 16);
    v92(v88, v89, v90);
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.default.getter();
    v95 = os_log_type_enabled(v93, v94);
    v97 = v0[30];
    v96 = v0[31];
    v98 = v0[29];
    if (v95)
    {
      v99 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      v146[0] = v143;
      *v99 = 136446210;
      v141 = Date.localISO8601.getter();
      v145 = v92;
      v101 = v100;
      v104 = *(v97 + 8);
      v103 = v97 + 8;
      v102 = v104;
      v104(v96, v98);
      v105 = sub_10000D01C(v141, v101, v146);
      v92 = v145;

      *(v99 + 4) = v105;
      _os_log_impl(&_mh_execute_header, v93, v94, "Updating scheduler timer with nextTriggerDate: %{public}s", v99, 0xCu);
      sub_100004984(v143);
    }

    else
    {

      v106 = *(v97 + 8);
      v103 = v97 + 8;
      v102 = v106;
      v106(v96, v98);
    }

    v0[42] = v103;
    v0[43] = v102;
    v92(v0[35], v0[32], v0[29]);
    sub_10004B564(&qword_1005B0BD0, &qword_1004D28B0);
    v107 = swift_allocObject();
    *(v107 + 16) = xmmword_1004C1900;
    static XPCAlarm.Criteria.Options.userVisible.getter();
    v0[2] = v107;
    sub_1002AB19C(&qword_1005B0BD8, &type metadata accessor for XPCAlarm.Criteria.Options, &protocol conformance descriptor for XPCAlarm.Criteria.Options);
    sub_10004B564(&qword_1005B0BE0, &qword_1004D28B8);
    sub_10001DF0C(&qword_1005B0BE8, &qword_1005B0BE0, &qword_1004D28B8, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    XPCAlarm.Criteria.init(date:options:)();
    v108 = swift_task_alloc();
    v0[44] = v108;
    *v108 = v0;
    v108[1] = sub_100294678;
    v109 = v0[11];
    v110 = v0[8];

    return XPCAlarm.init(identifier:criteria:)(v109, 0xD000000000000031, 0x80000001004DE440, v110);
  }
}

uint64_t sub_100013518()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 88) = v3;
  *v3 = v2;
  v3[1] = sub_100015198;
  v4 = *(v1 + 72);

  return sub_100013670(v4);
}

uint64_t sub_100013670(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for XPCAlarm.Criteria.Options();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  type metadata accessor for XPCAlarm.Criteria();
  v2[11] = swift_task_alloc();
  v4 = type metadata accessor for XPCAlarm();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = type metadata accessor for Fence.ID();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v6 = type metadata accessor for Calendar.SearchDirection();
  v2[18] = v6;
  v2[19] = *(v6 - 8);
  v2[20] = swift_task_alloc();
  v7 = type metadata accessor for Fence.Schedule.Matcher();
  v2[21] = v7;
  v2[22] = *(v7 - 8);
  v2[23] = swift_task_alloc();
  v8 = type metadata accessor for Fence.Variant();
  v2[24] = v8;
  v2[25] = *(v8 - 8);
  v2[26] = swift_task_alloc();
  v9 = type metadata accessor for Fence.Schedule();
  v2[27] = v9;
  v2[28] = *(v9 - 8);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v10 = type metadata accessor for Fence.Participant();
  v2[31] = v10;
  v2[32] = *(v10 - 8);
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v11 = type metadata accessor for Fence.AcceptanceStatus();
  v2[35] = v11;
  v2[36] = *(v11 - 8);
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v12 = type metadata accessor for Fence();
  v2[39] = v12;
  v2[40] = *(v12 - 8);
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v13 = type metadata accessor for Date();
  v2[44] = v13;
  v2[45] = *(v13 - 8);
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  sub_10004B564(&qword_1005B09D0, &unk_1004D2380);
  v2[54] = swift_task_alloc();
  sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();

  return _swift_task_switch(sub_100013C18, v1, 0);
}

uint64_t sub_100013C18()
{
  v210 = v0;
  v1 = *(v0 + 464);
  v2 = *(v0 + 432);
  v3 = *(v0 + 352);
  v4 = *(v0 + 360);
  v5 = *(v0 + 312);
  v6 = *(v0 + 320);
  v7 = *(v0 + 48);
  v8 = *(v4 + 56);
  *(v0 + 472) = v8;
  *(v0 + 480) = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v8(v1, 1, 1, v3);
  v9 = *(v6 + 56);
  *(v0 + 488) = v9;
  *(v0 + 496) = (v6 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v9(v2, 1, 1, v5);
  static Date.now.getter();
  v10 = *(v7 + 16);
  *(v0 + 504) = v10;
  if (!v10)
  {
LABEL_20:
    v76 = *(v0 + 440);
    v77 = *(v0 + 352);
    v78 = *(v0 + 360);
    sub_100005F04(*(v0 + 464), v76, &unk_1005AE5B0, &qword_1004C32F0);
    if ((*(v78 + 48))(v76, 1, v77) == 1)
    {
      sub_100002CE0(*(v0 + 440), &unk_1005AE5B0, &qword_1004C32F0);
      if (qword_1005A80E8 != -1)
      {
        swift_once();
      }

      v79 = type metadata accessor for Logger();
      sub_10000A6F0(v79, qword_1005DFF88);
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.debug.getter();
      v82 = os_log_type_enabled(v80, v81);
      v83 = *(v0 + 464);
      v85 = *(v0 + 424);
      v84 = *(v0 + 432);
      v86 = *(v0 + 352);
      v87 = *(v0 + 360);
      if (v82)
      {
        v88 = swift_slowAlloc();
        *v88 = 0;
        _os_log_impl(&_mh_execute_header, v80, v81, "No fence to set invite timer for", v88, 2u);
      }

      (*(v87 + 8))(v85, v86);
      sub_100002CE0(v83, &unk_1005AE5B0, &qword_1004C32F0);
      v89 = v84;
    }

    else
    {
      v92 = *(v0 + 408);
      v93 = *(v0 + 352);
      v94 = *(v0 + 360);
      (*(v94 + 32))(*(v0 + 384), *(v0 + 440), v93);
      static Date.distantFuture.getter();
      sub_1002AB19C(&qword_1005AE5D0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v95 = dispatch thunk of static Equatable.== infix(_:_:)();
      v96 = *(v94 + 8);
      *(v0 + 568) = v96;
      *(v0 + 576) = (v94 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v96(v92, v93);
      if ((v95 & 1) == 0)
      {
        if (qword_1005A80E8 != -1)
        {
          swift_once();
        }

        v116 = *(v0 + 376);
        v117 = *(v0 + 384);
        v118 = *(v0 + 352);
        v119 = *(v0 + 360);
        v120 = type metadata accessor for Logger();
        sub_10000A6F0(v120, qword_1005DFF88);
        v121 = *(v119 + 16);
        v121(v116, v117, v118);
        v122 = Logger.logObject.getter();
        v123 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v122, v123))
        {
          v204 = v121;
          v207 = v96;
          v124 = *(v0 + 432);
          v125 = *(v0 + 312);
          v126 = *(v0 + 320);
          v127 = swift_slowAlloc();
          v209 = swift_slowAlloc();
          *v127 = 136446466;
          swift_beginAccess();
          if ((*(v126 + 48))(v124, 1, v125))
          {
            v128 = 0xE300000000000000;
            v129 = 7104878;
          }

          else
          {
            v162 = *(v0 + 320);
            v161 = *(v0 + 328);
            v163 = *(v0 + 128);
            v164 = *(v0 + 136);
            v191 = *(v0 + 312);
            v196 = *(v0 + 120);
            (*(v162 + 16))(v161, *(v0 + 432));
            Fence.id.getter();
            (*(v162 + 8))(v161, v191);
            v165 = Fence.ID.uuidString.getter();
            v128 = v166;
            (*(v163 + 8))(v164, v196);
            v129 = v165;
          }

          v167 = *(v0 + 376);
          v168 = *(v0 + 352);
          v169 = sub_10000D01C(v129, v128, &v209);

          *(v127 + 4) = v169;
          *(v127 + 12) = 2082;
          v170 = Date.localISO8601.getter();
          v172 = v171;
          v207(v167, v168);
          v173 = sub_10000D01C(v170, v172, &v209);

          *(v127 + 14) = v173;
          _os_log_impl(&_mh_execute_header, v122, v123, "Setting invite timer for fence %{public}s at %{public}s", v127, 0x16u);
          swift_arrayDestroy();

          v121 = v204;
        }

        else
        {
          v130 = *(v0 + 376);
          v131 = *(v0 + 352);

          v96(v130, v131);
        }

        v121(*(v0 + 408), *(v0 + 384), *(v0 + 352));
        sub_10004B564(&qword_1005B0BD0, &qword_1004D28B0);
        v174 = swift_allocObject();
        *(v174 + 16) = xmmword_1004C1900;
        static XPCAlarm.Criteria.Options.userVisible.getter();
        *(v0 + 40) = v174;
        sub_1002AB19C(&qword_1005B0BD8, &type metadata accessor for XPCAlarm.Criteria.Options, &protocol conformance descriptor for XPCAlarm.Criteria.Options);
        sub_10004B564(&qword_1005B0BE0, &qword_1004D28B8);
        sub_10001DF0C(&qword_1005B0BE8, &qword_1005B0BE0, &qword_1004D28B8, &protocol conformance descriptor for [A]);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        XPCAlarm.Criteria.init(date:options:)();
        v175 = swift_task_alloc();
        *(v0 + 584) = v175;
        *v175 = v0;
        v175[1] = sub_100295F68;
        v176 = *(v0 + 112);
        v177 = *(v0 + 88);

        return XPCAlarm.init(identifier:criteria:)(v176, 0xD00000000000002FLL, 0x80000001004DE480, v177);
      }

      if (qword_1005A80E8 != -1)
      {
        swift_once();
      }

      v97 = *(v0 + 384);
      v99 = *(v0 + 360);
      v98 = *(v0 + 368);
      v100 = *(v0 + 352);
      v101 = type metadata accessor for Logger();
      sub_10000A6F0(v101, qword_1005DFF88);
      (*(v99 + 16))(v98, v97, v100);
      v102 = Logger.logObject.getter();
      v103 = static os_log_type_t.error.getter();
      v104 = os_log_type_enabled(v102, v103);
      v105 = *(v0 + 464);
      v107 = *(v0 + 424);
      v106 = *(v0 + 432);
      v206 = *(v0 + 384);
      v108 = *(v0 + 368);
      v109 = *(v0 + 352);
      if (v104)
      {
        v189 = v103;
        v110 = swift_slowAlloc();
        v203 = v106;
        v111 = swift_slowAlloc();
        v209 = v111;
        *v110 = 136315138;
        v194 = v107;
        v200 = v105;
        v112 = Date.localISO8601.getter();
        v114 = v113;
        v96(v108, v109);
        v115 = sub_10000D01C(v112, v114, &v209);

        *(v110 + 4) = v115;
        _os_log_impl(&_mh_execute_header, v102, v189, "Invalid invite timer date: %s", v110, 0xCu);
        sub_100004984(v111);

        v96(v206, v109);
        v96(v194, v109);
        sub_100002CE0(v200, &unk_1005AE5B0, &qword_1004C32F0);
        v89 = v203;
      }

      else
      {

        v96(v108, v109);
        v96(v206, v109);
        v96(v107, v109);
        sub_100002CE0(v105, &unk_1005AE5B0, &qword_1004C32F0);
        v89 = v106;
      }
    }

    sub_100002CE0(v89, &qword_1005B09D0, &unk_1004D2380);

    v90 = *(v0 + 8);

    return v90();
  }

  v11 = 0;
  v12 = *(v0 + 320);
  *(v0 + 592) = *(v12 + 80);
  *(v0 + 596) = enum case for Fence.AcceptanceStatus.pendingHidden(_:);
  *(v0 + 600) = enum case for Fence.Participant.me(_:);
  *(v0 + 604) = enum case for Fence.Variant.oneTime(_:);
  *(v0 + 608) = enum case for Fence.Variant.recurring(_:);
  *(v0 + 612) = enum case for Fence.Variant.scheduled(_:);
  *(v0 + 616) = enum case for Calendar.SearchDirection.forward(_:);
  *(v0 + 512) = *(v12 + 72);
  *(v0 + 520) = *(v12 + 16);
  while (1)
  {
    *(v0 + 528) = v11;
    v13 = *(v0 + 596);
    v15 = *(v0 + 296);
    v14 = *(v0 + 304);
    v16 = *(v0 + 280);
    v17 = *(v0 + 288);
    (*(v0 + 520))(*(v0 + 344), *(v0 + 48) + ((*(v0 + 592) + 32) & ~*(v0 + 592)) + *(v0 + 512) * v11, *(v0 + 312));
    Fence.acceptanceStatus.getter();
    (*(v17 + 104))(v15, v13, v16);
    v18 = static Fence.AcceptanceStatus.== infix(_:_:)();
    v19 = *(v17 + 8);
    v19(v15, v16);
    v19(v14, v16);
    if (v18)
    {
      v20 = *(v0 + 600);
      v22 = *(v0 + 264);
      v21 = *(v0 + 272);
      v23 = *(v0 + 248);
      v24 = *(v0 + 256);
      Fence.findee.getter();
      (*(v24 + 104))(v22, v20, v23);
      v25 = static Fence.Participant.== infix(_:_:)();
      v26 = *(v24 + 8);
      v26(v22, v23);
      v26(v21, v23);
      if (v25)
      {
        break;
      }
    }

    (*(*(v0 + 320) + 8))(*(v0 + 344), *(v0 + 312));
LABEL_4:
    v11 = *(v0 + 528) + 1;
    if (v11 == *(v0 + 504))
    {
      goto LABEL_20;
    }
  }

  v27 = *(v0 + 608);
  v28 = *(v0 + 604);
  v30 = *(v0 + 200);
  v29 = *(v0 + 208);
  v31 = *(v0 + 192);
  Fence.variant.getter();
  v32 = (*(v30 + 88))(v29, v31);
  if (v32 == v28 || v32 == v27)
  {
    v48 = *(v0 + 200);
    v47 = *(v0 + 208);
    v49 = *(v0 + 192);
    (*(*(v0 + 320) + 8))(*(v0 + 344), *(v0 + 312));
    (*(v48 + 8))(v47, v49);
    goto LABEL_4;
  }

  if (v32 != *(v0 + 612))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v185 = *(v0 + 616);
  v183 = *(v0 + 408);
  v33 = *(v0 + 360);
  v197 = *(v0 + 352);
  v35 = *(v0 + 232);
  v34 = *(v0 + 240);
  v36 = *(v0 + 216);
  v37 = *(v0 + 224);
  v38 = *(v0 + 208);
  v181 = *(v0 + 184);
  v188 = *(v0 + 176);
  v192 = *(v0 + 168);
  v39 = *(v0 + 152);
  v40 = *(v0 + 160);
  v182 = *(v0 + 144);
  (*(*(v0 + 200) + 96))(v38, *(v0 + 192));
  v186 = v34;
  (*(v37 + 32))(v34, v38, v36);
  (*(v37 + 16))(v35, v34, v36);
  Fence.Schedule.Matcher.init(schedule:)();
  v41 = v183;
  Fence.updatedAt.getter();
  (*(v39 + 104))(v40, v185, v182);
  Fence.Schedule.Matcher.nextStartDate(from:direction:)();
  (*(v39 + 8))(v40, v182);
  v42 = *(v33 + 8);
  *(v0 + 536) = v42;
  *(v0 + 544) = (v33 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v184 = v42;
  v42(v41, v197);
  (*(v188 + 8))(v181, v192);
  (*(v37 + 8))(v186, v36);
  sub_1002AB19C(&qword_1005B0BF0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
  {
    v43 = *(v0 + 456);
    v44 = *(v0 + 352);
    v45 = *(v0 + 360);
    sub_100005F04(*(v0 + 464), v43, &unk_1005AE5B0, &qword_1004C32F0);
    v46 = *(v45 + 48);
    if (v46(v43, 1, v44) == 1)
    {
      sub_100002CE0(*(v0 + 456), &unk_1005AE5B0, &qword_1004C32F0);
      goto LABEL_16;
    }

    v50 = *(v0 + 400);
    v51 = *(v0 + 352);
    v52 = *(*(v0 + 360) + 32);
    v52(v50, *(v0 + 456), v51);
    v53 = static Date.< infix(_:_:)();
    v184(v50, v51);
    if (v53)
    {
      v202 = *(v0 + 488);
      v187 = *(v0 + 472);
      v54 = *(v0 + 464);
      v55 = *(v0 + 432);
      v56 = *(v0 + 416);
      v57 = *(v0 + 352);
      v58 = *(v0 + 320);
      v193 = *(v0 + 312);
      v198 = *(v0 + 344);
      sub_100002CE0(v54, &unk_1005AE5B0, &qword_1004C32F0);
      v52(v54, v56, v57);
      v187(v54, 0, 1, v57);
      sub_100002CE0(v55, &qword_1005B09D0, &unk_1004D2380);
      (*(v58 + 32))(v55, v198, v193);
      v59 = v55;
      v60 = v193;
    }

    else
    {
LABEL_16:
      v61 = *(v0 + 448);
      v62 = *(v0 + 352);
      sub_100005F04(*(v0 + 464), v61, &unk_1005AE5B0, &qword_1004C32F0);
      if (v46(v61, 1, v62) != 1)
      {
        v72 = *(v0 + 448);
        v73 = *(v0 + 344);
        v74 = *(v0 + 312);
        v75 = *(v0 + 320);
        v184(*(v0 + 416), *(v0 + 352));
        (*(v75 + 8))(v73, v74);
        sub_100002CE0(v72, &unk_1005AE5B0, &qword_1004C32F0);
        goto LABEL_4;
      }

      v202 = *(v0 + 488);
      v63 = *(v0 + 472);
      v64 = *(v0 + 464);
      v65 = *(v0 + 448);
      v66 = *(v0 + 432);
      v67 = *(v0 + 416);
      v68 = *(v0 + 352);
      v69 = *(v0 + 360);
      v199 = *(v0 + 344);
      v70 = *(v0 + 312);
      v71 = *(v0 + 320);
      sub_100002CE0(v64, &unk_1005AE5B0, &qword_1004C32F0);
      sub_100002CE0(v65, &unk_1005AE5B0, &qword_1004C32F0);
      (*(v69 + 32))(v64, v67, v68);
      v63(v64, 0, 1, v68);
      sub_100002CE0(v66, &qword_1005B09D0, &unk_1004D2380);
      (*(v71 + 32))(v66, v199, v70);
      v59 = v66;
      v60 = v70;
    }

    v202(v59, 0, 1, v60);
    goto LABEL_4;
  }

  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v132 = *(v0 + 520);
  v133 = *(v0 + 416);
  v208 = *(v0 + 392);
  v135 = *(v0 + 352);
  v134 = *(v0 + 360);
  v137 = *(v0 + 336);
  v136 = *(v0 + 344);
  v138 = *(v0 + 312);
  v139 = type metadata accessor for Logger();
  sub_10000A6F0(v139, qword_1005DFF88);
  v132(v137, v136, v138);
  (*(v134 + 16))(v208, v133, v135);
  v140 = Logger.logObject.getter();
  v141 = static os_log_type_t.default.getter();
  v142 = os_log_type_enabled(v140, v141);
  v143 = *(v0 + 392);
  v144 = *(v0 + 352);
  v145 = *(v0 + 336);
  v147 = *(v0 + 312);
  v146 = *(v0 + 320);
  if (v142)
  {
    v201 = *(v0 + 352);
    v190 = *(v0 + 312);
    v149 = *(v0 + 128);
    v148 = *(v0 + 136);
    v150 = *(v0 + 120);
    v205 = v140;
    v151 = swift_slowAlloc();
    v209 = swift_slowAlloc();
    *v151 = 136446466;
    v195 = v141;
    Fence.id.getter();
    sub_1002AB19C(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
    v152 = dispatch thunk of CustomStringConvertible.description.getter();
    v154 = v153;
    (*(v149 + 8))(v148, v150);
    v155 = *(v146 + 8);
    v155(v145, v190);
    v156 = sub_10000D01C(v152, v154, &v209);

    *(v151 + 4) = v156;
    *(v151 + 12) = 2082;
    v157 = Date.localISO8601.getter();
    v159 = v158;
    v184(v143, v201);
    v160 = sub_10000D01C(v157, v159, &v209);

    *(v151 + 14) = v160;
    _os_log_impl(&_mh_execute_header, v205, v195, "Invite date for %{public}s is in the past (%{public}s). Triggering the fence invitation.", v151, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v184(v143, v144);
    v155 = *(v146 + 8);
    v155(v145, v147);
  }

  *(v0 + 552) = v155;
  v178 = swift_task_alloc();
  *(v0 + 560) = v178;
  *v178 = v0;
  v178[1] = sub_10029499C;
  v179 = *(v0 + 424);
  v180 = *(v0 + 344);

  return sub_1002A9B6C(v180, v179);
}

uint64_t sub_100015198()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_1000152A8, v1, 0);
}

uint64_t sub_1000152A8()
{
  *(v0 + 96) = *(*(v0 + 16) + OBJC_IVAR____TtC13findmylocated12FenceService_connectionPool);
  sub_10004B564(&qword_1005B0990, &qword_1004D2310);
  sub_10001534C();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000153B0, v2, v1);
}

unint64_t sub_10001534C()
{
  result = qword_1005B0998;
  if (!qword_1005B0998)
  {
    sub_10004B610(&qword_1005B0990, &qword_1004D2310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B0998);
  }

  return result;
}

uint64_t sub_1000153B0()
{
  v1 = *(v0 + 16);
  *(v0 + 104) = dispatch thunk of XPCClientConnectionPool.sessions.getter();

  return _swift_task_switch(sub_100015420, v1, 0);
}

uint64_t sub_100015420()
{
  v1 = v0[13];
  if ((v1 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter())
    {
LABEL_3:
      v2 = v0[13];
      v3 = v0[9];
      sub_1000032D4(&qword_1005AF4A8, 255, type metadata accessor for FenceService, &unk_1004D2208);
      v4 = swift_task_alloc();
      v0[14] = v4;
      *(v4 + 16) = v2;
      *(v4 + 24) = v3;
      v5 = swift_task_alloc();
      v0[15] = v5;
      *v5 = v0;
      v5[1] = sub_100015FC4;

      return withThrowingDiscardingTaskGroup<A>(returning:isolation:body:)();
    }
  }

  else if (*(v1 + 16))
  {
    goto LABEL_3;
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000155D0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000368C;

  return sub_100015684(a1, a2, v7, v6);
}

uint64_t sub_100015684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a3;
  v4[18] = a4;
  v4[16] = a2;
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();

  return _swift_task_switch(sub_10001983C, 0, 0);
}

uint64_t sub_100015730()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000368C;

  return sub_1000157DC(v2, v3, v5, v4);
}

uint64_t sub_1000157DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  v5 = type metadata accessor for FenceDaemonRequest();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v6 = type metadata accessor for FenceResponse();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_100019CF0, 0, 0);
}

uint64_t sub_100015904(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_100019DC0, v2, 0);
}

uint64_t sub_100015930(uint64_t a1)
{
  v4 = *(type metadata accessor for FenceDaemonRequest() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000368C;

  return sub_100015A34(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_100015A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  return _swift_task_switch(sub_100015A58, 0, 0);
}

uint64_t sub_100015A58()
{

  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  v2 = type metadata accessor for FenceServiceClient();
  v4 = sub_1000032D4(&qword_1005B09A0, v3, type metadata accessor for FenceServiceClient, &unk_1004D22A0);
  *v1 = v0;
  v1[1] = sub_100015B60;
  v5 = *(v0 + 88);

  return XPCAcceptedClient.proxy(errorHandler:)(v0 + 64, sub_100251614, v5, v2, v4);
}

uint64_t sub_100015B60()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_10025136C;
  }

  else
  {

    v2 = sub_10001A180;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100015C7C()
{
  v2 = *v1;
  v2[7] = v0;

  if (v0)
  {
    v3 = v2[4];

    return _swift_task_switch(sub_1002510E0, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_100015DB8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FenceResponse();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 60 == 15)
  {
    if (a3)
    {
      v14 = a3;
      swift_errorRetain();
    }

    else
    {
      sub_10005CF04();
      v10 = swift_allocError();
      *v11 = 0;
      v14 = v10;
    }

    OnceCheckedContinuation.resume(throwing:)();
  }

  else
  {
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    sub_100005F6C(a1, a2);
    PropertyListDecoder.init()();
    sub_1000032D4(&qword_1005B09B0, 255, &type metadata accessor for FenceResponse, &protocol conformance descriptor for FenceResponse);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    OnceCheckedContinuation.resume(returning:)();
    sub_10001A794(a1, a2);
    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_100015FC4()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 16);
    v4 = sub_100250FD4;
  }

  else
  {
    v5 = *(v2 + 16);

    v4 = sub_100016108;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100016108()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_10001616C(uint64_t a1, unint64_t a2)
{
  v3 = sub_100016B44(a1, a2);
  sub_10001A7A8(&off_10058A548);
  return v3;
}

uint64_t sub_1000161D0()
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_100017B4C(&qword_1005B2568, &type metadata accessor for LocationRequest, &protocol conformance descriptor for LocationRequest);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  swift_allocObject();
  PropertyListDecoder.init()();
  sub_100017B4C(&qword_1005B2558, &type metadata accessor for ClientID, &protocol conformance descriptor for ClientID);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v1 = *(v0 + 64);

  return _swift_task_switch(sub_100016CE8, v1, 0);
}

uint64_t sub_100016580(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = *v2;
  sub_10004B564(&qword_1005A92D8, &qword_1004C2898);
  v3[7] = swift_task_alloc();
  type metadata accessor for RequestOrigin();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  sub_10004B564(&qword_1005A9188, &unk_1004D80D0);
  v3[10] = swift_task_alloc();
  v4 = type metadata accessor for Friend();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v5 = type metadata accessor for Handle();
  v3[20] = v5;
  v3[21] = *(v5 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v6 = type metadata accessor for ClientID.ConnectionType();
  v3[30] = v6;
  v3[31] = *(v6 - 8);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  Priority = type metadata accessor for LocatePriority();
  v3[34] = Priority;
  v3[35] = *(Priority - 8);
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v8 = type metadata accessor for LocationRequest();
  v3[39] = v8;
  v3[40] = *(v8 - 8);
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();

  return _swift_task_switch(sub_100017B94, v2, 0);
}

uint64_t sub_100016968(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 408) = a1;

  v3 = swift_task_alloc();
  *(v2 + 416) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_100016E78(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100016E78(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_10001BFD8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

void *sub_100016B44(uint64_t a1, unint64_t a2)
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

  v6 = sub_100016C74(v5, 0);
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
        v7 = sub_100016C74(v10, 0);
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

void *sub_100016C74(uint64_t a1, uint64_t a2)
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

  sub_10004B564(&qword_1005AC298, &unk_1004C68F0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_100016CE8()
{
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[18] = v2;
    *v2 = v0;
    v2[1] = sub_1003967F8;
    v3 = v0[16];
    v4 = v0[13];

    return sub_100016580(v3, v4);
  }

  else
  {
    v6 = type metadata accessor for CommunicationError();
    sub_100017B4C(&qword_1005B0F68, &type metadata accessor for CommunicationError, &protocol conformance descriptor for CommunicationError);
    v0[21] = swift_allocError();
    (*(*(v6 - 8) + 104))(v7, enum case for CommunicationError.missingTrampoline(_:), v6);
    swift_willThrow();

    return _swift_task_switch(sub_100396934, 0, 0);
  }
}

uint64_t sub_100016E78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100016EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v4 = type metadata accessor for HandleType();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_10001BDC8, 0, 0);
}

uint64_t sub_100016F84()
{
  v2 = *(sub_10004B564(&qword_1005B1C48, &qword_1004D5C78) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000368C;

  return sub_100016EC0(v4, v5, v0 + v3);
}

uint64_t sub_10001706C()
{
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v0 + 440) = v4;
  *(v4 + 16) = xmmword_1004C1900;
  (*(v2 + 104))(v4 + v3, enum case for HandleType.following(_:), v1);
  v5 = swift_task_alloc();
  *(v0 + 448) = v5;
  *v5 = v0;
  v5[1] = sub_100388A48;

  return sub_10001C61C(v4, 1);
}

uint64_t sub_1000171D8()
{
  if (!v0[25])
  {
    v6 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError, &protocol conformance descriptor for DatabaseError);
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, enum case for DatabaseError.notConnected(_:), v6);
    swift_willThrow();
LABEL_19:

    v17 = v0[1];

    return v17();
  }

  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  (*(v1 + 16))(v2, v0[9], v3);
  v4 = (*(v1 + 88))(v2, v3);
  if (v4 == enum case for HandleType.follower(_:))
  {
    v5 = 2;
  }

  else if (v4 == enum case for HandleType.following(_:))
  {
    v5 = 4;
  }

  else if (v4 == enum case for HandleType.futureFollower(_:))
  {
    v5 = 8;
  }

  else if (v4 == enum case for HandleType.futureFollowing(_:))
  {
    v5 = 16;
  }

  else
  {
    if (v4 != enum case for HandleType.pendingOffer(_:))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v5 = 32;
  }

  if (qword_1005A8138 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v0[17], qword_1005E0078);
  if (qword_1005A82A0 != -1)
  {
    swift_once();
  }

  v23 = v0[24];
  v8 = v0[18];
  v10 = v0[16];
  v9 = v0[17];
  v11 = v0[15];
  v21 = v0[19];
  v22 = v0[14];
  v12 = v0[12];
  v13 = v0[13];
  v14 = v0[11];
  sub_10000A6F0(v14, qword_1005E04C8);
  v0[7] = v5;
  sub_10001D2D8();
  & infix<A>(_:_:)();
  v0[8] = 0;
  != infix<A>(_:_:)();
  (*(v12 + 8))(v13, v14);
  QueryType.filter(_:)();
  (*(v11 + 8))(v10, v22);
  v0[5] = v9;
  v0[6] = &protocol witness table for Table;
  v15 = sub_10000331C(v0 + 2);
  (*(v8 + 16))(v15, v21, v9);
  v16 = sub_10000A728((v0 + 2));
  if (v23)
  {
    (*(v0[18] + 8))(v0[19], v0[17]);

    sub_100004984(v0 + 2);
    goto LABEL_19;
  }

  v19 = v16;
  (*(v0[18] + 8))(v0[19], v0[17]);

  sub_100004984(v0 + 2);

  v20 = v0[1];

  return v20(v19);
}

uint64_t sub_1000176A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10004B564(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100017710(uint64_t a1)
{
  v2 = type metadata accessor for FriendInfoOption(0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  v9 = *(a1 + 16);
  sub_1000093F8(&unk_1005AEA60, type metadata accessor for FriendInfoOption, &protocol conformance descriptor for FriendInfoOption);
  result = Set.init(minimumCapacity:)();
  v14 = result;
  if (v9)
  {
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    do
    {
      sub_1002413D8(v11, v6, type metadata accessor for FriendInfoOption);
      sub_100017F98(v8, v6);
      sub_1002412D8(v8);
      v11 += v12;
      --v9;
    }

    while (v9);
    return v14;
  }

  return result;
}

uint64_t sub_10001788C(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for FriendInfoOption(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v26 = v10;
    sub_1002357C8(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_100237A68();
      goto LABEL_12;
    }

    v26 = v10;
    sub_100238484(v13 + 1);
  }

  v15 = *v4;
  Hasher.init(_seed:)();
  type metadata accessor for HandleType();
  sub_1000093F8(&qword_1005AE818, &type metadata accessor for HandleType, &protocol conformance descriptor for HandleType);
  dispatch thunk of Hashable.hash(into:)();
  v16 = Hasher._finalize()();
  v17 = -1 << *(v15 + 32);
  a2 = v16 & ~v17;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v9 + 72);
    do
    {
      sub_1002413D8(*(v15 + 48) + v19 * a2, v12, type metadata accessor for FriendInfoOption);
      v20 = static HandleType.== infix(_:_:)();
      sub_1002412D8(v12);
      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100241440(a1, *(v21 + 48) + *(v9 + 72) * a2, type metadata accessor for FriendInfoOption);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100017B04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100017B4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100017B94()
{
  v35 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = v0[44];
  v2 = v0[39];
  v3 = v0[40];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  v0[45] = sub_10000A6F0(v5, qword_1005E0B28);
  v6 = *(v3 + 16);
  v0[46] = v6;
  v0[47] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[44];
  v11 = v0[39];
  v12 = v0[40];
  if (v9)
  {
    v13 = v0[38];
    v33 = v8;
    v14 = v0[34];
    v15 = v0[35];
    v16 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v16 = 136446466;
    *(v16 + 4) = sub_10000D01C(0xD000000000000024, 0x80000001004E8920, &v34);
    *(v16 + 12) = 2082;
    v32 = v11;
    LocationRequest.priority.getter();
    sub_100016E78(&qword_1005B2460, &type metadata accessor for LocatePriority, &protocol conformance descriptor for LocatePriority);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v15 + 8))(v13, v14);
    v20 = *(v12 + 8);
    v20(v10, v32);
    v21 = sub_10000D01C(v17, v19, &v34);

    *(v16 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v7, v33, "%{public}s request priority: %{public}s", v16, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v20 = *(v12 + 8);
    v20(v10, v11);
  }

  v0[48] = v20;
  v23 = v0[32];
  v22 = v0[33];
  v24 = v0[30];
  v25 = v0[31];
  ClientID.connectionType.getter();
  (*(v25 + 104))(v23, enum case for ClientID.ConnectionType.background(_:), v24);
  v26 = static ClientID.ConnectionType.== infix(_:_:)();
  v27 = *(v25 + 8);
  v27(v23, v24);
  v27(v22, v24);
  if (v26)
  {
    v28 = swift_task_alloc();
    v0[49] = v28;
    *v28 = v0;
    v28[1] = sub_10038891C;
    v29 = v0[4];

    return sub_10033FF6C(v29);
  }

  else
  {
    v31 = swift_task_alloc();
    v0[50] = v31;
    *v31 = v0;
    v31[1] = sub_100016968;

    return daemon.getter();
  }
}

uint64_t sub_100017F98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = a1;
  v5 = type metadata accessor for FriendInfoOption(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  Hasher.init(_seed:)();
  type metadata accessor for HandleType();
  sub_1000093F8(&qword_1005AE818, &type metadata accessor for HandleType, &protocol conformance descriptor for HandleType);
  dispatch thunk of Hashable.hash(into:)();
  v10 = Hasher._finalize()();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_1002413D8(*(v9 + 48) + v14 * v12, v8, type metadata accessor for FriendInfoOption);
      v15 = static HandleType.== infix(_:_:)();
      sub_1002412D8(v8);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1002412D8(a2);
    sub_1002413D8(*(v9 + 48) + v14 * v12, v19, type metadata accessor for FriendInfoOption);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1002413D8(a2, v8, type metadata accessor for FriendInfoOption);
    v20 = *v3;
    sub_10001788C(v8, v12, isUniquelyReferenced_nonNull_native);
    v17 = v19;
    *v3 = v20;
    sub_100241440(a2, v17, type metadata accessor for FriendInfoOption);
    return 1;
  }
}

uint64_t sub_1000181EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100018254(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t FriendInfoOption.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
  __chkstk_darwin(v3 - 8);
  v42 = v39 - v4;
  v5 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v6 = __chkstk_darwin(v5 - 8);
  v43 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v47 = v39 - v8;
  v9 = type metadata accessor for ClientOrigin();
  v44 = *(v9 - 8);
  v45 = v9;
  __chkstk_darwin(v9);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for HandleType();
  v46 = *(v12 - 8);
  __chkstk_darwin(v12);
  v48 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10004B564(&qword_1005AE860, &qword_1004CF2F0);
  v49 = *(v14 - 8);
  v50 = v14;
  __chkstk_darwin(v14);
  v16 = v39 - v15;
  v17 = type metadata accessor for FriendInfoOption(0);
  __chkstk_darwin(v17);
  v19 = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100011AEC(a1, a1[3]);
  sub_10001D604();
  v51 = v16;
  v20 = v52;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    return sub_100004984(a1);
  }

  v21 = v47;
  v52 = a1;
  v40 = v19;
  LOBYTE(v54) = 0;
  sub_10001C918(&qword_1005AE868, &type metadata accessor for HandleType, &protocol conformance descriptor for HandleType);
  v22 = v48;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23 = v12;
  v24 = *(v46 + 32);
  v25 = v40;
  v48 = v23;
  v24(v40, v22);
  LOBYTE(v54) = 1;
  sub_10001C918(&qword_1005AE870, &type metadata accessor for ClientOrigin, &protocol conformance descriptor for ClientOrigin);
  v26 = v45;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v44 + 32))(&v25[v17[5]], v11, v26);
  sub_10004B564(&qword_1005AE840, &qword_1004CF2E8);
  v53 = 2;
  sub_10001C960();
  v39[1] = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *&v25[v17[6]] = v54;
  type metadata accessor for Date();
  LOBYTE(v54) = 3;
  sub_10001C918(&qword_1005A9820, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000176A8(v21, &v25[v17[7]], &unk_1005AE5B0, &qword_1004C32F0);
  LOBYTE(v54) = 4;
  v27 = v43;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000176A8(v27, &v25[v17[8]], &unk_1005AE5B0, &qword_1004C32F0);
  LOBYTE(v54) = 5;
  v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v29 = &v25[v17[9]];
  *v29 = v28;
  v29[1] = v30;
  LOBYTE(v54) = 6;
  v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v32 = &v25[v17[10]];
  *v32 = v31;
  v32[1] = v33;
  LOBYTE(v54) = 7;
  v40[v17[11]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  type metadata accessor for Handle();
  LOBYTE(v54) = 8;
  sub_10001C918(&qword_1005AE888, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
  v34 = v42;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000176A8(v34, &v40[v17[12]], &qword_1005B3360, &unk_1004C6AA0);
  LOBYTE(v54) = 9;
  v40[v17[13]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v54) = 10;
  v40[v17[14]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v54) = 11;
  v40[v17[15]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v54) = 12;
  v35 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  (*(v49 + 8))(v51, v50);
  v37 = v40;
  v36 = v41;
  v40[v17[16]] = v35;
  sub_1000181EC(v37, v36, type metadata accessor for FriendInfoOption);
  sub_100004984(v52);
  return sub_100006E08(v37, type metadata accessor for FriendInfoOption);
}

uint64_t sub_100018D64()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_100019024(v2, v3, v4);
}

uint64_t sub_100018F14()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100018F70()
{
  type metadata accessor for LocalStorageDatabase(0);
  sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase, &unk_1004D5700);
  *(v0 + 200) = Database.readConnection.getter();

  return _swift_task_switch(sub_1000171D8, 0, 0);
}

uint64_t sub_100019024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return _swift_task_switch(sub_10001B8E8, a1, 0);
}

uint64_t sub_10001904C()
{
  v1 = *(*(v0 + 80) + 112);
  *(v0 + 184) = v1;
  return _swift_task_switch(sub_10001C530, v1, 0);
}

uint64_t sub_100019070()
{
  *(v1 + 16) = v0;
  sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10001B5C4, v0, 0);
}

void *sub_10001910C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10023A25C(a1, a2, a3, *v3, &qword_1005B00A8, &qword_1004D1638, type metadata accessor for FenceRecord);
  *v3 = result;
  return result;
}

uint64_t sub_100019150(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return _swift_task_switch(sub_100019170, 0, 0);
}

uint64_t sub_100019170()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_10000F728;

  return sub_100008414();
}

uint64_t sub_100019204()
{
  type metadata accessor for LocalStorageDatabase(0);
  sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase, &unk_1004D5700);
  *(v0 + 1304) = Database.readConnection.getter();

  return _swift_task_switch(sub_100008530, 0, 0);
}

char *sub_1000192B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10004B564(&qword_1005B00E0, &qword_1004D1680);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 584);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[584 * v8])
    {
      memmove(v12, v13, 584 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1000193DC()
{
  v2 = *v1;
  *(*v1 + 3896) = v0;

  if (v0)
  {
    v3 = *(v2 + 3728);

    v4 = sub_10020DF84;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 3728);
    v4 = sub_100008B24;
  }

  return _swift_task_switch(v4, v5, 0);
}

void *sub_100019510(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v7 = sub_10004B564(&qword_1005B09D0, &unk_1004D2380);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for Fence();
  v11 = __chkstk_darwin(v10);
  v36 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v30 = &v25 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return _swiftEmptyArrayStorage;
  }

  v16 = (a3 + 32);
  v31 = (v13 + 32);
  v32 = (v13 + 48);
  v17 = _swiftEmptyArrayStorage;
  v28 = v10;
  v29 = a2;
  v26 = a1;
  v27 = v13;
  v25 = v9;
  while (1)
  {
    memcpy(v35, v16, 0x241uLL);
    memcpy(v34, v16, 0x241uLL);
    sub_10005D0C0(v35, v33);
    a1(v34);
    if (v3)
    {
      break;
    }

    memcpy(v33, v34, 0x241uLL);
    sub_10005D11C(v33);
    if ((*v32)(v9, 1, v10) == 1)
    {
      sub_100002CE0(v9, &qword_1005B09D0, &unk_1004D2380);
    }

    else
    {
      v18 = v30;
      v19 = *v31;
      (*v31)(v30, v9, v10);
      v19(v36, v18, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_1001FD464(0, v17[2] + 1, 1, v17);
      }

      v21 = v17[2];
      v20 = v17[3];
      v22 = v17;
      v9 = v25;
      if (v21 >= v20 >> 1)
      {
        v22 = sub_1001FD464((v20 > 1), v21 + 1, 1, v17);
      }

      v22[2] = v21 + 1;
      v17 = v22;
      v23 = v22 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v21;
      v10 = v28;
      v19(v23, v36, v28);
      a1 = v26;
    }

    v16 += 584;
    if (!--v15)
    {
      return v17;
    }
  }

  memcpy(v33, v34, 0x241uLL);
  sub_10005D11C(v33);

  return v17;
}

uint64_t sub_10001983C(uint64_t a1, uint64_t a2)
{
  v3 = v2[17];
  if ((v3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for FenceServiceClient();
    sub_1000032D4(&qword_1005B0988, v4, type metadata accessor for FenceServiceClient, &unk_1004D2258);
    result = Set.Iterator.init(_cocoa:)();
    v3 = v2[2];
    v6 = v2[3];
    v7 = v2[4];
    v8 = v2[5];
    v9 = v2[6];
  }

  else
  {
    v10 = -1 << *(v3 + 32);
    v6 = v3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v3 + 56);

    v8 = 0;
  }

  v34 = v2 + 7;
  v13 = (v7 + 64) >> 6;
  v37 = v6;
  v38 = v3;
  v35 = v13;
  v36 = v2;
  while (v3 < 0)
  {
    v21 = __CocoaSet.Iterator.next()();
    if (!v21 || (v2[15] = v21, type metadata accessor for FenceServiceClient(), swift_dynamicCast(), v20 = v2[14], v18 = v8, v19 = v9, !v20))
    {
LABEL_27:
      sub_10000E3F8(v3);

      v33 = v2[1];

      return v33();
    }

LABEL_19:
    v39 = v19;
    v23 = v2[19];
    v22 = v2[20];
    v24 = v2[18];
    v25 = type metadata accessor for TaskPriority();
    v26 = *(v25 - 8);
    (*(v26 + 56))(v22, 1, 1, v25);
    v27 = swift_allocObject();
    v27[2] = 0;
    v27[3] = 0;
    v27[4] = v20;
    v27[5] = v24;
    sub_100005F04(v22, v23, &qword_1005A9690, &qword_1004C2A00);
    LODWORD(v23) = (*(v26 + 48))(v23, 1, v25);

    v28 = v36[19];
    if (v23 == 1)
    {
      sub_100002CE0(v36[19], &qword_1005A9690, &qword_1004C2A00);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v26 + 8))(v28, v25);
    }

    v2 = v36;
    if (v27[2])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v29 = dispatch thunk of Actor.unownedExecutor.getter();
      v31 = v30;
      swift_unknownObjectRelease();
    }

    else
    {
      v29 = 0;
      v31 = 0;
    }

    v32 = *v36[16];

    if (v31 | v29)
    {
      v14 = v34;
      *v34 = 0;
      v34[1] = 0;
      v36[9] = v29;
      v36[10] = v31;
    }

    else
    {
      v14 = 0;
    }

    v13 = v35;
    v15 = v36[20];
    v36[11] = 1;
    v36[12] = v14;
    v36[13] = v32;
    swift_task_create();

    result = sub_100002CE0(v15, &qword_1005A9690, &qword_1004C2A00);
    v8 = v18;
    v9 = v39;
    v6 = v37;
    v3 = v38;
  }

  v16 = v8;
  v17 = v9;
  v18 = v8;
  if (v9)
  {
LABEL_15:
    v19 = (v17 - 1) & v17;
    v20 = *(*(v3 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));

    if (!v20)
    {
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v13)
    {
      goto LABEL_27;
    }

    v17 = *(v6 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100019CA8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100019CF0()
{
  v1 = v0[5];
  *v0[6] = v0[3];
  (*(v1 + 104))();

  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_10001A374;
  v3 = v0[10];
  v4 = v0[6];

  return sub_100015904(v3, v4);
}

uint64_t sub_100019DC0()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = type metadata accessor for FenceResponse();
  *v2 = v0;
  v2[1] = sub_100015C7C;
  v4 = *(v0 + 16);

  return withOnceCheckedThrowingContinuation<A>(function:_:)(v4, 0x75716552656B616DLL, 0xEF293A5F28747365, sub_100015928, v1, v3);
}

uint64_t sub_100019EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FenceDaemonRequest();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  __chkstk_darwin(v9 - 8);
  v11 = &v16 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v7 + 16))(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
  v13 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = a2;
  *(v14 + 5) = a1;
  (*(v7 + 32))(&v14[v13], &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

  sub_1001D7F30(0, 0, v11, &unk_1004D2358, v14);
}

uint64_t sub_10001A0AC()
{
  v1 = type metadata accessor for FenceDaemonRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10001A180()
{
  v1 = v0[14];
  v2 = v0[8];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for FenceDaemonRequest();
  sub_1000032D4(&qword_1005B09A8, 255, &type metadata accessor for FenceDaemonRequest, &protocol conformance descriptor for FenceDaemonRequest);
  v3 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v1)
  {

    swift_unknownObjectRelease();
    v0[9] = v1;
    OnceCheckedContinuation.resume(throwing:)();
  }

  else
  {
    v5 = v0[11];
    v6 = v3;
    v7 = v4;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v0[6] = sub_100015FBC;
    v0[7] = v5;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_10001A6E8;
    v0[5] = &unk_1005977F8;
    v9 = _Block_copy(v0 + 2);

    [v2 request:isa completion:v9];
    _Block_release(v9);

    sub_1000049D0(v6, v7);

    swift_unknownObjectRelease();
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_10001A374()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 96) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_100251060;
  }

  else
  {
    v5 = sub_10001A4E4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10001A4E4()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[8];
  v4 = *(v3 + 16);
  v4(v1, v0[10], v2);
  v5 = (*(v3 + 88))(v1, v2);
  v6 = *(v3 + 8);
  v8 = v0[9];
  v7 = v0[10];
  v9 = v0[7];
  if (v5 == enum case for FenceResponse.void(_:))
  {
    v6(v0[10], v0[7]);
    v6(v8, v9);
  }

  else
  {
    v6(v0[9], v0[7]);
    type metadata accessor for FenceServiceClient.Failure(0);
    sub_1000032D4(&qword_1005A9140, 255, type metadata accessor for FenceServiceClient.Failure, &unk_1004D25C8);
    swift_allocError();
    v4(v11, v7, v9);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v6(v7, v9);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_10001A6E8(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_10001A794(v4, v8);
}

uint64_t sub_10001A794(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000049D0(result, a2);
  }

  return result;
}

uint64_t sub_10001A7A8(uint64_t result)
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

  result = sub_10001B7F4(result, v11, 1, v3);
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

uint64_t sub_10001A8B8(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for LocationServiceClient();
  *(v1 + 24) = swift_allocObject();

  return _swift_task_switch(sub_1000033F8, 0, 0);
}

uint64_t sub_10001A930(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10001ABE0, v1, 0);
}

uint64_t sub_10001A950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_10000368C;

  return sub_10001A930(a5);
}

uint64_t sub_10001A9EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000368C;

  return sub_10001A950(a1, v4, v5, v7, v6);
}

uint64_t sub_10001AAAC(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_10001BA68, 0, 0);
}

uint64_t sub_10001AB48(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100002D40;

  return sub_10001AAAC(a1, v1);
}

uint64_t sub_10001ABE0()
{
  v4 = (&async function pointer to dispatch thunk of XPCClientConnectionPool.add(connection:) + async function pointer to dispatch thunk of XPCClientConnectionPool.add(connection:));
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_10001ACF0;
  v2 = *(v0 + 16);

  return v4(v2);
}

Swift::Int sub_10001AC98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  type metadata accessor for LocationServiceClient();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10001ACF0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = *(v3 + 24);

    return _swift_task_switch(sub_100349DE4, v5, 0);
  }

  else
  {

    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_10001AE44(uint64_t a1)
{
  type metadata accessor for LocationServiceClient();
  sub_10001AEBC(&qword_1005B23F8, v1, type metadata accessor for LocationServiceClient, &unk_1004D66F8);
  return XPCAcceptedClient.hash(into:)();
}

uint64_t sub_10001AEBC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_10001AF04(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v50 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v49 = &v44 - v9;
  __chkstk_darwin(v8);
  v11 = &v44 - v10;
  v12 = sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  v13 = __chkstk_darwin(v12 - 8);
  v52 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v44 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v44 - v19;
  __chkstk_darwin(v18);
  v22 = &v44 - v21;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  v24 = sub_10000A6F0(v23, qword_1005E0B28);
  v51 = a1;
  sub_100005F04(a1, v22, &qword_1005A96E0, &qword_1004C2A80);
  v48 = v24;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v46 = v11;
    v47 = v2;
    v27 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v53[0] = v45;
    *v27 = 136446466;
    *(v27 + 4) = sub_10000D01C(0xD000000000000026, 0x80000001004E8170, v53);
    *(v27 + 12) = 2082;
    sub_100005F04(v22, v20, &qword_1005A96E0, &qword_1004C2A80);
    if ((*(v5 + 48))(v20, 1, v4) == 1)
    {
      sub_100002CE0(v20, &qword_1005A96E0, &qword_1004C2A80);
      v28 = 0;
      v29 = 0xE000000000000000;
    }

    else
    {
      v28 = UUID.uuidString.getter();
      v29 = v30;
      (*(v5 + 8))(v20, v4);
    }

    sub_100002CE0(v22, &qword_1005A96E0, &qword_1004C2A80);
    v31 = sub_10000D01C(v28, v29, v53);

    *(v27 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v25, v26, "%{public}s %{public}s", v27, 0x16u);
    swift_arrayDestroy();

    v11 = v46;
  }

  else
  {

    sub_100002CE0(v22, &qword_1005A96E0, &qword_1004C2A80);
  }

  v32 = v52;
  sub_100005F04(v51, v52, &qword_1005A96E0, &qword_1004C2A80);
  v33 = *(v5 + 48);
  if (v33(v32, 1, v4) == 1)
  {
    type metadata accessor for Transaction();
    v34 = static Transaction.currentNSXPCConnection.getter();
    if (v34)
    {
      v35 = v34;
      NSXPCConnection.id.getter();

      v36 = 0;
    }

    else
    {
      v36 = 1;
    }

    (*(v5 + 56))(v17, v36, 1, v4);
    if (v33(v32, 1, v4) != 1)
    {
      sub_100002CE0(v32, &qword_1005A96E0, &qword_1004C2A80);
    }
  }

  else
  {
    (*(v5 + 32))(v17, v32, v4);
    (*(v5 + 56))(v17, 0, 1, v4);
  }

  if (v33(v17, 1, v4) == 1)
  {
    sub_100002CE0(v17, &qword_1005A96E0, &qword_1004C2A80);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v53[0] = v40;
      *v39 = 136446210;
      *(v39 + 4) = sub_10000D01C(0xD000000000000026, 0x80000001004E8170, v53);
      _os_log_impl(&_mh_execute_header, v37, v38, "%{public}s. Failed to get current client XPC connection ID", v39, 0xCu);
      sub_100004984(v40);
    }
  }

  else
  {
    (*(v5 + 32))(v11, v17, v4);
    v41 = v50;
    (*(v5 + 16))(v50, v11, v4);
    swift_beginAccess();
    v42 = v49;
    sub_10001CFF8(v49, v41);
    v43 = *(v5 + 8);
    v43(v42, v4);
    swift_endAccess();
    v43(v11, v4);
  }
}

uint64_t sub_10001B5C4()
{
  v11 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0B28);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD00000000000001CLL, 0x80000001004E8950, &v10);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  else
  {
  }

  v0[4] = 0x80000001004E8950;
  v6 = v0[3];
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_10001AF04(v6);
  sub_100002CE0(v6, &qword_1005A96E0, &qword_1004C2A80);
  v8 = swift_task_alloc();
  v0[5] = v8;
  *v8 = v0;
  v8[1] = sub_10001C418;

  return sub_10001CC28();
}

char *sub_10001B7F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10004B564(&qword_1005AC298, &unk_1004C68F0);
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

uint64_t sub_10001B8E8()
{
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_100027424;

    return sub_100019070();
  }

  else
  {
    v4 = type metadata accessor for CommunicationError();
    sub_100017B4C(&qword_1005B0F68, &type metadata accessor for CommunicationError, &protocol conformance descriptor for CommunicationError);
    v0[9] = swift_allocError();
    (*(*(v4 - 8) + 104))(v5, enum case for CommunicationError.missingTrampoline(_:), v4);
    swift_willThrow();

    return _swift_task_switch(sub_1003A6218, 0, 0);
  }
}

uint64_t sub_10001BA68()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[7];
    v4 = v0[5];
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v2;
    v6[5] = v4;
    v7 = v4;
    sub_1001D7F30(0, 0, v3, &unk_1004D6B28, v6);
  }

  v8 = v0[1];

  return v8(1);
}

uint64_t sub_10001BB94()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001BBDC(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_10004B564(&qword_1005B1A30, &qword_1004D6050);
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v5 = type metadata accessor for Table();
  v2[17] = v5;
  v2[18] = *(v5 - 8);
  v2[19] = swift_task_alloc();
  v6 = type metadata accessor for HandleType();
  v2[20] = v6;
  v2[21] = *(v6 - 8);
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_10001904C, 0, 0);
}

uint64_t sub_10001BDC8()
{
  v16 = v0;
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  *(v0 + 80) = v2;
  if (v2)
  {
    v3 = *(v0 + 56);
    v4 = *(v0 + 64);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = *(v4 + 64);
    *(v0 + 144) = v6;
    *(v0 + 88) = *(v4 + 56);
    *(v0 + 96) = v5;
    *(v0 + 104) = 0;
    *(v0 + 112) = &_swiftEmptySetSingleton;
    v5(*(v0 + 72), v1 + ((v6 + 32) & ~v6), v3);
    v7 = swift_task_alloc();
    *(v0 + 120) = v7;
    *v7 = v0;
    v7[1] = sub_100022CCC;
    v8 = *(v0 + 72);

    return sub_10001BBDC(v8);
  }

  v10 = *(&_swiftEmptySetSingleton + 2);
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = sub_10022BCF4(*(&_swiftEmptySetSingleton + 2), 0);
  v12 = *(type metadata accessor for Friend() - 8);
  v13 = sub_10023EAA8(&v15, &v11[(*(v12 + 80) + 32) & ~*(v12 + 80)], v10, &_swiftEmptySetSingleton);
  sub_10000E3F8(v15);
  if (v13 != v10)
  {
    __break(1u);
LABEL_8:

    v11 = _swiftEmptyArrayStorage;
  }

  *(v0 + 24) = v11;
  sub_10004B564(&qword_1005B1C48, &qword_1004D5C78);
  CheckedContinuation.resume(returning:)();

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_10001BFD8(uint64_t a1)
{
  v4 = *v2;
  v4[53] = a1;
  v4[54] = v1;

  if (v1)
  {
    v5 = v4[5];
    v6 = sub_10038A4EC;
  }

  else
  {

    v6 = sub_10001706C;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10001C110()
{
  v1 = v0[4];
  v2 = *(v1 + 128);
  v0[6] = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    v0[7] = v3;
    v4 = type metadata accessor for SecureLocationsManagerAdapter();
    *v3 = v0;
    v3[1] = sub_10001C808;
    v5 = v0 + 3;
  }

  else
  {
    v6 = v0[5];
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    v2 = sub_1001D8544(0, 0, v6, &unk_1004D6B38, v8);
    v0[8] = v2;
    *(v1 + 128) = v2;

    v9 = swift_task_alloc();
    v0[9] = v9;
    v4 = type metadata accessor for SecureLocationsManagerAdapter();
    *v9 = v0;
    v9[1] = sub_100345094;
    v5 = v0 + 2;
  }

  return Task<>.value.getter(v5, v2, v4);
}

uint64_t sub_10001C2D8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001C314()
{
  v1 = v0[2];
  v2 = sub_100016E78(&qword_1005B23E0, type metadata accessor for LocationService, &unk_1004D6610);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_100026BD0;
  v4 = v0[6];
  v5 = v0[4];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, v1, v2, 0xD00000000000001CLL, v5, sub_10001D658, v4, &type metadata for () + 1);
}

uint64_t sub_10001C418(uint64_t a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_10001C314, v2, 0);
}

uint64_t sub_10001C530()
{
  sub_10000A0A4();
  *(v0 + 192) = 0;
  v1 = *(v0 + 184);

  return _swift_task_switch(sub_100018F70, v1, 0);
}

uint64_t sub_10001C61C(uint64_t a1, char a2)
{
  *(v3 + 848) = v2;
  *(v3 + 1032) = a2;
  *(v3 + 840) = a1;
  *(v3 + 856) = *v2;
  v4 = type metadata accessor for Date();
  *(v3 + 864) = v4;
  *(v3 + 872) = *(v4 - 8);
  *(v3 + 880) = swift_task_alloc();
  v5 = type metadata accessor for HandleType();
  *(v3 + 888) = v5;
  *(v3 + 896) = *(v5 - 8);
  *(v3 + 904) = swift_task_alloc();
  v6 = swift_task_alloc();
  *(v3 + 912) = v6;
  *v6 = v3;
  v6[1] = sub_10002C8B8;

  return daemon.getter();
}

uint64_t sub_10001C798()
{

  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10001C808()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_10001C798, v1, 0);
}

uint64_t sub_10001C918(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10001C960()
{
  result = qword_1005AE878;
  if (!qword_1005AE878)
  {
    sub_10004B610(&qword_1005AE840, &qword_1004CF2E8);
    sub_10001C918(&qword_1005AE880, &type metadata accessor for GroupID, &protocol conformance descriptor for GroupID);
    sub_10001C918(&qword_1005A9820, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE878);
  }

  return result;
}

unint64_t sub_10001CA70(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 0x6E696769726FLL;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x7441657461657263;
      break;
    case 4:
      result = 0x797269707865;
      break;
    case 5:
      result = 0x4449726576726573;
      break;
    case 6:
      result = 0x657469726F766166;
      break;
    case 7:
      result = 0x746F4E646574706FLL;
      break;
    case 8:
      result = 0x6E614872656E776FLL;
      break;
    case 9:
      result = 0xD000000000000023;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10001CC28()
{
  *(v1 + 32) = v0;
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  *(v1 + 40) = swift_task_alloc();

  return _swift_task_switch(sub_10001C110, v0, 0);
}

uint64_t sub_10001CCC4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10004B610(&qword_1005A9630, &qword_1004C5680);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001CD30(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100235B1C(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_100237D20(&type metadata accessor for UUID, &qword_1005B0598, &qword_1004D1EE8);
      goto LABEL_12;
    }

    sub_1002387A8(v10 + 1);
  }

  v12 = *v3;
  sub_1000093F8(&qword_1005AECC0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1000093F8(&qword_1005A9FC8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10001CFF8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1000093F8(&qword_1005AECC0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1000093F8(&qword_1005A9FC8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_10001CD30(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

unint64_t sub_10001D2D8()
{
  result = qword_1005B1A38;
  if (!qword_1005B1A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1A38);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for SecureLocation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_10001D3DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - v6;
  (*(v5 + 16))(&v11 - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  v10 = *(*(a2 + 56) + OBJC_IVAR____TtC13findmylocated26SecureLocationsCoordinator_stewieManager);
  sub_10001D6F0();
}

unint64_t sub_10001D550()
{
  result = qword_1005B1DE8;
  if (!qword_1005B1DE8)
  {
    sub_10004B610(&qword_1005B1DE0, &qword_1004D6080);
    sub_10000A49C(&qword_1005AEB50, type metadata accessor for FriendInfoOption, &protocol conformance descriptor for FriendInfoOption);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1DE8);
  }

  return result;
}

unint64_t sub_10001D604()
{
  result = qword_1005AE828;
  if (!qword_1005AE828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE828);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SecureLocation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_10001D6F0()
{
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFB98);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_10000D01C(*&v2[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v2[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v9);
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s - startMonitoring", v5, 0xCu);
    sub_100004984(v6);
  }

  v7 = type metadata accessor for Transaction();
  __chkstk_darwin(v7);
  return static Transaction.named<A>(_:with:)();
}

uint64_t sub_10001D8B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000368C;

  return sub_10001DCB4(a1, v4);
}

uint64_t sub_10001D96C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v11 = *(v19 - 8);
  __chkstk_darwin(v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *&a2[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue];
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a1;
  v14[4] = a3;
  v14[5] = a4;
  aBlock[4] = sub_10002097C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_1005908A8;
  v15 = _Block_copy(aBlock);
  v16 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_10001DFF0(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v20 + 8))(v10, v8);
  (*(v11 + 8))(v13, v19);
}

uint64_t sub_10001DC6C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001DCB4(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_1002068E0;

  return v5(v2 + 16);
}

uint64_t sub_10001DDC8(uint64_t a1)
{
  v4 = *(type metadata accessor for LocationRequest() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000368C;

  return sub_10001DEE8(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_10001DEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return _swift_task_switch(sub_10001E0C8, 0, 0);
}

uint64_t sub_10001DF0C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10004B610(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001DF54(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10004B610(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001DFA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10001DFF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10001E038(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10001E080(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10001E0C8()
{
  v1 = *(LocationRequest.toHandles.getter() + 16);

  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 40) = v2;
    v2[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
    v3 = swift_task_alloc();
    *(v0 + 48) = v3;
    v4 = sub_10004B564(&qword_1005B04E8, &qword_1004D67E0);
    *v3 = v0;
    v3[1] = sub_10038B66C;
    v5 = *(v0 + 16);

    return withCheckedContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000024, 0x80000001004E8920, sub_100020820, v2, v4);
  }

  else
  {
    v6 = *(v0 + 16);
    *v6 = sub_1002087C4(_swiftEmptyArrayStorage);
    v7 = *(v0 + 8);

    return v7();
  }
}

void sub_10001E230(void *a1, uint64_t a2, void (*a3)(void), id a4)
{
  v203 = type metadata accessor for DispatchWorkItemFlags();
  v202 = *(v203 - 8);
  __chkstk_darwin(v203);
  v199 = &v182 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = type metadata accessor for DispatchQoS();
  v200 = *(v201 - 8);
  __chkstk_darwin(v201);
  v198 = &v182 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = type metadata accessor for DispatchQoS.QoSClass();
  v196 = *(v197 - 8);
  __chkstk_darwin(v197);
  v195 = &v182 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10004B564(&qword_1005AB4D0, &unk_1004C45D0);
  __chkstk_darwin(v11 - 8);
  v206 = &v182 - v12;
  v13 = type metadata accessor for SecureLocationsStewie.ServiceState();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v209 = &v182 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v182 - v17;
  v212 = sub_10004B564(&qword_1005AB4A8, &qword_1004C5408);
  v19 = __chkstk_darwin(v212);
  v208 = &v182 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v207 = &v182 - v21;
  v22 = sub_10004B564(&qword_1005AB4B0, &unk_1004C5410);
  v23 = __chkstk_darwin(v22 - 8);
  v205 = &v182 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v211 = &v182 - v26;
  v27 = __chkstk_darwin(v25);
  v204 = &v182 - v28;
  __chkstk_darwin(v27);
  v210 = &v182 - v29;
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  v31 = sub_10000A6F0(v30, qword_1005DFB98);
  v32 = a1;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v213 = a4;
    v214 = a2;
    v36 = v35;
    v37 = v18;
    v38 = v31;
    v39 = v14;
    v40 = v13;
    v41 = a3;
    v42 = swift_slowAlloc();
    aBlock = v42;
    *v36 = 136446210;
    *(v36 + 4) = sub_10000D01C(*&v32[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v32[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &aBlock);
    _os_log_impl(&_mh_execute_header, v33, v34, "%{public}s - startMonitoring started block", v36, 0xCu);
    sub_100004984(v42);
    a3 = v41;
    v13 = v40;
    v14 = v39;
    v31 = v38;
    v18 = v37;

    a4 = v213;
    a2 = v214;
  }

  My = type metadata accessor for Feature.FindMy();
  v219 = My;
  v220 = sub_10001DFF0(&qword_1005A9EE8, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v44 = sub_10000331C(&aBlock);
  (*(*(My - 8) + 104))(v44, enum case for Feature.FindMy.fmNiftyCurve(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100004984(&aBlock);
  if ((My & 1) == 0)
  {
    goto LABEL_15;
  }

  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v45 = sub_100021148();

  if ((v45 & 1) == 0 || v32[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_isStewieSupported] != 1)
  {
LABEL_15:
    (*(v14 + 104))(v18, enum case for SecureLocationsStewie.ServiceState.disabled(_:), v13);
    sub_100022084(v18);
    (*(v14 + 8))(v18, v13);
    v59 = v32;
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v60, v61))
    {
LABEL_18:

      sub_100022950();
      v65 = type metadata accessor for SecureLocationsStewie.Error();
      sub_10001DFF0(&qword_1005A9EF8, &type metadata accessor for SecureLocationsStewie.Error, &protocol conformance descriptor for SecureLocationsStewie.Error);
      v66 = swift_allocError();
      (*(*(v65 - 8) + 104))(v67, enum case for SecureLocationsStewie.Error.disabled(_:), v65);
      a3(v66);

      goto LABEL_19;
    }

    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    aBlock = v63;
    *v62 = 136446210;
    *(v62 + 4) = sub_10000D01C(*&v59[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v59[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &aBlock);
    v64 = "%{public}s - startMonitoring: featureDisabled";
LABEL_17:
    _os_log_impl(&_mh_execute_header, v60, v61, v64, v62, 0xCu);
    sub_100004984(v63);

    goto LABEL_18;
  }

  if (static SystemInfo.isKoreaSKU.getter())
  {
    v46 = type metadata accessor for KoreaFeatureFlag();
    v219 = v46;
    v220 = sub_10001DFF0(&qword_1005AB4D8, &type metadata accessor for KoreaFeatureFlag, &protocol conformance descriptor for KoreaFeatureFlag);
    v47 = sub_10000331C(&aBlock);
    (*(*(v46 - 8) + 104))(v47, enum case for KoreaFeatureFlag.ArcticPlum(_:), v46);
    LOBYTE(v46) = isFeatureEnabled(_:)();
    sub_100004984(&aBlock);
    if ((v46 & 1) == 0)
    {
      (*(v14 + 104))(v18, enum case for SecureLocationsStewie.ServiceState.disabledInGeo(_:), v13);
      sub_100022084(v18);
      (*(v14 + 8))(v18, v13);
      v69 = v32;
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v60, v61))
      {
        goto LABEL_18;
      }

      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      aBlock = v63;
      *v62 = 136446210;
      *(v62 + 4) = sub_10000D01C(*&v69[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v69[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &aBlock);
      v64 = "%{public}s - startMonitoring: disabled in geo";
      goto LABEL_17;
    }
  }

  v213 = a4;
  v189 = a3;
  v214 = a2;
  v48 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieServiceState;
  swift_beginAccess();
  v49 = v32;
  v50 = v210;
  v191 = *(v14 + 104);
  v194 = v14 + 104;
  v191(v210, enum case for SecureLocationsStewie.ServiceState.publishInProgress(_:), v13);
  v51 = *(v14 + 56);
  v184 = v14 + 56;
  v183 = v51;
  v51(v50, 0, 1, v13);
  v52 = *(v212 + 12);
  v192 = v49;
  v186 = v48;
  v53 = v49 + v48;
  v54 = v207;
  sub_100005F04(v53, v207, &qword_1005AB4B0, &unk_1004C5410);
  sub_100005F04(v50, v54 + v52, &qword_1005AB4B0, &unk_1004C5410);
  v55 = *(v14 + 48);
  v56 = v55(v54, 1, v13);
  v187 = v14 + 48;
  v185 = v55;
  if (v56 == 1)
  {
    sub_100002CE0(v50, &qword_1005AB4B0, &unk_1004C5410);
    v57 = v55(v54 + v52, 1, v13);
    v58 = v211;
    if (v57 == 1)
    {
      sub_100002CE0(v54, &qword_1005AB4B0, &unk_1004C5410);
      v190 = 1;
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  v68 = v204;
  sub_100005F04(v54, v204, &qword_1005AB4B0, &unk_1004C5410);
  if (v55(v54 + v52, 1, v13) == 1)
  {
    sub_100002CE0(v210, &qword_1005AB4B0, &unk_1004C5410);
    (*(v14 + 8))(v68, v13);
    v58 = v211;
LABEL_22:
    sub_100002CE0(v54, &qword_1005AB4A8, &qword_1004C5408);
    v190 = 0;
    goto LABEL_26;
  }

  (*(v14 + 32))(v18, v54 + v52, v13);
  sub_10001DFF0(&qword_1005AB4B8, &type metadata accessor for SecureLocationsStewie.ServiceState, &protocol conformance descriptor for SecureLocationsStewie.ServiceState);
  v190 = dispatch thunk of static Equatable.== infix(_:_:)();
  v70 = v68;
  v71 = *(v14 + 8);
  v71(v18, v13);
  sub_100002CE0(v210, &qword_1005AB4B0, &unk_1004C5410);
  v71(v70, v13);
  sub_100002CE0(v54, &qword_1005AB4B0, &unk_1004C5410);
  v58 = v211;
LABEL_26:
  v191(v58, enum case for SecureLocationsStewie.ServiceState.throttled(_:), v13);
  v183(v58, 0, 1, v13);
  v72 = v13;
  v73 = *(v212 + 12);
  v74 = v208;
  sub_100005F04(v192 + v186, v208, &qword_1005AB4B0, &unk_1004C5410);
  sub_100005F04(v58, v74 + v73, &qword_1005AB4B0, &unk_1004C5410);
  v75 = v185;
  v76 = v185(v74, 1, v72);
  v188 = v14;
  v193 = v31;
  if (v76 == 1)
  {
    sub_100002CE0(v58, &qword_1005AB4B0, &unk_1004C5410);
    v77 = v72;
    if (v75(v74 + v73, 1, v72) == 1)
    {
      sub_100002CE0(v74, &qword_1005AB4B0, &unk_1004C5410);
      v78 = 1;
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  v79 = v205;
  sub_100005F04(v74, v205, &qword_1005AB4B0, &unk_1004C5410);
  if (v75(v74 + v73, 1, v72) == 1)
  {
    sub_100002CE0(v211, &qword_1005AB4B0, &unk_1004C5410);
    v80 = v79;
    v77 = v72;
    (*(v14 + 8))(v80, v72);
LABEL_31:
    sub_100002CE0(v74, &qword_1005AB4A8, &qword_1004C5408);
    v78 = 0;
    goto LABEL_33;
  }

  (*(v14 + 32))(v18, v74 + v73, v72);
  sub_10001DFF0(&qword_1005AB4B8, &type metadata accessor for SecureLocationsStewie.ServiceState, &protocol conformance descriptor for SecureLocationsStewie.ServiceState);
  v78 = dispatch thunk of static Equatable.== infix(_:_:)();
  v81 = *(v14 + 8);
  v81(v18, v72);
  sub_100002CE0(v211, &qword_1005AB4B0, &unk_1004C5410);
  v82 = v79;
  v77 = v72;
  v81(v82, v72);
  sub_100002CE0(v74, &qword_1005AB4B0, &unk_1004C5410);
LABEL_33:
  v83 = v192;
  v84 = Logger.logObject.getter();
  v85 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    aBlock = v87;
    *v86 = 136446722;
    *(v86 + 4) = sub_10000D01C(*&v83[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v83[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &aBlock);
    *(v86 + 12) = 1024;
    v88 = v190;
    *(v86 + 14) = v190 & 1;
    *(v86 + 18) = 1024;
    *(v86 + 20) = v78 & 1;
    _os_log_impl(&_mh_execute_header, v84, v85, "%{public}s - startMonitoring: isPublishInProgress %{BOOL}d isThrottled %{BOOL}d", v86, 0x18u);
    sub_100004984(v87);

    v89 = v77;
    v90 = v188;
  }

  else
  {

    v89 = v77;
    v90 = v188;
    v88 = v190;
  }

  v91 = sub_100021BB4();

  if ((v91 | v88 | v78))
  {

    v92 = v206;
    sub_1004AE5D8(v206);
    v93 = v190;

    v94 = type metadata accessor for SecureLocationsCachedSharingKey(0);
    v95 = (*(*(v94 - 8) + 48))(v92, 1, v94) != 1;
    sub_100002CE0(v92, &qword_1005AB4D0, &unk_1004C45D0);
    if ((v95 | v93 | v78))
    {
      v212 = v89;
      v96 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_dataClient;
      v97 = *&v83[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_dataClient];
      if (v97)
      {
        goto LABEL_42;
      }

      v211 = v83;
      v98 = v83;
      v99 = Logger.logObject.getter();
      v100 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v99, v100))
      {
        v101 = v90;
        v102 = swift_slowAlloc();
        v103 = v18;
        v104 = swift_slowAlloc();
        aBlock = v104;
        *v102 = 136446210;
        *(v102 + 4) = sub_10000D01C(*&v98[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v98[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &aBlock);
        _os_log_impl(&_mh_execute_header, v99, v100, "%{public}s - startMonitoring but we have no data client - creating one", v102, 0xCu);
        sub_100004984(v104);
        v18 = v103;

        v90 = v101;
      }

      v98[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_isFindMyServiceConnectedToStewie] = 0;
      v105 = [objc_allocWithZone(CTStewieDataClient) initWithServices:4 delegate:v98 delegateQueue:*&v98[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue]];
      v83 = v211;
      v106 = *&v211[v96];
      *&v211[v96] = v105;

      v97 = *&v83[v96];
      v93 = v190;
      if (v97)
      {
LABEL_42:
        v107 = v90;
        v108 = v97;
        if ([v108 start])
        {
          v109 = v83;
          sub_1001192AC();
          v212 = [v108 getState];
          sub_100116DE4(v212, 1);
          sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
          v110 = v196;
          v111 = v195;
          v112 = v197;
          (*(v196 + 104))(v195, enum case for DispatchQoS.QoSClass.default(_:), v197);
          v113 = static OS_dispatch_queue.global(qos:)();
          (*(v110 + 8))(v111, v112);
          v114 = swift_allocObject();
          v115 = v213;
          *(v114 + 16) = v189;
          *(v114 + 24) = v115;
          v220 = sub_1000C795C;
          v221 = v114;
          aBlock = _NSConcreteStackBlock;
          v217 = 1107296256;
          v218 = sub_100020828;
          v219 = &unk_100590998;
          v116 = _Block_copy(&aBlock);

          v213 = v108;
          v117 = v198;
          static DispatchQoS.unspecified.getter();
          v215 = _swiftEmptyArrayStorage;
          sub_10001DFF0(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          sub_10004B564(&unk_1005A9700, &qword_1004C3820);
          sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
          v118 = v199;
          v119 = v203;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v116);

          (*(v202 + 8))(v118, v119);
          (*(v200 + 8))(v117, v201);

          v120 = v109;
          v121 = Logger.logObject.getter();
          v122 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v121, v122))
          {
            v123 = swift_slowAlloc();
            v124 = swift_slowAlloc();
            aBlock = v124;
            *v123 = 136446210;
            *(v123 + 4) = sub_10000D01C(*&v120[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v120[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &aBlock);
            _os_log_impl(&_mh_execute_header, v121, v122, "%{public}s - started dataclient", v123, 0xCu);
            sub_100004984(v124);
          }
        }

        else
        {
          v146 = v189;
          if (((v78 | v93) & 1) == 0)
          {
            v147 = v212;
            v191(v18, enum case for SecureLocationsStewie.ServiceState.unavailable(_:), v212);
            sub_100022084(v18);
            (*(v107 + 8))(v18, v147);
          }

          v148 = v83;
          v149 = Logger.logObject.getter();
          v150 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v149, v150))
          {
            v151 = swift_slowAlloc();
            v152 = swift_slowAlloc();
            aBlock = v152;
            *v151 = 136446210;
            *(v151 + 4) = sub_10000D01C(*&v148[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v148[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &aBlock);
            _os_log_impl(&_mh_execute_header, v149, v150, "%{public}s - start dataclient returned false", v151, 0xCu);
            sub_100004984(v152);
          }

          v153 = v213;
          sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
          v154 = v196;
          v155 = v195;
          v156 = v197;
          (*(v196 + 104))(v195, enum case for DispatchQoS.QoSClass.default(_:), v197);
          v157 = static OS_dispatch_queue.global(qos:)();
          (*(v154 + 8))(v155, v156);
          v158 = swift_allocObject();
          *(v158 + 16) = v146;
          *(v158 + 24) = v153;
          v220 = sub_10011EFD0;
          v221 = v158;
          aBlock = _NSConcreteStackBlock;
          v217 = 1107296256;
          v218 = sub_100020828;
          v219 = &unk_100590948;
          v159 = _Block_copy(&aBlock);

          v160 = v198;
          static DispatchQoS.unspecified.getter();
          v215 = _swiftEmptyArrayStorage;
          sub_10001DFF0(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          sub_10004B564(&unk_1005A9700, &qword_1004C3820);
          sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
          v161 = v199;
          v162 = v203;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();

          _Block_release(v159);
          (*(v202 + 8))(v161, v162);
          (*(v200 + 8))(v160, v201);
        }
      }

      else
      {
        v163 = v98;
        v164 = Logger.logObject.getter();
        v165 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v164, v165))
        {
          v166 = v90;
          v167 = swift_slowAlloc();
          v168 = v18;
          v169 = swift_slowAlloc();
          aBlock = v169;
          *v167 = 136446210;
          *(v167 + 4) = sub_10000D01C(*&v163[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v163[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &aBlock);
          _os_log_impl(&_mh_execute_header, v164, v165, "%{public}s - attempting to start monitor but no data client instance available", v167, 0xCu);
          sub_100004984(v169);
          v18 = v168;

          v90 = v166;
        }

        v170 = v189;
        if (((v78 | v190) & 1) == 0)
        {
          v171 = v212;
          v191(v18, enum case for SecureLocationsStewie.ServiceState.unknown(_:), v212);
          sub_100022084(v18);
          (*(v90 + 8))(v18, v171);
        }

        sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
        v172 = v196;
        v173 = v195;
        v174 = v197;
        (*(v196 + 104))(v195, enum case for DispatchQoS.QoSClass.default(_:), v197);
        v175 = static OS_dispatch_queue.global(qos:)();
        (*(v172 + 8))(v173, v174);
        v176 = swift_allocObject();
        v177 = v213;
        *(v176 + 16) = v170;
        *(v176 + 24) = v177;
        v220 = sub_10011FAE8;
        v221 = v176;
        aBlock = _NSConcreteStackBlock;
        v217 = 1107296256;
        v218 = sub_100020828;
        v219 = &unk_1005908F8;
        v178 = _Block_copy(&aBlock);

        v179 = v198;
        static DispatchQoS.unspecified.getter();
        v215 = _swiftEmptyArrayStorage;
        sub_10001DFF0(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10004B564(&unk_1005A9700, &qword_1004C3820);
        sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
        v180 = v199;
        v181 = v203;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v178);

        (*(v202 + 8))(v180, v181);
        (*(v200 + 8))(v179, v201);
      }
    }

    else
    {
      v191(v18, enum case for SecureLocationsStewie.ServiceState.notSetup(_:), v89);
      sub_100022084(v18);
      (*(v90 + 8))(v18, v89);
      v136 = v83;
      v137 = Logger.logObject.getter();
      v138 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v137, v138))
      {
        v139 = swift_slowAlloc();
        v140 = swift_slowAlloc();
        aBlock = v140;
        *v139 = 136446210;
        *(v139 + 4) = sub_10000D01C(*&v136[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v136[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &aBlock);
        _os_log_impl(&_mh_execute_header, v137, v138, "%{public}s - secureLocations not setup. attempting setup before starting monitor", v139, 0xCu);
        sub_100004984(v140);
      }

      v141 = type metadata accessor for SecureLocationsStewie.Error();
      sub_10001DFF0(&qword_1005A9EF8, &type metadata accessor for SecureLocationsStewie.Error, &protocol conformance descriptor for SecureLocationsStewie.Error);
      v142 = swift_allocError();
      (*(*(v141 - 8) + 104))(v143, enum case for SecureLocationsStewie.Error.initialization(_:), v141);
      v189(v142);

      v144 = v136;

      sub_1000F7FB4(v145, v144);
    }
  }

  else
  {
    v125 = v209;
    v126 = v89;
    v191(v209, enum case for SecureLocationsStewie.ServiceState.unavailableLocationPublish(_:), v89);
    sub_100022084(v125);
    v127 = v83;
    v128 = Logger.logObject.getter();
    v129 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v128, v129))
    {
      v130 = swift_slowAlloc();
      v131 = v90;
      v132 = swift_slowAlloc();
      aBlock = v132;
      *v130 = 136446210;
      *(v130 + 4) = sub_10000D01C(*&v127[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v127[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &aBlock);
      _os_log_impl(&_mh_execute_header, v128, v129, "%{public}s - startMonitoring: not a location publishing device", v130, 0xCu);
      sub_100004984(v132);
      v90 = v131;
    }

    sub_100022950();
    v133 = type metadata accessor for SecureLocationsStewie.Error();
    sub_10001DFF0(&qword_1005A9EF8, &type metadata accessor for SecureLocationsStewie.Error, &protocol conformance descriptor for SecureLocationsStewie.Error);
    v134 = swift_allocError();
    (*(*(v133 - 8) + 104))(v135, enum case for SecureLocationsStewie.Error.cannotPublish(_:), v133);
    v189(v134);

    (*(v90 + 8))(v209, v126);
  }

LABEL_19:
  Transaction.capture()();
}