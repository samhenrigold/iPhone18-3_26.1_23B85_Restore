uint64_t sub_10026FEF8()
{
  v13 = v0;
  if (qword_101694508 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[53] = sub_1000076D4(v1, qword_10169BB90);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    type metadata accessor for AccessoryPairingAnalytics(0);
    v6 = Array.description.getter();
    v8 = sub_1000136BC(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "All analytics: %s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v9 = *(v0[8] + 128);
  v0[54] = v9;

  v10 = swift_task_alloc();
  v0[55] = v10;
  *v10 = v0;
  v10[1] = sub_1002702E4;

  return withTimeout<A>(_:block:)(v10, 2000000000000000000, 0, &unk_101395AF0, v9, &type metadata for () + 1);
}

uint64_t sub_100270120()
{

  return _swift_task_switch(sub_100270188, 0, 0);
}

uint64_t sub_100270188()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002702E4()
{
  *(*v1 + 448) = v0;

  if (v0)
  {

    v2 = sub_100274260;
  }

  else
  {
    v2 = sub_100270428;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100270428()
{
  v1 = *(v0 + 88);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  *(v0 + 816) = *(v1 + 80);
  v2 = swift_allocObject();
  *(v0 + 456) = v2;
  *(v2 + 16) = xmmword_101385D80;
  Identifier.id.getter();
  v5 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:));
  v3 = swift_task_alloc();
  *(v0 + 464) = v3;
  *v3 = v0;
  v3[1] = sub_100270540;

  return v5(v2);
}

uint64_t sub_100270540(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 472) = a1;
  *(v3 + 480) = v1;

  if (v1)
  {
    v4 = sub_1002743BC;
  }

  else
  {

    v4 = sub_10027065C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10027065C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = v3;
  v4 = v3[59];
  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
LABEL_3:
      if ((v4 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return _swift_task_switch(v5, a2, a3);
        }

        v6 = *(v3[59] + 32);
      }

      v3[61] = v6;

      type metadata accessor for Peripheral();
      sub_10027EB7C(&unk_1016C11B0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
      v7 = dispatch thunk of Actor.unownedExecutor.getter();
      a3 = v8;
      v3[62] = v7;
      v3[63] = v8;
      v5 = sub_100270A58;
      a2 = v7;

      return _swift_task_switch(v5, a2, a3);
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v9 = v3[41];
  v10 = v3[38];
  v11 = v3[39];
  v12 = v3[9];

  (*(v11 + 16))(v9, v12, v10);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  v15 = os_log_type_enabled(v13, v14);
  v16 = v3[41];
  v18 = v3[38];
  v17 = v3[39];
  if (v15)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v27 = v20;
    *v19 = 136446210;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v17 + 8))(v16, v18);
    v24 = sub_1000136BC(v21, v23, &v27);

    *(v19 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v13, v14, "Unable to retrieve a Peripheral for %{public}s", v19, 0xCu);
    sub_100007BAC(v20);
  }

  else
  {

    (*(v17 + 8))(v16, v18);
  }

  v25 = v3[1];

  return v25();
}

uint64_t sub_100270A58()
{
  dispatch thunk of Peripheral.transportType.getter();

  return _swift_task_switch(sub_100270AC4, 0, 0);
}

uint64_t sub_100270AC4()
{
  v26 = v0;
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);
  v3 = *(v0 + 272);
  v4 = *(v0 + 280);
  (*(v4 + 104))(v2, enum case for TransportType.classic(_:), v3);
  sub_10027EB7C(&qword_10169BCD8, 255, &type metadata accessor for TransportType, &protocol conformance descriptor for TransportType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v5 = *(v4 + 8);
  v5(v2, v3);
  v5(v1, v3);
  if (*(v0 + 832) == *(v0 + 833))
  {
    v6 = swift_task_alloc();
    *(v0 + 512) = v6;
    *v6 = v0;
    v6[1] = sub_100270EFC;

    return daemon.getter();
  }

  else
  {
    v8 = *(v0 + 312);
    v7 = *(v0 + 320);
    v9 = *(v0 + 304);
    v10 = *(v0 + 72);

    (*(v8 + 16))(v7, v10, v9);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    v13 = os_log_type_enabled(v11, v12);
    v15 = *(v0 + 312);
    v14 = *(v0 + 320);
    v16 = *(v0 + 304);
    if (v13)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25 = v18;
      *v17 = 136446210;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      (*(v15 + 8))(v14, v16);
      v22 = sub_1000136BC(v19, v21, &v25);

      *(v17 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v11, v12, "Ignore non-classic peripheral: %{public}s", v17, 0xCu);
      sub_100007BAC(v18);
    }

    else
    {

      (*(v15 + 8))(v14, v16);
    }

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_100270EFC(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 520) = a1;

  v5 = swift_task_alloc();
  *(v3 + 528) = v5;
  v6 = type metadata accessor for BeaconStoreActor();
  v7 = sub_10027EB7C(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v5 = v4;
  v5[1] = sub_1002710B4;
  v8 = *(v2 + 368);
  v9 = *(v2 + 360);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_1002710B4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 536) = a1;
  *(v3 + 544) = v1;

  if (v1)
  {
    v4 = sub_100274530;
  }

  else
  {

    v4 = sub_1002711D4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002711D4()
{
  v1 = v0[33];
  v2 = v0[14];
  v3 = v0[15];
  v4 = *(v3 + 56);
  v0[69] = v4;
  v0[70] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v4(v1, 1, 1, v2);
  v5 = v0[62];
  v6 = v0[63];

  return _swift_task_switch(sub_100271260, v5, v6);
}

uint64_t sub_100271260()
{
  dispatch thunk of Peripheral.macAddress.getter();

  return _swift_task_switch(sub_1002712CC, 0, 0);
}

uint64_t sub_1002712CC()
{
  v29 = v0;
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &qword_1016A40D0, &unk_10138BE70);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Looking through all beacon groups", v6, 2u);
    }

    v7 = v0[67];

    v8 = sub_100272B5C;
    v9 = v7;
  }

  else
  {
    v11 = v0[25];
    v10 = v0[26];

    v12 = *(v2 + 32);
    v0[71] = v12;
    v0[72] = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v12(v10, v3, v1);
    v13 = *(v2 + 16);
    v0[73] = v13;
    v0[74] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v13(v11, v10, v1);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[25];
    v18 = v0[20];
    v19 = v0[21];
    if (v16)
    {
      v20 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = v27;
      *v20 = 136446210;
      sub_10027EB7C(&qword_1016A4210, 255, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      v24 = *(v19 + 8);
      v24(v17, v18);
      v25 = sub_1000136BC(v21, v23, &v28);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v14, v15, "Looking for analytics matching %{public}s", v20, 0xCu);
      sub_100007BAC(v27);
    }

    else
    {

      v24 = *(v19 + 8);
      v24(v17, v18);
    }

    v0[75] = v24;
    v9 = v0[67];
    v8 = sub_1002715D8;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_1002715D8()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 536);
  v3 = *(v0 + 192);
  v4 = *(v0 + 168);
  v5 = *(v0 + 160);
  (*(v0 + 584))(v3, *(v0 + 208), v5);
  v6 = *(v4 + 80);
  *(v0 + 820) = v6;
  v7 = (v6 + 24) & ~v6;
  v8 = swift_allocObject();
  *(v0 + 608) = v8;
  *(v8 + 16) = v2;
  v1(v8 + v7, v3, v5);

  v9 = swift_task_alloc();
  *(v0 + 616) = v9;
  *v9 = v0;
  v9[1] = sub_10027173C;
  v10 = *(v0 + 256);
  v11 = *(v0 + 216);

  return unsafeBlocking<A>(context:_:)(v10, 0xD000000000000010, 0x800000010134A8C0, sub_10027E47C, v8, v11);
}

uint64_t sub_10027173C()
{

  return _swift_task_switch(sub_100271854, 0, 0);
}

uint64_t sub_100271854()
{
  v24 = v0;
  v1 = *(v0 + 256);
  if ((*(*(v0 + 120) + 48))(v1, 1, *(v0 + 112)) == 1)
  {
    v2 = *(v0 + 376);
    sub_10000B3A8(v1, &unk_1016AF8B0, &unk_1013A0700);
    v3 = sub_100271ADC;
    v4 = v2;
  }

  else
  {
    v5 = *(v0 + 584);
    v6 = *(v0 + 208);
    v7 = *(v0 + 184);
    v8 = *(v0 + 160);
    sub_10027E700(v1, *(v0 + 144), type metadata accessor for OwnedBeaconGroup);
    v5(v7, v6, v8);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 600);
    v13 = *(v0 + 184);
    v14 = *(v0 + 160);
    if (v11)
    {
      v22 = *(v0 + 600);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23 = v16;
      *v15 = 136446210;
      sub_10027EB7C(&qword_1016A4210, 255, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      v22(v13, v14);
      v20 = sub_1000136BC(v17, v19, &v23);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v9, v10, "Found beacon group matching %{public}s", v15, 0xCu);
      sub_100007BAC(v16);
    }

    else
    {

      v12(v13, v14);
    }

    v4 = *(v0 + 376);
    *(v0 + 824) = *(*(v0 + 112) + 24);
    v3 = sub_100272168;
  }

  return _swift_task_switch(v3, v4, 0);
}

uint64_t sub_100271ADC()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 376);
  v3 = *(v0 + 192);
  v4 = *(v0 + 160);
  v5 = (*(v0 + 820) + 24) & ~*(v0 + 820);
  (*(v0 + 584))(v3, *(v0 + 208), v4);
  v6 = swift_allocObject();
  *(v0 + 624) = v6;
  *(v6 + 16) = v2;
  v1(v6 + v5, v3, v4);
  v10 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:));

  v7 = swift_task_alloc();
  *(v0 + 632) = v7;
  *v7 = v0;
  v7[1] = sub_100271C3C;
  v8 = *(v0 + 400);

  return v10(v0 + 48, &unk_101395B10, v6, v8);
}

uint64_t sub_100271C3C()
{
  v2 = *v1;
  *(*v1 + 640) = v0;

  if (v0)
  {
    v3 = *(v2 + 376);
    v4 = sub_100271F4C;
  }

  else
  {
    v5 = *(v2 + 376);

    v4 = sub_100271D64;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100271D88()
{
  v14 = v0;
  v1 = v0[81];
  v0[86] = v1;
  swift_bridgeObjectRetain_n();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    type metadata accessor for AccessoryPairingAnalytics(0);
    v6 = Array.description.getter();
    v8 = v7;

    v9 = sub_1000136BC(v6, v8, &v13);

    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Analytics for group: %s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  else
  {
  }

  v10 = swift_task_alloc();
  v0[87] = v10;
  *v10 = v0;
  v10[1] = sub_100272880;
  v11 = v0[33];

  return sub_1002753C8(v1, v11);
}

uint64_t sub_100271F4C()
{

  return _swift_task_switch(sub_100271FB4, 0, 0);
}

uint64_t sub_100271FB4()
{
  v1 = v0[75];
  v2 = v0[33];
  v3 = v0[26];
  v4 = v0[20];

  v1(v3, v4);
  sub_10000B3A8(v2, &unk_1016AF8B0, &unk_1013A0700);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100272168()
{
  v1 = *(v0 + 816);
  v2 = *(v0 + 376);
  v3 = *(v0 + 104);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  (*(v5 + 16))(v3, *(v0 + 144) + *(v0 + 824), v4);
  v6 = (v1 + 24) & ~v1;
  v7 = swift_allocObject();
  *(v0 + 656) = v7;
  *(v7 + 16) = v2;
  (*(v5 + 32))(v7 + v6, v3, v4);
  v11 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:));

  v8 = swift_task_alloc();
  *(v0 + 664) = v8;
  *v8 = v0;
  v8[1] = sub_1002722D4;
  v9 = *(v0 + 400);

  return v11(v0 + 56, &unk_101395B18, v7, v9);
}

uint64_t sub_1002722D4()
{
  v2 = *v1;
  *(*v1 + 672) = v0;

  if (v0)
  {
    v3 = *(v2 + 376);
    v4 = sub_100272644;
  }

  else
  {
    v5 = *(v2 + 376);

    v4 = sub_1002723FC;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100272420()
{
  v18 = v0;
  v1 = v0[69];
  v2 = v0[33];
  v3 = v0[18];
  v4 = v0[14];
  sub_10000B3A8(v2, &unk_1016AF8B0, &unk_1013A0700);
  sub_10027E700(v3, v2, type metadata accessor for OwnedBeaconGroup);
  v1(v2, 0, 1, v4);
  v5 = v0[85];
  v0[86] = v5;
  swift_bridgeObjectRetain_n();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    type metadata accessor for AccessoryPairingAnalytics(0);
    v10 = Array.description.getter();
    v12 = v11;

    v13 = sub_1000136BC(v10, v12, &v17);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "Analytics for group: %s", v8, 0xCu);
    sub_100007BAC(v9);
  }

  else
  {
  }

  v14 = swift_task_alloc();
  v0[87] = v14;
  *v14 = v0;
  v14[1] = sub_100272880;
  v15 = v0[33];

  return sub_1002753C8(v5, v15);
}

uint64_t sub_100272644()
{

  return _swift_task_switch(sub_1002726AC, 0, 0);
}

uint64_t sub_1002726AC()
{
  v1 = v0[75];
  v2 = v0[33];
  v3 = v0[26];
  v4 = v0[20];
  v5 = v0[18];

  sub_10027E768(v5, type metadata accessor for OwnedBeaconGroup);
  v1(v3, v4);
  sub_10000B3A8(v2, &unk_1016AF8B0, &unk_1013A0700);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100272880()
{
  *(*v1 + 704) = v0;

  if (v0)
  {
    v2 = sub_1002746B0;
  }

  else
  {
    v2 = sub_1002729B0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002729B0()
{
  v1 = v0[75];
  v2 = v0[33];
  v3 = v0[26];
  v4 = v0[20];

  v1(v3, v4);
  sub_10000B3A8(v2, &unk_1016AF8B0, &unk_1013A0700);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100272B5C()
{

  v1 = swift_task_alloc();
  v0[89] = v1;
  v2 = sub_1000BC4D4(&qword_10169B778, &qword_101395240);
  v0[90] = v2;
  *v1 = v0;
  v1[1] = sub_100272C4C;
  v3 = v0[67];

  return unsafeBlocking<A>(context:_:)(v0 + 3, 0xD000000000000010, 0x800000010134A8C0, sub_10025B32C, v3, v2);
}

uint64_t sub_100272C4C()
{
  v1 = *(*v0 + 536);

  return _swift_task_switch(sub_100272D64, v1, 0);
}

uint64_t sub_100272D88()
{
  v1 = v0[54];
  v2 = v0[9];
  v0[4] = v0[91];
  v3 = swift_task_alloc();
  v0[92] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[93] = v4;
  v5 = sub_1000041A4(&qword_10169BCE0, &qword_10169B778, &qword_101395240, &protocol conformance descriptor for [A]);
  *v4 = v0;
  v4[1] = sub_100272EA0;
  v6 = v0[90];
  v7 = v0[31];

  return Sequence.asyncFirst(where:)(v7, &unk_101395B00, v3, v6, v5);
}

uint64_t sub_100272EA0()
{

  if (v0)
  {
  }

  else
  {

    return _swift_task_switch(sub_100272FE8, 0, 0);
  }
}

uint64_t sub_100272FE8()
{
  v28 = v0;
  v1 = *(v0 + 264);
  v3 = *(v0 + 240);
  v2 = *(v0 + 248);
  v4 = *(v0 + 112);
  v5 = *(v0 + 120);
  sub_10000B3A8(v1, &unk_1016AF8B0, &unk_1013A0700);
  sub_1000D2AD8(v2, v1, &unk_1016AF8B0, &unk_1013A0700);
  sub_10027DD80(v1, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    v6 = *(v0 + 416);
    sub_10000B3A8(*(v0 + 240), &unk_1016AF8B0, &unk_1013A0700);
    if (*(v6 + 16))
    {
      (*(v0 + 552))(*(v0 + 224), 1, 1, *(v0 + 112));
      v7 = swift_task_alloc();
      *(v0 + 800) = v7;
      *v7 = v0;
      v7[1] = sub_100273E18;
      v8 = *(v0 + 416);
      v9 = *(v0 + 224);

      return sub_1002753C8(v8, v9);
    }

    else
    {
      v25 = *(v0 + 264);

      sub_10000B3A8(v25, &unk_1016AF8B0, &unk_1013A0700);

      v26 = *(v0 + 8);

      return v26();
    }
  }

  else
  {
    v11 = *(v0 + 240);
    v13 = *(v0 + 128);
    v12 = *(v0 + 136);

    sub_10027E700(v11, v12, type metadata accessor for OwnedBeaconGroup);
    sub_10027E7C8(v12, v13, type metadata accessor for OwnedBeaconGroup);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 128);
    if (v16)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v27 = v19;
      *v18 = 136315138;
      v20 = sub_10051F7B0();
      v22 = v21;
      sub_10027E768(v17, type metadata accessor for OwnedBeaconGroup);
      v23 = sub_1000136BC(v20, v22, &v27);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v14, v15, "Found beacon group %s", v18, 0xCu);
      sub_100007BAC(v19);
    }

    else
    {

      sub_10027E768(v17, type metadata accessor for OwnedBeaconGroup);
    }

    v24 = *(v0 + 376);
    *(v0 + 828) = *(*(v0 + 112) + 28);

    return _swift_task_switch(sub_100273458, v24, 0);
  }
}

uint64_t sub_100273458()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 192);
  v3 = *(v0 + 168);
  v4 = *(v0 + 160);
  (*(v3 + 16))(v2, *(v0 + 136) + *(v0 + 828), v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v0 + 752) = v6;
  *(v6 + 16) = v1;
  (*(v3 + 32))(v6 + v5, v2, v4);
  v10 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:));

  v7 = swift_task_alloc();
  *(v0 + 760) = v7;
  *v7 = v0;
  v7[1] = sub_1002735C4;
  v8 = *(v0 + 400);

  return v10(v0 + 40, &unk_101395B08, v6, v8);
}

uint64_t sub_1002735C4()
{
  v2 = *v1;
  *(*v1 + 768) = v0;

  if (v0)
  {
    v3 = *(v2 + 376);
    v4 = sub_1002738F4;
  }

  else
  {
    v5 = *(v2 + 376);

    v4 = sub_1002736EC;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100273710()
{
  v16 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v15 = v4;
    *v3 = 136315138;
    type metadata accessor for AccessoryPairingAnalytics(0);
    v5 = Array.description.getter();
    v7 = sub_1000136BC(v5, v6, &v15);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "Analytics for group: %s", v3, 0xCu);
    sub_100007BAC(v4);
  }

  v8 = v0[69];
  v9 = v0[29];
  v10 = v0[14];
  sub_10027E7C8(v0[17], v9, type metadata accessor for OwnedBeaconGroup);
  v8(v9, 0, 1, v10);
  v11 = swift_task_alloc();
  v0[98] = v11;
  *v11 = v0;
  v11[1] = sub_100273B0C;
  v12 = v0[97];
  v13 = v0[29];

  return sub_1002753C8(v12, v13);
}

uint64_t sub_1002738F4()
{

  return _swift_task_switch(sub_10027395C, 0, 0);
}

