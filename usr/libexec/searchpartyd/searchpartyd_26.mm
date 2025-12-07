unint64_t sub_1002E6E8C()
{
  result = qword_10169CB68;
  if (!qword_10169CB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CB68);
  }

  return result;
}

unint64_t sub_1002E6EE0()
{
  result = qword_10169CB70;
  if (!qword_10169CB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CB70);
  }

  return result;
}

unint64_t sub_1002E6F34()
{
  result = qword_10169CB98;
  if (!qword_10169CB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CB98);
  }

  return result;
}

unint64_t sub_1002E6F88()
{
  result = qword_10169CBA0;
  if (!qword_10169CBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CBA0);
  }

  return result;
}

unint64_t sub_1002E6FDC()
{
  result = qword_10169CBA8;
  if (!qword_10169CBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CBA8);
  }

  return result;
}

unint64_t sub_1002E7030()
{
  result = qword_10169CBB0;
  if (!qword_10169CBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CBB0);
  }

  return result;
}

void sub_1002E70CC(uint64_t a1)
{
  type metadata accessor for DiscoveredObject(319);
  if (v1 <= 0x3F)
  {
    sub_1002E71C0(319, &unk_10169CC48, type metadata accessor for BeaconDetails);
    if (v2 <= 0x3F)
    {
      sub_1002E71C0(319, &unk_1016C10F0, type metadata accessor for AccessoryMetadata);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1002E71C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1002E723C(uint64_t a1)
{
  result = type metadata accessor for BeaconKeyManager.IndexInformation(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 sub_1002E7318(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1002E732C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 48))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 40) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 40) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1002E7380(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0;
      *(result + 40) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_1002E73F0()
{
  result = qword_10169CD10;
  if (!qword_10169CD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CD10);
  }

  return result;
}

unint64_t sub_1002E7448()
{
  result = qword_10169CD18;
  if (!qword_10169CD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CD18);
  }

  return result;
}

unint64_t sub_1002E74A0()
{
  result = qword_10169CD20;
  if (!qword_10169CD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CD20);
  }

  return result;
}

unint64_t sub_1002E74F8()
{
  result = qword_10169CD28;
  if (!qword_10169CD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CD28);
  }

  return result;
}

unint64_t sub_1002E7550()
{
  result = qword_10169CD30;
  if (!qword_10169CD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CD30);
  }

  return result;
}

unint64_t sub_1002E75A8()
{
  result = qword_10169CD38;
  if (!qword_10169CD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CD38);
  }

  return result;
}

unint64_t sub_1002E7600()
{
  result = qword_10169CD40;
  if (!qword_10169CD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CD40);
  }

  return result;
}

unint64_t sub_1002E7658()
{
  result = qword_10169CD48;
  if (!qword_10169CD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CD48);
  }

  return result;
}

unint64_t sub_1002E76B0()
{
  result = qword_10169CD50;
  if (!qword_10169CD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CD50);
  }

  return result;
}

unint64_t sub_1002E7708()
{
  result = qword_10169CD58;
  if (!qword_10169CD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CD58);
  }

  return result;
}

unint64_t sub_1002E7760()
{
  result = qword_10169CD60;
  if (!qword_10169CD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CD60);
  }

  return result;
}

unint64_t sub_1002E77B8()
{
  result = qword_10169CD68;
  if (!qword_10169CD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CD68);
  }

  return result;
}

unint64_t sub_1002E7810()
{
  result = qword_10169CD70;
  if (!qword_10169CD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CD70);
  }

  return result;
}

unint64_t sub_1002E7868()
{
  result = qword_10169CD78;
  if (!qword_10169CD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CD78);
  }

  return result;
}

unint64_t sub_1002E78C0()
{
  result = qword_10169CD80;
  if (!qword_10169CD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CD80);
  }

  return result;
}

unint64_t sub_1002E7918()
{
  result = qword_10169CD88;
  if (!qword_10169CD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CD88);
  }

  return result;
}

unint64_t sub_1002E7970()
{
  result = qword_10169CD90;
  if (!qword_10169CD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CD90);
  }

  return result;
}

unint64_t sub_1002E79C8()
{
  result = qword_10169CD98;
  if (!qword_10169CD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CD98);
  }

  return result;
}

unint64_t sub_1002E7A20()
{
  result = qword_10169CDA0;
  if (!qword_10169CDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CDA0);
  }

  return result;
}

uint64_t sub_1002E7A74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_10169CBD8, &unk_1013996D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002E7AE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeaconDetails(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002E7B48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002E7BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v6[16] = a3;
  v6[17] = a4;
  v6[14] = a1;
  v6[15] = a2;
  v6[20] = type metadata accessor for OwnerSharingCircle(0);
  v6[21] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v6[22] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v6[23] = v7;
  v6[24] = *(v7 - 8);
  v6[25] = swift_task_alloc();
  v8 = swift_task_alloc();
  v6[26] = v8;
  *v8 = v6;
  v8[1] = sub_1002E7D28;

  return daemon.getter();
}

uint64_t sub_1002E7D28(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[27] = a1;

  v3 = swift_task_alloc();
  v2[28] = v3;
  v4 = type metadata accessor for Daemon();
  v2[29] = v4;
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_1000193D8(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[30] = v6;
  v7 = sub_1000193D8(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_1002E7F08;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1002E7F08(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 248) = a1;
  *(v3 + 256) = v1;

  if (v1)
  {
    v4 = sub_1002E867C;
  }

  else
  {

    v4 = sub_1002E8024;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002E8024()
{
  v1 = v0[31];
  v0[33] = type metadata accessor for SharingCircleKeyManager();
  v2 = swift_allocObject();
  v0[34] = v2;

  swift_defaultActor_initialize();
  type metadata accessor for KeyDropInterface();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v2 + 112) = v3;
  *(v2 + 120) = v1;

  return _swift_task_switch(sub_1002E80E4, v2, 0);
}

uint64_t sub_1002E80E4()
{
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  v0[35] = PropertyListEncoder.init()();
  v1 = swift_task_alloc();
  v0[36] = v1;
  *v1 = v0;
  v1[1] = sub_1002E81A0;
  v2 = v0[15];
  v3 = v0[16];

  return sub_100C7A310(v3, v2);
}

uint64_t sub_1002E81A0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 296) = a1;
  *(v4 + 304) = v1;

  v5 = *(v3 + 272);
  if (v1)
  {
    v6 = sub_1002E83B4;
  }

  else
  {
    v6 = sub_1002E82D4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002E82D4()
{
  v0[12] = v0[37];
  v1 = v0[38];
  sub_1000BC4D4(&qword_10169CDB0, &qword_10139A080);
  sub_1002E9F80();
  v0[39] = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v0[40] = v2;

  if (v1)
  {
    v0[43] = v1;
    v3 = sub_1002E85E8;
  }

  else
  {
    v3 = sub_1002E8424;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002E83B4()
{

  *(v0 + 344) = *(v0 + 304);

  return _swift_task_switch(sub_1002E85E8, 0, 0);
}

uint64_t sub_1002E8424()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 128);
  *(v0 + 328) = type metadata accessor for OwnerPeerTrust(0);
  *(v0 + 480) = *(v1 + 24);
  *(v0 + 336) = sub_1000193D8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of CustomStringConvertible.description.getter();
  v3._countAndFlagsBits = 124;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5 = String.utf8Data.getter();
  v7 = v6;

  *(v0 + 80) = v5;
  *(v0 + 88) = v7;
  sub_1000E0A3C();
  DataProtocol.stableUUID.getter();
  sub_100016590(v5, v7);
  *(v0 + 484) = 0x2020404u >> (8 * *(v2 + *(v1 + 28)));
  v8 = swift_task_alloc();
  *(v0 + 352) = v8;
  *v8 = v0;
  v8[1] = sub_1002E8704;

  return daemon.getter();
}

uint64_t sub_1002E85E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002E867C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002E8704(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 360) = a1;

  v5 = swift_task_alloc();
  *(v3 + 368) = v5;
  v6 = type metadata accessor for FamilyCircleService();
  v7 = sub_1000193D8(&unk_1016AF840, type metadata accessor for FamilyCircleService, &unk_1013E4DC8);
  *v5 = v4;
  v5[1] = sub_1002E88B8;
  v8 = *(v2 + 240);
  v9 = *(v2 + 232);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_1002E88B8(uint64_t a1)
{
  v3 = *v2;
  v3[47] = a1;
  v3[48] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1002E8D68, 0, 0);
  }

  else
  {
    v4 = v3[41];
    v5 = v3[15];

    v6 = *(v4 + 28);
    v7 = swift_task_alloc();
    v3[49] = v7;
    *v7 = v3;
    v7[1] = sub_1002E8A5C;

    return sub_100E8BEF8(v5 + v6);
  }
}

uint64_t sub_1002E8A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *v4;
  *(*v4 + 400) = a3;

  if (v3)
  {
    *(v8 + 432) = v3;
    v10 = sub_1002E9044;
LABEL_3:

    return _swift_task_switch(v10, 0, 0);
  }

  if (!a3)
  {
    v10 = sub_1002E8F34;
    goto LABEL_3;
  }

  v11 = swift_task_alloc();
  *(v8 + 408) = v11;
  *v11 = v9;
  v11[1] = sub_1002E8C2C;

  return sub_100D4E560(a1, a2, a3);
}

uint64_t sub_1002E8C2C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 376);
  *(v4 + 416) = a2;
  *(v4 + 424) = v2;

  if (v2)
  {
    v6 = sub_1002E8EC4;
  }

  else
  {

    v6 = sub_1002E8E48;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002E8D68()
{
  v1 = v0[39];
  v2 = v0[40];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[23];

  sub_100016590(v1, v2);

  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1002E8E48()
{
  if (*(v0 + 416))
  {

    v1 = sub_1002E9118;
  }

  else
  {
    v1 = sub_1002E8F34;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1002E8EC4()
{

  *(v0 + 432) = *(v0 + 424);

  return _swift_task_switch(sub_1002E9044, 0, 0);
}

uint64_t sub_1002E8F34()
{
  (*(v0[24] + 56))(v0[22], 1, 1, v0[23]);
  v1 = sub_10016632C();
  v0[55] = v1;
  v0[13] = v1;
  v2 = swift_task_alloc();
  v0[56] = v2;
  v3 = sub_1000BC4D4(&unk_1016BF350, &unk_1013E4AF0);
  v4 = sub_1002EA0E0();
  *v2 = v0;
  v2[1] = sub_1002E924C;
  v5 = v0[41];
  v6 = v0[31];

  return Sequence.asyncCompactMap<A>(_:)(&unk_10139A090, v6, v3, v5, v4);
}

uint64_t sub_1002E9044()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  sub_100016590(v0[39], v0[40]);

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002E9118()
{
  (*(*(v0 + 192) + 16))(*(v0 + 176), *(v0 + 128) + *(v0 + 480), *(v0 + 184));
  (*(*(v0 + 192) + 56))(*(v0 + 176), 0, 1, *(v0 + 184));
  v1 = sub_10016632C();
  *(v0 + 440) = v1;
  *(v0 + 104) = v1;
  v2 = swift_task_alloc();
  *(v0 + 448) = v2;
  v3 = sub_1000BC4D4(&unk_1016BF350, &unk_1013E4AF0);
  v4 = sub_1002EA0E0();
  *v2 = v0;
  v2[1] = sub_1002E924C;
  v5 = *(v0 + 328);
  v6 = *(v0 + 248);

  return Sequence.asyncCompactMap<A>(_:)(&unk_10139A090, v6, v3, v5, v4);
}

uint64_t sub_1002E924C(uint64_t a1)
{
  *(*v2 + 456) = a1;

  if (v1)
  {
  }

  else
  {

    return _swift_task_switch(sub_1002E938C, 0, 0);
  }
}

uint64_t sub_1002E938C()
{
  v31 = v0;
  v1 = *(v0[57] + 16);
  v2 = sub_10016632C()[2];

  if (v1 == v2)
  {
    v3 = v0[33];
    v0[2] = v0[34];
    v0[5] = v3;
    v0[6] = &off_10164E4F0;

    v4 = swift_task_alloc();
    v0[58] = v4;
    *v4 = v0;
    v4[1] = sub_1002E9758;
    v5 = v0[57];
    v6 = v0[15];
    v7 = v0[16];

    return sub_1002EA200(v7, v5, v6, (v0 + 2));
  }

  else
  {

    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v9 = v0[21];
    v10 = v0[16];
    v11 = type metadata accessor for Logger();
    sub_1000076D4(v11, qword_10177A560);
    sub_1002EB27C(v10, v9, type metadata accessor for OwnerSharingCircle);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = v0[21];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v30 = v16;
      *v15 = 134218755;
      *(v15 + 4) = v1;
      *(v15 + 12) = 2048;
      *(v15 + 14) = v2;
      *(v15 + 22) = 2160;
      *(v15 + 24) = 1752392040;
      *(v15 + 32) = 2081;
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      sub_1002EB2E4(v14, type metadata accessor for OwnerSharingCircle);
      v20 = sub_1000136BC(v17, v19, &v30);

      *(v15 + 34) = v20;
      _os_log_impl(&_mh_execute_header, v12, v13, "Peer trusts count %ld is not equal to sharing circles members count %ld, %{private,mask.hash}s!!", v15, 0x2Au);
      sub_100007BAC(v16);
    }

    else
    {
      v21 = v0[21];

      sub_1002EB2E4(v21, type metadata accessor for OwnerSharingCircle);
    }

    v23 = v0[39];
    v22 = v0[40];
    v24 = v0[24];
    v25 = v0[22];
    v28 = v0[23];
    v29 = v0[25];
    sub_1002EA144();
    swift_allocError();
    *v26 = 0;
    swift_willThrow();
    sub_100016590(v23, v22);

    sub_1002EA198(v25);
    (*(v24 + 8))(v29, v28);

    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_1002E9758(uint64_t a1)
{
  v3 = *v2;
  v3[7] = v2;
  v3[8] = a1;
  v3[9] = v1;
  v3[59] = v1;

  if (v1)
  {
    v4 = sub_1002E9B20;
  }

  else
  {
    sub_100007BAC(v3 + 2);
    v4 = sub_1002E988C;
  }

  return _swift_task_switch(v4, 0, 0);
}

int *sub_1002E988C()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 184);
  v39 = *(v0 + 200);
  v40 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = *(v0 + 136);
  v5 = *(v0 + 144);
  v6 = *(v0 + 128);
  v7 = *(v0 + 112);

  (*(v1 + 16))(v7, v6 + *(v3 + 20), v2);
  v8 = type metadata accessor for CircleTrustEnvelopeV1(0);
  sub_100015794(v4, v7 + v8[5]);
  (*(v1 + 32))(v7 + v8[6], v39, v2);
  sub_10012C154(v40, v7 + v8[7]);
  result = type metadata accessor for OwnedBeaconRecord(0);
  v10 = *(v5 + result[16]);
  if (v10 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v10 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = *(*(v0 + 144) + result[17]);
  if (v11 < 0xFFFFFFFF80000000)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v11 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v12 = (v5 + result[14]);
  v13 = *v12;
  v14 = v12[1];
  v15 = (v5 + result[15]);
  v17 = *v15;
  v16 = v15[1];
  v38 = *(v0 + 484);
  v36 = *(v0 + 320);
  v37 = *(v0 + 64);
  v34 = v13;
  v35 = *(v0 + 312);
  v18 = *(v0 + 152);
  v19 = *(v0 + 112);
  v20 = type metadata accessor for BeaconNamingRecord(0);
  v21 = (v18 + v20[8]);
  v22 = *v21;
  v23 = v21[1];
  v24 = *(v18 + v20[7]);
  v25 = (v18 + v20[9]);
  v27 = *v25;
  v26 = v25[1];
  v28 = (v19 + v8[8]);
  *v28 = v34;
  v28[1] = v14;
  v29 = (v19 + v8[9]);
  *v29 = v17;
  v29[1] = v16;
  *(v19 + v8[10]) = v10;
  *(v19 + v8[11]) = v11;
  v30 = (v19 + v8[12]);
  *v30 = v22;
  v30[1] = v23;
  *(v19 + v8[13]) = v24;
  v31 = (v19 + v8[14]);
  *v31 = v27;
  v31[1] = v26;
  v32 = (v19 + v8[15]);
  *v32 = v35;
  v32[1] = v36;
  *(v19 + v8[16]) = v37;
  *(v19 + v8[17]) = v38;

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_1002E9B20()
{
  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  sub_100016590(v0[39], v0[40]);

  sub_1002EA198(v4);
  (*(v2 + 8))(v1, v3);
  sub_100007BAC(v0 + 2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1002E9C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v5 = type metadata accessor for UUID();
  v3[5] = v5;
  v6 = *(v5 - 8);
  v3[6] = v6;
  v3[7] = *(v6 + 64);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_1002E9CDC, a3, 0);
}

uint64_t sub_1002E9CDC()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  (*(v3 + 16))(v1, v0[3], v2);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[9] = v6;
  *(v6 + 16) = v4;
  (*(v3 + 32))(v6 + v5, v1, v2);

  v7 = swift_task_alloc();
  v0[10] = v7;
  v8 = sub_1000BC4D4(&qword_101697798, &unk_10138C4F0);
  *v7 = v0;
  v7[1] = sub_1002E9E50;
  v9 = v0[2];

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_1002EB3A8, v6, v8);
}

uint64_t sub_1002E9E50()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1002E9F80()
{
  result = qword_10169CDB8;
  if (!qword_10169CDB8)
  {
    sub_1000BC580(&qword_10169CDB0, &qword_10139A080);
    sub_1000193D8(&qword_10169CDC0, type metadata accessor for KeyDropInterface.KeyPackage, &unk_10140EB78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CDB8);
  }

  return result;
}

uint64_t sub_1002EA034(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014650;

  return sub_1002E9C0C(a1, a2, v2);
}

unint64_t sub_1002EA0E0()
{
  result = qword_10169CDC8;
  if (!qword_10169CDC8)
  {
    sub_1000BC580(&unk_1016BF350, &unk_1013E4AF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CDC8);
  }

  return result;
}

unint64_t sub_1002EA144()
{
  result = qword_10169CDD0;
  if (!qword_10169CDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CDD0);
  }

  return result;
}

uint64_t sub_1002EA198(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002EA200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for PeerTrustEnvelopeV1(0);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v7 = type metadata accessor for OwnerPeerTrust(0);
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();

  return _swift_task_switch(sub_1002EA388, 0, 0);
}

uint64_t sub_1002EA388()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  *(v0 + 128) = v2;
  v3 = *(v0 + 120);
  if (v2)
  {
    v4 = *(v0 + 112);
    v5 = *(v0 + 32);
    *(v0 + 136) = *v5;
    *(v0 + 144) = v5[1];
    LODWORD(v5) = *(v4 + 80);
    *(v0 + 232) = v5;
    v6 = (v5 + 32) & ~v5;
    v7 = type metadata accessor for OwnerSharingCircle(0);
    *(v0 + 152) = v7;
    *(v0 + 236) = *(v7 + 20);
    v8 = *(v4 + 72);
    *(v0 + 168) = 0;
    *(v0 + 176) = _swiftEmptyArrayStorage;
    *(v0 + 160) = v8;
    result = sub_1002EB27C(v1 + v6, v3, type metadata accessor for OwnerPeerTrust);
    v10 = *v3;
    v11 = *(v3 + 8);
    v12 = v11 >> 62;
    if (v11 >> 62 == 3)
    {
      v13 = *(v0 + 136);
      if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(v10, xmmword_10138C660), vceqq_s64(v13, xmmword_10138C660))))) & 1) == 0)
      {
        v14 = 0;
        if (v13.i64[1] >> 62 == 3)
        {
          goto LABEL_32;
        }

        goto LABEL_18;
      }

LABEL_17:
      v14 = 0;
      goto LABEL_18;
    }

    if (v12)
    {
      if (v12 != 1)
      {
        v16 = *(v10.i64[0] + 16);
        v17 = *(v10.i64[0] + 24);
        v18 = __OFSUB__(v17, v16);
        v14 = v17 - v16;
        if (!v18)
        {
          goto LABEL_18;
        }

        __break(1u);
        goto LABEL_17;
      }

      LODWORD(v14) = v10.i32[1] - v10.i32[0];
      if (__OFSUB__(v10.i32[1], v10.i32[0]))
      {
        goto LABEL_82;
      }

      v14 = v14;
    }

    else
    {
      v14 = BYTE6(v11);
    }

LABEL_18:
    v19 = *(v0 + 144);
    v20 = v19 >> 62;
    if ((v19 >> 62) > 1)
    {
      if (v20 != 2)
      {
        if (v14)
        {
          goto LABEL_71;
        }

LABEL_32:
        if ((static UUID.== infix(_:_:)() & 1) == 0)
        {
          goto LABEL_71;
        }

        v28 = *(v0 + 120);
        v29 = *(v0 + 104);
        v30 = *(v0 + 32);
        if (*(v28 + *(v29 + 24)) != *(v30 + *(v29 + 24)) || (sub_10098BFC0(v28 + *(v29 + 28), v30 + *(v29 + 28)) & 1) == 0)
        {
          goto LABEL_71;
        }

        v31 = *(v0 + 120);
        v32 = *(v0 + 104);
        v33 = *(v0 + 32);
        v34 = v32[8];
        result = *(v31 + v34);
        v35 = *(v31 + v34 + 8);
        v36 = (v33 + v34);
        if (result != *v36 || v35 != v36[1])
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            goto LABEL_71;
          }

          v31 = *(v0 + 120);
          v32 = *(v0 + 104);
          v33 = *(v0 + 32);
        }

        v37 = v32[9];
        v38 = (v31 + v37);
        v40 = *(v31 + v37);
        v39 = *(v31 + v37 + 8);
        v41 = (v33 + v37);
        v42 = *v41;
        v43 = v41[1];
        v44 = v39 >> 62;
        v45 = v43 >> 62;
        if (v39 >> 62 == 3)
        {
          v46 = 0;
          if (!v40 && v39 == 0xC000000000000000 && v43 >> 62 == 3)
          {
            v46 = 0;
            if (!v42 && v43 == 0xC000000000000000)
            {
LABEL_68:
              if (*(v31 + v32[10]) == *(v33 + v32[10]))
              {
                v54 = *v38;
                v53 = v38[1];
                sub_100017D5C(*v38, v53);
                v55 = &qword_10177A8F0;
                if (qword_101694558 != -1)
                {
                  swift_once();
                }

                goto LABEL_75;
              }

LABEL_71:
              v56 = *(v0 + 152);
              v57 = *(v0 + 16);
              type metadata accessor for __DataStorage();
              swift_allocObject();
              v53 = __DataStorage.init(length:)() | 0x4000000000000000;
              v58 = *(v57 + *(v56 + 32));
              if (!*(v58 + 16) || (v59 = sub_1000210EC(*(v0 + 120) + *(*(v0 + 104) + 20)), (v60 & 1) == 0) || *(*(v58 + 56) + v59) != 1)
              {
                v61 = 0;
                v54 = 0x2000000000;
                v62 = 0xE000000000000000;
                goto LABEL_77;
              }

              v55 = (*(v0 + 120) + *(*(v0 + 104) + 32));
              v54 = 0x2000000000;
LABEL_75:
              v61 = *v55;

LABEL_77:
              *(v0 + 200) = v54;
              *(v0 + 208) = v53;
              *(v0 + 184) = v61;
              *(v0 + 192) = v62;
              v63 = *(v0 + 236);
              v64 = *(v0 + 16);
              sub_1000035D0(*(v0 + 40), *(*(v0 + 40) + 24));
              v65 = swift_task_alloc();
              *(v0 + 216) = v65;
              *v65 = v0;
              v65[1] = sub_1002EA984;
              v66 = *(v0 + 120);
              v67 = *(v0 + 96);

              return sub_100C78964(v67, v66, v64 + v63);
            }
          }

          goto LABEL_54;
        }

        if (v44 == 2)
        {
          v48 = *(v40 + 16);
          v47 = *(v40 + 24);
          v18 = __OFSUB__(v47, v48);
          v46 = v47 - v48;
          if (!v18)
          {
            goto LABEL_54;
          }

          __break(1u);
        }

        else if (v44 == 1)
        {
          LODWORD(v46) = HIDWORD(v40) - v40;
          if (__OFSUB__(HIDWORD(v40), v40))
          {
LABEL_84:
            __break(1u);
            return result;
          }

          v46 = v46;
          goto LABEL_54;
        }

        v46 = BYTE6(v39);