uint64_t sub_10027395C()
{
  v1 = v0[33];
  v2 = v0[17];

  sub_10027E768(v2, type metadata accessor for OwnedBeaconGroup);
  sub_10000B3A8(v1, &unk_1016AF8B0, &unk_1013A0700);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100273B0C()
{
  v2 = *(*v1 + 232);
  *(*v1 + 792) = v0;

  sub_10000B3A8(v2, &unk_1016AF8B0, &unk_1013A0700);

  if (v0)
  {
    v3 = sub_100274864;
  }

  else
  {
    v3 = sub_100273C70;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100273C70()
{
  v1 = v0[33];
  v2 = v0[17];

  sub_10027E768(v2, type metadata accessor for OwnedBeaconGroup);
  sub_10000B3A8(v1, &unk_1016AF8B0, &unk_1013A0700);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100273E18()
{
  v2 = *(*v1 + 224);
  *(*v1 + 808) = v0;

  sub_10000B3A8(v2, &unk_1016AF8B0, &unk_1013A0700);

  if (v0)
  {
    v3 = sub_100274A14;
  }

  else
  {
    v3 = sub_100273F7C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100273F7C()
{
  v1 = *(v0 + 264);

  sub_10000B3A8(v1, &unk_1016AF8B0, &unk_1013A0700);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100274104()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100274260()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002743BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100274530()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002746B0()
{
  v1 = v0[75];
  v2 = v0[33];
  v3 = v0[26];
  v4 = v0[20];

  v1(v3, v4);
  sub_10000B3A8(v2, &unk_1016AF8B0, &unk_1013A0700);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100274864()
{
  v1 = v0[33];
  v2 = v0[17];

  sub_10027E768(v2, type metadata accessor for OwnedBeaconGroup);
  sub_10000B3A8(v1, &unk_1016AF8B0, &unk_1013A0700);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100274A14()
{
  v1 = *(v0 + 264);

  sub_10000B3A8(v1, &unk_1016AF8B0, &unk_1013A0700);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100274BA4(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = type metadata accessor for CentralManager.State();
  v2[3] = v3;
  v2[4] = *(v3 - 8);
  v2[5] = swift_task_alloc();

  return _swift_task_switch(sub_100274C64, 0, 0);
}

uint64_t sub_100274C64()
{
  (*(v0[4] + 104))(v0[5], enum case for CentralManager.State.poweredOn(_:), v0[3]);
  v1 = swift_task_alloc();
  v0[6] = v1;
  v2 = type metadata accessor for CentralManager();
  v3 = sub_10027EB7C(&unk_1016C1160, 255, &type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  *v1 = v0;
  v1[1] = sub_100274D78;
  v4 = v0[5];

  return CentralManagerProtocol.await(state:)(v4, v2, v3);
}

uint64_t sub_100274D78()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *v1;
  *(v5 + 56) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return _swift_task_switch(sub_100274F20, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_100274F20()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100274F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = type metadata accessor for UUID();
  v3[3] = v5;
  v3[4] = *(v5 - 8);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v3[7] = v6;
  v3[8] = *(v6 - 8);
  v3[9] = swift_task_alloc();
  v7 = *(type metadata accessor for OwnedBeaconGroup(0) + 28);
  v10 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:) + async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:));
  v8 = swift_task_alloc();
  v3[10] = v8;
  *v8 = v3;
  v8[1] = sub_10027511C;

  return v10(a1 + v7);
}

uint64_t sub_10027511C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 88) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4(0);
  }

  else
  {

    return _swift_task_switch(sub_10027527C, 0, 0);
  }
}

uint64_t sub_10027527C()
{
  if (v0[11])
  {
    v2 = v0[8];
    v1 = v0[9];
    v4 = v0[6];
    v3 = v0[7];
    v6 = v0[4];
    v5 = v0[5];
    v11 = v0[3];
    Peripheral.id.getter();
    Identifier.id.getter();
    (*(v2 + 8))(v1, v3);
    Identifier.id.getter();
    v7 = static UUID.== infix(_:_:)();

    v8 = *(v6 + 8);
    v8(v5, v11);
    v8(v4, v11);
  }

  else
  {
    v7 = 0;
  }

  v9 = v0[1];

  return v9(v7 & 1);
}

uint64_t sub_1002753C8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v3[6] = swift_task_alloc();
  v4 = type metadata accessor for OwnedBeaconGroup(0);
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_1002754F8, v2, 0);
}

uint64_t sub_1002754F8()
{
  v1 = v0[8];
  v14 = v0[7];
  v2 = v0[6];
  v3 = v0[3];
  type metadata accessor for AnalyticsEvent(0);
  v4 = swift_allocObject();
  v0[11] = v4;
  swift_defaultActor_initialize();
  *(v4 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v5 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v6 = type metadata accessor for DispatchTime();
  v7 = *(*(v6 - 8) + 56);
  v7(&v4[v5], 1, 1, v6);
  v7(&v4[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v6);
  *(v4 + 15) = 0xD00000000000002CLL;
  *(v4 + 16) = 0x800000010134D0D0;
  sub_10027DD80(v3, v2);
  if ((*(v1 + 48))(v2, 1, v14) == 1)
  {
    v8 = v0[2];
    sub_10000B3A8(v0[6], &unk_1016AF8B0, &unk_1013A0700);
    if (*(v8 + 16))
    {

      v9 = swift_task_alloc();
      v0[29] = v9;
      *v9 = v0;
      v9[1] = sub_10027648C;
      v10 = v0[2];

      return sub_10116E9EC(v4, v10);
    }

    else
    {

      v13 = v0[1];

      return v13();
    }
  }

  else
  {
    sub_10027E700(v0[6], v0[10], type metadata accessor for OwnedBeaconGroup);
    v12 = swift_task_alloc();
    v0[12] = v12;
    *v12 = v0;
    v12[1] = sub_100275808;

    return daemon.getter();
  }
}

uint64_t sub_100275808(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[13] = a1;

  v3 = swift_task_alloc();
  v2[14] = v3;
  v4 = type metadata accessor for Daemon();
  v2[15] = v4;
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_10027EB7C(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[16] = v6;
  v7 = sub_10027EB7C(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_1002759FC;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1002759FC(uint64_t a1)
{
  v3 = *v2;
  v3[17] = a1;
  v3[18] = v1;

  if (v1)
  {
    v4 = v3[4];

    return _swift_task_switch(sub_1002769C4, v4, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[19] = v5;
    *v5 = v3;
    v5[1] = sub_100275B70;

    return daemon.getter();
  }
}

uint64_t sub_100275B70(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 160) = a1;

  v5 = swift_task_alloc();
  *(v3 + 168) = v5;
  v6 = type metadata accessor for LocalStorageService();
  v7 = sub_10027EB7C(&unk_1016B1030, 255, type metadata accessor for LocalStorageService, &unk_1013DB940);
  *v5 = v4;
  v5[1] = sub_100275D28;
  v8 = *(v2 + 128);
  v9 = *(v2 + 120);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_100275D28(uint64_t a1)
{
  v3 = *v2;
  v3[22] = a1;
  v3[23] = v1;

  if (v1)
  {
    v4 = v3[4];
    v5 = sub_100276A74;
  }

  else
  {
    v6 = v3[4];

    v5 = sub_100275E50;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100275E50()
{
  v1 = v0[22];
  v2 = v0[17];
  v3 = v0[10];
  v4 = v0[5];
  v5 = swift_task_alloc();
  v0[24] = v5;
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v1;
  v5[5] = v4;
  v6 = swift_task_alloc();
  v0[25] = v6;
  *v6 = v0;
  v6[1] = sub_100275F30;

  return sub_101162604(&unk_101395A68, v5);
}

uint64_t sub_100275F30()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = v2[4];

    return _swift_task_switch(sub_100276B30, v4, 0);
  }

  else
  {

    type metadata accessor for AnalyticsPublisher();
    v2[27] = swift_allocObject();
    swift_defaultActor_initialize();
    v5 = swift_task_alloc();
    v2[28] = v5;
    *v5 = v3;
    v5[1] = sub_1002760EC;
    v6 = v2[11];

    return sub_101163F78(v6);
  }
}

uint64_t sub_1002760EC()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_100276218, v1, 0);
}

uint64_t sub_100276218()
{
  v17 = v0;
  if (qword_101694508 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[10];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10169BB90);
  sub_10027E7C8(v2, v1, type metadata accessor for OwnedBeaconGroup);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v10 = sub_10051F7B0();
    v12 = v11;
    sub_10027E768(v7, type metadata accessor for OwnedBeaconGroup);
    v13 = sub_1000136BC(v10, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Published analytics for group: %s", v8, 0xCu);
    sub_100007BAC(v9);
  }

  else
  {

    sub_10027E768(v7, type metadata accessor for OwnedBeaconGroup);
  }

  sub_10027E768(v0[10], type metadata accessor for OwnedBeaconGroup);

  v14 = v0[1];

  return v14();
}

uint64_t sub_10027648C()
{
  v2 = *v1;
  v2[30] = v0;

  if (v0)
  {
    v3 = v2[4];

    return _swift_task_switch(sub_10027693C, v3, 0);
  }

  else
  {
    type metadata accessor for AnalyticsPublisher();
    v2[31] = swift_allocObject();
    swift_defaultActor_initialize();
    v4 = swift_task_alloc();
    v2[32] = v4;
    *v4 = v2;
    v4[1] = sub_100276644;
    v5 = v2[11];

    return sub_101163F78(v5);
  }
}

uint64_t sub_100276644()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_100276770, v1, 0);
}

uint64_t sub_100276770()
{
  v12 = v0;
  if (qword_101694508 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10169BB90);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    type metadata accessor for AccessoryPairingAnalytics(0);
    v6 = Array.description.getter();
    v8 = sub_1000136BC(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Published analytics: %s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10027693C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002769C4()
{
  v1 = *(v0 + 80);

  sub_10027E768(v1, type metadata accessor for OwnedBeaconGroup);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100276A74()
{
  v1 = *(v0 + 80);

  sub_10027E768(v1, type metadata accessor for OwnedBeaconGroup);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100276B30()
{
  v1 = *(v0 + 80);

  sub_10027E768(v1, type metadata accessor for OwnedBeaconGroup);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100276BEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[60] = a2;
  v3[61] = a3;
  v3[59] = a1;
  type metadata accessor for Endianness();
  v3[62] = swift_task_alloc();
  v3[63] = sub_1000BC4D4(&qword_10169BCB8, &unk_101395A70);
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v4 = type metadata accessor for AccessoryPairingAnalytics(0);
  v3[66] = v4;
  v3[67] = *(v4 - 8);
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();
  v3[71] = swift_task_alloc();
  v3[72] = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v3[73] = swift_task_alloc();
  v5 = type metadata accessor for OwnedBeaconRecord(0);
  v3[74] = v5;
  v3[75] = *(v5 - 8);
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v3[78] = v6;
  v7 = *(v6 - 8);
  v3[79] = v7;
  v3[80] = *(v7 + 64);
  v3[81] = swift_task_alloc();
  v3[82] = swift_task_alloc();
  type metadata accessor for String.Encoding();
  v3[83] = swift_task_alloc();
  v8 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v3[84] = v8;
  v3[85] = *(v8 - 8);
  v3[86] = swift_task_alloc();
  v3[87] = swift_task_alloc();
  v3[88] = swift_task_alloc();
  v3[89] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016BBEA0, &unk_101395A80);
  v3[90] = swift_task_alloc();
  v3[91] = swift_task_alloc();

  return _swift_task_switch(sub_100276F4C, 0, 0);
}

uint64_t sub_100276F4C()
{
  v1 = *(v0 + 720);
  v2 = *(v0 + 680);
  v3 = *(v0 + 472);
  v4 = *(v3 + *(type metadata accessor for OwnedBeaconGroup(0) + 40));
  *(v0 + 736) = v4;
  v5 = *(v4 + 32);
  *(v0 + 77) = v5;
  v6 = -1;
  v7 = -1 << v5;
  if (-(-1 << v5) < 64)
  {
    v6 = ~(-1 << -(-1 << v5));
  }

  v8 = v6 & *(v4 + 64);
  *(v0 + 744) = _swiftEmptyDictionarySingleton;

  if (v8)
  {
    v10 = 0;
LABEL_8:
    v13 = *(v0 + 712);
    v14 = (v8 - 1) & v8;
    v15 = __clz(__rbit64(v8)) | (v10 << 6);
    v16 = (*(v9 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    sub_10027E7C8(*(v9 + 56) + *(v2 + 72) * v15, v13, type metadata accessor for OwnedBeaconGroup.PairingState);
    v19 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
    v20 = *(v19 + 48);
    *v1 = v17;
    v1[1] = v18;
    sub_10027E700(v13, v1 + v20, type metadata accessor for OwnedBeaconGroup.PairingState);
    (*(*(v19 - 8) + 56))(v1, 0, 1, v19);
    sub_100017D5C(v17, v18);
    v12 = v10;
  }

  else
  {
    v11 = 0;
    v12 = ((63 - v7) >> 6) - 1;
    while (v12 != v11)
    {
      v10 = v11 + 1;
      v8 = *(v9 + 72 + 8 * v11++);
      if (v8)
      {
        goto LABEL_8;
      }
    }

    v57 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
    (*(*(v57 - 8) + 56))(v1, 1, 1, v57);
    v14 = 0;
  }

  *(v0 + 760) = v12;
  *(v0 + 752) = v14;
  v21 = *(v0 + 728);
  sub_1000D2AD8(*(v0 + 720), v21, &unk_1016BBEA0, &unk_101395A80);
  v22 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
  if ((*(*(v22 - 8) + 48))(v21, 1, v22) == 1)
  {

    v23 = *(v0 + 8);

    return v23(_swiftEmptyDictionarySingleton);
  }

  else
  {
    v25 = *(v0 + 728);
    v26 = *(v0 + 704);
    v27 = *v25;
    *(v0 + 768) = *v25;
    v28 = v25[1];
    *(v0 + 776) = v28;
    sub_10027E700(v25 + *(v22 + 48), v26, type metadata accessor for OwnedBeaconGroup.PairingState);
    if (qword_101694508 != -1)
    {
      swift_once();
    }

    v29 = *(v0 + 704);
    v30 = *(v0 + 696);
    v31 = type metadata accessor for Logger();
    *(v0 + 784) = sub_1000076D4(v31, qword_10169BB90);
    sub_10027E7C8(v29, v30, type metadata accessor for OwnedBeaconGroup.PairingState);
    sub_100017D5C(v27, v28);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    sub_100016590(v27, v28);
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *(v0 + 464) = swift_slowAlloc();
      *v34 = 136315394;
      sub_100017D5C(v27, v28);
      static String.Encoding.utf8.getter();
      v35 = String.init(data:encoding:)();
      if (!v36)
      {
        v35 = Data.hexString.getter();
      }

      v37 = v35;
      v38 = v36;
      sub_100016590(v27, v28);
      v39 = *(v0 + 696);
      v40 = sub_1000136BC(v37, v38, (v0 + 464));

      *(v34 + 4) = v40;
      *(v34 + 12) = 2080;
      v41 = sub_10051C934();
      v43 = v42;
      sub_10027E768(v39, type metadata accessor for OwnedBeaconGroup.PairingState);
      v44 = sub_1000136BC(v41, v43, (v0 + 464));

      *(v34 + 14) = v44;
      _os_log_impl(&_mh_execute_header, v32, v33, "serialNumber:%s pairingState:%s", v34, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v45 = *(v0 + 696);

      sub_10027E768(v45, type metadata accessor for OwnedBeaconGroup.PairingState);
    }

    sub_10027E7C8(*(v0 + 704), *(v0 + 688), type metadata accessor for OwnedBeaconGroup.PairingState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v47 = *(v0 + 688);
        v48 = *(v0 + 656);
        v49 = *(v0 + 632);
        v50 = *(v0 + 624);
        v51 = *(v0 + 480);
        v52 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
        *(v0 + 792) = v52;
        sub_100006654(*(v47 + *(v52 + 64)), *(v47 + *(v52 + 64) + 8));
        v53 = (v47 + *(v52 + 96));
        *(v0 + 78) = *v53;
        *(v0 + 79) = v53[1];
        v54 = *(v49 + 32);
        *(v0 + 800) = v54;
        *(v0 + 808) = (v49 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v54(v48, v47, v50);
        v55 = sub_1002776C8;
        v56 = v51;
      }

      else
      {
        v56 = *(v0 + 488);
        v55 = sub_10027A390;
      }
    }

    else
    {
      v58 = *(v0 + 688);
      v59 = *(v0 + 488);
      v60 = (v58 + *(sub_1000BC4D4(&qword_1016A4230, &unk_101391950) + 48));
      *(v0 + 122) = *v60;
      *(v0 + 123) = v60[1];
      v55 = sub_100278770;
      v56 = v59;
    }

    return _swift_task_switch(v55, v56, 0);
  }
}

uint64_t sub_1002776C8()
{
  v1 = v0[100];
  v2 = v0[81];
  v3 = v0[79];
  v4 = v0[78];
  v5 = v0[60];
  (*(v3 + 16))(v2, v0[82], v4);
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = swift_allocObject();
  v0[102] = v7;
  *(v7 + 16) = v5;
  v1(v7 + v6, v2, v4);

  v8 = swift_task_alloc();
  v0[103] = v8;
  *v8 = v0;
  v8[1] = sub_10027782C;
  v9 = v0[73];
  v10 = v0[72];

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_10027DF50, v7, v10);
}

uint64_t sub_10027782C()
{

  return _swift_task_switch(sub_100277944, 0, 0);
}

uint64_t sub_100277944()
{
  v130 = v0;
  v1 = *(v0 + 584);
  v2 = "v32@0:8@NISession16q24" + 15;
  if ((*(*(v0 + 600) + 48))(v1, 1, *(v0 + 592)) == 1)
  {
    (*(*(v0 + 632) + 8))(*(v0 + 656), *(v0 + 624));
    sub_10000B3A8(v1, &unk_1016A9A20, &qword_10138B280);
    v3 = *(v0 + 744);
  }

  else
  {
    v4 = *(v0 + 616);
    v5 = *(v0 + 608);
    sub_10027E700(v1, v4, type metadata accessor for OwnedBeaconRecord);
    sub_10027E7C8(v4, v5, type metadata accessor for OwnedBeaconRecord);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 608);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v129 = v10;
      *v9 = 141558275;
      *(v9 + 4) = 1752392040;
      *(v9 + 12) = 2081;
      sub_10027EB7C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      v13 = v12;
      sub_10027E768(v8, type metadata accessor for OwnedBeaconRecord);
      v14 = sub_1000136BC(v11, v13, &v129);

      *(v9 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v6, v7, "Found paired beacon %{private,mask.hash}s", v9, 0x16u);
      sub_100007BAC(v10);
    }

    else
    {
      v15 = *(v0 + 608);

      sub_10027E768(v15, type metadata accessor for OwnedBeaconRecord);
    }

    v16 = *(v0 + 744);
    v127 = *(v0 + 656);
    v125 = *(v0 + 632);
    v126 = *(v0 + 624);
    v17 = *(v0 + 616);
    v18 = *(v0 + 592);
    if (*(v0 + 79))
    {
      v19 = -1;
    }

    else
    {
      v19 = *(v0 + 78);
    }

    v122 = v19;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_101385D80;
    *(v0 + 75) = v19;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    *(v20 + 56) = &type metadata for String;
    v24 = sub_100008C00();
    *(v20 + 64) = v24;
    *(v20 + 32) = v21;
    *(v20 + 40) = v23;
    v25 = String.init(format:arguments:)();
    v27 = v26;

    v28 = *(v17 + *(v18 + 68));
    v29 = sub_1000DFAD8();
    *(v0 + 368) = v28;
    *(v0 + 392) = &type metadata for Int;
    *(v0 + 400) = v29;
    *(v0 + 408) = 2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v129 = v16;
    sub_100FFC070((v0 + 368), v25, v27, isUniquelyReferenced_nonNull_native);

    v31 = v129;
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_101385D80;
    *(v0 + 76) = v122;
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    *(v32 + 56) = &type metadata for String;
    *(v32 + 64) = v24;
    *(v32 + 32) = v33;
    *(v32 + 40) = v34;
    v35 = String.init(format:arguments:)();
    v37 = v36;

    v38 = (v17 + *(v18 + 60));
    v40 = *v38;
    v39 = v38[1];
    v41 = sub_1000DF96C();
    *(v0 + 416) = v40;
    *(v0 + 424) = v39;
    *(v0 + 440) = &type metadata for String;
    *(v0 + 448) = v41;
    *(v0 + 456) = 1;

    v42 = swift_isUniquelyReferenced_nonNull_native();
    v129 = v31;
    sub_100FFC070((v0 + 416), v35, v37, v42);
    v2 = "ion16q24";

    sub_10027E768(v17, type metadata accessor for OwnedBeaconRecord);
    (*(v125 + 8))(v127, v126);
    v3 = v129;
  }

  sub_10000B3A8(*(v0 + 688) + *(*(v0 + 792) + 48), &qword_1016A40D0, &unk_10138BE70);
  if (*(v0 + 79))
  {
    v43 = -1;
  }

  else
  {
    v43 = *(v0 + 78);
  }

  v124 = v43;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v44 = swift_allocObject();
  v123 = *(v2 + 216);
  *(v44 + 16) = v123;
  *(v0 + 58) = v43;
  v45 = dispatch thunk of CustomStringConvertible.description.getter();
  v47 = v46;
  *(v44 + 56) = &type metadata for String;
  v48 = sub_100008C00();
  *(v44 + 64) = v48;
  *(v44 + 32) = v45;
  *(v44 + 40) = v47;
  v49 = String.init(format:arguments:)();
  v51 = v50;

  v52 = sub_1000DF96C();
  *(v0 + 16) = 0x646572696170;
  *(v0 + 24) = 0xE600000000000000;
  *(v0 + 40) = &type metadata for String;
  *(v0 + 48) = v52;
  v128 = v52;
  *(v0 + 56) = 1;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v129 = v3;
  sub_100FFC070((v0 + 16), v49, v51, v53);

  v54 = v129;
  v55 = swift_allocObject();
  *(v55 + 16) = v123;
  *(v0 + 59) = v124;
  v56 = dispatch thunk of CustomStringConvertible.description.getter();
  *(v55 + 56) = &type metadata for String;
  *(v55 + 64) = v48;
  *(v55 + 32) = v56;
  *(v55 + 40) = v57;
  v58 = String.init(format:arguments:)();
  v60 = v59;

  static String.Encoding.utf8.getter();
  v61 = String.init(data:encoding:)();
  if (!v62)
  {
    v61 = Data.hexString.getter();
  }

  *(v0 + 80) = v61;
  *(v0 + 88) = v62;
  *(v0 + 104) = &type metadata for String;
  *(v0 + 112) = v128;
  *(v0 + 120) = 1;
  v63 = swift_isUniquelyReferenced_nonNull_native();
  v129 = v54;
  sub_100FFC070((v0 + 80), v58, v60, v63);

  v64 = v129;
  v65 = *(v0 + 776);
  v66 = *(v0 + 768);
  sub_10027E768(*(v0 + 704), type metadata accessor for OwnedBeaconGroup.PairingState);
  sub_100016590(v66, v65);
  v67 = *(v0 + 760);
  v68 = *(v0 + 752);
  *(v0 + 744) = v64;
  if (!v68)
  {
    v70 = ((1 << *(v0 + 77)) + 63) >> 6;
    if (v70 <= v67 + 1)
    {
      v71 = v67 + 1;
    }

    else
    {
      v71 = ((1 << *(v0 + 77)) + 63) >> 6;
    }

    v72 = v71 - 1;
    while (1)
    {
      v73 = v67 + 1;
      if (__OFADD__(v67, 1))
      {
        break;
      }

      if (v73 >= v70)
      {
        v117 = *(v0 + 720);
        v118 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
        (*(*(v118 - 8) + 56))(v117, 1, 1, v118);
        v76 = 0;
        goto LABEL_26;
      }

      v69 = *(v0 + 736);
      v68 = *(v69 + 8 * v73 + 64);
      ++v67;
      if (v68)
      {
        v67 = v73;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_46:
    swift_once();
    goto LABEL_31;
  }

  v69 = *(v0 + 736);
LABEL_25:
  v74 = *(v0 + 720);
  v75 = *(v0 + 712);
  v76 = (v68 - 1) & v68;
  v77 = __clz(__rbit64(v68)) | (v67 << 6);
  v78 = (*(v69 + 48) + 16 * v77);
  v79 = *v78;
  v80 = v78[1];
  sub_10027E7C8(*(v69 + 56) + *(*(v0 + 680) + 72) * v77, v75, type metadata accessor for OwnedBeaconGroup.PairingState);
  v81 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
  v82 = *(v81 + 48);
  *v74 = v79;
  v74[1] = v80;
  sub_10027E700(v75, v74 + v82, type metadata accessor for OwnedBeaconGroup.PairingState);
  (*(*(v81 - 8) + 56))(v74, 0, 1, v81);
  sub_100017D5C(v79, v80);
  v72 = v67;
LABEL_26:
  *(v0 + 760) = v72;
  *(v0 + 752) = v76;
  v83 = *(v0 + 728);
  sub_1000D2AD8(*(v0 + 720), v83, &unk_1016BBEA0, &unk_101395A80);
  v84 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
  if ((*(*(v84 - 8) + 48))(v83, 1, v84) == 1)
  {

    v85 = *(v0 + 8);

    return v85(v64);
  }

  v87 = *(v0 + 728);
  v88 = *(v0 + 704);
  v72 = *v87;
  *(v0 + 768) = *v87;
  v60 = v87[1];
  *(v0 + 776) = v60;
  sub_10027E700(v87 + *(v84 + 48), v88, type metadata accessor for OwnedBeaconGroup.PairingState);
  if (qword_101694508 != -1)
  {
    goto LABEL_46;
  }

LABEL_31:
  v89 = *(v0 + 704);
  v90 = *(v0 + 696);
  v91 = type metadata accessor for Logger();
  *(v0 + 784) = sub_1000076D4(v91, qword_10169BB90);
  sub_10027E7C8(v89, v90, type metadata accessor for OwnedBeaconGroup.PairingState);
  sub_100017D5C(v72, v60);
  v92 = Logger.logObject.getter();
  v93 = static os_log_type_t.default.getter();
  sub_100016590(v72, v60);
  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    *(v0 + 464) = swift_slowAlloc();
    *v94 = 136315394;
    sub_100017D5C(v72, v60);
    static String.Encoding.utf8.getter();
    v95 = String.init(data:encoding:)();
    if (!v96)
    {
      v95 = Data.hexString.getter();
    }

    v97 = v95;
    v98 = v96;
    sub_100016590(v72, v60);
    v99 = *(v0 + 696);
    v100 = sub_1000136BC(v97, v98, (v0 + 464));

    *(v94 + 4) = v100;
    *(v94 + 12) = 2080;
    v101 = sub_10051C934();
    v103 = v102;
    sub_10027E768(v99, type metadata accessor for OwnedBeaconGroup.PairingState);
    v104 = sub_1000136BC(v101, v103, (v0 + 464));

    *(v94 + 14) = v104;
    _os_log_impl(&_mh_execute_header, v92, v93, "serialNumber:%s pairingState:%s", v94, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v105 = *(v0 + 696);

    sub_10027E768(v105, type metadata accessor for OwnedBeaconGroup.PairingState);
  }

  sub_10027E7C8(*(v0 + 704), *(v0 + 688), type metadata accessor for OwnedBeaconGroup.PairingState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v107 = *(v0 + 688);
      v108 = *(v0 + 656);
      v109 = *(v0 + 632);
      v110 = *(v0 + 624);
      v111 = *(v0 + 480);
      v112 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
      *(v0 + 792) = v112;
      sub_100006654(*(v107 + *(v112 + 64)), *(v107 + *(v112 + 64) + 8));
      v113 = (v107 + *(v112 + 96));
      *(v0 + 78) = *v113;
      *(v0 + 79) = v113[1];
      v114 = *(v109 + 32);
      *(v0 + 800) = v114;
      *(v0 + 808) = (v109 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v114(v108, v107, v110);
      v115 = sub_1002776C8;
      v116 = v111;
    }

    else
    {
      v116 = *(v0 + 488);
      v115 = sub_10027A390;
    }
  }

  else
  {
    v119 = *(v0 + 688);
    v120 = *(v0 + 488);
    v121 = (v119 + *(sub_1000BC4D4(&qword_1016A4230, &unk_101391950) + 48));
    *(v0 + 122) = *v121;
    *(v0 + 123) = v121[1];
    v115 = sub_100278770;
    v116 = v120;
  }

  return _swift_task_switch(v115, v116, 0);
}

uint64_t sub_100278770()
{
  v1 = v0[97];
  v2 = v0[96];
  v3 = v0[61];
  v4 = swift_allocObject();
  v0[104] = v4;
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;
  sub_100017D5C(v2, v1);
  v9 = &async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:);

  v5 = swift_task_alloc();
  v0[105] = v5;
  *v5 = v0;
  v5[1] = sub_100278890;
  v6 = v0[65];
  v7 = v0[63];

  return (v9)(v6, &unk_101395A98, v4, v7);
}

uint64_t sub_100278890()
{

  if (v0)
  {

    v1 = sub_100279978;
  }

  else
  {

    v1 = sub_1002789D8;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1002789D8()
{
  v150 = v0;
  v1 = *(v0 + 520);
  v2 = "v32@0:8@NISession16q24" + 15;
  if ((*(*(v0 + 536) + 48))(v1, 1, *(v0 + 528)) == 1)
  {
    v3 = *(v0 + 123);
    v4 = *(v0 + 122);
    v5 = *(v0 + 688);
    sub_10000B3A8(v1, &qword_10169BCB8, &unk_101395A70);
    if (v3)
    {
      v6 = -1;
    }

    else
    {
      v6 = v4;
    }

    sub_10000B3A8(v5, &qword_1016A40D0, &unk_10138BE70);
    v141 = 0;
    v138 = 0;
    v139 = *(v0 + 744);
    v7 = 2;
    goto LABEL_15;
  }

  v8 = *(v0 + 568);
  v9 = *(v0 + 560);
  sub_10027E700(v1, v8, type metadata accessor for AccessoryPairingAnalytics);
  sub_10027E7C8(v8, v9, type metadata accessor for AccessoryPairingAnalytics);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 560);
  if (!v12)
  {

    sub_10027E768(v13, type metadata accessor for AccessoryPairingAnalytics);
    if (*(v0 + 123))
    {
      goto LABEL_8;
    }

LABEL_10:
    v22 = (v0 + 122);
    v20 = *(v0 + 568);
    v21 = *(v0 + 528);
    goto LABEL_11;
  }

  v14 = swift_slowAlloc();
  v15 = swift_slowAlloc();
  v149 = v15;
  *v14 = 136315138;
  v16 = sub_10111CE44();
  v18 = v17;
  sub_10027E768(v13, type metadata accessor for AccessoryPairingAnalytics);
  v19 = sub_1000136BC(v16, v18, &v149);

  *(v14 + 4) = v19;
  _os_log_impl(&_mh_execute_header, v10, v11, "Found unpaired analytics %s", v14, 0xCu);
  sub_100007BAC(v15);

  if ((*(v0 + 123) & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  v20 = *(v0 + 568);
  v21 = *(v0 + 528);
  v22 = (v20 + v21[6]);
LABEL_11:
  v23 = *v22;
  v146 = *v22;
  v145 = *(v0 + 688);
  v142 = *(v0 + 744);
  v24 = (v20 + v21[13]);
  v25 = v24[1];
  v137 = v21;
  v138 = *v24;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_101385D80;
  *(v0 + 73) = v23;
  v141 = v25;

  v27 = dispatch thunk of CustomStringConvertible.description.getter();
  v29 = v28;
  *(v26 + 56) = &type metadata for String;
  v30 = sub_100008C00();
  *(v26 + 64) = v30;
  *(v26 + 32) = v27;
  *(v26 + 40) = v29;
  v31 = String.init(format:arguments:)();
  v33 = v32;

  sub_100313B54(*(v20 + v21[9]), *(v20 + v21[9] + 8));
  static Endianness.current.getter();
  sub_10012BF24();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (*(v0 + 72))
  {
    v34 = 0;
  }

  else
  {
    v34 = *(v0 + 68);
  }

  v35 = sub_1000DFAD8();
  *(v0 + 272) = v34;
  *(v0 + 296) = &type metadata for Int;
  *(v0 + 304) = v35;
  *(v0 + 312) = 2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v149 = v142;
  v37 = v31;
  v6 = v146;
  sub_100FFC070((v0 + 272), v37, v33, isUniquelyReferenced_nonNull_native);

  v38 = v149;
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_101385D80;
  *(v0 + 74) = v146;
  v40 = dispatch thunk of CustomStringConvertible.description.getter();
  *(v39 + 56) = &type metadata for String;
  *(v39 + 64) = v30;
  *(v39 + 32) = v40;
  *(v39 + 40) = v41;
  v42 = String.init(format:arguments:)();
  v44 = v43;

  v45 = (v20 + v137[8]);
  v47 = *v45;
  v46 = v45[1];
  v48 = sub_1000DF96C();
  *(v0 + 320) = v47;
  *(v0 + 328) = v46;
  *(v0 + 344) = &type metadata for String;
  *(v0 + 352) = v48;
  *(v0 + 360) = 1;

  v49 = swift_isUniquelyReferenced_nonNull_native();
  v149 = v38;
  sub_100FFC070((v0 + 320), v42, v44, v49);
  v2 = "ion16q24";

  v139 = v149;
  v7 = *(v20 + v137[10]);
  sub_10027E768(v20, type metadata accessor for AccessoryPairingAnalytics);
  sub_10000B3A8(v145, &qword_1016A40D0, &unk_10138BE70);
LABEL_15:
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v50 = swift_allocObject();
  v144 = *(v2 + 216);
  *(v50 + 16) = v144;
  *(v0 + 58) = v6;
  v51 = dispatch thunk of CustomStringConvertible.description.getter();
  v53 = v52;
  *(v50 + 56) = &type metadata for String;
  v143 = sub_100008C00();
  *(v50 + 64) = v143;
  *(v50 + 32) = v51;
  *(v50 + 40) = v53;
  v54 = String.init(format:arguments:)();
  v56 = v55;

  v147 = v6;
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v57 = 0xE800000000000000;
      v58 = 0x6465726961706E75;
      goto LABEL_23;
    }

    v57 = 0xE600000000000000;
    v59 = 1801678700;
  }

  else
  {
    if (!v7)
    {
      v57 = 0xE700000000000000;
      v58 = 0x6E776F6E6B6E75;
      goto LABEL_23;
    }

    v57 = 0xE600000000000000;
    v59 = 1919508848;
  }

  v58 = v59 & 0xFFFF0000FFFFFFFFLL | 0x646500000000;
LABEL_23:
  v60 = sub_1000DF96C();
  *(v0 + 16) = v58;
  *(v0 + 24) = v57;
  *(v0 + 40) = &type metadata for String;
  *(v0 + 48) = v60;
  v140 = v60;
  *(v0 + 56) = 1;
  v61 = swift_isUniquelyReferenced_nonNull_native();
  v149 = v139;
  sub_100FFC070((v0 + 16), v54, v56, v61);

  v62 = v149;
  v63 = swift_allocObject();
  *(v63 + 16) = v144;
  *(v0 + 59) = v6;
  v64 = dispatch thunk of CustomStringConvertible.description.getter();
  *(v63 + 56) = &type metadata for String;
  *(v63 + 64) = v143;
  *(v63 + 32) = v64;
  *(v63 + 40) = v65;
  v66 = String.init(format:arguments:)();
  v68 = v67;

  static String.Encoding.utf8.getter();
  v69 = String.init(data:encoding:)();
  if (!v70)
  {
    v69 = Data.hexString.getter();
  }

  *(v0 + 80) = v69;
  *(v0 + 88) = v70;
  *(v0 + 104) = &type metadata for String;
  *(v0 + 112) = v140;
  *(v0 + 120) = 1;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v149 = v62;
  sub_100FFC070((v0 + 80), v66, v68, v71);

  v72 = v149;
  v73 = *(v0 + 776);
  v74 = *(v0 + 768);
  v75 = *(v0 + 704);
  if (v141)
  {
    v76 = swift_allocObject();
    *(v76 + 16) = v144;
    *(v0 + 65) = v147;
    v77 = dispatch thunk of CustomStringConvertible.description.getter();
    *(v76 + 56) = &type metadata for String;
    *(v76 + 64) = v143;
    *(v76 + 32) = v77;
    *(v76 + 40) = v78;
    v79 = String.init(format:arguments:)();
    v68 = v80;

    *(v0 + 128) = v138;
    *(v0 + 136) = v141;
    *(v0 + 152) = &type metadata for String;
    *(v0 + 160) = v140;
    *(v0 + 168) = 1;
    v81 = swift_isUniquelyReferenced_nonNull_native();
    v149 = v72;
    sub_100FFC070((v0 + 128), v79, v68, v81);

    sub_100016590(v74, v73);
    sub_10027E768(v75, type metadata accessor for OwnedBeaconGroup.PairingState);
    v72 = v149;
  }

  else
  {
    sub_10027E768(*(v0 + 704), type metadata accessor for OwnedBeaconGroup.PairingState);
    sub_100016590(v74, v73);
  }

  v82 = *(v0 + 760);
  v83 = *(v0 + 752);
  *(v0 + 744) = v72;
  v148 = v72;
  if (!v83)
  {
    v85 = ((1 << *(v0 + 77)) + 63) >> 6;
    if (v85 <= v82 + 1)
    {
      v86 = v82 + 1;
    }

    else
    {
      v86 = ((1 << *(v0 + 77)) + 63) >> 6;
    }

    v87 = v86 - 1;
    while (1)
    {
      v88 = v82 + 1;
      if (__OFADD__(v82, 1))
      {
        break;
      }

      if (v88 >= v85)
      {
        v132 = *(v0 + 720);
        v133 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
        (*(*(v133 - 8) + 56))(v132, 1, 1, v133);
        v91 = 0;
        goto LABEL_39;
      }

      v84 = *(v0 + 736);
      v83 = *(v84 + 8 * v88 + 64);
      ++v82;
      if (v83)
      {
        v82 = v88;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_59:
    swift_once();
    goto LABEL_44;
  }

  v84 = *(v0 + 736);
LABEL_38:
  v89 = *(v0 + 720);
  v90 = *(v0 + 712);
  v91 = (v83 - 1) & v83;
  v92 = __clz(__rbit64(v83)) | (v82 << 6);
  v93 = (*(v84 + 48) + 16 * v92);
  v94 = *v93;
  v95 = v93[1];
  sub_10027E7C8(*(v84 + 56) + *(*(v0 + 680) + 72) * v92, v90, type metadata accessor for OwnedBeaconGroup.PairingState);
  v96 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
  v97 = *(v96 + 48);
  *v89 = v94;
  v89[1] = v95;
  sub_10027E700(v90, v89 + v97, type metadata accessor for OwnedBeaconGroup.PairingState);
  (*(*(v96 - 8) + 56))(v89, 0, 1, v96);
  sub_100017D5C(v94, v95);
  v87 = v82;
LABEL_39:
  *(v0 + 760) = v87;
  *(v0 + 752) = v91;
  v98 = *(v0 + 728);
  sub_1000D2AD8(*(v0 + 720), v98, &unk_1016BBEA0, &unk_101395A80);
  v99 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
  if ((*(*(v99 - 8) + 48))(v98, 1, v99) == 1)
  {

    v100 = *(v0 + 8);

    return v100(v148);
  }

  v102 = *(v0 + 728);
  v103 = *(v0 + 704);
  v82 = *v102;
  *(v0 + 768) = *v102;
  v68 = v102[1];
  *(v0 + 776) = v68;
  sub_10027E700(v102 + *(v99 + 48), v103, type metadata accessor for OwnedBeaconGroup.PairingState);
  if (qword_101694508 != -1)
  {
    goto LABEL_59;
  }

LABEL_44:
  v104 = *(v0 + 704);
  v105 = *(v0 + 696);
  v106 = type metadata accessor for Logger();
  *(v0 + 784) = sub_1000076D4(v106, qword_10169BB90);
  sub_10027E7C8(v104, v105, type metadata accessor for OwnedBeaconGroup.PairingState);
  sub_100017D5C(v82, v68);
  v107 = Logger.logObject.getter();
  v108 = static os_log_type_t.default.getter();
  sub_100016590(v82, v68);
  if (os_log_type_enabled(v107, v108))
  {
    v109 = swift_slowAlloc();
    *(v0 + 464) = swift_slowAlloc();
    *v109 = 136315394;
    sub_100017D5C(v82, v68);
    static String.Encoding.utf8.getter();
    v110 = String.init(data:encoding:)();
    if (!v111)
    {
      v110 = Data.hexString.getter();
    }

    v112 = v110;
    v113 = v111;
    sub_100016590(v82, v68);
    v114 = *(v0 + 696);
    v115 = sub_1000136BC(v112, v113, (v0 + 464));

    *(v109 + 4) = v115;
    *(v109 + 12) = 2080;
    v116 = sub_10051C934();
    v118 = v117;
    sub_10027E768(v114, type metadata accessor for OwnedBeaconGroup.PairingState);
    v119 = sub_1000136BC(v116, v118, (v0 + 464));

    *(v109 + 14) = v119;
    _os_log_impl(&_mh_execute_header, v107, v108, "serialNumber:%s pairingState:%s", v109, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v120 = *(v0 + 696);

    sub_10027E768(v120, type metadata accessor for OwnedBeaconGroup.PairingState);
  }

  sub_10027E7C8(*(v0 + 704), *(v0 + 688), type metadata accessor for OwnedBeaconGroup.PairingState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v122 = *(v0 + 688);
      v123 = *(v0 + 656);
      v124 = *(v0 + 632);
      v125 = *(v0 + 624);
      v126 = *(v0 + 480);
      v127 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
      *(v0 + 792) = v127;
      sub_100006654(*(v122 + *(v127 + 64)), *(v122 + *(v127 + 64) + 8));
      v128 = (v122 + *(v127 + 96));
      *(v0 + 78) = *v128;
      *(v0 + 79) = v128[1];
      v129 = *(v124 + 32);
      *(v0 + 800) = v129;
      *(v0 + 808) = (v124 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v129(v123, v122, v125);
      v130 = sub_1002776C8;
      v131 = v126;
    }

    else
    {
      v131 = *(v0 + 488);
      v130 = sub_10027A390;
    }
  }

  else
  {
    v134 = *(v0 + 688);
    v135 = *(v0 + 488);
    v136 = (v134 + *(sub_1000BC4D4(&qword_1016A4230, &unk_101391950) + 48));
    *(v0 + 122) = *v136;
    *(v0 + 123) = v136[1];
    v130 = sub_100278770;
    v131 = v135;
  }

  return _swift_task_switch(v130, v131, 0);
}

uint64_t sub_100279978()
{
  v1 = v0;
  (*(*(v0 + 536) + 56))(*(v0 + 520), 1, 1, *(v0 + 528));
  v2 = *(v0 + 123);
  v3 = *(v1 + 122);
  v4 = *(v1 + 688);
  sub_10000B3A8(*(v1 + 520), &qword_10169BCB8, &unk_101395A70);
  if (v2)
  {
    v5 = -1;
  }

  else
  {
    v5 = v3;
  }

  v84 = v5;
  sub_10000B3A8(v4, &qword_1016A40D0, &unk_10138BE70);
  v6 = *(v1 + 744);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_101385D80;
  *(v1 + 58) = v5;
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  v10 = v9;
  *(v7 + 56) = &type metadata for String;
  v11 = sub_100008C00();
  *(v7 + 64) = v11;
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  v12 = String.init(format:arguments:)();
  v14 = v13;

  v15 = sub_1000DF96C();
  *(v1 + 16) = 0x6465726961706E75;
  *(v1 + 24) = 0xE800000000000000;
  *(v1 + 40) = &type metadata for String;
  *(v1 + 48) = v15;
  *(v1 + 56) = 1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFC070((v1 + 16), v12, v14, isUniquelyReferenced_nonNull_native);

  v17 = swift_allocObject();
  *(v1 + 59) = v84;
  *(v17 + 16) = xmmword_101385D80;
  v18 = dispatch thunk of CustomStringConvertible.description.getter();
  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = v11;
  *(v17 + 32) = v18;
  *(v17 + 40) = v19;
  v20 = String.init(format:arguments:)();
  v22 = v21;

  static String.Encoding.utf8.getter();
  v23 = String.init(data:encoding:)();
  if (!v24)
  {
    v23 = Data.hexString.getter();
  }

  *(v1 + 80) = v23;
  *(v1 + 88) = v24;
  *(v1 + 104) = &type metadata for String;
  *(v1 + 112) = v15;
  *(v1 + 120) = 1;
  v25 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFC070((v1 + 80), v20, v22, v25);

  v26 = v6;
  v27 = *(v1 + 776);
  v28 = *(v1 + 768);
  sub_10027E768(*(v1 + 704), type metadata accessor for OwnedBeaconGroup.PairingState);
  sub_100016590(v28, v27);
  v29 = *(v1 + 760);
  v30 = *(v1 + 752);
  *(v1 + 744) = v6;
  v85 = v6;
  if (!v30)
  {
    v32 = ((1 << *(v1 + 77)) + 63) >> 6;
    if (v32 <= v29 + 1)
    {
      v33 = v29 + 1;
    }

    else
    {
      v33 = ((1 << *(v1 + 77)) + 63) >> 6;
    }

    v34 = v33 - 1;
    while (1)
    {
      v35 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v35 >= v32)
      {
        v79 = *(v1 + 720);
        v80 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
        (*(*(v80 - 8) + 56))(v79, 1, 1, v80);
        v38 = 0;
        goto LABEL_17;
      }

      v31 = *(v1 + 736);
      v30 = *(v31 + 8 * v35 + 64);
      ++v29;
      if (v30)
      {
        v29 = v35;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
    goto LABEL_22;
  }

  v31 = *(v1 + 736);
LABEL_16:
  v36 = *(v1 + 720);
  v37 = *(v1 + 712);
  v38 = (v30 - 1) & v30;
  v39 = __clz(__rbit64(v30)) | (v29 << 6);
  v40 = (*(v31 + 48) + 16 * v39);
  v41 = *v40;
  v42 = v40[1];
  sub_10027E7C8(*(v31 + 56) + *(*(v1 + 680) + 72) * v39, v37, type metadata accessor for OwnedBeaconGroup.PairingState);
  v43 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
  v44 = *(v43 + 48);
  *v36 = v41;
  v36[1] = v42;
  sub_10027E700(v37, v36 + v44, type metadata accessor for OwnedBeaconGroup.PairingState);
  (*(*(v43 - 8) + 56))(v36, 0, 1, v43);
  sub_100017D5C(v41, v42);
  v34 = v29;
LABEL_17:
  *(v1 + 760) = v34;
  *(v1 + 752) = v38;
  v45 = *(v1 + 728);
  sub_1000D2AD8(*(v1 + 720), v45, &unk_1016BBEA0, &unk_101395A80);
  v46 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
  if ((*(*(v46 - 8) + 48))(v45, 1, v46) == 1)
  {

    v47 = *(v1 + 8);

    return v47(v85);
  }

  v49 = *(v1 + 728);
  v50 = *(v1 + 704);
  v34 = *v49;
  *(v1 + 768) = *v49;
  v26 = v49[1];
  *(v1 + 776) = v26;
  sub_10027E700(v49 + *(v46 + 48), v50, type metadata accessor for OwnedBeaconGroup.PairingState);
  if (qword_101694508 != -1)
  {
    goto LABEL_37;
  }

LABEL_22:
  v51 = *(v1 + 704);
  v52 = *(v1 + 696);
  v53 = type metadata accessor for Logger();
  *(v1 + 784) = sub_1000076D4(v53, qword_10169BB90);
  sub_10027E7C8(v51, v52, type metadata accessor for OwnedBeaconGroup.PairingState);
  sub_100017D5C(v34, v26);
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();
  sub_100016590(v34, v26);
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *(v1 + 464) = swift_slowAlloc();
    *v56 = 136315394;
    sub_100017D5C(v34, v26);
    static String.Encoding.utf8.getter();
    v57 = String.init(data:encoding:)();
    if (!v58)
    {
      v57 = Data.hexString.getter();
    }

    v59 = v57;
    v60 = v58;
    sub_100016590(v34, v26);
    v61 = *(v1 + 696);
    v62 = sub_1000136BC(v59, v60, (v1 + 464));

    *(v56 + 4) = v62;
    *(v56 + 12) = 2080;
    v63 = sub_10051C934();
    v65 = v64;
    sub_10027E768(v61, type metadata accessor for OwnedBeaconGroup.PairingState);
    v66 = sub_1000136BC(v63, v65, (v1 + 464));

    *(v56 + 14) = v66;
    _os_log_impl(&_mh_execute_header, v54, v55, "serialNumber:%s pairingState:%s", v56, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v67 = *(v1 + 696);

    sub_10027E768(v67, type metadata accessor for OwnedBeaconGroup.PairingState);
  }

  sub_10027E7C8(*(v1 + 704), *(v1 + 688), type metadata accessor for OwnedBeaconGroup.PairingState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v69 = *(v1 + 688);
      v70 = *(v1 + 656);
      v71 = *(v1 + 632);
      v72 = *(v1 + 624);
      v73 = *(v1 + 480);
      v74 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
      *(v1 + 792) = v74;
      sub_100006654(*(v69 + *(v74 + 64)), *(v69 + *(v74 + 64) + 8));
      v75 = (v69 + *(v74 + 96));
      *(v1 + 78) = *v75;
      *(v1 + 79) = v75[1];
      v76 = *(v71 + 32);
      *(v1 + 800) = v76;
      *(v1 + 808) = (v71 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v76(v70, v69, v72);
      v77 = sub_1002776C8;
      v78 = v73;
    }

    else
    {
      v78 = *(v1 + 488);
      v77 = sub_10027A390;
    }
  }

  else
  {
    v81 = *(v1 + 688);
    v82 = *(v1 + 488);
    v83 = (v81 + *(sub_1000BC4D4(&qword_1016A4230, &unk_101391950) + 48));
    *(v1 + 122) = *v83;
    *(v1 + 123) = v83[1];
    v77 = sub_100278770;
    v78 = v82;
  }

  return _swift_task_switch(v77, v78, 0);
}

uint64_t sub_10027A390()
{
  v1 = v0[97];
  v2 = v0[96];
  v3 = v0[61];
  v4 = swift_allocObject();
  v0[106] = v4;
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;
  sub_100017D5C(v2, v1);
  v9 = &async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:);

  v5 = swift_task_alloc();
  v0[107] = v5;
  *v5 = v0;
  v5[1] = sub_10027A4AC;
  v7 = v0[63];
  v6 = v0[64];

  return (v9)(v6, &unk_101395A90, v4, v7);
}

uint64_t sub_10027A4AC()
{

  if (v0)
  {

    v1 = sub_10027B4C0;
  }

  else
  {

    v1 = sub_10027A5F4;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_10027A5F4()
{
  v137 = v0;
  v1 = *(v0 + 512);
  v2 = "v32@0:8@NISession16q24" + 15;
  if ((*(*(v0 + 536) + 48))(v1, 1, *(v0 + 528)) == 1)
  {
    sub_10000B3A8(v1, &qword_10169BCB8, &unk_101395A70);
    v127 = 0;
    v133 = 0;
    v129 = *(v0 + 744);
    v3 = -1;
  }

  else
  {
    v4 = *(v0 + 552);
    v5 = *(v0 + 544);
    sub_10027E700(v1, v4, type metadata accessor for AccessoryPairingAnalytics);
    sub_10027E7C8(v4, v5, type metadata accessor for AccessoryPairingAnalytics);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 544);
    if (v8)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v136 = v11;
      *v10 = 136315138;
      v12 = sub_10111CE44();
      v14 = v13;
      sub_10027E768(v9, type metadata accessor for AccessoryPairingAnalytics);
      v15 = sub_1000136BC(v12, v14, &v136);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v6, v7, "Found locked analytics %s", v10, 0xCu);
      sub_100007BAC(v11);
    }

    else
    {

      sub_10027E768(v9, type metadata accessor for AccessoryPairingAnalytics);
    }

    v131 = *(v0 + 744);
    v16 = *(v0 + 552);
    v17 = *(v0 + 528);
    v3 = *(v16 + v17[6]);
    v18 = (v16 + v17[13]);
    v19 = v18[1];
    v127 = *v18;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_101385D80;
    *(v0 + 66) = v3;
    v133 = v19;

    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    *(v20 + 56) = &type metadata for String;
    v24 = sub_100008C00();
    *(v20 + 64) = v24;
    *(v20 + 32) = v21;
    *(v20 + 40) = v23;
    v25 = String.init(format:arguments:)();
    v27 = v26;

    sub_100313B54(*(v16 + v17[9]), *(v16 + v17[9] + 8));
    static Endianness.current.getter();
    sub_10012BF24();
    FixedWidthInteger.init(data:ofEndianness:)();
    if (*(v0 + 64))
    {
      v28 = 0;
    }

    else
    {
      v28 = *(v0 + 60);
    }

    v29 = sub_1000DFAD8();
    *(v0 + 176) = v28;
    *(v0 + 200) = &type metadata for Int;
    *(v0 + 208) = v29;
    *(v0 + 216) = 2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v136 = v131;
    sub_100FFC070((v0 + 176), v25, v27, isUniquelyReferenced_nonNull_native);

    v31 = v136;
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_101385D80;
    *(v0 + 67) = v3;
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    *(v32 + 56) = &type metadata for String;
    *(v32 + 64) = v24;
    *(v32 + 32) = v33;
    *(v32 + 40) = v34;
    v35 = String.init(format:arguments:)();
    v37 = v36;

    v38 = (v16 + v17[8]);
    v40 = *v38;
    v39 = v38[1];
    v41 = sub_1000DF96C();
    *(v0 + 224) = v40;
    *(v0 + 232) = v39;
    *(v0 + 248) = &type metadata for String;
    *(v0 + 256) = v41;
    *(v0 + 264) = 1;

    v42 = swift_isUniquelyReferenced_nonNull_native();
    v136 = v31;
    sub_100FFC070((v0 + 224), v35, v37, v42);
    v2 = "ion16q24";

    v129 = v136;
    sub_10027E768(v16, type metadata accessor for AccessoryPairingAnalytics);
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v43 = swift_allocObject();
  v134 = *(v2 + 216);
  *(v43 + 16) = v134;
  *(v0 + 58) = v3;
  v44 = dispatch thunk of CustomStringConvertible.description.getter();
  v46 = v45;
  *(v43 + 56) = &type metadata for String;
  v47 = sub_100008C00();
  *(v43 + 64) = v47;
  *(v43 + 32) = v44;
  *(v43 + 40) = v46;
  v48 = String.init(format:arguments:)();
  v50 = v49;

  v51 = sub_1000DF96C();
  *(v0 + 16) = 0x64656B636F6CLL;
  *(v0 + 24) = 0xE600000000000000;
  *(v0 + 40) = &type metadata for String;
  *(v0 + 48) = v51;
  v132 = v51;
  *(v0 + 56) = 1;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v136 = v129;
  sub_100FFC070((v0 + 16), v48, v50, v52);

  v53 = v136;
  v54 = swift_allocObject();
  *(v54 + 16) = v134;
  v130 = v3;
  *(v0 + 59) = v3;
  v55 = dispatch thunk of CustomStringConvertible.description.getter();
  *(v54 + 56) = &type metadata for String;
  *(v54 + 64) = v47;
  *(v54 + 32) = v55;
  *(v54 + 40) = v56;
  v57 = String.init(format:arguments:)();
  v59 = v58;

  static String.Encoding.utf8.getter();
  v60 = String.init(data:encoding:)();
  if (!v61)
  {
    v60 = Data.hexString.getter();
  }

  *(v0 + 80) = v60;
  *(v0 + 88) = v61;
  *(v0 + 104) = &type metadata for String;
  *(v0 + 112) = v132;
  *(v0 + 120) = 1;
  v62 = swift_isUniquelyReferenced_nonNull_native();
  v136 = v53;
  sub_100FFC070((v0 + 80), v57, v59, v62);

  v63 = v136;
  v64 = *(v0 + 776);
  v65 = *(v0 + 768);
  if (v133)
  {
    v128 = *(v0 + 704);
    v66 = swift_allocObject();
    *(v66 + 16) = v134;
    *(v0 + 65) = v130;
    v67 = dispatch thunk of CustomStringConvertible.description.getter();
    *(v66 + 56) = &type metadata for String;
    *(v66 + 64) = v47;
    *(v66 + 32) = v67;
    *(v66 + 40) = v68;
    v69 = String.init(format:arguments:)();
    v57 = v70;

    *(v0 + 128) = v127;
    *(v0 + 136) = v133;
    *(v0 + 152) = &type metadata for String;
    *(v0 + 160) = v132;
    *(v0 + 168) = 1;
    v71 = swift_isUniquelyReferenced_nonNull_native();
    v136 = v63;
    sub_100FFC070((v0 + 128), v69, v57, v71);

    sub_100016590(v65, v64);
    sub_10027E768(v128, type metadata accessor for OwnedBeaconGroup.PairingState);
    v63 = v136;
  }

  else
  {
    sub_10027E768(*(v0 + 704), type metadata accessor for OwnedBeaconGroup.PairingState);
    sub_100016590(v65, v64);
  }

  v72 = *(v0 + 760);
  v73 = *(v0 + 752);
  *(v0 + 744) = v63;
  v135 = v63;
  if (!v73)
  {
    v75 = ((1 << *(v0 + 77)) + 63) >> 6;
    if (v75 <= v72 + 1)
    {
      v76 = v72 + 1;
    }

    else
    {
      v76 = ((1 << *(v0 + 77)) + 63) >> 6;
    }

    v77 = v76 - 1;
    while (1)
    {
      v78 = v72 + 1;
      if (__OFADD__(v72, 1))
      {
        break;
      }

      if (v78 >= v75)
      {
        v122 = *(v0 + 720);
        v123 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
        (*(*(v123 - 8) + 56))(v122, 1, 1, v123);
        v81 = 0;
        goto LABEL_26;
      }

      v74 = *(v0 + 736);
      v73 = *(v74 + 8 * v78 + 64);
      ++v72;
      if (v73)
      {
        v72 = v78;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_46:
    swift_once();
    goto LABEL_31;
  }

  v74 = *(v0 + 736);
LABEL_25:
  v79 = *(v0 + 720);
  v80 = *(v0 + 712);
  v81 = (v73 - 1) & v73;
  v82 = __clz(__rbit64(v73)) | (v72 << 6);
  v83 = (*(v74 + 48) + 16 * v82);
  v84 = *v83;
  v85 = v83[1];
  sub_10027E7C8(*(v74 + 56) + *(*(v0 + 680) + 72) * v82, v80, type metadata accessor for OwnedBeaconGroup.PairingState);
  v86 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
  v87 = *(v86 + 48);
  *v79 = v84;
  v79[1] = v85;
  sub_10027E700(v80, v79 + v87, type metadata accessor for OwnedBeaconGroup.PairingState);
  (*(*(v86 - 8) + 56))(v79, 0, 1, v86);
  sub_100017D5C(v84, v85);
  v77 = v72;
LABEL_26:
  *(v0 + 760) = v77;
  *(v0 + 752) = v81;
  v88 = *(v0 + 728);
  sub_1000D2AD8(*(v0 + 720), v88, &unk_1016BBEA0, &unk_101395A80);
  v89 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
  if ((*(*(v89 - 8) + 48))(v88, 1, v89) == 1)
  {

    v90 = *(v0 + 8);

    return v90(v135);
  }

  v92 = *(v0 + 728);
  v93 = *(v0 + 704);
  v72 = *v92;
  *(v0 + 768) = *v92;
  v57 = v92[1];
  *(v0 + 776) = v57;
  sub_10027E700(v92 + *(v89 + 48), v93, type metadata accessor for OwnedBeaconGroup.PairingState);
  if (qword_101694508 != -1)
  {
    goto LABEL_46;
  }

LABEL_31:
  v94 = *(v0 + 704);
  v95 = *(v0 + 696);
  v96 = type metadata accessor for Logger();
  *(v0 + 784) = sub_1000076D4(v96, qword_10169BB90);
  sub_10027E7C8(v94, v95, type metadata accessor for OwnedBeaconGroup.PairingState);
  sub_100017D5C(v72, v57);
  v97 = Logger.logObject.getter();
  v98 = static os_log_type_t.default.getter();
  sub_100016590(v72, v57);
  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    *(v0 + 464) = swift_slowAlloc();
    *v99 = 136315394;
    sub_100017D5C(v72, v57);
    static String.Encoding.utf8.getter();
    v100 = String.init(data:encoding:)();
    if (!v101)
    {
      v100 = Data.hexString.getter();
    }

    v102 = v100;
    v103 = v101;
    sub_100016590(v72, v57);
    v104 = *(v0 + 696);
    v105 = sub_1000136BC(v102, v103, (v0 + 464));

    *(v99 + 4) = v105;
    *(v99 + 12) = 2080;
    v106 = sub_10051C934();
    v108 = v107;
    sub_10027E768(v104, type metadata accessor for OwnedBeaconGroup.PairingState);
    v109 = sub_1000136BC(v106, v108, (v0 + 464));

    *(v99 + 14) = v109;
    _os_log_impl(&_mh_execute_header, v97, v98, "serialNumber:%s pairingState:%s", v99, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v110 = *(v0 + 696);

    sub_10027E768(v110, type metadata accessor for OwnedBeaconGroup.PairingState);
  }

  sub_10027E7C8(*(v0 + 704), *(v0 + 688), type metadata accessor for OwnedBeaconGroup.PairingState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v112 = *(v0 + 688);
      v113 = *(v0 + 656);
      v114 = *(v0 + 632);
      v115 = *(v0 + 624);
      v116 = *(v0 + 480);
      v117 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
      *(v0 + 792) = v117;
      sub_100006654(*(v112 + *(v117 + 64)), *(v112 + *(v117 + 64) + 8));
      v118 = (v112 + *(v117 + 96));
      *(v0 + 78) = *v118;
      *(v0 + 79) = v118[1];
      v119 = *(v114 + 32);
      *(v0 + 800) = v119;
      *(v0 + 808) = (v114 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v119(v113, v112, v115);
      v120 = sub_1002776C8;
      v121 = v116;
    }

    else
    {
      v121 = *(v0 + 488);
      v120 = sub_10027A390;
    }
  }

  else
  {
    v124 = *(v0 + 688);
    v125 = *(v0 + 488);
    v126 = (v124 + *(sub_1000BC4D4(&qword_1016A4230, &unk_101391950) + 48));
    *(v0 + 122) = *v126;
    *(v0 + 123) = v126[1];
    v120 = sub_100278770;
    v121 = v125;
  }

  return _swift_task_switch(v120, v121, 0);
}

uint64_t sub_10027B4C0()
{
  v1 = v0;
  (*(*(v0 + 536) + 56))(*(v0 + 512), 1, 1, *(v0 + 528));
  sub_10000B3A8(*(v0 + 512), &qword_10169BCB8, &unk_101395A70);
  v2 = *(v0 + 744);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_101385D80;
  *(v0 + 58) = -1;
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  v6 = v5;
  *(v3 + 56) = &type metadata for String;
  v7 = sub_100008C00();
  *(v3 + 64) = v7;
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  v8 = String.init(format:arguments:)();
  v10 = v9;

  v11 = sub_1000DF96C();
  *(v0 + 16) = 0x64656B636F6CLL;
  *(v0 + 24) = 0xE600000000000000;
  *(v0 + 40) = &type metadata for String;
  *(v0 + 48) = v11;
  *(v0 + 56) = 1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFC070((v0 + 16), v8, v10, isUniquelyReferenced_nonNull_native);

  v13 = swift_allocObject();
  *(v0 + 59) = -1;
  *(v13 + 16) = xmmword_101385D80;
  v14 = dispatch thunk of CustomStringConvertible.description.getter();
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = v7;
  *(v13 + 32) = v14;
  *(v13 + 40) = v15;
  v16 = String.init(format:arguments:)();
  v18 = v17;

  static String.Encoding.utf8.getter();
  v19 = String.init(data:encoding:)();
  if (!v20)
  {
    v19 = Data.hexString.getter();
  }

  *(v0 + 80) = v19;
  *(v0 + 88) = v20;
  *(v0 + 104) = &type metadata for String;
  *(v0 + 112) = v11;
  *(v0 + 120) = 1;
  v21 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFC070((v0 + 80), v16, v18, v21);

  v22 = v2;
  v23 = *(v0 + 776);
  v24 = *(v0 + 768);
  sub_10027E768(*(v0 + 704), type metadata accessor for OwnedBeaconGroup.PairingState);
  sub_100016590(v24, v23);
  v25 = *(v0 + 760);
  v26 = *(v0 + 752);
  *(v0 + 744) = v2;
  v80 = v2;
  if (!v26)
  {
    v28 = ((1 << *(v0 + 77)) + 63) >> 6;
    if (v28 <= v25 + 1)
    {
      v29 = v25 + 1;
    }

    else
    {
      v29 = ((1 << *(v0 + 77)) + 63) >> 6;
    }

    v30 = v29 - 1;
    while (1)
    {
      v31 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v31 >= v28)
      {
        v75 = *(v0 + 720);
        v76 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
        (*(*(v76 - 8) + 56))(v75, 1, 1, v76);
        v34 = 0;
        goto LABEL_14;
      }

      v27 = *(v0 + 736);
      v26 = *(v27 + 8 * v31 + 64);
      ++v25;
      if (v26)
      {
        v25 = v31;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_34:
    swift_once();
    goto LABEL_19;
  }

  v27 = *(v0 + 736);
LABEL_13:
  v32 = *(v0 + 720);
  v33 = *(v0 + 712);
  v34 = (v26 - 1) & v26;
  v35 = __clz(__rbit64(v26)) | (v25 << 6);
  v36 = (*(v27 + 48) + 16 * v35);
  v37 = *v36;
  v38 = v36[1];
  sub_10027E7C8(*(v27 + 56) + *(*(v0 + 680) + 72) * v35, v33, type metadata accessor for OwnedBeaconGroup.PairingState);
  v39 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
  v40 = *(v39 + 48);
  *v32 = v37;
  v32[1] = v38;
  sub_10027E700(v33, v32 + v40, type metadata accessor for OwnedBeaconGroup.PairingState);
  (*(*(v39 - 8) + 56))(v32, 0, 1, v39);
  sub_100017D5C(v37, v38);
  v30 = v25;
LABEL_14:
  *(v0 + 760) = v30;
  *(v0 + 752) = v34;
  v41 = *(v0 + 728);
  sub_1000D2AD8(*(v0 + 720), v41, &unk_1016BBEA0, &unk_101395A80);
  v42 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
  if ((*(*(v42 - 8) + 48))(v41, 1, v42) == 1)
  {

    v43 = *(v0 + 8);

    return v43(v80);
  }

  v45 = *(v0 + 728);
  v46 = *(v0 + 704);
  v30 = *v45;
  *(v0 + 768) = *v45;
  v22 = v45[1];
  *(v0 + 776) = v22;
  sub_10027E700(v45 + *(v42 + 48), v46, type metadata accessor for OwnedBeaconGroup.PairingState);
  if (qword_101694508 != -1)
  {
    goto LABEL_34;
  }

LABEL_19:
  v47 = *(v0 + 704);
  v48 = *(v0 + 696);
  v49 = type metadata accessor for Logger();
  *(v0 + 784) = sub_1000076D4(v49, qword_10169BB90);
  sub_10027E7C8(v47, v48, type metadata accessor for OwnedBeaconGroup.PairingState);
  sub_100017D5C(v30, v22);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();
  sub_100016590(v30, v22);
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *(v0 + 464) = swift_slowAlloc();
    *v52 = 136315394;
    sub_100017D5C(v30, v22);
    static String.Encoding.utf8.getter();
    v53 = String.init(data:encoding:)();
    if (!v54)
    {
      v53 = Data.hexString.getter();
    }

    v55 = v53;
    v56 = v54;
    sub_100016590(v30, v22);
    v57 = *(v0 + 696);
    v58 = sub_1000136BC(v55, v56, (v0 + 464));

    *(v52 + 4) = v58;
    *(v52 + 12) = 2080;
    v59 = sub_10051C934();
    v61 = v60;
    sub_10027E768(v57, type metadata accessor for OwnedBeaconGroup.PairingState);
    v62 = sub_1000136BC(v59, v61, (v0 + 464));

    *(v52 + 14) = v62;
    _os_log_impl(&_mh_execute_header, v50, v51, "serialNumber:%s pairingState:%s", v52, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v63 = *(v0 + 696);

    sub_10027E768(v63, type metadata accessor for OwnedBeaconGroup.PairingState);
  }

  sub_10027E7C8(*(v0 + 704), *(v0 + 688), type metadata accessor for OwnedBeaconGroup.PairingState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v65 = *(v0 + 688);
      v66 = *(v0 + 656);
      v67 = *(v1 + 632);
      v68 = *(v1 + 624);
      v69 = *(v1 + 480);
      v70 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
      *(v1 + 792) = v70;
      sub_100006654(*(v65 + *(v70 + 64)), *(v65 + *(v70 + 64) + 8));
      v71 = (v65 + *(v70 + 96));
      *(v1 + 78) = *v71;
      *(v1 + 79) = v71[1];
      v72 = *(v67 + 32);
      *(v1 + 800) = v72;
      *(v1 + 808) = (v67 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v72(v66, v65, v68);
      v73 = sub_1002776C8;
      v74 = v69;
    }

    else
    {
      v74 = *(v0 + 488);
      v73 = sub_10027A390;
    }
  }

  else
  {
    v77 = *(v0 + 688);
    v78 = *(v1 + 488);
    v79 = (v77 + *(sub_1000BC4D4(&qword_1016A4230, &unk_101391950) + 48));
    *(v1 + 122) = *v79;
    *(v1 + 123) = v79[1];
    v73 = sub_100278770;
    v74 = v78;
  }

  return _swift_task_switch(v73, v74, 0);
}

uint64_t sub_10027BEA8(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = *(type metadata accessor for AccessoryPairingAnalytics(0) - 8);
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_10027BF64, 0, 0);
}

Swift::Int sub_10027BF64()
{
  v12 = v0;
  v1 = v0[2];
  v10 = _swiftEmptyDictionarySingleton;
  v11 = v1;

  result = sub_10027CB30(&v11);
  v3 = v11;
  v4 = *(v11 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v0[3];
    while (v5 < *(v3 + 16))
    {
      v7 = v0[4];
      sub_10027E7C8(v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5, v7, type metadata accessor for AccessoryPairingAnalytics);
      sub_10027C110(v7, &v10);
      ++v5;
      result = sub_10027E768(v0[4], type metadata accessor for AccessoryPairingAnalytics);
      if (v4 == v5)
      {
        v8 = v10;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = _swiftEmptyDictionarySingleton;
LABEL_7:

    v9 = v0[1];

    return v9(v8);
  }

  return result;
}

uint64_t sub_10027C110(uint64_t a1, uint64_t a2)
{
  v61[2] = a2;
  v3 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v3 - 8);
  v61[3] = v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Endianness();
  __chkstk_darwin(v5 - 8);
  v61[1] = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  v65 = xmmword_101385D80;
  *(v6 + 16) = xmmword_101385D80;
  v7 = type metadata accessor for AccessoryPairingAnalytics(0);
  v8 = v7[6];
  v71 = a1;
  v9 = *(a1 + v8);
  LOBYTE(v66) = *(a1 + v8);
  v10 = dispatch thunk of CustomStringConvertible.description.getter();
  v12 = v11;
  *(v6 + 56) = &type metadata for String;
  v13 = sub_100008C00();
  *(v6 + 64) = v13;
  *(v6 + 32) = v10;
  *(v6 + 40) = v12;
  v64 = String.init(format:arguments:)();
  v15 = v14;

  sub_100313B54(*(a1 + v7[9]), *(a1 + v7[9] + 8));
  static Endianness.current.getter();
  sub_10012BF24();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (BYTE4(v66))
  {
    v16 = 0;
  }

  else
  {
    v16 = v66;
  }

  v68 = &type metadata for Int;
  v69 = sub_1000DFAD8();
  v66 = v16;
  v70 = 2;
  sub_1001DE0D4(&v66, v64, v15);
  v17 = swift_allocObject();
  *(v17 + 16) = v65;
  v63 = v9;
  LOBYTE(v66) = v9;
  v18 = dispatch thunk of CustomStringConvertible.description.getter();
  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = v13;
  v64 = v13;
  *(v17 + 32) = v18;
  *(v17 + 40) = v19;
  v20 = String.init(format:arguments:)();
  v22 = v21;

  v62 = v7;
  v23 = *(v71 + v7[10]);
  if (v23 > 1)
  {
    if (v23 == 2)
    {
      v24 = 0xE800000000000000;
      v25 = 0x6465726961706E75;
      goto LABEL_12;
    }

    v24 = 0xE600000000000000;
    v26 = 1801678700;
  }

  else
  {
    if (!*(v71 + v7[10]))
    {
      v24 = 0xE700000000000000;
      v25 = 0x6E776F6E6B6E75;
      goto LABEL_12;
    }

    v24 = 0xE600000000000000;
    v26 = 1919508848;
  }

  v25 = v26 & 0xFFFF0000FFFFFFFFLL | 0x646500000000;
LABEL_12:
  v68 = &type metadata for String;
  v27 = sub_1000DF96C();
  v69 = v27;
  v66 = v25;
  v67 = v24;
  v70 = 1;
  sub_1001DE0D4(&v66, v20, v22);
  v28 = swift_allocObject();
  *(v28 + 16) = v65;
  LOBYTE(v66) = v63;
  v29 = dispatch thunk of CustomStringConvertible.description.getter();
  v30 = v64;
  *(v28 + 56) = &type metadata for String;
  *(v28 + 64) = v30;
  *(v28 + 32) = v29;
  *(v28 + 40) = v31;
  v32 = String.init(format:arguments:)();
  v34 = v33;

  static String.Encoding.utf8.getter();
  v35 = String.init(data:encoding:)();
  if (!v36)
  {
    v35 = Data.hexString.getter();
  }

  v68 = &type metadata for String;
  v69 = v27;
  v66 = v35;
  v67 = v36;
  v70 = 1;
  sub_1001DE0D4(&v66, v32, v34);
  v37 = swift_allocObject();
  *(v37 + 16) = v65;
  v38 = v63;
  LOBYTE(v66) = v63;
  v39 = dispatch thunk of CustomStringConvertible.description.getter();
  v40 = v64;
  *(v37 + 56) = &type metadata for String;
  *(v37 + 64) = v40;
  *(v37 + 32) = v39;
  *(v37 + 40) = v41;
  v42 = String.init(format:arguments:)();
  v44 = v43;

  v45 = v62;
  v46 = v71;
  v47 = (v71 + v62[8]);
  v49 = *v47;
  v48 = v47[1];
  v68 = &type metadata for String;
  v69 = v27;
  v66 = v49;
  v67 = v48;
  v70 = 1;

  result = sub_1001DE0D4(&v66, v42, v44);
  v51 = (v46 + v45[13]);
  v52 = v51[1];
  if (v52)
  {
    v53 = *v51;
    v54 = swift_allocObject();
    *(v54 + 16) = v65;
    LOBYTE(v66) = v38;

    v55 = dispatch thunk of CustomStringConvertible.description.getter();
    v56 = v64;
    *(v54 + 56) = &type metadata for String;
    *(v54 + 64) = v56;
    *(v54 + 32) = v55;
    *(v54 + 40) = v57;
    v58 = String.init(format:arguments:)();
    v60 = v59;

    v68 = &type metadata for String;
    v69 = v27;
    v66 = v53;
    v67 = v52;
    v70 = 1;
    return sub_1001DE0D4(&v66, v58, v60);
  }

  return result;
}

uint64_t sub_10027C6F0(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for AccessoryPairingAnalyticsService();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v5, a2);
}

uint64_t sub_10027C798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for AccessoryPairingAnalyticsService();
  *v8 = v4;
  v8[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v9, a4);
}

uint64_t sub_10027C85C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for AccessoryPairingAnalyticsService();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v5, a2);
}

uint64_t sub_10027C904(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for AccessoryPairingAnalyticsService();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.startup()(v5, a2);
}

uint64_t sub_10027C9AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_10026B4D4();
}

uint64_t sub_10027CA38()
{
  type metadata accessor for AccessoryPairingAnalyticsService();
  sub_10027EB7C(&qword_10169BCB0, v0, type metadata accessor for AccessoryPairingAnalyticsService, &unk_1013959D0);
  return ActorServiceProtocol.description.getter();
}

Swift::Int sub_10027CB30(uint64_t *a1)
{
  v2 = *(type metadata accessor for AccessoryPairingAnalytics(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100B32070(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_10027CBD8(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_10027CBD8(uint64_t *a1)
{
  v2 = a1[1];
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
        type metadata accessor for AccessoryPairingAnalytics(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for AccessoryPairingAnalytics(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10027CF4C(v8, v9, a1, v4);
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
    return sub_10027CD04(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10027CD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v34 = type metadata accessor for AccessoryPairingAnalytics(0);
  v8 = __chkstk_darwin(v34);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v26 - v12;
  result = __chkstk_darwin(v11);
  v17 = &v26 - v16;
  v28 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v33 = v18;
    v27 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v31 = v20;
    v32 = a3;
    v29 = v23;
    v30 = v22;
    while (1)
    {
      sub_10027E7C8(v23, v17, type metadata accessor for AccessoryPairingAnalytics);
      sub_10027E7C8(v20, v13, type metadata accessor for AccessoryPairingAnalytics);
      v24 = static Date.< infix(_:_:)();
      sub_10027E768(v13, type metadata accessor for AccessoryPairingAnalytics);
      result = sub_10027E768(v17, type metadata accessor for AccessoryPairingAnalytics);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v32 + 1;
        v20 = v31 + v27;
        v22 = v30 - 1;
        v23 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      sub_10027E700(v23, v10, type metadata accessor for AccessoryPairingAnalytics);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_10027E700(v10, v20, type metadata accessor for AccessoryPairingAnalytics);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10027CF4C(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v104 = a1;
  v9 = type metadata accessor for AccessoryPairingAnalytics(0);
  v112 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v107 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v115 = &v100 - v13;
  v14 = __chkstk_darwin(v12);
  v116 = &v100 - v15;
  result = __chkstk_darwin(v14);
  v18 = &v100 - v17;
  v114 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_95:
    v5 = *v104;
    if (!*v104)
    {
      goto LABEL_134;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_128:
      result = sub_100B31E68(a4);
    }

    v118 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v114)
      {
        v96 = *(result + 16 * a4);
        v97 = result;
        v98 = *(result + 16 * (a4 - 1) + 40);
        sub_10027D878(*v114 + *(v112 + 72) * v96, *v114 + *(v112 + 72) * *(result + 16 * (a4 - 1) + 32), *v114 + *(v112 + 72) * v98, v5);
        if (v6)
        {
        }

        if (v98 < v96)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_100B31E68(v97);
        }

        if (a4 - 2 >= *(v97 + 2))
        {
          goto LABEL_122;
        }

        v99 = &v97[16 * a4];
        *v99 = v96;
        *(v99 + 1) = v98;
        v118 = v97;
        sub_100B31DDC(a4 - 1);
        result = v118;
        a4 = *(v118 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v20 = 0;
  v21 = _swiftEmptyArrayStorage;
  v103 = a4;
  v117 = v9;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v108 = v21;
    if (v20 + 1 >= v19)
    {
      v19 = v20 + 1;
    }

    else
    {
      v24 = *(v112 + 72);
      v5 = *v114 + v24 * v23;
      v110 = *v114;
      v25 = v110;
      sub_10027E7C8(v110 + v24 * v23, v18, type metadata accessor for AccessoryPairingAnalytics);
      v26 = v25 + v24 * v20;
      v27 = v116;
      sub_10027E7C8(v26, v116, type metadata accessor for AccessoryPairingAnalytics);
      LODWORD(v111) = static Date.< infix(_:_:)();
      sub_10027E768(v27, type metadata accessor for AccessoryPairingAnalytics);
      result = sub_10027E768(v18, type metadata accessor for AccessoryPairingAnalytics);
      v102 = v20;
      v28 = v20 + 2;
      v113 = v24;
      v29 = v110 + v24 * (v20 + 2);
      while (v19 != v28)
      {
        sub_10027E7C8(v29, v18, type metadata accessor for AccessoryPairingAnalytics);
        v30 = v116;
        sub_10027E7C8(v5, v116, type metadata accessor for AccessoryPairingAnalytics);
        v31 = static Date.< infix(_:_:)() & 1;
        sub_10027E768(v30, type metadata accessor for AccessoryPairingAnalytics);
        result = sub_10027E768(v18, type metadata accessor for AccessoryPairingAnalytics);
        ++v28;
        v29 += v113;
        v5 += v113;
        if ((v111 & 1) != v31)
        {
          v19 = v28 - 1;
          break;
        }
      }

      v22 = v102;
      a4 = v103;
      if (v111)
      {
        if (v19 < v102)
        {
          goto LABEL_125;
        }

        if (v102 < v19)
        {
          v101 = v6;
          v32 = v113 * (v19 - 1);
          v33 = v19;
          v34 = v19 * v113;
          v111 = v19;
          v35 = v102;
          v36 = v102;
          v37 = v102 * v113;
          do
          {
            if (v35 != --v33)
            {
              v38 = *v114;
              if (!*v114)
              {
                goto LABEL_131;
              }

              v5 = v38 + v37;
              sub_10027E700(v38 + v37, v107, type metadata accessor for AccessoryPairingAnalytics);
              if (v37 < v32 || v5 >= v38 + v34)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v37 != v32)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_10027E700(v107, v38 + v32, type metadata accessor for AccessoryPairingAnalytics);
            }

            ++v35;
            v32 -= v113;
            v34 -= v113;
            v37 += v113;
          }

          while (v35 < v33);
          v6 = v101;
          a4 = v103;
          v22 = v36;
          v19 = v111;
        }
      }
    }

    v39 = v114[1];
    if (v19 < v39)
    {
      if (__OFSUB__(v19, v22))
      {
        goto LABEL_124;
      }

      if (v19 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_126;
        }

        if ((v22 + a4) >= v39)
        {
          v40 = v114[1];
        }

        else
        {
          v40 = v22 + a4;
        }

        if (v40 < v22)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v19 != v40)
        {
          break;
        }
      }
    }

    v20 = v19;
    if (v19 < v22)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v108;
    }

    else
    {
      result = sub_100A5B430(0, *(v108 + 2) + 1, 1, v108);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v41 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v41 >> 1)
    {
      result = sub_100A5B430((v41 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v5;
    v42 = &v21[16 * a4];
    *(v42 + 4) = v22;
    *(v42 + 5) = v20;
    v43 = *v104;
    if (!*v104)
    {
      goto LABEL_133;
    }

    if (a4)
    {
      while (1)
      {
        v44 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v45 = *(v21 + 4);
          v46 = *(v21 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_52:
          if (v48)
          {
            goto LABEL_112;
          }

          v61 = &v21[16 * v5];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_115;
          }

          v67 = &v21[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_119;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v71 = &v21[16 * v5];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_66:
        if (v66)
        {
          goto LABEL_114;
        }

        v74 = &v21[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_117;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v44 - 1;
        if (v44 - 1 >= v5)
        {
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
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v114)
        {
          goto LABEL_130;
        }

        v82 = v21;
        v83 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v44 + 40];
        sub_10027D878(*v114 + *(v112 + 72) * v83, *v114 + *(v112 + 72) * *&v21[16 * v44 + 32], *v114 + *(v112 + 72) * v5, v43);
        if (v6)
        {
        }

        if (v5 < v83)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v82 = sub_100B31E68(v82);
        }

        if (a4 >= *(v82 + 2))
        {
          goto LABEL_109;
        }

        v84 = &v82[16 * a4];
        *(v84 + 4) = v83;
        *(v84 + 5) = v5;
        v118 = v82;
        result = sub_100B31DDC(v44);
        v21 = v118;
        v5 = *(v118 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v21[16 * v5 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_110;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_111;
      }

      v56 = &v21[16 * v5];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_113;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_116;
      }

      if (v60 >= v52)
      {
        v78 = &v21[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_120;
        }

        if (v47 < v81)
        {
          v44 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = v114[1];
    a4 = v103;
    if (v20 >= v19)
    {
      goto LABEL_95;
    }
  }

  v101 = v6;
  v85 = v19;
  v86 = v22;
  v87 = *v114;
  v88 = *(v112 + 72);
  v89 = *v114 + v88 * (v19 - 1);
  v90 = -v88;
  v102 = v86;
  v91 = v86 - v19;
  v111 = v85;
  v105 = v88;
  v106 = v40;
  v5 = v87 + v85 * v88;
LABEL_85:
  v109 = v5;
  v110 = v91;
  v113 = v89;
  while (1)
  {
    a4 = type metadata accessor for AccessoryPairingAnalytics;
    sub_10027E7C8(v5, v18, type metadata accessor for AccessoryPairingAnalytics);
    v92 = v116;
    sub_10027E7C8(v89, v116, type metadata accessor for AccessoryPairingAnalytics);
    v93 = static Date.< infix(_:_:)();
    sub_10027E768(v92, type metadata accessor for AccessoryPairingAnalytics);
    result = sub_10027E768(v18, type metadata accessor for AccessoryPairingAnalytics);
    if ((v93 & 1) == 0)
    {
LABEL_84:
      v20 = v106;
      v89 = v113 + v105;
      v91 = v110 - 1;
      v5 = v109 + v105;
      if (++v111 != v106)
      {
        goto LABEL_85;
      }

      v6 = v101;
      v22 = v102;
      if (v106 < v102)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v87)
    {
      break;
    }

    a4 = type metadata accessor for AccessoryPairingAnalytics;
    v94 = v115;
    sub_10027E700(v5, v115, type metadata accessor for AccessoryPairingAnalytics);
    swift_arrayInitWithTakeFrontToBack();
    sub_10027E700(v94, v89, type metadata accessor for AccessoryPairingAnalytics);
    v89 += v90;
    v5 += v90;
    if (__CFADD__(v91++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_10027D878(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v45 = type metadata accessor for AccessoryPairingAnalytics(0);
  v8 = __chkstk_darwin(v45);
  v44 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v43 = &v35 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v48 = a1;
  v47 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = a4 + v17;
    if (v17 >= 1)
    {
      v24 = -v13;
      v25 = a4 + v17;
      v39 = a1;
      v40 = a4;
      v38 = -v13;
      do
      {
        v36 = v23;
        v26 = a2;
        v27 = a2 + v24;
        v41 = v26;
        v42 = v27;
        while (1)
        {
          if (v26 <= a1)
          {
            v48 = v26;
            v46 = v36;
            goto LABEL_59;
          }

          v37 = v23;
          v29 = a3 + v24;
          v30 = v25 + v24;
          v31 = v43;
          sub_10027E7C8(v30, v43, type metadata accessor for AccessoryPairingAnalytics);
          v32 = v44;
          sub_10027E7C8(v27, v44, type metadata accessor for AccessoryPairingAnalytics);
          v33 = static Date.< infix(_:_:)();
          sub_10027E768(v32, type metadata accessor for AccessoryPairingAnalytics);
          sub_10027E768(v31, type metadata accessor for AccessoryPairingAnalytics);
          if (v33)
          {
            break;
          }

          v23 = v30;
          if (a3 < v25 || v29 >= v25)
          {
            a3 = v29;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v39;
          }

          else
          {
            v34 = a3 == v25;
            a3 = v29;
            a1 = v39;
            if (!v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v30;
          v26 = v41;
          v28 = v30 > v40;
          v27 = v42;
          v24 = v38;
          if (!v28)
          {
            a2 = v41;
            goto LABEL_58;
          }
        }

        if (a3 < v41 || v29 >= v41)
        {
          a3 = v29;
          a2 = v42;
          swift_arrayInitWithTakeFrontToBack();
          v24 = v38;
          a1 = v39;
          v23 = v37;
        }

        else
        {
          v34 = a3 == v41;
          a3 = v29;
          a2 = v42;
          v24 = v38;
          a1 = v39;
          v23 = v37;
          if (!v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v40);
    }

LABEL_58:
    v48 = a2;
    v46 = v23;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a4 + v16;
    v46 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      do
      {
        v19 = a3;
        v20 = v43;
        sub_10027E7C8(a2, v43, type metadata accessor for AccessoryPairingAnalytics);
        v21 = v44;
        sub_10027E7C8(a4, v44, type metadata accessor for AccessoryPairingAnalytics);
        v22 = static Date.< infix(_:_:)();
        sub_10027E768(v21, type metadata accessor for AccessoryPairingAnalytics);
        sub_10027E768(v20, type metadata accessor for AccessoryPairingAnalytics);
        if (v22)
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v13;
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v13;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = a4 + v13;
          a4 += v13;
        }

        a1 += v13;
        v48 = a1;
      }

      while (a4 < v42 && a2 < a3);
    }
  }

LABEL_59:
  sub_10060AB14(&v48, &v47, &v46);
  return 1;
}

uint64_t sub_10027DD80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10027DDF0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001BBA4C;

  return sub_100276BEC(v2, v3, v4);
}

uint64_t sub_10027DE9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100B9EAD8(a1, v4, v5, v6);
}

uint64_t sub_10027DF7C()
{
  v2 = *(sub_1000BC4D4(&qword_10169A060, &unk_10139DB00) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014744;

  return sub_10026EF48(v4, v0 + v3, v5);
}

uint64_t sub_10027E090(uint64_t a1)
{
  v4 = *(sub_1000BC4D4(&qword_10169A060, &unk_10139DB00) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_10026F5F4(a1, v6, v1 + v5);
}

uint64_t sub_10027E1B8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100B9E478(a1, v1);
}

uint64_t sub_10027E254(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100274BA4(a1, v1);
}

uint64_t sub_10027E2F0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1001BA6C8;

  return sub_100274F84(a1, v5, v4);
}

uint64_t sub_10027E398(uint64_t a1)
{
  v4 = *(type metadata accessor for MACAddress() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100B9E8A8(a1, v6, v1 + v5);
}

uint64_t sub_10027E4A8(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

uint64_t sub_10027E538(uint64_t a1)
{
  v4 = *(type metadata accessor for MACAddress() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014650;

  return sub_100B9E8A8(a1, v6, v1 + v5);
}

uint64_t sub_10027E61C(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100B9E69C(a1, v6, v1 + v5);
}

uint64_t sub_10027E700(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10027E768(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10027E7C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10027E838()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_10026D580();
}

uint64_t sub_10027E8D4()
{
  v2 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_10026C86C(v0 + v3);
}

uint64_t sub_10027E9D8(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);

  (*(v3 + 8))(v1 + v4, v2);

  return _swift_deallocObject(v1, v4 + v5);
}

uint64_t sub_10027EAA4()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100B9EB9C(v4, v0 + v3);
}

uint64_t sub_10027EB7C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_10027EBC4@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[7];
  v50[6] = v1[6];
  v50[7] = v3;
  v50[8] = v1[8];
  v4 = v1[3];
  v50[2] = v1[2];
  v50[3] = v4;
  v5 = v1[5];
  v50[4] = v1[4];
  v50[5] = v5;
  v6 = v1[1];
  v50[0] = *v1;
  v50[1] = v6;
  v7 = sub_10027EE64(v50);
  if (v7 > 2)
  {
    if (v7 == 3)
    {
      v19 = sub_10004F9D4(v50);
      a1[3] = &type metadata for PencilSendPairingStatusCommandPayload;
      a1[4] = sub_10027EF38();
      v20 = swift_allocObject();
      *a1 = v20;
      v21 = v19[1];
      *(v20 + 16) = *v19;
      *(v20 + 32) = v21;
      v22 = v1[3];
      v43 = v1[2];
      v44 = v22;
      v23 = v1[1];
      v41 = *v1;
      v42 = v23;
      v24 = v1[8];
      v48 = v1[7];
      v49 = v24;
      v25 = v1[6];
      v46 = v1[5];
      v47 = v25;
      v45 = v1[4];
      v26 = sub_10004F9D4(&v41);
      v27 = v26[2];
      v28 = v26[3];
      sub_100017D5C(*v26, v26[1]);
      return sub_100017D5C(v27, v28);
    }

    else
    {
      if (v7 == 4)
      {
        a1[3] = &type metadata for PencilPairingCompleteCommandPayload;
        result = sub_10027EEE4();
      }

      else
      {
        a1[3] = &type metadata for UnpairCommandPayload;
        result = sub_10027EE90();
      }

      a1[4] = result;
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        v8 = sub_10004F9D4(v50);
        a1[3] = &type metadata for PencilSendPairingCommandPayload;
        a1[4] = sub_10027EFE0();
        v9 = swift_allocObject();
        *a1 = v9;
        memmove((v9 + 16), v8, 0x90uLL);
        v10 = v1[7];
        v47 = v1[6];
        v48 = v10;
        v49 = v1[8];
        v11 = v1[3];
        v43 = v1[2];
        v44 = v11;
        v12 = v1[5];
        v45 = v1[4];
        v46 = v12;
        v13 = v1[1];
        v41 = *v1;
        v42 = v13;
        v14 = sub_10004F9D4(&v41);
        return sub_10027F034(v14, &v40);
      }

      v16 = sub_10004F9D4(v50);
      v17 = *(v16 + 32);
      v18 = *(v16 + 40);
      a1[3] = &type metadata for PencilFinalizePairingCommandPayload;
      a1[4] = sub_10027EF8C();
    }

    else
    {
      v16 = sub_10004F9D4(v50);
      v17 = *(v16 + 32);
      v18 = *(v16 + 40);
      a1[3] = &type metadata for PencilInitiatePairingCommandPayload;
      a1[4] = sub_10027F0A4();
    }

    v29 = swift_allocObject();
    *a1 = v29;
    v30 = *(v16 + 16);
    *(v29 + 16) = *v16;
    *(v29 + 32) = v30;
    *(v29 + 48) = v17;
    *(v29 + 56) = v18;
    v31 = v1[3];
    v43 = v1[2];
    v44 = v31;
    v32 = v1[1];
    v41 = *v1;
    v42 = v32;
    v33 = v1[8];
    v48 = v1[7];
    v49 = v33;
    v34 = v1[6];
    v46 = v1[5];
    v47 = v34;
    v45 = v1[4];
    v35 = sub_10004F9D4(&v41);
    v36 = v35[2];
    v37 = v35[3];
    v38 = v35[4];
    v39 = v35[5];
    sub_100017D5C(*v35, v35[1]);
    sub_100017D5C(v36, v37);
    return sub_100017D5C(v38, v39);
  }

  return result;
}

uint64_t sub_10027EE64(uint64_t a1)
{
  if (((*(a1 + 136) >> 59) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return (*(a1 + 136) >> 59) & 6 | ((*(a1 + 120) & 0x2000000000000000) != 0);
  }
}

unint64_t sub_10027EE90()
{
  result = qword_10169BD20;
  if (!qword_10169BD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169BD20);
  }

  return result;
}

unint64_t sub_10027EEE4()
{
  result = qword_10169BD28;
  if (!qword_10169BD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169BD28);
  }

  return result;
}

unint64_t sub_10027EF38()
{
  result = qword_10169BD30;
  if (!qword_10169BD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169BD30);
  }

  return result;
}

unint64_t sub_10027EF8C()
{
  result = qword_10169BD38;
  if (!qword_10169BD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169BD38);
  }

  return result;
}

unint64_t sub_10027EFE0()
{
  result = qword_10169BD40;
  if (!qword_10169BD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169BD40);
  }

  return result;
}

uint64_t sub_10027F034(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_10169BD48, &qword_101395BC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10027F0A4()
{
  result = qword_10169BD50;
  if (!qword_10169BD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169BD50);
  }

  return result;
}

uint64_t sub_10027F0F8()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_10027F140(uint64_t a1)
{
  if (((*(a1 + 136) >> 59) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return (*(a1 + 136) >> 59) & 6 | ((*(a1 + 120) & 0x2000000000000000) != 0);
  }
}

uint64_t sub_10027F16C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x3FFFB && *(a1 + 144))
  {
    return (*a1 + 262140);
  }

  v3 = *(a1 + 56);
  v4 = *(a1 + 72);
  v5 = *(a1 + 88);
  v6 = *(a1 + 110);
  v7 = *(a1 + 120);
  if ((((8 * ((*(a1 + 24) >> 58) & 0xC | (*(a1 + 8) >> 60) & 3 | *(a1 + 47) & 0x30 | (v3 >> 54) & 0xC0 | (v4 >> 52) & 0x300 | (v5 >> 50) & 0xC00 | v6 & 0x3000 | (v7 >> 46) & 0x4000)) | (((*(a1 + 24) >> 58) & 0xC | (*(a1 + 8) >> 60) & 3 | *(a1 + 47) & 0x30 | (v3 >> 54) & 0xC0 | (v4 >> 52) & 0x300 | (v5 >> 50) & 0xC00 | v6 & 0x3000 | (v7 >> 46) & 0xC000 | (*(a1 + 136) >> 44) & 0x30000) >> 15)) ^ 0x3FFFF) >= 0x3FFFB)
  {
    v8 = -1;
  }

  else
  {
    v8 = ((8 * ((*(a1 + 24) >> 58) & 0xC | (*(a1 + 8) >> 60) & 3 | *(a1 + 47) & 0x30 | (v3 >> 54) & 0xC0 | (v4 >> 52) & 0x300 | (v5 >> 50) & 0xC00 | v6 & 0x3000 | (v7 >> 46) & 0x4000)) | (((*(a1 + 24) >> 58) & 0xC | (*(a1 + 8) >> 60) & 3 | *(a1 + 47) & 0x30 | (v3 >> 54) & 0xC0 | (v4 >> 52) & 0x300 | (v5 >> 50) & 0xC00 | v6 & 0x3000 | (v7 >> 46) & 0xC000 | (*(a1 + 136) >> 44) & 0x30000) >> 15)) ^ 0x3FFFF;
  }

  return (v8 + 1);
}

uint64_t sub_10027F240(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFFB)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 262140;
    if (a3 >= 0x3FFFC)
    {
      *(result + 144) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFFC)
    {
      *(result + 144) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 3) & 0x7FFF) - (a2 << 15);
      *result = 0;
      *(result + 8) = ((-a2 >> 3) & 3) << 60;
      *(result + 16) = 0;
      *(result + 24) = (v3 << 58) & 0x3000000000000000;
      *(result + 32) = 0;
      *(result + 40) = (v3 << 56) & 0x3000000000000000;
      *(result + 48) = 0;
      *(result + 56) = (v3 << 54) & 0x3000000000000000;
      *(result + 64) = 0;
      *(result + 72) = (v3 << 52) & 0x3000000000000000;
      *(result + 80) = 0;
      *(result + 88) = (v3 << 50) & 0x3000000000000000;
      *(result + 96) = 0;
      *(result + 104) = (v3 << 48) & 0x3000000000000000;
      *(result + 112) = 0;
      *(result + 120) = (v3 << 46) & 0x3000000000000000;
      *(result + 128) = 0;
      *(result + 136) = (v3 << 44) & 0x3000000000000000;
    }
  }

  return result;
}

void *sub_10027F32C(void *result, unsigned int a2)
{
  if (a2 < 4)
  {
    v2 = result[3] & 0xCFFFFFFFFFFFFFFFLL;
    v3 = result[5] & 0xCFFFFFFFFFFFFFFFLL;
    v4 = result[7] & 0xCFFFFFFFFFFFFFFFLL;
    v5 = result[9] & 0xCFFFFFFFFFFFFFFFLL;
    v6 = result[11] & 0xCFFFFFFFFFFFFFFFLL;
    v7 = result[13] & 0xCFFFFFFFFFFFFFFFLL;
    v8 = result[15] & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 1) << 61);
    v9 = result[17] & 0xCFFFFFFFFFFFFFFFLL | (((a2 >> 1) & 1) << 60);
    result[1] &= 0xCFFFFFFFFFFFFFFFLL;
    result[3] = v2;
    result[5] = v3;
    result[7] = v4;
    result[9] = v5;
    result[11] = v6;
    result[13] = v7;
    result[15] = v8;
    result[17] = v9;
  }

  else
  {
    *result = a2 - 4;
    *(result + 1) = 0u;
    *(result + 3) = 0u;
    *(result + 5) = 0u;
    *(result + 7) = 0u;
    *(result + 9) = 0u;
    *(result + 11) = 0u;
    *(result + 13) = 0u;
    *(result + 15) = 0u;
    result[17] = 0x2000000000000000;
  }

  return result;
}

__n128 sub_10027F3F8@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100280218(a2, v8);
  if (!v2)
  {
    v5 = v8[7];
    *(a1 + 96) = v8[6];
    *(a1 + 112) = v5;
    *(a1 + 128) = v8[8];
    v6 = v8[3];
    *(a1 + 32) = v8[2];
    *(a1 + 48) = v6;
    v7 = v8[5];
    *(a1 + 64) = v8[4];
    *(a1 + 80) = v7;
    result = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_10027F454(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for Endianness();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v9 = v3[7];
  v65[6] = v3[6];
  v65[7] = v9;
  v65[8] = v3[8];
  v10 = v3[3];
  v65[2] = v3[2];
  v65[3] = v10;
  v11 = v3[5];
  v65[4] = v3[4];
  v65[5] = v11;
  v12 = v3[1];
  v65[0] = *v3;
  v65[1] = v12;
  v13 = sub_10027EE64(v65);
  if (v13 > 2)
  {
    if (v13 == 3)
    {
      sub_10004F9D4(v65);
      v14 = 259;
    }

    else if (v13 == 4)
    {
      v14 = 260;
    }

    else
    {
      v14 = 516;
    }
  }

  else if (v13)
  {
    if (v13 == 1)
    {
      sub_10004F9D4(v65);
      v14 = 257;
    }

    else
    {
      sub_10004F9D4(v65);
      v14 = 258;
    }
  }

  else
  {
    sub_10004F9D4(v65);
    v14 = 256;
  }

  LOWORD(v43) = v14;
  static Endianness.current.getter();
  sub_1002053B0();
  FixedWidthInteger.convert(to:)();
  (*(v6 + 8))(v8, v5);
  LOWORD(v43) = v52;
  sub_10015049C(v62, v63);
  dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  if (!v2)
  {
    v15 = v3[7];
    v64[6] = v3[6];
    v64[7] = v15;
    v64[8] = v3[8];
    v16 = v3[3];
    v64[2] = v3[2];
    v64[3] = v16;
    v17 = v3[5];
    v64[4] = v3[4];
    v64[5] = v17;
    v18 = v3[1];
    v64[0] = *v3;
    v64[1] = v18;
    v19 = sub_10027EE64(v64);
    if (v19 > 2)
    {
      if (v19 != 3)
      {
        if (v19 == 4)
        {
          sub_10027EBC4(&v52);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (!swift_dynamicCast())
          {
            goto LABEL_33;
          }

          sub_10015049C(v62, v63);
          sub_10027FC0C();
        }

        else
        {
          sub_10027EBC4(&v52);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (!swift_dynamicCast())
          {
            goto LABEL_33;
          }

          sub_10015049C(v62, v63);
          sub_10027FBB8();
        }

        dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
        return sub_100007BAC(v62);
      }

      sub_10004F9D4(v64);
      sub_10027EBC4(&v52);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (!swift_dynamicCast())
      {
        goto LABEL_33;
      }

      v25 = v43;
      v26 = v44;
      v52 = v43;
      v53 = v44;
      sub_10015049C(v62, v63);
      sub_10027FC60();
      dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
      sub_100016590(v25, *(&v25 + 1));
      v28 = v26 >> 64;
      v27 = v26;
    }

    else
    {
      if (v19)
      {
        if (v19 == 1)
        {
          sub_10004F9D4(v64);
          sub_10027EBC4(v61);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            v49 = v58;
            v50 = v59;
            v51 = v60;
            v45 = v54;
            v46 = v55;
            v47 = v56;
            v48 = v57;
            v43 = v52;
            v44 = v53;
            v40 = v58;
            v41 = v59;
            v42 = v60;
            v36 = v54;
            v37 = v55;
            v38 = v56;
            v39 = v57;
            v34 = v52;
            v35 = v53;
            sub_10015049C(v62, v63);
            sub_100204624();
            dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
            sub_10027FD08(&v43);
            return sub_100007BAC(v62);
          }

LABEL_33:
          sub_10027FB64();
          swift_allocError();
          *v30 = 0;
          swift_willThrow();
          return sub_100007BAC(v62);
        }

        sub_10004F9D4(v64);
        sub_10027EBC4(&v43);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_33;
        }

        v29 = v52;
        v22 = *(&v53 + 1);
        v21 = v53;
        v33 = *(&v54 + 1);
        v66 = v54;
        sub_10015049C(v62, v63);
        sub_10027FCB4();
        dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
        v24 = v29 >> 64;
        v23 = v29;
      }

      else
      {
        sub_10004F9D4(v64);
        sub_10027EBC4(&v43);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_33;
        }

        v20 = v52;
        v22 = *(&v53 + 1);
        v21 = v53;
        v33 = *(&v54 + 1);
        v66 = v54;
        sub_10015049C(v62, v63);
        sub_10027FD5C();
        dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
        v24 = v20 >> 64;
        v23 = v20;
      }

      sub_100016590(v23, v24);
      sub_100016590(v21, v22);
      v27 = v66;
      v28 = v33;
    }

    sub_100016590(v27, v28);
  }

  return sub_100007BAC(v62);
}

__n128 sub_10027FAF0@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result.n128_u64[0] = sub_10027F3F8(v8, a2).n128_u64[0];
  if (!v2)
  {
    v5 = v8[7];
    *(a1 + 96) = v8[6];
    *(a1 + 112) = v5;
    *(a1 + 128) = v8[8];
    v6 = v8[3];
    *(a1 + 32) = v8[2];
    *(a1 + 48) = v6;
    v7 = v8[5];
    *(a1 + 64) = v8[4];
    *(a1 + 80) = v7;
    result = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = result;
  }

  return result;
}

unint64_t sub_10027FB64()
{
  result = qword_10169BD58;
  if (!qword_10169BD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169BD58);
  }

  return result;
}

unint64_t sub_10027FBB8()
{
  result = qword_10169BD60;
  if (!qword_10169BD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169BD60);
  }

  return result;
}

unint64_t sub_10027FC0C()
{
  result = qword_10169BD68;
  if (!qword_10169BD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169BD68);
  }

  return result;
}

unint64_t sub_10027FC60()
{
  result = qword_10169BD70;
  if (!qword_10169BD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169BD70);
  }

  return result;
}

unint64_t sub_10027FCB4()
{
  result = qword_10169BD78;
  if (!qword_10169BD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169BD78);
  }

  return result;
}

unint64_t sub_10027FD5C()
{
  result = qword_10169BD80;
  if (!qword_10169BD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169BD80);
  }

  return result;
}

uint64_t sub_10027FDB0(unsigned __int16 a1)
{
  if (a1 > 0x102u)
  {
    if (a1 == 259)
    {
      return 3;
    }

    if (a1 != 260)
    {
      if (a1 == 516)
      {
        return 5;
      }

      return 6;
    }

    return 4;
  }

  else
  {
    if (a1 == 256)
    {
      return 0;
    }

    if (a1 != 257)
    {
      if (a1 == 258)
      {
        return 2;
      }

      return 6;
    }

    return 1;
  }
}

void sub_10027FE24(unsigned __int8 a1@<W0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      sub_10027EF38();
      v6 = &type metadata for PencilSendPairingStatusCommandPayload;
    }

    else if (a1 == 4)
    {
      sub_10027EEE4();
      v6 = &type metadata for PencilPairingCompleteCommandPayload;
    }

    else
    {
      sub_10027EE90();
      v6 = &type metadata for UnpairCommandPayload;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      sub_10027EFE0();
      v6 = &type metadata for PencilSendPairingCommandPayload;
    }

    else
    {
      sub_10027EF8C();
      v6 = &type metadata for PencilFinalizePairingCommandPayload;
    }
  }

  else
  {
    sub_10027F0A4();
    v6 = &type metadata for PencilInitiatePairingCommandPayload;
  }

  sub_1000035D0(a2, a2[3]);
  if (v6 == swift_getDynamicType())
  {
    if (a1 > 2u)
    {
      if (a1 != 3)
      {
        if (a1 == 4)
        {
          sub_10001F280(a2, &v24);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            sub_100007BAC(a2);
            sub_10028067C(&v33);
LABEL_30:
            v9 = v40;
            a3[6] = v39;
            a3[7] = v9;
            a3[8] = v41;
            v10 = v36;
            a3[2] = v35;
            a3[3] = v10;
            v11 = v38;
            a3[4] = v37;
            a3[5] = v11;
            v12 = v34;
            *a3 = v33;
            a3[1] = v12;
            return;
          }
        }

        else
        {
          sub_10001F280(a2, &v24);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            sub_100007BAC(a2);
            sub_100280644(&v33);
            goto LABEL_30;
          }
        }

        goto LABEL_33;
      }

      sub_10001F280(a2, &v14);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_33:
        sub_10027FB64();
        swift_allocError();
        *v13 = 0;
        swift_willThrow();
        sub_100007BAC(a2);
        return;
      }

      sub_100007BAC(a2);
      v24 = v23[0];
      v25 = v23[1];
      sub_10028069C(&v24);
    }

    else
    {
      if (a1)
      {
        if (a1 == 1)
        {
          sub_10001F280(a2, v23);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            sub_100007BAC(a2);
            v20 = v30;
            v21 = v31;
            v22 = v32;
            v16 = v26;
            v17 = v27;
            v18 = v28;
            v19 = v29;
            v14 = v24;
            v15 = v25;
            sub_100280788(&v14);
            v39 = v20;
            v40 = v21;
            v41 = v22;
            v35 = v16;
            v36 = v17;
            v37 = v18;
            v38 = v19;
            v8 = v14;
            v7 = v15;
LABEL_29:
            v33 = v8;
            v34 = v7;
            goto LABEL_30;
          }

          goto LABEL_33;
        }

        sub_10001F280(a2, v23);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          v24 = v14;
          v25 = v15;
          v26 = v16;
          sub_100280714(&v24);
          goto LABEL_28;
        }

        goto LABEL_33;
      }

      sub_10001F280(a2, v23);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_33;
      }

      sub_100007BAC(a2);
      v24 = v14;
      v25 = v15;
      v26 = v16;
      sub_1002807FC(&v24);
    }