LABEL_54:
        if (v45 > 1)
        {
          if (v45 != 2)
          {
            if (v46)
            {
              goto LABEL_71;
            }

            goto LABEL_68;
          }

          v51 = *(v42 + 16);
          v50 = *(v42 + 24);
          v18 = __OFSUB__(v50, v51);
          v49 = v50 - v51;
          if (!v18)
          {
            goto LABEL_63;
          }

          __break(1u);
        }

        else if (!v45)
        {
          v49 = BYTE6(v43);
          goto LABEL_63;
        }

        LODWORD(v49) = HIDWORD(v42) - v42;
        if (!__OFSUB__(HIDWORD(v42), v42))
        {
          v49 = v49;
LABEL_63:
          if (v46 != v49)
          {
            goto LABEL_71;
          }

          if (v46 >= 1)
          {
            sub_100017D5C(v42, v43);
            sub_100017D5C(v42, v43);
            sub_100017D5C(v40, v39);
            v52 = sub_100F0B1BC(v40, v39, v42, v43);
            sub_100016590(v42, v43);
            sub_100016590(v40, v39);
            if ((v52 & 1) == 0)
            {
              goto LABEL_71;
            }

            v31 = *(v0 + 120);
            v32 = *(v0 + 104);
            v33 = *(v0 + 32);
          }

          goto LABEL_68;
        }

        goto LABEL_83;
      }

      v21 = *(*(v0 + 136) + 16);
      v22 = *(*(v0 + 136) + 24);
      v18 = __OFSUB__(v22, v21);
      v23 = v22 - v21;
      if (!v18)
      {
        if (v14 != v23)
        {
          goto LABEL_71;
        }

        goto LABEL_28;
      }

      __break(1u);
    }

    else
    {
      if (!v20)
      {
        if (v14 != BYTE6(v19))
        {
          goto LABEL_71;
        }

LABEL_28:
        if (v14 >= 1)
        {
          v27 = *(v0 + 136);
          v68 = v10.i64[0];
          sub_100017D5C(v27, *(v0 + 144));
          if ((sub_100F0B1BC(v68, v11, v27, v19) & 1) == 0)
          {
            goto LABEL_71;
          }
        }

        goto LABEL_32;
      }

      v24 = *(v0 + 136);
      v25 = *(v0 + 140);
      v18 = __OFSUB__(v25, v24);
      v26 = v25 - v24;
      if (!v18)
      {
        if (v14 != v26)
        {
          goto LABEL_71;
        }

        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v15 = *(v0 + 8);

  return v15(_swiftEmptyArrayStorage);
}

uint64_t sub_1002EA984()
{
  *(*v1 + 224) = v0;

  if (v0)
  {

    v2 = sub_1002EB1C8;
  }

  else
  {
    v2 = sub_1002EAAAC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002EAAAC()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v5 = *(v0 + 72);
  v6 = *(v0 + 64);
  v7 = *(v0 + 48);
  (*(*(v0 + 88) + 16))(v5, *(v0 + 96), *(v0 + 80));
  v8 = (v5 + *(v7 + 20));
  *v8 = v4;
  v8[1] = v3;
  v9 = (v5 + *(v7 + 24));
  *v9 = v2;
  v9[1] = v1;
  sub_1002EB27C(v5, v6, type metadata accessor for PeerTrustEnvelopeV1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v0 + 176);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_100A5BFB8(0, v11[2] + 1, 1, *(v0 + 176));
  }

  v13 = v11[2];
  v12 = v11[3];
  if (v13 >= v12 >> 1)
  {
    v11 = sub_100A5BFB8((v12 > 1), v13 + 1, 1, v11);
  }

  v82 = *(v0 + 120);
  v83 = *(v0 + 128);
  v15 = *(v0 + 88);
  v14 = *(v0 + 96);
  v16 = *(v0 + 80);
  v17 = *(v0 + 56);
  v18 = *(v0 + 64);
  v19 = *(v0 + 168) + 1;
  sub_1002EB2E4(*(v0 + 72), type metadata accessor for PeerTrustEnvelopeV1);
  (*(v15 + 8))(v14, v16);
  v11[2] = v13 + 1;
  sub_1002EB344(v18, v11 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v13);
  sub_1002EB2E4(v82, type metadata accessor for OwnerPeerTrust);
  if (v19 == v83)
  {

    v20 = *(v0 + 8);

    return v20(v11);
  }

  v22 = *(v0 + 160);
  v23 = *(v0 + 168) + 1;
  *(v0 + 168) = v23;
  *(v0 + 176) = v11;
  v24 = *(v0 + 120);
  result = sub_1002EB27C(*(v0 + 24) + ((*(v0 + 232) + 32) & ~*(v0 + 232)) + v22 * v23, v24, type metadata accessor for OwnerPeerTrust);
  v25 = *v24;
  v26 = *(v24 + 8);
  v27 = v26 >> 62;
  if (v26 >> 62 == 3)
  {
    v28 = 0;
    v29 = *(v0 + 136);
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(v25, xmmword_10138C660), vceqq_s64(v29, xmmword_10138C660))))) & 1) == 0 && v29.i64[1] >> 62 == 3)
    {
      goto LABEL_33;
    }
  }

  else if (v27)
  {
    if (v27 == 1)
    {
      LODWORD(v28) = v25.i32[1] - v25.i32[0];
      if (__OFSUB__(v25.i32[1], v25.i32[0]))
      {
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      v28 = v28;
    }

    else
    {
      v30 = *(v25.i64[0] + 16);
      v31 = *(v25.i64[0] + 24);
      v32 = __OFSUB__(v31, v30);
      v28 = v31 - v30;
      if (v32)
      {
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }
    }
  }

  else
  {
    v28 = BYTE6(v26);
  }

  v33 = *(v0 + 144);
  v34 = v33 >> 62;
  if ((v33 >> 62) <= 1)
  {
    if (!v34)
    {
      if (v28 != BYTE6(v33))
      {
        goto LABEL_72;
      }

      goto LABEL_29;
    }

    v38 = *(v0 + 136);
    v39 = *(v0 + 140);
    v32 = __OFSUB__(v39, v38);
    v40 = v39 - v38;
    if (!v32)
    {
      if (v28 != v40)
      {
        goto LABEL_72;
      }

LABEL_29:
      if (v28 >= 1)
      {
        v41 = *(v0 + 136);
        v84 = v25.i64[0];
        sub_100017D5C(v41, *(v0 + 144));
        if ((sub_100F0B1BC(v84, v26, v41, v33) & 1) == 0)
        {
          goto LABEL_72;
        }
      }

      goto LABEL_33;
    }

    goto LABEL_82;
  }

  if (v34 == 2)
  {
    v35 = *(*(v0 + 136) + 16);
    v36 = *(*(v0 + 136) + 24);
    v32 = __OFSUB__(v36, v35);
    v37 = v36 - v35;
    if (!v32)
    {
      if (v28 != v37)
      {
        goto LABEL_72;
      }

      goto LABEL_29;
    }

    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  if (v28)
  {
    goto LABEL_72;
  }

LABEL_33:
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_72;
  }

  v42 = *(v0 + 120);
  v43 = *(v0 + 104);
  v44 = *(v0 + 32);
  if (*(v42 + *(v43 + 24)) != *(v44 + *(v43 + 24)) || (sub_10098BFC0(v42 + *(v43 + 28), v44 + *(v43 + 28)) & 1) == 0)
  {
    goto LABEL_72;
  }

  v45 = *(v0 + 120);
  v46 = *(v0 + 104);
  v47 = *(v0 + 32);
  v48 = v46[8];
  result = *(v45 + v48);
  v49 = *(v45 + v48 + 8);
  v50 = (v47 + v48);
  if (result != *v50 || v49 != v50[1])
  {
    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    if ((result & 1) == 0)
    {
      goto LABEL_72;
    }

    v45 = *(v0 + 120);
    v46 = *(v0 + 104);
    v47 = *(v0 + 32);
  }

  v51 = v46[9];
  v52 = (v45 + v51);
  v54 = *(v45 + v51);
  v53 = *(v45 + v51 + 8);
  v55 = (v47 + v51);
  v56 = *v55;
  v57 = v55[1];
  v58 = v53 >> 62;
  v59 = v57 >> 62;
  if (v53 >> 62 != 3)
  {
    if (v58 == 2)
    {
      v62 = *(v54 + 16);
      v61 = *(v54 + 24);
      v32 = __OFSUB__(v61, v62);
      v60 = v61 - v62;
      if (!v32)
      {
        goto LABEL_55;
      }

      __break(1u);
    }

    else if (v58 == 1)
    {
      LODWORD(v60) = HIDWORD(v54) - v54;
      if (__OFSUB__(HIDWORD(v54), v54))
      {
LABEL_86:
        __break(1u);
        return result;
      }

      v60 = v60;
      goto LABEL_55;
    }

    v60 = BYTE6(v53);
LABEL_55:
    if (v59 > 1)
    {
      if (v59 != 2)
      {
        if (v60)
        {
          goto LABEL_72;
        }

        goto LABEL_69;
      }

      v65 = *(v56 + 16);
      v64 = *(v56 + 24);
      v32 = __OFSUB__(v64, v65);
      v63 = v64 - v65;
      if (!v32)
      {
        goto LABEL_64;
      }

      __break(1u);
    }

    else if (!v59)
    {
      v63 = BYTE6(v57);
      goto LABEL_64;
    }

    LODWORD(v63) = HIDWORD(v56) - v56;
    if (!__OFSUB__(HIDWORD(v56), v56))
    {
      v63 = v63;
LABEL_64:
      if (v60 != v63)
      {
        goto LABEL_72;
      }

      if (v60 >= 1)
      {
        sub_100017D5C(v56, v57);
        sub_100017D5C(v56, v57);
        sub_100017D5C(v54, v53);
        v66 = sub_100F0B1BC(v54, v53, v56, v57);
        sub_100016590(v56, v57);
        sub_100016590(v54, v53);
        if ((v66 & 1) == 0)
        {
          goto LABEL_72;
        }

        v45 = *(v0 + 120);
        v46 = *(v0 + 104);
        v47 = *(v0 + 32);
      }

      goto LABEL_69;
    }

    goto LABEL_85;
  }

  v60 = 0;
  if (v54)
  {
    goto LABEL_55;
  }

  if (v53 != 0xC000000000000000)
  {
    goto LABEL_55;
  }

  if (v57 >> 62 != 3)
  {
    goto LABEL_55;
  }

  v60 = 0;
  if (v56 || v57 != 0xC000000000000000)
  {
    goto LABEL_55;
  }

LABEL_69:
  if (*(v45 + v46[10]) == *(v47 + v46[10]))
  {
    v68 = *v52;
    v67 = v52[1];
    sub_100017D5C(*v52, v67);
    v69 = &qword_10177A8F0;
    if (qword_101694558 != -1)
    {
      swift_once();
    }

    goto LABEL_76;
  }

LABEL_72:
  v70 = *(v0 + 152);
  v71 = *(v0 + 16);
  type metadata accessor for __DataStorage();
  swift_allocObject();
  v67 = __DataStorage.init(length:)() | 0x4000000000000000;
  v72 = *(v71 + *(v70 + 32));
  if (!*(v72 + 16) || (v73 = sub_1000210EC(*(v0 + 120) + *(*(v0 + 104) + 20)), (v74 & 1) == 0) || *(*(v72 + 56) + v73) != 1)
  {
    v75 = 0;
    v68 = 0x2000000000;
    v76 = 0xE000000000000000;
    goto LABEL_78;
  }

  v69 = (*(v0 + 120) + *(*(v0 + 104) + 32));
  v68 = 0x2000000000;
LABEL_76:
  v75 = *v69;

LABEL_78:
  *(v0 + 200) = v68;
  *(v0 + 208) = v67;
  *(v0 + 184) = v75;
  *(v0 + 192) = v76;
  v77 = *(v0 + 236);
  v78 = *(v0 + 16);
  sub_1000035D0(*(v0 + 40), *(*(v0 + 40) + 24));
  v79 = swift_task_alloc();
  *(v0 + 216) = v79;
  *v79 = v0;
  v79[1] = sub_1002EA984;
  v80 = *(v0 + 120);
  v81 = *(v0 + 96);

  return sub_100C78964(v81, v80, v78 + v77);
}

uint64_t sub_1002EB1C8()
{
  v1 = v0[15];
  sub_100016590(v0[25], v0[26]);
  sub_1002EB2E4(v1, type metadata accessor for OwnerPeerTrust);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1002EB27C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002EB2E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002EB344(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerTrustEnvelopeV1(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002EB3A8()
{
  type metadata accessor for UUID();

  return sub_100E6E99C();
}

unint64_t sub_1002EB430()
{
  result = qword_10169CDD8;
  if (!qword_10169CDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CDD8);
  }

  return result;
}

uint64_t sub_1002EB484@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101073BA8(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1002EB4B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073BC0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1002EB4E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10107406C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1002EB50C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10107416C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1002EB538(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

BOOL sub_1002EB5E4(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(type metadata accessor for OwnerSharingCircle(0) - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) == 0);
  return v7 != v8;
}

uint64_t sub_1002EB6B8(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = v7;
      v9 = *v6++;
      v12 = v9;
      sub_100017D5C(v9, *(&v9 + 1));
      v10 = a1(&v12);
      sub_100016590(v12, *(&v12 + 1));
      LOBYTE(v4) = (v3 != 0) | v10;
      if ((v3 != 0) | v10 & 1)
      {
        break;
      }

      v7 = v8 - 1;
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t sub_1002EB768(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1002EB810(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_1002EB938()
{
  v0 = type metadata accessor for ThrottledDarwinPoster();
  sub_100044B3C(v0, qword_10177A878);
  sub_1000076D4(v0, qword_10177A878);
  v1 = SPFinderStateChangedNotification;
  return ThrottledDarwinPoster.init(name:rateLimit:)();
}

uint64_t sub_1002EB9A0(char *a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  static DispatchWorkItemFlags.barrier.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = sub_1002EF86C;
  *(v14 + 32) = v13;
  *(v14 + 40) = 514;
  *(v14 + 42) = v12;
  aBlock[4] = sub_1002EFAEC;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101617000;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
}

void sub_1002EBC18(uint64_t a1, char a2)
{
  if (a1)
  {
    v2 = static os_log_type_t.error.getter();
    if (qword_101695008 != -1)
    {
      swift_once();
    }

    v3 = qword_10177C340;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_101385D80;
    swift_errorRetain();
    sub_1000BC4D4(&unk_101696AD0, &qword_10139A2E0);
    v5 = String.init<A>(describing:)();
    v7 = v6;
    *(v4 + 56) = &type metadata for String;
    *(v4 + 64) = sub_100008C00();
    *(v4 + 32) = v5;
    *(v4 + 40) = v7;
    os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v3, "FinderStateManager: Failed updateFinderStateInfo, optInScreenOffScan %@", 71, 2, v4);
  }

  else
  {
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v9 = swift_allocObject();
    v10 = v9;
    *(v9 + 16) = xmmword_101385D80;
    v11 = (a2 & 1) == 0;
    if (a2)
    {
      v12 = 1702195828;
    }

    else
    {
      v12 = 0x65736C6166;
    }

    if (v11)
    {
      v13 = 0xE500000000000000;
    }

    else
    {
      v13 = 0xE400000000000000;
    }

    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_100008C00();
    *(v10 + 32) = v12;
    *(v10 + 40) = v13;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v15 = static OS_os_log.default.getter();
    v14 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("FinderStateManager: Completed updateFinderStateInfo, optInScreenOffScan %@", 74, 2, &_mh_execute_header, v15, v14, v10);
  }
}

uint64_t sub_1002EBE38@<X0>(_BYTE *a1@<X8>)
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v2 = sub_101073BA8(v10);
  v3 = sub_101073BC0(v10);

  v5 = v3 != -1;
  LOBYTE(v3) = sub_1002EE66C(v4);
  sub_10030E438();
  v7 = v6;
  v8 = type metadata accessor for FinderStateInfo(0);
  sub_1012BAD7C(v7, &a1[*(v8 + 28)]);

  result = sub_10030D994(&a1[*(v8 + 32)]);
  *a1 = v2 & 1;
  a1[1] = v3 & 1;
  a1[2] = v5;
  return result;
}

uint64_t sub_1002EBF64@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for FinderStateInfo(0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch_assert_queue_V2(*(a1 + 16));

  v9 = sub_100ED3BBC(v8);
  v11 = sub_100ED312C(v9, v10 & 0x10101);

  v13 = sub_1002EE66C(v12);
  sub_1002EBE38(v7);
  v14 = v7[2];
  sub_1000DD708(v7);
  sub_10030E438();
  sub_1012BAD7C(v15, &a2[*(v5 + 36)]);

  result = sub_10030D994(&a2[*(v5 + 40)]);
  *a2 = v11 & 1;
  a2[1] = v13 & 1;
  a2[2] = v14;
  return result;
}

uint64_t sub_1002EC088(uint64_t a1)
{
  v2 = v1;
  v36[0] = a1;
  v3 = sub_1000BC4D4(&qword_1016B28A0, &unk_101393D00);
  __chkstk_darwin(v3 - 8);
  v40 = v36 - v4;
  v5 = sub_1000BC4D4(&qword_10169D038, &unk_10139A2D0);
  __chkstk_darwin(v5 - 8);
  v39 = v36 - v6;
  v7 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v7 - 8);
  v38 = v36 - v8;
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v12 + 104))(v14, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v11);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100003D6C(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v1 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v15 = OBJC_IVAR____TtC12searchpartyd18FinderStateManager_configurationSubscription;
  v16 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v36[1] = v17 + 56;
  v37 = v18;
  v18(v2 + v15, 1, 1, v16);
  v19 = OBJC_IVAR____TtC12searchpartyd18FinderStateManager_fmipStateSubscription;
  v20 = sub_1000BC4D4(&qword_101697E00, &qword_10139A1B0);
  v21 = *(*(v20 - 8) + 56);
  v21(v2 + v19, 1, 1, v20);
  *(v2 + OBJC_IVAR____TtC12searchpartyd18FinderStateManager_cancellable) = 0;
  *(v2 + OBJC_IVAR____TtC12searchpartyd18FinderStateManager_beaconFindMyAccessoryAssociatedPublisher) = 0;
  v22 = v36[0];
  *(v2 + OBJC_IVAR____TtC12searchpartyd18FinderStateManager_fmipStateManager) = v36[0];
  v23 = objc_allocWithZone(FMStateCapture);
  swift_retain_n();
  v24 = [v23 init];
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1002EF88C;
  *(v25 + 24) = v22;
  v43 = sub_1002EF894;
  v44 = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10015013C;
  v42 = &unk_101617050;
  v26 = _Block_copy(aBlock);

  [v24 setStateCaptureBlock:v26];
  _Block_release(v26);

  *(v2 + OBJC_IVAR____TtC12searchpartyd18FinderStateManager_stateCapture) = v24;
  v27 = type metadata accessor for TaskPriority();
  v28 = v38;
  (*(*(v27 - 8) + 56))(v38, 1, 1, v27);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = v2;

  sub_10025EDD4(0, 0, v28, &unk_10139A2F0, v29);

  v30 = type metadata accessor for FinderStateManager(0);
  v42 = v30;
  v43 = &off_101616E58;
  aBlock[0] = v2;

  v31 = v39;
  sub_1004F33B4(aBlock, v39);
  sub_100007BAC(aBlock);
  v21(v31, 0, 1, v20);
  v32 = OBJC_IVAR____TtC12searchpartyd18FinderStateManager_fmipStateSubscription;
  swift_beginAccess();
  sub_10002311C(v31, v2 + v32, &qword_10169D038, &unk_10139A2D0);
  swift_endAccess();
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v42 = v30;
  v43 = &off_101616E20;
  aBlock[0] = v2;

  v33 = v40;
  sub_10014F468(aBlock, v40);

  sub_100007BAC(aBlock);
  v37(v33, 0, 1, v16);
  v34 = OBJC_IVAR____TtC12searchpartyd18FinderStateManager_configurationSubscription;
  swift_beginAccess();
  sub_10002311C(v33, v2 + v34, &qword_1016B28A0, &unk_101393D00);
  swift_endAccess();
  return v2;
}

uint64_t sub_1002EC7C4@<X0>(uint64_t a2@<X8>)
{

  result = sub_100ED3BBC(v3);
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  *(a2 + 9) = v6 & 1;
  *(a2 + 10) = v7 & 1;
  return result;
}

uint64_t sub_1002EC808()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_1002EE954();
}

uint64_t sub_1002EC894()
{
  v1 = v0;
  v2 = sub_1000BC4D4(&qword_101697E00, &qword_10139A1B0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-v4];
  v6 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13[-v8];
  v10 = OBJC_IVAR____TtC12searchpartyd18FinderStateManager_configurationSubscription;
  swift_beginAccess();
  if (!(*(v7 + 48))(v1 + v10, 1, v6))
  {
    (*(v7 + 16))(v9, v1 + v10, v6);
    Subscription.unsubscribe(completion:)();
    (*(v7 + 8))(v9, v6);
  }

  v11 = OBJC_IVAR____TtC12searchpartyd18FinderStateManager_fmipStateSubscription;
  swift_beginAccess();
  if (!(*(v3 + 48))(v1 + v11, 1, v2))
  {
    (*(v3 + 16))(v5, v1 + v11, v2);
    Subscription.unsubscribe(completion:)();
    (*(v3 + 8))(v5, v2);
  }

  sub_10000B3A8(v1 + v10, &qword_1016B28A0, &unk_101393D00);
  sub_10000B3A8(v1 + v11, &qword_10169D038, &unk_10139A2D0);

  return v1;
}

uint64_t sub_1002ECB84(uint64_t result)
{
  if (result)
  {
    swift_errorRetain();
    v1 = static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_101385D80;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v3 = String.init<A>(describing:)();
    v5 = v4;
    *(v2 + 56) = &type metadata for String;
    *(v2 + 64) = sub_100008C00();
    *(v2 + 32) = v3;
    *(v2 + 40) = v5;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v6 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v1, &_mh_execute_header, v6, "FinderStateManager could not unsubscribe %@", 43, 2, v2);
  }

  return result;
}

uint64_t sub_1002ECCAC()
{
  sub_1002EC894();

  return swift_deallocClassInstance();
}

void sub_1002ECD2C(uint64_t a1)
{
  sub_1002ECE54(319, &qword_10169A430, &qword_1016B1E70, &qword_10138CDB0);
  if (v1 <= 0x3F)
  {
    sub_1002ECE54(319, &unk_10169CE38, &qword_101697E00, &qword_10139A1B0);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1002ECE54(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1000BC580(a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1002ECEF0(uint64_t a1)
{
  sub_100157BAC(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1002ECF7C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return DarwinNotification.Listener.run()();
}

uint64_t sub_1002ED010(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, unsigned __int8 a5, unsigned __int8 a6)
{
  v8 = a4;
  v11 = a4;
  v12 = type metadata accessor for FinderStateInfo(0);
  v13 = __chkstk_darwin(v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v20 - v16;
  sub_1002EBE38(v15);
  if (v11 == 2)
  {
    v8 = *v15;
  }

  if (a5 == 2)
  {
    a5 = v15[2];
  }

  if (a6 == 2)
  {
    a6 = v15[1];
  }

  sub_10030E438();
  sub_1012BAD7C(v18, &v17[*(v12 + 28)]);

  sub_10030D994(&v17[*(v12 + 32)]);
  sub_1000DD708(v15);
  *v17 = v8 & 1;
  v17[1] = a6 & 1;
  v17[2] = a5 & 1;
  sub_1002EF3D8(v17, a2, a3);
  return sub_1000DD708(v17);
}

void sub_1002ED18C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5)
{
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v7 = static OS_os_log.default.getter();
  v8 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)(a4, a5, 2, &_mh_execute_header, v7, v8, _swiftEmptyArrayStorage);

  if (qword_101694530 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for ThrottledDarwinPoster();
  sub_1000076D4(v9, qword_10177A878);
  ThrottledDarwinPoster.post(bypassRateLimit:)(0);
  if (v10)
  {
  }
}

uint64_t sub_1002ED294(void (*a1)(id, void), uint64_t a2)
{
  v56 = a2;
  v57 = a1;
  v3 = type metadata accessor for FinderStateInfo(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v51[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v7 = __chkstk_darwin(v6 - 8);
  v59 = &v51[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v53 = &v51[-v9];
  v58 = type metadata accessor for Date();
  v10 = *(v58 - 8);
  __chkstk_darwin(v58);
  v12 = &v51[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v54 = v2;

  v14 = sub_100ED3BBC(v13);
  v16 = v15;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v17 = sub_10107416C(v60[0]);

  v62 = &_swiftEmptySetSingleton;
  v60[0] = SPDisabledReasoniCloudSignedOut;
  __chkstk_darwin(v18);
  v50 = v60;
  v19 = sub_1002EB768(sub_1002EF830, &v51[-32], v17);
  if (v19)
  {
    sub_100DEB5E8(v60, SPFinderDisabledReasoniCloudSignedOut);
  }

  v60[0] = SPDisabledReasonLowAccountSecurity;
  __chkstk_darwin(v19);
  v50 = v60;
  v20 = sub_1002EB768(sub_1002EFAF0, &v51[-32], v17);
  if (v20)
  {
    sub_100DEB5E8(v60, SPFinderDisabledReasonLowAccountSecurity);
  }

  v60[0] = SPDisabledReasonUserOptOut;
  __chkstk_darwin(v20);
  v50 = v60;
  v21 = sub_1002EB768(sub_1002EFAF0, &v51[-32], v17);

  if (v21)
  {
    sub_100DEB5E8(v60, SPFinderDisabledReasonUserOptOut);
  }

  if ((sub_1004F21B4() & 1) == 0)
  {
    sub_100DEB5E8(v60, SPFinderDisabledReasonFindMyiPhoneOff);
  }

  if ((v16 & 1) == 0)
  {
    sub_100DEB5E8(v60, SPFinderDisabledReasonServiceDisabled);
  }

  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  v60[0] = 0x7365547265646E75;
  v60[1] = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if ((v61 & 1) != 0 || (v22 = objc_autoreleasePoolPush(), v23 = [objc_opt_self() locationServicesEnabled], objc_autoreleasePoolPop(v22), (v23 & 1) == 0))
  {
    sub_100DEB5E8(v60, SPFinderDisabledReasonLocationServices);
  }

  __chkstk_darwin(v24);
  v50 = v25;
  type metadata accessor for CLAuthorizationStatus(0);
  OS_dispatch_queue.sync<A>(execute:)();
  if ((LODWORD(v60[0]) - 3) >= 2)
  {
    sub_100DEB5E8(v60, SPFinderDisabledReasonLocationServicesFindMyFramework);
  }

  v26 = v53;
  if ((v16 & 0x10000) == 0)
  {
    sub_100DEB5E8(v60, SPFinderDisabledReasonCannotPublishAnonymously);
  }

  if (!v62[2])
  {
    sub_100DEB5E8(v60, SPFinderDisabledReasonNone);
  }

  v55 = v14;
  v27 = sub_100ED312C(v14, v16 & 0x10101);
  v52 = v27;
  v28 = sub_1002EE66C(v27);
  Date.init()();
  sub_10030E438();
  sub_1012BAD7C(v29, v26);

  sub_10030D994(v59);
  sub_1002EBE38(v5);
  v30 = v5[2];
  sub_1000DD708(v5);
  v54 = v12;
  v31.super.isa = Date._bridgeToObjectiveC()().super.isa;
  v32 = v10;
  v33 = *(v10 + 48);
  v34 = v58;
  if (v33(v26, 1, v58) == 1)
  {
    v35 = v32;
    isa = 0;
  }

  else
  {
    v37.super.isa = Date._bridgeToObjectiveC()().super.isa;
    v34 = v58;
    v38 = v26;
    isa = v37.super.isa;
    v35 = v32;
    (*(v32 + 8))(v38, v58);
  }

  v39 = v59;
  v40 = v34;
  if (v33(v59, 1, v34) == 1)
  {
    v41 = 0;
    v42 = v35;
  }

  else
  {
    v41 = Date._bridgeToObjectiveC()().super.isa;
    v43 = v39;
    v42 = v35;
    (*(v35 + 8))(v43, v40);
  }

  if (v30)
  {
    v44 = 1;
  }

  else
  {
    v44 = -1;
  }

  v45 = objc_allocWithZone(SPFinderStateInfo);
  type metadata accessor for SPFinderDisabledReason(0);
  sub_100003D6C(&qword_101696500, type metadata accessor for SPFinderDisabledReason, &unk_10138AC08);
  v46 = Set._bridgeToObjectiveC()().super.isa;

  v47 = [v45 initWithState:v52 & 1 optInScreenOffScan:v28 & 1 lastUpdated:v31.super.isa lastPublishDate:isa lastScheduledPublishActivityDate:v41 activeCache:v44 disabledReasons:v46];

  (*(v42 + 8))(v54, v40);
  v48 = v47;
  v57(v47, 0);
}

uint64_t sub_1002EDAE4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v20 = a1;
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v13 = static OS_os_log.default.getter();
  v14 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("trying to enableFinderMode", 26, 2, &_mh_execute_header, v13, v14, _swiftEmptyArrayStorage);

  static DispatchWorkItemFlags.barrier.getter();
  v15 = swift_allocObject();
  v16 = v20;
  *(v15 + 16) = v3;
  *(v15 + 24) = v16;
  *(v15 + 32) = a2;
  *(v15 + 40) = 513;
  *(v15 + 42) = 2;
  aBlock[4] = sub_1002EFAEC;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101616F88;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
}

uint64_t sub_1002EDD88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v20 = a1;
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v13 = static OS_os_log.default.getter();
  v14 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("trying to disableFinderMode", 27, 2, &_mh_execute_header, v13, v14, _swiftEmptyArrayStorage);

  static DispatchWorkItemFlags.barrier.getter();
  v15 = swift_allocObject();
  v16 = v20;
  *(v15 + 16) = v3;
  *(v15 + 24) = v16;
  *(v15 + 32) = a2;
  *(v15 + 40) = 512;
  *(v15 + 42) = 2;
  aBlock[4] = sub_1002EFAEC;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101616F38;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
}

uint64_t sub_1002EE02C(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a2;
  v21 = type metadata accessor for DispatchQoS();
  v7 = *(v21 - 8);
  __chkstk_darwin(v21);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v14 = static OS_os_log.default.getter();
  v15 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("trying to set(activeCache:completion:)", 38, 2, &_mh_execute_header, v14, v15, _swiftEmptyArrayStorage);

  static DispatchWorkItemFlags.barrier.getter();
  v16 = swift_allocObject();
  v17 = v20;
  *(v16 + 16) = v4;
  *(v16 + 24) = v17;
  *(v16 + 32) = a3;
  *(v16 + 40) = 2;
  *(v16 + 41) = a1 & 1;
  *(v16 + 42) = 2;
  aBlock[4] = sub_1002EE374;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101616E98;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v7 + 8))(v9, v21);
  (*(v11 + 8))(v13, v10);
}

uint64_t sub_1002EE378(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_1002EE440()
{
  if (qword_101694530 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for ThrottledDarwinPoster();
  sub_1000076D4(v1, qword_10177A878);
  ThrottledDarwinPoster.post(bypassRateLimit:)(0);
  if (v2)
  {
  }

  v3 = *(v0 + 8);

  return v3();
}

void sub_1002EE500(uint64_t a1)
{
  type metadata accessor for AnyKeyPath();
  swift_getKeyPath();
  v1 = static AnyKeyPath.== infix(_:_:)();

  if (v1 & 1) != 0 || (swift_getKeyPath(), v2 = static AnyKeyPath.== infix(_:_:)(), , (v2) || (swift_getKeyPath(), v3 = static AnyKeyPath.== infix(_:_:)(), , (v3) || (swift_getKeyPath(), v4 = static AnyKeyPath.== infix(_:_:)(), , (v4))
  {
    if (qword_101694530 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for ThrottledDarwinPoster();
    sub_1000076D4(v5, qword_10177A878);
    ThrottledDarwinPoster.post(bypassRateLimit:)(0);
    if (v6)
    {
    }
  }
}

uint64_t sub_1002EE66C(uint64_t a1)
{
  v1 = static os_log_type_t.debug.getter();
  if (qword_101695008 != -1)
  {
    swift_once();
  }

  v2 = qword_10177C340;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_101385D80;
  v4 = objc_opt_self();
  v5 = [v4 standardUserDefaults];
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20 = v18;
  v21 = v19;
  if (*(&v19 + 1))
  {
    v8 = swift_dynamicCast();
    v9 = v17;
    if (!v8)
    {
      v9 = 2;
    }
  }

  else
  {
    sub_10000B3A8(&v20, &unk_1016A0B10, &qword_10139BF40);
    v9 = 2;
  }

  LOBYTE(v20) = v9;
  sub_1000BC4D4(&unk_1016BB0A0, &qword_10139A220);
  v10 = String.init<A>(describing:)();
  v12 = v11;
  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_100008C00();
  *(v3 + 32) = v10;
  *(v3 + 40) = v12;
  os_log(_:dso:log:_:_:)(v1, &_mh_execute_header, v2, "FinderStateManager: optInScreenOffScan get, %@", 46, 2, v3);

  v13 = [v4 standardUserDefaults];
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 objectForKey:v14];

  if (v15)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20 = v18;
  v21 = v19;
  if (*(&v19 + 1))
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v17;
    }
  }

  else
  {
    sub_10000B3A8(&v20, &unk_1016A0B10, &qword_10139BF40);
    return 0;
  }

  return result;
}

uint64_t sub_1002EE954()
{
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  *(v0 + 16) = swift_task_alloc();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1002EEA1C;

  return daemon.getter();
}

uint64_t sub_1002EEA1C(uint64_t a1)
{
  *(*v1 + 32) = a1;

  type metadata accessor for Daemon();
  sub_100003D6C(&qword_1016969E0, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002EEB74, v3, v2);
}

uint64_t sub_1002EEB74()
{
  *(v0 + 40) = Daemon.darwinNotificationHandler.getter();

  v3 = &async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:) + async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1002EEC64;

  return (v3)(0xD000000000000021, 0x8000000101350130, &unk_10139A300, 0);
}

uint64_t sub_1002EEC64(uint64_t a1)
{
  *(*v1 + 56) = a1;

  return _swift_task_switch(sub_1002EED64, 0, 0);
}

uint64_t sub_1002EED64()
{
  v1 = v0[7];
  v2 = v0[2];
  v3 = type metadata accessor for TaskPriority();
  v0[8] = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 56);
  v0[9] = v5;
  v0[10] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v2, 1, 1, v3);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v1;

  sub_100BB9ADC(0, 0, v2, &unk_10139A310, v6);

  sub_10000B3A8(v2, &qword_101698C00, &qword_10138B570);
  v9 = &async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:) + async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:);
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_1002EEF04;

  return (v9)(0xD000000000000019, 0x8000000101350160, &unk_10139A318, 0);
}

uint64_t sub_1002EEF04(uint64_t a1)
{
  *(*v1 + 96) = a1;

  return _swift_task_switch(sub_1002EF004, 0, 0);
}

uint64_t sub_1002EF004()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 16);
  (*(v0 + 72))(v2, 1, 1, *(v0 + 64));
  v3 = swift_allocObject();
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = v1;

  sub_100BB9ADC(0, 0, v2, &unk_10139A328, v3);

  sub_10000B3A8(v2, &qword_101698C00, &qword_10138B570);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1002EF11C(unsigned __int8 *a1)
{
  v2 = type metadata accessor for FinderStateInfo(0);
  __chkstk_darwin(v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() standardUserDefaults];
  v6 = *a1;
  v7 = String._bridgeToObjectiveC()();
  [v5 setBool:v6 forKey:v7];

  if (a1[2])
  {
    v8 = 1;
  }

  else
  {
    v8 = -1;
  }

  v9 = String._bridgeToObjectiveC()();
  [v5 setInteger:v8 forKey:v9];

  v10 = a1[1];
  v11 = String._bridgeToObjectiveC()();
  [v5 setBool:v10 forKey:v11];

  v12 = static os_log_type_t.debug.getter();
  if (qword_101695008 != -1)
  {
    swift_once();
  }

  v13 = qword_10177C340;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_101385D80;
  sub_1002EF7CC(a1, v4);
  v15 = String.init<A>(describing:)();
  v17 = v16;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = sub_100008C00();
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "FinderStateManager: save stateInfo, %@ (notification)", 53, 2, v14);

  if (qword_101694530 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for ThrottledDarwinPoster();
  sub_1000076D4(v18, qword_10177A878);
  ThrottledDarwinPoster.post(bypassRateLimit:)(0);
  if (v19)
  {
  }

  return 0;
}

uint64_t sub_1002EF3D8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v22 = *(v8 - 8);
  v23 = v8;
  __chkstk_darwin(v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1002EF11C(a1);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v12 + 104))(v14, enum case for DispatchQoS.QoSClass.default(_:), v11);
  v16 = static OS_dispatch_queue.global(qos:)();
  (*(v12 + 8))(v14, v11);
  v17 = swift_allocObject();
  v17[2] = v21;
  v17[3] = a3;
  v17[4] = v15;
  aBlock[4] = sub_1002EF79C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101616EE8;
  v18 = _Block_copy(aBlock);

  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_100003D6C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v24 + 8))(v7, v5);
  (*(v22 + 8))(v10, v23);
}

uint64_t sub_1002EF7CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinderStateInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002EF89C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_1002EC808();
}

uint64_t sub_1002EF950()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_1002ECF7C();
}

uint64_t sub_1002EFA04()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100264040();
}

uint64_t sub_1002EFB24(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  v5 = v3 - 1;
  v6 = result + 56;
  while (1)
  {
    v7 = v5;
    v8 = *(v6 - 16);
    v9 = *(v6 - 8);
    v10 = v9 >> 62;
    if ((v9 >> 62) > 1)
    {
      if (v10 != 2)
      {
        goto LABEL_19;
      }

      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      v11 = v12 - v13;
      if (__OFSUB__(v12, v13))
      {
        goto LABEL_18;
      }

      goto LABEL_12;
    }

    if (!v10)
    {
      v11 = BYTE6(v9);
      goto LABEL_13;
    }

    if (__OFSUB__(HIDWORD(v8), v8))
    {
      break;
    }

    v11 = HIDWORD(v8) - v8;
LABEL_12:
    result = sub_100017D5C(*(v6 - 16), *(v6 - 8));
LABEL_13:
    if (v11 != 20)
    {
      goto LABEL_19;
    }

    sub_10015049C(a2, *(a2 + 24));
    sub_100017D5C(v8, v9);
    sub_1002F25C8();
    dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
    sub_100016590(v8, v9);
    result = sub_100016590(v8, v9);
    if (!v2)
    {
      v6 += 32;
      v5 = v7 - 1;
      if (v7)
      {
        continue;
      }
    }

    return result;
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1002EFC78(void *a1, __int16 a2, uint64_t a3)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  sub_10015049C(v5, v6);
  sub_1002F2020();
  dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  if (!v3)
  {
    sub_10015049C(v5, v6);
    sub_1000198E8();
    dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
    sub_10015049C(v5, v6);
    sub_1002F2074();
    dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  }

  return sub_100007BAC(v5);
}

uint64_t sub_1002EFDB0@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1002F1C94(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
  }

  return result;
}

uint64_t sub_1002EFE08(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      _StringGuts.grow(_:)(18);
      sub_1002F2B10();
      v3 = CustomStringConvertible.typeDescription.getter();

      v5 = v3;
      v2 = 0x80000001013501A0;
      v1 = 0xD000000000000010;
    }

    else
    {
      sub_1002F2B10();
      v5 = CustomStringConvertible.typeDescription.getter();
      v1 = 0x6E776F6E6B6E752ELL;
      v2 = 0xE800000000000000;
    }
  }

  else if (a1)
  {
    sub_1002F2B10();
    v5 = CustomStringConvertible.typeDescription.getter();
    v1 = 0x614D44496E6D662ELL;
    v2 = 0xED00006465686374;
  }

  else
  {
    sub_1002F2B10();
    v5 = CustomStringConvertible.typeDescription.getter();
    v1 = 0x72696150746F6E2ELL;
    v2 = 0xEA00000000006465;
  }

  String.append(_:)(*&v1);
  return v5;
}

uint64_t sub_1002EFFE8(void *a1, uint64_t a2)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v7 = a2;

  sub_1002F0EBC(&v7);
  if (v2)
  {
    goto LABEL_7;
  }

  sub_1002EFB24(v7, v9);

  v4 = 4 - *(a2 + 16);
  if ((v4 * 21) >> 64 != (21 * v4) >> 63)
  {
    __break(1u);
LABEL_7:

    __break(1u);
    return result;
  }

  v7 = sub_100845C88(21 * v4);
  v8 = v5;
  sub_100776394(&v7, 0);
  sub_10015049C(v9, v9[3]);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  sub_100016590(v7, v8);
  return sub_100007BAC(v9);
}

BOOL sub_1002F012C(uint64_t a1)
{
  v1 = (a1 + 56);
  v2 = *(a1 + 16) + 1;
  do
  {
    if (!--v2)
    {
      break;
    }

    v3 = *v1;
    v1 += 32;
  }

  while (v3 == 1);
  return v2 == 0;
}

uint64_t sub_1002F0158(uint64_t a1)
{
  sub_1002F1010();
  v30 = CustomStringConvertible.typeDescription.getter();
  v2._countAndFlagsBits = 8250;
  v2._object = 0xE200000000000000;
  String.append(_:)(v2);
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_101123BB8(0, v3, 0);
    v4 = (a1 + 56);
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      sub_100017D5C(v5, v6);
      _StringGuts.grow(_:)(48);
      sub_1002F1064();
      v8 = CustomStringConvertible.typeDescription.getter();
      v10 = v9;

      v29 = v10;
      v11._countAndFlagsBits = 0x3A44497472617020;
      v11._object = 0xE900000000000020;
      String.append(_:)(v11);
      v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v12);

      v13._countAndFlagsBits = 0x4E6C616972657320;
      v13._object = 0xEF203A7265626D75;
      String.append(_:)(v13);
      v14._countAndFlagsBits = Data.hexString.getter();
      String.append(_:)(v14);

      v15._object = 0x8000000101350180;
      v15._countAndFlagsBits = 0xD000000000000010;
      String.append(_:)(v15);
      if (v7)
      {
        sub_1002F10B8();
        v28._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
        v28._object = v16;
        if (v7 == 1)
        {
          v17 = 0x6465726961702ELL;
          v18 = 0xE700000000000000;
        }

        else
        {
          v18 = 0xE900000000000064;
          v17 = 0x65726961706E752ELL;
        }
      }

      else
      {
        sub_1002F10B8();
        v28._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
        v28._object = v19;
        v17 = 0x6E776F6E6B6E752ELL;
        v18 = 0xE800000000000000;
      }

      String.append(_:)(*&v17);
      String.append(_:)(v28);

      sub_100016590(v5, v6);
      v21 = _swiftEmptyArrayStorage[2];
      v20 = _swiftEmptyArrayStorage[3];
      if (v21 >= v20 >> 1)
      {
        sub_101123BB8((v20 > 1), v21 + 1, 1);
      }

      v4 += 32;
      _swiftEmptyArrayStorage[2] = v21 + 1;
      v22 = &_swiftEmptyArrayStorage[2 * v21];
      v22[4] = v8;
      v22[5] = v29;
      --v3;
    }

    while (v3);
  }

  v23 = Array.description.getter();
  v25 = v24;

  v26._countAndFlagsBits = v23;
  v26._object = v25;
  String.append(_:)(v26);

  return v30;
}

uint64_t sub_1002F04AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  _StringGuts.grow(_:)(48);
  sub_1002F1064();
  v5 = CustomStringConvertible.typeDescription.getter();

  v6._countAndFlagsBits = 0x3A44497472617020;
  v6._object = 0xE900000000000020;
  String.append(_:)(v6);
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x4E6C616972657320;
  v8._object = 0xEF203A7265626D75;
  String.append(_:)(v8);
  v9._countAndFlagsBits = Data.hexString.getter();
  String.append(_:)(v9);

  v10._object = 0x8000000101350180;
  v10._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v10);
  v11._countAndFlagsBits = sub_1002F0710(v4);
  String.append(_:)(v11);

  return v5;
}

char *sub_1002F0620@<X0>(char **a1@<X8>, void *a2@<X0>)
{
  result = sub_1002F20C8(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

Swift::Int sub_1002F0668()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10083C34C(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_1002F06B8(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_10083C34C(v4, v2);
  return Hasher._finalize()();
}

uint64_t sub_1002F0710(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      sub_1002F10B8();
      v4 = CustomStringConvertible.typeDescription.getter();
      v1 = 0x6465726961702ELL;
      v2 = 0xE700000000000000;
    }

    else
    {
      sub_1002F10B8();
      v4 = CustomStringConvertible.typeDescription.getter();
      v1 = 0x65726961706E752ELL;
      v2 = 0xE900000000000064;
    }
  }

  else
  {
    sub_1002F10B8();
    v4 = CustomStringConvertible.typeDescription.getter();
    v1 = 0x6E776F6E6B6E752ELL;
    v2 = 0xE800000000000000;
  }

  String.append(_:)(*&v1);
  return v4;
}

uint64_t sub_1002F0830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  a4();
  sub_1000198E8();
  return RawRepresentable<>.init(from:)();
}

uint64_t sub_1002F08CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  a4();
  sub_1000198E8();
  return RawRepresentable<>.encode(to:)();
}

uint64_t sub_1002F093C(void *a1, uint64_t a2, unint64_t a3, char a4)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  sub_10015049C(v8, v9);
  sub_100017D5C(a2, a3);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  sub_100016590(a2, a3);
  if (!v4)
  {
    sub_10015049C(v8, v9);
    sub_1002F2A68();
    dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  }

  return sub_100007BAC(v8);
}

uint64_t sub_1002F0A4C(uint64_t a1, uint64_t a2, char a3)
{
  _StringGuts.grow(_:)(37);
  sub_1002F2ABC();
  v4 = CustomStringConvertible.typeDescription.getter();

  v5._countAndFlagsBits = 0x4E6C616972657320;
  v5._object = 0xEF203A7265626D75;
  String.append(_:)(v5);
  v6._countAndFlagsBits = Data.hexString.getter();
  String.append(_:)(v6);

  v7._object = 0x8000000101350180;
  v7._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v7);
  v8._countAndFlagsBits = sub_1002F0710(a3);
  String.append(_:)(v8);

  return v4;
}