LABEL_28:
    v39 = v30;
    v40 = v31;
    v41 = v32;
    v35 = v26;
    v36 = v27;
    v37 = v28;
    v38 = v29;
    v8 = v24;
    v7 = v25;
    goto LABEL_29;
  }

  __break(1u);
}

uint64_t sub_100280218@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v33 = a2;
  v4 = type metadata accessor for Endianness();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v34 = a1;
  sub_1000035D0(a1, v8);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v37, v37[3]);
  sub_1002053B0();
  dispatch thunk of BinaryDecodingContaining.decode<A>(_:)();
  if (v2)
  {
    v9 = v34;
LABEL_19:
    sub_100007BAC(v37);
    return sub_100007BAC(v9);
  }

  v10 = v33;
  v39 = v35[0];
  static Endianness.current.getter();
  FixedWidthInteger.convert(to:)();
  (*(v5 + 8))(v7, v4);
  v11 = v36[0];
  v12 = sub_10027FDB0(v36[0]);
  if (v12 == 6)
  {
    v13 = static os_log_type_t.error.getter();
    v9 = v34;
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    v14 = qword_10177C410;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_101385D80;
    LOWORD(v36[0]) = v11;
    v16 = FixedWidthInteger.data.getter();
    v18 = v17;
    v19 = Data.hexString.getter();
    v21 = v20;
    sub_100016590(v16, v18);
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = sub_100008C00();
    *(v15 + 32) = v19;
    *(v15 + 40) = v21;
    os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v14, "Invalid opcode: %@", 18, 2, v15);

    sub_10027FB64();
    swift_allocError();
    *v22 = 1;
    swift_willThrow();
    goto LABEL_19;
  }

  v23 = v34;
  v24 = v12;
  if (v12 > 2u)
  {
    if (v12 == 3)
    {
      v25 = &type metadata for PencilSendPairingStatusCommandPayload;
      v26 = sub_10027EF38();
    }

    else if (v12 == 4)
    {
      v25 = &type metadata for PencilPairingCompleteCommandPayload;
      v26 = sub_10027EEE4();
    }

    else
    {
      v25 = &type metadata for UnpairCommandPayload;
      v26 = sub_10027EE90();
    }
  }

  else if (v12)
  {
    if (v12 == 1)
    {
      v25 = &type metadata for PencilSendPairingCommandPayload;
      v26 = sub_10027EFE0();
    }

    else
    {
      v25 = &type metadata for PencilFinalizePairingCommandPayload;
      v26 = sub_10027EF8C();
    }
  }

  else
  {
    v25 = &type metadata for PencilInitiatePairingCommandPayload;
    v26 = sub_10027F0A4();
  }

  v27 = v26;
  sub_10001F280(v23, v35);
  v36[3] = v25;
  v36[4] = v27;
  sub_1000280DC(v36);
  dispatch thunk of BinaryDecodable.init(from:)();
  sub_10001F280(v36, v35);
  sub_10027FE24(v24, v35, v38);
  sub_100007BAC(v36);
  sub_100007BAC(v37);
  result = sub_100007BAC(v23);
  v29 = v38[7];
  v10[6] = v38[6];
  v10[7] = v29;
  v10[8] = v38[8];
  v30 = v38[3];
  v10[2] = v38[2];
  v10[3] = v30;
  v31 = v38[5];
  v10[4] = v38[4];
  v10[5] = v31;
  v32 = v38[1];
  *v10 = v38[0];
  v10[1] = v32;
  return result;
}