uint64_t sub_1002F0B60@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1002F27C8(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

Swift::Int sub_1002F0BB0()
{
  v1 = *(v0 + 16);
  Hasher.init(_seed:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void sub_1002F0C14(uint64_t a1)
{
  v2 = *(v1 + 16);
  Data.hash(into:)();
  Hasher._combine(_:)(v2);
}

Swift::Int sub_1002F0C4C(uint64_t a1)
{
  v2 = *(v1 + 16);
  Hasher.init(_seed:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_1002F0CB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  return _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(*a1, *(a1 + 8), *a2, *(a2 + 8)) & (v2 == v3);
}

Swift::Int sub_1002F0D00()
{
  v1 = *v0;
  v2 = v0[24];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Data.hash(into:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_1002F0D7C(uint64_t a1)
{
  v2 = v1[24];
  Hasher._combine(_:)(*v1);
  Data.hash(into:)();
  Hasher._combine(_:)(v2);
}

Swift::Int sub_1002F0DD8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[24];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Data.hash(into:)();
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

uint64_t sub_1002F0E60(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a2[24];
  v3 = a1[24];
  return _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(*(a1 + 1), *(a1 + 2), *(a2 + 1), *(a2 + 2)) & (v3 == v2);
}

Swift::Int sub_1002F0EBC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100B32098(v2);
  }

  v3 = *(v2 + 2);
  v21[0] = (v2 + 32);
  v21[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 88;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v8;
        v12 = v9;
        do
        {
          v13 = v11 - 24;
          v14 = *(v11 - 24);
          if (v14 >= *(v11 - 56))
          {
            break;
          }

          v16 = *(v11 - 56);
          v15 = *(v11 - 40);
          *(v11 - 32) = *v11;
          v11 -= 32;
          v17 = *(v11 + 1);
          *v13 = v16;
          *(v13 + 1) = v15;
          *(v11 - 24) = v14;
          *(v11 - 1) = v17;
        }

        while (!__CFADD__(v12++, 1));
        --v9;
        v8 += 32;
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

    v19[0] = v7 + 4;
    v19[1] = v6;
    sub_1002F1490(v19, v20, v21, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

unint64_t sub_1002F1010()
{
  result = qword_10169D050;
  if (!qword_10169D050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D050);
  }

  return result;
}

unint64_t sub_1002F1064()
{
  result = qword_10169D058;
  if (!qword_10169D058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D058);
  }

  return result;
}

unint64_t sub_1002F10B8()
{
  result = qword_10169D060;
  if (!qword_10169D060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D060);
  }

  return result;
}

uint64_t sub_1002F111C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1002F1160(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1002F11B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1002F1200(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1002F1260()
{
  result = qword_10169D068;
  if (!qword_10169D068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D068);
  }

  return result;
}

unint64_t sub_1002F12B4(uint64_t a1)
{
  *(a1 + 8) = sub_1002F12E4();
  result = sub_1002F1338();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1002F12E4()
{
  result = qword_10169D070;
  if (!qword_10169D070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D070);
  }

  return result;
}

unint64_t sub_1002F1338()
{
  result = qword_10169D078;
  if (!qword_10169D078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D078);
  }

  return result;
}

unint64_t sub_1002F1390()
{
  result = qword_10169D080;
  if (!qword_10169D080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D080);
  }

  return result;
}

unint64_t sub_1002F13E8()
{
  result = qword_10169D088;
  if (!qword_10169D088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D088);
  }

  return result;
}

unint64_t sub_1002F143C()
{
  result = qword_10169D090;
  if (!qword_10169D090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D090);
  }

  return result;
}

uint64_t sub_1002F1490(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v94 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_91:
    v5 = *v94;
    if (!*v94)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_125:
      result = sub_100B31E68(v8);
      v8 = result;
    }

    v86 = v8 + 2;
    v87 = v8[2];
    if (v87 >= 2)
    {
      while (*a3)
      {
        v88 = &v8[2 * v87];
        v89 = *v88;
        v90 = &v86[2 * v87];
        v91 = v90[1];
        sub_1002F1A44((*a3 + 32 * *v88), (*a3 + 32 * *v90), (*a3 + 32 * v91), v5);
        if (v4)
        {
        }

        if (v91 < v89)
        {
          goto LABEL_117;
        }

        if (v87 - 2 >= *v86)
        {
          goto LABEL_118;
        }

        *v88 = v89;
        v88[1] = v91;
        v92 = *v86 - v87;
        if (*v86 < v87)
        {
          goto LABEL_119;
        }

        v87 = *v86 - 1;
        result = memmove(v90, v90 + 2, 16 * v92);
        *v86 = v87;
        if (v87 <= 1)
        {
        }
      }

      goto LABEL_129;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v93 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 32 * v7);
      v11 = 32 * v9;
      v12 = (*a3 + 32 * v9);
      v15 = *v12;
      v14 = v12 + 64;
      v13 = v15;
      v16 = v9 + 2;
      while (v6 != v16)
      {
        v17 = *v14 >= *(v14 - 32);
        ++v16;
        v14 += 32;
        if ((((v10 < v13) ^ v17) & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v13)
          {
            goto LABEL_23;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_23;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_122;
      }

      if (v9 < v7)
      {
        v18 = 32 * v7 - 32;
        v19 = v7;
        v20 = v9;
        do
        {
          if (v20 != --v19)
          {
            v23 = *a3;
            if (!*a3)
            {
              goto LABEL_128;
            }

            v24 = (v23 + v11);
            v25 = (v23 + v18);
            v26 = *(v23 + v11);
            v27 = *(v23 + v11 + 8);
            v28 = *(v23 + v11 + 24);
            if (v11 != v18 || v24 >= v25 + 2)
            {
              v21 = v25[1];
              *v24 = *v25;
              v24[1] = v21;
            }

            v22 = v23 + v18;
            *v22 = v26;
            *(v22 + 8) = v27;
            *(v22 + 24) = v28;
          }

          ++v20;
          v18 -= 32;
          v11 += 32;
        }

        while (v20 < v19);
        v6 = a3[1];
      }
    }

LABEL_23:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_121;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_123;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_40:
    if (v7 < v9)
    {
      goto LABEL_120;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100A5B430(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v40 = v8[3];
    v41 = v5 + 1;
    if (v5 >= v40 >> 1)
    {
      result = sub_100A5B430((v40 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v41;
    v42 = v8 + 4;
    v43 = &v8[2 * v5 + 4];
    *v43 = v9;
    v43[1] = v7;
    v95 = *v94;
    if (!*v94)
    {
      goto LABEL_130;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v44 = v8[4];
          v45 = v8[5];
          v54 = __OFSUB__(v45, v44);
          v46 = v45 - v44;
          v47 = v54;
LABEL_60:
          if (v47)
          {
            goto LABEL_107;
          }

          v60 = &v8[2 * v41];
          v62 = *v60;
          v61 = v60[1];
          v63 = __OFSUB__(v61, v62);
          v64 = v61 - v62;
          v65 = v63;
          if (v63)
          {
            goto LABEL_109;
          }

          v66 = &v42[2 * v5];
          v68 = *v66;
          v67 = v66[1];
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v64, v69))
          {
            goto LABEL_114;
          }

          if (v64 + v69 >= v46)
          {
            if (v46 < v69)
            {
              v5 = v41 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        if (v41 < 2)
        {
          goto LABEL_115;
        }

        v70 = &v8[2 * v41];
        v72 = *v70;
        v71 = v70[1];
        v54 = __OFSUB__(v71, v72);
        v64 = v71 - v72;
        v65 = v54;
LABEL_75:
        if (v65)
        {
          goto LABEL_111;
        }

        v73 = &v42[2 * v5];
        v75 = *v73;
        v74 = v73[1];
        v54 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v54)
        {
          goto LABEL_113;
        }

        if (v76 < v64)
        {
          goto LABEL_3;
        }

LABEL_82:
        if (v5 - 1 >= v41)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (!*a3)
        {
          goto LABEL_127;
        }

        v81 = &v42[2 * v5 - 2];
        v82 = *v81;
        v83 = &v42[2 * v5];
        v84 = v83[1];
        sub_1002F1A44((*a3 + 32 * *v81), (*a3 + 32 * *v83), (*a3 + 32 * v84), v95);
        if (v4)
        {
        }

        if (v84 < v82)
        {
          goto LABEL_102;
        }

        if (v5 > v8[2])
        {
          goto LABEL_103;
        }

        *v81 = v82;
        v81[1] = v84;
        v85 = v8[2];
        if (v5 >= v85)
        {
          goto LABEL_104;
        }

        v41 = v85 - 1;
        result = memmove(&v42[2 * v5], v83 + 2, 16 * (v85 - 1 - v5));
        v8[2] = v85 - 1;
        if (v85 <= 2)
        {
          goto LABEL_3;
        }
      }

      v48 = &v42[2 * v41];
      v49 = *(v48 - 8);
      v50 = *(v48 - 7);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_105;
      }

      v53 = *(v48 - 6);
      v52 = *(v48 - 5);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_106;
      }

      v55 = &v8[2 * v41];
      v57 = *v55;
      v56 = v55[1];
      v54 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v54)
      {
        goto LABEL_108;
      }

      v54 = __OFADD__(v46, v58);
      v59 = v46 + v58;
      if (v54)
      {
        goto LABEL_110;
      }

      if (v59 >= v51)
      {
        v77 = &v42[2 * v5];
        v79 = *v77;
        v78 = v77[1];
        v54 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v54)
        {
          goto LABEL_116;
        }

        if (v46 < v80)
        {
          v5 = v41 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_60;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v93;
    if (v7 >= v6)
    {
      goto LABEL_91;
    }
  }

  v29 = *a3;
  v30 = *a3 + 32 * v7 + 24;
  v31 = v9 - v7;
LABEL_33:
  v32 = v31;
  v33 = v30;
  while (1)
  {
    v34 = (v33 - 24);
    v35 = *(v33 - 24);
    if (v35 >= *(v33 - 56))
    {
LABEL_32:
      ++v7;
      v30 += 32;
      --v31;
      if (v7 != v6)
      {
        goto LABEL_33;
      }

      v7 = v6;
      goto LABEL_40;
    }

    if (!v29)
    {
      break;
    }

    v37 = *(v33 - 56);
    v36 = *(v33 - 40);
    *(v33 - 32) = *v33;
    v33 -= 32;
    v38 = *(v33 + 16);
    *v34 = v37;
    v34[1] = v36;
    *(v33 - 24) = v35;
    *(v33 - 16) = v38;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
  return result;
}

uint64_t sub_1002F1A44(char *__dst, char *__src, unsigned __int8 *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v13)
  {
    v14 = 32 * v10;
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, v14);
    }

    v15 = &v4[v14];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v16 = v4;
      v17 = v7 == v4;
      v4 += 32;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v15)
      {
        goto LABEL_10;
      }
    }

    v16 = v6;
    v17 = v7 == v6;
    v6 += 32;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    v18 = v16[1];
    *v7 = *v16;
    *(v7 + 1) = v18;
    goto LABEL_13;
  }

  v19 = 32 * v13;
  if (a4 != __src || &__src[v19] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v15 = &v4[v19];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v20 = v6 - 32;
    v5 -= 32;
    v21 = v15;
    do
    {
      v22 = v5 + 32;
      v23 = *(v21 - 32);
      v21 -= 32;
      if (v23 < *v20)
      {
        if (v22 != v6)
        {
          v25 = *(v6 - 1);
          *v5 = *v20;
          *(v5 + 1) = v25;
        }

        if (v15 <= v4 || (v6 -= 32, v20 <= v7))
        {
          v6 = v20;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v22 != v15)
      {
        v24 = *(v21 + 1);
        *v5 = *v21;
        *(v5 + 1) = v24;
      }

      v5 -= 32;
      v15 = v21;
    }

    while (v21 > v4);
    v15 = v21;
  }

LABEL_35:
  v26 = (v15 - v4 + (v15 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0;
  if (v6 != v4 || v6 >= &v4[v26])
  {
    memmove(v6, v4, v26);
  }

  return 1;
}

uint64_t sub_1002F1C40(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      v3 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v2 != 2)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v5 = *(result + 16);
  v4 = *(result + 24);
  v6 = __OFSUB__(v4, v5);
  v3 = v4 - v5;
  if (v6)
  {
    __break(1u);
LABEL_8:
    LODWORD(v3) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
      goto LABEL_13;
    }

    v3 = v3;
  }

LABEL_10:
  if (v3 != 20)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1002F1C94(void *a1)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v12, v13);
  sub_1000198E8();
  dispatch thunk of BinaryDecodingContaining.decode<A>(_:)();
  if (v1)
  {
LABEL_12:
    sub_100007BAC(v12);
    return sub_100007BAC(a1);
  }

  v3 = v14;
  if (v14 > 3u)
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177C448);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 16777472;
      v9[4] = v3;
      _os_log_impl(&_mh_execute_header, v7, v8, "Invalid findMyNetworkIdStatus: %hhu", v9, 5u);
    }

    v10 = type metadata accessor for BinaryEncodingError();
    sub_1002F2580(&qword_101696E20, &type metadata accessor for BinaryEncodingError, &protocol conformance descriptor for BinaryEncodingError);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, enum case for BinaryEncodingError.encodingError(_:), v10);
    swift_willThrow();
    goto LABEL_12;
  }

  sub_10015049C(v12, v13);
  dispatch thunk of BinaryDecodingContaining.decode<A>(_:)();
  v4 = v14;
  if (qword_101694538 != -1)
  {
    swift_once();
  }

  sub_10015049C(v12, v13);
  dispatch thunk of BinaryDecodingContaining.decode(length:)();
  sub_1002F1FCC();
  result = BinaryDecodable.init(data:)();
  if (v4 > 4)
  {
    __break(1u);
  }

  else
  {
    sub_100007BAC(v12);
    sub_100007BAC(a1);
    return v3 | (v4 << 8);
  }

  return result;
}

unint64_t sub_1002F1FCC()
{
  result = qword_10169D098;
  if (!qword_10169D098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D098);
  }

  return result;
}

unint64_t sub_1002F2020()
{
  result = qword_10169D0A0;
  if (!qword_10169D0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D0A0);
  }

  return result;
}

unint64_t sub_1002F2074()
{
  result = qword_10169D0A8;
  if (!qword_10169D0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D0A8);
  }

  return result;
}

char *sub_1002F20C8(void *a1)
{
  v3 = type metadata accessor for Data.Iterator();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BinaryDecoder();
  v28 = *(v7 - 8);
  v29 = v7;
  __chkstk_darwin(v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[3];
  v30 = a1;
  sub_1000035D0(a1, v10);
  dispatch thunk of BinaryDecoding.container()();
  v33 = v9;
  result = BinaryDecoder.init()();
  v12 = 0;
  v35 = _swiftEmptyArrayStorage;
  v32 = (v4 + 8);
  while (1)
  {
    if (v12 <= 4)
    {
      v13 = 4;
    }

    else
    {
      v13 = v12;
    }

    v31 = v13;
LABEL_6:
    if (v12 == v13)
    {
      __break(1u);
      return result;
    }

    sub_10015049C(v40, v40[3]);
    v14 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
    if (v1)
    {
      break;
    }

    v16 = v14;
    v17 = v15;
    sub_1002F252C();
    BinaryDecoder.decode<A>(_:from:)();
    v41 = v12;
    v19 = v37;
    v18 = v38;
    v36 = v41 + 1;
    v34 = v39;
    sub_100017D5C(v37, v38);
    Data.Iterator.init(_:at:)();
    sub_1002F2580(&qword_10169BAC8, &type metadata accessor for Data.Iterator, &protocol conformance descriptor for Data.Iterator);
    do
    {
      dispatch thunk of IteratorProtocol.next()();
      if ((v37 & 0x100) != 0)
      {
        sub_100016590(v16, v17);
        sub_100016590(v19, v18);
        result = (*v32)(v6, v3);
        v12 = v36;
        v13 = v31;
        if (v36 != 4)
        {
          goto LABEL_6;
        }

        goto LABEL_21;
      }
    }

    while (!v37);
    (*v32)(v6, v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v35 = sub_100A5C600(0, *(v35 + 2) + 1, 1, v35);
    }

    v22 = *(v35 + 2);
    v21 = *(v35 + 3);
    if (v22 >= v21 >> 1)
    {
      v35 = sub_100A5C600((v21 > 1), v22 + 1, 1, v35);
    }

    result = sub_100016590(v16, v17);
    v23 = v35;
    *(v35 + 2) = v22 + 1;
    v24 = &v23[32 * v22];
    v24[32] = v41;
    *(v24 + 5) = v19;
    *(v24 + 6) = v18;
    v24[56] = v34;
    v12 = v36;
    if (v36 == 4)
    {
LABEL_21:
      (*(v28 + 8))(v33, v29);
      sub_100007BAC(v40);
      v26 = v30;
      goto LABEL_22;
    }
  }

  (*(v28 + 8))(v33, v29);

  v25 = v30;
  sub_100007BAC(v40);
  v26 = v25;
LABEL_22:
  sub_100007BAC(v26);
  return v35;
}

unint64_t sub_1002F252C()
{
  result = qword_10169D0B0;
  if (!qword_10169D0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D0B0);
  }

  return result;
}

uint64_t sub_1002F2580(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1002F25C8()
{
  result = qword_10169D0B8;
  if (!qword_10169D0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D0B8);
  }

  return result;
}

uint64_t sub_1002F261C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1002F2660(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1002F26C8()
{
  result = qword_10169D0C0;
  if (!qword_10169D0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D0C0);
  }

  return result;
}

unint64_t sub_1002F2720()
{
  result = qword_10169D0C8;
  if (!qword_10169D0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D0C8);
  }

  return result;
}

unint64_t sub_1002F2774()
{
  result = qword_10169D0D0;
  if (!qword_10169D0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D0D0);
  }

  return result;
}

uint64_t sub_1002F27C8(void *a1)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  v3 = sub_10015049C(v15, v16);
  v4 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v1)
  {
LABEL_9:
    sub_100007BAC(v15);
    sub_100007BAC(a1);
    return v3;
  }

  v6 = v4;
  v7 = v5;
  sub_10015049C(v15, v16);
  sub_1000198E8();
  dispatch thunk of BinaryDecodingContaining.decode<A>(_:)();
  v8 = v17;
  if (v17 >= 3u)
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_10177C448);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 16777472;
      v12[4] = v8;
      _os_log_impl(&_mh_execute_header, v10, v11, "Invalid PartPairingStatus: %hhu", v12, 5u);
    }

    v3 = type metadata accessor for BinaryEncodingError();
    sub_1002F2580(&qword_101696E20, &type metadata accessor for BinaryEncodingError, &protocol conformance descriptor for BinaryEncodingError);
    swift_allocError();
    (*(*(v3 - 8) + 104))(v13, enum case for BinaryEncodingError.encodingError(_:), v3);
    swift_willThrow();
    sub_100016590(v6, v7);
    goto LABEL_9;
  }

  v3 = sub_1002F1C40(v6, v7);
  sub_100007BAC(v15);
  sub_100007BAC(a1);
  return v3;
}

unint64_t sub_1002F2A68()
{
  result = qword_10169D0D8;
  if (!qword_10169D0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D0D8);
  }

  return result;
}

unint64_t sub_1002F2ABC()
{
  result = qword_10169D0E0;
  if (!qword_10169D0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D0E0);
  }

  return result;
}

unint64_t sub_1002F2B10()
{
  result = qword_10169D0E8;
  if (!qword_10169D0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D0E8);
  }

  return result;
}

uint64_t sub_1002F2B64(uint64_t a1, uint64_t a2)
{
  v5 = static os_log_type_t.default.getter();
  if (qword_101695008 != -1)
  {
    swift_once();
  }

  v6 = qword_10177C340;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v8 = String.init<A>(describing:)();
  v10 = v9;
  *(v7 + 56) = &type metadata for String;
  v11 = sub_100008C00();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  *(v7 + 96) = &type metadata for String;
  *(v7 + 104) = v11;
  *(v7 + 64) = v11;
  *(v7 + 72) = 0xD00000000000002BLL;
  *(v7 + 80) = 0x8000000101350890;
  os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v6, "%@: %@", 6, 2, v7);

  sub_1000035D0(&v2[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation], *&v2[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24]);
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a1;
  v12[4] = a2;
  v13 = v2;

  sub_1002F3654(sub_1002FDD58, v12);
}

uint64_t sub_1002F2D30(char a1, uint64_t a2, uint64_t (*a3)(void *))
{
  if ((a1 & 1) == 0)
  {
    return (a3)(_swiftEmptyArrayStorage, a2);
  }

  sub_1000035D0((a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  v5 = sub_1002F3FA8();
  v6 = v5[2];
  if (v6)
  {
    v21 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v7 = *(a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_beaconStore);
    v8 = (v5 + 4);
    do
    {
      sub_10001F280(v8, v18);
      v9 = v19;
      v10 = v20;
      v11 = sub_1000035D0(v18, v19);
      sub_100B005BC(v11, v7, v9, v10);
      sub_100007BAC(v18);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v8 += 40;
      --v6;
    }

    while (v6);

    v12 = v21;
  }

  else
  {

    v12 = _swiftEmptyArrayStorage;
  }

  v14 = static os_log_type_t.default.getter();
  if (qword_1016950B8 != -1)
  {
    swift_once();
  }

  v15 = qword_10177C400;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  if (v12 >> 62)
  {
    v17 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v17 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v16 + 56) = &type metadata for Int;
  *(v16 + 64) = &protocol witness table for Int;
  *(v16 + 32) = v17;
  os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "Returning %i records", LODWORD(v18[0]));

  a3(v12);
}

void sub_1002F3010(uint64_t a1, uint64_t a2)
{
  sub_100008BB8(0, &unk_1016BC050, SPBeacon_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

uint64_t sub_1002F3394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = static os_log_type_t.default.getter();
  if (qword_1016950B8 != -1)
  {
    swift_once();
  }

  v8 = qword_10177C400;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v10 = String.init<A>(describing:)();
  v12 = v11;
  *(v9 + 56) = &type metadata for String;
  v13 = sub_100008C00();
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  *(v9 + 96) = &type metadata for String;
  *(v9 + 104) = v13;
  *(v9 + 64) = v13;
  *(v9 + 72) = 0xD00000000000002BLL;
  *(v9 + 80) = 0x8000000101350210;
  os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v8, "%@: %@", 6, 2, v9);

  sub_1000035D0((v3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  return sub_1002F9D2C(a1, a2, a3);
}

uint64_t sub_1002F3654(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v6 - 8);
  v8 = v13 - v7;
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&qword_10169B770, &unk_101395210);
  OS_dispatch_queue.sync<A>(execute:)();
  v9 = sub_100034838(v13[1]);

  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v9;
  v11[5] = v3;
  v11[6] = a1;
  v11[7] = a2;

  sub_10025EDD4(0, 0, v8, &unk_10139AAB8, v11);
}

uint64_t sub_1002F3818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v7[6] = *(type metadata accessor for BeaconObservation(0) - 8);
  v7[7] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v7[8] = v8;
  v7[9] = *(v8 - 8);
  v7[10] = swift_task_alloc();

  return _swift_task_switch(sub_1002F3934, 0, 0);
}

uint64_t sub_1002F3934()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[9];
    v4 = v0[6];
    sub_101123D4C(0, v2, 0);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v16 = *(v4 + 72);
    do
    {
      v6 = v0[10];
      v8 = v0[7];
      v7 = v0[8];
      sub_1002FDC90(v5, v8, type metadata accessor for BeaconObservation);
      (*(v3 + 16))(v6, v8, v7);
      sub_1002FD958(v8, type metadata accessor for BeaconObservation);
      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_101123D4C((v9 > 1), v10 + 1, 1);
      }

      v11 = v0[10];
      v12 = v0[8];
      _swiftEmptyArrayStorage[2] = v10 + 1;
      (*(v3 + 32))(_swiftEmptyArrayStorage + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10, v11, v12);
      v5 += v16;
      --v2;
    }

    while (v2);
  }

  v13 = sub_10000954C(_swiftEmptyArrayStorage);
  v0[11] = v13;

  v14 = swift_task_alloc();
  v0[12] = v14;
  *v14 = v0;
  v14[1] = sub_1002F3B44;

  return sub_10025314C(v13);
}

uint64_t sub_1002F3B44(uint64_t a1)
{
  *(*v1 + 104) = a1;

  return _swift_task_switch(sub_1002F3C64, 0, 0);
}

uint64_t sub_1002F3C64()
{
  v1 = *(v0[13] + 16);

  if (v1)
  {
    v3 = v0[4];
    v2 = v0[5];
    v4 = swift_allocObject();
    v0[14] = v4;
    *(v4 + 16) = v3;
    *(v4 + 24) = v2;

    v5 = swift_task_alloc();
    v0[15] = v5;
    *v5 = v0;
    v5[1] = sub_1002F3E24;

    return unsafeBlocking<A>(_:)(v5, sub_1002FDE38, v4, &type metadata for () + 1);
  }

  else
  {
    v6 = static os_log_type_t.error.getter();
    if (qword_1016950B8 != -1)
    {
      v9 = v6;
      swift_once();
      v6 = v9;
    }

    v7 = v0[4];
    os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, qword_10177C400, "Not providing pending updates (candidate beacons). Enabled identifiers not found.", 81, 2, _swiftEmptyArrayStorage);
    v7(0);

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1002F3E24()
{

  return _swift_task_switch(sub_1002F3F3C, 0, 0);
}

uint64_t sub_1002F3F3C()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_1002F3FA8()
{
  v0 = sub_1002513B4();
  v1 = sub_100AA56A8(v0);

  v2 = static os_log_type_t.default.getter();
  if (qword_1016950B8 != -1)
  {
    swift_once();
  }

  v3 = qword_10177C400;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_101385D80;
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  v7 = v6;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_100008C00();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v3, "Beacon store has %@ records for identifiers that are pending.", 61, 2, v4);

  return v1;
}

uint64_t sub_1002F40F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = a7;
  v29 = a8;
  v26 = a5;
  v27 = a6;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v30 = *(v14 - 8);
  v31 = v14;
  __chkstk_darwin(v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS.QoSClass();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a2) = sub_1002F44A8(a2, a3, a4, v26, v27);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v18 + 104))(v20, enum case for DispatchQoS.QoSClass.default(_:), v17);
  v21 = static OS_dispatch_queue.global(qos:)();
  (*(v18 + 8))(v20, v17);
  v22 = swift_allocObject();
  v23 = v29;
  *(v22 + 16) = v28;
  *(v22 + 24) = v23;
  *(v22 + 32) = a2 & 1;
  aBlock[4] = sub_1002FB50C;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101617528;
  v24 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v33 = _swiftEmptyArrayStorage;
  sub_1002FDD08(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_10013A8AC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  (*(v32 + 8))(v13, v11);
  (*(v30 + 8))(v16, v31);
}

uint64_t sub_1002F44A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  v11 = type metadata accessor for UUID();
  v123 = *(v11 - 8);
  __chkstk_darwin(v11);
  v120 = v12;
  v122 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v117 = *(v13 - 8);
  v118 = v13;
  __chkstk_darwin(v13);
  v15 = &v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100025020(a1, &v124);
  if (v125)
  {
    v116 = v15;
    v121 = a5;
    v114 = v11;
    v112 = a3;
    v115 = v5;
    v113 = a4;
    sub_100031694(&v124, v129);
    v16 = static os_log_type_t.default.getter();
    if (qword_1016950B8 != -1)
    {
      swift_once();
    }

    v17 = qword_10177C400;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_10138BBE0;
    v19 = UUID.uuidString.getter();
    v21 = v20;
    *(v18 + 56) = &type metadata for String;
    v22 = sub_100008C00();
    *(v18 + 64) = v22;
    *(v18 + 32) = v19;
    *(v18 + 40) = v21;
    v23 = sub_10091E6AC(v9);
    *(v18 + 96) = &type metadata for String;
    *(v18 + 104) = v22;
    *(v18 + 72) = v23;
    *(v18 + 80) = v24;
    v111 = v17;
    os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, v17, "Updating beacon (UUID: %@) with observation: %@", 47, 2, v18);

    if (qword_101694920 != -1)
    {
      swift_once();
    }

    v25 = qword_10177B2E8;
    v119 = a1;
    sub_1002FB6F4(qword_10177B2E8, a1, v9, v121);
    v26 = v116;
    if (v9 > 7u)
    {
      if (v9 != 8)
      {
        if (v9 == 11)
        {
          v66 = static DispatchWorkItemFlags.barrier.getter();
          __chkstk_darwin(v66);
          v67 = v119;
          *(&v111 - 4) = v25;
          *(&v111 - 3) = v67;
          *(&v111 - 2) = sub_1002FDEA8;
          *(&v111 - 1) = 0;
          OS_dispatch_queue.sync<A>(flags:execute:)();
          (*(v117 + 8))(v26, v118);
          type metadata accessor for Transaction();
          v69 = v122;
          v68 = v123;
          v70 = v114;
          (*(v123 + 16))(v122, v67, v114);
          v71 = (*(v68 + 80) + 24) & ~*(v68 + 80);
          v72 = (v120 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
          v73 = swift_allocObject();
          *(v73 + 16) = v115;
          (*(v68 + 32))(v73 + v71, v69, v70);
          v74 = (v73 + v72);
          v75 = v113;
          *v74 = v112;
          v74[1] = v75;

          static Transaction.asyncTask(name:block:)();

          if (v75)
          {
            v76 = v130;
            v77 = v131;
            sub_1000035D0(v129, v130);
            v78 = (*(v77 + 24))(v76, v77);
            if (v78 == v112 && v79 == v75)
            {
            }

            else
            {
              v110 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v110 & 1) == 0)
              {
                sub_1002F5280(v112, v75, v129);
              }
            }
          }

          goto LABEL_34;
        }

        v27 = v113;
        if (v9 != 13)
        {
LABEL_34:
          sub_100007BAC(v129);
          LOBYTE(v28) = 1;
          return v28 & 1;
        }

        v28 = *(v115 + 176);
        if (v28)
        {

          v29 = static os_log_type_t.default.getter();
          os_log(_:dso:log:_:_:)(v29, &_mh_execute_header, v111, "#Accessory - marking as fw update available", 43, 2, _swiftEmptyArrayStorage);
          v30 = type metadata accessor for Transaction();
          __chkstk_darwin(v30);
          v31 = v119;
          *(&v111 - 4) = v28;
          *(&v111 - 3) = v31;
          *(&v111 - 2) = v112;
          *(&v111 - 1) = v27;
          static Transaction.named<A>(_:with:)();

          goto LABEL_34;
        }

LABEL_39:
        sub_100007BAC(v129);
        return v28 & 1;
      }

      v46 = static os_log_type_t.default.getter();
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_10138B360;
      v49 = v130;
      v48 = v131;
      sub_1000035D0(v129, v130);
      v50 = v122;
      (*(*(*(v48 + 8) + 8) + 32))(v49);
      v51 = UUID.uuidString.getter();
      v53 = v52;
      (*(v123 + 8))(v50, v114);
      *(v47 + 56) = &type metadata for String;
      *(v47 + 64) = v22;
      *(v47 + 32) = v51;
      *(v47 + 40) = v53;
      v54 = v130;
      v55 = v131;
      sub_1000035D0(v129, v130);
      v56 = v54;
      v57 = v121;
      v58 = (*(v55 + 24))(v56, v55);
      *(v47 + 96) = &type metadata for String;
      *(v47 + 104) = v22;
      *(v47 + 72) = v58;
      *(v47 + 80) = v59;
      *&v124 = v57;
      swift_errorRetain();
      sub_1000BC4D4(&unk_101696AD0, &qword_10139A2E0);
      v60 = String.init<A>(describing:)();
      *(v47 + 136) = &type metadata for String;
      *(v47 + 144) = v22;
      *(v47 + 112) = v60;
      *(v47 + 120) = v61;
      os_log(_:dso:log:_:_:)(v46, &_mh_execute_header, v111, "Firmware Update failed beacon (UUID: %@), systemVersion: %@, error: %@", 70, 2, v47);

      v62 = static DispatchWorkItemFlags.barrier.getter();
      __chkstk_darwin(v62);
      v63 = v119;
      *(&v111 - 4) = v25;
      *(&v111 - 3) = v63;
      *(&v111 - 2) = sub_1002FDEA8;
      *(&v111 - 1) = 0;
      OS_dispatch_queue.sync<A>(flags:execute:)();
      (*(v117 + 8))(v26, v118);
      if (v113)
      {
        v118 = v113;
        v64 = v115;
        v65 = v112;
      }

      else
      {
        v85 = v130;
        v86 = v131;
        sub_1000035D0(v129, v130);
        v65 = (*(v86 + 24))(v85, v86);
        v118 = v87;
        v64 = v115;
      }

      v88 = v120;
      v120 = type metadata accessor for Transaction();
      v89 = v122;
      v90 = v123;
      v91 = v114;
      (*(v123 + 16))(v122, v119, v114);
      v92 = (*(v90 + 80) + 24) & ~*(v90 + 80);
      v93 = (v92 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
      v94 = (v92 + v88 + 31) & 0xFFFFFFFFFFFFFFF8;
      v95 = swift_allocObject();
      *(v95 + 16) = v64;
      (*(v90 + 32))(v95 + v92, v89, v91);
      v96 = v95 + v93;
      v97 = v118;
      *v96 = v65;
      *(v96 + 8) = v97;
      *(v96 + 16) = 0;
      *(v95 + v94) = v121;

      swift_errorRetain();
      static Transaction.asyncTask(name:block:)();
LABEL_33:

      goto LABEL_34;
    }

    if (v9 == 6)
    {
      type metadata accessor for Transaction();
      v81 = v122;
      v80 = v123;
      v82 = v114;
      (*(v123 + 16))(v122, v119, v114);
      v83 = (*(v80 + 80) + 24) & ~*(v80 + 80);
      v84 = swift_allocObject();
      *(v84 + 16) = v115;
      (*(v80 + 32))(v84 + v83, v81, v82);

      static Transaction.asyncTask(name:block:)();
      goto LABEL_33;
    }

    v38 = v113;
    if (v9 != 7)
    {
      goto LABEL_34;
    }

    sub_10001F280(v129, &v124);
    if (qword_101694BB0 != -1)
    {
      swift_once();
    }

    v128 = qword_10177B9C8;
    v126 = 0;
    v127 = 0;
    v39 = objc_opt_self();

    v40 = [v39 sharedInstance];
    v41 = [v40 isInternalBuild];

    if (v41)
    {
      sub_100A582C8(v119);
    }

    sub_1002FC360(&v124);
    v42 = static DispatchWorkItemFlags.barrier.getter();
    __chkstk_darwin(v42);
    v43 = v119;
    *(&v111 - 4) = v25;
    *(&v111 - 3) = v43;
    *(&v111 - 2) = sub_1002FDEA8;
    *(&v111 - 1) = 0;
    OS_dispatch_queue.sync<A>(flags:execute:)();
    (*(v117 + 8))(v26, v118);
    if (v38)
    {
      v44 = v112;
      v45 = v38;
    }

    else
    {
      v99 = v130;
      v100 = v131;
      sub_1000035D0(v129, v130);
      v44 = (*(v100 + 24))(v99, v100);
      v45 = v101;
    }

    v102 = v38;
    v121 = type metadata accessor for Transaction();
    v103 = v122;
    v104 = v123;
    v105 = v114;
    (*(v123 + 16))(v122, v119, v114);
    v106 = (*(v104 + 80) + 24) & ~*(v104 + 80);
    v107 = (v120 + v106 + 7) & 0xFFFFFFFFFFFFFFF8;
    v108 = swift_allocObject();
    *(v108 + 16) = v115;
    (*(v104 + 32))(v108 + v106, v103, v105);
    v109 = (v108 + v107);
    *v109 = v44;
    v109[1] = v45;

    static Transaction.asyncTask(name:block:)();

    if (v102)
    {
      LOBYTE(v28) = sub_1002F5280(v112, v102, v129);
      goto LABEL_39;
    }

    sub_100007BAC(v129);
  }

  else
  {
    sub_10000B3A8(&v124, &qword_101696920, &unk_10138B200);
    v32 = static os_log_type_t.error.getter();
    if (qword_1016950B8 != -1)
    {
      swift_once();
    }

    v33 = qword_10177C400;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_101385D80;
    v35 = UUID.uuidString.getter();
    v37 = v36;
    *(v34 + 56) = &type metadata for String;
    *(v34 + 64) = sub_100008C00();
    *(v34 + 32) = v35;
    *(v34 + 40) = v37;
    os_log(_:dso:log:_:_:)(v32, &_mh_execute_header, v33, "No record found to update observation %@", 40, 2, v34);
  }

  LOBYTE(v28) = 0;
  return v28 & 1;
}