double sub_100280644(uint64_t a1)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0x2000000000000000;
  return result;
}

double sub_10028067C(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0x2000000000000000;
  return result;
}

void *sub_10028069C(void *result)
{
  v1 = result[3] & 0xCFFFFFFFFFFFFFFFLL;
  v2 = result[5] & 0xCFFFFFFFFFFFFFFFLL;
  v3 = result[7] & 0xCFFFFFFFFFFFFFFFLL;
  v4 = result[9] & 0xCFFFFFFFFFFFFFFFLL;
  v5 = result[11] & 0xCFFFFFFFFFFFFFFFLL;
  v6 = result[13] & 0xCFFFFFFFFFFFFFFFLL;
  v7 = result[15] & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
  v8 = result[17] & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
  result[1] &= 0xCFFFFFFFFFFFFFFFLL;
  result[3] = v1;
  result[5] = v2;
  result[7] = v3;
  result[9] = v4;
  result[11] = v5;
  result[13] = v6;
  result[15] = v7;
  result[17] = v8;
  return result;
}

void *sub_100280714(void *result)
{
  v1 = result[3] & 0xCFFFFFFFFFFFFFFFLL;
  v2 = result[5] & 0xCFFFFFFFFFFFFFFFLL;
  v3 = result[7] & 0xCFFFFFFFFFFFFFFFLL;
  v4 = result[9] & 0xCFFFFFFFFFFFFFFFLL;
  v5 = result[11] & 0xCFFFFFFFFFFFFFFFLL;
  v6 = result[13] & 0xCFFFFFFFFFFFFFFFLL;
  v7 = result[15] & 0xCFFFFFFFFFFFFFFFLL;
  v8 = result[17] & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
  result[1] &= 0xCFFFFFFFFFFFFFFFLL;
  result[3] = v1;
  result[5] = v2;
  result[7] = v3;
  result[9] = v4;
  result[11] = v5;
  result[13] = v6;
  result[15] = v7;
  result[17] = v8;
  return result;
}

void *sub_100280788(void *result)
{
  v1 = result[3] & 0xCFFFFFFFFFFFFFFFLL;
  v2 = result[5] & 0xCFFFFFFFFFFFFFFFLL;
  v3 = result[7] & 0xCFFFFFFFFFFFFFFFLL;
  v4 = result[9] & 0xCFFFFFFFFFFFFFFFLL;
  v5 = result[11] & 0xCFFFFFFFFFFFFFFFLL;
  v6 = result[13] & 0xCFFFFFFFFFFFFFFFLL;
  v7 = result[17] & 0xCFFFFFFFFFFFFFFFLL;
  v8 = result[15] & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
  result[1] &= 0xCFFFFFFFFFFFFFFFLL;
  result[3] = v1;
  result[5] = v2;
  result[7] = v3;
  result[9] = v4;
  result[11] = v5;
  result[13] = v6;
  result[15] = v8;
  result[17] = v7;
  return result;
}

void *sub_1002807FC(void *result)
{
  v1 = result[3] & 0xCFFFFFFFFFFFFFFFLL;
  v2 = result[5] & 0xCFFFFFFFFFFFFFFFLL;
  v3 = result[7] & 0xCFFFFFFFFFFFFFFFLL;
  v4 = result[9] & 0xCFFFFFFFFFFFFFFFLL;
  v5 = result[11] & 0xCFFFFFFFFFFFFFFFLL;
  v6 = result[13] & 0xCFFFFFFFFFFFFFFFLL;
  v7 = result[15] & 0xCFFFFFFFFFFFFFFFLL;
  v8 = result[17] & 0xCFFFFFFFFFFFFFFFLL;
  result[1] &= 0xCFFFFFFFFFFFFFFFLL;
  result[3] = v1;
  result[5] = v2;
  result[7] = v3;
  result[9] = v4;
  result[11] = v5;
  result[13] = v6;
  result[15] = v7;
  result[17] = v8;
  return result;
}