uint64_t sub_1002F5280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v93 = type metadata accessor for SharedBeaconRecord(0);
  v89 = *(v93 - 1);
  v8 = __chkstk_darwin(v93);
  v91 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v97 = (&v88 - v11);
  v90 = v12;
  __chkstk_darwin(v10);
  v92 = (&v88 - v13);
  v99 = type metadata accessor for OwnedBeaconRecord(0);
  v95 = *(v99 - 8);
  v14 = __chkstk_darwin(v99);
  v96 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v101 = (&v88 - v17);
  v94 = v18;
  __chkstk_darwin(v16);
  v20 = &v88 - v19;
  v21 = static os_log_type_t.default.getter();
  if (qword_1016950B8 != -1)
  {
    swift_once();
  }

  v22 = qword_10177C400;
  v100 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10138BBE0;
  *(v23 + 56) = &type metadata for String;
  v24 = sub_100008C00();
  *(v23 + 64) = v24;
  *(v23 + 32) = a1;
  *(v23 + 40) = a2;
  sub_10001F280(a3, v103);

  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v98 = a1;
  v25 = String.init<A>(describing:)();
  *(v23 + 96) = &type metadata for String;
  *(v23 + 104) = v24;
  v26 = v24;
  *(v23 + 72) = v25;
  *(v23 + 80) = v27;
  v88 = v22;
  os_log(_:dso:log:_:_:)(v21, &_mh_execute_header, v22, "Updating system version to %@ for record %@", 43, 2, v23);

  v28 = PressuredExitTransactionManager.begin(_:)();
  v29 = swift_allocObject();
  *(v29 + 16) = v4;
  *(v29 + 24) = v28;
  v30 = a3;
  sub_10001F280(a3, v103);
  swift_retain_n();

  v31 = v4;
  if (swift_dynamicCast())
  {
    v32 = v101;
    sub_100029280(v20, v101, type metadata accessor for OwnedBeaconRecord);
    v33 = swift_allocObject();
    *(v33 + 16) = v98;
    *(v33 + 24) = a2;
    v34 = swift_allocObject();
    *(v34 + 2) = sub_1002FD8B8;
    *(v34 + 3) = v29;
    *(v34 + 4) = sub_1002FD8B0;
    *(v34 + 5) = v28;
    v35 = *(v4 + 280);

    v99 = v29;

    v97 = v33;

    v36 = static os_log_type_t.default.getter();
    v98 = v28;
    v37 = v36;
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v38 = qword_10177C380;
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_101385D80;
    *(v39 + 56) = &type metadata for String;
    *(v39 + 64) = v26;
    *(v39 + 32) = 0x65736C6166;
    *(v39 + 40) = 0xE500000000000000;
    os_log(_:dso:log:_:_:)(v37, &_mh_execute_header, v38, "Modify record. Disk First? (%@)", 31, 2, v39);

    v40 = objc_autoreleasePoolPush();
    sub_101121B40(v32);
    v42 = v41;
    v100 = v41;
    objc_autoreleasePoolPop(v40);
    sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
    v43 = v32;
    type metadata accessor for CloudKitCoordinator();
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v93 = type metadata accessor for OwnedBeaconRecord;
    v44 = v96;
    sub_1002FDC90(v32, v96, type metadata accessor for OwnedBeaconRecord);
    v45 = v94;
    v46 = *(v95 + 80);
    v47 = swift_allocObject();
    v95 = v35;
    v48 = v47;
    v49 = v97;
    *(v47 + 16) = sub_1002FD9B8;
    *(v47 + 24) = v49;
    v92 = type metadata accessor for OwnedBeaconRecord;
    sub_100029280(v44, v47 + ((v46 + 32) & ~v46), type metadata accessor for OwnedBeaconRecord);

    sub_100FDCA40(v42, sub_1002FDA30, v48);

    v50 = swift_allocObject();
    *(v50 + 16) = sub_1002FDA00;
    *(v50 + 24) = v34;

    Future.addFailure(block:)();

    sub_1002FDC90(v43, v44, v93);
    v51 = (v46 + 16) & ~v46;
    v52 = (v45 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
    v53 = swift_allocObject();
    sub_100029280(v44, v53 + v51, v92);
    *(v53 + v52) = v95;
    v54 = (v53 + ((v52 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v54 = sub_1002FDA00;
    v54[1] = v34;

    Future.addSuccess(block:)();

    v55 = type metadata accessor for OwnedBeaconRecord;
    v56 = v101;
  }

  else
  {
    v57 = a2;
    v58 = v98;
    v59 = v92;
    if (!swift_dynamicCast())
    {
      v83 = static os_log_type_t.error.getter();
      v84 = swift_allocObject();
      *(v84 + 16) = xmmword_101385D80;
      sub_10001F280(v30, v102);
      v85 = String.init<A>(describing:)();
      *(v84 + 56) = &type metadata for String;
      *(v84 + 64) = v26;
      *(v84 + 32) = v85;
      *(v84 + 40) = v86;
      os_log(_:dso:log:_:_:)(v83, &_mh_execute_header, v88, "Unexpected record type %@", 25, 2, v84);

      Transaction.end()();

      v82 = 0;
      goto LABEL_13;
    }

    v60 = v26;
    v61 = v97;
    sub_100029280(v59, v97, type metadata accessor for SharedBeaconRecord);
    v62 = swift_allocObject();
    *(v62 + 16) = v58;
    *(v62 + 24) = v57;
    v63 = swift_allocObject();
    *(v63 + 2) = sub_1002FD8B8;
    *(v63 + 3) = v29;
    *(v63 + 4) = sub_1002FD8B0;
    *(v63 + 5) = v28;
    v64 = *(v31 + 280);

    v101 = v62;

    v65 = static os_log_type_t.default.getter();
    v98 = v28;
    v99 = v29;
    v66 = v65;
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v67 = qword_10177C380;
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_101385D80;
    *(v68 + 56) = &type metadata for String;
    *(v68 + 64) = v60;
    *(v68 + 32) = 0x65736C6166;
    *(v68 + 40) = 0xE500000000000000;
    os_log(_:dso:log:_:_:)(v66, &_mh_execute_header, v67, "Modify record. Disk First? (%@)", 31, 2, v68);

    v69 = objc_autoreleasePoolPush();
    sub_101122288(v61);
    v71 = v70;
    v100 = v70;
    objc_autoreleasePoolPop(v69);
    sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
    type metadata accessor for CloudKitCoordinator();
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v72 = v91;
    sub_1002FDC90(v61, v91, type metadata accessor for SharedBeaconRecord);
    v73 = *(v89 + 80);
    v96 = v64;
    v74 = v90;
    v75 = swift_allocObject();
    v76 = v101;
    *(v75 + 16) = sub_1002FD8C0;
    *(v75 + 24) = v76;
    v95 = type metadata accessor for SharedBeaconRecord;
    sub_100029280(v72, v75 + ((v73 + 32) & ~v73), type metadata accessor for SharedBeaconRecord);

    sub_100FDCA40(v71, sub_1002FD8F8, v75);

    v77 = swift_allocObject();
    *(v77 + 16) = sub_1002FD8C8;
    *(v77 + 24) = v63;

    Future.addFailure(block:)();

    sub_1002FDC90(v97, v72, type metadata accessor for SharedBeaconRecord);
    v78 = (v73 + 16) & ~v73;
    v79 = (v74 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
    v80 = swift_allocObject();
    sub_100029280(v72, v80 + v78, v95);
    *(v80 + v79) = v96;
    v81 = (v80 + ((v79 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v81 = sub_1002FD8C8;
    v81[1] = v63;

    Future.addSuccess(block:)();

    v55 = type metadata accessor for SharedBeaconRecord;
    v56 = v97;
  }

  sub_1002FD958(v56, v55);
  v82 = 1;
LABEL_13:
  sub_100007BAC(v103);
  return v82;
}

uint64_t sub_1002F5F18(uint64_t a1, uint64_t a2)
{
  v2[11] = a1;
  v2[12] = a2;
  v3 = type metadata accessor for UUID();
  v2[13] = v3;
  v4 = *(v3 - 8);
  v2[14] = v4;
  v2[15] = *(v4 + 64);
  v2[16] = swift_task_alloc();
  v2[17] = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v2[18] = swift_task_alloc();
  v5 = type metadata accessor for OwnedBeaconRecord(0);
  v2[19] = v5;
  v6 = *(v5 - 8);
  v2[20] = v6;
  v2[21] = *(v6 + 64);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  sub_1000BC4D4(&qword_101696CA8, &qword_10138B5E0);
  v2[24] = swift_task_alloc();

  return _swift_task_switch(sub_1002F60C4, 0, 0);
}

uint64_t sub_1002F60C4()
{
  v1 = *(*(v0 + 88) + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_firmwareUpdateService);
  *(v0 + 200) = v1;
  return _swift_task_switch(sub_1002F60F4, v1, 0);
}

uint64_t sub_1002F60F4()
{
  v1 = *(v0 + 200);
  swift_beginAccess();
  *(v0 + 208) = *(v1 + 144);

  return _swift_task_switch(sub_1002F617C, 0, 0);
}

uint64_t sub_1002F617C()
{
  if (*(v0[26] + 16) && (v1 = sub_1000210EC(v0[12]), (v2 & 1) != 0))
  {
    v3 = *(*(v0[26] + 56) + 8 * v1);
    v0[27] = v3;

    return _swift_task_switch(sub_1002F628C, v3, 0);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1002F628C()
{
  *(v0 + 224) = sub_10114A1D4(0xD000000000000013, 0x800000010134E570);

  return _swift_task_switch(sub_1002F6310, 0, 0);
}

uint64_t sub_1002F6310()
{
  v1 = v0[28];
  if (v1)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    v0[29] = v2;
    if (v2)
    {
      v3 = v0[27];

      return _swift_task_switch(sub_1002F6420, v3, 0);
    }
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002F6420()
{
  *(v0 + 240) = sub_10114A1D4(0x496E6F6973736573, 0xE900000000000044);

  return _swift_task_switch(sub_1002F64A4, 0, 0);
}

uint64_t sub_1002F64A4()
{
  v1 = v0[30];
  if (v1)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    v0[31] = v2;
    if (v2)
    {
      v3 = v0[27];

      return _swift_task_switch(sub_1002F65B8, v3, 0);
    }

    v4 = v0[28];
  }

  else
  {
    v4 = v0[28];
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1002F65B8()
{
  sub_10114AE90(*(v0 + 216));
  *(v0 + 256) = 0;

  return _swift_task_switch(sub_1002F664C, 0, 0);
}

uint64_t sub_1002F664C()
{
  v0[33] = v0[32];
  type metadata accessor for AnalyticsEvent(0);
  v1 = swift_allocObject();
  v0[34] = v1;
  swift_defaultActor_initialize();
  *(v1 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v2 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v3 = type metadata accessor for DispatchTime();
  v0[35] = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 56);
  v0[36] = v5;
  v0[37] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(&v1[v2], 1, 1, v3);
  v5(&v1[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v3);
  *(v1 + 15) = 0xD000000000000032;
  *(v1 + 16) = 0x80000001013505F0;

  return _swift_task_switch(sub_1002F67AC, v1, 0);
}

uint64_t sub_1002F67AC(uint64_t a1)
{
  v2 = v1[36];
  v4 = v1[34];
  v3 = v1[35];
  v5 = v1[24];
  static DispatchTime.now()();
  v2(v5, 0, 1, v3);
  v6 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  swift_beginAccess();
  sub_1000DFA14(v5, v4 + v6);
  swift_endAccess();

  return _swift_task_switch(sub_1002F6878, 0, 0);
}

uint64_t sub_1002F6878()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[11];
  (*(v3 + 16))(v1, v0[12], v2);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[38] = v6;
  *(v6 + 16) = v4;
  (*(v3 + 32))(v6 + v5, v1, v2);

  v7 = swift_task_alloc();
  v0[39] = v7;
  *v7 = v0;
  v7[1] = sub_1002F69B4;
  v9 = v0[17];
  v8 = v0[18];

  return unsafeBlocking<A>(_:)(v8, sub_1002FD81C, v6, v9);
}

uint64_t sub_1002F69B4()
{

  return _swift_task_switch(sub_1002F6ACC, 0, 0);
}

uint64_t sub_1002F6ACC()
{
  v1 = v0[18];
  if ((*(v0[20] + 48))(v1, 1, v0[19]) == 1)
  {
    sub_10000B3A8(v1, &unk_1016A9A20, &qword_10138B280);
    v6 = sub_10115F4E8;
    v2 = swift_task_alloc();
    v0[40] = v2;
    *v2 = v0;
    v2[1] = sub_1002F6C2C;
    v3 = v0[34];
  }

  else
  {
    sub_100029280(v1, v0[23], type metadata accessor for OwnedBeaconRecord);
    v6 = sub_1002FC5A8;
    v4 = swift_task_alloc();
    v0[41] = v4;
    *v4 = v0;
    v4[1] = sub_1002F6D40;
    v3 = v0[23];
  }

  return v6(v3);
}

uint64_t sub_1002F6C2C()
{
  v2 = *v1;

  if (v0)
  {
  }

  v3 = *(v2 + 200);

  return _swift_task_switch(sub_1002F7278, v3, 0);
}

uint64_t sub_1002F6D40(uint64_t a1)
{
  *(*v1 + 336) = a1;

  return _swift_task_switch(sub_1002F6E40, 0, 0);
}

uint64_t sub_1002F6E40()
{
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[11];
  sub_1002FDC90(v0[23], v1, type metadata accessor for OwnedBeaconRecord);
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[43] = v5;
  *(v5 + 16) = v3;
  sub_100029280(v1, v5 + v4, type metadata accessor for OwnedBeaconRecord);

  v6 = swift_task_alloc();
  v0[44] = v6;
  *v6 = v0;
  v6[1] = sub_1002F6F80;

  return unsafeBlocking<A>(_:)(v0 + 46, sub_1002FD820, v5, &type metadata for Bool);
}

uint64_t sub_1002F6F80()
{

  return _swift_task_switch(sub_1002F7098, 0, 0);
}

uint64_t sub_1002F7098()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 248);
  v3 = *(v0 + 232);
  v4 = *(v0 + 184);
  v5 = *(v0 + 336) == 0;
  v6 = *(v0 + 368);
  v7 = swift_task_alloc();
  *(v0 + 360) = v7;
  *(v7 + 16) = v2;
  *(v7 + 24) = v4;
  *(v7 + 32) = v3;
  *(v7 + 40) = v5;
  *(v7 + 41) = v6;

  return _swift_task_switch(sub_1002F7144, v1, 0);
}

uint64_t sub_1002F7144()
{
  v1 = *(v0 + 264);
  sub_10115BE7C(sub_1002FD894);
  if (v1)
  {

    v2 = sub_1002FDE9C;
  }

  else
  {

    v2 = sub_1002F71FC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002F71FC()
{
  sub_1002FD958(*(v0 + 184), type metadata accessor for OwnedBeaconRecord);
  v1 = *(v0 + 200);

  return _swift_task_switch(sub_1002F7278, v1, 0);
}

uint64_t sub_1002F7278()
{
  v1 = v0[34];
  v2 = v0[25];
  v3 = v0[12];
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v2 + 152);
  *(v2 + 152) = 0x8000000000000000;
  sub_100FFB6F0(v1, v3, isUniquelyReferenced_nonNull_native);
  *(v2 + 152) = v6;
  swift_endAccess();

  return _swift_task_switch(sub_1002F734C, 0, 0);
}

uint64_t sub_1002F734C()
{
  v1 = v0[30];
  v2 = v0[28];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1002F7400()
{
  v0[33] = 0;
  type metadata accessor for AnalyticsEvent(0);
  v1 = swift_allocObject();
  v0[34] = v1;
  swift_defaultActor_initialize();
  *(v1 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v2 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v3 = type metadata accessor for DispatchTime();
  v0[35] = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 56);
  v0[36] = v5;
  v0[37] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(&v1[v2], 1, 1, v3);
  v5(&v1[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v3);
  *(v1 + 15) = 0xD000000000000032;
  *(v1 + 16) = 0x80000001013505F0;

  return _swift_task_switch(sub_1002F67AC, v1, 0);
}

uint64_t sub_1002F755C@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = *(type metadata accessor for OwnedBeaconRecord(0) + 20);
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v8 = sub_100035730(a1 + v7, 0, 0);
  v9 = sub_10003ABC0(v6, a1 + v7, v8, 0);

  result = sub_10000B3A8(v6, &unk_101696900, &unk_10138B1E0);
  *a2 = v9 & 1;
  return result;
}

unint64_t sub_1002F768C(void *a1, uint64_t a2, void *a3, unsigned int a4, unsigned int a5)
{
  v24 = __PAIR64__(a5, a4);
  v23 = type metadata accessor for StableIdentifier(0);
  __chkstk_darwin(v23);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138B420;
  *(inited + 32) = 0x496E6F6973736573;
  *(inited + 40) = 0xE900000000000044;
  *(inited + 48) = a1;
  *(inited + 56) = 0;
  strcpy((inited + 64), "batteryLevel");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  v11 = type metadata accessor for OwnedBeaconRecord(0);
  v12 = *(a2 + *(v11 + 76));
  v13 = objc_allocWithZone(NSNumber);
  v14 = a1;
  *(inited + 80) = [v13 initWithInteger:{v12, v23, v24}];
  *(inited + 88) = 0;
  strcpy((inited + 96), "updateRequired");
  *(inited + 111) = -18;
  *(inited + 112) = 1;
  *(inited + 120) = 1;
  *(inited + 128) = 0x737265566D6F7266;
  *(inited + 136) = 0xEB000000006E6F69;
  *(inited + 144) = String._bridgeToObjectiveC()();
  *(inited + 152) = 0;
  *(inited + 160) = 0xD000000000000013;
  *(inited + 168) = 0x800000010134E570;
  *(inited + 176) = a3;
  *(inited + 184) = 0;
  *(inited + 192) = 0x6563697665447369;
  *(inited + 200) = 0xEF6465687361654CLL;
  v15 = a3;
  *(inited + 208) = Bool._bridgeToObjectiveC()();
  *(inited + 216) = 0;
  *(inited + 224) = 0xD000000000000011;
  *(inited + 232) = 0x8000000101350630;
  *(inited + 240) = Bool._bridgeToObjectiveC()();
  *(inited + 248) = 0;
  v16 = sub_100908768(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
  swift_arrayDestroy();
  v17 = [objc_opt_self() sharedInstance];
  LODWORD(a1) = [v17 isInternalBuild];

  if (a1)
  {
    UUID.uuidString.getter();
    v18 = String._bridgeToObjectiveC()();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v16;
    sub_100FFC418(v18, 0, 0x6544646572696170, 0xEE00444965636976, isUniquelyReferenced_nonNull_native);
    v16 = v25;
    sub_1002FDC90(a2 + *(v11 + 24), v9, type metadata accessor for StableIdentifier);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      v20 = String._bridgeToObjectiveC()();

      v21 = swift_isUniquelyReferenced_nonNull_native();
      v25 = v16;
      sub_100FFC418(v20, 0, 0xD000000000000018, 0x8000000101350650, v21);
      return v25;
    }

    else
    {
      sub_1002FD958(v9, type metadata accessor for StableIdentifier);
    }
  }

  return v16;
}

uint64_t sub_1002F7A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  return _swift_task_switch(sub_1002F7A9C, 0, 0);
}

uint64_t sub_1002F7A9C()
{
  v1 = *(*(v0 + 40) + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_firmwareUpdateService);
  *(v0 + 72) = v1;
  return _swift_task_switch(sub_1002F7ACC, v1, 0);
}

uint64_t sub_1002F7ACC()
{
  v1 = *(v0 + 72);
  swift_beginAccess();
  *(v0 + 80) = *(v1 + 152);

  return _swift_task_switch(sub_1002F7B54, 0, 0);
}

uint64_t sub_1002F7B54()
{
  if (*(v0[10] + 16) && (v1 = sub_1000210EC(v0[6]), (v2 & 1) != 0))
  {
    v3 = *(*(v0[10] + 56) + 8 * v1);
    v0[11] = v3;
    swift_retain_n();

    return _swift_task_switch(sub_1002F7C88, v3, 0);
  }

  else
  {

    v0[12] = 0;
    v4 = swift_task_alloc();
    v0[13] = v4;
    *v4 = v0;
    v4[1] = sub_1002F7D60;
    v5 = v0[6];

    return sub_10024F2F8(v5);
  }
}

uint64_t sub_1002F7C88()
{
  sub_10116EF04(*(v0 + 88), *(v0 + 56), *(v0 + 64));

  *(v0 + 96) = *(v0 + 88);
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_1002F7D60;
  v2 = *(v0 + 48);

  return sub_10024F2F8(v2);
}

uint64_t sub_1002F7D60()
{
  v1 = *(*v0 + 72);

  return _swift_task_switch(sub_1002F7E70, v1, 0);
}

uint64_t sub_1002F7E70()
{
  sub_10024F7A0(*(v0 + 48));

  return _swift_task_switch(sub_1002F7EDC, 0, 0);
}

uint64_t sub_1002F7EDC()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1002F7F3C()
{
  sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138B360;
  *(inited + 32) = 0x6563637553736177;
  *(inited + 40) = 0xEA00000000007373;
  *(inited + 48) = 1;
  *(inited + 56) = 1;
  *(inited + 64) = 0x6F69737265566F74;
  *(inited + 72) = 0xE90000000000006ELL;
  *(inited + 80) = String._bridgeToObjectiveC()();
  *(inited + 88) = 0;
  strcpy((inited + 96), "didShowAlert");
  *(inited + 109) = 0;
  *(inited + 110) = -5120;
  *(inited + 112) = 0;
  *(inited + 120) = 1;
  v1 = sub_100908768(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
  swift_arrayDestroy();
  return v1;
}

uint64_t sub_1002F8064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 88) = a4;
  *(v6 + 96) = a6;
  *(v6 + 168) = a5;
  *(v6 + 72) = a2;
  *(v6 + 80) = a3;
  *(v6 + 64) = a1;
  return _swift_task_switch(sub_1002F8090, 0, 0);
}

uint64_t sub_1002F8090()
{
  v1 = *(*(v0 + 64) + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_firmwareUpdateService);
  *(v0 + 104) = v1;
  return _swift_task_switch(sub_1002F80C0, v1, 0);
}

uint64_t sub_1002F80C0()
{
  v1 = *(v0 + 104);
  swift_beginAccess();
  *(v0 + 112) = *(v1 + 144);

  return _swift_task_switch(sub_1002F8148, 0, 0);
}

uint64_t sub_1002F8148()
{
  if (*(v0[14] + 16) && (v1 = sub_1000210EC(v0[9]), (v2 & 1) != 0))
  {
    v3 = *(*(v0[14] + 56) + 8 * v1);
    v0[15] = v3;

    v4 = sub_1002F8204;
    v5 = v3;
  }

  else
  {

    v0[16] = 0;
    v5 = v0[13];
    v4 = sub_1002F8294;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1002F8204()
{
  sub_10114AEB4(*(v0 + 120));

  *(v0 + 128) = 0;
  v1 = *(v0 + 104);

  return _swift_task_switch(sub_1002F8294, v1, 0);
}

uint64_t sub_1002F8294()
{
  v1 = *(v0 + 104);
  swift_beginAccess();
  *(v0 + 136) = *(v1 + 152);

  return _swift_task_switch(sub_1002F831C, 0, 0);
}

uint64_t sub_1002F831C()
{
  if (*(v0[17] + 16) && (v1 = sub_1000210EC(v0[9]), (v2 & 1) != 0))
  {
    v3 = *(*(v0[17] + 56) + 8 * v1);
    v0[18] = v3;
    swift_retain_n();

    swift_errorRetain();

    return _swift_task_switch(sub_1002F8454, v3, 0);
  }

  else
  {

    v0[19] = 0;
    v4 = swift_task_alloc();
    v0[20] = v4;
    *v4 = v0;
    v4[1] = sub_1002F853C;
    v5 = v0[9];

    return sub_10024F2F8(v5);
  }
}

uint64_t sub_1002F8454()
{
  v1 = *(v0 + 128);
  sub_10116EF44(*(v0 + 144), *(v0 + 80), *(v0 + 88), *(v0 + 168), *(v0 + 96));

  if (v1)
  {
  }

  *(v0 + 152) = *(v0 + 144);
  v2 = swift_task_alloc();
  *(v0 + 160) = v2;
  *v2 = v0;
  v2[1] = sub_1002F853C;
  v3 = *(v0 + 72);

  return sub_10024F2F8(v3);
}

uint64_t sub_1002F853C()
{
  v1 = *(*v0 + 104);

  return _swift_task_switch(sub_1002F864C, v1, 0);
}

uint64_t sub_1002F864C()
{
  sub_10024F7A0(*(v0 + 72));

  return _swift_task_switch(sub_1002F86B8, 0, 0);
}

uint64_t sub_1002F86B8()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1002F8718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138B360;
  *(inited + 32) = 0x6563637553736177;
  *(inited + 40) = 0xEA00000000007373;
  sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
  *(inited + 48) = NSNumber.init(BOOLeanLiteral:)(0);
  *(inited + 56) = 0;
  *(inited + 64) = 0x6F69737265566F74;
  *(inited + 72) = 0xE90000000000006ELL;
  *(inited + 80) = String._bridgeToObjectiveC()();
  *(inited + 88) = 0;
  strcpy((inited + 96), "didShowAlert");
  *(inited + 109) = 0;
  *(inited + 110) = -5120;
  *(inited + 112) = Bool._bridgeToObjectiveC()();
  *(inited + 120) = 0;
  v6 = sub_100908768(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
  swift_arrayDestroy();
  if (a4)
  {
    swift_getErrorValue();
    swift_errorRetain();
    Error.domain.getter();
    v7 = String._bridgeToObjectiveC()();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100FFC418(v7, 0, 0x6D6F44726F727265, 0xEB000000006E6961, isUniquelyReferenced_nonNull_native);
    swift_getErrorValue();
    Error.code.getter();
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    v10 = swift_isUniquelyReferenced_nonNull_native();
    sub_100FFC418(isa, 0, 0x646F43726F727265, 0xE900000000000065, v10);
  }

  return v6;
}

uint64_t sub_1002F8974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v5 = type metadata accessor for UUID();
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v4[11] = *(v6 + 64);
  v4[12] = swift_task_alloc();
  v4[13] = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_1002F8A7C, 0, 0);
}

uint64_t sub_1002F8A7C()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[5];
  (*(v3 + 16))(v1, v0[6], v2);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[15] = v6;
  *(v6 + 16) = v4;
  (*(v3 + 32))(v6 + v5, v1, v2);

  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_1002F8BB8;
  v9 = v0[13];
  v8 = v0[14];

  return unsafeBlocking<A>(_:)(v8, sub_1002FDEAC, v6, v9);
}

uint64_t sub_1002F8BB8()
{

  return _swift_task_switch(sub_1002F8CD0, 0, 0);
}

uint64_t sub_1002F8CD0()
{
  v1 = *(*(v0 + 40) + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_firmwareUpdateService);
  *(v0 + 136) = v1;
  return _swift_task_switch(sub_1002F8D00, v1, 0);
}

uint64_t sub_1002F8D00()
{
  v1 = *(v0 + 136);
  swift_beginAccess();
  *(v0 + 144) = *(v1 + 152);

  return _swift_task_switch(sub_1002F8D88, 0, 0);
}

uint64_t sub_1002F8D88()
{
  if (*(v0[18] + 16) && (v1 = sub_1000210EC(v0[6]), (v2 & 1) != 0))
  {
    v3 = v0[14];
    v5 = v0[7];
    v4 = v0[8];
    v6 = *(*(v0[18] + 56) + 8 * v1);
    v0[19] = v6;

    v7 = swift_task_alloc();
    v0[20] = v7;
    v7[2] = v3;
    v7[3] = v5;
    v7[4] = v4;

    return _swift_task_switch(sub_1002F8EDC, v6, 0);
  }

  else
  {

    v0[21] = 0;
    v8 = swift_task_alloc();
    v0[22] = v8;
    *v8 = v0;
    v8[1] = sub_1002F8FC4;
    v9 = v0[6];

    return sub_10024F2F8(v9);
  }
}

uint64_t sub_1002F8EDC()
{
  sub_10115BE7C(sub_1002FDC84);

  v0[21] = v0[19];
  v1 = swift_task_alloc();
  v0[22] = v1;
  *v1 = v0;
  v1[1] = sub_1002F8FC4;
  v2 = v0[6];

  return sub_10024F2F8(v2);
}

uint64_t sub_1002F8FC4()
{
  v1 = *(*v0 + 136);

  return _swift_task_switch(sub_1002F90D4, v1, 0);
}

uint64_t sub_1002F90D4()
{
  sub_10024F7A0(*(v0 + 48));

  return _swift_task_switch(sub_1002F9140, 0, 0);
}

uint64_t sub_1002F9140()
{
  v1 = *(v0 + 112);

  sub_10000B3A8(v1, &unk_1016A9A20, &qword_10138B280);

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_1002F91D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v5 - 8);
  v7 = &v16[-v6];
  v8 = type metadata accessor for OwnedBeaconRecord(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000D2A70(a1, v7, &unk_1016A9A20, &qword_10138B280);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10000B3A8(v7, &unk_1016A9A20, &qword_10138B280);
    return sub_100908768(_swiftEmptyArrayStorage);
  }

  else
  {
    sub_100029280(v7, v11, type metadata accessor for OwnedBeaconRecord);
    sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_101391790;
    strcpy((inited + 32), "updateRequired");
    *(inited + 47) = -18;
    *(inited + 48) = 0;
    *(inited + 56) = 1;
    *(inited + 64) = 0x6563637553736177;
    *(inited + 72) = 0xEA00000000007373;
    *(inited + 80) = 0;
    *(inited + 88) = 1;
    *(inited + 96) = 0x6F69737265566F74;
    *(inited + 104) = 0xE90000000000006ELL;
    if (!a3)
    {
    }

    v14 = String._bridgeToObjectiveC()();

    *(inited + 112) = v14;
    *(inited + 120) = 0;
    strcpy((inited + 128), "didShowAlert");
    *(inited + 141) = 0;
    *(inited + 142) = -5120;
    *(inited + 144) = 0;
    *(inited + 152) = 1;
    v15 = sub_100908768(inited);
    swift_setDeallocating();
    sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
    swift_arrayDestroy();
    sub_1002FD958(v11, type metadata accessor for OwnedBeaconRecord);
    return v15;
  }
}

void sub_1002F94D8(uint64_t a1)
{
  v1 = static os_log_type_t.error.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v2 = static OS_os_log.default.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_101385D80;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v4 = String.init<A>(describing:)();
  v6 = v5;
  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_100008C00();
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  os_log(_:dso:log:_:_:)(v1, &_mh_execute_header, v2, "FirmwareUpdateProtocol update failed %@.", 40, 2, v3);

  Transaction.end()();
}

uint64_t sub_1002F95F8(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v21 = a2;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v6 = *(v22 - 8);
  __chkstk_darwin(v22);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = static os_log_type_t.default.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v14 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v14, "FirmwareUpdateProtocol update success.", 38, 2, _swiftEmptyArrayStorage);

  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v10 + 104))(v12, enum case for DispatchQoS.QoSClass.default(_:), v9);
  v15 = static OS_dispatch_queue.global(qos:)();
  (*(v10 + 8))(v12, v9);
  v16 = swift_allocObject();
  v17 = v21;
  *(v16 + 16) = v20;
  *(v16 + 24) = v17;
  aBlock[4] = sub_1002FDBE0;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101617820;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_1002FDD08(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_10013A8AC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v3 + 8))(v5, v2);
  (*(v6 + 8))(v8, v22);
}

uint64_t sub_1002F99E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + *(type metadata accessor for OwnedBeaconRecord(0) + 60));

  *v5 = a2;
  v5[1] = a3;
  return result;
}

uint64_t sub_1002F9A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + *(type metadata accessor for SharedBeaconRecord(0) + 40));

  *v5 = a2;
  v5[1] = a3;
  return result;
}

uint64_t sub_1002F9A90(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v12 = sub_1000BC4D4(a6, a7);
  __chkstk_darwin(v12);
  v14 = (&v16 - v13);
  sub_1000D2A70(a1, &v16 - v13, a6, a7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    a4(*v14);
  }

  else
  {
    a2();
    return sub_10000B3A8(v14, a6, a7);
  }
}

uint64_t sub_1002F9B98(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1002F9C34, 0, 0);
}

uint64_t sub_1002F9C34()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_firmwareUpdateService);
  *(v0 + 32) = v1;
  return _swift_task_switch(sub_1002F9C64, v1, 0);
}

uint64_t sub_1002F9C64()
{
  v1 = *(v0 + 24);
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  sub_100251FF8(4, v1);
  sub_10000B3A8(v1, &qword_1016980D0, &unk_10138F3B0);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1002F9D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = a3;
  v57 = a2;
  v4 = type metadata accessor for UUID();
  v55 = *(v4 - 8);
  v56 = v4;
  __chkstk_darwin(v4);
  v53 = v5;
  v54 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  __chkstk_darwin(v6 - 8);
  v8 = &v46 - v7;
  v49 = type metadata accessor for BeaconObservation(0);
  v9 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v12 = __chkstk_darwin(v11 - 8);
  v51 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v46 - v14;
  v16 = type metadata accessor for Date();
  v50 = *(v16 - 8);
  v17 = *(v50 + 56);
  v52 = v15;
  v47 = v17;
  v17(v15, 1, 1, v16);
  v18 = static os_log_type_t.default.getter();
  if (qword_1016950B8 != -1)
  {
    swift_once();
  }

  v19 = qword_10177C400;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_101385D80;
  v21 = UUID.uuidString.getter();
  v23 = v22;
  *(v20 + 56) = &type metadata for String;
  *(v20 + 64) = sub_100008C00();
  *(v20 + 32) = v21;
  *(v20 + 40) = v23;
  os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, v19, "Retrieving firmware update state for beacon: %@", 47, 2, v20);

  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v24 = sub_100035730(a1, sub_1010C4F08, 0);
  sub_1012BB138(v24, v8);

  v25 = v49;
  v26 = (*(v9 + 48))(v8, 1, v49);
  v27 = a1;
  v28 = v51;
  if (v26 == 1)
  {
    sub_10000B3A8(v8, &qword_1016A42E0, &qword_1013B0010);
    v29 = -1;
    v30 = v52;
    v31 = v50;
  }

  else
  {
    v30 = v52;
    sub_10000B3A8(v52, &unk_101696900, &unk_10138B1E0);
    v32 = v48;
    sub_100029280(v8, v48, type metadata accessor for BeaconObservation);
    v31 = v50;
    (*(v50 + 16))(v30, v32 + *(v25 + 20), v16);
    v47(v30, 0, 1, v16);
    v33 = *(v32 + *(v25 + 24));
    sub_1002FD958(v32, type metadata accessor for BeaconObservation);
    if ((v33 - 6) > 5)
    {
      v29 = -1;
    }

    else
    {
      v29 = qword_10139AC20[(v33 - 6)];
    }
  }

  v34 = [objc_allocWithZone(SPFirmwareUpdateStateResult) init];
  [v34 setState:v29];
  sub_1000D2A70(v30, v28, &unk_101696900, &unk_10138B1E0);
  if ((*(v31 + 48))(v28, 1, v16) == 1)
  {
    isa = 0;
  }

  else
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v31 + 8))(v28, v16);
  }

  [v34 setStateDate:isa];

  v37 = v54;
  v36 = v55;
  v38 = v56;
  (*(v55 + 16))(v54, v27, v56);
  v39 = (*(v36 + 80) + 24) & ~*(v36 + 80);
  v40 = (v53 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  *(v41 + 16) = v34;
  (*(v36 + 32))(v41 + v39, v37, v38);
  v42 = (v41 + v40);
  v43 = v58;
  *v42 = v57;
  v42[1] = v43;
  v44 = v34;

  sub_1006965D8(v27, sub_1002FA7D0, v41);

  return sub_10000B3A8(v30, &unk_101696900, &unk_10138B1E0);
}

uint64_t sub_1002FA380(void *a1, void *a2, uint64_t a3, uint64_t (*a4)(void *))
{
  if (a1)
  {
    v5 = a1;
    v6 = [v5 systemVersion];
    if (!v6)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = String._bridgeToObjectiveC()();
    }

    [a2 setCurrentSystemVersion:v6];
  }

  else
  {
    type metadata accessor for FirmwareUpdateError(0);
    sub_100032898(_swiftEmptyArrayStorage);
    sub_1002FDD08(&qword_1016960E8, type metadata accessor for FirmwareUpdateError, &unk_101389898);
    _BridgedStoredNSError.init(_:userInfo:)();
    v6 = _convertErrorToNSError(_:)();

    [a2 setError:v6];
  }

  v7 = static os_log_type_t.default.getter();
  if (qword_1016950B8 != -1)
  {
    swift_once();
  }

  v8 = qword_10177C400;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10138BBE0;
  v10 = UUID.uuidString.getter();
  v12 = v11;
  *(v9 + 56) = &type metadata for String;
  v13 = sub_100008C00();
  *(v9 + 64) = v13;
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  v14 = [a2 description];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  *(v9 + 96) = &type metadata for String;
  *(v9 + 104) = v13;
  *(v9 + 72) = v15;
  *(v9 + 80) = v17;
  os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v8, "Firmware Update State for beacon %@ is %@", 41, 2, v9);

  return a4(a2);
}

void *sub_1002FA5DC(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = static os_log_type_t.default.getter();
  if (qword_1016950B8 != -1)
  {
    swift_once();
  }

  v5 = qword_10177C400;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10138BBE0;
  sub_1000BC4D4(&qword_10169D0F0, &qword_10139AA58);
  v7 = String.init<A>(describing:)();
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  v10 = sub_100008C00();
  *(v6 + 64) = v10;
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  type metadata accessor for DateInterval();
  sub_1002FDD08(&qword_10169D0F8, &type metadata accessor for DateInterval, &protocol conformance descriptor for DateInterval);
  v11 = dispatch thunk of CustomStringConvertible.description.getter();
  *(v6 + 96) = &type metadata for String;
  *(v6 + 104) = v10;
  *(v6 + 72) = v11;
  *(v6 + 80) = v12;
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v5, "Retrieving beacons with observation type: %@, date interval: %@", 63, 2, v6);

  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v13 = sub_1010C3064(v3, a2);
  v14 = sub_100AA56A8(v13);

  return v14;
}