unint64_t sub_100280880()
{
  result = qword_10169BD88;
  if (!qword_10169BD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169BD88);
  }

  return result;
}

double sub_1002808D4@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[6];
  *a2 = a1[5];
  a2[1] = v2;
  v3 = a1[4];
  a2[2] = a1[3];
  a2[3] = v3;

  return result;
}

uint64_t sub_100280910()
{
  v1 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v1);
  v2 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[1] = sub_1000BC488();
  (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v3);
  static DispatchQoS.unspecified.getter();
  v12 = _swiftEmptyArrayStorage;
  sub_100281024(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v0 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v7 = sub_101073BB4(v12);
  v9 = v8;

  *(v0 + 24) = v7;
  *(v0 + 32) = v9;
  strcpy((v0 + 40), "/acsnservice");
  *(v0 + 53) = 0;
  *(v0 + 54) = -5120;
  sub_100280C10();
  return v0;
}

uint64_t sub_100280C10()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v6 = *(v14 - 8);
  __chkstk_darwin(v14);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v1[2];
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v2;
  aBlock[4] = sub_10028101C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101615618;
  v11 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  sub_100281024(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  (*(v15 + 8))(v5, v3);
  (*(v6 + 8))(v8, v14);
}

void *sub_100280F28(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = sub_10028106C();
    v5 = v4;
    v7 = v6;
    v2[3] = v3;
    v2[4] = v8;

    v2[5] = v5;
    v2[6] = v7;
  }

  return result;
}

uint64_t sub_100280FB0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100281024(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10028106C()
{
  v0 = type metadata accessor for FMNAccountType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v28[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v4 - 8);
  v6 = &v28[-v5];
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v11 = v30;
  if (sub_101073BDC(v30))
  {
    v12 = static os_log_type_t.default.getter();
    if (qword_101695008 != -1)
    {
      v25 = v12;
      swift_once();
      v12 = v25;
    }

    os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, qword_10177C340, "ACSN: Overriding host name using value from defaults.", 53, 2, _swiftEmptyArrayStorage);
    v13 = sub_101073BB4(v11);

    return v13;
  }

  type metadata accessor for FMNAuthenticationProvider();
  (*(v1 + 104))(v3, enum case for FMNAccountType.searchParty(_:), v0);
  static FMNAuthenticationProvider.configurationURL(accountType:)();
  (*(v1 + 8))(v3, v0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1002815B4(v6);
LABEL_14:
    v23 = static os_log_type_t.default.getter();
    if (qword_101695008 != -1)
    {
      v26 = v23;
      swift_once();
      v23 = v26;
    }

    os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, qword_10177C340, "ACSN: Fallback to hard-coded host name.", 39, 2, _swiftEmptyArrayStorage);
    v13 = sub_101073BB4(v11);

    return v13;
  }

  (*(v8 + 32))(v10, v6, v7);
  v14 = URL.host.getter();
  if (!v15)
  {
    (*(v8 + 8))(v10, v7);
    goto LABEL_14;
  }

  v13 = v14;
  v16 = v15;

  v17 = static os_log_type_t.default.getter();
  if (qword_101695008 != -1)
  {
    v27 = v17;
    swift_once();
    v17 = v27;
  }

  v18 = qword_10177C340;
  os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, qword_10177C340, "ACSN: Using host name and path from authenticated setup bag.", 60, 2, _swiftEmptyArrayStorage);
  v29 = static os_log_type_t.default.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10138BBE0;
  *(v19 + 56) = &type metadata for String;
  v20 = sub_100008C00();
  *(v19 + 64) = v20;
  *(v19 + 32) = v13;
  *(v19 + 40) = v16;

  v21 = URL.path.getter();
  *(v19 + 96) = &type metadata for String;
  *(v19 + 104) = v20;
  *(v19 + 72) = v21;
  *(v19 + 80) = v22;
  os_log(_:dso:log:_:_:)(v29, &_mh_execute_header, v18, "ACSN: hostName: [%@] path: [%@]", 31, 2, v19);

  URL.path.getter();
  (*(v8 + 8))(v10, v7);
  return v13;
}

uint64_t sub_1002815B4(uint64_t a1)
{
  v2 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10028161C()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100281680(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for LocalPairingMonitorService();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v5, a2);
}

uint64_t sub_100281728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for LocalPairingMonitorService();
  *v8 = v4;
  v8[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v9, a4);
}

uint64_t sub_1002817EC(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for LocalPairingMonitorService();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v5, a2);
}

uint64_t sub_100281894(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for LocalPairingMonitorService();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.startup()(v5, a2);
}

uint64_t sub_10028193C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for LocalPairingMonitorService();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.run()(v5, a2);
}

uint64_t sub_1002819E4()
{
  type metadata accessor for LocalPairingMonitorService();
  sub_100281AA0(&qword_1016B1130, &unk_1013965D0);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_100281AA0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LocalPairingMonitorService();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100281AE0(uint64_t a1, void *a2)
{
  sub_1000035D0(a2, a2[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  Date.epoch.getter();
  sub_10015049C(v3, v3[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return sub_100007BAC(v3);
}

uint64_t sub_100281B88()
{
  v1 = *v0;
  sub_10002E98C(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_100281BC8(uint64_t a1)
{
  v2 = sub_100283B9C();

  return RequestContentRepresentable.description.getter(a1, v2);
}

uint64_t sub_100281C04(void *a1)
{
  v3 = sub_1000BC4D4(&qword_10169C158, &qword_1013969B0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000035D0(a1, a1[3]);
  sub_100283AF4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for FindMyServiceDeviceListPayload(0);
    v8[14] = 1;
    type metadata accessor for FindMyServiceDeviceListClientContext(0);
    sub_100283A48(&qword_10169C168, type metadata accessor for FindMyServiceDeviceListClientContext, &unk_101396870);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100281DBC(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_10169C198, &qword_1013969C8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_1000035D0(a1, a1[3]);
  sub_100283C44();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v10[7] = 0;
  sub_1000BC4D4(&qword_10169C1A8, &qword_1013969D0);
  sub_100283C98();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10[6] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    type metadata accessor for FindMyServiceDeviceListFilterPayload(0);
    v10[5] = 2;
    type metadata accessor for FindMyServiceDeviceListClientContext(0);
    sub_100283A48(&qword_10169C168, type metadata accessor for FindMyServiceDeviceListClientContext, &unk_101396870);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100282004(void *a1)
{
  v3 = sub_1000BC4D4(&qword_10169C170, &qword_1013969B8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000035D0(a1, a1[3]);
  sub_100283B48();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1002821C4(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x6E656B6F54737061;
    v7 = 1752397168;
    v8 = 0x54746375646F7270;
    if (a1 != 3)
    {
      v8 = 0x646C697542736FLL;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (!a1)
    {
      v6 = 0xD000000000000011;
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
    v1 = 0x4455656369766564;
    v2 = 0x6576697463616E69;
    if (a1 != 9)
    {
      v2 = 0x64657463656C6573;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6954746E65696C63;
    v4 = 0x6F6973726556736FLL;
    if (a1 != 6)
    {
      v4 = 2037149030;
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

uint64_t sub_100282344(void *a1)
{
  v3 = sub_1000BC4D4(&qword_10169C188, &qword_1013969C0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000035D0(a1, a1[3]);
  sub_100283BF0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[11] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    type metadata accessor for FindMyServiceDeviceListClientContext(0);
    v8[10] = 5;
    type metadata accessor for Date();
    sub_100283A48(&unk_101697F60, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v8[9] = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[8] = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[7] = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[6] = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[5] = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10028266C()
{
  if (*v0)
  {
    return 0x6F43746E65696C63;
  }

  else
  {
    return 0x6544796C696D6166;
  }
}

uint64_t sub_1002826C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6544796C696D6166 && a2 == 0xED00007365636976;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1002827AC(uint64_t a1)
{
  v2 = sub_100283AF4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002827E8(uint64_t a1)
{
  v2 = sub_100283AF4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10028284C()
{
  v1 = 0x6544796C696D6166;
  if (*v0 != 1)
  {
    v1 = 0x6F43746E65696C63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73656369766564;
  }
}

uint64_t sub_1002828C0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100284310(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1002828E8(uint64_t a1)
{
  v2 = sub_100283C44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100282924(uint64_t a1)
{
  v2 = sub_100283C44();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100282988()
{
  v1 = 0x6449737270;
  v2 = 0x754E6C6169726573;
  if (*v0 != 2)
  {
    v2 = 25705;
  }

  if (*v0)
  {
    v1 = 0x747865746E6F63;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1002829FC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100284438(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100282A24(uint64_t a1)
{
  v2 = sub_100283B48();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100282A60(uint64_t a1)
{
  v2 = sub_100283B48();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100282ABC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100284594(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100282AF0(uint64_t a1)
{
  v2 = sub_100283BF0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100282B2C(uint64_t a1)
{
  v2 = sub_100283BF0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100282B80(uint64_t a1)
{
  v1[33] = a1;
  v2 = type metadata accessor for Date();
  v1[34] = v2;
  v1[35] = *(v2 - 8);
  v1[36] = swift_task_alloc();
  v1[37] = type metadata accessor for FindMyServiceDeviceListClientContext(0);
  v1[38] = swift_task_alloc();
  v3 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v1[39] = v3;
  v1[40] = *(v3 - 8);
  v1[41] = swift_task_alloc();

  return _swift_task_switch(sub_100282CCC, 0, 0);
}

uint64_t sub_100282CCC()
{
  v2 = v0[40];
  v1 = v0[41];
  v3 = v0[39];
  v4 = v0[33];
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  v0[42] = JSONEncoder.init()();
  *v1 = sub_100281AE0;
  v1[1] = 0;
  (*(v2 + 104))(v1, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v3);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  sub_1000035D0(v4, v4[3]);
  v5 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v0[43] = v5;
  v0[44] = v6;
  v7 = v6;
  v8 = v5;
  sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000011;
  *(inited + 16) = xmmword_1013917A0;
  *(inited + 40) = 0x800000010134EA40;
  v10 = [objc_opt_self() currentDevice];
  if (!v10)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v14 = v10;
  v15 = [v10 serverFriendlyDescription];

  if (!v15)
  {
LABEL_21:
    __break(1u);
    return unsafeBlocking<A>(_:)(v10, v11, v12, v13);
  }

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  *(inited + 48) = v16;
  *(inited + 56) = v18;
  strcpy((inited + 64), "Accept-Version");
  *(inited + 79) = -18;
  *(inited + 80) = 49;
  *(inited + 88) = 0xE100000000000000;
  strcpy((inited + 96), "Content-Type");
  *(inited + 109) = 0;
  *(inited + 110) = -5120;
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x800000010134F5C0;
  strcpy((inited + 128), "Content-Length");
  *(inited + 143) = -18;
  if (v7 >> 60 != 15)
  {
    v32 = v7 >> 62;
    if ((v7 >> 62) > 1)
    {
      if (v32 != 2)
      {
        goto LABEL_4;
      }

      v34 = *(v8 + 16);
      v33 = *(v8 + 24);
      v35 = __OFSUB__(v33, v34);
      v19 = v33 - v34;
      if (!v35)
      {
        goto LABEL_5;
      }

      __break(1u);
    }

    else if (!v32)
    {
      v19 = BYTE6(v7);
      goto LABEL_5;
    }

    LODWORD(v19) = HIDWORD(v8) - v8;
    if (!__OFSUB__(HIDWORD(v8), v8))
    {
      v19 = v19;
      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_4:
  v19 = 0;
LABEL_5:
  v20 = v0[38];
  v37 = v0[37];
  v21 = v0[35];
  v22 = v0[36];
  v24 = v0[33];
  v23 = v0[34];
  v0[30] = v19;
  v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v25);

  *(inited + 144) = 0;
  *(inited + 152) = 0xE000000000000000;
  *(inited + 160) = 0x652D747065636361;
  *(inited + 168) = 0xEF676E69646F636ELL;
  *(inited + 176) = 0xD000000000000011;
  *(inited + 184) = 0x800000010134F5E0;
  *(inited + 192) = 0xD000000000000015;
  *(inited + 200) = 0x800000010134F600;
  v27 = v4[3];
  v26 = v4[4];
  sub_1000035D0(v24, v27);
  (*(v26 + 16))(v27, v26);
  (*(v21 + 16))(v22, v20 + *(v37 + 36), v23);
  sub_100283474(v20);
  v28 = Date.epoch.getter();
  (*(v21 + 8))(v22, v23);
  v0[31] = v28;
  *(inited + 208) = dispatch thunk of CustomStringConvertible.description.getter();
  *(inited + 216) = v29;
  v0[45] = sub_100907E70(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
  swift_arrayDestroy();
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v30 = qword_10177B348;
  v0[46] = qword_10177B348;

  v31 = swift_task_alloc();
  v0[47] = v31;
  *v31 = v0;
  v31[1] = sub_100283220;
  v13 = &type metadata for Configuration;
  v11 = sub_1000D2BE0;
  v10 = v0 + 32;
  v12 = v30;

  return unsafeBlocking<A>(_:)(v10, v11, v12, v13);
}

uint64_t sub_100283220()
{

  return _swift_task_switch(sub_100283338, 0, 0);
}

uint64_t sub_100283338()
{
  v1 = sub_101073B80(*(v0 + 256));

  if (v1)
  {
    v2 = *(v0 + 360);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100FFACA0(1702195828, 0xE400000000000000, 0xD000000000000018, 0x800000010134F620, isUniquelyReferenced_nonNull_native);
  }

  else
  {

    v2 = *(v0 + 360);
  }

  sub_100007BAC(*(v0 + 264));

  v4 = *(v0 + 8);
  v5 = *(v0 + 344);
  v6 = *(v0 + 352);

  return v4(v5, v6, v2);
}

uint64_t sub_100283474(uint64_t a1)
{
  MyServiceDeviceListClientContext = type metadata accessor for FindMyServiceDeviceListClientContext(0);
  (*(*(MyServiceDeviceListClientContext - 8) + 8))(a1, MyServiceDeviceListClientContext);
  return a1;
}

uint64_t sub_100283518(uint64_t a1)
{
  result = type metadata accessor for FindMyServiceDeviceListClientContext(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 sub_100283594(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1002835A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1002835F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100283650(uint64_t a1, int a2)
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

uint64_t sub_100283698(uint64_t result, int a2, int a3)
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

uint64_t sub_100283710(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_10028380C(uint64_t a1)
{
  sub_100283898();
  if (v1 <= 0x3F)
  {
    type metadata accessor for FindMyServiceDeviceListClientContext(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100283898()
{
  if (!qword_10169C100)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_10169C100);
    }
  }
}

unint64_t sub_1002838EC()
{
  result = qword_10169C138;
  if (!qword_10169C138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C138);
  }

  return result;
}

uint64_t sub_100283940(uint64_t a1)
{
  result = sub_100283A48(&qword_10169C140, type metadata accessor for FindMyServiceDeviceListPayload, &unk_101396920);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10028399C()
{
  result = qword_10169C148;
  if (!qword_10169C148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C148);
  }

  return result;
}

uint64_t sub_1002839F0(uint64_t a1)
{
  result = sub_100283A48(&qword_10169C150, type metadata accessor for FindMyServiceDeviceListFilterPayload, &unk_101396848);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100283A48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100283A90(uint64_t a1, uint64_t a2)
{
  MyServiceDeviceListClientContext = type metadata accessor for FindMyServiceDeviceListClientContext(0);
  (*(*(MyServiceDeviceListClientContext - 8) + 16))(a2, a1, MyServiceDeviceListClientContext);
  return a2;
}

unint64_t sub_100283AF4()
{
  result = qword_10169C160;
  if (!qword_10169C160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C160);
  }

  return result;
}

unint64_t sub_100283B48()
{
  result = qword_10169C178;
  if (!qword_10169C178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C178);
  }

  return result;
}

unint64_t sub_100283B9C()
{
  result = qword_10169C180;
  if (!qword_10169C180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C180);
  }

  return result;
}

unint64_t sub_100283BF0()
{
  result = qword_10169C190;
  if (!qword_10169C190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C190);
  }

  return result;
}

unint64_t sub_100283C44()
{
  result = qword_10169C1A0;
  if (!qword_10169C1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C1A0);
  }

  return result;
}

unint64_t sub_100283C98()
{
  result = qword_10169C1B0;
  if (!qword_10169C1B0)
  {
    sub_1000BC580(&qword_10169C1A8, &qword_1013969D0);
    sub_100283D1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C1B0);
  }

  return result;
}

unint64_t sub_100283D1C()
{
  result = qword_10169C1B8;
  if (!qword_10169C1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C1B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FindMyServiceDeviceListClientContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FindMyServiceDeviceListClientContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100283EF4()
{
  result = qword_10169C1C0;
  if (!qword_10169C1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C1C0);
  }

  return result;
}

unint64_t sub_100283F4C()
{
  result = qword_10169C1C8;
  if (!qword_10169C1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C1C8);
  }

  return result;
}

unint64_t sub_100283FA4()
{
  result = qword_10169C1D0;
  if (!qword_10169C1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C1D0);
  }

  return result;
}

unint64_t sub_100283FFC()
{
  result = qword_10169C1D8;
  if (!qword_10169C1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C1D8);
  }

  return result;
}

unint64_t sub_100284054()
{
  result = qword_10169C1E0;
  if (!qword_10169C1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C1E0);
  }

  return result;
}

unint64_t sub_1002840AC()
{
  result = qword_10169C1E8;
  if (!qword_10169C1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C1E8);
  }

  return result;
}

unint64_t sub_100284104()
{
  result = qword_10169C1F0;
  if (!qword_10169C1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C1F0);
  }

  return result;
}

unint64_t sub_10028415C()
{
  result = qword_10169C1F8;
  if (!qword_10169C1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C1F8);
  }

  return result;
}

unint64_t sub_1002841B4()
{
  result = qword_10169C200;
  if (!qword_10169C200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C200);
  }

  return result;
}

unint64_t sub_10028420C()
{
  result = qword_10169C208;
  if (!qword_10169C208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C208);
  }

  return result;
}

unint64_t sub_100284264()
{
  result = qword_10169C210;
  if (!qword_10169C210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C210);
  }

  return result;
}

unint64_t sub_1002842BC()
{
  result = qword_10169C218;
  if (!qword_10169C218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C218);
  }

  return result;
}

uint64_t sub_100284310(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656369766564 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6544796C696D6166 && a2 == 0xED00007365636976 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100284438(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449737270 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_100284594(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000010134F640 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656B6F54737061 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1752397168 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x54746375646F7270 && a2 == 0xEB00000000657079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x646C697542736FLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6954746E65696C63 && a2 == 0xEF706D617473656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 2037149030 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x4455656369766564 && a2 == 0xEA00000000004449 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6576697463616E69 && a2 == 0xEC000000656D6954 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x64657463656C6573 && a2 == 0xEE00656369766544)
  {

    return 10;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_100284940()
{
  v1 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  __chkstk_darwin(v1 - 8);
  v3 = &v82 - v2;
  v4 = type metadata accessor for AccessoryMetadata(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v86 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v82 - v8;
  v10 = type metadata accessor for AccessoryProductInfo(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LocalizationUtility.Table();
  v87 = *(v14 - 8);
  v88 = v14;
  __chkstk_darwin(v14);
  v89 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v0 + *(type metadata accessor for UnwantedTrackingUserNotification(0) + 20);
  v17 = type metadata accessor for WildModeAssociationRecord(0);
  v18 = v17;
  if (*(v16 + v17[13]) - 2 >= 3)
  {
    v26 = v16 + v17[12];
    v27 = *(v26 + 16);
    if (v27)
    {
      v28 = *(v26 + 8);
      v29 = *v26;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_101385D80;
      v31 = sub_100EB3708(v29, v28, v27);
      v32 = [v31 description];

      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v36 = sub_1010E09D0(v33, v35, 0);
      v38 = v37;

      *(v30 + 56) = &type metadata for String;
      *(v30 + 64) = sub_100008C00();
      *(v30 + 32) = v36;
      *(v30 + 40) = v38;
    }

    v21 = v87;
    v25 = v88;
    v22 = v89;
    goto LABEL_23;
  }

  sub_1000D2A70(v16 + v17[15], v9, &qword_101697268, &qword_101394FE0);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    sub_100285FC4(v9, v13, type metadata accessor for AccessoryProductInfo);
    v39 = &v13[*(v10 + 52)];
    v41 = *v39;
    v40 = v39[1];

    v42 = v13;
    v43 = type metadata accessor for AccessoryProductInfo;
    goto LABEL_9;
  }

  sub_10000B3A8(v9, &qword_101697268, &qword_101394FE0);
  sub_1000D2A70(v16 + v18[14], v3, &qword_1016A62A0, &unk_101396E10);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10000B3A8(v3, &qword_1016A62A0, &unk_101396E10);
    v19 = v16 + v18[12];
    v20 = *(v19 + 16);
    v21 = v87;
    v22 = v89;
    if (!v20)
    {
      v25 = v88;
      goto LABEL_23;
    }

    v23 = *(v19 + 8);
    v24 = *v19;
    v25 = v88;
    goto LABEL_14;
  }

  v65 = v86;
  sub_100285FC4(v3, v86, type metadata accessor for AccessoryMetadata);
  v66 = sub_100302B50();
  v67 = (v65 + *(v4 + 28));
  v21 = v87;
  v22 = v89;
  if (!v66)
  {
    v41 = *v67;
    v40 = v67[1];

    sub_10028602C(v65, type metadata accessor for AccessoryMetadata);
    goto LABEL_10;
  }

  v68 = v67[1];
  if (v68)
  {
    v69 = *v67;
    v90 = 0;
    v91 = 0xE000000000000000;
    _StringGuts.grow(_:)(31);

    v90 = 0xD00000000000001DLL;
    v91 = 0x800000010134F730;
    v70._countAndFlagsBits = v69;
    v70._object = v68;
    String.append(_:)(v70);
    v72 = v90;
    v71 = v91;
  }

  else
  {
    v71 = 0x800000010134F6E0;
    v72 = 0xD00000000000001CLL;
  }

  v75 = *(v21 + 104);
  v76 = v88;
  v77 = v89;
  v85 = enum case for LocalizationUtility.Table.default(_:);
  v84 = v75;
  v75(v89);
  v41 = static LocalizationUtility.localizedString(key:table:)();
  v40 = v78;

  v83 = *(v21 + 8);
  v83(v77, v76);
  if (v41 != v72 || v40 != v71)
  {
    v79 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v79)
    {
      goto LABEL_29;
    }

    v43 = type metadata accessor for AccessoryMetadata;
    v42 = v86;
LABEL_9:
    sub_10028602C(v42, v43);
    v21 = v87;
    v22 = v89;
    goto LABEL_10;
  }

LABEL_29:

  v80 = v88;
  v22 = v89;
  v84(v89, v85, v88);
  v41 = static LocalizationUtility.localizedString(key:table:)();
  v40 = v81;
  v83(v22, v80);
  sub_10028602C(v86, type metadata accessor for AccessoryMetadata);
  v21 = v87;
LABEL_10:
  v44 = v16 + v18[12];
  v20 = *(v44 + 16);
  if (v20)
  {
    v23 = *(v44 + 8);
    v24 = *v44;
    v25 = v88;
    if (!v40)
    {
LABEL_14:
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_101385D80;
      v56 = sub_100EB3708(v24, v23, v20);
      v57 = [v56 description];

      v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v60 = v59;

      v61 = sub_1010E09D0(v58, v60, 0);
      v63 = v62;

      *(v55 + 56) = &type metadata for String;
      *(v55 + 64) = sub_100008C00();
      *(v55 + 32) = v61;
      *(v55 + 40) = v63;
      goto LABEL_23;
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_10138BBE0;
    v46 = sub_100EB3708(v24, v23, v20);
    v47 = [v46 description];

    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;

    v51 = sub_1010E09D0(v48, v50, 0);
    v53 = v52;

    *(v45 + 56) = &type metadata for String;
    v54 = sub_100008C00();
    *(v45 + 32) = v51;
    *(v45 + 40) = v53;
    *(v45 + 96) = &type metadata for String;
    *(v45 + 104) = v54;
    *(v45 + 64) = v54;
    *(v45 + 72) = v41;
    *(v45 + 80) = v40;
  }

  else
  {
    v25 = v88;
    if (v40)
    {
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_101385D80;
      *(v64 + 56) = &type metadata for String;
      *(v64 + 64) = sub_100008C00();
      *(v64 + 32) = v41;
      *(v64 + 40) = v40;
    }
  }

LABEL_23:
  (*(v21 + 104))(v22, enum case for LocalizationUtility.Table.default(_:), v25);
  static LocalizationUtility.localizedString(key:table:)();

  (*(v21 + 8))(v22, v25);
  v73 = String.init(format:arguments:)();

  return v73;
}

uint64_t sub_100285338()
{
  v1 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  __chkstk_darwin(v1 - 8);
  v3 = &v76[-v2];
  v4 = type metadata accessor for AccessoryMetadata(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v76[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  __chkstk_darwin(v8 - 8);
  v10 = &v76[-v9];
  v11 = type metadata accessor for AccessoryProductInfo(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v76[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v82 = type metadata accessor for LocalizationUtility.Table();
  v15 = *(v82 - 8);
  __chkstk_darwin(v82);
  v81 = &v76[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = v0 + *(type metadata accessor for UnwantedTrackingUserNotification(0) + 20);
  v18 = type metadata accessor for WildModeAssociationRecord(0);
  v19 = *(v17 + v18[13]);
  if (v19 == 3)
  {
    v79 = v7;
    v80 = v15;
    v22 = v18;
    sub_1000D2A70(v17 + v18[15], v10, &qword_101697268, &qword_101394FE0);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_10000B3A8(v10, &qword_101697268, &qword_101394FE0);
      sub_1000D2A70(v17 + v22[14], v3, &qword_1016A62A0, &unk_101396E10);
      v23 = v4;
      if ((*(v5 + 48))(v3, 1, v4) == 1)
      {
        sub_10000B3A8(v3, &qword_1016A62A0, &unk_101396E10);
        v25 = v80;
        v24 = v81;
        v26 = v82;
        (v80[13])(v81, enum case for LocalizationUtility.Table.default(_:), v82);
        v27 = static LocalizationUtility.localizedString(key:table:)();
        v25[1](v24, v26);
      }

      else
      {
        v50 = v79;
        sub_100285FC4(v3, v79, type metadata accessor for AccessoryMetadata);
        v51 = sub_100302B50();
        v53 = v80;
        v52 = v81;
        v54 = v82;
        if (v51)
        {
          v55 = (v50 + *(v23 + 28));
          v56 = v55[1];
          if (v56)
          {
            v57 = *v55;
            v83 = 0;
            v84 = 0xE000000000000000;
            _StringGuts.grow(_:)(31);

            v83 = 0xD00000000000001DLL;
            v84 = 0x800000010134F730;
            v58._countAndFlagsBits = v57;
            v58._object = v56;
            String.append(_:)(v58);
            v60 = v83;
            v59 = v84;
          }

          else
          {
            v59 = 0x800000010134F6E0;
            v60 = 0xD00000000000001CLL;
          }

          v61 = v53[13];
          v77 = enum case for LocalizationUtility.Table.default(_:);
          v78 = v61;
          v61(v52);
          v62 = static LocalizationUtility.localizedString(key:table:)();
          v64 = v63;
          v65 = v53[1];
          v65(v52, v54);
          if (v62 == v60 && v64 == v59)
          {
          }

          else
          {
            v66 = v65;
            v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v67 & 1) == 0)
            {

              v78(v52, v77, v54);
              static LocalizationUtility.localizedString(key:table:)();
              v66(v52, v54);
              sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
              v75 = swift_allocObject();
              *(v75 + 16) = xmmword_101385D80;
              *(v75 + 56) = &type metadata for String;
              *(v75 + 64) = sub_100008C00();
              *(v75 + 32) = v62;
              *(v75 + 40) = v64;
              v27 = String.init(format:_:)();

              sub_10028602C(v79, type metadata accessor for AccessoryMetadata);
              return v27;
            }

            v65 = v66;
          }

          if (qword_101694910 != -1)
          {
            swift_once();
          }

          v68 = type metadata accessor for Logger();
          sub_1000076D4(v68, qword_10177B2D0);

          v69 = Logger.logObject.getter();
          v70 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v69, v70))
          {
            v71 = swift_slowAlloc();
            v80 = v65;
            v72 = v71;
            v73 = swift_slowAlloc();
            v83 = v73;
            *v72 = 136315138;
            v74 = sub_1000136BC(v60, v59, &v83);

            *(v72 + 4) = v74;
            _os_log_impl(&_mh_execute_header, v69, v70, "No fallback translation for key: %s", v72, 0xCu);
            sub_100007BAC(v73);

            v65 = v80;
          }

          else
          {
          }

          v50 = v79;
          v78(v52, v77, v54);
          v27 = static LocalizationUtility.localizedString(key:table:)();
          v65(v52, v54);
        }

        else
        {
          (v80[13])(v81, enum case for LocalizationUtility.Table.default(_:), v82);
          v27 = static LocalizationUtility.localizedString(key:table:)();
          (v53[1])(v52, v54);
        }

        sub_10028602C(v50, type metadata accessor for AccessoryMetadata);
      }
    }

    else
    {
      sub_100285FC4(v10, v14, type metadata accessor for AccessoryProductInfo);
      v43 = v80;
      v42 = v81;
      v44 = v82;
      (v80[13])(v81, enum case for LocalizationUtility.Table.default(_:), v82);
      static LocalizationUtility.localizedString(key:table:)();
      v43[1](v42, v44);
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_101385D80;
      v46 = &v14[*(v11 + 52)];
      v48 = *v46;
      v47 = v46[1];
      *(v45 + 56) = &type metadata for String;
      *(v45 + 64) = sub_100008C00();
      *(v45 + 32) = v48;
      *(v45 + 40) = v47;

      v27 = String.init(format:_:)();

      sub_10028602C(v14, type metadata accessor for AccessoryProductInfo);
    }
  }

  else
  {
    if (v19 == 2)
    {
      v20 = v81;
      v21 = v82;
      (*(v15 + 104))(v81, enum case for LocalizationUtility.Table.default(_:), v82);
LABEL_11:
      v27 = static LocalizationUtility.localizedString(key:table:)();
      (*(v15 + 8))(v20, v21);
      return v27;
    }

    v28 = (v17 + v18[12]);
    v29 = v28[2];
    v20 = v81;
    if (!v29)
    {
      v21 = v82;
      (*(v15 + 104))(v81, enum case for LocalizationUtility.Table.default(_:), v82);
      goto LABEL_11;
    }

    v30 = *v28;
    v31 = v28[1];
    v32 = v82;
    (*(v15 + 104))(v81, enum case for LocalizationUtility.Table.default(_:), v82);
    static LocalizationUtility.localizedString(key:table:)();
    (*(v15 + 8))(v20, v32);
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_101385D80;
    v34 = sub_100EB3708(v30, v31, v29);
    v35 = [v34 description];

    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v39 = sub_1010E09D0(v36, v38, 0);
    v41 = v40;

    *(v33 + 56) = &type metadata for String;
    *(v33 + 64) = sub_100008C00();
    *(v33 + 32) = v39;
    *(v33 + 40) = v41;
    v27 = String.init(format:_:)();
  }

  return v27;
}

uint64_t sub_100285EC4()
{
  _StringGuts.grow(_:)(40);

  v0._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v0);

  URL.init(string:)();
}

uint64_t type metadata accessor for UnwantedTrackingUserNotification(uint64_t a1)
{
  result = qword_10169C278;
  if (!qword_10169C278)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100285FC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10028602C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002860B4(uint64_t a1)
{
  result = type metadata accessor for WildModeAssociationRecord(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100286138(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100286150(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF6 && *(a1 + 8))
  {
    return (*a1 + 2147483639);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 8;
  if (v4 >= 0xA)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002861A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF7)
  {
    *result = 0;
    *result = a2 - 2147483639;
    if (a3 >= 0x7FFFFFF7)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF7)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 8;
    }
  }

  return result;
}

uint64_t sub_100286208(uint64_t a1)
{
  if (a1 <= 3)
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        return 0xD000000000000012;
      }

      if (a1 == 1)
      {
        return 0x616E7265746E692ELL;
      }

LABEL_20:
      strcpy(v3, ".underlying(");
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v2._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v2);

      return v3[0];
    }

    if (a1 == 2)
    {
      return 0x74756F656D69742ELL;
    }

    else
    {
      return 0xD000000000000016;
    }
  }

  else
  {
    if (a1 > 5)
    {
      switch(a1)
      {
        case 6:
          return 0xD00000000000001CLL;
        case 7:
          return 0x6E776F6E6B6E752ELL;
        case 8:
          return 0xD000000000000018;
      }

      goto LABEL_20;
    }

    if (a1 == 4)
    {
      return 0xD000000000000017;
    }

    else
    {
      return 0xD000000000000010;
    }
  }
}

unint64_t sub_100286404(char a1)
{
  result = 0x4E6E6F6973736573;
  switch(a1)
  {
    case 1:
      result = 0x737574617473;
      break;
    case 2:
      result = 0x654C636341616162;
      break;
    case 3:
      result = 0x6E49636341616162;
      break;
    case 4:
      result = 1684628325;
      break;
    case 5:
      result = 0x644970696863;
      break;
    case 6:
      result = 0x754E6C6169726573;
      break;
    case 7:
    case 8:
      result = 0x726F737365636361;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x69634572656E776FLL;
      break;
    case 12:
      result = 0x69684372656E776FLL;
      break;
    case 13:
      result = 0x7372655663657073;
      break;
    case 14:
      result = 0x657261776D726966;
      break;
    case 15:
      result = 0x49746375646F7270;
      break;
    case 16:
      result = 0x6449726F646E6576;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100286604(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_10169C2C0, &qword_101397510);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_1000035D0(a1, a1[3]);
  sub_100288DC4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v22 = *v3;
  v13 = *v3;
  v12 = 0;
  sub_1001022C4(&v22, v11);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v13, *(&v13 + 1));
  if (!v2)
  {
    LOBYTE(v13) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = *(v3 + 24);
    v13 = *(v3 + 24);
    v12 = 2;
    sub_1001022C4(&v21, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v20 = *(v3 + 40);
    v13 = *(v3 + 40);
    v12 = 3;
    sub_1001022C4(&v20, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v19 = *(v3 + 56);
    v13 = *(v3 + 56);
    v12 = 4;
    sub_1001022C4(&v19, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v18 = *(v3 + 72);
    v13 = *(v3 + 72);
    v12 = 5;
    sub_1001022C4(&v18, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v17 = *(v3 + 88);
    v13 = *(v3 + 88);
    v12 = 6;
    sub_1001022C4(&v17, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v16 = *(v3 + 104);
    v13 = *(v3 + 104);
    v12 = 7;
    sub_1001022C4(&v16, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v15 = *(v3 + 120);
    v13 = *(v3 + 120);
    v12 = 8;
    sub_1001022C4(&v15, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v13 = *(v3 + 136);
    v14 = v13;
    v12 = 9;
    sub_1000D2A70(&v14, v11, &qword_1016A40E0, &unk_101396F30);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v13, *(&v13 + 1));
    LOBYTE(v13) = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 13;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 15;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 16;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100286BD8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100289070(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100286C0C(uint64_t a1)
{
  v2 = sub_100288DC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100286C48(uint64_t a1)
{
  v2 = sub_100288DC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100286CD8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v62 = a1[8];
  v50 = v62;
  v61 = a1[11];
  sub_1001022C4(&v62, &v60);
  sub_1000E0A3C();
  v8 = DataProtocol.intValue.getter();
  v9 = a1[2];
  v61 = a1[3];
  v10 = a1[4];
  v59 = a1[5];
  v60 = v10;
  v48 = v10;
  v49 = v61;
  v11 = a1[6];
  v57 = a1[7];
  v58 = v11;
  v46 = a1[6];
  v47 = v59;
  v44 = a1[10];
  v45 = v57;
  v55 = a1[12];
  v56 = v44;
  v42 = v9;
  v43 = v55;
  v54 = v9;
  v12 = *a1;
  v52 = a1[1];
  v53 = v12;
  v40 = v52;
  v41 = v12;
  v13 = *(a1 + 33);
  v51 = a1[15];
  if (v13 >> 60 == 15)
  {
    sub_1001022C4(&v61, v39);
    sub_1001022C4(&v60, v39);
    sub_1001022C4(&v59, v39);
    sub_1001022C4(&v58, v39);
    sub_1001022C4(&v57, v39);
    sub_1001022C4(&v56, v39);
    sub_1000D2A70(&v55, v39, &qword_1016A40E0, &unk_101396F30);
    sub_1000D2A70(&v54, v39, &qword_1016A0AC0, &unk_1013926A0);
    sub_1000D2A70(&v53, v39, &qword_1016A0AC0, &unk_1013926A0);
    sub_1000D2A70(&v52, v39, &qword_1016A0AC0, &unk_1013926A0);
    result = sub_1000D2A70(&v51, v39, &qword_1016A0AC0, &unk_1013926A0);
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
LABEL_15:
    v33 = v49;
    *a4 = v50;
    *(a4 + 16) = v8;
    *(a4 + 24) = v33;
    v34 = v47;
    *(a4 + 40) = v48;
    *(a4 + 56) = v34;
    v35 = v45;
    *(a4 + 72) = v46;
    *(a4 + 88) = v35;
    *(a4 + 104) = a2;
    *(a4 + 112) = a3;
    v36 = v43;
    *(a4 + 120) = v44;
    *(a4 + 136) = v36;
    v37 = v41;
    *(a4 + 152) = v42;
    *(a4 + 168) = v37;
    *(a4 + 184) = v40;
    *(a4 + 200) = 0x302E302E31;
    *(a4 + 208) = 0xE500000000000000;
    *(a4 + 216) = a1[15];
    *(a4 + 232) = v15;
    *(a4 + 240) = v16;
    *(a4 + 248) = v17;
    *(a4 + 256) = v18;
    return result;
  }

  v38 = a3;
  v19 = *(a1 + 32);
  sub_1001022C4(&v61, v39);
  sub_1001022C4(&v60, v39);
  sub_1001022C4(&v59, v39);
  sub_1001022C4(&v58, v39);
  sub_1001022C4(&v57, v39);
  sub_1001022C4(&v56, v39);
  sub_1000D2A70(&v55, v39, &qword_1016A40E0, &unk_101396F30);
  sub_1000D2A70(&v54, v39, &qword_1016A0AC0, &unk_1013926A0);
  sub_1000D2A70(&v53, v39, &qword_1016A0AC0, &unk_1013926A0);
  sub_1000D2A70(&v52, v39, &qword_1016A0AC0, &unk_1013926A0);
  sub_1000D2A70(&v51, v39, &qword_1016A0AC0, &unk_1013926A0);
  v20 = sub_100313B54(v19, v13);
  v22 = v21;
  v15 = Data.hexString.getter();
  v16 = v23;
  result = sub_100016590(v20, v22);
  v24 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v24 != 2)
    {
LABEL_14:
      v29 = Data.subdata(in:)();
      v31 = v30;
      v17 = Data.hexString.getter();
      v18 = v32;
      result = sub_100016590(v29, v31);
      a3 = v38;
      goto LABEL_15;
    }

    v26 = *(v19 + 16);
    v25 = *(v19 + 24);
    v27 = __OFSUB__(v25, v26);
    v28 = v25 - v26;
    if (!v27)
    {
LABEL_12:
      if (v28 < -1)
      {
        __break(1u);
      }

      goto LABEL_14;
    }

    __break(1u);
  }

  else if (!v24)
  {
    goto LABEL_14;
  }

  LODWORD(v28) = HIDWORD(v19) - v19;
  if (!__OFSUB__(HIDWORD(v19), v19))
  {
    v28 = v28;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_10028709C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *, __n128), uint64_t a3, char a4, void *a5)
{
  v52 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v42 = v10;
  v43 = v6;
  while (v9)
  {
    v46 = a4;
    v13 = v11;
LABEL_14:
    v15 = (v13 << 10) | (16 * __clz(__rbit64(v9)));
    v16 = (*(a1 + 48) + v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = (*(a1 + 56) + v15);
    v20 = *v19;
    v21 = v19[1];
    v51[0] = v17;
    v51[1] = v18;
    v51[2] = v20;
    v51[3] = v21;

    (a2)(&v47, v51);

    v22 = v47;
    v23 = v48;
    v24 = v49;
    v25 = v50;
    v26 = *v52;
    v28 = sub_100771D58(v47, v48);
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_25;
    }

    v32 = v27;
    if (v26[3] >= v31)
    {
      if ((v46 & 1) == 0)
      {
        sub_1010056F4();
      }
    }

    else
    {
      sub_100FE6F1C(v31, v46 & 1);
      v33 = sub_100771D58(v22, v23);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_27;
      }

      v28 = v33;
    }

    v9 &= v9 - 1;
    v35 = *v52;
    if (v32)
    {

      v12 = (v35[7] + 16 * v28);
      *v12 = v24;
      v12[1] = v25;
    }

    else
    {
      v35[(v28 >> 6) + 8] |= 1 << v28;
      v36 = (v35[6] + 16 * v28);
      *v36 = v22;
      v36[1] = v23;
      v37 = (v35[7] + 16 * v28);
      *v37 = v24;
      v37[1] = v25;
      v38 = v35[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_26;
      }

      v35[2] = v40;
    }

    a4 = 1;
    v11 = v13;
    v10 = v42;
    v6 = v43;
  }

  v14 = v11;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      sub_1000128F8(a1);
    }

    v9 = *(v6 + 8 * v13);
    ++v14;
    if (v9)
    {
      v46 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10028733C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[312] = a4;
  v4[311] = a3;
  v4[310] = a2;
  v4[309] = a1;
  v5 = type metadata accessor for HashAlgorithm();
  v4[313] = v5;
  v4[314] = *(v5 - 8);
  v4[315] = swift_task_alloc();
  v6 = type metadata accessor for Locale();
  v4[316] = v6;
  v4[317] = *(v6 - 8);
  v4[318] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v4[319] = v7;
  v4[320] = *(v7 - 8);
  v4[321] = swift_task_alloc();

  return _swift_task_switch(sub_1002874C0, 0, 0);
}

void sub_1002874C0()
{
  v1 = sub_100907E70(_swiftEmptyArrayStorage);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x800000010134EA20, isUniquelyReferenced_nonNull_native);
  v3 = [objc_opt_self() currentDevice];
  if (!v3)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3;
  v5 = [v3 serverFriendlyDescription];

  if (!v5)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v6 = v0[321];
  v7 = v0[320];
  v8 = v0[319];
  v9 = v0[318];
  v48 = v0[317];
  v49 = v0[316];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v10, v12, 0xD000000000000011, 0x800000010134EA40, v13);
  v14 = v1;
  Date.init()();
  v15 = Date.epoch.getter();
  (*(v7 + 8))(v6, v8);
  v0[307] = v15;
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  v18 = v17;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v16, v18, 0xD000000000000015, 0x800000010134EA60, v19);
  v0[308] = 1;
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  v22 = v21;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v20, v22, 0xD000000000000013, 0x800000010134EA80, v23);
  v24 = v14;
  v25 = sub_100EB2DF0();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v25, v27, 0x6567412D72657355, 0xEA0000000000746ELL, v28);
  static Locale.current.getter();
  v29 = Locale.acceptLanguageCode.getter();
  v31 = v30;
  (*(v48 + 8))(v9, v49);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v29, v31, 0x4C2D747065636341, 0xEF65676175676E61, v32);
  v33 = v24;
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v34 = qword_10177C218;
  v35 = [objc_opt_self() sharedInstance];
  v36 = [v35 isInternalBuild];

  if (v36)
  {
    v37 = String._bridgeToObjectiveC()();
    v38 = [v34 BOOLForKey:v37];

    if (v38)
    {
      v39 = swift_isUniquelyReferenced_nonNull_native();
      sub_100FFACA0(0x7465722C6C616572, 0xEF302D726F727245, 0xD000000000000012, 0x800000010134F950, v39);
    }
  }

  v0[322] = v33;
  v40 = v0[311];
  v41 = v0[310];
  v42 = v0[309];
  sub_100164F7C(v42, (v0 + 2));
  sub_100017D5C(v41, v40);
  sub_100286CD8(v42, v41, v40, (v0 + 36));
  sub_100165224(v42);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  memcpy(v0 + 69, v0 + 36, 0x108uLL);
  sub_100288BB0();
  v43 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v0[323] = 0;
  v0[324] = v43;
  v0[325] = v44;
  v45 = v43;
  v46 = v44;

  sub_100017D5C(v45, v46);
  v47 = swift_task_alloc();
  v0[326] = v47;
  *v47 = v0;
  v47[1] = sub_100287C2C;

  sub_100E9EEAC();
}

uint64_t sub_100287C2C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 2616) = a1;
  *(v3 + 2624) = a2;

  return _swift_task_switch(sub_100287D30, 0, 0);
}

uint64_t sub_100287D30()
{
  v1 = *(v0 + 2624);
  v2 = *(v0 + 2616);
  v3 = *(v0 + 2520);
  v4 = *(v0 + 2512);
  v5 = *(v0 + 2504);
  *(v0 + 2440) = v2;
  *(v0 + 2448) = v1;
  *(v0 + 2424) = &type metadata for Data;
  *(v0 + 2432) = &protocol witness table for Data;
  *(v0 + 2400) = *(v0 + 2592);
  v6 = sub_1000035D0((v0 + 2400), &type metadata for Data);
  v7 = *v6;
  v8 = v6[1];
  sub_100017D5C(v2, v1);
  sub_100017DB0(v7, v8, v0 + 2440);
  sub_100016590(v2, v1);
  sub_100007BAC((v0 + 2400));
  *(v0 + 2632) = *(v0 + 2440);
  *(v0 + 2640) = *(v0 + 2448);
  (*(v4 + 104))(v3, enum case for HashAlgorithm.sha256(_:), v5);
  v9 = Data.hash(algorithm:)();
  v11 = v10;
  *(v0 + 2648) = v9;
  *(v0 + 2656) = v10;
  (*(v4 + 8))(v3, v5);
  v12 = swift_task_alloc();
  *(v0 + 2664) = v12;
  *v12 = v0;
  v12[1] = sub_100287EE8;
  v13 = *(v0 + 2496);

  return sub_100EA87F4(v9, v11, v13);
}

uint64_t sub_100287EE8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 2672) = v1;

  if (v1)
  {
    v5 = sub_100288570;
  }

  else
  {
    v6 = v4[332];
    v7 = v4[331];
    v4[335] = a1;
    sub_100016590(v7, v6);
    v5 = sub_10028801C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10028801C()
{
  v50 = v0;
  v1 = v0[335];
  v2 = v0[330];
  v3 = v0[329];
  v4 = v0[322];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v49[0] = v4;
  sub_10028709C(v1, sub_100EB00A4, 0, isUniquelyReferenced_nonNull_native, v49);

  sub_100016590(v3, v2);
  v6 = v49[0];
  if (qword_1016950E0 == -1)
  {
    goto LABEL_2;
  }

LABEL_23:
  swift_once();
LABEL_2:
  v46 = v0;
  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177C448);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Pairing lock header:", v10, 2u);
  }

  v11 = v6 + 64;
  v12 = -1;
  v13 = -1 << *(v6 + 32);
  if (-v13 < 64)
  {
    v12 = ~(-1 << -v13);
  }

  v14 = v12 & *(v6 + 64);
  v0 = ((63 - v13) >> 6);

  v15 = 0;
  v47 = v6;
  if (v14)
  {
    while (2)
    {
      v16 = v15;
LABEL_13:
      v17 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v18 = (v16 << 10) | (16 * v17);
      v19 = (*(v6 + 48) + v18);
      v20 = *v19;
      v21 = v19[1];
      v22 = (*(v6 + 56) + v18);
      v23 = v22[1];
      v48 = *v22;

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v49[0] = swift_slowAlloc();
        *v26 = 136315394;
        v27 = sub_1000136BC(v20, v21, v49);

        *(v26 + 4) = v27;
        *(v26 + 12) = 2080;
        v28 = sub_1000136BC(v48, v23, v49);

        *(v26 + 14) = v28;
        _os_log_impl(&_mh_execute_header, v24, v25, "%s: %s", v26, 0x16u);
        swift_arrayDestroy();

        v6 = v47;

        v15 = v16;
        if (v14)
        {
          continue;
        }
      }

      else
      {

        v15 = v16;
        if (v14)
        {
          continue;
        }
      }

      break;
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v16 >= v0)
    {
      break;
    }

    v14 = *(v11 + 8 * v16);
    ++v15;
    if (v14)
    {
      goto LABEL_13;
    }
  }

  sub_100288C04((v46 + 36), (v46 + 201));
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  sub_100288C3C((v46 + 36));
  v31 = os_log_type_enabled(v29, v30);
  v32 = v46[311];
  v33 = v46[310];
  v34 = v46[309];
  if (v31)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v49[0] = v36;
    *v35 = 136315138;
    memcpy(v46 + 234, v46 + 36, 0x108uLL);
    sub_100288C04((v46 + 36), (v46 + 267));
    v37 = String.init<A>(describing:)();
    v39 = sub_1000136BC(v37, v38, v49);

    *(v35 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v29, v30, "Pairing ack body %s", v35, 0xCu);
    sub_100007BAC(v36);
    v6 = v47;

    sub_100288C3C((v46 + 36));

    sub_100016590(v33, v32);
    sub_100165224(v34);
  }

  else
  {

    sub_100016590(v33, v32);
    sub_100165224(v34);

    sub_100288C3C((v46 + 36));
  }

  v40 = v46[325];
  v41 = v46[324];

  sub_100017D5C(v41, v40);

  sub_100016590(v41, v40);
  v42 = v46[325];
  v43 = v46[324];

  v44 = v46[1];

  return v44(v6, v43, v42);
}

uint64_t sub_100288570()
{
  v52 = v0;
  v1 = v0[330];
  v2 = v0[329];
  sub_100016590(v0[331], v0[332]);
  sub_100016590(v2, v1);
  v3 = &qword_101695000;
  if (qword_1016950E0 == -1)
  {
    goto LABEL_2;
  }

LABEL_28:
  swift_once();
LABEL_2:
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177C448);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to generate attestation header: %{public}@.", v7, 0xCu);
    sub_100288C6C(v8);
  }

  else
  {
  }

  v10 = v0[322];
  if (v3[28] != -1)
  {
    swift_once();
  }

  v48 = v0;
  sub_1000076D4(v4, qword_10177C448);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Pairing lock header:", v13, 2u);
  }

  v3 = (v10 + 64);
  v14 = -1;
  v15 = -1 << *(v10 + 32);
  if (-v15 < 64)
  {
    v14 = ~(-1 << -v15);
  }

  v16 = v14 & *(v10 + 64);
  v0 = ((63 - v15) >> 6);

  v17 = 0;
  v49 = v10;
  if (v16)
  {
    while (2)
    {
      v18 = v17;
LABEL_18:
      v19 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v20 = (v18 << 10) | (16 * v19);
      v21 = (*(v10 + 48) + v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v10 + 56) + v20);
      v25 = v24[1];
      v50 = *v24;

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *v28 = 136315394;
        v29 = sub_1000136BC(v22, v23, &v51);

        *(v28 + 4) = v29;
        *(v28 + 12) = 2080;
        v30 = sub_1000136BC(v50, v25, &v51);

        *(v28 + 14) = v30;
        _os_log_impl(&_mh_execute_header, v26, v27, "%s: %s", v28, 0x16u);
        swift_arrayDestroy();

        v10 = v49;

        v17 = v18;
        if (v16)
        {
          continue;
        }
      }

      else
      {

        v17 = v18;
        if (v16)
        {
          continue;
        }
      }

      break;
    }
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v18 >= v0)
    {
      break;
    }

    v16 = v3[v18];
    ++v17;
    if (v16)
    {
      goto LABEL_18;
    }
  }

  sub_100288C04((v48 + 36), (v48 + 201));
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  sub_100288C3C((v48 + 36));
  v33 = os_log_type_enabled(v31, v32);
  v34 = v48[311];
  v35 = v48[310];
  v36 = v48[309];
  if (v33)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v51 = v38;
    *v37 = 136315138;
    memcpy(v48 + 234, v48 + 36, 0x108uLL);
    sub_100288C04((v48 + 36), (v48 + 267));
    v39 = String.init<A>(describing:)();
    v41 = sub_1000136BC(v39, v40, &v51);

    *(v37 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v31, v32, "Pairing ack body %s", v37, 0xCu);
    sub_100007BAC(v38);
    v10 = v49;

    sub_100288C3C((v48 + 36));

    sub_100016590(v35, v34);
    sub_100165224(v36);
  }

  else
  {

    sub_100016590(v35, v34);
    sub_100165224(v36);

    sub_100288C3C((v48 + 36));
  }

  v42 = v48[325];
  v43 = v48[324];

  sub_100017D5C(v43, v42);

  sub_100016590(v43, v42);
  v44 = v48[325];
  v45 = v48[324];

  v46 = v48[1];

  return v46(v10, v45, v44);
}

unint64_t sub_100288BB0()
{
  result = qword_10169C2B8;
  if (!qword_10169C2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C2B8);
  }

  return result;
}