uint64_t sub_1002FA7D0(void *a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1002FA380(a1, v5, v1 + v4, v6);
}

uint64_t sub_1002FA874(uint64_t a1)
{
  if ((a1 + 1) >= 8)
  {
    return 44;
  }

  else
  {
    return (0xD2C0B0A0708062CuLL >> (8 * (a1 + 1)));
  }
}

uint64_t sub_1002FA8A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (**a7)(void, void))
{
  v45 = a4;
  v46 = a5;
  v43 = a1;
  v44 = a3;
  v53 = a2;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v51 = *(v9 - 8);
  v52 = v9;
  __chkstk_darwin(v9);
  v49 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for DispatchQoS();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v41 = *(v12 - 8);
  v42 = v12;
  v13 = *(v41 + 64);
  __chkstk_darwin(v12);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = swift_allocObject();
  *(v54 + 16) = a7;
  _Block_copy(a7);
  v15 = static os_log_type_t.default.getter();
  if (qword_1016950B8 != -1)
  {
    swift_once();
  }

  v16 = qword_10177C400;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10138BBE0;
  aBlock[0] = swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v18 = String.init<A>(describing:)();
  v20 = v19;
  *(v17 + 56) = &type metadata for String;
  v21 = sub_100008C00();
  *(v17 + 32) = v18;
  *(v17 + 40) = v20;
  *(v17 + 96) = &type metadata for String;
  *(v17 + 104) = v21;
  *(v17 + 64) = v21;
  *(v17 + 72) = 0xD000000000000047;
  *(v17 + 80) = 0x80000001013503D0;
  os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v16, "%@: %@", 6, 2, v17);

  v22 = sub_1002FA874(v53);
  if (v22 == 44)
  {
    a7[2](a7, 0);
  }

  else
  {
    v23 = v22;
    v53 = *sub_1000035D0((a6 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a6 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
    v40[1] = *(v53 + 48);
    v24 = v41;
    v25 = v42;
    (*(v41 + 16))(v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v43, v42);
    v26 = (*(v24 + 80) + 24) & ~*(v24 + 80);
    v27 = v26 + v13;
    v28 = (v26 + v13) & 0xFFFFFFFFFFFFFFF8;
    v29 = (v28 + 31) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    *(v30 + 16) = v53;
    (*(v24 + 32))(v30 + v26, v14, v25);
    *(v30 + v27) = v23;
    v31 = v30 + v28;
    v32 = v45;
    *(v31 + 8) = v44;
    *(v31 + 16) = v32;
    *(v30 + v29) = v46;
    v33 = (v30 + ((v29 + 15) & 0xFFFFFFFFFFFFFFF8));
    v34 = v54;
    *v33 = sub_1002FB454;
    v33[1] = v34;
    aBlock[4] = sub_1002FB45C;
    aBlock[5] = v30;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_1016174D8;
    v35 = _Block_copy(aBlock);

    swift_errorRetain();

    v36 = v47;
    static DispatchQoS.unspecified.getter();
    v55 = _swiftEmptyArrayStorage;
    sub_1002FDD08(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_10013A8AC();
    v37 = v49;
    v38 = v52;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v35);
    (*(v51 + 8))(v37, v38);
    (*(v48 + 8))(v36, v50);
  }
}

void sub_1002FAE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = static os_log_type_t.default.getter();
  if (qword_1016950B8 != -1)
  {
    swift_once();
  }

  v8 = qword_10177C400;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10138BBE0;
  v30[0] = swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v10 = String.init<A>(describing:)();
  v12 = v11;
  *(v9 + 56) = &type metadata for String;
  v13 = sub_100008C00();
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  *(v9 + 96) = &type metadata for String;
  *(v9 + 104) = v13;
  *(v9 + 64) = v13;
  *(v9 + 72) = 0xD000000000000029;
  *(v9 + 80) = 0x8000000101350340;
  os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v8, "%@: %@", 6, 2, v9);

  v14 = sub_1002FA874(a1);
  if (v14 == 44)
  {
    sub_100008BB8(0, &unk_1016BC050, SPBeacon_ptr);
    v15.super.isa = Array._bridgeToObjectiveC()().super.isa;
    (*(a4 + 16))(a4, v15.super.isa);
  }

  else
  {
    v16 = v14;
    sub_1000035D0((a3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
    v17 = sub_1002FA5DC(v16, a2);
    v18 = v17[2];
    if (v18)
    {
      v33 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v19 = *(a3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_beaconStore);
      v20 = (v17 + 4);
      do
      {
        sub_10001F280(v20, v30);
        v21 = v31;
        v22 = v32;
        v23 = sub_1000035D0(v30, v31);
        sub_100B005BC(v23, v19, v21, v22);
        sub_100007BAC(v30);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v20 += 40;
        --v18;
      }

      while (v18);

      v24 = v33;
    }

    else
    {

      v24 = _swiftEmptyArrayStorage;
    }

    v25 = static os_log_type_t.default.getter();
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_101385D80;
    if (v24 >> 62)
    {
      v27 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v27 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v26 + 56) = &type metadata for Int;
    *(v26 + 64) = &protocol witness table for Int;
    *(v26 + 32) = v27;
    os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, v8, "Returning %i records", v28);

    sub_100008BB8(0, &unk_1016BC050, SPBeacon_ptr);
    v15.super.isa = Array._bridgeToObjectiveC()().super.isa;
    (*(a4 + 16))(a4, v15.super.isa);
  }
}

uint64_t sub_1002FB1D0(uint64_t a1, uint64_t a2)
{
  v4 = static os_log_type_t.default.getter();
  if (qword_1016950B8 != -1)
  {
    swift_once();
  }

  v5 = qword_10177C400;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v7 = String.init<A>(describing:)();
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  v10 = sub_100008C00();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  *(v6 + 96) = &type metadata for String;
  *(v6 + 104) = v10;
  *(v6 + 64) = v10;
  *(v6 + 72) = 0xD000000000000038;
  *(v6 + 80) = 0x80000001013502A0;
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v5, "%@: %@", 6, 2, v6);

  sub_1000035D0((a1 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a1 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  v11 = static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v5, "Initiating firmware update check", 32, 2, _swiftEmptyArrayStorage);
  type metadata accessor for Transaction();

  static Transaction.asyncTask(name:block:)();

  return (*(a2 + 16))(a2, 1);
}

uint64_t sub_1002FB3C4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014744;

  return sub_1002F9B98(v0);
}

uint64_t sub_1002FB45C()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = ((v3 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = v0 + (v3 & 0xFFFFFFFFFFFFFFF8);
  v7 = *(v6 + 8);
  v8 = *(v6 + 16);
  v9 = *(v0 + v4);
  v10 = (v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v0 + v3);

  return sub_1002F40F0(v5, v0 + v2, v13, v7, v8, v9, v11, v12);
}

uint64_t sub_1002FB53C(unsigned __int8 a1, void *a2)
{
  v3 = a1;
  sub_1000BC4D4(&qword_10169D100, &unk_1013D44B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v5;
  sub_1000BC4D4(&qword_10169D108, &qword_10139AAA8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10138BBE0;
  *(v6 + 32) = xmmword_10139AA20;
  *(inited + 48) = v6;
  v7 = sub_1009089DC(inited);
  swift_setDeallocating();
  sub_10000B3A8(inited + 32, &qword_10169D110, &unk_1013D44C0);
  if (v3 == 8)
  {
    v8 = [a2 domain];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (*(v7 + 16))
    {
      v12 = sub_100771D58(v9, v11);
      v14 = v13;

      if (v14)
      {
        v15 = *(*(v7 + 56) + 8 * v12);

        v16 = [a2 code];
        v17 = *(v15 + 16);
        v18 = 32;
        while (v17)
        {
          v19 = *(v15 + v18);
          v18 += 8;
          --v17;
          if (v19 == v16)
          {

            return 1;
          }
        }
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_1002FB6F4(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v67 = 0;
  v68 = a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v65 = *(v7 - 8);
  v66 = v7;
  __chkstk_darwin(v7);
  v64 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v58 - v13;
  v15 = type metadata accessor for BeaconObservation(0);
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  __chkstk_darwin(v20);
  v23 = &v58 - v22;
  if (!a4)
  {
    goto LABEL_8;
  }

  v63 = v21;
  v24 = _convertErrorToNSError(_:)();
  if ((sub_1002FB53C(a3, v24) & 1) == 0)
  {

LABEL_8:
    v28 = type metadata accessor for UUID();
    (*(*(v28 - 8) + 16))(v19, a2, v28);
    static Date.trustedNow.getter(&v19[*(v15 + 20)]);
    v19[*(v15 + 24)] = a3;
    sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
    v29 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_101385D80;
    sub_1002FDC90(v19, v30 + v29, type metadata accessor for BeaconObservation);
    v31 = type metadata accessor for Transaction();
    __chkstk_darwin(v31);
    *(&v58 - 4) = v68;
    *(&v58 - 3) = v30;
    *(&v58 - 2) = 0;
    *(&v58 - 1) = 0;
    static Transaction.named<A>(_:with:)();

    v32 = v19;
    return sub_1002FD958(v32, type metadata accessor for BeaconObservation);
  }

  v61 = v24;
  v25 = static os_log_type_t.default.getter();
  if (qword_1016950B8 != -1)
  {
    v57 = v25;
    swift_once();
    v25 = v57;
  }

  v60 = qword_10177C400;
  os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, qword_10177C400, "Failed to connect to the beacon. Removing last firmware update observations", 75, 2, _swiftEmptyArrayStorage);
  v26 = swift_allocObject();
  *(v26 + 16) = 9;
  v62 = a2;
  v27 = sub_100035730(a2, sub_1002FDCF8, v26);

  sub_1012BB138(v27, v14);

  v59 = *(v16 + 48);
  if (v59(v14, 1, v15) == 1)
  {
    sub_10000B3A8(v14, &qword_1016A42E0, &qword_1013B0010);
  }

  else
  {
    v34 = sub_100029280(v14, v23, type metadata accessor for BeaconObservation);
    __chkstk_darwin(v34);
    *(&v58 - 2) = v23;
    v35 = v64;
    v36 = static DispatchWorkItemFlags.barrier.getter();
    __chkstk_darwin(v36);
    v37 = v62;
    *(&v58 - 4) = v68;
    *(&v58 - 3) = v37;
    *(&v58 - 2) = sub_1002FDEB0;
    *(&v58 - 1) = (&v58 - 4);
    v38 = v67;
    OS_dispatch_queue.sync<A>(flags:execute:)();
    v67 = v38;
    (*(v65 + 8))(v35, v66);
    v39 = static os_log_type_t.default.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_101385D80;
    type metadata accessor for Date();
    sub_1002FDD08(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = v42;
    *(v40 + 56) = &type metadata for String;
    *(v40 + 64) = sub_100008C00();
    *(v40 + 32) = v41;
    *(v40 + 40) = v43;
    os_log(_:dso:log:_:_:)(v39, &_mh_execute_header, v60, "Last firmwareUpdateNotified observation is removed. Observation Date: %@", 72, 2, v40);

    sub_1002FD958(v23, type metadata accessor for BeaconObservation);
  }

  v44 = swift_allocObject();
  *(v44 + 16) = 6;
  v45 = v62;
  v46 = sub_100035730(v62, sub_1002FDCF8, v44);

  sub_1012BB138(v46, v12);

  if (v59(v12, 1, v15) != 1)
  {
    v47 = v63;
    v48 = sub_100029280(v12, v63, type metadata accessor for BeaconObservation);
    __chkstk_darwin(v48);
    *(&v58 - 2) = v47;
    v49 = v64;
    v50 = static DispatchWorkItemFlags.barrier.getter();
    __chkstk_darwin(v50);
    *(&v58 - 4) = v51;
    *(&v58 - 3) = v45;
    *(&v58 - 2) = sub_1002FDD00;
    *(&v58 - 1) = (&v58 - 4);
    OS_dispatch_queue.sync<A>(flags:execute:)();
    (*(v65 + 8))(v49, v66);
    v52 = static os_log_type_t.default.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_101385D80;
    type metadata accessor for Date();
    sub_1002FDD08(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v54 = dispatch thunk of CustomStringConvertible.description.getter();
    v56 = v55;
    *(v53 + 56) = &type metadata for String;
    *(v53 + 64) = sub_100008C00();
    *(v53 + 32) = v54;
    *(v53 + 40) = v56;
    os_log(_:dso:log:_:_:)(v52, &_mh_execute_header, v60, "Last firmwareUpdateInProgress observation is removed. Observation Date: %@", 74, 2, v53);

    v32 = v47;
    return sub_1002FD958(v32, type metadata accessor for BeaconObservation);
  }

  return sub_10000B3A8(v12, &qword_1016A42E0, &qword_1013B0010);
}

uint64_t sub_1002FC038()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(v0 + 16);
  v6 = v0 + ((v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = *(v0 + ((v4 + 31) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_100014744;

  return sub_1002F8064(v5, v0 + v3, v7, v8, v9, v10);
}

uint64_t sub_1002FC170()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100014744;

  return sub_1002F8974(v4, v0 + v3, v6, v7);
}

uint64_t sub_1002FC288()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_1002F5F18(v4, v0 + v3);
}

uint64_t sub_1002FC3B4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_1002FC490()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100014744;

  return sub_1002F7A78(v4, v0 + v3, v6, v7);
}

uint64_t sub_1002FC5A8(uint64_t a1)
{
  v1[17] = sub_1000BC4D4(&qword_1016B1500, &unk_1013C57F0);
  v1[18] = swift_task_alloc();
  v3 = type metadata accessor for LeashRecord(0);
  v1[19] = v3;
  v1[20] = *(v3 - 8);
  v1[21] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v1[22] = v4;
  v1[23] = *(v4 - 8);
  v1[24] = swift_task_alloc();
  v5 = type metadata accessor for OwnedBeaconRecord(0);
  v1[25] = v5;
  v1[5] = v5;
  v1[6] = sub_1002FDD08(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord, &unk_1013E7DBC);
  v6 = sub_1000280DC(v1 + 2);
  v1[26] = v6;
  sub_1002FDC90(a1, v6, type metadata accessor for OwnedBeaconRecord);
  v7 = swift_task_alloc();
  v1[27] = v7;
  *v7 = v1;
  v7[1] = sub_1002FC7A4;

  return daemon.getter();
}

uint64_t sub_1002FC7A4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 224) = a1;

  v3 = swift_task_alloc();
  *(v2 + 232) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_1002FDD08(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1002FDD08(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_1002FC980;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1002FC980(uint64_t a1)
{
  *(*v2 + 240) = a1;

  if (v1)
  {

    v3 = sub_1002FD004;
  }

  else
  {

    v3 = sub_1002FCAD0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002FCAD0()
{
  if (qword_101695510 != -1)
  {
    swift_once();
  }

  AnyCurrentValuePublisher.value.getter();

  *(v0 + 265) = *(v0 + 264);
  v1 = swift_task_alloc();
  *(v0 + 248) = v1;
  *v1 = v0;
  v1[1] = sub_1002FCBD4;
  v2 = *(v0 + 208);

  return sub_100A078AC(v2);
}

uint64_t sub_1002FCBD4(char a1)
{
  *(*v1 + 266) = a1;

  return _swift_task_switch(sub_1002FCCD4, 0, 0);
}

uint64_t sub_1002FCCD4()
{
  v19 = v0;
  if (*(v0 + 265) != 1 || *(v0 + 266) == 0)
  {
    v2 = *(v0 + 240);

    return _swift_task_switch(sub_1002FD148, v2, 0);
  }

  else
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177B780);
    sub_10001F280(v0 + 16, v0 + 96);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 192);
      v7 = *(v0 + 200);
      v9 = *(v0 + 176);
      v8 = *(v0 + 184);
      v10 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v10 = 136315651;
      *(v10 + 4) = sub_1000136BC(0xD000000000000023, 0x8000000101350670, &v18);
      *(v10 + 12) = 2160;
      *(v10 + 14) = 1752392040;
      *(v10 + 22) = 2081;
      v11 = sub_1000035D0((v0 + 96), *(v0 + 120));
      (*(v8 + 16))(v6, &v11[*(v7 + 20)], v9);
      sub_1002FDD08(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      v14 = v13;
      (*(v8 + 8))(v6, v9);
      sub_100007BAC((v0 + 96));
      v15 = sub_1000136BC(v12, v14, &v18);

      *(v10 + 24) = v15;
      _os_log_impl(&_mh_execute_header, v4, v5, "%s Separation monitoring is paused for %{private,mask.hash}s", v10, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100007BAC((v0 + 96));
    }

    sub_100007BAC((v0 + 16));

    v16 = *(v0 + 8);

    return v16(5);
  }
}

uint64_t sub_1002FD004()
{
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B7F8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No beaconStoreActor.", v4, 2u);
  }

  sub_100007BAC((v0 + 16));

  v5 = *(v0 + 8);

  return v5(2);
}

uint64_t sub_1002FD148()
{

  v1 = swift_task_alloc();
  v0[32] = v1;
  *v1 = v0;
  v1[1] = sub_1002FD21C;
  v2 = v0[30];
  v4 = v0[17];
  v3 = v0[18];

  return unsafeBlocking<A>(context:_:)(v3, 0xD000000000000010, 0x800000010134A8C0, sub_1002FD8A8, v2, v4);
}

uint64_t sub_1002FD21C()
{

  return _swift_task_switch(sub_1002FD334, 0, 0);
}

uint64_t sub_1002FD334()
{
  v29 = v0;
  v1 = v0[19];
  v2 = v0[18];
  if ((*(v0[20] + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &qword_1016B1500, &unk_1013C57F0);
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177B780);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v28 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_1000136BC(0xD000000000000023, 0x8000000101350670, &v28);
      _os_log_impl(&_mh_execute_header, v4, v5, "%s No leash record!", v6, 0xCu);
      sub_100007BAC(v7);
    }

    goto LABEL_7;
  }

  v9 = v0[25];
  v10 = v0[26];
  v11 = v0[21];
  sub_100029280(v2, v11, type metadata accessor for LeashRecord);
  if (sub_1005C8A30(v10 + *(v9 + 20), *(v11 + *(v1 + 24))))
  {
    sub_1002FD958(v0[21], type metadata accessor for LeashRecord);

    v8 = 0;
  }

  else
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000076D4(v12, qword_10177B780);
    sub_10001F280((v0 + 2), (v0 + 7));
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v13, v14))
    {
      v26 = v0[21];

      sub_100007BAC(v0 + 7);
      sub_1002FD958(v26, type metadata accessor for LeashRecord);
LABEL_7:
      v8 = 2;
      goto LABEL_14;
    }

    v16 = v0[23];
    v15 = v0[24];
    v17 = v0[22];
    v27 = v0[21];
    v18 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v18 = 136315651;
    *(v18 + 4) = sub_1000136BC(0xD000000000000023, 0x8000000101350670, &v28);
    *(v18 + 12) = 2160;
    *(v18 + 14) = 1752392040;
    *(v18 + 22) = 2081;
    v19 = sub_1000035D0(v0 + 7, v0[10]);
    (*(v16 + 16))(v15, &v19[*(v9 + 20)], v17);
    sub_1002FDD08(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    (*(v16 + 8))(v15, v17);
    sub_100007BAC(v0 + 7);
    v23 = sub_1000136BC(v20, v22, &v28);

    *(v18 + 24) = v23;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s Leash record does NOT contain %{private,mask.hash}s", v18, 0x20u);
    v8 = 2;
    swift_arrayDestroy();

    sub_1002FD958(v27, type metadata accessor for LeashRecord);
  }

LABEL_14:
  sub_100007BAC(v0 + 2);

  v24 = v0[1];

  return v24(v8);
}

uint64_t sub_1002FD820@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1002F755C(v4, a1);
}

uint64_t sub_1002FD958(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002FD9C0()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1002FDA5C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return a3(a1, v6, v7, v8);
}

uint64_t sub_1002FDB1C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v3 + v7);
  v9 = (v3 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return a3(a1, v3 + v6, v8, v10, v11);
}

uint64_t sub_1002FDC90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002FDD08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002FDD64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100014650;

  return sub_1002F3818(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1002FDEB4()
{
  v1 = type metadata accessor for Endianness();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for BeaconProductInfoRecord(0);
  v3 = *(v0 + *(v2 + 112));
  if (v3 == 2)
  {
    v14 = *(v0 + *(v2 + 24));
    sub_1000DF96C();

    v4 = Data.init<A>(hexString:)();
    if (v5 >> 60 == 15)
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      v6 = v4;
      v7 = v5;
      sub_100017D5C(v4, v5);
      v8 = sub_100314594(v6, v7);
      if (v9 >> 60 == 15)
      {
        sub_100006654(v6, v7);
        LOBYTE(v3) = 0;
      }

      else
      {
        v10 = v8;
        v11 = v9;
        sub_100313B54(v8, v9);
        static Endianness.current.getter();
        sub_10012BF24();
        FixedWidthInteger.init(data:ofEndianness:)();
        sub_100006654(v10, v11);
        sub_100006654(v6, v7);
        if (BYTE4(v14))
        {
          v12 = 0;
        }

        else
        {
          v12 = v14;
        }

        LOBYTE(v3) = (sub_100B8A580(v12) & 0xFE) != 2;
      }
    }
  }

  return v3 & 1;
}

unint64_t sub_1002FE04C(uint64_t (*a1)(void), void (*a2)(uint64_t *, unint64_t), uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  v79 = a4;
  v74 = a2;
  v6 = a1(0);
  v7 = __chkstk_darwin(v6);
  v73 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v78 = &v65 - v9;
  v10 = type metadata accessor for MemberSharingCircle(0);
  __chkstk_darwin(v10);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&qword_10169D398, &qword_10139ADE8);
  __chkstk_darwin(v13 - 8);
  v75 = &v65 - v14;
  v15 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v15 - 8);
  v76 = (&v65 - v16);
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v71 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v70 = &v65 - v21;
  v77 = v4;
  result = sub_1002FFAE4(v4, v12, type metadata accessor for MemberSharingCircle);
  v72 = v10;
  v23 = *(*&v12[*(v10 + 36)] + 16);
  if (v23)
  {
    v66 = a3;
    v68 = v6;
    v69 = v17;
    v24 = sub_1003A85FC(v23, 0);
    v67 = v18;
    v25 = sub_1003CC2CC();
    v26 = v80;

    result = sub_1001BE470(v26);
    if (v25 != v23)
    {
      __break(1u);
      return result;
    }

    v17 = v69;
    v6 = v68;
    v18 = v67;
    a3 = v66;
  }

  else
  {
    v24 = _swiftEmptyArrayStorage;
  }

  __chkstk_darwin(result);
  *(&v65 - 2) = v12;
  v27 = sub_1001BE474(_swiftEmptyDictionarySingleton, v74, (&v65 - 4), v24);

  v28 = sub_1002FFB4C(v12, type metadata accessor for MemberSharingCircle);
  __chkstk_darwin(v28);
  v29 = v77;
  *(&v65 - 2) = v77;
  v30 = v75;
  sub_1012BB870(a3, (&v65 - 4), v27, v75);

  v31 = sub_1000BC4D4(&qword_101698C18, &qword_101390740);
  if ((*(*(v31 - 8) + 48))(v30, 1, v31) == 1)
  {
    sub_10000B3A8(v30, &qword_10169D398, &qword_10139ADE8);
    v32 = v76;
    (*(v18 + 56))(v76, 1, 1, v17);
    v33 = v78;
  }

  else
  {
    v34 = *(v31 + 48);
    v35 = *(v18 + 32);
    v36 = v76;
    v35(v76, v30, v17);
    (*(v18 + 56))(v36, 0, 1, v17);
    v37 = v30;
    v38 = *(v18 + 8);
    v39 = &v37[v34];
    v32 = v36;
    v38(v39, v17);
    v40 = (*(v18 + 48))(v36, 1, v17);
    v33 = v78;
    if (v40 != 1)
    {
      v60 = v70;
      v35(v70, v32, v17);
      sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_101385D80;
      *(inited + 32) = 0x6564496572616873;
      *(inited + 40) = 0xEF7265696669746ELL;
      v62 = UUID.uuidString.getter();
      *(inited + 72) = &type metadata for String;
      *(inited + 48) = v62;
      *(inited + 56) = v63;
      v64 = sub_10090403C(inited);
      swift_setDeallocating();
      sub_10000B3A8(inited + 32, &unk_101695C20, &unk_101386D90);
      v38(v60, v17);
      return v64;
    }
  }

  sub_10000B3A8(v32, &qword_1016980D0, &unk_10138F3B0);
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  sub_1000076D4(v41, qword_10177A560);
  v42 = v79;
  sub_1002FFAE4(v29, v33, v79);
  v43 = v73;
  sub_1002FFAE4(v29, v73, v42);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v80 = v78;
    *v46 = 141558787;
    *(v46 + 4) = 1752392040;
    *(v46 + 12) = 2081;
    v47 = *(v6 + 24);
    v75 = *(v18 + 16);
    LODWORD(v77) = v45;
    v48 = v71;
    (v75)(v71, v33 + v47, v17);
    sub_1002FFB4C(v33, v42);
    sub_1002FFBAC();
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    v50 = v43;
    v52 = v51;
    v76 = v44;
    v53 = *(v18 + 8);
    v53(v48, v17);
    v54 = sub_1000136BC(v49, v52, &v80);

    *(v46 + 14) = v54;
    *(v46 + 22) = 2160;
    *(v46 + 24) = 1752392040;
    *(v46 + 32) = 2081;
    (v75)(v48, v50 + *(v72 + 28), v17);
    sub_1002FFB4C(v50, v79);
    v55 = dispatch thunk of CustomStringConvertible.description.getter();
    v57 = v56;
    v53(v48, v17);
    v58 = sub_1000136BC(v55, v57, &v80);

    *(v46 + 34) = v58;
    v59 = v76;
    _os_log_impl(&_mh_execute_header, v76, v77, "Failed to find client share identifier for transparency notification. Member %{private,mask.hash}s,\ncircle: %{private,mask.hash}s.", v46, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    sub_1002FFB4C(v43, v42);
    sub_1002FFB4C(v33, v42);
  }

  return sub_10090403C(_swiftEmptyArrayStorage);
}

uint64_t sub_1002FE930(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_1000BC4D4(&qword_101698C18, &qword_101390740);
  a3(0);
  return static UUID.== infix(_:_:)() & 1;
}

uint64_t sub_1002FE9A8()
{
  v1 = type metadata accessor for LocalizationUtility.Table();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000BC4D4(&unk_1016B1550, &unk_10139ADF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138BBE0;
  updated = type metadata accessor for ItemShareCircleUpdateUserNotification(0);
  *(inited + 32) = sub_1010E09D0(*(v0 + *(updated + 32)), *(v0 + *(updated + 32) + 8), 0);
  *(inited + 40) = v7;
  *(inited + 48) = sub_1010E09D0(*(v0 + *(updated + 28)), *(v0 + *(updated + 28) + 8), 0);
  *(inited + 56) = v8;
  (*(v2 + 104))(v4, enum case for LocalizationUtility.Table.itemSharing(_:), v1);
  static LocalizationUtility.localizedString(key:table:)();
  (*(v2 + 8))(v4, v1);
  sub_10039B904(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v9 = String.init(format:arguments:)();

  return v9;
}

uint64_t sub_1002FEC00()
{
  v1 = type metadata accessor for LocalizationUtility.Table();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000BC4D4(&unk_1016B1550, &unk_10139ADF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138BBE0;
  updated = type metadata accessor for ItemShareAirTagCircleUpdateUserNotification(0);
  *(inited + 32) = sub_1010E09D0(*(v0 + updated[8]), *(v0 + updated[8] + 8), 0);
  *(inited + 40) = v7;
  *(inited + 48) = sub_1010E09D0(*(v0 + updated[7]), *(v0 + updated[7] + 8), 0);
  *(inited + 56) = v8;
  v9 = (v0 + updated[9]);
  v10 = *v9;
  v11 = v9[1];
  if (*v9 != 0x676154726941 || v11 != 0xE600000000000000)
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v15 = v10 == 0x676154726961 && v11 == 0xE600000000000000;
    if ((v13 & 1) == 0 && !v15)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  (*(v2 + 104))(v4, enum case for LocalizationUtility.Table.itemSharing(_:), v1);
  static LocalizationUtility.localizedString(key:table:)();
  (*(v2 + 8))(v4, v1);
  sub_10039B904(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v16 = String.init(format:arguments:)();

  return v16;
}

uint64_t sub_1002FEF08()
{
  v1 = type metadata accessor for LocalizationUtility.Table();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000BC4D4(&unk_1016B1550, &unk_10139ADF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138BBE0;
  v6 = type metadata accessor for ItemShareCircleUpdateWithBlockedContactUserNotification(0);
  *(inited + 32) = sub_1010E09D0(*(v0 + *(v6 + 32)), *(v0 + *(v6 + 32) + 8), 0);
  *(inited + 40) = v7;
  *(inited + 48) = sub_1010E09D0(*(v0 + *(v6 + 28)), *(v0 + *(v6 + 28) + 8), 0);
  *(inited + 56) = v8;
  (*(v2 + 104))(v4, enum case for LocalizationUtility.Table.itemSharing(_:), v1);
  static LocalizationUtility.localizedString(key:table:)();
  (*(v2 + 8))(v4, v1);
  sub_10039B904(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v9 = String.init(format:arguments:)();

  return v9;
}

uint64_t sub_1002FF158()
{
  v1 = type metadata accessor for LocalizationUtility.Table();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000BC4D4(&unk_1016B1550, &unk_10139ADF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138BBE0;
  v6 = type metadata accessor for ItemShareAirTagCircleUpdateWithBlockedContactUserNotification(0);
  *(inited + 32) = sub_1010E09D0(*(v0 + v6[8]), *(v0 + v6[8] + 8), 0);
  *(inited + 40) = v7;
  *(inited + 48) = sub_1010E09D0(*(v0 + v6[7]), *(v0 + v6[7] + 8), 0);
  *(inited + 56) = v8;
  v9 = (v0 + v6[9]);
  v10 = *v9;
  v11 = v9[1];
  if (*v9 != 0x676154726941 || v11 != 0xE600000000000000)
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v15 = v10 == 0x676154726961 && v11 == 0xE600000000000000;
    if ((v13 & 1) == 0 && !v15)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  (*(v2 + 104))(v4, enum case for LocalizationUtility.Table.itemSharing(_:), v1);
  static LocalizationUtility.localizedString(key:table:)();
  (*(v2 + 8))(v4, v1);
  sub_10039B904(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v16 = String.init(format:arguments:)();

  return v16;
}

uint64_t sub_1002FF3F4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MemberSharingCircle(0) + 28);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1002FF470(uint64_t a1)
{
  v3 = type metadata accessor for LocalizationUtility.Table();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000BC4D4(&unk_1016B1550, &unk_10139ADF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  v8 = (v1 + *(a1 + 20));
  v9 = v8[1];
  *(inited + 32) = *v8;
  *(inited + 40) = v9;
  (*(v4 + 104))(v6, enum case for LocalizationUtility.Table.itemSharing(_:), v3);

  static LocalizationUtility.localizedString(key:table:)();
  (*(v4 + 8))(v6, v3);
  sub_10039B904(inited);
  swift_setDeallocating();
  sub_1002FFC04(inited + 32);
  v10 = String.init(format:arguments:)();

  return v10;
}

uint64_t sub_1002FF780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MemberSharingCircle(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for UUID();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1002FF8BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MemberSharingCircle(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for UUID();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1002FFA04(uint64_t a1)
{
  result = type metadata accessor for MemberSharingCircle(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002FFAE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002FFB4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1002FFBAC()
{
  result = qword_101696930;
  if (!qword_101696930)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101696930);
  }

  return result;
}

uint64_t sub_1002FFD18()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177A8A0);
  v1 = sub_1000076D4(v0, qword_10177A8A0);
  if (qword_101694548 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177A8B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002FFDE0(uint64_t a1)
{
  v2[31] = a1;
  v2[32] = v1;
  v3 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v2[33] = v3;
  v2[34] = *(v3 - 8);
  v2[35] = swift_task_alloc();
  v4 = type metadata accessor for ContinuousClock.Instant();
  v2[36] = v4;
  v2[37] = *(v4 - 8);
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v5 = type metadata accessor for ContinuousClock();
  v2[41] = v5;
  v2[42] = *(v5 - 8);
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();

  return _swift_task_switch(sub_1002FFF7C, v1, 0);
}

uint64_t sub_1002FFF7C()
{
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  *(v0 + 224) = 0x7365547265646E75;
  *(v0 + 232) = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (*(v0 + 384))
  {
    v1 = type metadata accessor for GenericError();
    sub_1003024E4(&qword_1016978C0, 255, &type metadata accessor for GenericError, &protocol conformance descriptor for GenericError);
    swift_allocError();
    *v2 = 0xD00000000000001ELL;
    v2[1] = 0x8000000101350B00;
    (*(*(v1 - 8) + 104))(v2, enum case for GenericError.error(_:), v1);
    swift_willThrow();
LABEL_14:

    v17 = *(v0 + 8);

    return v17();
  }

  ContinuousClock.init()();
  if (qword_101694540 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  *(v0 + 360) = sub_1000076D4(v3, qword_10177A8A0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Retrieving fmipAccount info...", v6, 2u);
  }

  ContinuousClock.now.getter();
  v7 = [objc_opt_self() defaultStore];
  *(v0 + 368) = v7;
  if (!v7)
  {
    v10 = *(v0 + 352);
    v11 = *(v0 + 328);
    v12 = *(v0 + 336);
    v13 = *(v0 + 320);
    v14 = *(v0 + 288);
    v15 = *(v0 + 296);
    sub_100302490();
    swift_allocError();
    *v16 = 0;
    v16[1] = 0;
    swift_willThrow();
    (*(v15 + 8))(v13, v14);
    (*(v12 + 8))(v10, v11);
    goto LABEL_14;
  }

  v8 = v7;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 240;
  *(v0 + 24) = sub_1003003D4;
  v9 = swift_continuation_init();
  *(v0 + 216) = sub_1000BC4D4(&qword_1016AF870, &qword_1013E3650);
  *(v0 + 160) = _NSConcreteStackBlock;
  *(v0 + 168) = 1107296256;
  *(v0 + 176) = sub_100C70FE4;
  *(v0 + 184) = &unk_101617C28;
  *(v0 + 192) = v9;
  [v8 aa_primaryAppleAccountWithCompletion:v0 + 160];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_1003003D4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 376) = v2;
  v3 = *(v1 + 256);
  if (v2)
  {
    v4 = sub_100300998;
  }

  else
  {
    v4 = sub_1003004F4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003004F4()
{
  v50 = v0;
  v1 = *(v0 + 240);
  if (v1)
  {
    if ((static SystemInfo.underTest.getter() & 1) == 0)
    {
      v48 = (v0 + 80);
      v10 = *(v0 + 352);
      v12 = *(v0 + 336);
      v11 = *(v0 + 344);
      v13 = *(v0 + 328);
      (*(*(v0 + 296) + 16))(*(v0 + 312), *(v0 + 320), *(v0 + 288));
      (*(v12 + 16))(v11, v10, v13);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      v16 = os_log_type_enabled(v14, v15);
      v18 = *(v0 + 336);
      v17 = *(v0 + 344);
      v19 = *(v0 + 328);
      v20 = *(v0 + 312);
      if (v16)
      {
        v47 = v15;
        v21 = *(v0 + 296);
        v22 = *(v0 + 304);
        v45 = *(v0 + 328);
        v23 = *(v0 + 272);
        v24 = *(v0 + 280);
        v42 = *(v0 + 288);
        v43 = *(v0 + 264);
        buf = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v49 = v46;
        *buf = 136315138;
        ContinuousClock.now.getter();
        static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
        sub_1003024E4(&qword_1016C11E0, 255, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
        v40 = static Duration.description<A>(_:_:units:)();
        log = v14;
        v26 = v25;
        (*(v23 + 8))(v24, v43);
        v27 = *(v21 + 8);
        v27(v22, v42);
        v28 = *(v18 + 8);
        v28(v17, v45);
        v27(v20, v42);
        v29 = sub_1000136BC(v40, v26, &v49);

        *(buf + 4) = v29;
        _os_log_impl(&_mh_execute_header, log, v47, "aa_primaryAppleAccount fetch duration: %s", buf, 0xCu);
        sub_100007BAC(v46);
      }

      else
      {
        v30 = *(v0 + 288);
        v31 = *(v0 + 296);

        v28 = *(v18 + 8);
        v28(v17, v19);
        v27 = *(v31 + 8);
        v27(v20, v30);
      }

      sub_10030252C(v1, *(v0 + 368), v48);
      v32 = *(v0 + 352);
      v35 = *(v0 + 328);
      v36 = *(v0 + 248);
      v27(*(v0 + 320), *(v0 + 288));
      v28(v32, v35);
      *v36 = *v48;
      v37 = *(v0 + 96);
      v38 = *(v0 + 112);
      v39 = *(v0 + 144);
      v36[3] = *(v0 + 128);
      v36[4] = v39;
      v36[1] = v37;
      v36[2] = v38;

      v33 = *(v0 + 8);
      goto LABEL_10;
    }

    v2 = *(v0 + 368);
  }

  else
  {
  }

  v3 = *(v0 + 352);
  v4 = *(v0 + 328);
  v5 = *(v0 + 336);
  v6 = *(v0 + 320);
  v7 = *(v0 + 288);
  v8 = *(v0 + 296);
  sub_100302490();
  swift_allocError();
  *v9 = 0;
  v9[1] = 0;
  swift_willThrow();
  (*(v8 + 8))(v6, v7);
  (*(v5 + 8))(v3, v4);

  v33 = *(v0 + 8);
LABEL_10:

  return v33();
}

uint64_t sub_100300998(uint64_t a1)
{
  v2 = v1[46];
  v3 = v1[44];
  v4 = v1[41];
  v5 = v1[42];
  v6 = v1[40];
  v7 = v1[36];
  v8 = v1[37];
  swift_willThrow();

  (*(v8 + 8))(v6, v7);
  (*(v5 + 8))(v3, v4);

  v9 = v1[1];

  return v9();
}

uint64_t sub_100300A9C(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  v3 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v2[23] = v3;
  v2[24] = *(v3 - 8);
  v2[25] = swift_task_alloc();
  v4 = type metadata accessor for ContinuousClock.Instant();
  v2[26] = v4;
  v2[27] = *(v4 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v5 = type metadata accessor for ContinuousClock();
  v2[31] = v5;
  v2[32] = *(v5 - 8);
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();

  return _swift_task_switch(sub_100300C38, v1, 0);
}

uint64_t sub_100300C38()
{
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  *(v0 + 144) = 0x7365547265646E75;
  *(v0 + 152) = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (*(v0 + 304))
  {
    v1 = type metadata accessor for GenericError();
    sub_1003024E4(&qword_1016978C0, 255, &type metadata accessor for GenericError, &protocol conformance descriptor for GenericError);
    swift_allocError();
    *v2 = 0xD00000000000001ELL;
    v2[1] = 0x8000000101350B00;
    (*(*(v1 - 8) + 104))(v2, enum case for GenericError.error(_:), v1);
    swift_willThrow();
LABEL_14:

    v17 = *(v0 + 8);

    return v17();
  }

  ContinuousClock.init()();
  if (qword_101694540 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  *(v0 + 280) = sub_1000076D4(v3, qword_10177A8A0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Retrieving searchpartyAccount info...", v6, 2u);
  }

  ContinuousClock.now.getter();
  v7 = [objc_opt_self() defaultStore];
  *(v0 + 288) = v7;
  if (!v7)
  {
    v10 = *(v0 + 272);
    v11 = *(v0 + 248);
    v12 = *(v0 + 256);
    v13 = *(v0 + 240);
    v14 = *(v0 + 208);
    v15 = *(v0 + 216);
    sub_100302490();
    swift_allocError();
    *v16 = 0;
    v16[1] = 0;
    swift_willThrow();
    (*(v15 + 8))(v13, v14);
    (*(v12 + 8))(v10, v11);
    goto LABEL_14;
  }

  v8 = v7;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 160;
  *(v0 + 24) = sub_100301090;
  v9 = swift_continuation_init();
  *(v0 + 136) = sub_1000BC4D4(&qword_1016AF870, &qword_1013E3650);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_100C70FE4;
  *(v0 + 104) = &unk_101617C00;
  *(v0 + 112) = v9;
  [v8 aa_primaryAppleAccountWithCompletion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_100301090()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 296) = v2;
  v3 = *(v1 + 176);
  if (v2)
  {
    v4 = sub_10030161C;
  }

  else
  {
    v4 = sub_1003011B0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003011B0()
{
  v45 = v0;
  v1 = *(v0 + 160);
  if (v1)
  {
    if ((static SystemInfo.underTest.getter() & 1) == 0)
    {
      v10 = *(v0 + 272);
      v12 = *(v0 + 256);
      v11 = *(v0 + 264);
      v13 = *(v0 + 248);
      (*(*(v0 + 216) + 16))(*(v0 + 232), *(v0 + 240), *(v0 + 208));
      (*(v12 + 16))(v11, v10, v13);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      v16 = os_log_type_enabled(v14, v15);
      v18 = *(v0 + 256);
      v17 = *(v0 + 264);
      v19 = *(v0 + 248);
      v20 = *(v0 + 232);
      if (v16)
      {
        v40 = *(v0 + 248);
        v43 = v15;
        v21 = *(v0 + 216);
        v22 = *(v0 + 224);
        v23 = *(v0 + 200);
        log = v14;
        v24 = *(v0 + 192);
        v37 = *(v0 + 208);
        v38 = *(v0 + 184);
        buf = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v44 = v41;
        *buf = 136315138;
        ContinuousClock.now.getter();
        static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
        sub_1003024E4(&qword_1016C11E0, 255, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
        v36 = static Duration.description<A>(_:_:units:)();
        v26 = v25;
        (*(v24 + 8))(v23, v38);
        v27 = *(v21 + 8);
        v27(v22, v37);
        v28 = *(v18 + 8);
        v28(v17, v40);
        v27(v20, v37);
        v29 = sub_1000136BC(v36, v26, &v44);

        *(buf + 4) = v29;
        _os_log_impl(&_mh_execute_header, log, v43, "aa_primaryAppleAccount fetch duration: %s", buf, 0xCu);
        sub_100007BAC(v41);
      }

      else
      {
        v31 = *(v0 + 208);
        v30 = *(v0 + 216);

        v28 = *(v18 + 8);
        v28(v17, v19);
        v27 = *(v30 + 8);
        v27(v20, v31);
      }

      sub_100301720(*(v0 + 288), v1, *(v0 + 168));
      v32 = *(v0 + 272);
      v35 = *(v0 + 248);
      v27(*(v0 + 240), *(v0 + 208));
      v28(v32, v35);

      v33 = *(v0 + 8);
      goto LABEL_10;
    }

    v2 = *(v0 + 288);
  }

  else
  {
  }

  v3 = *(v0 + 272);
  v4 = *(v0 + 248);
  v5 = *(v0 + 256);
  v6 = *(v0 + 240);
  v7 = *(v0 + 208);
  v8 = *(v0 + 216);
  sub_100302490();
  swift_allocError();
  *v9 = 0;
  v9[1] = 0;
  swift_willThrow();
  (*(v8 + 8))(v6, v7);
  (*(v5 + 8))(v3, v4);

  v33 = *(v0 + 8);
LABEL_10:

  return v33();
}

uint64_t sub_10030161C(uint64_t a1)
{
  v2 = v1[36];
  v3 = v1[34];
  v4 = v1[31];
  v5 = v1[32];
  v6 = v1[30];
  v7 = v1[26];
  v8 = v1[27];
  swift_willThrow();

  (*(v8 + 8))(v6, v7);
  (*(v5 + 8))(v3, v4);

  v9 = v1[1];

  return v9();
}

void sub_100301720(id a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v54 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a2 aa_personID];
  if (!v16)
  {
    goto LABEL_7;
  }

  v60 = v13;
  v61 = v12;
  v17 = v16;
  v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = [a2 username];
  if (!v20)
  {

LABEL_7:
    sub_100302490();
    swift_allocError();
    v28 = xmmword_10139AE20;
LABEL_21:
    *v27 = v28;
    swift_willThrow();

LABEL_22:
    return;
  }

  v66 = v19;
  v21 = v20;
  v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24 = [a2 dataclassProperties];
  if (!v24)
  {

    v64 = 0u;
    v65 = 0u;
LABEL_18:
    sub_10000B3A8(&v64, &unk_1016A0B10, &qword_10139BF40);
LABEL_20:
    sub_100302490();
    swift_allocError();
    v28 = xmmword_10139AE10;
    goto LABEL_21;
  }

  v25 = v24;
  v56 = a3;
  v58 = a1;
  *&v62 = 0xD00000000000001FLL;
  *(&v62 + 1) = 0x8000000101350B20;
  v26 = [v24 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  if (v26)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v62 = 0u;
    v63 = 0u;
  }

  v64 = v62;
  v65 = v63;
  if (!*(&v63 + 1))
  {

    a1 = v58;
    goto LABEL_18;
  }

  sub_1000BC4D4(&qword_1016BFE60, &qword_1013D6B40);
  if ((swift_dynamicCast() & 1) == 0)
  {

    a1 = v58;
    goto LABEL_20;
  }

  v29 = v62;
  if (!*(v62 + 16) || (v30 = sub_100771D58(0xD000000000000017, 0x8000000101350B40), (v31 & 1) == 0) || (sub_100013894(*(v29 + 56) + 32 * v30, &v64), (swift_dynamicCast() & 1) == 0))
  {

    sub_100302490();
    swift_allocError();
    *v34 = 0xD000000000000017;
    v34[1] = 0x8000000101350B40;
    goto LABEL_24;
  }

  v55 = 0x8000000101350B40;
  URL.init(string:)();

  v32 = v60;
  if ((*(v60 + 48))(v11, 1, v61) == 1)
  {

    sub_10000B3A8(v11, &unk_101696AC0, &qword_101390A60);
    sub_100302490();
    swift_allocError();
    *v33 = 0xD000000000000017;
    v33[1] = v55;
LABEL_24:
    swift_willThrow();

    goto LABEL_22;
  }

  v36 = *(v32 + 32);
  v35 = v32 + 32;
  v55 = v36;
  v36(v15, v11, v61);
  if (*(v29 + 16))
  {
    v37 = sub_100771D58(0x755F656369766564, 0xEA00000000006C72);
    v38 = v66;
    if (v39)
    {
      sub_100013894(*(v29 + 56) + 32 * v37, &v64);

      if (swift_dynamicCast())
      {
        URL.init(string:)();

        v40 = v58;
        goto LABEL_33;
      }
    }

    else
    {
    }

    v40 = v58;
    v41 = v60;
  }

  else
  {

    v40 = v58;
    v41 = v60;
    v38 = v66;
  }

  (*(v41 + 56))(v9, 1, 1, v61);
LABEL_33:
  v42 = [v40 credentialForAccount:a2];
  if (v42)
  {
    v43 = v42;
    v44 = [v42 credentialItemForKey:ACSearchPartyTokenKey];
    if (v44)
    {
      v60 = v35;
      v45 = v44;
      v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = v9;
      v47 = v38;
      v48 = v46;
      v58 = v49;

      v50 = v56;
      *v56 = v57;
      v50[1] = v23;
      v51 = v58;
      v50[2] = v59;
      v50[3] = v47;
      v50[4] = v48;
      v50[5] = v51;
      v52 = type metadata accessor for SearchpartyAccount(0);
      v55(v50 + *(v52 + 28), v15, v61);
      sub_1000D55F0(v66, v50 + *(v52 + 32));
      return;
    }
  }

  else
  {
  }

  sub_100302490();
  swift_allocError();
  *v53 = xmmword_10139AE00;
  swift_willThrow();

  sub_10000B3A8(v9, &unk_101696AC0, &qword_101390A60);
  (*(v60 + 8))(v15, v61);
}

uint64_t sub_100301E60(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for AccountService();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v5, a2);
}

uint64_t sub_100301F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for AccountService();
  *v8 = v4;
  v8[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v9, a4);
}

uint64_t sub_100301FCC(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for AccountService();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v5, a2);
}