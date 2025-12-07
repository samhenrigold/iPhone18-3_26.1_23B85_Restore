uint64_t sub_1000ED7FC()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 144);
  v5 = *(*v1 + 136);
  *(*v1 + 320) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 32);
  if (v0)
  {
    v7 = sub_1000EDCA0;
  }

  else
  {
    v7 = sub_1000EDA7C;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1000ED984()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000EDA7C()
{
  v1 = v0[5];
  (*(v0[21] + 16))(v0[22], v0[23], v0[20]);
  *(swift_allocObject() + 16) = v1;
  v0[41] = type metadata accessor for Peripheral();
  sub_1000041A4(&qword_1016973E0, &unk_1016C2160, &qword_10138BF78, &protocol conformance descriptor for AsyncThrowingStream<A, B>);
  AsyncCompactMapSequence.init(_:transform:)();
  AsyncCompactMapSequence.base.getter();
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncCompactMapSequence.transform.getter();
  AsyncCompactMapSequence.Iterator.init(_:transform:)();
  v3 = sub_100102448(&qword_101697238, v2, type metadata accessor for AirPodsLEPairingService, &unk_10138BD60);
  v0[42] = v3;
  v4 = v0[4];
  v5 = swift_task_alloc();
  v0[43] = v5;
  *v5 = v0;
  v5[1] = sub_1000EDD98;

  return sub_1011EBA70(v4, v3);
}

uint64_t sub_1000EDCA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000EDD98(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 352) = a1;
  *(v4 + 360) = v1;

  v5 = *(v3 + 32);
  if (v1)
  {
    v6 = sub_1000EE1EC;
  }

  else
  {
    v6 = sub_1000EDECC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000EDECC()
{
  if (!v0[44])
  {
    (*(v0[12] + 8))(v0[13], v0[11]);
LABEL_7:
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Missing peripheral after scanning!", v10, 2u);
    }

    v11 = v0[23];
    v12 = v0[20];
    v13 = v0[21];
    v15 = v0[15];
    v14 = v0[16];
    v16 = v0[14];

    sub_100100904();
    swift_allocError();
    *v17 = 0x800000000000000BLL;
    swift_willThrow();
    (*(v15 + 8))(v14, v16);
    (*(v13 + 8))(v11, v12);

    v18 = v0[1];

    return v18();
  }

  if (static Task<>.isCancelled.getter())
  {
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    v3 = os_log_type_enabled(v1, v2);
    v5 = v0[12];
    v4 = v0[13];
    v6 = v0[11];
    if (v3)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "Task cancelled!", v7, 2u);
    }

    (*(v5 + 8))(v4, v6);
    goto LABEL_7;
  }

  v20 = swift_task_alloc();
  v0[46] = v20;
  *v20 = v0;
  v20[1] = sub_1000EE4D0;
  v21 = v0[35];
  v22 = v0[36];
  v23 = v0[3];

  return dispatch thunk of CentralManagerProtocol.retrievePeripheral(macAddress:)(v23, v21, v22);
}

uint64_t sub_1000EE1EC()
{
  (*(v0[12] + 8))(v0[13], v0[11]);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error during scan: %{public}@", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Missing peripheral after scanning!", v8, 2u);
  }

  v9 = v0[23];
  v10 = v0[20];
  v11 = v0[21];
  v13 = v0[15];
  v12 = v0[16];
  v14 = v0[14];

  sub_100100904();
  swift_allocError();
  *v15 = 0x800000000000000BLL;
  swift_willThrow();
  (*(v13 + 8))(v12, v14);
  (*(v11 + 8))(v9, v10);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1000EE4D0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 376) = a1;
  *(v4 + 384) = v1;

  v5 = *(v3 + 32);
  if (v1)
  {
    v6 = sub_1000EED1C;
  }

  else
  {
    v6 = sub_1000EE604;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000EE604()
{
  v50 = v0;
  if (*(v0 + 376))
  {
    v2 = *(v0 + 64);
    v1 = *(v0 + 72);
    v3 = *(v0 + 48);
    v4 = *(v0 + 56);
    sub_100102448(&qword_1016972A0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    dispatch thunk of PeripheralProtocol.id.getter();
    dispatch thunk of PeripheralProtocol.id.getter();
    v5 = static Identifier.== infix(_:_:)();

    v6 = *(v4 + 8);
    v6(v2, v3);
    v6(v1, v3);
    if (v5)
    {
      v7 = *(v0 + 184);
      v9 = *(v0 + 160);
      v8 = *(v0 + 168);
      v11 = *(v0 + 120);
      v10 = *(v0 + 128);
      v12 = *(v0 + 112);
      (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
      (*(v11 + 8))(v10, v12);
      (*(v8 + 8))(v7, v9);

      v13 = *(v0 + 8);
      v14 = *(v0 + 352);

      return v13(v14);
    }

    else
    {

      v28 = *(v0 + 336);
      v29 = *(v0 + 32);
      v30 = swift_task_alloc();
      *(v0 + 344) = v30;
      *v30 = v0;
      v30[1] = sub_1000EDD98;

      return sub_1011EBA70(v29, v28);
    }
  }

  else
  {
    (*(v0 + 256))(*(v0 + 232), *(v0 + 24), *(v0 + 216));
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 272);
    v20 = *(v0 + 232);
    v21 = *(v0 + 216);
    if (v18)
    {
      v48 = *(v0 + 272);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v49 = v23;
      *v22 = 136446210;
      sub_100102448(&qword_1016A4210, 255, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      v48(v20, v21);
      v27 = sub_1000136BC(v24, v26, &v49);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "Missing peripheral for %{public}s", v22, 0xCu);
      sub_100007BAC(v23);
    }

    else
    {

      v19(v20, v21);
    }

    sub_100100904();
    swift_allocError();
    *v31 = 0x800000000000000BLL;
    swift_willThrow();

    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
    swift_errorRetain();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138543362;
      swift_errorRetain();
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 4) = v36;
      *v35 = v36;
      _os_log_impl(&_mh_execute_header, v32, v33, "Error during scan: %{public}@", v34, 0xCu);
      sub_10000B3A8(v35, &qword_10169BB30, &unk_10138B3C0);
    }

    else
    {
    }

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Missing peripheral after scanning!", v39, 2u);
    }

    v40 = *(v0 + 184);
    v41 = *(v0 + 160);
    v42 = *(v0 + 168);
    v44 = *(v0 + 120);
    v43 = *(v0 + 128);
    v45 = *(v0 + 112);

    swift_allocError();
    *v46 = 0x800000000000000BLL;
    swift_willThrow();
    (*(v44 + 8))(v43, v45);
    (*(v42 + 8))(v40, v41);

    v47 = *(v0 + 8);

    return v47();
  }
}

uint64_t sub_1000EED1C()
{

  (*(v0[12] + 8))(v0[13], v0[11]);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error during scan: %{public}@", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Missing peripheral after scanning!", v8, 2u);
  }

  v9 = v0[23];
  v10 = v0[20];
  v11 = v0[21];
  v13 = v0[15];
  v12 = v0[16];
  v14 = v0[14];

  sub_100100904();
  swift_allocError();
  *v15 = 0x800000000000000BLL;
  swift_willThrow();
  (*(v13 + 8))(v12, v14);
  (*(v11 + 8))(v9, v10);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1000EF008(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v79 = a1;
  v6 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v72 - v7;
  v80 = type metadata accessor for AccessoryProductInfo(0);
  v9 = *(v80 + 96);
  v82 = a2;
  v10 = (a2 + v9);
  v11 = *v10;
  v12 = v10[1];
  if (v12 >> 60 == 15)
  {
    v13 = qword_101694448;

    if (v13 != -1)
    {
      swift_once();
    }

    v14 = qword_101697010;
    v15 = *algn_101697018;
    sub_10002E98C(qword_101697010, *algn_101697018);
  }

  else
  {

    v14 = v11;
    v15 = v12;
  }

  sub_10002E98C(v11, v12);
  v16 = sub_100F4F600(v14, v15);
  v18 = v17;

  sub_100006654(v14, v15);
  if (v18 >> 60 == 15)
  {
    if (qword_101694440 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000076D4(v19, qword_101696FF8);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Unable to generate E1 blob.", v22, 2u);
    }

    sub_100100904();
    swift_allocError();
    *v23 = 0x8000000000000000;
    return swift_willThrow();
  }

  else
  {
    v25 = sub_100F54748();
    if (v26 >> 60 == 15)
    {
      if (qword_101694440 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_1000076D4(v27, qword_101696FF8);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "Unable to generate FindMyNetworkId.", v30, 2u);
      }

      sub_100100904();
      swift_allocError();
      *v31 = 0x8000000000000000;
      swift_willThrow();
      return sub_100006654(v16, v18);
    }

    else
    {
      v32 = v25;
      v74 = v26;
      v75 = v8;
      v78 = v2;
      if (qword_101694440 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      sub_1000076D4(v33, qword_101696FF8);
      sub_100017D5C(v16, v18);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();
      sub_100006654(v16, v18);
      v36 = os_log_type_enabled(v34, v35);
      v76 = v16;
      v77 = v4;
      if (v36)
      {
        v37 = swift_slowAlloc();
        v73 = v32;
        v38 = v37;
        v39 = swift_slowAlloc();
        v81[0] = v39;
        *v38 = 136315138;
        sub_100017D5C(v16, v18);
        v40 = Data.hexString.getter();
        v41 = v16;
        v43 = v42;
        sub_100006654(v41, v18);
        v44 = sub_1000136BC(v40, v43, v81);

        *(v38 + 4) = v44;
        _os_log_impl(&_mh_execute_header, v34, v35, "E1: %s", v38, 0xCu);
        sub_100007BAC(v39);

        v32 = v73;
      }

      v45 = v78;
      v46 = v74;
      sub_100017D5C(v32, v74);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.debug.getter();
      sub_100006654(v32, v46);
      if (os_log_type_enabled(v47, v48))
      {
        v49 = v32;
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v81[0] = v51;
        *v50 = 136315138;
        sub_100017D5C(v49, v46);
        v52 = Data.hexString.getter();
        v54 = v53;
        sub_100006654(v49, v46);
        v55 = sub_1000136BC(v52, v54, v81);

        *(v50 + 4) = v55;
        _os_log_impl(&_mh_execute_header, v47, v48, "findMyNetworkId: %s", v50, 0xCu);
        sub_100007BAC(v51);

        v32 = v49;
        v45 = v78;
      }

      v56 = *(v45 + 184);
      v57 = type metadata accessor for AccessoryMetadata(0);
      v58 = v79;

      *(v56 + 88) = sub_10098E010();
      *(v56 + 96) = v59;

      v60 = *(v45 + 184);
      v61 = (v58 + *(v57 + 20));
      v63 = *v61;
      v62 = v61[1];
      v64 = *(v60 + 104);
      v65 = *(v60 + 112);
      *(v60 + 104) = *v61;
      *(v60 + 112) = v62;

      sub_100017D5C(v63, v62);
      sub_100006654(v64, v65);

      v66 = (*(v45 + 184) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_findMyNetworkId);
      v67 = *v66;
      v68 = v66[1];
      *v66 = v32;
      v66[1] = v46;
      sub_10002E98C(v32, v46);

      sub_100006654(v67, v68);

      v69 = *(v45 + 184);
      v70 = v75;
      sub_100101E08(v82, v75, type metadata accessor for AccessoryProductInfo);
      (*(*(v80 - 8) + 56))(v70, 0, 1);
      v71 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productInfo;
      swift_beginAccess();

      sub_10002311C(v70, v69 + v71, &qword_101697268, &qword_101394FE0);
      swift_endAccess();

      CurrentLocationMonitor.requestLocation()();
      sub_100006654(v32, v46);
      return sub_100006654(v76, v18);
    }
  }
}

uint64_t sub_1000EF77C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Characteristic();
  v6 = sub_100102448(&qword_1016972C0, 255, &type metadata accessor for Characteristic, &protocol conformance descriptor for Characteristic);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100014650;

  return dispatch thunk of CharacteristicProtocol.writeWithoutResponse(data:)(a3, v5, v6);
}

uint64_t sub_1000EF874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100014650;

  return sub_1000EF910(a5);
}

uint64_t sub_1000EF910(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = type metadata accessor for MACAddress();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000EF9F8, v1, 0);
}

uint64_t sub_1000EF9F8()
{
  v26 = v0;
  if (qword_101694440 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_101696FF8);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[5];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 136446210;
    sub_100102448(&qword_1016A4210, 255, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1000136BC(v14, v16, &v25);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "ackPairing with %{public}s", v12, 0xCu);
    sub_100007BAC(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v19 = v0[3];
  v20 = v0[4];
  v21 = sub_100102448(&qword_101697238, v18, type metadata accessor for AirPodsLEPairingService, &unk_10138BD60);
  v22 = swift_task_alloc();
  v0[8] = v22;
  *(v22 + 16) = v19;
  *(v22 + 24) = v20;
  v23 = swift_task_alloc();
  v0[9] = v23;
  *v23 = v0;
  v23[1] = sub_1000EFCFC;

  return withCheckedContinuation<A>(isolation:function:_:)(v23, v19, v21, 0xD00000000000001ELL, 0x800000010134B350, sub_1001010A0, v22, &type metadata for () + 1);
}

uint64_t sub_1000EFCFC()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_1000EFE28, v1, 0);
}

uint64_t sub_1000EFE28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000EFE88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v5 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  v3[3] = v5;
  v3[4] = *(v5 - 8);
  v6 = swift_task_alloc();
  v3[5] = v6;
  v7 = type metadata accessor for Characteristic();
  v8 = sub_100102448(&qword_1016972C0, 255, &type metadata accessor for Characteristic, &protocol conformance descriptor for Characteristic);
  v9 = swift_task_alloc();
  v3[6] = v9;
  *v9 = v3;
  v9[1] = sub_1000EFFFC;

  return dispatch thunk of CharacteristicProtocol.write(data:)(v6, a3, v7, v8);
}

uint64_t sub_1000EFFFC()
{
  v2 = *v1;
  v2[7] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000F0340, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[8] = v3;
    v4 = sub_1000041A4(&qword_1016C11D0, &qword_1016973C8, &qword_1013B6210, &protocol conformance descriptor for AsyncThrowingStream<A, B>);
    *v3 = v2;
    v3[1] = sub_1000F01B4;
    v5 = v2[3];

    return AsyncSequence<>.reassemble()(v5, v4);
  }
}

uint64_t sub_1000F01B4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[9] = v2;

  v7 = v6[5];
  v8 = v6[4];
  v9 = v6[3];
  if (v2)
  {
    (*(v8 + 8))(v7, v9);
    v10 = sub_1000F0418;
  }

  else
  {
    v6[10] = a2;
    v6[11] = a1;
    (*(v8 + 8))(v7, v9);
    v10 = sub_1000F03A4;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_1000F0340()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000F03A4()
{
  *v0[1].i64[0] = vextq_s8(v0[5], v0[5], 8uLL);

  v1 = v0->i64[1];

  return v1();
}

uint64_t sub_1000F0418()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000F047C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2129] = v4;
  v5[2128] = a4;
  v5[2127] = a3;
  v5[2126] = a2;
  v5[2125] = a1;
  type metadata accessor for StandaloneBeacon(0);
  v5[2130] = swift_task_alloc();
  v5[2131] = swift_task_alloc();
  v5[2132] = swift_task_alloc();
  v5[2133] = type metadata accessor for OwnedBeaconRecord(0);
  v5[2134] = swift_task_alloc();
  v5[2135] = swift_task_alloc();
  v5[2136] = type metadata accessor for AirPodsLEPairingService.BeaconCreationResult(0);
  v5[2137] = swift_task_alloc();
  v5[2138] = swift_task_alloc();
  v5[2139] = sub_1000BC4D4(&qword_1016972F0, &unk_10138BE60);
  v5[2140] = swift_task_alloc();
  v6 = type metadata accessor for OwnedBeaconGroup(0);
  v5[2141] = v6;
  v5[2142] = *(v6 - 8);
  v5[2143] = swift_task_alloc();
  v5[2144] = swift_task_alloc();
  type metadata accessor for String.Encoding();
  v5[2145] = swift_task_alloc();
  v5[2146] = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v5[2147] = swift_task_alloc();
  v5[2148] = swift_task_alloc();
  v5[2149] = swift_task_alloc();
  v5[2150] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v5[2151] = swift_task_alloc();
  v7 = type metadata accessor for MACAddress();
  v5[2152] = v7;
  v8 = *(v7 - 8);
  v5[2153] = v8;
  v5[2154] = *(v8 + 64);
  v5[2155] = swift_task_alloc();
  v5[2156] = swift_task_alloc();
  v9 = swift_task_alloc();
  v5[2157] = v9;
  *v9 = v5;
  v9[1] = sub_1000F07B4;

  return daemon.getter();
}

uint64_t sub_1000F07B4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 17264) = a1;

  v3 = swift_task_alloc();
  *(v2 + 17272) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100102448(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100102448(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_1000F0998;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1000F0998(uint64_t a1)
{
  v3 = *v2;
  v3[2160] = a1;
  v3[2161] = v1;

  if (v1)
  {
    v4 = v3[2129];

    return _swift_task_switch(sub_1000F442C, v4, 0);
  }

  else
  {

    v5 = type metadata accessor for Peripheral();
    v6 = sub_100102448(&qword_1016972A0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    v7 = swift_task_alloc();
    v3[2162] = v7;
    *v7 = v3;
    v7[1] = sub_1000F0B78;
    v8 = v3[2151];

    return dispatch thunk of PeripheralProtocol.macAddress.getter(v8, v5, v6);
  }
}

uint64_t sub_1000F0B78()
{
  v1 = *(*v0 + 17032);

  return _swift_task_switch(sub_1000F0C88, v1, 0);
}

uint64_t sub_1000F0C88()
{
  v412 = v0;
  v1 = v0;
  v2 = v0[2153];
  v3 = v0[2152];
  v4 = v0[2151];
  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {
    sub_10000B3A8(v4, &qword_1016A40D0, &unk_10138BE70);
    if (qword_101694440 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_101696FF8);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Peripheral is missing MAC address!", v8, 2u);
    }

    sub_100100904();
    swift_allocError();
    *v9 = 0x8000000000000008;
    swift_willThrow();

    goto LABEL_52;
  }

  v10 = v0[2156];
  v11 = v0[2127];
  v12 = *(v2 + 32);
  v0[2163] = v12;
  v0[2164] = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v12(v10, v4, v3);
  sub_1001011C0(v11, (v0 + 2050));
  sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    if (qword_101694440 != -1)
    {
      swift_once();
    }

    v21 = v0[2127];
    v22 = type metadata accessor for Logger();
    sub_1000076D4(v22, qword_101696FF8);
    sub_1001011C0(v21, (v0 + 2056));
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v410 = v26;
      *v25 = 136446210;
      sub_1001011C0(v1 + 16448, v1 + 16496);
      v27 = String.init<A>(describing:)();
      v29 = sub_1000136BC(v27, v28, &v410);

      *(v25 + 4) = v29;
      sub_100007BAC((v1 + 16448));
      _os_log_impl(&_mh_execute_header, v23, v24, "Invalid command from payload %{public}s", v25, 0xCu);
      sub_100007BAC(v26);
    }

    else
    {

      sub_100007BAC(v0 + 2056);
    }

    v52 = *(v1 + 17248);
    v53 = *(v1 + 17224);
    v54 = *(v1 + 17216);
    sub_100100904();
    swift_allocError();
    *v55 = 0x8000000000000006;
    swift_willThrow();

    goto LABEL_51;
  }

  memcpy(v0 + 861, v0 + 267, 0x108uLL);
  memcpy(v0 + 366, v0 + 267, 0x108uLL);
  if (qword_101694440 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v0[2165] = v13;
  v0[2166] = sub_1000076D4(v13, qword_101696FF8);
  sub_100100988((v0 + 861), (v0 + 399));
  sub_100100988((v0 + 861), (v0 + 432));
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v410 = v17;
    *v16 = 136446210;
    memcpy(v0 + 135, v0 + 861, 0x108uLL);
    sub_100100988((v0 + 861), (v0 + 102));
    v18 = String.init<A>(describing:)();
    v20 = sub_1000136BC(v18, v19, &v410);

    *(v16 + 4) = v20;
    sub_1001009E4((v0 + 861));
    sub_1001009E4((v0 + 861));
    _os_log_impl(&_mh_execute_header, v14, v15, "Received command: %{public}s", v16, 0xCu);
    sub_100007BAC(v17);
  }

  else
  {

    sub_1001009E4((v0 + 861));
    sub_1001009E4((v0 + 861));
  }

  memcpy(v0 + 36, v0 + 861, 0x108uLL);
  v30 = sub_100100ACC((v0 + 36));
  if (v30 == 4)
  {
    sub_1000479AC((v0 + 36));
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&_mh_execute_header, v67, v68, "Received pairing status.", v69, 2u);
    }

    v70 = v0[2129];

    *(v70 + 176) = 5;
    sub_100391750((v1 + 16800));
    sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
    if (swift_dynamicCast())
    {
      v71 = v1 + 16336;
      v72 = *(v1 + 16256);
      *(v1 + 16368) = *(v1 + 16240);
      *(v1 + 0x4000) = v72;
      v73 = *(v1 + 16224);
      *(v1 + 16336) = *(v1 + 16208);
      *(v1 + 16352) = v73;
      v74 = *(v1 + 16352);
      v75 = v1;
      v1 = *(v1 + 16360);
      sub_100017D5C(v74, v1);
      v76 = sub_1008CDF88(v74, v1);
      if (v76)
      {
        v1 = v75;
        v77 = v76;
        v78 = Logger.logObject.getter();
        v79 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          *&v410 = v81;
          *v80 = 136446210;
          v82 = sub_1008CDD10(v77);
          v84 = sub_1000136BC(v82, v83, &v410);

          *(v80 + 4) = v84;
          _os_log_impl(&_mh_execute_header, v78, v79, "Pairing failed with status %{public}s", v80, 0xCu);
          sub_100007BAC(v81);
        }

        v85 = *(v1 + 17248);
        v86 = *(v1 + 17224);
        v87 = *(v1 + 17216);
        sub_100100904();
        swift_allocError();
        v89 = 0x8000000000000009;
        goto LABEL_153;
      }

      v200 = (v75 + 2095);
      v405 = v75;
      v408 = v71;
      if (*(v75[2129] + 274))
      {
        v203 = &type metadata for CollaborativeKeyGen.v2.C3;
        v204 = sub_10010194C();
        goto LABEL_90;
      }

LABEL_89:
      v203 = &type metadata for CollaborativeKeyGen.v1.C3;
      v204 = sub_100101704();
LABEL_90:
      v208 = v204;
      v209 = v405[2161];
      v210 = v405[2042];
      v211 = v405[2043];
      v405[2098] = v203;
      v405[2099] = v204;
      sub_1000280DC(v200);
      sub_100017D5C(v210, v211);
      KeyRepresentable<>.init(data:)(v210, v211, v203, *(v208 + 8));
      if (v209)
      {

        sub_100101758(v200);
        *(v200 + 32) = 0;
        *v200 = 0u;
        *(v200 + 16) = 0u;
        sub_10000B3A8(v200, &qword_101697320, &qword_10138BE90);
        v1 = v405;
        v71 = v408;
        sub_1001017A8(v408, (v405 + 2018));
        sub_1001017A8(v408, (v405 + 2010));
        v212 = Logger.logObject.getter();
        v213 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v212, v213))
        {
          v214 = swift_slowAlloc();
          v215 = swift_slowAlloc();
          *&v410 = v215;
          *v214 = 136315138;
          v216 = Data.hexString.getter();
          v218 = sub_1000136BC(v216, v217, &v410);

          *(v214 + 4) = v218;
          sub_1001016B0(v408);
          sub_1001016B0(v408);
          _os_log_impl(&_mh_execute_header, v212, v213, "Invalid C3: %s", v214, 0xCu);
          sub_100007BAC(v215);
        }

        else
        {

          sub_1001016B0(v408);
          sub_1001016B0(v408);
        }

        v85 = v405[2156];
        v86 = v405[2153];
        v87 = v405[2152];
        sub_100100904();
        swift_allocError();
        v89 = 0x8000000000000007;
LABEL_153:
        *v88 = v89;
        swift_willThrow();

        sub_1001009E4(v1 + 6888);
        sub_1001016B0(v71);
        (*(v86 + 8))(v85, v87);
        goto LABEL_52;
      }

      v228 = v405[2129];
      sub_10000A748(v200, (v405 + 2085));
      v229 = *(v228 + 184);
      sub_10001F280((v405 + 2085), (v405 + 2105));
      v230 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC3;
      swift_beginAccess();

      sub_10002311C((v405 + 2105), v229 + v230, &qword_101697320, &qword_10138BE90);
      swift_endAccess();

      v231 = (*(v228 + 184) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_status);
      v233 = *v231;
      v232 = v231[1];
      *v231 = v74;
      v231[1] = v1;
      sub_100017D5C(v74, v1);

      sub_100006654(v233, v232);

      v234 = *(v228 + 184);
      v235 = v405[2046];
      v236 = v405[2047];
      v237 = (v234 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4);
      v239 = *(v234 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4);
      v238 = *(v234 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4 + 8);
      *v237 = v235;
      v237[1] = v236;

      v406 = v235;
      v407 = v236;
      sub_100017D5C(v235, v236);
      sub_100006654(v239, v238);

      v240 = Logger.logObject.getter();
      v241 = static os_log_type_t.default.getter();
      v197 = v408;
      if (os_log_type_enabled(v240, v241))
      {
        v242 = swift_slowAlloc();
        v243 = swift_slowAlloc();
        *&v410 = v243;
        *v242 = 136446210;
        v244 = sub_1008CDD10(0);
        v246 = sub_1000136BC(v244, v245, &v410);

        *(v242 + 4) = v246;
        v1 = v405;
        _os_log_impl(&_mh_execute_header, v240, v241, "status: %{public}s", v242, 0xCu);
        sub_100007BAC(v243);
      }

      else
      {
        v1 = v405;
      }

      sub_1001017A8(v408, v1 + 16016);
      sub_1001017A8(v408, v1 + 15952);
      sub_1001017A8(v408, v1 + 15888);
      v369 = Logger.logObject.getter();
      v370 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v369, v370))
      {

        sub_1001016B0(v408);
        sub_1001016B0(v408);
        sub_1001016B0(v408);
        goto LABEL_168;
      }

      v371 = swift_slowAlloc();
      v364 = swift_slowAlloc();
      v372 = v364;
      *&v410 = v364;
      *v371 = 134218242;
      v373 = v407 >> 62;
      if ((v407 >> 62) > 1)
      {
        v374 = v406;
        if (v373 != 2)
        {
          v375 = 0;
          goto LABEL_167;
        }

        v377 = *(v406 + 16);
        v376 = *(v406 + 24);
        v207 = __OFSUB__(v376, v377);
        v375 = v376 - v377;
        if (!v207)
        {
          goto LABEL_167;
        }

        __break(1u);
      }

      else
      {
        v374 = v406;
        if (!v373)
        {
          v375 = BYTE6(v407);
LABEL_167:
          *(v371 + 4) = v375;
          sub_1001016B0(v408);
          *(v371 + 12) = 2080;
          v378 = Data.hexString.getter();
          v380 = sub_1000136BC(v378, v379, &v410);

          *(v371 + 14) = v380;
          sub_1001016B0(v408);
          sub_1001016B0(v408);
          _os_log_impl(&_mh_execute_header, v369, v370, "S4 count %ld: %s", v371, 0x16u);
          sub_100007BAC(v372);

          v1 = v405;
LABEL_168:
          sub_1001017A8(v408, v1 + 15824);
          sub_1001017A8(v408, v1 + 15760);
          v381 = Logger.logObject.getter();
          v382 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v381, v382))
          {
            v383 = swift_slowAlloc();
            v384 = swift_slowAlloc();
            *&v410 = v384;
            *v383 = 136315138;
            v385 = Data.hexString.getter();
            v387 = sub_1000136BC(v385, v386, &v410);

            *(v383 + 4) = v387;
            sub_1001016B0(v408);
            sub_1001016B0(v408);
            _os_log_impl(&_mh_execute_header, v381, v382, "C3: %s", v383, 0xCu);
            sub_100007BAC(v384);
          }

          else
          {

            sub_1001016B0(v408);
            sub_1001016B0(v408);
          }

          v388 = *(v1 + 16704);
          v389 = *(v1 + 16712);
          sub_1000035D0((v1 + 16680), v388);
          v390 = (*(*(*(v389 + 8) + 8) + 40))(v388);
          v392 = v391;
          sub_1000FAAA0(v390, v391, (v1 + 15600));
          sub_100016590(v390, v392);
          v393 = *(v1 + 15608);
          v200 = 6888;
          if (v393 >> 60 != 15)
          {
            *(v1 + 15680) = *(v1 + 15600);
            *(v1 + 15688) = v393;
            *(v1 + 15696) = *(v1 + 15616);
            *(v1 + 15712) = *(v1 + 15632);
            *(v1 + 15728) = *(v1 + 15648);
            *(v1 + 15744) = *(v1 + 15664);
            v401 = swift_task_alloc();
            *(v1 + 17440) = v401;
            *v401 = v1;
            v401[1] = sub_1000F5F78;
            v402 = *(v1 + 17248);
            v403 = *(v1 + 17120);
            v404 = *(v1 + 17024);

            return sub_1000FACBC(v403, v1 + 15680, v402, v404);
          }

          if (qword_1016950E0 == -1)
          {
LABEL_173:
            sub_1000076D4(v13, qword_10177C448);
            v394 = Logger.logObject.getter();
            v395 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v394, v395))
            {
              v396 = swift_slowAlloc();
              *v396 = 0;
              _os_log_impl(&_mh_execute_header, v394, v395, "Unable to generate initial pairing data from owner context and C3!)", v396, 2u);
            }

            v397 = *(v1 + 17248);
            v398 = *(v1 + 17224);
            v399 = *(v1 + 17216);

            sub_100100904();
            swift_allocError();
            *v400 = 0x8000000000000007;
            swift_willThrow();

            sub_1001009E4(v1 + v200);
            sub_1001016B0(v197);
            (*(v398 + 8))(v397, v399);
            sub_100007BAC((v1 + 16680));
            goto LABEL_52;
          }

LABEL_181:
          swift_once();
          goto LABEL_173;
        }
      }

      LODWORD(v375) = HIDWORD(v374) - v374;
      if (__OFSUB__(HIDWORD(v374), v374))
      {
        __break(1u);
        return _swift_task_switch(v364, v166, v365);
      }

      v375 = v375;
      goto LABEL_167;
    }

    sub_100100988(v1 + 6888, v1 + 5304);
    sub_100100988(v1 + 6888, v1 + 5568);
    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      *&v410 = v100;
      *v99 = 136446210;
      memcpy((v1 + 6096), (v1 + 2928), 0x108uLL);
      v108 = sub_1000479AC(v1 + 6096);
      *(v1 + 16744) = &type metadata for AirPodsSWSendPairingStatusCommandPayload;
      *(v1 + 16752) = sub_100101224();
      v109 = swift_allocObject();
      *(v1 + 16720) = v109;
      v110 = v108[3];
      v112 = *v108;
      v111 = v108[1];
      v109[3] = v108[2];
      v109[4] = v110;
      v109[1] = v112;
      v109[2] = v111;
      memcpy((v1 + 5832), (v1 + 2928), 0x108uLL);
      v113 = sub_1000479AC(v1 + 5832);
      sub_1000D2A70(v113, v1 + 16272, &qword_101697310, &qword_10139E330);
      v114 = String.init<A>(describing:)();
      v116 = sub_1000136BC(v114, v115, &v410);

      *(v99 + 4) = v116;
      sub_1001009E4(v1 + 6888);
      sub_1001009E4(v1 + 6888);
      v107 = "Invalid sendPairingStatus payload %{public}s";
      goto LABEL_42;
    }

LABEL_43:

    sub_1001009E4(v1 + 6888);
    sub_1001009E4(v1 + 6888);
    goto LABEL_44;
  }

  if (v30 != 2)
  {
    if (!v30)
    {
      v31 = sub_1000479AC((v0 + 36));
      v32 = *v31;
      v0[2167] = *v31;
      v33 = v31[1];
      v0[2168] = v33;
      v409 = v31[2];
      v0[2169] = v409;
      v34 = v31[3];
      v0[2170] = v34;
      memcpy(v0 + 828, v0 + 366, 0x108uLL);
      v35 = sub_1000479AC((v0 + 828));
      v36 = *v35;
      v37 = v35[1];
      v38 = v35[2];
      v39 = v35[3];
      sub_100100988((v0 + 861), (v0 + 795));
      sub_100017D5C(v36, v37);
      sub_100017D5C(v38, v39);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *&v410 = v43;
        *&v44 = v32;
        *(&v44 + 1) = v33;
        *v42 = 136315138;
        *&v45 = v409;
        *(&v45 + 1) = v34;
        *(v1 + 16920) = v44;
        *(v1 + 16936) = v45;
        memcpy((v1 + 1872), (v1 + 2928), 0x108uLL);
        v46 = sub_1000479AC(v1 + 1872);
        v48 = v46[2];
        v47 = v46[3];
        sub_100017D5C(*v46, v46[1]);
        sub_100017D5C(v48, v47);
        v49 = String.init<A>(describing:)();
        v51 = sub_1000136BC(v49, v50, &v410);

        *(v42 + 4) = v51;
        sub_1001009E4(v1 + 6888);
        sub_1001009E4(v1 + 6888);
        _os_log_impl(&_mh_execute_header, v40, v41, "Received beacon group data %s", v42, 0xCu);
        sub_100007BAC(v43);
      }

      else
      {

        sub_1001009E4((v0 + 861));
        sub_1001009E4((v0 + 861));
      }

      memcpy((v1 + 5040), (v1 + 2928), 0x108uLL);
      v119 = sub_1000479AC(v1 + 5040);
      v121 = *v119;
      v120 = v119[1];
      v122 = v119[2];
      v123 = v119[3];
      sub_100100988(v1 + 6888, v1 + 4776);
      sub_100017D5C(v121, v120);
      sub_100017D5C(v122, v123);
      v124 = Logger.logObject.getter();
      v125 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v124, v125))
      {
        v126 = swift_slowAlloc();
        v127 = swift_slowAlloc();
        *&v410 = v127;
        *v126 = 136315138;
        v128 = Data.hexString.getter();
        v130 = sub_1000136BC(v128, v129, &v410);

        *(v126 + 4) = v130;
        sub_1001009E4(v1 + 6888);
        sub_1001009E4(v1 + 6888);
        _os_log_impl(&_mh_execute_header, v124, v125, "numberOfBeacons: %s", v126, 0xCu);
        sub_100007BAC(v127);
      }

      else
      {

        sub_1001009E4(v1 + 6888);
        sub_1001009E4(v1 + 6888);
      }

      memcpy((v1 + 2664), (v1 + 2928), 0x108uLL);
      v133 = sub_1000479AC(v1 + 2664);
      v135 = *v133;
      v134 = v133[1];
      v136 = v133[2];
      v137 = v133[3];
      sub_100100988(v1 + 6888, v1 + 2400);
      sub_100017D5C(v135, v134);
      sub_100017D5C(v136, v137);
      v138 = Logger.logObject.getter();
      v139 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v138, v139))
      {
        v140 = swift_slowAlloc();
        v141 = swift_slowAlloc();
        *&v410 = v141;
        *v140 = 136315138;
        v142 = Data.hexString.getter();
        v144 = sub_1000136BC(v142, v143, &v410);

        *(v140 + 4) = v144;
        sub_1001009E4(v1 + 6888);
        sub_1001009E4(v1 + 6888);
        _os_log_impl(&_mh_execute_header, v138, v139, "beaconGroupData: %s", v140, 0xCu);
        sub_100007BAC(v141);
      }

      else
      {

        sub_1001009E4(v1 + 6888);
        sub_1001009E4(v1 + 6888);
      }

      v145 = *(v1 + 17032);
      *(v145 + 176) = 2;
      if (*(v145 + 272) == 1)
      {
        v146 = *(v1 + 17200);
        (*(*(v1 + 17136) + 56))(v146, 1, 1, *(v1 + 17128));
        v147 = sub_10110D3E0(v146, 255);
        v149 = v148;
        v150 = *(v1 + 17360);
        v151 = *(v1 + 17352);
        v152 = *(v1 + 17344);
        v153 = *(v1 + 17336);
        v154 = *(v1 + 17288);
        sub_10000B3A8(*(v1 + 17200), &unk_1016AF8B0, &unk_1013A0700);
        v155 = sub_1000E0768(v153, v152, v151, v150);
        if (v154)
        {
          swift_errorRetain();
          swift_errorRetain();
          v219 = Logger.logObject.getter();
          v220 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v219, v220))
          {
            v221 = swift_slowAlloc();
            v222 = swift_slowAlloc();
            *v221 = 138543362;
            swift_errorRetain();
            v223 = _swift_stdlib_bridgeErrorToNSError();
            *(v221 + 4) = v223;
            *v222 = v223;

            _os_log_impl(&_mh_execute_header, v219, v220, "Unable to parse beacon group info due to %{public}@", v221, 0xCu);
            sub_10000B3A8(v222, &qword_10169BB30, &unk_10138B3C0);
          }

          else
          {
          }

          v224 = *(v1 + 17224);
          sub_1000F7068(v147, v149, (v1 + 1344));
          v225 = (v224 + 8);
          v226 = *(v1 + 17248);
          v227 = *(v1 + 17216);
          memcpy(__dst, (v1 + 1344), sizeof(__dst));

          sub_100016590(v147, v149);

          sub_1001009E4(v1 + 6888);
          (*v225)(v226, v227);
        }

        else
        {
          v156 = v155;
          swift_bridgeObjectRetain_n();
          v157 = Logger.logObject.getter();
          v158 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v157, v158))
          {
            v159 = swift_slowAlloc();
            v160 = swift_slowAlloc();
            *&v410 = v160;
            *v159 = 136315138;
            type metadata accessor for MultipartAccessoryPairingInfo(0);
            sub_100101BAC();
            v161 = v1;

            v162 = Dictionary.description.getter();
            v164 = v163;

            v165 = sub_1000136BC(v162, v164, &v410);
            v1 = v161;

            *(v159 + 4) = v165;
            swift_bridgeObjectRelease_n();
            _os_log_impl(&_mh_execute_header, v157, v158, "beaconGroupInfo: %s", v159, 0xCu);
            sub_100007BAC(v160);
          }

          else
          {

            swift_bridgeObjectRelease_n();
          }

          *(*(*(v1 + 17032) + 184) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds) = v156;

          sub_1000F7068(v147, v149, (v1 + 1608));
          v247 = *(v1 + 17248);
          v248 = *(v1 + 17224);
          v249 = *(v1 + 17216);
          memcpy(__dst, (v1 + 1608), sizeof(__dst));

          sub_100016590(v147, v149);
          sub_1001009E4(v1 + 6888);
          (*(v248 + 8))(v247, v249);
        }

        memcpy(*(v1 + 17000), __dst, 0x108uLL);

        v131 = *(v1 + 8);
        goto LABEL_53;
      }

      v166 = *(v1 + 17280);
      v167 = sub_1000F459C;
      goto LABEL_145;
    }

    sub_100100988((v0 + 861), (v0 + 465));
    sub_100100988((v0 + 861), (v0 + 498));
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      *&v410 = v93;
      *v92 = 136446210;
      memcpy(v0 + 531, v0 + 861, 0x108uLL);
      sub_100100988((v0 + 861), (v0 + 564));
      v94 = String.init<A>(describing:)();
      v96 = sub_1000136BC(v94, v95, &v410);

      *(v92 + 4) = v96;
      sub_1001009E4((v0 + 861));
      sub_1001009E4((v0 + 861));
      _os_log_impl(&_mh_execute_header, v90, v91, "Received unexpected command %{public}s", v92, 0xCu);
      sub_100007BAC(v93);
    }

    else
    {

      sub_1001009E4((v0 + 861));
      sub_1001009E4((v0 + 861));
    }

    v52 = v0[2156];
    v53 = *(v1 + 17224);
    v54 = *(v1 + 17216);
    sub_100100904();
    swift_allocError();
    v118 = 0x8000000000000006;
    goto LABEL_50;
  }

  sub_1000479AC((v0 + 36));
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&_mh_execute_header, v56, v57, "Received pairing data.", v58, 2u);
  }

  sub_100391750(v0 + 2110);
  sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
  if (!swift_dynamicCast())
  {
    sub_100100988((v0 + 861), (v0 + 1389));
    sub_100100988((v0 + 861), (v0 + 1422));
    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      *&v410 = v100;
      *v99 = 136446210;
      memcpy(v0 + 1488, v0 + 366, 0x108uLL);
      v101 = sub_1000479AC((v0 + 1488));
      *(v1 + 16664) = &type metadata for AirPodsSWSendPairingDataCommandPayload;
      *(v1 + 16672) = sub_1001019A0();
      v102 = swift_allocObject();
      *(v1 + 16640) = v102;
      memcpy((v102 + 16), v101, 0x108uLL);
      memcpy((v1 + 11640), (v1 + 2928), 0x108uLL);
      v103 = sub_1000479AC(v1 + 11640);
      sub_1000D2A70(v103, v1 + 12432, &qword_101697348, &unk_10138BEB0);
      v104 = String.init<A>(describing:)();
      v106 = sub_1000136BC(v104, v105, &v410);

      *(v99 + 4) = v106;
      sub_1001009E4(v1 + 6888);
      sub_1001009E4(v1 + 6888);
      v107 = "Invalid sendPairingData payload %{public}s";
LABEL_42:
      _os_log_impl(&_mh_execute_header, v97, v98, v107, v99, 0xCu);
      sub_100007BAC(v100);

LABEL_44:
      v52 = *(v1 + 17248);
      v53 = *(v1 + 17224);
      v54 = *(v1 + 17216);
      sub_100100904();
      swift_allocError();
      v118 = 0x8000000000000007;
LABEL_50:
      *v117 = v118;
      swift_willThrow();

      sub_1001009E4(v1 + 6888);
LABEL_51:
      (*(v53 + 8))(v52, v54);
LABEL_52:

      v131 = *(v1 + 8);
LABEL_53:

      return v131();
    }

    goto LABEL_43;
  }

  v59 = v0;
  memcpy(v59 + 1917, v59 + 1356, 0x108uLL);
  sub_1001019F4((v59 + 1917), (v59 + 1587));
  sub_1001019F4((v59 + 1917), (v59 + 1620));
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *&v410 = v63;
    *v62 = 136315138;
    v64 = Data.hexString.getter();
    v66 = sub_1000136BC(v64, v65, &v410);

    *(v62 + 4) = v66;
    sub_100101A50(v1 + 15336);
    sub_100101A50(v1 + 15336);
    _os_log_impl(&_mh_execute_header, v60, v61, "SerialNumber: %s", v62, 0xCu);
    sub_100007BAC(v63);
  }

  else
  {

    sub_100101A50((v0 + 1917));
    sub_100101A50((v0 + 1917));
  }

  sub_1001019F4(v1 + 15336, v1 + 13224);
  sub_1001019F4(v1 + 15336, v1 + 13488);
  v168 = Logger.logObject.getter();
  v169 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v168, v169))
  {
    v170 = swift_slowAlloc();
    v171 = swift_slowAlloc();
    *&v410 = v171;
    *v170 = 136315138;
    v172 = Data.hexString.getter();
    v174 = sub_1000136BC(v172, v173, &v410);

    *(v170 + 4) = v174;
    sub_100101A50(v1 + 15336);
    sub_100101A50(v1 + 15336);
    _os_log_impl(&_mh_execute_header, v168, v169, "AltSerialNumber: %s", v170, 0xCu);
    sub_100007BAC(v171);
  }

  else
  {

    sub_100101A50(v1 + 15336);
    sub_100101A50(v1 + 15336);
  }

  sub_1001019F4(v1 + 15336, v1 + 13752);
  sub_1001019F4(v1 + 15336, v1 + 14016);
  v175 = Logger.logObject.getter();
  v176 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v175, v176))
  {
    v177 = swift_slowAlloc();
    v178 = swift_slowAlloc();
    *&v410 = v178;
    *v177 = 136315138;
    v179 = Data.hexString.getter();
    v181 = sub_1000136BC(v179, v180, &v410);

    *(v177 + 4) = v181;
    sub_100101A50(v1 + 15336);
    sub_100101A50(v1 + 15336);
    _os_log_impl(&_mh_execute_header, v175, v176, "numberOfBeacons: %s", v177, 0xCu);
    sub_100007BAC(v178);
  }

  else
  {

    sub_100101A50(v1 + 15336);
    sub_100101A50(v1 + 15336);
  }

  sub_1001019F4(v1 + 15336, v1 + 14280);
  sub_1001019F4(v1 + 15336, v1 + 14544);
  v182 = Logger.logObject.getter();
  v183 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v182, v183))
  {
    v184 = swift_slowAlloc();
    v185 = swift_slowAlloc();
    *&v410 = v185;
    *v184 = 136315138;
    v186 = Data.hexString.getter();
    v188 = sub_1000136BC(v186, v187, &v410);

    *(v184 + 4) = v188;
    sub_100101A50(v1 + 15336);
    sub_100101A50(v1 + 15336);
    _os_log_impl(&_mh_execute_header, v182, v183, "otherSerialNumber: %s", v184, 0xCu);
    sub_100007BAC(v185);
  }

  else
  {

    sub_100101A50(v1 + 15336);
    sub_100101A50(v1 + 15336);
  }

  v74 = 15336;
  sub_1001019F4(v1 + 15336, v1 + 14808);
  sub_1001019F4(v1 + 15336, v1 + 15072);
  v189 = Logger.logObject.getter();
  v190 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v189, v190))
  {
    v191 = swift_slowAlloc();
    v192 = swift_slowAlloc();
    *&v410 = v192;
    *v191 = 136315138;
    v193 = Data.hexString.getter();
    v195 = sub_1000136BC(v193, v194, &v410);

    *(v191 + 4) = v195;
    sub_100101A50(v1 + 15336);
    sub_100101A50(v1 + 15336);
    _os_log_impl(&_mh_execute_header, v189, v190, "seed: %s", v191, 0xCu);
    sub_100007BAC(v192);
  }

  else
  {

    sub_100101A50(v1 + 15336);
    sub_100101A50(v1 + 15336);
  }

  sub_1001019F4(v1 + 15336, v1 + 552);
  sub_1001019F4(v1 + 15336, v1 + 12168);
  sub_1001019F4(v1 + 15336, v1 + 10584);
  v196 = Logger.logObject.getter();
  v197 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v196, v197))
  {

    sub_100101A50(v1 + 15336);
    sub_100101A50(v1 + 15336);
    sub_100101A50(v1 + 15336);
    goto LABEL_106;
  }

  v198 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  *&v410 = v13;
  *v198 = 134218242;
  v199 = *(v1 + 15416);
  v200 = *(v1 + 15424);
  v201 = v200 >> 62;
  if ((v200 >> 62) <= 1)
  {
    if (v201)
    {
      LODWORD(v202) = HIDWORD(v199) - v199;
      if (__OFSUB__(HIDWORD(v199), v199))
      {
        __break(1u);
LABEL_180:
        __break(1u);
        goto LABEL_181;
      }

      v202 = v202;
    }

    else
    {
      v202 = BYTE6(v200);
    }

    goto LABEL_105;
  }

  if (v201 == 2)
  {
    v206 = *(v199 + 16);
    v205 = *(v199 + 24);
    v207 = __OFSUB__(v205, v206);
    v202 = v205 - v206;
    if (!v207)
    {
      goto LABEL_105;
    }

    __break(1u);
    goto LABEL_89;
  }

  v202 = 0;
LABEL_105:
  *(v198 + 4) = v202;
  sub_100101A50(v1 + 15336);
  *(v198 + 12) = 2080;
  v250 = Data.hexString.getter();
  v252 = sub_1000136BC(v250, v251, &v410);

  *(v198 + 14) = v252;
  sub_100101A50(v1 + 15336);
  sub_100101A50(v1 + 15336);
  _os_log_impl(&_mh_execute_header, v196, v197, "attestation (S1) count %ld: %s", v198, 0x16u);
  sub_100007BAC(v13);

LABEL_106:
  sub_1001019F4(v1 + 15336, v1 + 10320);
  sub_1001019F4(v1 + 15336, v1 + 9792);
  sub_1001019F4(v1 + 15336, v1 + 9528);
  v253 = Logger.logObject.getter();
  v197 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v253, v197))
  {
    v254 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&v410 = v13;
    *v254 = 134218242;
    v255 = *(v1 + 15496);
    v200 = *(v1 + 15504);
    v256 = v200 >> 62;
    if ((v200 >> 62) > 1)
    {
      if (v256 != 2)
      {
        v257 = 0;
        goto LABEL_118;
      }

      v259 = *(v255 + 16);
      v258 = *(v255 + 24);
      v207 = __OFSUB__(v258, v259);
      v257 = v258 - v259;
      if (!v207)
      {
        goto LABEL_118;
      }

      __break(1u);
    }

    else if (!v256)
    {
      v257 = BYTE6(v200);
LABEL_118:
      *(v254 + 4) = v257;
      sub_100101A50(v1 + 15336);
      *(v254 + 12) = 2080;
      v260 = Data.hexString.getter();
      v262 = sub_1000136BC(v260, v261, &v410);

      *(v254 + 14) = v262;
      sub_100101A50(v1 + 15336);
      sub_100101A50(v1 + 15336);
      _os_log_impl(&_mh_execute_header, v253, v197, "BAA signature (S2) count %ld: %s", v254, 0x16u);
      sub_100007BAC(v13);

      goto LABEL_119;
    }

    LODWORD(v257) = HIDWORD(v255) - v255;
    if (!__OFSUB__(HIDWORD(v255), v255))
    {
      v257 = v257;
      goto LABEL_118;
    }

    goto LABEL_180;
  }

  sub_100101A50(v1 + 15336);
  sub_100101A50(v1 + 15336);
  sub_100101A50(v1 + 15336);
LABEL_119:
  sub_1001019F4(v1 + 15336, v1 + 9264);
  v263 = Logger.logObject.getter();
  v264 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v263, v264))
  {
    v265 = swift_slowAlloc();
    *v265 = 16777472;
    v265[4] = *(v1 + 15544);
    sub_100101A50(v1 + 15336);
    _os_log_impl(&_mh_execute_header, v263, v264, "beaconPartId: %hhu", v265, 5u);
  }

  else
  {

    sub_100101A50(v1 + 15336);
  }

  sub_1001019F4(v1 + 15336, v1 + 9000);
  sub_1001019F4(v1 + 15336, v1 + 8736);
  v266 = Logger.logObject.getter();
  v267 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v266, v267))
  {
    v268 = swift_slowAlloc();
    v269 = swift_slowAlloc();
    *&v410 = v269;
    *v268 = 136315138;
    v270 = Data.hexString.getter();
    v272 = sub_1000136BC(v270, v271, &v410);

    *(v268 + 4) = v272;
    sub_100101A50(v1 + 15336);
    sub_100101A50(v1 + 15336);
    _os_log_impl(&_mh_execute_header, v266, v267, "C1: %s", v268, 0xCu);
    sub_100007BAC(v269);
  }

  else
  {

    sub_100101A50(v1 + 15336);
    sub_100101A50(v1 + 15336);
  }

  sub_1001019F4(v1 + 15336, v1 + 8472);
  sub_1001019F4(v1 + 15336, v1 + 8208);
  v273 = Logger.logObject.getter();
  v274 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v273, v274))
  {
    v275 = swift_slowAlloc();
    v276 = swift_slowAlloc();
    *&v410 = v276;
    *v275 = 136315138;
    v277 = Data.hexString.getter();
    v279 = sub_1000136BC(v277, v278, &v410);

    *(v275 + 4) = v279;
    sub_100101A50(v1 + 15336);
    sub_100101A50(v1 + 15336);
    _os_log_impl(&_mh_execute_header, v273, v274, "Certs: %s", v275, 0xCu);
    sub_100007BAC(v276);
  }

  else
  {

    sub_100101A50(v1 + 15336);
    sub_100101A50(v1 + 15336);
  }

  sub_1001019F4(v1 + 15336, v1 + 7944);
  sub_1001019F4(v1 + 15336, v1 + 7680);
  v280 = Logger.logObject.getter();
  v281 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v280, v281))
  {
    v282 = swift_slowAlloc();
    v283 = swift_slowAlloc();
    *&v410 = v283;
    *v282 = 136315138;
    v284 = Data.hexString.getter();
    v286 = sub_1000136BC(v284, v285, &v410);

    *(v282 + 4) = v286;
    sub_100101A50(v1 + 15336);
    sub_100101A50(v1 + 15336);
    _os_log_impl(&_mh_execute_header, v280, v281, "AuthNonce: %s", v282, 0xCu);
    sub_100007BAC(v283);
  }

  else
  {

    sub_100101A50(v1 + 15336);
    sub_100101A50(v1 + 15336);
  }

  v287 = v1;
  sub_1001019F4(v287 + 15336, v287 + 7416);
  sub_1001019F4(v287 + 15336, v287 + 7152);
  v288 = Logger.logObject.getter();
  v289 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v288, v289))
  {
    v290 = swift_slowAlloc();
    v291 = swift_slowAlloc();
    *&v410 = v291;
    *v290 = 136315138;
    v292 = Data.hexString.getter();
    v294 = sub_1000136BC(v292, v293, &v410);

    *(v290 + 4) = v294;
    sub_100101A50(v1 + 15336);
    sub_100101A50(v1 + 15336);
    _os_log_impl(&_mh_execute_header, v288, v289, "CSR: %s", v290, 0xCu);
    sub_100007BAC(v291);
  }

  else
  {

    sub_100101A50(v1 + 15336);
    sub_100101A50(v1 + 15336);
  }

  v295 = *(v1 + 17288);
  v296 = *(v1 + 17032);
  *(v296 + 176) = 3;
  v297 = *(v296 + 184);
  v298 = *(v1 + 15336);
  v299 = *(v1 + 15344);

  sub_100017D5C(v298, v299);
  sub_1004A4714(v298, v299, &v410);
  if (v295)
  {

    v300 = xmmword_10138BBF0;
  }

  else
  {
    v300 = v410;
  }

  v301 = *(v297 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1);
  v302 = *(v297 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1 + 8);
  *(v297 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1) = v300;
  sub_100006654(v301, v302);

  v303 = *(v1 + 15368);
  v304 = *(v1 + 15376);
  v305 = (*(v296 + 184) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
  v306 = *v305;
  v307 = v305[1];
  *v305 = v303;
  v305[1] = v304;

  sub_100017D5C(v303, v304);
  sub_100006654(v306, v307);

  v308 = *(v1 + 15496);
  v309 = *(v1 + 15504);
  v310 = (*(v296 + 184) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaSignatureS2);
  v311 = *v310;
  v312 = v310[1];
  *v310 = v308;
  v310[1] = v309;

  sub_100017D5C(v308, v309);
  sub_100006654(v311, v312);

  v313 = *(v1 + 15416);
  v314 = *(v1 + 15424);
  v315 = (*(v296 + 184) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_scrtAttestation);
  v316 = *v315;
  v317 = v315[1];
  *v315 = v313;
  v315[1] = v314;

  sub_100017D5C(v313, v314);
  sub_100006654(v316, v317);

  v318 = *(v1 + 15400);
  v319 = *(v1 + 15408);
  v320 = (*(v296 + 184) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_seedK1);
  v321 = *v320;
  v322 = v320[1];
  *v320 = v318;
  v320[1] = v319;

  sub_100017D5C(v318, v319);
  sub_100006654(v321, v322);

  v323 = *(v296 + 184);
  v324 = (v323 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId);
  *v324 = *(v1 + 15544);
  v324[1] = 0;
  *(v1 + 16976) = *(v1 + 15352);
  sub_1000E0A3C();

  *(v323 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_numBeacons) = DataProtocol.intValue.getter();

  v325 = Data.trimmed.getter();
  v327 = v326;
  static String.Encoding.utf8.getter();
  v328 = String.init(data:encoding:)();
  v330 = v329;
  sub_100016590(v325, v327);
  if (!v330)
  {
    v331 = Data.trimmed.getter();
    v333 = v332;
    v328 = Data.hexString.getter();
    v330 = v334;
    sub_100016590(v331, v333);
  }

  *(v1 + 17384) = v330;
  swift_bridgeObjectRetain_n();
  v335 = Logger.logObject.getter();
  v336 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v335, v336))
  {
    v337 = swift_slowAlloc();
    v338 = swift_slowAlloc();
    *&v410 = v338;
    *v337 = 136446210;

    v339 = sub_1000136BC(v328, v330, &v410);

    *(v337 + 4) = v339;
    swift_bridgeObjectRelease_n();
    _os_log_impl(&_mh_execute_header, v335, v336, "beaconDisplayName: %{public}s", v337, 0xCu);
    sub_100007BAC(v338);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v340 = *(v1 + 17032);
  v341 = (*(v296 + 184) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryDisplayName);
  *v341 = v328;
  v341[1] = v330;

  v342 = *(v1 + 15568);
  v343 = *(v1 + 15576);
  v344 = (*(v296 + 184) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_authNonce);
  v345 = *v344;
  v346 = v344[1];
  *v344 = v342;
  v344[1] = v343;

  sub_100017D5C(v342, v343);
  sub_100006654(v345, v346);

  v347 = *(v1 + 15584);
  v348 = *(v1 + 15592);
  v349 = (*(v296 + 184) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_alternateSerialNumber);
  v350 = *v349;
  v351 = v349[1];
  *v349 = v347;
  v349[1] = v348;

  sub_100017D5C(v347, v348);
  sub_100006654(v350, v351);

  v352 = *(v1 + 15432);
  v353 = *(v1 + 15440);
  v354 = (*(v296 + 184) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryCerts);
  v355 = *v354;
  v356 = v354[1];
  *v354 = v352;
  v354[1] = v353;

  sub_100017D5C(v352, v353);
  sub_100006654(v355, v356);

  v357 = *(v1 + 15464);
  v358 = *(v1 + 15472);
  v359 = (*(v296 + 184) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_csr);
  v360 = *v359;
  v361 = v359[1];
  *v359 = v357;
  v359[1] = v358;

  sub_100017D5C(v357, v358);
  sub_100006654(v360, v361);

  v362 = Data.chunked(into:)();
  *(v1 + 17392) = v362;
  *(v1 + 17400) = sub_1000F7A60(v362);
  *(v1 + 17408) = 0;
  *(*(v296 + 184) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbers) = v362;

  if ((*(v340 + 272) & 1) == 0)
  {
    v166 = *(v1 + 17280);
    v167 = sub_1000F4F14;
LABEL_145:
    v364 = v167;
    v365 = 0;

    return _swift_task_switch(v364, v166, v365);
  }

  v363 = *(*(v1 + 17032) + 184);

  *(v363 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbersAndMACAddresses) = sub_1000F7BD0();

  v366 = swift_task_alloc();
  *(v1 + 17432) = v366;
  *v366 = v1;
  v366[1] = sub_1000F5908;
  v367 = *(v1 + 17248);
  v368 = *(v1 + 17024);

  return sub_1000F7F88(v1 + 16, v367, v368);
}

uint64_t sub_1000F442C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000F459C()
{
  v1 = v0[2163];
  v2 = v0[2160];
  v3 = v0[2155];
  v4 = v0[2153];
  v5 = v0[2152];
  (*(v4 + 16))(v3, v0[2128], v5);
  v6 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = swift_allocObject();
  v0[2171] = v7;
  *(v7 + 16) = v2;
  v1(v7 + v6, v3, v5);

  v8 = swift_task_alloc();
  v0[2172] = v8;
  *v8 = v0;
  v8[1] = sub_1000F4700;
  v9 = v0[2149];
  v10 = v0[2146];

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_100102B3C, v7, v10);
}

uint64_t sub_1000F4700()
{
  v1 = *(*v0 + 17032);

  return _swift_task_switch(sub_1000F482C, v1, 0);
}

uint64_t sub_1000F482C()
{
  v42 = v0;
  v1 = *(v0 + 17184);
  v2 = *(v0 + 17136);
  v3 = *(v0 + 17128);
  sub_1000D2A70(*(v0 + 17192), v1, &unk_1016AF8B0, &unk_1013A0700);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    sub_10000B3A8(*(v0 + 17184), &unk_1016AF8B0, &unk_1013A0700);
  }

  else
  {
    v4 = *(v0 + 17184);
    sub_10051578C(*(v0 + 17248));
    v6 = v5;
    sub_100101E70(v4, type metadata accessor for OwnedBeaconGroup);
    v7 = v6;
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_5;
    }
  }

  v7 = 255;
LABEL_5:
  v8 = sub_10110D3E0(*(v0 + 17192), v7);
  v10 = v9;
  v11 = *(v0 + 17360);
  v12 = *(v0 + 17352);
  v13 = *(v0 + 17344);
  v14 = *(v0 + 17336);
  v15 = *(v0 + 17288);
  sub_10000B3A8(*(v0 + 17192), &unk_1016AF8B0, &unk_1013A0700);
  v16 = sub_1000E0768(v14, v13, v12, v11);
  if (v15)
  {
    swift_errorRetain();
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138543362;
      swift_errorRetain();
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v30;
      *v29 = v30;

      _os_log_impl(&_mh_execute_header, v26, v27, "Unable to parse beacon group info due to %{public}@", v28, 0xCu);
      sub_10000B3A8(v29, &qword_10169BB30, &unk_10138B3C0);
    }

    else
    {
    }

    v31 = *(v0 + 17224);
    sub_1000F7068(v8, v10, (v0 + 1344));
    v32 = (v31 + 8);
    v33 = *(v0 + 17248);
    v34 = *(v0 + 17216);
    memcpy(__dst, (v0 + 1344), sizeof(__dst));

    sub_100016590(v8, v10);

    sub_1001009E4(v0 + 6888);
    (*v32)(v33, v34);
  }

  else
  {
    v17 = v16;
    swift_bridgeObjectRetain_n();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v41[0] = v21;
      *v20 = 136315138;
      type metadata accessor for MultipartAccessoryPairingInfo(0);
      sub_100101BAC();

      v22 = Dictionary.description.getter();
      v24 = v23;

      v25 = sub_1000136BC(v22, v24, v41);

      *(v20 + 4) = v25;
      swift_bridgeObjectRelease_n();
      _os_log_impl(&_mh_execute_header, v18, v19, "beaconGroupInfo: %s", v20, 0xCu);
      sub_100007BAC(v21);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    *(*(*(v0 + 17032) + 184) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds) = v17;

    sub_1000F7068(v8, v10, (v0 + 1608));
    v35 = *(v0 + 17248);
    v36 = *(v0 + 17224);
    v37 = *(v0 + 17216);
    memcpy(__dst, (v0 + 1608), sizeof(__dst));

    sub_100016590(v8, v10);
    sub_1001009E4(v0 + 6888);
    (*(v36 + 8))(v35, v37);
  }

  memcpy(*(v0 + 17000), __dst, 0x108uLL);

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_1000F4F14()
{
  v1 = v0[2163];
  v2 = v0[2160];
  v3 = v0[2155];
  v4 = v0[2153];
  v5 = v0[2152];
  (*(v4 + 16))(v3, v0[2128], v5);
  v6 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = swift_allocObject();
  v0[2177] = v7;
  *(v7 + 16) = v2;
  v1(v7 + v6, v3, v5);

  v8 = swift_task_alloc();
  v0[2178] = v8;
  *v8 = v0;
  v8[1] = sub_1000F5078;
  v9 = v0[2147];
  v10 = v0[2146];

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_100101AA4, v7, v10);
}

uint64_t sub_1000F5078()
{
  v1 = *(*v0 + 17032);

  return _swift_task_switch(sub_1000F51A4, v1, 0);
}

uint64_t sub_1000F51A4()
{
  v42 = v0;
  v1 = v0[2147];
  v2 = v0[2141];
  if ((*(v0[2142] + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &unk_1016AF8B0, &unk_1013A0700);
    v3 = v0[2176];
  }

  else
  {
    v3 = v0[2176];
    v4 = v0[2175];
    v5 = v0[2144];
    sub_100101DA0(v1, v5, type metadata accessor for OwnedBeaconGroup);
    v6 = sub_1003CDA20(*(v5 + *(v2 + 40)));
    v7 = sub_1011299C8(v6);

    v8 = sub_100101618(v4, v7);

    if (!v8)
    {
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v41[0] = swift_slowAlloc();
        *v25 = 136315394;

        v26 = Array.description.getter();
        v28 = v27;

        v29 = sub_1000136BC(v26, v28, v41);

        *(v25 + 4) = v29;
        swift_bridgeObjectRelease_n();
        *(v25 + 12) = 2080;
        sub_100101BAC();

        v30 = Set.description.getter();
        v32 = v31;

        v33 = sub_1000136BC(v30, v32, v41);

        *(v25 + 14) = v33;

        swift_bridgeObjectRelease_n();
        _os_log_impl(&_mh_execute_header, v23, v24, "Invalid otherSerialNumbers: %s. allSerialNumbers: %s", v25, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
      }

      v34 = v0[2156];
      v35 = v0[2153];
      v36 = v0[2152];
      v38 = v0[2144];
      sub_1005160CC(v0[2166]);
      sub_100100904();
      swift_allocError();
      *v39 = 0x8000000000000007;
      swift_willThrow();

      sub_1001009E4((v0 + 861));
      sub_100101A50((v0 + 1917));
      sub_100101E70(v38, type metadata accessor for OwnedBeaconGroup);
      goto LABEL_17;
    }

    sub_100101E70(v0[2144], type metadata accessor for OwnedBeaconGroup);
  }

  v9 = *(v0[2129] + 184);

  v10 = sub_1000F7BD0();
  if (v3)
  {
    v11 = v3;

    swift_errorRetain();
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v41[0] = v15;
      *v14 = 136446210;
      v0[2124] = v11;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v16 = String.init<A>(describing:)();
      v18 = sub_1000136BC(v16, v17, v41);

      *(v14 + 4) = v18;

      _os_log_impl(&_mh_execute_header, v12, v13, "Unable to parse otherSerialNumbersAndMacAddressesMap due to %{public}s", v14, 0xCu);
      sub_100007BAC(v15);
    }

    else
    {
    }

    v34 = v0[2156];
    v35 = v0[2153];
    v36 = v0[2152];
    sub_100100904();
    swift_allocError();
    *v37 = 0x8000000000000007;
    swift_willThrow();

    sub_1001009E4((v0 + 861));

    sub_100101A50((v0 + 1917));
LABEL_17:
    (*(v35 + 8))(v34, v36);

    v40 = v0[1];

    return v40();
  }

  *(v9 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbersAndMACAddresses) = v10;

  v19 = swift_task_alloc();
  v0[2179] = v19;
  *v19 = v0;
  v19[1] = sub_1000F5908;
  v20 = v0[2156];
  v21 = v0[2128];

  return sub_1000F7F88((v0 + 2), v20, v21);
}

uint64_t sub_1000F5908()
{
  v1 = *(*v0 + 17032);

  return _swift_task_switch(sub_1000F5A18, v1, 0);
}

uint64_t sub_1000F5A18()
{
  v22 = v0;
  if (*(v0 + 280))
  {
    v1 = *(v0 + 32);
    *(v0 + 16544) = *(v0 + 16);
    *(v0 + 16560) = v1;
    *(v0 + 16569) = *(v0 + 41);
    sub_100101AA8(v0 + 16544, v0 + 16592);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 136446210;
      v20 = v5;
      v6 = sub_1013181BC();
      v8 = sub_1000136BC(v6, v7, &v20);

      *(v4 + 4) = v8;

      sub_100101B04(v0 + 16592);
      _os_log_impl(&_mh_execute_header, v2, v3, "Unable to generate finalizeCommand payload due to %{public}s", v4, 0xCu);
      sub_100007BAC(v5);
    }

    else
    {

      sub_100101B04(v0 + 16592);
    }

    v12 = *(v0 + 17248);
    v13 = *(v0 + 17224);
    v14 = *(v0 + 17216);
    sub_100101B58();
    v15 = swift_allocError();
    sub_100101AA8(v0 + 16544, v16);
    sub_100100904();
    swift_allocError();
    *v17 = v15;
    swift_willThrow();

    sub_1001009E4(v0 + 6888);
    sub_100101A50(v0 + 15336);
    sub_100101B04(v0 + 16544);
    (*(v13 + 8))(v12, v14);

    v18 = *(v0 + 8);
  }

  else
  {

    memcpy(__dst, (v0 + 16), sizeof(__dst));
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Successfully generated finalize pairing command.", v11, 2u);

      sub_1001009E4(v0 + 6888);
      sub_100101A50(v0 + 15336);
    }

    else
    {

      sub_100101A50(v0 + 15336);
      sub_1001009E4(v0 + 6888);
    }

    (*(*(v0 + 17224) + 8))(*(v0 + 17248), *(v0 + 17216));
    memcpy(*(v0 + 17000), __dst, 0x108uLL);

    v18 = *(v0 + 8);
  }

  return v18();
}

uint64_t sub_1000F5F78()
{
  v1 = *(*v0 + 17032);

  return _swift_task_switch(sub_1000F6088, v1, 0);
}

uint64_t sub_1000F6088()
{
  v61 = v0;
  v1 = *(v0 + 17120);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = *v1;
    sub_100101804(*v1);
    sub_100101804(v2);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138543362;
      sub_100100904();
      swift_allocError();
      *v7 = v2;
      sub_100101804(v2);
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v8;
      *v6 = v8;
      sub_100101814(v2);
      sub_100101814(v2);
      _os_log_impl(&_mh_execute_header, v3, v4, "Failed to create new beacon. %{public}@", v5, 0xCu);
      sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);
    }

    else
    {

      sub_100101814(v2);
      sub_100101814(v2);
    }

    v29 = *(v0 + 17248);
    v30 = *(v0 + 17224);
    v31 = *(v0 + 17216);
    sub_100100904();
    swift_allocError();
    *v32 = 0x8000000000000007;
    swift_willThrow();

    sub_10000B3A8(v0 + 15600, &qword_101697328, &unk_10138BEA0);
    sub_1001009E4(v0 + 6888);
    sub_100101814(v2);
    sub_1001016B0(v0 + 16336);
    (*(v30 + 8))(v29, v31);
    sub_100007BAC((v0 + 16680));

    v33 = *(v0 + 8);
  }

  else
  {
    v9 = *(v0 + 17104);
    v10 = *(v0 + 17096);
    sub_100101DA0(v1, v9, type metadata accessor for AirPodsLEPairingService.BeaconCreationResult);
    sub_100101E08(v9, v10, type metadata accessor for AirPodsLEPairingService.BeaconCreationResult);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100101DA0(*(v0 + 17096), *(v0 + 17056), type metadata accessor for StandaloneBeacon);
      if (qword_1016950D0 != -1)
      {
        swift_once();
      }

      v11 = *(v0 + 17056);
      v12 = *(v0 + 17048);
      v13 = *(v0 + 17040);
      sub_1000076D4(*(v0 + 17320), qword_10177C418);
      sub_100101E08(v11, v12, type metadata accessor for StandaloneBeacon);
      sub_100101E08(v11, v13, type metadata accessor for StandaloneBeacon);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      v16 = os_log_type_enabled(v14, v15);
      v17 = *(v0 + 17104);
      v18 = *(v0 + 17056);
      v19 = *(v0 + 17048);
      v20 = *(v0 + 17040);
      if (v16)
      {
        v21 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *v21 = 136315651;
        v22 = sub_100B9B27C();
        v58 = v17;
        v24 = sub_1000136BC(v22, v23, &v59);

        *(v21 + 4) = v24;
        sub_100101E70(v19, type metadata accessor for StandaloneBeacon);
        *(v21 + 12) = 2160;
        *(v21 + 14) = 1752392040;
        *(v21 + 22) = 2081;
        type metadata accessor for UUID();
        sub_100102448(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v25 = dispatch thunk of CustomStringConvertible.description.getter();
        v27 = sub_1000136BC(v25, v26, &v59);

        *(v21 + 24) = v27;
        sub_100101E70(v20, type metadata accessor for StandaloneBeacon);
        _os_log_impl(&_mh_execute_header, v14, v15, "Created standalone beacon: %s. BeaconId: %{private,mask.hash}s", v21, 0x20u);
        swift_arrayDestroy();

        sub_100101E70(v18, type metadata accessor for StandaloneBeacon);
        v28 = v58;
      }

      else
      {

        sub_100101E70(v20, type metadata accessor for StandaloneBeacon);
        sub_100101E70(v19, type metadata accessor for StandaloneBeacon);
        sub_100101E70(v18, type metadata accessor for StandaloneBeacon);
        v28 = v17;
      }

      sub_100101E70(v28, type metadata accessor for AirPodsLEPairingService.BeaconCreationResult);
      *(*(v0 + 17032) + 176) = 9;
    }

    else
    {
      v34 = *(v0 + 17144);
      v35 = *(v0 + 17096);
      v36 = *(v0 + 17080);
      v37 = *(v0 + 17072);
      v38 = *(sub_1000BC4D4(&qword_101697330, &qword_101391910) + 48);
      sub_100101DA0(v35, v34, type metadata accessor for OwnedBeaconGroup);
      sub_100101DA0(v35 + v38, v36, type metadata accessor for OwnedBeaconRecord);
      sub_100101E08(v36, v37, type metadata accessor for OwnedBeaconRecord);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();
      v41 = os_log_type_enabled(v39, v40);
      v42 = *(v0 + 17072);
      if (v41)
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v59 = v44;
        *v43 = 141558275;
        *(v43 + 4) = 1752392040;
        *(v43 + 12) = 2081;
        type metadata accessor for UUID();
        sub_100102448(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v45 = dispatch thunk of CustomStringConvertible.description.getter();
        v47 = sub_1000136BC(v45, v46, &v59);

        *(v43 + 14) = v47;
        sub_100101E70(v42, type metadata accessor for OwnedBeaconRecord);
        _os_log_impl(&_mh_execute_header, v39, v40, "Saved new beacon: %{private,mask.hash}s. Proceed to sending pairing complete.", v43, 0x16u);
        sub_100007BAC(v44);
      }

      else
      {

        sub_100101E70(v42, type metadata accessor for OwnedBeaconRecord);
      }

      if (sub_100518118())
      {
        *(*(v0 + 17032) + 176) = 9;
      }

      v48 = *(v0 + 17144);
      v49 = *(v0 + 17104);
      v50 = *(v0 + 17080);
      sub_100A5187C(v50);
      sub_100101E70(v50, type metadata accessor for OwnedBeaconRecord);
      sub_100101E70(v48, type metadata accessor for OwnedBeaconGroup);
      sub_100101E70(v49, type metadata accessor for AirPodsLEPairingService.BeaconCreationResult);
    }

    v51 = *(v0 + 17248);
    v52 = *(v0 + 17224);
    v53 = *(v0 + 17216);
    *(v0 + 284) = sub_100101428();
    sub_100101824();
    v54 = FixedWidthInteger.data.getter();
    v56 = v55;

    sub_10000B3A8(v0 + 15600, &qword_101697328, &unk_10138BEA0);
    sub_1001009E4(v0 + 6888);
    sub_1001016B0(v0 + 16336);
    (*(v52 + 8))(v51, v53);
    *(v0 + 10056) = v54;
    *(v0 + 10064) = v56;
    sub_100101878(v0 + 10056);
    sub_100007BAC((v0 + 16680));
    memcpy(__dst, (v0 + 10056), sizeof(__dst));
    memcpy(*(v0 + 17000), __dst, 0x108uLL);

    v33 = *(v0 + 8);
  }

  return v33();
}

uint64_t sub_1000F6B50()
{

  sub_100006654(*(v0 + 160), *(v0 + 168));

  sub_10000B3A8(v0 + 192, &qword_101697380, &unk_10138BEF0);
  sub_10000B3A8(v0 + 232, &qword_1016973E8, &unk_10138BFA0);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000F6BD8()
{
  sub_1000F6B50();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000F6C28(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for AirPodsLEPairingService();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v5, a2);
}

uint64_t sub_1000F6CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for AirPodsLEPairingService();
  *v8 = v4;
  v8[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v9, a4);
}

uint64_t sub_1000F6D94(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for AirPodsLEPairingService();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v5, a2);
}

uint64_t sub_1000F6E3C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_1000E5624();
}

uint64_t sub_1000F6EC8(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for AirPodsLEPairingService();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.run()(v5, a2);
}

uint64_t sub_1000F6F70()
{
  type metadata accessor for AirPodsLEPairingService();
  sub_100102448(&unk_1016B1150, v0, type metadata accessor for AirPodsLEPairingService, &unk_10138BD00);
  return ActorServiceProtocol.description.getter();
}

void *sub_1000F7068@<X0>(void *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(v3 + 184);
  v5 = *(v4 + 48);
  if (v5 >> 60 == 15)
  {
    if (qword_101694440 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_101696FF8);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Missing E1 blob to generate init pairing.", v9, 2u);
    }

    sub_100100904();
    swift_allocError();
    *v10 = 0x8000000000000000;
    return swift_willThrow();
  }

  v12 = *(v4 + 40);
  v13 = (v4 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_findMyNetworkId);
  v14 = v13[1];
  if (v14 >> 60 == 15)
  {
    sub_100017D5C(v12, v5);
    if (qword_101694440 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000076D4(v15, qword_101696FF8);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Missing FindMyNetworkId to generate init pairing.", v18, 2u);
    }

    sub_100100904();
    swift_allocError();
    *v19 = 0x8000000000000000;
    swift_willThrow();
    return sub_100006654(v12, v5);
  }

  v20 = v3;
  v22 = *v13;
  if (*(v3 + 272) == 1)
  {
    sub_10002E98C(v12, v5);
    sub_10002E98C(v22, v14);
    v23 = 0;
  }

  else
  {
    My = type metadata accessor for Feature.FindMy();
    *&__src[24] = My;
    *&__src[32] = sub_100102448(&qword_1016AF950, 255, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
    v25 = sub_1000280DC(__src);
    (*(*(My - 8) + 104))(v25, enum case for Feature.FindMy.alphaWasp(_:), My);
    sub_10002E98C(v12, v5);
    sub_10002E98C(v22, v14);
    LOBYTE(My) = isFeatureEnabled(_:)();
    sub_100007BAC(__src);
    v23 = My & 1;
  }

  v26 = *(v20 + 184);
  v27 = *(v26 + 16);
  v28 = *(v26 + 24);
  v102 = v23;
  sub_10002E98C(v12, v5);
  sub_10002E98C(v22, v14);
  v96 = v27;
  sub_100017D5C(v27, v28);
  sub_1000198E8();
  v30 = FixedWidthInteger.data.getter();
  v95 = v28;
  v31 = v28 >> 62;
  if ((v28 >> 62) <= 1)
  {
    result = a1;
    if (!v31)
    {
      v32 = BYTE6(v28);
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  result = a1;
  if (v31 != 2)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v34 = *(v96 + 16);
  v33 = *(v96 + 24);
  v35 = __OFSUB__(v33, v34);
  v32 = v33 - v34;
  if (v35)
  {
    __break(1u);
LABEL_23:
    LODWORD(v32) = HIDWORD(v96) - v96;
    if (__OFSUB__(HIDWORD(v96), v96))
    {
      __break(1u);
      goto LABEL_86;
    }

    v32 = v32;
  }

LABEL_25:
  if (v32 != 32)
  {
    goto LABEL_92;
  }

  v36 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v36)
    {
      v37 = BYTE6(v5);
      goto LABEL_35;
    }

LABEL_33:
    LODWORD(v37) = HIDWORD(v12) - v12;
    if (!__OFSUB__(HIDWORD(v12), v12))
    {
      v37 = v37;
      goto LABEL_35;
    }

LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  if (v36 != 2)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v39 = *(v12 + 16);
  v38 = *(v12 + 24);
  v35 = __OFSUB__(v38, v39);
  v37 = v38 - v39;
  if (v35)
  {
    __break(1u);
    goto LABEL_33;
  }

LABEL_35:
  if (v37 != 113)
  {
    goto LABEL_93;
  }

  v40 = v14 >> 62;
  if ((v14 >> 62) <= 1)
  {
    if (!v40)
    {
      v41 = BYTE6(v14);
      goto LABEL_45;
    }

LABEL_43:
    LODWORD(v41) = HIDWORD(v22) - v22;
    if (!__OFSUB__(HIDWORD(v22), v22))
    {
      v41 = v41;
      goto LABEL_45;
    }

LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  if (v40 != 2)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v43 = *(v22 + 16);
  v42 = *(v22 + 24);
  v35 = __OFSUB__(v42, v43);
  v41 = v42 - v43;
  if (v35)
  {
    __break(1u);
    goto LABEL_43;
  }

LABEL_45:
  if (v41 != 32)
  {
    goto LABEL_94;
  }

  v44 = v29 >> 62;
  if ((v29 >> 62) <= 1)
  {
    if (!v44)
    {
      v45 = BYTE6(v29);
      goto LABEL_55;
    }

LABEL_53:
    LODWORD(v45) = HIDWORD(v30) - v30;
    if (!__OFSUB__(HIDWORD(v30), v30))
    {
      v45 = v45;
      goto LABEL_55;
    }

LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  if (v44 != 2)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v47 = *(v30 + 16);
  v46 = *(v30 + 24);
  v35 = __OFSUB__(v46, v47);
  v45 = v46 - v47;
  if (v35)
  {
    __break(1u);
    goto LABEL_53;
  }

LABEL_55:
  if (v45 != 1)
  {
    goto LABEL_95;
  }

  v48 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v48)
    {
      v49 = BYTE6(a2);
      goto LABEL_65;
    }

LABEL_63:
    LODWORD(v49) = HIDWORD(result) - result;
    if (!__OFSUB__(HIDWORD(result), result))
    {
      v49 = v49;
      goto LABEL_65;
    }

LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  if (v48 != 2)
  {
LABEL_96:
    __break(1u);
    return result;
  }

  v51 = result[2];
  v50 = result[3];
  v35 = __OFSUB__(v50, v51);
  v49 = v50 - v51;
  if (v35)
  {
    __break(1u);
    goto LABEL_63;
  }

LABEL_65:
  if (v49 != 96)
  {
    goto LABEL_96;
  }

  *&v100 = result;
  *(&v100 + 1) = a2;
  v92 = v29;
  v93 = v22;
  if (v48 == 2)
  {
    v54 = result[2];
    v53 = result[3];
    v52 = v53 - v54;
    if (!__OFSUB__(v53, v54))
    {
      goto LABEL_71;
    }

    goto LABEL_91;
  }

  if (v48 == 1)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      v52 = HIDWORD(result) - result;
LABEL_71:
      sub_100017D5C(result, a2);
      goto LABEL_73;
    }

    goto LABEL_90;
  }

  v52 = BYTE6(a2);
LABEL_73:
  if (__OFSUB__(96, v52))
  {
    __break(1u);
    goto LABEL_84;
  }

  v89 = v30;
  v101 = v23;
  v90 = v12;
  v91 = v5;
  *__src = sub_100845C88(96 - v52);
  *&__src[8] = v55;
  sub_100776394(__src, 0);
  v56 = *__src;
  v57 = *&__src[8];
  Data.append(_:)();
  sub_100016590(v56, v57);
  v88 = v100;
  if (qword_101694440 != -1)
  {
LABEL_84:
    swift_once();
  }

  v58 = type metadata accessor for Logger();
  sub_1000076D4(v58, qword_101696FF8);

  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    *__src = v86;
    *v61 = 136315138;
    v62 = *(v20 + 184);
    v64 = *(v62 + 16);
    v63 = *(v62 + 24);
    sub_100017D5C(v64, v63);
    v65 = a2;
    v66 = v14;
    v67 = Data.hexString.getter();
    v69 = v68;
    sub_100016590(v64, v63);
    v70 = v67;
    v14 = v66;
    a2 = v65;
    v71 = sub_1000136BC(v70, v69, __src);

    *(v61 + 4) = v71;
    _os_log_impl(&_mh_execute_header, v59, v60, "sessionNonce: %s", v61, 0xCu);
    sub_100007BAC(v86);
  }

  sub_100017D5C(a1, a2);
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.default.getter();
  sub_100016590(a1, a2);
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *__src = v75;
    *v74 = 136315138;
    v76 = Data.hexString.getter();
    v78 = sub_1000136BC(v76, v77, __src);

    *(v74 + 4) = v78;
    _os_log_impl(&_mh_execute_header, v72, v73, "companionSessionNonce: %s", v74, 0xCu);
    sub_100007BAC(v75);
  }

  *__src = v96;
  *&__src[8] = v95;
  *&__src[16] = v90;
  *&__src[24] = v91;
  *&__src[32] = v93;
  *&__src[40] = v14;
  *&__src[48] = v88;
  *&__src[64] = v89;
  *&__src[72] = v92;
  sub_100101C00(__src);
  sub_100017D5C(v93, v14);
  v79 = Logger.logObject.getter();
  v80 = static os_log_type_t.default.getter();
  sub_100006654(v93, v14);
  if (os_log_type_enabled(v79, v80))
  {
    v87 = v14;
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v98 = v82;
    *v81 = 141558531;
    *(v81 + 4) = 1752392040;
    *(v81 + 12) = 2081;
    sub_100101CD0();
    v83 = RawRepresentable<>.hexString.getter();
    v85 = sub_1000136BC(v83, v84, &v98);

    *(v81 + 14) = v85;
    *(v81 + 22) = 256;
    *(v81 + 24) = v101;
    _os_log_impl(&_mh_execute_header, v79, v80, "generateInitPairingPayload request success: fmNetworkId: %{private,mask.hash}s, accountHint: %hhu.", v81, 0x19u);
    sub_100007BAC(v82);

    sub_100006654(v93, v87);
    sub_100006654(v90, v91);
  }

  else
  {
    sub_100006654(v90, v91);

    sub_100006654(v93, v14);
  }

  return memcpy(a3, __src, 0x108uLL);
}

uint64_t sub_1000F7A60(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = 0;
  v3 = result + 32;
  v4 = _swiftEmptyArrayStorage;
  do
  {
    for (i = v2; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }

      v2 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_18;
      }

      v13 = *(v3 + 16 * i);
      v6 = *(v3 + 16 * i + 8);
      sub_100017D5C(v13, *(&v13 + 1));
      sub_1000E0A3C();
      if ((DataProtocol.isNull.getter() & 1) == 0)
      {
        break;
      }

      result = sub_100016590(v13, v6);
      if (v2 == v1)
      {
        return v4;
      }
    }

    v7 = Data.trimmed.getter();
    v9 = v8;
    sub_100016590(v13, v6);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100A5B840(0, *(v4 + 2) + 1, 1, v4);
      v4 = result;
    }

    v11 = *(v4 + 2);
    v10 = *(v4 + 3);
    if (v11 >= v10 >> 1)
    {
      result = sub_100A5B840((v10 > 1), v11 + 1, 1, v4);
      v4 = result;
    }

    *(v4 + 2) = v11 + 1;
    v12 = &v4[16 * v11];
    *(v12 + 4) = v7;
    *(v12 + 5) = v9;
  }

  while (v2 != v1);
  return v4;
}

void *sub_1000F7BD0()
{
  v23 = _swiftEmptyDictionarySingleton;
  v22 = *(v0 + 16);
  sub_1000E0A3C();
  v1 = DataProtocol.intValue.getter();
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C418);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134349056;
    *(v5 + 4) = v1;
    _os_log_impl(&_mh_execute_header, v3, v4, "Number of beacons: %{public}ld", v5, 0xCu);
  }

  if (v1 < 2)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v6 = Data.chunked(into:)();
  sub_1000E44F8(v6, &v23);

  v7 = v23;
  v8 = v23[2];
  v9 = Logger.logObject.getter();
  if (v8 == v1 - 1)
  {
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *&v22 = v12;
      *v11 = 136315138;

      sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
      sub_100101BAC();
      v13 = Dictionary.description.getter();
      v15 = v14;

      v16 = sub_1000136BC(v13, v15, &v22);

      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v9, v10, "serialNumbersAndMacAddressesMap: %s", v11, 0xCu);
      sub_100007BAC(v12);
    }
  }

  else
  {
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134349056;
      *(v18 + 4) = v7[2];
      _os_log_impl(&_mh_execute_header, v9, v17, "Unexpected number of other serial numbers: %{public}ld", v18, 0xCu);
    }

    v19 = type metadata accessor for BinaryEncodingError();
    sub_100102448(&qword_101696E20, 255, &type metadata accessor for BinaryEncodingError, &protocol conformance descriptor for BinaryEncodingError);
    swift_allocError();
    (*(*(v19 - 8) + 104))(v20, enum case for BinaryEncodingError.encodingError(_:), v19);
    swift_willThrow();
  }

  return v7;
}

uint64_t sub_1000F7F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[277] = v3;
  v4[276] = a3;
  v4[275] = a2;
  v4[274] = a1;
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v4[278] = swift_task_alloc();
  v4[279] = type metadata accessor for AirPodsSWPairingLockCheckResponse(0);
  v4[280] = swift_task_alloc();
  v4[281] = swift_task_alloc();
  v4[282] = swift_task_alloc();
  v4[283] = sub_1000BC4D4(&qword_101697360, &unk_10138BED0);
  v4[284] = swift_task_alloc();
  v5 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v4[285] = v5;
  v4[286] = *(v5 - 8);
  v4[287] = swift_task_alloc();
  v4[288] = swift_task_alloc();
  v4[289] = sub_1000BC4D4(&qword_101696E38, &qword_1013D8510);
  v4[290] = swift_task_alloc();
  v4[291] = swift_task_alloc();
  v4[292] = swift_task_alloc();
  v4[293] = swift_task_alloc();
  v4[294] = swift_task_alloc();
  v6 = type metadata accessor for HashAlgorithm();
  v4[295] = v6;
  v4[296] = *(v6 - 8);
  v4[297] = swift_task_alloc();
  v7 = type metadata accessor for MACAddress();
  v4[298] = v7;
  v8 = *(v7 - 8);
  v4[299] = v8;
  v4[300] = *(v8 + 64);
  v4[301] = swift_task_alloc();
  v4[302] = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v4[303] = swift_task_alloc();
  v9 = swift_task_alloc();
  v4[304] = v9;
  *v9 = v4;
  v9[1] = sub_1000F82B4;

  return daemon.getter();
}

uint64_t sub_1000F82B4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 2440) = a1;

  v3 = swift_task_alloc();
  *(v2 + 2448) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100102448(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100102448(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_1000F8498;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1000F8498(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 2456) = a1;

  v4 = *(v3 + 2216);
  if (v1)
  {

    v5 = sub_1000FA8A4;
  }

  else
  {

    v5 = sub_1000F85FC;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1000F85FC()
{
  v36 = v0;
  v1 = *(v0 + 2216);
  v2 = (*(v1 + 184) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1);
  v3 = *v2;
  *(v0 + 2464) = *v2;
  v4 = v2[1];
  *(v0 + 2472) = v4;
  if (v4 >> 60 == 15)
  {
    if (qword_101694440 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_101696FF8);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Missing C1 from accessory!", v8, 2u);
    }

    v9 = *(v0 + 2192);

    *v9 = 0xD00000000000001ALL;
    v10 = "Missing C1 from accessory!";
LABEL_17:
    *(v9 + 8) = (v10 - 32) | 0x8000000000000000;
    *(v9 + 40) = 9;
    *(v9 + 264) = 1;

    v32 = *(v0 + 8);

    return v32();
  }

  sub_10002E98C(v3, v4);
  sub_100017D5C(v3, v4);
  sub_1000FDDD8((v0 + 1816), v3, v4);
  sub_100006654(v3, v4);
  if (!*(v0 + 1840))
  {
    sub_10000B3A8(v0 + 1816, &qword_101697370, &unk_10138BEE0);
    if (qword_101694440 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_1000076D4(v28, qword_101696FF8);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "collaborativeKeyC2 generation error.", v31, 2u);
    }

    v9 = *(v0 + 2192);

    sub_100006654(v3, v4);

    *v9 = 0xD000000000000026;
    v10 = "Unable to generate collaborativeKeyC2!";
    goto LABEL_17;
  }

  v11 = *(v0 + 2216);
  sub_10000A748((v0 + 1816), v0 + 1896);
  sub_10000A748((v0 + 1856), v0 + 1936);
  v12 = *(v1 + 184);
  sub_10001F280(v0 + 1896, v0 + 1976);
  v13 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC2;
  swift_beginAccess();

  sub_10002311C(v0 + 1976, v12 + v13, &qword_101697378, &unk_101391940);
  swift_endAccess();

  sub_10001F280(v0 + 1936, v0 + 2016);
  swift_beginAccess();
  sub_10002311C(v0 + 2016, v11 + 192, &qword_101697380, &unk_10138BEF0);
  swift_endAccess();
  if (qword_101694440 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  *(v0 + 2480) = sub_1000076D4(v14, qword_101696FF8);
  sub_10001F280(v0 + 1896, v0 + 2056);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v35 = v18;
    *v17 = 136315138;
    v19 = *(v0 + 2080);
    v20 = *(v0 + 2088);
    sub_1000035D0((v0 + 2056), v19);
    v21 = (*(*(*(v20 + 8) + 8) + 40))(v19);
    v23 = v22;
    v24 = Data.hexString.getter();
    v26 = v25;
    sub_100016590(v21, v23);
    sub_100007BAC((v0 + 2056));
    v27 = sub_1000136BC(v24, v26, &v35);

    *(v17 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v15, v16, "C2: %s", v17, 0xCu);
    sub_100007BAC(v18);
  }

  else
  {

    sub_100007BAC((v0 + 2056));
  }

  v34 = *(v0 + 2456);

  return _swift_task_switch(sub_1000F8C28, v34, 0);
}

uint64_t sub_1000F8C28()
{
  v1 = v0[307];
  v2 = v0[301];
  v3 = v0[299];
  v4 = v0[298];
  (*(v3 + 16))(v2, v0[276], v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[311] = v6;
  *(v6 + 16) = v1;
  (*(v3 + 32))(v6 + v5, v2, v4);

  v7 = swift_task_alloc();
  v0[312] = v7;
  *v7 = v0;
  v7[1] = sub_1000F8D94;
  v8 = v0[303];
  v9 = v0[302];

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_100102B3C, v6, v9);
}

uint64_t sub_1000F8D94()
{
  v1 = *(*v0 + 2216);

  return _swift_task_switch(sub_1000F8EC0, v1, 0);
}

unint64_t sub_1000F8EC0()
{
  v99 = v0;
  v1 = v0[303];
  v2 = type metadata accessor for OwnedBeaconGroup(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &unk_1016AF8B0, &unk_1013A0700);
    v3 = 0;
  }

  else
  {
    v3 = *(v1 + *(v2 + 40));

    sub_100101E70(v1, type metadata accessor for OwnedBeaconGroup);
  }

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v98 = v7;
    *v6 = 136315138;
    v0[273] = v3;

    sub_1000BC4D4(&qword_101697390, &unk_10138BF20);
    v8 = String.init<A>(describing:)();
    v10 = v3;
    v11 = sub_1000136BC(v8, v9, &v98);

    *(v6 + 4) = v11;
    v3 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Existing beaconMap: %s", v6, 0xCu);
    sub_100007BAC(v7);
  }

  v12 = v0[297];
  v13 = v0[296];
  v14 = v0[295];
  v15 = v0[240];
  v16 = v0[241];
  sub_1000035D0(v0 + 237, v15);
  v17 = (*(*(*(v16 + 8) + 8) + 40))(v15);
  v19 = v18;
  (*(v13 + 104))(v12, enum case for HashAlgorithm.sha256(_:), v14);
  v20 = Data.hash(algorithm:)();
  v22 = v21;
  v0[313] = v20;
  v0[314] = v21;
  sub_100016590(v17, v19);
  (*(v13 + 8))(v12, v14);
  v23 = v3;
  if (!v3)
  {
    v75 = v20;
    v76 = v22;
    v84 = v0[293];
    v85 = v0[294];
    v82 = v0[291];
    v83 = v0[292];
    v81 = v0[290];
    v97 = v0[289];
    v24 = *(*(v0[277] + 184) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds);
    v27 = *(v24 + 64);
    v26 = v24 + 64;
    v25 = v27;
    v79 = v0[286];
    v28 = -1;
    v29 = -1 << *(*(*(v0[277] + 184) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds) + 32);
    if (-v29 < 64)
    {
      v28 = ~(-1 << -v29);
    }

    v30 = v28 & v25;
    v31 = (63 - v29) >> 6;
    v86 = *(*(v0[277] + 184) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds);
    result = swift_bridgeObjectRetain_n();
    v33 = 0;
    v23 = _swiftEmptyDictionarySingleton;
    v77 = v31;
    v78 = v26;
    v80 = v0;
    while (1)
    {
      if (!v30)
      {
        while (1)
        {
          v34 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            break;
          }

          if (v34 >= v31)
          {

            v20 = v75;
            v22 = v76;
            goto LABEL_28;
          }

          v30 = *(v26 + 8 * v34);
          ++v33;
          if (v30)
          {
            v96 = v23;
            v33 = v34;
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        return result;
      }

      v96 = v23;
LABEL_18:
      v35 = v0[294];
      v36 = v0[293];
      v88 = v0[292];
      v93 = v0[291];
      v94 = v0[290];
      v37 = v0[288];
      v95 = v0[287];
      v38 = __clz(__rbit64(v30)) | (v33 << 6);
      v39 = *(v86 + 56);
      v40 = (*(v86 + 48) + 16 * v38);
      v41 = *v40;
      v42 = v40[1];
      v87 = *v40;
      v43 = (type metadata accessor for MultipartAccessoryPairingInfo(0) - 8);
      sub_100101E08(v39 + *(*v43 + 72) * v38, v35 + *(v97 + 48), type metadata accessor for MultipartAccessoryPairingInfo);
      *v35 = v41;
      *(v85 + 8) = v42;
      sub_1000D2A70(v35, v36, &qword_101696E38, &qword_1013D8510);
      v89 = *(v84 + 8);
      v90 = *v36;
      v91 = v37;
      v92 = (v37 + *(sub_1000BC4D4(&qword_1016A4230, &unk_101391950) + 48));
      sub_1000D2A70(v35, v88, &qword_101696E38, &qword_1013D8510);
      v44 = *v88;
      v45 = *(v83 + 8);
      sub_100017D5C(v87, v42);
      sub_100016590(v44, v45);
      v46 = v88 + *(v97 + 48);
      sub_1000D2A70(v46 + v43[8], v37, &qword_1016A40D0, &unk_10138BE70);
      sub_100101E70(v46, type metadata accessor for MultipartAccessoryPairingInfo);
      sub_1000D2A70(v35, v93, &qword_101696E38, &qword_1013D8510);
      sub_100016590(*v93, *(v82 + 8));
      v47 = *(v97 + 48);
      LOBYTE(v37) = *(v93 + v47);
      sub_100101E70(v93 + v47, type metadata accessor for MultipartAccessoryPairingInfo);
      sub_1000D2A70(v35, v94, &qword_101696E38, &qword_1013D8510);
      sub_100016590(*v94, *(v81 + 8));
      v48 = v94 + *(v97 + 48);
      LOBYTE(v39) = *(v48 + v43[9]);
      sub_100101E70(v48, type metadata accessor for MultipartAccessoryPairingInfo);
      *v92 = v37;
      v92[1] = 0;
      v92[2] = v39;
      swift_storeEnumTagMultiPayload();
      sub_100101DA0(v91, v95, type metadata accessor for OwnedBeaconGroup.PairingState);
      v23 = v96;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v98 = v96;
      result = sub_100771E30(v90, v89);
      v51 = *(v96 + 16);
      v52 = (v50 & 1) == 0;
      v53 = __OFADD__(v51, v52);
      v54 = v51 + v52;
      if (v53)
      {
        goto LABEL_41;
      }

      v55 = v50;
      if (*(v96 + 24) >= v54)
      {
        v0 = v80;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v62 = result;
          sub_10100586C();
          result = v62;
          v23 = v98;
        }
      }

      else
      {
        sub_100FE71DC(v54, isUniquelyReferenced_nonNull_native);
        v23 = v98;
        result = sub_100771E30(v90, v89);
        v0 = v80;
        if ((v55 & 1) != (v56 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }
      }

      v57 = v0[294];
      v58 = v0[287];
      if (v55)
      {
        sub_100101D24(v0[287], v23[7] + *(v79 + 72) * result);
        sub_100016590(v90, v89);
        sub_10000B3A8(v57, &qword_101696E38, &qword_1013D8510);
      }

      else
      {
        v23[(result >> 6) + 8] |= 1 << result;
        v59 = (v23[6] + 16 * result);
        *v59 = v90;
        v59[1] = v89;
        sub_100101DA0(v58, v23[7] + *(v79 + 72) * result, type metadata accessor for OwnedBeaconGroup.PairingState);
        result = sub_10000B3A8(v57, &qword_101696E38, &qword_1013D8510);
        v60 = v23[2];
        v53 = __OFADD__(v60, 1);
        v61 = v60 + 1;
        if (v53)
        {
          goto LABEL_42;
        }

        v23[2] = v61;
      }

      v30 &= v30 - 1;
      result = sub_100101E70(v0[293] + *(v97 + 48), type metadata accessor for MultipartAccessoryPairingInfo);
      v31 = v77;
      v26 = v78;
    }
  }

LABEL_28:
  v63 = v0[277];
  v64 = *(v63 + 160);
  v65 = *(v63 + 168);

  sub_10002E98C(v64, v65);
  sub_100F50A90(v20, v22, v64, v65, v23, v0 + 86);

  sub_100006654(v64, v65);

  memcpy(v0 + 44, v0 + 86, 0x150uLL);
  if (sub_100101D88((v0 + 44)) == 1)
  {
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&_mh_execute_header, v66, v67, "Unable to create pairing check data.", v68, 2u);
    }

    v69 = v0[309];
    v70 = v0[308];
    v71 = v0[274];

    sub_100016590(v20, v22);
    sub_100006654(v70, v69);

    sub_100007BAC(v0 + 242);
    *v71 = 0xD00000000000001ALL;
    *(v71 + 8) = 0x800000010134B3C0;
    *(v71 + 40) = 9;
    *(v71 + 264) = 1;
    sub_100007BAC(v0 + 237);

    v72 = v0[1];

    return v72();
  }

  else
  {
    memcpy(v0 + 2, v0 + 44, 0x150uLL);
    v73 = swift_task_alloc();
    v0[315] = v73;
    *v73 = v0;
    v73[1] = sub_1000F9968;
    v74 = v0[284];

    return sub_1000FCC2C(v74, (v0 + 2));
  }
}

uint64_t sub_1000F9968()
{
  v1 = *(*v0 + 2216);

  return _swift_task_switch(sub_1000F9A78, v1, 0);
}

uint64_t sub_1000F9A78()
{
  v55 = v0;
  v1 = v0[284];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = *v1;
    v0[316] = *v1;
    v3 = v2;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138543362;
      v8 = v3;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      _os_log_impl(&_mh_execute_header, v4, v5, "Pairing lock check failed. Error %{public}@", v6, 0xCu);
      sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
    }

    v0[271] = v3;
    type metadata accessor for SPPairingSessionError(0);
    sub_100102448(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.code.getter();
    if (v0[272] == 18)
    {
      v10 = swift_task_alloc();
      v0[317] = v10;
      *v10 = v0;
      v10[1] = sub_1000FA228;
      v11 = v0[275];
      v12 = v0[274];

      return sub_1000FDF28(v12, v11);
    }

    else
    {
      v25 = v0[314];
      v26 = v0[313];
      v27 = v0[309];
      v28 = v0[308];
      v29 = v0[274];
      sub_100007BAC(v0 + 242);
      sub_10000B3A8((v0 + 86), &qword_101697388, &qword_10138BF10);
      sub_100016590(v26, v25);
      sub_100006654(v28, v27);

      *v29 = v3;
      *(v29 + 40) = 0;
      *(v29 + 264) = 1;
      sub_100007BAC(v0 + 237);

      v30 = v0[1];

      return v30();
    }
  }

  else
  {
    v14 = v0[282];
    v15 = v0[281];
    v16 = v0[280];
    sub_100101DA0(v1, v14, type metadata accessor for AirPodsSWPairingLockCheckResponse);
    sub_100101E08(v14, v15, type metadata accessor for AirPodsSWPairingLockCheckResponse);
    sub_100101E08(v14, v16, type metadata accessor for AirPodsSWPairingLockCheckResponse);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[281];
    if (v19)
    {
      v21 = v0[279];
      v22 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v22 = 136446723;
      if (*(v20 + *(v21 + 40) + 8) >> 60 == 15)
      {
        v23 = 0;
        v24 = 0xE000000000000000;
      }

      else
      {
        v23 = Data.hexString.getter();
        v24 = v32;
      }

      v33 = v0[280];
      sub_100101E70(v0[281], type metadata accessor for AirPodsSWPairingLockCheckResponse);
      v34 = sub_1000136BC(v23, v24, &v54);

      *(v22 + 4) = v34;
      *(v22 + 12) = 2160;
      *(v22 + 14) = 1752392040;
      *(v22 + 22) = 2081;
      type metadata accessor for UUID();
      sub_100102448(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      sub_100101E70(v33, type metadata accessor for AirPodsSWPairingLockCheckResponse);
      v38 = sub_1000136BC(v35, v37, &v54);

      *(v22 + 24) = v38;
      _os_log_impl(&_mh_execute_header, v17, v18, "Received SeedS and S3 from server. Pairing token: %{public}s.fmnaId: %{private,mask.hash}s", v22, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      v31 = v0[280];

      sub_100101E70(v31, type metadata accessor for AirPodsSWPairingLockCheckResponse);
      sub_100101E70(v20, type metadata accessor for AirPodsSWPairingLockCheckResponse);
    }

    v39 = v0[282];
    v40 = v0[278];
    v41 = *(v0[277] + 184);
    v42 = *(v0[279] + 32);
    v43 = type metadata accessor for UUID();
    v44 = *(v43 - 8);
    (*(v44 + 16))(v40, v39 + v42, v43);
    (*(v44 + 56))(v40, 0, 1, v43);
    v45 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_fmnaId;
    swift_beginAccess();

    sub_10002311C(v40, v41 + v45, &qword_1016980D0, &unk_10138F3B0);
    swift_endAccess();

    v46 = v0[240];
    v47 = v0[241];
    sub_1000035D0(v0 + 237, v46);
    v48 = (*(*(*(v47 + 8) + 8) + 40))(v46);
    v50 = v49;
    v0[318] = v48;
    v0[319] = v49;
    v51 = swift_task_alloc();
    v0[320] = v51;
    *v51 = v0;
    v51[1] = sub_1000FA4D0;
    v52 = v0[282];
    v53 = v0[276];

    return sub_1000FF08C((v0 + 194), v52, v48, v50, v53);
  }
}

uint64_t sub_1000FA228()
{
  v1 = *(*v0 + 2216);

  return _swift_task_switch(sub_1000FA338, v1, 0);
}

uint64_t sub_1000FA338()
{
  v1 = v0[316];
  v2 = v0[314];
  v3 = v0[313];
  v4 = v0[309];
  v5 = v0[308];
  sub_10000B3A8((v0 + 86), &qword_101697388, &qword_10138BF10);
  sub_100016590(v3, v2);
  sub_100006654(v5, v4);

  sub_100007BAC(v0 + 242);
  sub_100007BAC(v0 + 237);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000FA4D0()
{
  v1 = *(*v0 + 2552);
  v2 = *(*v0 + 2544);
  v3 = *(*v0 + 2216);

  sub_100016590(v2, v1);

  return _swift_task_switch(sub_1000FA61C, v3, 0);
}

uint64_t sub_1000FA61C()
{
  memcpy(v0 + 161, v0 + 194, 0x108uLL);
  v1 = sub_100101ED0((v0 + 161));
  v2 = v0[314];
  v3 = v0[313];
  v4 = v0[309];
  v5 = v0[308];
  v6 = v0[282];
  v7 = v0[274];
  if (v1 == 1)
  {
    sub_10000B3A8((v0 + 86), &qword_101697388, &qword_10138BF10);
    sub_100016590(v3, v2);
    sub_100006654(v5, v4);

    sub_100101E70(v6, type metadata accessor for AirPodsSWPairingLockCheckResponse);
    sub_100007BAC(v0 + 242);
    *v7 = 0xD000000000000019;
    *(v7 + 1) = 0x800000010134B3E0;
    v7[40] = 9;
  }

  else
  {
    memcpy(v0 + 128, v0 + 161, 0x108uLL);
    sub_10000B3A8((v0 + 86), &qword_101697388, &qword_10138BF10);
    sub_100016590(v3, v2);
    sub_100006654(v5, v4);

    sub_100101E70(v6, type metadata accessor for AirPodsSWPairingLockCheckResponse);
    sub_100007BAC(v0 + 242);
    memcpy(v7, v0 + 128, 0x108uLL);
  }

  v7[264] = v1 == 1;
  sub_100007BAC(v0 + 237);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000FA8A4()
{
  v1 = *(v0 + 2192);
  v2 = type metadata accessor for Daemon.Error();
  sub_100102448(&qword_101697368, 255, &type metadata accessor for Daemon.Error, &protocol conformance descriptor for Daemon.Error);
  v3 = swift_allocError();
  *v4 = 0xD000000000000010;
  v4[1] = 0x800000010134A8C0;
  (*(*(v2 - 8) + 104))(v4, enum case for Daemon.Error.missingService(_:), v2);
  *v1 = v3;
  *(v1 + 40) = 0;
  *(v1 + 264) = 1;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000FAAA0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, __int128 *a3@<X8>)
{
  v5 = v4;
  if (*(v3 + 274) != 1)
  {
    swift_beginAccess();
    sub_1000D2A70(v3 + 192, &v19, &qword_101697380, &unk_10138BEF0);
    if (*(&v20 + 1))
    {
      sub_1000BC4D4(&qword_1016973C0, &unk_10138BF40);
      type metadata accessor for CollaborativeKeyGen.v1.OwnerContext();
      result = swift_dynamicCast();
      if ((result & 1) == 0)
      {
        goto LABEL_11;
      }

      v12 = v24;
      v13 = CCCKGGetOpeningSize();

      sub_1003F141C(a1, a2, v12, v13, &v19);
      if (v5)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }

LABEL_10:
    result = sub_10000B3A8(&v19, &qword_101697380, &unk_10138BEF0);
    goto LABEL_11;
  }

  swift_beginAccess();
  sub_1000D2A70(v3 + 192, &v19, &qword_101697380, &unk_10138BEF0);
  if (!*(&v20 + 1))
  {
    goto LABEL_10;
  }

  sub_1000BC4D4(&qword_1016973C0, &unk_10138BF40);
  type metadata accessor for CollaborativeKeyGen.v2.OwnerContext();
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_11:
    v14 = xmmword_10138BBF0;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    goto LABEL_12;
  }

  v10 = v24;
  CCCKG2ParamsP224Sha256Version2();
  OpeningSize = CCCKG2GetOpeningSize();

  sub_1001003F4(a1, a2, v10, OpeningSize, &v19);
  if (v5)
  {
LABEL_5:

    goto LABEL_11;
  }

LABEL_9:

  v14 = v19;
  v15 = v20;
  v16 = v21;
  v17 = v22;
  v18 = v23;
LABEL_12:
  *a3 = v14;
  a3[1] = v15;
  a3[2] = v16;
  a3[3] = v17;
  a3[4] = v18;
  return result;
}

uint64_t sub_1000FACBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[21] = a4;
  v5[22] = v4;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  type metadata accessor for StandaloneBeacon(0);
  v5[23] = swift_task_alloc();
  v6 = type metadata accessor for MACAddress();
  v5[24] = v6;
  v7 = *(v6 - 8);
  v5[25] = v7;
  v5[26] = *(v7 + 64);
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v5[29] = sub_1000BC4D4(&qword_1016973B8, &qword_1013EAD60);
  v5[30] = swift_task_alloc();
  type metadata accessor for OwnedBeaconGroup(0);
  v5[31] = swift_task_alloc();
  v5[32] = type metadata accessor for OwnedBeaconRecord(0);
  v5[33] = swift_task_alloc();
  type metadata accessor for String.Encoding();
  v5[34] = swift_task_alloc();
  v8 = swift_task_alloc();
  v5[35] = v8;
  *v8 = v5;
  v8[1] = sub_1000FAEB8;

  return daemon.getter();
}

uint64_t sub_1000FAEB8(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 288) = a1;

  v3 = swift_task_alloc();
  *(v2 + 296) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100102448(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100102448(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_1000FB09C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1000FB09C(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 304) = a1;

  v4 = *(v3 + 176);
  if (v1)
  {

    v5 = sub_1000FCAA0;
  }

  else
  {

    v5 = sub_1000FB200;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1000FB200()
{
  v58 = v0;
  v1 = v0[22];
  v2 = (*(v1 + 184) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
  v3 = *v2;
  v0[39] = *v2;
  v4 = v2[1];
  v0[40] = v4;
  if (v4 >> 60 == 15)
  {
    goto LABEL_4;
  }

  v0[15] = v3;
  v0[16] = v4;
  sub_100017D5C(v3, v4);
  sub_1000E0A3C();
  if (DataProtocol.isNull.getter())
  {
    sub_100006654(v3, v4);
LABEL_4:
    if (qword_101694440 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_101696FF8);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Invalid serial number.", v8, 2u);
    }

    v9 = v0[18];

    *v9 = 0x8000000000000007;
    sub_1000BC4D4(&qword_1016972F0, &unk_10138BE60);
    swift_storeEnumTagMultiPayload();

    v10 = v0[1];

    return v10();
  }

  v12 = Data.trimmed.getter();
  v14 = v13;
  v0[41] = v12;
  v0[42] = v13;
  sub_100017D5C(v12, v13);
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000076D4(v15, qword_10177C418);
  sub_100017D5C(v12, v14);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  sub_100016590(v12, v14);
  if (os_log_type_enabled(v16, v17))
  {
    v55 = v1;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v57 = v19;
    *v18 = 141558275;
    *(v18 + 4) = 1752392040;
    *(v18 + 12) = 2081;
    static String.Encoding.utf8.getter();
    v20 = String.init(data:encoding:)();
    if (!v21)
    {
      v20 = Data.hexString.getter();
    }

    v22 = v20;
    v23 = v21;
    sub_100016590(v12, v14);
    v24 = sub_1000136BC(v22, v23, &v57);

    *(v18 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v16, v17, "Creating beacon for %{private,mask.hash}s", v18, 0x16u);
    sub_100007BAC(v19);

    v1 = v55;
  }

  else
  {
    sub_100016590(v12, v14);
  }

  if (*(v0[22] + 272))
  {
    if (qword_101694440 != -1)
    {
      swift_once();
    }

    v25 = v0[27];
    v26 = v0[24];
    v27 = v0[25];
    v28 = v0[21];
    v0[50] = sub_1000076D4(v15, qword_101696FF8);
    (*(v27 + 16))(v25, v28, v26);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    v31 = os_log_type_enabled(v29, v30);
    v32 = v0[27];
    v33 = v0[24];
    v34 = v0[25];
    if (v31)
    {
      v35 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v57 = v56;
      *v35 = 136446210;
      sub_100102448(&qword_1016A4210, 255, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v1;
      v39 = v38;
      (*(v34 + 8))(v32, v33);
      v40 = sub_1000136BC(v36, v39, &v57);
      v1 = v37;

      *(v35 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v29, v30, "Creating standalone beacon. classicMACAddress %{public}s", v35, 0xCu);
      sub_100007BAC(v56);
    }

    else
    {

      (*(v34 + 8))(v32, v33);
    }

    v51 = v0[38];
    type metadata accessor for __DataStorage();
    swift_allocObject();
    v0[51] = __DataStorage.init(length:)();
    v0[52] = *(v1 + 184);

    v52 = sub_1000FC534;
    v53 = v51;
  }

  else
  {
    v41 = *(*(v1 + 184) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds);
    v0[43] = v41;
    v42 = qword_101694440;

    if (v42 != -1)
    {
      swift_once();
    }

    v0[44] = sub_1000076D4(v15, qword_101696FF8);
    swift_bridgeObjectRetain_n();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v57 = v46;
      *v45 = 136315394;
      type metadata accessor for MultipartAccessoryPairingInfo(0);
      sub_100101BAC();
      v47 = Dictionary.description.getter();
      v49 = sub_1000136BC(v47, v48, &v57);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2048;
      v50 = *(v41 + 16);

      *(v45 + 14) = v50;

      _os_log_impl(&_mh_execute_header, v43, v44, "allSerialNumbersAndPartIds: %s. Count %ld", v45, 0x16u);
      sub_100007BAC(v46);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v54 = v0[38];
    v0[45] = *(v1 + 184);

    v52 = sub_1000FB9CC;
    v53 = v54;
  }

  return _swift_task_switch(v52, v53, 0);
}

uint64_t sub_1000FB9CC()
{
  v1 = v0[45];
  v2 = v0[38];
  v3 = v0[28];
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[24];
  v7 = v0[19];
  v18 = v0[43];
  (*(v5 + 16))(v3, v0[21], v6);
  v8 = (*(v5 + 80) + 128) & ~*(v5 + 80);
  v9 = (v4 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  v0[46] = v10;
  *(v10 + 16) = v2;
  v12 = v7[3];
  v11 = v7[4];
  v13 = v7[2];
  *(v10 + 40) = v7[1];
  *(v10 + 56) = v13;
  *(v10 + 72) = v12;
  *(v10 + 88) = v11;
  *(v10 + 24) = *v7;
  *(v10 + 104) = v1;
  *(v10 + 112) = 0;
  *(v10 + 120) = 0xE000000000000000;
  (*(v5 + 32))(v10 + v8, v3, v6);
  *(v10 + v9) = v18;

  sub_100102538(v7, (v0 + 2));
  v14 = swift_task_alloc();
  v0[47] = v14;
  *v14 = v0;
  v14[1] = sub_1000FBB9C;
  v16 = v0[29];
  v15 = v0[30];

  return unsafeBlocking<A>(context:_:)(v15, 0xD000000000000010, 0x800000010134A8C0, sub_100102490, v10, v16);
}

uint64_t sub_1000FBB9C()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v3 = *(v2 + 304);
    v4 = sub_1000FC278;
  }

  else
  {
    v5 = *(v2 + 304);

    v4 = sub_1000FBCC4;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000FBCC4()
{
  v1 = v0[33];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];
  v5 = v0[22];

  v6 = *(v4 + 48);
  sub_100101DA0(v3, v1, type metadata accessor for OwnedBeaconRecord);
  sub_100101DA0(v3 + v6, v2, type metadata accessor for OwnedBeaconGroup);

  return _swift_task_switch(sub_1000FBD90, v5, 0);
}

uint64_t sub_1000FBD90()
{
  v1 = *(*(v0 + 176) + 144);
  v2 = OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_currentLocation;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v0 + 392) = v3;
  if (v3)
  {
    v4 = *(v0 + 304);
    *(v0 + 440) = *(*(v0 + 256) + 20);
    v5 = v3;

    return _swift_task_switch(sub_1000FC00C, v4, 0);
  }

  else
  {
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    v8 = os_log_type_enabled(v6, v7);
    v10 = *(v0 + 328);
    v9 = *(v0 + 336);
    v12 = *(v0 + 312);
    v11 = *(v0 + 320);
    if (v8)
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Unable to retrieve current location from CL for pairing", v13, 2u);
    }

    sub_100006654(v12, v11);
    sub_100016590(v10, v9);

    v14 = *(v0 + 264);
    v15 = *(v0 + 248);
    v16 = *(v0 + 144);

    v17 = *(sub_1000BC4D4(&qword_101697330, &qword_101391910) + 48);
    sub_100101DA0(v15, v16, type metadata accessor for OwnedBeaconGroup);
    sub_100101DA0(v14, v16 + v17, type metadata accessor for OwnedBeaconRecord);
    type metadata accessor for AirPodsLEPairingService.BeaconCreationResult(0);
    swift_storeEnumTagMultiPayload();
    sub_1000BC4D4(&qword_1016972F0, &unk_10138BE60);
    swift_storeEnumTagMultiPayload();

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1000FC00C()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 176);
  v3 = *(v0 + 264) + *(v0 + 440);
  v4 = *(*(v0 + 304) + 128);
  type metadata accessor for Transaction();
  v5 = swift_task_alloc();
  *(v5 + 16) = 0;
  *(v5 + 24) = v1;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  static Transaction.named<A>(_:with:)();

  return _swift_task_switch(sub_1000FC104, v2, 0);
}

uint64_t sub_1000FC104()
{
  v1 = v0[49];
  v2 = v0[41];
  v3 = v0[42];
  sub_100006654(v0[39], v0[40]);
  sub_100016590(v2, v3);

  v4 = v0[33];
  v5 = v0[31];
  v6 = v0[18];

  v7 = *(sub_1000BC4D4(&qword_101697330, &qword_101391910) + 48);
  sub_100101DA0(v5, v6, type metadata accessor for OwnedBeaconGroup);
  sub_100101DA0(v4, v6 + v7, type metadata accessor for OwnedBeaconRecord);
  type metadata accessor for AirPodsLEPairingService.BeaconCreationResult(0);
  swift_storeEnumTagMultiPayload();
  sub_1000BC4D4(&qword_1016972F0, &unk_10138BE60);
  swift_storeEnumTagMultiPayload();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000FC278()
{
  v1 = *(v0 + 176);

  return _swift_task_switch(sub_1000FC2EC, v1, 0);
}

uint64_t sub_1000FC2EC()
{
  v18 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 384);
    v4 = *(v0 + 328);
    v6 = *(v0 + 312);
    v5 = *(v0 + 320);
    v16 = *(v0 + 336);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136446210;
    *(v0 + 136) = v3;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v9 = String.init<A>(describing:)();
    v11 = sub_1000136BC(v9, v10, &v17);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to generateOwnedBeaconRecordGroup. Error %{public}s", v7, 0xCu);
    sub_100007BAC(v8);

    sub_100006654(v6, v5);
    sub_100016590(v4, v16);
  }

  else
  {
    v13 = *(v0 + 328);
    v12 = *(v0 + 336);
    sub_100006654(*(v0 + 312), *(v0 + 320));
    sub_100016590(v13, v12);
  }

  **(v0 + 144) = *(v0 + 384);
  sub_1000BC4D4(&qword_1016972F0, &unk_10138BE60);
  swift_storeEnumTagMultiPayload();

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1000FC534()
{
  v1 = v0[51];
  v2 = swift_task_alloc();
  v0[53] = v2;
  *v2 = v0;
  v2[1] = sub_1000FC5E8;
  v3 = v0[52];
  v4 = v0[23];
  v5 = v0[20];
  v6 = v0[21];
  v7 = v0[19];

  return sub_100B90BDC(v4, v7, v3, v5, v6, 0x6000000000, v1 | 0x4000000000000000);
}

uint64_t sub_1000FC5E8()
{
  v2 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v3 = *(v2 + 304);
    v4 = sub_1000FC850;
  }

  else
  {
    v5 = *(v2 + 176);

    v4 = sub_1000FC710;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000FC710()
{
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[23];
  v4 = v0[18];
  sub_100006654(v0[39], v0[40]);
  sub_100016590(v2, v1);

  sub_100101DA0(v3, v4, type metadata accessor for StandaloneBeacon);
  type metadata accessor for AirPodsLEPairingService.BeaconCreationResult(0);
  swift_storeEnumTagMultiPayload();
  sub_1000BC4D4(&qword_1016972F0, &unk_10138BE60);
  swift_storeEnumTagMultiPayload();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000FC850()
{
  v1 = *(v0 + 176);

  return _swift_task_switch(sub_1000FC8BC, v1, 0);
}

uint64_t sub_1000FC8BC()
{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to generateStandaloneBeacon. Error %{public}@", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  v6 = v0[54];
  v8 = v0[41];
  v7 = v0[42];
  v9 = v0[18];
  sub_100006654(v0[39], v0[40]);
  sub_100016590(v8, v7);

  *v9 = v6;
  sub_1000BC4D4(&qword_1016972F0, &unk_10138BE60);
  swift_storeEnumTagMultiPayload();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000FCAA0()
{
  v1 = *(v0 + 144);
  v2 = type metadata accessor for Daemon.Error();
  sub_100102448(&qword_101697368, 255, &type metadata accessor for Daemon.Error, &protocol conformance descriptor for Daemon.Error);
  v3 = swift_allocError();
  *v4 = 0xD000000000000010;
  v4[1] = 0x800000010134A8C0;
  (*(*(v2 - 8) + 104))(v4, enum case for Daemon.Error.missingService(_:), v2);
  *v1 = v3;
  sub_1000BC4D4(&qword_1016972F0, &unk_10138BE60);
  swift_storeEnumTagMultiPayload();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000FCC2C(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = type metadata accessor for Date();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();

  return _swift_task_switch(sub_1000FCD4C, v2, 0);
}

uint64_t sub_1000FCD4C()
{
  v34 = v0;
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = 0x7365547265646E75;
  *(v0 + 40) = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (*(v0 + 168) == 1)
  {
    v2 = *(v0 + 136);
    v3 = *(v0 + 144);
    v27 = *(v0 + 128);
    v28 = *(v0 + 120);
    v30 = *(v0 + 112);
    v31 = *(v0 + 104);
    v29 = *(v0 + 96);
    v4 = *(v0 + 80);
    *(v0 + 16) = *(*(v0 + 88) + 120);
    type metadata accessor for __DataStorage();
    swift_allocObject();
    sub_1001022C4(v0 + 16, v0 + 48);
    sub_1001022C4(v0 + 16, v0 + 64);
    v32 = 0x2000000000;
    v33 = __DataStorage.init(length:)();
    sub_1007765FC(&v32, 17);
    v25 = v33 | 0x4000000000000000;
    v26 = v32;
    swift_allocObject();
    v5 = __DataStorage.init(length:)();
    v32 = 0x6400000000;
    v33 = v5;
    sub_1007765FC(&v32, 34);
    v6 = v32;
    v7 = v33 | 0x4000000000000000;
    UUID.init()();
    swift_allocObject();
    v8 = __DataStorage.init(length:)();
    v32 = 0x2000000000;
    v33 = v8;
    sub_1007765FC(&v32, 85);
    v9 = v32;
    v10 = v33 | 0x4000000000000000;
    *v4 = *(v0 + 16);
    *(v4 + 16) = *(v0 + 16);
    *(v4 + 32) = v26;
    *(v4 + 40) = v25;
    *(v4 + 48) = v6;
    *(v4 + 56) = v7;
    v11 = type metadata accessor for AirPodsSWPairingLockCheckResponse(0);
    (*(v2 + 32))(v4 + v11[8], v3, v27);
    v12 = (v4 + v11[9]);
    *v12 = 0xD000000000000011;
    v12[1] = 0x800000010134B430;
    v13 = (v4 + v11[10]);
    *v13 = v9;
    v13[1] = v10;
    *(v4 + v11[11]) = 0;
    v14 = *(v29 + 184);

    Date.init()();
    v15 = Date.epoch.getter();
    (*(v30 + 8))(v28, v31);
    *(v14 + 32) = v15;

    sub_1000BC4D4(&qword_101697360, &unk_10138BED0);
    swift_storeEnumTagMultiPayload();

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    v19 = *(v0 + 88);
    v18 = *(v0 + 96);
    v20 = sub_100102448(&qword_101697238, v1, type metadata accessor for AirPodsLEPairingService, &unk_10138BD60);
    v21 = swift_task_alloc();
    *(v0 + 152) = v21;
    *(v21 + 16) = v18;
    *(v21 + 24) = v19;
    v22 = swift_task_alloc();
    *(v0 + 160) = v22;
    v23 = sub_1000BC4D4(&qword_101697360, &unk_10138BED0);
    *v22 = v0;
    v22[1] = sub_1000FD194;
    v24 = *(v0 + 80);

    return withCheckedContinuation<A>(isolation:function:_:)(v24, v18, v20, 0xD00000000000002DLL, 0x800000010134B400, sub_1001022BC, v21, v23);
  }
}

uint64_t sub_1000FD194()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000FD2E4(uint64_t a1, uint64_t a2, const void *a3)
{
  v6 = sub_1000BC4D4(&qword_1016973A0, &unk_10138BF30);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - v8;
  v10 = *(a2 + 272);
  (*(v7 + 16))(&v14 - v8, a1, v6);
  v11 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  (*(v7 + 32))(v12 + v11, v9, v6);

  sub_100923CB0(a3, v10, sub_100102320, v12);
}

uint64_t sub_1000FD454(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirPodsSWPairingLockCheckResponse(0);
  __chkstk_darwin(v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_101697360, &unk_10138BED0);
  v8 = __chkstk_darwin(v7);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v12 = (&v14 - v11);
  sub_1000D2A70(a1, &v14 - v11, &qword_101697360, &unk_10138BED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v10 = *v12;
    swift_storeEnumTagMultiPayload();
    sub_1000BC4D4(&qword_1016973A0, &unk_10138BF30);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    sub_100101DA0(v12, v6, type metadata accessor for AirPodsSWPairingLockCheckResponse);
    *(*(a2 + 184) + 32) = *&v6[*(v4 + 44)];
    sub_100101E08(v6, v10, type metadata accessor for AirPodsSWPairingLockCheckResponse);
    swift_storeEnumTagMultiPayload();
    sub_1000BC4D4(&qword_1016973A0, &unk_10138BF30);
    CheckedContinuation.resume(returning:)();
    return sub_100101E70(v6, type metadata accessor for AirPodsSWPairingLockCheckResponse);
  }
}

uint64_t sub_1000FD66C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016972D8, &qword_1013AAC60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v17 - v8;

  sub_100F506B0(v17);

  v28 = v17[10];
  v29 = v17[11];
  v30 = v17[12];
  v31 = v17[13];
  v24 = v17[6];
  v25 = v17[7];
  v26 = v17[8];
  v27 = v17[9];
  v20 = v17[2];
  v21 = v17[3];
  v22 = v17[4];
  v23 = v17[5];
  v18 = v17[0];
  v19 = v17[1];
  if (sub_1001010A8(&v18) == 1)
  {
    if (qword_101694440 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000076D4(v10, qword_101696FF8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Unable to generate ack data!", v13, 2u);
    }

    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    v32[10] = v28;
    v32[11] = v29;
    v32[12] = v30;
    v32[13] = v31;
    v32[6] = v24;
    v32[7] = v25;
    v32[8] = v26;
    v32[9] = v27;
    v32[2] = v20;
    v32[3] = v21;
    v32[4] = v22;
    v32[5] = v23;
    v32[0] = v18;
    v32[1] = v19;
    (*(v6 + 16))(v9, a1, v5);
    v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v16 = swift_allocObject();
    (*(v6 + 32))(v16 + v15, v9, v5);
    *(v16 + ((v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
    sub_1009245B4(v32, sub_1001010CC, v16);
    sub_10000B3A8(v17, &qword_1016972E0, &unk_10138BE50);
  }
}

uint64_t sub_1000FD958(uint64_t a1)
{
  v2 = type metadata accessor for AirPodsSWPairingLockAckResponse(0);
  v3 = __chkstk_darwin(v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v33 - v7;
  __chkstk_darwin(v6);
  v10 = &v33 - v9;
  v11 = sub_1000BC4D4(&qword_1016972E8, &unk_1013C8260);
  __chkstk_darwin(v11);
  v13 = (&v33 - v12);
  sub_1000D2A70(a1, &v33 - v12, &qword_1016972E8, &unk_1013C8260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v13;
    if (qword_101694440 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000076D4(v15, qword_101696FF8);
    v16 = v14;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138543362;
      v21 = v16;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&_mh_execute_header, v17, v18, "Ack register failed with error - %{public}@", v19, 0xCu);
      sub_10000B3A8(v20, &qword_10169BB30, &unk_10138B3C0);
    }

    else
    {
    }
  }

  else
  {
    sub_100101DA0(v13, v10, type metadata accessor for AirPodsSWPairingLockAckResponse);
    if (qword_101694440 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_1000076D4(v23, qword_101696FF8);
    sub_100101E08(v10, v8, type metadata accessor for AirPodsSWPairingLockAckResponse);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v34 = v27;
      *v26 = 136446210;
      sub_100101E08(v8, v5, type metadata accessor for AirPodsSWPairingLockAckResponse);
      v28 = String.init<A>(describing:)();
      v30 = v29;
      sub_100101E70(v8, type metadata accessor for AirPodsSWPairingLockAckResponse);
      v31 = sub_1000136BC(v28, v30, &v34);

      *(v26 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v24, v25, "Ack register was success. %{public}s", v26, 0xCu);
      sub_100007BAC(v27);
    }

    else
    {

      sub_100101E70(v8, type metadata accessor for AirPodsSWPairingLockAckResponse);
    }

    sub_100101E70(v10, type metadata accessor for AirPodsSWPairingLockAckResponse);
  }

  sub_1000BC4D4(&qword_1016972D8, &qword_1013AAC60);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1000FDDD8@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>)
{
  if (*(v3 + 274) == 1)
  {
    v5 = sub_100A743A8(a2, a3);
    v7 = v6;
    v9 = v8;
    sub_100017D5C(v5, v6);
    sub_100496024(v5, v7, &v19);
    v10 = v19;
    v11 = v20;
    a1[3] = &type metadata for CollaborativeKeyGen.v2.C2;
    a1[4] = sub_1001023F4();
    *a1 = v10;
    a1[1] = v11;
    v12 = type metadata accessor for CollaborativeKeyGen.v2.OwnerContext();
    v13 = &off_101645BC0;
  }

  else
  {
    v5 = sub_100A7491C(a2, a3);
    v7 = v14;
    v9 = v15;
    sub_100017D5C(v5, v14);
    sub_10049613C(v5, v7, &v19);
    v16 = v19;
    v17 = v20;
    a1[3] = &type metadata for CollaborativeKeyGen.v1.C2;
    a1[4] = sub_1001023A0();
    *a1 = v16;
    a1[1] = v17;
    v12 = type metadata accessor for CollaborativeKeyGen.v1.OwnerContext();
    v13 = &off_101645BA0;
  }

  a1[8] = v12;
  a1[9] = v13;
  result = sub_100016590(v5, v7);
  a1[5] = v9;
  return result;
}

uint64_t sub_1000FDF28(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for MACAddress();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v3[10] = *(v5 + 64);
  v3[11] = swift_task_alloc();
  type metadata accessor for String.Encoding();
  v3[12] = swift_task_alloc();
  v6 = swift_task_alloc();
  v3[13] = v6;
  *v6 = v3;
  v6[1] = sub_1000FE050;

  return daemon.getter();
}

uint64_t sub_1000FE050(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 112) = a1;

  v3 = swift_task_alloc();
  *(v2 + 120) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100102448(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100102448(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_1000FE234;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1000FE234(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 128) = a1;

  v4 = *(v3 + 56);
  if (v1)
  {

    v5 = sub_1000FEF50;
  }

  else
  {

    v5 = sub_1000FE398;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1000FE398()
{
  v36 = v0;
  v1 = v0[7];
  v2 = (*(v1 + 184) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
  v3 = *v2;
  v0[17] = *v2;
  v4 = v2[1];
  v0[18] = v4;
  if (v4 >> 60 == 15)
  {
    goto LABEL_4;
  }

  v0[2] = v3;
  v0[3] = v4;
  sub_100017D5C(v3, v4);
  sub_1000E0A3C();
  if (DataProtocol.isNull.getter())
  {
    sub_100006654(v3, v4);
LABEL_4:
    if (qword_101694440 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_101696FF8);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Invalid serial number.", v8, 2u);
    }

    v9 = v0[5];

    *v9 = 9;
    *(v9 + 8) = 0u;
    *(v9 + 24) = 0u;
    v10 = v0[5];
    *(v10 + 40) = 11;
    *(v10 + 264) = 1;

    v11 = v0[1];

    return v11();
  }

  v13 = Data.trimmed.getter();
  v15 = v14;
  v0[19] = v13;
  v0[20] = v14;
  sub_100017D5C(v13, v14);
  if (qword_101694440 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v0[21] = sub_1000076D4(v16, qword_101696FF8);
  sub_100017D5C(v13, v15);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  sub_100016590(v13, v15);
  v19 = &unk_10138B000;
  if (os_log_type_enabled(v17, v18))
  {
    v20 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = v34;
    *v20 = 136315138;
    sub_100017D5C(v13, v15);
    static String.Encoding.utf8.getter();
    v21 = String.init(data:encoding:)();
    if (!v22)
    {
      v21 = Data.hexString.getter();
    }

    v23 = v21;
    v24 = v22;
    sub_100016590(v13, v15);
    sub_100016590(v13, v15);
    v25 = sub_1000136BC(v23, v24, &v35);

    *(v20 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v17, v18, "Accessory serial number: %s.", v20, 0xCu);
    sub_100007BAC(v34);

    v19 = &unk_10138B000;
  }

  else
  {
    sub_100016590(v13, v15);
  }

  v0[22] = *(*(v1 + 184) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds);
  swift_bridgeObjectRetain_n();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v35 = v29;
    *v28 = v19[107];
    type metadata accessor for MultipartAccessoryPairingInfo(0);
    sub_100101BAC();
    v30 = Dictionary.description.getter();
    v32 = sub_1000136BC(v30, v31, &v35);

    *(v28 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v26, v27, "beaconGroupInfo: %s", v28, 0xCu);
    sub_100007BAC(v29);
  }

  v33 = v0[16];
  v0[23] = *(v1 + 184);

  return _swift_task_switch(sub_1000FE88C, v33, 0);
}

uint64_t sub_1000FE88C()
{
  v13 = v0[22];
  v14 = v0[23];
  v1 = v0[19];
  v2 = v0[16];
  v12 = v0[20];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  (*(v6 + 16))(v4, v0[6], v5);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = (v3 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  v0[24] = v9;
  *(v9 + 2) = v2;
  *(v9 + 3) = v1;
  *(v9 + 4) = v12;
  *(v9 + 5) = 0;
  *(v9 + 6) = 0xE000000000000000;
  (*(v6 + 32))(&v9[v7], v4, v5);
  *&v9[v8] = v13;
  *&v9[(v8 + 15) & 0xFFFFFFFFFFFFFFF8] = v14;
  sub_100017D5C(v1, v12);

  v10 = swift_task_alloc();
  v0[25] = v10;
  *v10 = v0;
  v10[1] = sub_1000FEA58;

  return unsafeBlocking<A>(context:_:)(v10, 0xD000000000000010, 0x800000010134A8C0, sub_100101FAC, v9, &type metadata for () + 1);
}

uint64_t sub_1000FEA58()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = *(v2 + 128);
    v4 = sub_1000FECAC;
  }

  else
  {
    v5 = *(v2 + 128);

    v4 = sub_1000FEB80;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000FEB80()
{
  v1 = *(v0 + 56);

  return _swift_task_switch(sub_1000FEBEC, v1, 0);
}

uint64_t sub_1000FEBEC()
{
  v1 = v0[19];
  v2 = v0[20];
  sub_100006654(v0[17], v0[18]);
  sub_100016590(v1, v2);

  v3 = v0[5];
  *v3 = 9;
  *(v3 + 8) = 0u;
  *(v3 + 24) = 0u;
  v4 = v0[5];
  *(v4 + 40) = 11;
  *(v4 + 264) = 1;

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000FECAC()
{
  v1 = *(v0 + 56);

  return _swift_task_switch(sub_1000FED20, v1, 0);
}

uint64_t sub_1000FED20()
{
  v20 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[26];
    v17 = v0[19];
    v5 = v0[17];
    v4 = v0[18];
    v18 = v0[20];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136446210;
    v0[4] = v3;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v8 = String.init<A>(describing:)();
    v10 = sub_1000136BC(v8, v9, &v19);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Unable to persist pairing lock state due to %{public}s", v6, 0xCu);
    sub_100007BAC(v7);

    sub_100006654(v5, v4);
    sub_100016590(v17, v18);
  }

  else
  {
    v12 = v0[19];
    v11 = v0[20];
    sub_100006654(v0[17], v0[18]);
    sub_100016590(v12, v11);
  }

  v13 = v0[5];
  *v13 = 9;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  v14 = v0[5];
  *(v14 + 40) = 11;
  *(v14 + 264) = 1;

  v15 = v0[1];

  return v15();
}

uint64_t sub_1000FEF50()
{
  v1 = *(v0 + 40);
  v2 = type metadata accessor for Daemon.Error();
  sub_100102448(&qword_101697368, 255, &type metadata accessor for Daemon.Error, &protocol conformance descriptor for Daemon.Error);
  v3 = swift_allocError();
  *v4 = 0xD000000000000010;
  v4[1] = 0x800000010134A8C0;
  (*(*(v2 - 8) + 104))(v4, enum case for Daemon.Error.missingService(_:), v2);
  *v1 = v3;
  v5 = *(v0 + 40);
  *(v5 + 40) = 0;
  *(v5 + 264) = 1;

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000FF08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[111] = v5;
  v6[110] = a5;
  v6[109] = a4;
  v6[108] = a3;
  v6[107] = a2;
  v6[106] = a1;
  v7 = type metadata accessor for MACAddress();
  v6[112] = v7;
  v8 = *(v7 - 8);
  v6[113] = v8;
  v6[114] = *(v8 + 64);
  v6[115] = swift_task_alloc();
  v6[116] = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v6[117] = swift_task_alloc();
  v6[118] = swift_task_alloc();
  v6[119] = swift_task_alloc();
  v9 = type metadata accessor for String.Encoding();
  v6[120] = v9;
  v6[121] = *(v9 - 8);
  v6[122] = swift_task_alloc();
  v6[123] = type metadata accessor for AirPodsSWPairingLockCheckResponse(0);
  v6[124] = swift_task_alloc();
  v6[125] = swift_task_alloc();
  v10 = swift_task_alloc();
  v6[126] = v10;
  *v10 = v6;
  v10[1] = sub_1000FF284;

  return daemon.getter();
}

uint64_t sub_1000FF284(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 1016) = a1;

  v3 = swift_task_alloc();
  *(v2 + 1024) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100102448(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100102448(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_1000FF468;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1000FF468(uint64_t a1)
{
  v3 = *v2;
  v3[129] = a1;
  v3[130] = v1;

  if (v1)
  {

    sub_100100A8C((v3 + 2));
    v4 = v3[106];

    memcpy(v4, v3 + 2, 0x108uLL);
    v5 = v3[1];

    return v5();
  }

  else
  {
    v7 = v3[111];

    return _swift_task_switch(sub_1000FF650, v7, 0);
  }
}

uint64_t sub_1000FF650()
{
  v82 = v0;
  if (qword_101694440 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1000);
  v2 = *(v0 + 992);
  v3 = *(v0 + 856);
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_101696FF8);
  sub_100101E08(v3, v1, type metadata accessor for AirPodsSWPairingLockCheckResponse);
  sub_100101E08(v3, v2, type metadata accessor for AirPodsSWPairingLockCheckResponse);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 1000);
  if (!v7)
  {
    v18 = *(v0 + 992);
    sub_100101E70(*(v0 + 1000), type metadata accessor for AirPodsSWPairingLockCheckResponse);

    sub_100101E70(v18, type metadata accessor for AirPodsSWPairingLockCheckResponse);
    goto LABEL_16;
  }

  v9 = swift_slowAlloc();
  v10 = swift_slowAlloc();
  v13 = v10;
  v80 = v10;
  *v9 = 134218242;
  v14 = *(v8 + 48);
  v15 = *(v8 + 56);
  v16 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    if (v16 != 2)
    {
      v17 = 0;
      goto LABEL_15;
    }

    v20 = v14 + 16;
    v14 = *(v14 + 16);
    v19 = *(v20 + 8);
    v17 = v19 - v14;
    if (!__OFSUB__(v19, v14))
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_12:
    v21 = __OFSUB__(HIDWORD(v14), v14);
    v22 = HIDWORD(v14) - v14;
    if (v21)
    {
      __break(1u);
      return _swift_task_switch(v10, v11, v12);
    }

    v17 = v22;
    goto LABEL_15;
  }

  if (v16)
  {
    goto LABEL_12;
  }

  v17 = BYTE6(v15);
LABEL_15:
  v23 = *(v0 + 992);
  sub_100101E70(*(v0 + 1000), type metadata accessor for AirPodsSWPairingLockCheckResponse);
  *(v9 + 4) = v17;
  *(v9 + 12) = 2080;
  v24 = Data.hexString.getter();
  v26 = v25;
  sub_100101E70(v23, type metadata accessor for AirPodsSWPairingLockCheckResponse);
  v27 = sub_1000136BC(v24, v26, &v80);

  *(v9 + 14) = v27;
  _os_log_impl(&_mh_execute_header, v5, v6, "S3 count %ld: %s", v9, 0x16u);
  sub_100007BAC(v13);

LABEL_16:
  v28 = *(v0 + 888);
  if (*(v28 + 272) == 1)
  {
    type metadata accessor for __DataStorage();
    swift_allocObject();
    v29 = __DataStorage.init(length:)();
    v80 = 0x3C00000000;
    v81 = v29;
    sub_1007765FC(&v80, 0);
    v30 = v80;
    v31 = v81 | 0x4000000000000000;
  }

  else if (!*(*(v0 + 856) + *(*(v0 + 984) + 36) + 8) || (v32 = *(v0 + 976), v33 = *(v0 + 968), v34 = *(v0 + 960), static String.Encoding.utf8.getter(), v30 = String.data(using:allowLossyConversion:)(), v31 = v35, (*(v33 + 8))(v32, v34), v31 >> 60 == 15))
  {
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Unable to decode masked apple ID", v38, 2u);
    }

    goto LABEL_32;
  }

  *(v0 + 1056) = v31;
  *(v0 + 1048) = v30;
  if (*(v28 + 272) != 1)
  {
    v56 = *(v0 + 888);
    v57 = *(v56 + 184);
    v58 = v57 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId;
    *(v0 + 1112) = *(v57 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId);
    if (*(v58 + 1))
    {
      goto LABEL_29;
    }

    v59 = (v57 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
    v60 = *v59;
    *(v0 + 1064) = *v59;
    v61 = v59[1];
    *(v0 + 1072) = v61;
    if (v61 >> 60 == 15)
    {
      goto LABEL_29;
    }

    *(v0 + 824) = v60;
    *(v0 + 832) = v61;
    sub_100017D5C(v60, v61);
    sub_1000E0A3C();
    if (DataProtocol.isNull.getter())
    {
      sub_100006654(v60, v61);
LABEL_29:

      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v80 = v65;
        *v64 = 141558275;
        *(v64 + 4) = 1752392040;
        *(v64 + 12) = 2081;
        v66 = (*(v56 + 184) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
        v67 = *v66;
        v68 = v66[1];
        *(v0 + 808) = *v66;
        *(v0 + 816) = v68;
        sub_10002E98C(v67, v68);
        sub_1000BC4D4(&qword_1016A40E0, &unk_101396F30);
        v69 = String.init<A>(describing:)();
        v71 = sub_1000136BC(v69, v70, &v80);

        *(v64 + 14) = v71;
        _os_log_impl(&_mh_execute_header, v62, v63, "Invalid serial number %{private,mask.hash}s!", v64, 0x16u);
        sub_100007BAC(v65);
      }

      sub_100016590(v30, v31);

LABEL_32:
      sub_100100A8C(v0 + 16);
      goto LABEL_33;
    }

    v75 = *(v0 + 1032);
    *(v0 + 1080) = Data.trimmed.getter();
    *(v0 + 1088) = v76;
    v10 = sub_1000FFE68;
    v11 = v75;
    v12 = 0;

    return _swift_task_switch(v10, v11, v12);
  }

  v39 = *(v0 + 952);
  v40 = type metadata accessor for OwnedBeaconGroup(0);
  (*(*(v40 - 8) + 56))(v39, 1, 1, v40);
  v77 = sub_10110DFBC(v39, 255);
  v42 = v41;
  sub_10000B3A8(v39, &unk_1016AF8B0, &unk_1013A0700);
  v43 = *(v0 + 1048);
  v78 = *(v0 + 1056);
  v44 = *(v0 + 872);
  v45 = *(v0 + 864);
  v46 = *(v0 + 856);
  v48 = v46[4];
  v47 = v46[5];
  v49 = v46[6];
  v50 = v46[7];
  *(v0 + 840) = *(v46 + *(*(v0 + 984) + 44));
  sub_100017D5C(v45, v44);
  sub_100017D5C(v48, v47);
  sub_100017D5C(v49, v50);
  sub_100102194();
  v51 = FixedWidthInteger.data.getter();
  sub_100423378(v45, v44, v48, v47, v43, v78, v49, v50, v79, v51, v52, v77, v42);

  v53 = v79[5];
  *(v0 + 608) = v79[4];
  *(v0 + 624) = v53;
  *(v0 + 640) = v79[6];
  v54 = v79[1];
  *(v0 + 544) = v79[0];
  *(v0 + 560) = v54;
  v55 = v79[3];
  *(v0 + 576) = v79[2];
  *(v0 + 592) = v55;
  sub_1001021E8(v0 + 544);
  memcpy((v0 + 280), (v0 + 544), 0x108uLL);
  SharingCircleWildAdvertisementKey.init(key:)();
  memcpy((v0 + 16), (v0 + 280), 0x108uLL);
LABEL_33:
  v72 = *(v0 + 848);

  memcpy(v72, (v0 + 16), 0x108uLL);
  v73 = *(v0 + 8);

  return v73();
}

uint64_t sub_1000FFE68()
{
  v1 = v0[129];
  v2 = v0[115];
  v3 = v0[113];
  v4 = v0[112];
  (*(v3 + 16))(v2, v0[110], v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[137] = v6;
  *(v6 + 16) = v1;
  (*(v3 + 32))(v6 + v5, v2, v4);

  v7 = swift_task_alloc();
  v0[138] = v7;
  *v7 = v0;
  v7[1] = sub_1000FFFD4;
  v8 = v0[118];
  v9 = v0[116];

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_100102B3C, v6, v9);
}

uint64_t sub_1000FFFD4()
{
  v1 = *(*v0 + 888);

  return _swift_task_switch(sub_100100100, v1, 0);
}

uint64_t sub_100100100()
{
  v34 = v0;
  v1 = *(v0 + 936);
  sub_1000D2A70(*(v0 + 944), v1, &unk_1016AF8B0, &unk_1013A0700);
  v2 = type metadata accessor for OwnedBeaconGroup(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(*(v0 + 936), &unk_1016AF8B0, &unk_1013A0700);
    v3 = *(v0 + 1112);
  }

  else
  {
    v4 = *(v0 + 1112);
    v5 = *(v0 + 936);
    v6 = sub_1005183F0(*(v0 + 1080), *(v0 + 1088));
    sub_100101E70(v5, type metadata accessor for OwnedBeaconGroup);
    if ((v6 & 0x100) != 0)
    {
      v3 = v4;
    }

    else
    {
      v3 = v6;
    }
  }

  v7 = *(v0 + 1088);
  v8 = *(v0 + 1080);
  v9 = *(v0 + 1072);
  v10 = *(v0 + 1064);
  v11 = *(v0 + 944);
  v12 = sub_10110DFBC(v11, v3);
  v31 = v13;
  v32 = v12;
  sub_100016590(v8, v7);
  sub_100006654(v10, v9);
  sub_10000B3A8(v11, &unk_1016AF8B0, &unk_1013A0700);
  v14 = *(v0 + 1056);
  v15 = *(v0 + 1048);
  v16 = *(v0 + 872);
  v17 = *(v0 + 864);
  v18 = *(v0 + 856);
  v20 = v18[4];
  v19 = v18[5];
  v21 = v18[6];
  v22 = v18[7];
  *(v0 + 840) = *(v18 + *(*(v0 + 984) + 44));
  sub_100017D5C(v17, v16);
  sub_100017D5C(v20, v19);
  sub_100017D5C(v21, v22);
  sub_100102194();
  v23 = FixedWidthInteger.data.getter();
  sub_100423378(v17, v16, v20, v19, v15, v14, v21, v22, v33, v23, v24, v32, v31);

  v25 = v33[5];
  *(v0 + 608) = v33[4];
  *(v0 + 624) = v25;
  *(v0 + 640) = v33[6];
  v26 = v33[1];
  *(v0 + 544) = v33[0];
  *(v0 + 560) = v26;
  v27 = v33[3];
  *(v0 + 576) = v33[2];
  *(v0 + 592) = v27;
  sub_1001021E8(v0 + 544);
  memcpy((v0 + 280), (v0 + 544), 0x108uLL);
  SharingCircleWildAdvertisementKey.init(key:)();
  memcpy((v0 + 16), (v0 + 280), 0x108uLL);
  v28 = *(v0 + 848);

  memcpy(v28, (v0 + 16), 0x108uLL);
  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_1001003F4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a3;
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      memset(v16, 0, 14);
      v7 = v16;
      goto LABEL_17;
    }

    v8 = a5;
    v9 = a4;
    v10 = *(a1 + 16);
    v11 = *(a1 + 24);
    a1 = __DataStorage._bytes.getter();
    v12 = a1;
    if (a1)
    {
      a1 = __DataStorage._offset.getter();
      a5 = v10 - a1;
      if (__OFSUB__(v10, a1))
      {
        goto LABEL_19;
      }

      v12 += a5;
    }

    if (!__OFSUB__(v11, v10))
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_11:
    v13 = a1;
    if (a1 >> 32 >= a1)
    {
      v8 = a5;
      v9 = a4;
      v12 = __DataStorage._bytes.getter();
      if (!v12)
      {
LABEL_15:
        __DataStorage._length.getter();
        a5 = v8;
        v7 = v12;
        a3 = v5;
        a4 = v9;
        goto LABEL_17;
      }

      v14 = __DataStorage._offset.getter();
      if (!__OFSUB__(v13, v14))
      {
        v12 += v13 - v14;
        goto LABEL_15;
      }

LABEL_20:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v6)
  {
    goto LABEL_11;
  }

  v16[0] = a1;
  LOWORD(v16[1]) = a2;
  BYTE2(v16[1]) = BYTE2(a2);
  BYTE3(v16[1]) = BYTE3(a2);
  BYTE4(v16[1]) = BYTE4(a2);
  BYTE5(v16[1]) = BYTE5(a2);
  v7 = v16;
LABEL_17:
  sub_100A78F4C(v7, a3, a4, a5);
}

uint64_t sub_1001005E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_100100698;

  return sub_1000ECDEC(a3, a4);
}

uint64_t sub_100100698(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return _swift_task_switch(sub_1001007E4, 0, 0);
  }
}

uint64_t sub_100100808(uint64_t a1)
{
  v4 = *(type metadata accessor for MACAddress() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014650;

  return sub_1001005E8(a1, v6, v7, v1 + v5);
}

unint64_t sub_100100904()
{
  result = qword_101697278;
  if (!qword_101697278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697278);
  }

  return result;
}

double sub_100100958(uint64_t a1)
{
  result = 0.0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 256) = 0x3000000000000000;
  return result;
}

unint64_t sub_100100A38()
{
  result = qword_1016972B0;
  if (!qword_1016972B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016972B0);
  }

  return result;
}

double sub_100100A8C(uint64_t a1)
{
  *a1 = xmmword_10138BC00;
  *(a1 + 16) = xmmword_10138BC00;
  *(a1 + 32) = xmmword_10138BC00;
  *(a1 + 48) = xmmword_10138BC00;
  *(a1 + 64) = xmmword_10138BC00;
  *(a1 + 80) = xmmword_10138BC00;
  *(a1 + 96) = xmmword_10138BC00;
  *(a1 + 112) = xmmword_10138BC00;
  *(a1 + 128) = xmmword_10138BC00;
  *(a1 + 144) = xmmword_10138BC00;
  *(a1 + 160) = xmmword_10138BC00;
  *(a1 + 176) = xmmword_10138BC00;
  *(a1 + 192) = xmmword_10138BC00;
  *(a1 + 208) = 16128;
  result = 0.0;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  return result;
}

uint64_t sub_100100ACC(uint64_t a1)
{
  v1 = (*(a1 + 256) >> 59) & 6;
  if (v1 == 6)
  {
    return (*a1 + 6);
  }

  else
  {
    return v1 | ((*(a1 + 240) & 0x2000000000000000) != 0);
  }
}

uint64_t sub_100100AF8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_1000EFE88(a1, v5, v4);
}

unint64_t sub_100100BA4()
{
  result = qword_1016972C8;
  if (!qword_1016972C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016972C8);
  }

  return result;
}

uint64_t sub_100100BF8(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, unint64_t a16, uint64_t a17, unint64_t a18, uint64_t a19, unint64_t a20, uint64_t a21, unint64_t a22, uint64_t a23, unint64_t a24, uint64_t a25, unint64_t a26, uint64_t a27, uint64_t a28, unint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, unint64_t a33)
{
  v38 = (a33 >> 59) & 6 | ((a31 & 0x2000000000000000) != 0);
  if (v38 > 2)
  {
    switch(v38)
    {
      case 3:
        sub_100016590(result, a2);
        sub_100016590(a3, a4);
        sub_100016590(a5, a6);
        sub_100016590(a7, a8);
        sub_100016590(a9, a10);
        sub_100016590(a11, a12);
        result = a13;
        a2 = a14;
        break;
      case 4:
        sub_100016590(result, a2);
        sub_100016590(a3, a4);
        sub_100016590(a5, a6);
        result = a7;
        a2 = a8;
        break;
      case 5:
        break;
      default:
        return result;
    }
  }

  else if (v38)
  {
    if (v38 == 1)
    {
      sub_100016590(result, a2);
      sub_100016590(a3, a4);
      sub_100016590(a5, a6);
      sub_100016590(a7, a8);
      result = a9;
      a2 = a10;
    }

    else
    {
      if (v38 != 2)
      {
        return result;
      }

      sub_100016590(result, a2);
      sub_100016590(a3, a4);
      sub_100016590(a5, a6);
      sub_100016590(a7, a8);
      sub_100016590(a9, a10);
      sub_100016590(a11, a12);
      sub_100016590(a13, a14);
      sub_100016590(a15, a16);
      sub_100016590(a17, a18);
      sub_100016590(a19, a20);
      sub_100016590(a21, a22);
      sub_100016590(a23, a24);
      sub_100016590(a25, a26);
      sub_100016590(a28, a29);
      sub_100016590(a30, a31 & 0xDFFFFFFFFFFFFFFFLL);
      a2 = a33 & 0xCFFFFFFFFFFFFFFFLL;
      result = a32;
    }
  }

  else
  {
    sub_100016590(result, a2);
    result = a3;
    a2 = a4;
  }

  return sub_100016590(result, a2);
}

uint64_t sub_100100EBC()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100100EFC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_1000EF77C(a1, v5, v4);
}

uint64_t sub_100100FA8(uint64_t a1)
{
  v4 = *(type metadata accessor for MACAddress() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014650;

  return sub_1000EF874(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1001010A8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001010CC(uint64_t a1)
{
  sub_1000BC4D4(&qword_1016972D8, &qword_1013AAC60);

  return sub_1000FD958(a1);
}

uint64_t type metadata accessor for AirPodsLEPairingService.BeaconCreationResult(uint64_t a1)
{
  result = qword_101697460;
  if (!qword_101697460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001011C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100101224()
{
  result = qword_101697308;
  if (!qword_101697308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697308);
  }

  return result;
}

uint64_t sub_100101278(uint64_t a1, uint64_t *a2)
{
  *(v2 + 16) = a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_100101318;

  return sub_100102674(v3, v4);
}

uint64_t sub_100101318(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

unint64_t sub_100101428()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v11 - v5;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v7 = sub_101073524(v11[1]);

  if ((v7 * 60) >> 64 != (60 * v7) >> 63)
  {
    __break(1u);
    goto LABEL_8;
  }

  static Date.trustedNow.getter(v6);
  Date.timeIntervalSinceReferenceDate.getter();
  Date.init(timeIntervalSinceReferenceDate:)();
  Date.timeIntervalSince(_:)();
  static Duration.seconds(_:)();
  v9 = Duration.milliseconds.getter();
  v10 = *(v1 + 8);
  v10(v4, v0);
  result = (v10)(v6, v0);
  if ((v9 & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!HIDWORD(v9))
  {
    return v9;
  }

LABEL_9:
  __break(1u);
  return result;
}

BOOL sub_100101618(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 40);
  v4 = *(a1 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v5 = v3 + 2;
    v7 = *(v3 - 1);
    v6 = *v3;
    sub_100017D5C(v7, *v3);
    v8 = sub_10111EBC4(v7, v6, a2);
    sub_100016590(v7, v6);
    v3 = v5;
  }

  while ((v8 & 1) != 0);
  return v4 == 0;
}

unint64_t sub_100101704()
{
  result = qword_101697318;
  if (!qword_101697318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697318);
  }

  return result;
}

void *sub_100101758(void *result)
{
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
  }

  return result;
}

unint64_t sub_100101804(unint64_t result)
{
  if (!(result >> 62))
  {
    return swift_errorRetain();
  }

  return result;
}

unint64_t sub_100101814(unint64_t result)
{
  if (!(result >> 62))
  {
  }

  return result;
}

unint64_t sub_100101824()
{
  result = qword_1016A61A0;
  if (!qword_1016A61A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A61A0);
  }

  return result;
}

int8x16_t sub_100101878(uint64_t a1)
{
  v1 = *(a1 + 24) & 0xCFFFFFFFFFFFFFFFLL;
  v2 = *(a1 + 40) & 0xCFFFFFFFFFFFFFFFLL;
  v3 = *(a1 + 56) & 0xCFFFFFFFFFFFFFFFLL;
  v4 = *(a1 + 72) & 0xCFFFFFFFFFFFFFFFLL;
  v5 = *(a1 + 88) & 0xCFFFFFFFFFFFFFFFLL;
  v6 = *(a1 + 104) & 0xCFFFFFFFFFFFFFFFLL;
  v7 = *(a1 + 120) & 0xCFFFFFFFFFFFFFFFLL;
  v8 = *(a1 + 136) & 0xCFFFFFFFFFFFFFFFLL;
  v9 = *(a1 + 152) & 0xCFFFFFFFFFFFFFFFLL;
  v10 = *(a1 + 168) & 0xCFFFFFFFFFFFFFFFLL;
  v11 = *(a1 + 184) & 0xCFFFFFFFFFFFFFFFLL;
  v12 = *(a1 + 224) & 0xCFFFFFFFFFFFFFFFLL;
  v13 = *(a1 + 240) & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
  v14 = *(a1 + 256) & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
  *(a1 + 8) &= 0xCFFFFFFFFFFFFFFFLL;
  *(a1 + 24) = v1;
  *(a1 + 40) = v2;
  *(a1 + 56) = v3;
  *(a1 + 72) = v4;
  *(a1 + 88) = v5;
  *(a1 + 104) = v6;
  *(a1 + 120) = v7;
  *(a1 + 136) = v8;
  *(a1 + 152) = v9;
  *(a1 + 168) = v10;
  *(a1 + 184) = v11;
  result = vandq_s8(*(a1 + 200), xmmword_10138BC10);
  *(a1 + 200) = result;
  *(a1 + 224) = v12;
  *(a1 + 240) = v13;
  *(a1 + 256) = v14;
  return result;
}

unint64_t sub_10010194C()
{
  result = qword_101697338;
  if (!qword_101697338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697338);
  }

  return result;
}

unint64_t sub_1001019A0()
{
  result = qword_101697340;
  if (!qword_101697340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697340);
  }

  return result;
}

unint64_t sub_100101B58()
{
  result = qword_1016A60F0;
  if (!qword_1016A60F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A60F0);
  }

  return result;
}

unint64_t sub_100101BAC()
{
  result = qword_1016A4000;
  if (!qword_1016A4000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4000);
  }

  return result;
}

int8x16_t sub_100101C00(uint64_t a1)
{
  v1 = *(a1 + 24) & 0xCFFFFFFFFFFFFFFFLL;
  v2 = *(a1 + 40) & 0xCFFFFFFFFFFFFFFFLL;
  v3 = *(a1 + 56) & 0xCFFFFFFFFFFFFFFFLL;
  v4 = *(a1 + 72) & 0xCFFFFFFFFFFFFFFFLL;
  v5 = *(a1 + 88) & 0xCFFFFFFFFFFFFFFFLL;
  v6 = *(a1 + 104) & 0xCFFFFFFFFFFFFFFFLL;
  v7 = *(a1 + 120) & 0xCFFFFFFFFFFFFFFFLL;
  v8 = *(a1 + 136) & 0xCFFFFFFFFFFFFFFFLL;
  v9 = *(a1 + 152) & 0xCFFFFFFFFFFFFFFFLL;
  v10 = *(a1 + 168) & 0xCFFFFFFFFFFFFFFFLL;
  v11 = *(a1 + 184) & 0xCFFFFFFFFFFFFFFFLL;
  v12 = *(a1 + 224) & 0xCFFFFFFFFFFFFFFFLL;
  v13 = *(a1 + 256) & 0xCFFFFFFFFFFFFFFFLL;
  v14 = *(a1 + 240) & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
  *(a1 + 8) &= 0xCFFFFFFFFFFFFFFFLL;
  *(a1 + 24) = v1;
  *(a1 + 40) = v2;
  *(a1 + 56) = v3;
  *(a1 + 72) = v4;
  *(a1 + 88) = v5;
  *(a1 + 104) = v6;
  *(a1 + 120) = v7;
  *(a1 + 136) = v8;
  *(a1 + 152) = v9;
  *(a1 + 168) = v10;
  *(a1 + 184) = v11;
  result = vandq_s8(*(a1 + 200), xmmword_10138BC10);
  *(a1 + 200) = result;
  *(a1 + 224) = v12;
  *(a1 + 240) = v14;
  *(a1 + 256) = v13;
  return result;
}

unint64_t sub_100101CD0()
{
  result = qword_101697358;
  if (!qword_101697358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697358);
  }

  return result;
}

uint64_t sub_100101D24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100101D88(uint64_t a1)
{
  v1 = *(a1 + 168);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100101DA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100101E08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100101E70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100101ED0(uint64_t a1)
{
  v1 = (*(a1 + 24) >> 58) & 0xC | (*(a1 + 8) >> 60) & 3 | *(a1 + 47) & 0x30 | (*(a1 + 56) >> 54) & 0xC0 | (*(a1 + 72) >> 52) & 0x300 | (*(a1 + 88) >> 50) & 0xC00 | *(a1 + 110) & 0x3000 | (*(a1 + 120) >> 46) & 0xC000 | (*(a1 + 136) >> 44) & 0x30000 | (*(a1 + 152) >> 42) & 0xC0000 | (*(a1 + 168) >> 40) & 0x300000 | (*(a1 + 184) >> 38) & 0xC00000 | (*(a1 + 200) >> 36) & 0x3000000 | (*(a1 + 208) >> 8 << 26);
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

void sub_100101FAC()
{
  v1 = *(type metadata accessor for MACAddress() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100E76060(v0[2], v0[3], v0[4], v0[5], v0[6], v0 + v2, *(v0 + v3), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_10010205C()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100102120@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MACAddress() - 8);
  v4 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100E73DFC(v4, a1);
}

unint64_t sub_100102194()
{
  result = qword_101697398;
  if (!qword_101697398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697398);
  }

  return result;
}

int8x16_t sub_1001021E8(uint64_t a1)
{
  v1 = *(a1 + 24) & 0xCFFFFFFFFFFFFFFFLL;
  v2 = *(a1 + 40) & 0xCFFFFFFFFFFFFFFFLL;
  v3 = *(a1 + 56) & 0xCFFFFFFFFFFFFFFFLL;
  v4 = *(a1 + 72) & 0xCFFFFFFFFFFFFFFFLL;
  v5 = *(a1 + 88) & 0xCFFFFFFFFFFFFFFFLL;
  v6 = *(a1 + 104) & 0xCFFFFFFFFFFFFFFFLL;
  v7 = *(a1 + 120) & 0xCFFFFFFFFFFFFFFFLL;
  v8 = *(a1 + 136) & 0xCFFFFFFFFFFFFFFFLL;
  v9 = *(a1 + 152) & 0xCFFFFFFFFFFFFFFFLL;
  v10 = *(a1 + 168) & 0xCFFFFFFFFFFFFFFFLL;
  v11 = *(a1 + 184) & 0xCFFFFFFFFFFFFFFFLL;
  v12 = *(a1 + 224) & 0xCFFFFFFFFFFFFFFFLL;
  v13 = *(a1 + 240) & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
  v14 = *(a1 + 256) & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
  *(a1 + 8) &= 0xCFFFFFFFFFFFFFFFLL;
  *(a1 + 24) = v1;
  *(a1 + 40) = v2;
  *(a1 + 56) = v3;
  *(a1 + 72) = v4;
  *(a1 + 88) = v5;
  *(a1 + 104) = v6;
  *(a1 + 120) = v7;
  *(a1 + 136) = v8;
  *(a1 + 152) = v9;
  *(a1 + 168) = v10;
  *(a1 + 184) = v11;
  result = vandq_s8(*(a1 + 200), xmmword_10138BC10);
  *(a1 + 200) = result;
  *(a1 + 224) = v12;
  *(a1 + 240) = v13;
  *(a1 + 256) = v14;
  return result;
}

uint64_t sub_100102320(uint64_t a1)
{
  sub_1000BC4D4(&qword_1016973A0, &unk_10138BF30);
  v3 = *(v1 + 16);

  return sub_1000FD454(a1, v3);
}

unint64_t sub_1001023A0()
{
  result = qword_1016973A8;
  if (!qword_1016973A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016973A8);
  }

  return result;
}

unint64_t sub_1001023F4()
{
  result = qword_1016973B0;
  if (!qword_1016973B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016973B0);
  }

  return result;
}

uint64_t sub_100102448(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_100102490(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MACAddress() - 8);
  v4 = (*(v3 + 80) + 128) & ~*(v3 + 80);
  sub_100E760A0((v1 + 24), *(v1 + 104), *(v1 + 112), *(v1 + 120), v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)), a1);
}

uint64_t sub_1001025B8(uint64_t a1, uint64_t *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100101278(a1, a2);
}

uint64_t sub_100102674(uint64_t a1, char a2)
{
  *(v2 + 32) = a2;
  *(v2 + 24) = a1;
  return _swift_task_switch(sub_100102698, 0, 0);
}

uint64_t sub_100102698()
{
  v16 = v0;
  if (*(v0 + 32))
  {
    v1 = 0;
  }

  else
  {
    v2 = *(v0 + 24);
    v3 = qword_101694440;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_101696FF8);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136315138;
      *(v0 + 16) = v2;
      type metadata accessor for Peripheral();
      sub_100102448(&qword_1016972D0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      v11 = v10;

      v12 = sub_1000136BC(v9, v11, &v15);

      *(v7 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v5, v6, "Discovered peripheral: %s", v7, 0xCu);
      sub_100007BAC(v8);
    }

    else
    {
    }

    v1 = *(v0 + 24);
  }

  v13 = *(v0 + 8);

  return v13(v1);
}

void sub_100102900(uint64_t a1)
{
  sub_100102974(319);
  if (v1 <= 0x3F)
  {
    sub_1001029E8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100102974(uint64_t a1)
{
  if (!qword_101697470)
  {
    type metadata accessor for OwnedBeaconGroup(255);
    type metadata accessor for OwnedBeaconRecord(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_101697470);
    }
  }
}

void sub_1001029E8()
{
  if (!qword_101697478)
  {
    v0 = type metadata accessor for StandaloneBeacon(0);
    if (!v1)
    {
      atomic_store(v0, &qword_101697478);
    }
  }
}

unint64_t sub_100102A30(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return *a1 + 2;
  }
}

uint64_t sub_100102A54(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xE && *(a1 + 8))
  {
    return (*a1 + 14);
  }

  v3 = (((*a1 >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*a1 >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xD)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100102AA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xD)
  {
    *result = a2 - 14;
    if (a3 >= 0xE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

void *sub_100102B04(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFFFLL | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2) | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_100102B40(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = sub_1000BC4D4(&unk_101698CA0, &unk_101393DB0);
  v2[6] = swift_task_alloc();
  v2[7] = sub_1000BC4D4(&qword_1016975B8, &unk_10138C1B0);
  v2[8] = swift_task_alloc();
  type metadata accessor for OwnerSharingCircle(0);
  v2[9] = swift_task_alloc();
  type metadata accessor for OwnerPeerTrust(0);
  v2[10] = swift_task_alloc();
  v3 = type metadata accessor for MemberSharingCircle(0);
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[16] = v4;
  v5 = *(v4 - 8);
  v2[17] = v5;
  v2[18] = *(v5 + 64);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return _swift_task_switch(sub_100102D84, v1, 0);
}

uint64_t sub_100102D84()
{
  v22 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A560);
  v6 = *(v3 + 16);
  v0[21] = v6;
  v0[22] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[20];
  v11 = v0[16];
  v12 = v0[17];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_100111C38(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v10, v11);
    v18 = sub_1000136BC(v15, v17, &v21);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Accept %{private,mask.hash}s", v13, 0x16u);
    sub_100007BAC(v14);
  }

  else
  {

    (*(v12 + 8))(v10, v11);
  }

  v19 = *(v0[4] + 112);
  v0[23] = v19;

  return _swift_task_switch(sub_100102FE8, v19, 0);
}

uint64_t sub_100102FE8()
{

  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  v2 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v1 = v0;
  v1[1] = sub_1001030D4;
  v3 = *(v0 + 184);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_10010EE68, v3, v2);
}

uint64_t sub_1001030D4()
{
  v1 = *(*v0 + 184);

  return _swift_task_switch(sub_1001031EC, v1, 0);
}

uint64_t sub_1001031EC()
{
  v1 = v0[4];
  v0[25] = v0[2];
  return _swift_task_switch(sub_100103210, v1, 0);
}

uint64_t sub_100103210()
{
  v1 = v0[25];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[11];
  v5 = v0[12];
  v6 = v0[3];
  *(swift_task_alloc() + 16) = v6;
  sub_1012BBB68(sub_10010EE70, v1, v2);

  sub_1000D2A70(v2, v3, &unk_101698BC0, &qword_10138C440);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    v7 = v0[23];
    sub_10000B3A8(v0[14], &unk_101698BC0, &qword_10138C440);

    return _swift_task_switch(sub_100103630, v7, 0);
  }

  else
  {
    sub_100111DF4(v0[14], v0[13], type metadata accessor for MemberSharingCircle);
    v8 = swift_task_alloc();
    v0[26] = v8;
    *v8 = v0;
    v8[1] = sub_1001033D4;
    v9 = v0[13];

    return sub_100104BD0(v9);
  }
}

uint64_t sub_1001033D4()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_10010492C;
  }

  else
  {
    v4 = sub_100103500;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100103500()
{
  v9 = v0;
  sub_100111D94(v0[13], type metadata accessor for MemberSharingCircle);
  v1 = v0[4];
  sub_10000B3A8(v0[15], &unk_101698BC0, &qword_10138C440);
  v2 = *(v1 + 408);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_1003CC318();
    v5 = sub_1003A97DC(&v8, v4 + 4, v3, v2);
    v6 = v8;

    sub_1000128F8(v6);
    if (v5 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = _swiftEmptyArrayStorage;
LABEL_5:
  v0[32] = v4;

  return _swift_task_switch(sub_100103DDC, 0, 0);
}

uint64_t sub_100103630()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 152);
  v3 = *(v0 + 128);
  v4 = *(v0 + 136);
  (*(v0 + 168))(v2, *(v0 + 24), v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v0 + 224) = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);

  v7 = swift_task_alloc();
  *(v0 + 232) = v7;
  *v7 = v0;
  v7[1] = sub_10010377C;
  v9 = *(v0 + 40);
  v8 = *(v0 + 48);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_10010EEC0, v6, v9);
}

uint64_t sub_10010377C()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_1001038A8, v1, 0);
}

uint64_t sub_1001038A8()
{
  v21 = v0;
  v1 = v0[6];
  v2 = sub_1000BC4D4(&qword_101698CB0, &qword_10138C1C8);
  if ((*(*(v2 - 1) + 48))(v1, 1, v2) != 1)
  {
LABEL_5:
    v9 = v0[9];
    v8 = v0[10];
    v11 = v0[7];
    v10 = v0[8];
    v12 = *(v2 + 12);
    v13 = *(v11 + 48);
    sub_100111DF4(v1, v10, type metadata accessor for OwnerPeerTrust);
    sub_100111DF4(v1 + v12, v10 + v13, type metadata accessor for OwnerSharingCircle);
    v14 = *(v11 + 48);
    sub_100111DF4(v10, v8, type metadata accessor for OwnerPeerTrust);
    sub_100111DF4(v10 + v14, v9, type metadata accessor for OwnerSharingCircle);
    v15 = swift_task_alloc();
    v0[30] = v15;
    *v15 = v0;
    v15[1] = sub_100103B64;
    v17 = v0[9];
    v16 = v0[10];

    return sub_10010911C(v17, v16);
  }

  sub_10000B3A8(v1, &unk_101698CA0, &unk_101393DB0);
  sub_10010EED8();
  v1 = swift_allocError();
  *v3 = 0;
  swift_willThrow();
  v0[38] = v1;
  v4 = v0[4];
  sub_10000B3A8(v0[15], &unk_101698BC0, &qword_10138C440);
  v5 = *(v4 + 408);
  v6 = *(v5 + 16);
  if (v6)
  {
    v2 = sub_1003CC318();
    v19 = sub_1003A97DC(&v20, v2 + 4, v6, v5);
    v7 = v20;

    sub_1000128F8(v7);
    if (v19 != v6)
    {
      __break(1u);
      goto LABEL_5;
    }
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  v0[39] = v2;
  swift_errorRetain();

  return _swift_task_switch(sub_100104288, 0, 0);
}

uint64_t sub_100103B64()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_100104A70;
  }

  else
  {
    v4 = sub_100103C90;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100103C90()
{
  v10 = v0;
  v1 = v0[10];
  sub_100111D94(v0[9], type metadata accessor for OwnerSharingCircle);
  sub_100111D94(v1, type metadata accessor for OwnerPeerTrust);
  v2 = v0[4];
  sub_10000B3A8(v0[15], &unk_101698BC0, &qword_10138C440);
  v3 = *(v2 + 408);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = sub_1003CC318();
    v6 = sub_1003A97DC(&v9, v5 + 4, v4, v3);
    v7 = v9;

    sub_1000128F8(v7);
    if (v6 == v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_5:
  v0[32] = v5;

  return _swift_task_switch(sub_100103DDC, 0, 0);
}

uint64_t sub_100103DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[32];
  if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    v5 = *(v4 + 16);
    v3[33] = v5;
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_12:
    v10 = v3[4];

    v5 = sub_100103F34;
    a2 = v10;
    a3 = 0;

    return _swift_task_switch(v5, a2, a3);
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
  v3[33] = v5;
  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_4:
  if (v5 < 1)
  {
    __break(1u);
    return _swift_task_switch(v5, a2, a3);
  }

  v6 = v3[32];
  v3[34] = 0;
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v7 = *(v6 + 32);
  }

  v3[35] = v7;
  type metadata accessor for AnalyticsPublisher();
  v3[36] = swift_allocObject();
  swift_defaultActor_initialize();
  v8 = swift_task_alloc();
  v3[37] = v8;
  *v8 = v3;
  v8[1] = sub_100104028;

  return sub_101163F78(v7);
}

uint64_t sub_100103F34()
{
  *(*(v0 + 32) + 408) = _swiftEmptyDictionarySingleton;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100104028()
{

  return _swift_task_switch(sub_100104140, 0, 0);
}

uint64_t sub_100104140()
{
  v1 = v0[34];
  v2 = v0[33];

  if (v1 + 1 == v2)
  {
    v3 = v0[4];

    return _swift_task_switch(sub_100103F34, v3, 0);
  }

  else
  {
    v4 = v0[34] + 1;
    v0[34] = v4;
    v5 = v0[32];
    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v6 = *(v5 + 8 * v4 + 32);
    }

    v0[35] = v6;
    type metadata accessor for AnalyticsPublisher();
    v0[36] = swift_allocObject();
    swift_defaultActor_initialize();
    v7 = swift_task_alloc();
    v0[37] = v7;
    *v7 = v0;
    v7[1] = sub_100104028;

    return sub_101163F78(v6);
  }
}

uint64_t sub_100104288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[39];
  if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    v5 = *(v4 + 16);
    v3[40] = v5;
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_12:
    v11 = v3[4];

    v5 = sub_1001043EC;
    a2 = v11;
    a3 = 0;

    return _swift_task_switch(v5, a2, a3);
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
  v3[40] = v5;
  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_4:
  if (v5 < 1)
  {
    __break(1u);
    return _swift_task_switch(v5, a2, a3);
  }

  v6 = v3[39];
  v3[41] = 0;
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v7 = *(v6 + 32);
  }

  v3[42] = v7;
  swift_errorRetain();
  v8 = swift_task_alloc();
  v3[43] = v8;
  *v8 = v3;
  v8[1] = sub_1001044EC;
  v9 = v3[38];

  return sub_10116BDD0(v7, v9);
}

uint64_t sub_1001043EC(uint64_t a1)
{
  v2 = *(v1 + 32);
  swift_willThrow();
  *(v2 + 408) = _swiftEmptyDictionarySingleton;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1001044EC()
{

  if (v0)
  {

    v1 = sub_100111F48;
  }

  else
  {
    v1 = sub_100104604;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100104604()
{

  type metadata accessor for AnalyticsPublisher();
  v0[44] = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = swift_task_alloc();
  v0[45] = v1;
  *v1 = v0;
  v1[1] = sub_1001046C0;
  v2 = v0[42];

  return sub_101163F78(v2);
}

uint64_t sub_1001046C0()
{

  return _swift_task_switch(sub_1001047D8, 0, 0);
}

uint64_t sub_1001047D8()
{
  v1 = v0[41];
  v2 = v0[40];

  if (v1 + 1 == v2)
  {
    v3 = v0[4];

    return _swift_task_switch(sub_1001043EC, v3, 0);
  }

  else
  {
    v4 = v0[41] + 1;
    v0[41] = v4;
    v5 = v0[39];
    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v6 = *(v5 + 8 * v4 + 32);
    }

    v0[42] = v6;
    swift_errorRetain();
    v7 = swift_task_alloc();
    v0[43] = v7;
    *v7 = v0;
    v7[1] = sub_1001044EC;
    v8 = v0[38];

    return sub_10116BDD0(v6, v8);
  }
}

uint64_t sub_10010492C()
{
  v9 = v0;
  sub_100111D94(v0[13], type metadata accessor for MemberSharingCircle);
  v0[38] = v0[27];
  v1 = v0[4];
  sub_10000B3A8(v0[15], &unk_101698BC0, &qword_10138C440);
  v2 = *(v1 + 408);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_1003CC318();
    v7 = sub_1003A97DC(&v8, v4 + 4, v3, v2);
    v5 = v8;

    sub_1000128F8(v5);
    if (v7 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = _swiftEmptyArrayStorage;
LABEL_5:
  v0[39] = v4;
  swift_errorRetain();

  return _swift_task_switch(sub_100104288, 0, 0);
}

uint64_t sub_100104A70()
{
  v10 = v0;
  v1 = v0[10];
  sub_100111D94(v0[9], type metadata accessor for OwnerSharingCircle);
  sub_100111D94(v1, type metadata accessor for OwnerPeerTrust);
  v0[38] = v0[31];
  v2 = v0[4];
  sub_10000B3A8(v0[15], &unk_101698BC0, &qword_10138C440);
  v3 = *(v2 + 408);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = sub_1003CC318();
    v8 = sub_1003A97DC(&v9, v5 + 4, v4, v3);
    v6 = v9;

    sub_1000128F8(v6);
    if (v8 == v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_5:
  v0[39] = v5;
  swift_errorRetain();

  return _swift_task_switch(sub_100104288, 0, 0);
}

uint64_t sub_100104BD0(uint64_t a1)
{
  v2[48] = a1;
  v2[49] = v1;
  v3 = type metadata accessor for SharedBeaconRecord(0);
  v2[50] = v3;
  v2[51] = *(v3 - 8);
  v2[52] = swift_task_alloc();
  v4 = type metadata accessor for MemberPeerTrust(0);
  v2[53] = v4;
  v2[54] = *(v4 - 8);
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v2[58] = sub_1000BC4D4(&qword_101698C10, &unk_10138C1E0);
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v2[61] = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v2[62] = swift_task_alloc();
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v2[65] = v5;
  v6 = *(v5 - 8);
  v2[66] = v6;
  v2[67] = *(v6 + 64);
  v2[68] = swift_task_alloc();
  v2[69] = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  v2[70] = swift_task_alloc();
  v2[71] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0);
  v2[72] = swift_task_alloc();
  v7 = type metadata accessor for MemberSharingCircle(0);
  v2[73] = v7;
  v2[74] = *(v7 - 8);
  v2[75] = swift_task_alloc();
  v2[76] = swift_task_alloc();
  v2[77] = swift_task_alloc();
  v2[78] = swift_task_alloc();
  v8 = swift_task_alloc();
  v2[79] = v8;
  *v8 = v2;
  v8[1] = sub_100104F30;

  return sub_10010C4E4();
}

uint64_t sub_100104F30()
{
  v2 = *v1;
  v2[80] = v0;

  if (v0)
  {

    v3 = v2[1];

    return v3();
  }

  else
  {
    v5 = v2[49];

    return _swift_task_switch(sub_100105160, v5, 0);
  }
}

uint64_t sub_100105160()
{
  v30 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[78];
  v2 = v0[48];
  v3 = type metadata accessor for Logger();
  v0[81] = sub_1000076D4(v3, qword_10177A560);
  sub_100111D2C(v2, v1, type metadata accessor for MemberSharingCircle);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[78];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v29[0] = v9;
    *v8 = 141558275;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    sub_100111C38(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_100111D94(v7, type metadata accessor for MemberSharingCircle);
    v13 = sub_1000136BC(v10, v12, v29);

    *(v8 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Data update on share accept. Update %{private,mask.hash}s", v8, 0x16u);
    sub_100007BAC(v9);
  }

  else
  {

    sub_100111D94(v7, type metadata accessor for MemberSharingCircle);
  }

  v14 = v0[80];
  v15 = v0[72];
  v16 = v0[48];
  *(swift_task_alloc() + 16) = v16;
  sub_100EC0C48(sub_1001118A8, v15);
  if (v14)
  {

    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v29[0] = v20;
      *v19 = 136315138;
      swift_getErrorValue();
      v21 = Error.localizedDescription.getter();
      v23 = sub_1000136BC(v21, v22, v29);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failure on share accept, iCloud data update: %s", v19, 0xCu);
      sub_100007BAC(v20);
    }

    sub_1001118C8();
    swift_allocError();
    *v24 = 1;
    swift_willThrow();

    v25 = v0[1];

    return v25();
  }

  else
  {
    v27 = v0[49];

    v28 = *(v27 + 112);
    v0[82] = v28;

    return _swift_task_switch(sub_100105658, v28, 0);
  }
}

uint64_t sub_100105680()
{
  v1 = v0[83];
  v2 = v0[72];
  v3 = swift_task_alloc();
  v0[84] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[85] = v4;
  *v4 = v0;
  v4[1] = sub_100105778;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_10011191C, v3, &type metadata for () + 1);
}

uint64_t sub_100105778()
{
  *(*v1 + 688) = v0;

  if (v0)
  {
    v2 = sub_100105D98;
  }

  else
  {

    v2 = sub_100105894;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001058B0()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 584);
  sub_10000B3A8(*(v0 + 576), &qword_1016975C8, &qword_10138C1F0);
  *(v0 + 100) = *(v2 + 20);

  return _swift_task_switch(sub_100105938, v1, 0);
}

uint64_t sub_100105938()
{
  v1 = *(v0 + 100);
  v2 = *(v0 + 656);
  v3 = *(v0 + 544);
  v4 = *(v0 + 528);
  v5 = *(v0 + 520);
  v6 = *(v0 + 384);
  v7 = *(v4 + 16);
  *(v0 + 696) = v7;
  *(v0 + 704) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v3, v6 + v1, v5);
  v8 = *(v4 + 80);
  *(v0 + 188) = v8;
  v9 = (v8 + 24) & ~v8;
  v10 = swift_allocObject();
  *(v0 + 712) = v10;
  *(v10 + 16) = v2;
  v11 = *(v4 + 32);
  *(v0 + 720) = v11;
  *(v0 + 728) = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v11(v10 + v9, v3, v5);

  v12 = swift_task_alloc();
  *(v0 + 736) = v12;
  *v12 = v0;
  v12[1] = sub_100105AD4;
  v13 = *(v0 + 568);
  v14 = *(v0 + 552);

  return unsafeBlocking<A>(context:_:)(v13, 0xD000000000000010, 0x800000010134A8C0, sub_100111924, v10, v14);
}

uint64_t sub_100105AD4()
{
  v1 = *(*v0 + 392);

  return _swift_task_switch(sub_100105C00, v1, 0);
}

uint64_t sub_100105C00()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 584);
  v3 = *(v0 + 560);
  sub_1000D2A70(*(v0 + 568), v3, &unk_101698BC0, &qword_10138C440);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 560);
    sub_10000B3A8(*(v0 + 568), &unk_101698BC0, &qword_10138C440);
    sub_10000B3A8(v4, &unk_101698BC0, &qword_10138C440);
    v5 = *(v0 + 656);
    *(v0 + 816) = *(*(v0 + 584) + 24);

    return _swift_task_switch(sub_100106428, v5, 0);
  }

  else
  {
    v6 = *(v0 + 392);
    sub_100111DF4(*(v0 + 560), *(v0 + 616), type metadata accessor for MemberSharingCircle);
    sub_1000035D0((v6 + 280), *(v6 + 304));
    v7 = swift_task_alloc();
    *(v0 + 744) = v7;
    *v7 = v0;
    v7[1] = sub_10010608C;
    v8 = *(v0 + 616);

    return sub_1007C498C(v8);
  }
}

uint64_t sub_100105D98()
{
  v1 = *(v0 + 392);

  return _swift_task_switch(sub_100105E04, v1, 0);
}

uint64_t sub_100105E04()
{
  v12 = v0;
  sub_10000B3A8(*(v0 + 576), &qword_1016975C8, &qword_10138C1F0);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v11 = v4;
    *v3 = 136315138;
    swift_getErrorValue();
    v5 = Error.localizedDescription.getter();
    v7 = sub_1000136BC(v5, v6, &v11);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failure on share accept, iCloud data update: %s", v3, 0xCu);
    sub_100007BAC(v4);
  }

  sub_1001118C8();
  swift_allocError();
  *v8 = 1;
  swift_willThrow();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10010608C()
{
  v2 = *v1;
  *(*v1 + 752) = v0;

  v3 = *(v2 + 392);
  if (v0)
  {
    v4 = sub_10010625C;
  }

  else
  {
    v4 = sub_1001061B8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1001061B8()
{
  v1 = *(v0 + 568);
  sub_100111D94(*(v0 + 616), type metadata accessor for MemberSharingCircle);
  sub_10000B3A8(v1, &unk_101698BC0, &qword_10138C440);
  v2 = *(v0 + 656);
  *(v0 + 816) = *(*(v0 + 584) + 24);

  return _swift_task_switch(sub_100106428, v2, 0);
}

uint64_t sub_10010625C()
{
  v12 = v0;
  v1 = *(v0 + 568);
  sub_100111D94(*(v0 + 616), type metadata accessor for MemberSharingCircle);
  sub_10000B3A8(v1, &unk_101698BC0, &qword_10138C440);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = sub_1000136BC(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failure on share accept, sharing keys download failure: %s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  else
  {
  }

  v9 = *(v0 + 656);
  *(v0 + 816) = *(*(v0 + 584) + 24);

  return _swift_task_switch(sub_100106428, v9, 0);
}

uint64_t sub_100106428()
{
  v1 = *(v0 + 720);
  v2 = *(v0 + 656);
  v3 = *(v0 + 544);
  v4 = *(v0 + 520);
  v5 = (*(v0 + 188) + 24) & ~*(v0 + 188);
  (*(v0 + 696))(v3, *(v0 + 384) + *(v0 + 816), v4);
  v6 = swift_allocObject();
  *(v0 + 760) = v6;
  *(v6 + 16) = v2;
  v1(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 768) = v7;
  *v7 = v0;
  v7[1] = sub_10010658C;
  v8 = *(v0 + 512);
  v9 = *(v0 + 488);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_10011193C, v6, v9);
}

uint64_t sub_10010658C()
{
  v1 = *v0;
  v2 = *(*v0 + 656);
  v3 = *(*v0 + 584);

  *(v1 + 820) = *(v3 + 32);

  return _swift_task_switch(sub_1001066DC, v2, 0);
}

uint64_t sub_1001066DC()
{
  v1 = *(v0 + 720);
  v2 = *(v0 + 656);
  v3 = *(v0 + 544);
  v4 = *(v0 + 520);
  v5 = (*(v0 + 188) + 24) & ~*(v0 + 188);
  (*(v0 + 696))(v3, *(v0 + 384) + *(v0 + 820), v4);
  v6 = swift_allocObject();
  *(v0 + 776) = v6;
  *(v6 + 16) = v2;
  v1(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 784) = v7;
  *v7 = v0;
  v7[1] = sub_100106840;
  v8 = *(v0 + 480);
  v9 = *(v0 + 464);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_100111954, v6, v9);
}

uint64_t sub_100106840()
{
  v1 = *(*v0 + 392);

  return _swift_task_switch(sub_10010696C, v1, 0);
}

uint64_t sub_10010696C()
{
  v85 = v0;
  v1 = *(v0 + 472);
  v2 = *(v0 + 424);
  v3 = *(v0 + 432);
  sub_1000D2A70(*(v0 + 480), v1, &qword_101698C10, &unk_10138C1E0);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 608);
    v5 = *(v0 + 384);
    sub_10000B3A8(*(v0 + 472), &qword_101698C10, &unk_10138C1E0);
    sub_100111D2C(v5, v4, type metadata accessor for MemberSharingCircle);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 608);
    if (v8)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v84[0] = v11;
      *v10 = 136315138;
      sub_100111C38(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      v14 = v13;
      sub_100111D94(v9, type metadata accessor for MemberSharingCircle);
      v15 = sub_1000136BC(v12, v14, v84);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v6, v7, "No peerTrustIdentifier for %s", v10, 0xCu);
      sub_100007BAC(v11);
    }

    else
    {

      sub_100111D94(v9, type metadata accessor for MemberSharingCircle);
    }

    sub_10010EED8();
    swift_allocError();
    *v28 = 1;
    swift_willThrow();
    sub_10000B3A8(*(v0 + 480), &qword_101698C10, &unk_10138C1E0);
    swift_errorRetain();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v84[0] = v32;
      *v31 = 136315138;
      swift_getErrorValue();
      v33 = Error.localizedDescription.getter();
      v35 = sub_1000136BC(v33, v34, v84);

      *(v31 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v29, v30, "Failure on share accept, can't send acceptance message: %s", v31, 0xCu);
      sub_100007BAC(v32);
    }

    else
    {
    }

    v36 = *(v0 + 496);
    v37 = *(v0 + 400);
    v38 = *(v0 + 408);
    sub_1000D2A70(*(v0 + 512), v36, &unk_101698C30, &unk_101392630);
    if ((*(v38 + 48))(v36, 1, v37) == 1)
    {
      v39 = *(v0 + 600);
      v40 = *(v0 + 384);
      sub_10000B3A8(*(v0 + 496), &unk_101698C30, &unk_101392630);
      sub_100111D2C(v40, v39, type metadata accessor for MemberSharingCircle);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();
      v43 = os_log_type_enabled(v41, v42);
      v44 = *(v0 + 600);
      if (v43)
      {
        v45 = *(v0 + 512);
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v84[0] = v47;
        *v46 = 141558275;
        *(v46 + 4) = 1752392040;
        *(v46 + 12) = 2081;
        sub_100111C38(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v48 = dispatch thunk of CustomStringConvertible.description.getter();
        v50 = v49;
        sub_100111D94(v44, type metadata accessor for MemberSharingCircle);
        v51 = sub_1000136BC(v48, v50, v84);

        *(v46 + 14) = v51;
        _os_log_impl(&_mh_execute_header, v41, v42, "Failure on share accept, can't fetch locations, no shared beacon record for: %{private,mask.hash}s", v46, 0x16u);
        sub_100007BAC(v47);

        v52 = v45;
      }

      else
      {
        v58 = *(v0 + 512);

        sub_100111D94(v44, type metadata accessor for MemberSharingCircle);
        v52 = v58;
      }
    }

    else
    {
      sub_100111DF4(*(v0 + 496), *(v0 + 416), type metadata accessor for SharedBeaconRecord);
      v53 = [objc_opt_self() mainBundle];
      v54 = [v53 bundleIdentifier];

      if (v54)
      {
        v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v57 = v56;
      }

      else
      {
        v55 = 0;
        v57 = 0;
      }

      sub_1000BC4D4(&unk_1016AA5B0, &unk_10138C200);
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_10138C0D0;
      v60 = SPBeaconTypeDurian;
      v61 = SPBeaconTypeAccessory;
      *(v59 + 32) = SPBeaconTypeDurian;
      *(v59 + 40) = v61;
      v62 = SPBeaconTypeHele;
      v63 = SPBeaconTypeSelfBeaconing;
      *(v59 + 48) = SPBeaconTypeHele;
      *(v59 + 56) = v63;
      v64 = SPBeaconTypeVirtualMeDevice;
      *(v59 + 64) = SPBeaconTypeVirtualMeDevice;
      v65 = qword_101694940;
      v66 = v60;
      v67 = v61;
      v68 = v62;
      v69 = v63;
      v70 = v64;
      if (v65 != -1)
      {
        swift_once();
      }

      v71 = *(v0 + 512);
      v72 = *(v0 + 416);
      v74 = *(v0 + 392);
      v73 = *(v0 + 400);
      OS_dispatch_queue.sync<A>(execute:)();
      v75 = sub_1010741C0(*(v0 + 360));

      My = type metadata accessor for Feature.FindMy();
      *(v0 + 264) = My;
      *(v0 + 272) = sub_100111C38(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
      v77 = sub_1000280DC((v0 + 240));
      (*(*(My - 8) + 104))(v77, enum case for Feature.FindMy.networkScalingImprovements(_:), My);
      LOBYTE(My) = isFeatureEnabled(_:)();
      sub_100007BAC((v0 + 240));
      *(v0 + 104) = v75;
      *(v0 + 112) = 0;
      *(v0 + 120) = &off_101607870;
      *(v0 + 128) = 0;
      *(v0 + 136) = v55;
      *(v0 + 144) = v57;
      *(v0 + 152) = v59;
      *(v0 + 160) = My & 1;
      *(v0 + 168) = 0;
      *(v0 + 176) = 0;
      *(v0 + 184) = 1;
      v78 = *(v0 + 152);
      *(v0 + 48) = *(v0 + 136);
      *(v0 + 64) = v78;
      *(v0 + 80) = *(v0 + 168);
      *(v0 + 96) = *(v0 + 184);
      v79 = *(v0 + 120);
      *(v0 + 16) = *(v0 + 104);
      *(v0 + 32) = v79;
      v80 = sub_1000035D0((v74 + 368), *(v74 + 392));
      sub_1000BC4D4(&qword_1016975D8, &unk_1013AAF10);
      v81 = swift_allocObject();
      *(v81 + 16) = xmmword_101385D80;
      *(v81 + 56) = v73;
      *(v81 + 64) = sub_100111C38(&qword_101698D80, type metadata accessor for SharedBeaconRecord, &unk_10140BB3C);
      v82 = sub_1000280DC((v81 + 32));
      sub_100111D2C(v72, v82, type metadata accessor for SharedBeaconRecord);
      sub_10010EF2C(v81, v0 + 16, *v80);

      sub_1001119F4(v0 + 104);
      sub_100111D94(v72, type metadata accessor for SharedBeaconRecord);
      v52 = v71;
    }

    sub_10000B3A8(v52, &unk_101698C30, &unk_101392630);

    v83 = *(v0 + 8);

    return v83();
  }

  else
  {
    v16 = *(v0 + 696);
    v17 = *(v0 + 584);
    v18 = *(v0 + 520);
    v19 = *(v0 + 456);
    v20 = *(v0 + 424);
    v22 = *(v0 + 384);
    v21 = *(v0 + 392);
    sub_100111DF4(*(v0 + 472), v19, type metadata accessor for MemberPeerTrust);
    v23 = *(v17 + 28);
    *(v0 + 216) = type metadata accessor for CircleTrustAcceptEnvelopeV1(0);
    *(v0 + 224) = sub_100111C38(&qword_1016975E0, type metadata accessor for CircleTrustAcceptEnvelopeV1, &unk_1013AE250);
    *(v0 + 232) = sub_100111C38(&qword_1016975E8, type metadata accessor for CircleTrustAcceptEnvelopeV1, &unk_1013AE110);
    v24 = sub_1000280DC((v0 + 192));
    v16(v24, v22 + v23, v18);
    v25 = *(v20 + 28);
    v26 = swift_task_alloc();
    *(v0 + 792) = v26;
    *v26 = v0;
    v26[1] = sub_1001074FC;

    return sub_10129A758(v21 + 240, v0 + 192, 3, v19 + v25);
  }
}

uint64_t sub_1001074FC()
{
  v2 = *v1;
  *(*v1 + 800) = v0;

  if (v0)
  {
    v3 = *(v2 + 392);
    v4 = sub_10010808C;
  }

  else
  {
    v5 = *(v2 + 392);
    sub_100007BAC((v2 + 192));
    v4 = sub_100107624;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100107624()
{
  v76 = v0;
  v1 = *(v0 + 456);
  v2 = *(v0 + 440);
  sub_100111D2C(v1, *(v0 + 448), type metadata accessor for MemberPeerTrust);
  sub_100111D2C(v1, v2, type metadata accessor for MemberPeerTrust);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 448);
    v74 = *(v0 + 440);
    v6 = swift_slowAlloc();
    v75[0] = swift_slowAlloc();
    *v6 = 136315394;
    sub_100111C38(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = v8;
    sub_100111D94(v5, type metadata accessor for MemberPeerTrust);
    v10 = sub_1000136BC(v7, v9, v75);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v11 = sub_100988F40();
    v13 = v12;
    sub_100111D94(v74, type metadata accessor for MemberPeerTrust);
    v14 = sub_1000136BC(v11, v13, v75);

    *(v6 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Accepting share from peerTrustIdentifier: %s,\ncommunicationsIdentifier: %s.", v6, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v16 = *(v0 + 440);
    v15 = *(v0 + 448);

    sub_100111D94(v16, type metadata accessor for MemberPeerTrust);
    sub_100111D94(v15, type metadata accessor for MemberPeerTrust);
  }

  v17 = *(v0 + 504);
  v18 = *(v0 + 400);
  v19 = *(v0 + 408);
  sub_1000D2A70(*(v0 + 512), v17, &unk_101698C30, &unk_101392630);
  v20 = (*(v19 + 48))(v17, 1, v18);
  v21 = *(v0 + 504);
  if (v20 == 1)
  {
    v22 = *(v0 + 480);
    sub_100111D94(*(v0 + 456), type metadata accessor for MemberPeerTrust);
    sub_10000B3A8(v22, &qword_101698C10, &unk_10138C1E0);
    sub_10000B3A8(v21, &unk_101698C30, &unk_101392630);
    v23 = *(v0 + 496);
    v24 = *(v0 + 400);
    v25 = *(v0 + 408);
    sub_1000D2A70(*(v0 + 512), v23, &unk_101698C30, &unk_101392630);
    if ((*(v25 + 48))(v23, 1, v24) == 1)
    {
      v26 = *(v0 + 600);
      v27 = *(v0 + 384);
      sub_10000B3A8(*(v0 + 496), &unk_101698C30, &unk_101392630);
      sub_100111D2C(v27, v26, type metadata accessor for MemberSharingCircle);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      v30 = os_log_type_enabled(v28, v29);
      v31 = *(v0 + 600);
      if (v30)
      {
        v32 = *(v0 + 512);
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v75[0] = v34;
        *v33 = 141558275;
        *(v33 + 4) = 1752392040;
        *(v33 + 12) = 2081;
        sub_100111C38(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v35 = dispatch thunk of CustomStringConvertible.description.getter();
        v37 = v36;
        sub_100111D94(v31, type metadata accessor for MemberSharingCircle);
        v38 = sub_1000136BC(v35, v37, v75);

        *(v33 + 14) = v38;
        _os_log_impl(&_mh_execute_header, v28, v29, "Failure on share accept, can't fetch locations, no shared beacon record for: %{private,mask.hash}s", v33, 0x16u);
        sub_100007BAC(v34);

        v39 = v32;
      }

      else
      {
        v48 = *(v0 + 512);

        sub_100111D94(v31, type metadata accessor for MemberSharingCircle);
        v39 = v48;
      }
    }

    else
    {
      sub_100111DF4(*(v0 + 496), *(v0 + 416), type metadata accessor for SharedBeaconRecord);
      v43 = [objc_opt_self() mainBundle];
      v44 = [v43 bundleIdentifier];

      if (v44)
      {
        v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v46;
      }

      else
      {
        v45 = 0;
        v47 = 0;
      }

      sub_1000BC4D4(&unk_1016AA5B0, &unk_10138C200);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_10138C0D0;
      v50 = SPBeaconTypeDurian;
      v51 = SPBeaconTypeAccessory;
      *(v49 + 32) = SPBeaconTypeDurian;
      *(v49 + 40) = v51;
      v52 = SPBeaconTypeHele;
      v53 = SPBeaconTypeSelfBeaconing;
      *(v49 + 48) = SPBeaconTypeHele;
      *(v49 + 56) = v53;
      v54 = SPBeaconTypeVirtualMeDevice;
      *(v49 + 64) = SPBeaconTypeVirtualMeDevice;
      v55 = qword_101694940;
      v56 = v50;
      v57 = v51;
      v58 = v52;
      v59 = v53;
      v60 = v54;
      if (v55 != -1)
      {
        swift_once();
      }

      v61 = *(v0 + 512);
      v62 = *(v0 + 416);
      v64 = *(v0 + 392);
      v63 = *(v0 + 400);
      OS_dispatch_queue.sync<A>(execute:)();
      v65 = sub_1010741C0(*(v0 + 360));

      My = type metadata accessor for Feature.FindMy();
      *(v0 + 264) = My;
      *(v0 + 272) = sub_100111C38(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
      v67 = sub_1000280DC((v0 + 240));
      (*(*(My - 8) + 104))(v67, enum case for Feature.FindMy.networkScalingImprovements(_:), My);
      LOBYTE(My) = isFeatureEnabled(_:)();
      sub_100007BAC((v0 + 240));
      *(v0 + 104) = v65;
      *(v0 + 112) = 0;
      *(v0 + 120) = &off_101607870;
      *(v0 + 128) = 0;
      *(v0 + 136) = v45;
      *(v0 + 144) = v47;
      *(v0 + 152) = v49;
      *(v0 + 160) = My & 1;
      *(v0 + 168) = 0;
      *(v0 + 176) = 0;
      *(v0 + 184) = 1;
      v68 = *(v0 + 152);
      *(v0 + 48) = *(v0 + 136);
      *(v0 + 64) = v68;
      *(v0 + 80) = *(v0 + 168);
      *(v0 + 96) = *(v0 + 184);
      v69 = *(v0 + 120);
      *(v0 + 16) = *(v0 + 104);
      *(v0 + 32) = v69;
      v70 = sub_1000035D0((v64 + 368), *(v64 + 392));
      sub_1000BC4D4(&qword_1016975D8, &unk_1013AAF10);
      v71 = swift_allocObject();
      *(v71 + 16) = xmmword_101385D80;
      *(v71 + 56) = v63;
      *(v71 + 64) = sub_100111C38(&qword_101698D80, type metadata accessor for SharedBeaconRecord, &unk_10140BB3C);
      v72 = sub_1000280DC((v71 + 32));
      sub_100111D2C(v62, v72, type metadata accessor for SharedBeaconRecord);
      sub_10010EF2C(v71, v0 + 16, *v70);

      sub_1001119F4(v0 + 104);
      sub_100111D94(v62, type metadata accessor for SharedBeaconRecord);
      v39 = v61;
    }

    sub_10000B3A8(v39, &unk_101698C30, &unk_101392630);

    v73 = *(v0 + 8);

    return v73();
  }

  else
  {
    v40 = *(v21 + *(*(v0 + 400) + 64));
    sub_100111D94(*(v0 + 504), type metadata accessor for SharedBeaconRecord);
    v41 = swift_task_alloc();
    *(v0 + 808) = v41;
    *v41 = v0;
    v41[1] = sub_1001088D4;

    return sub_100EC7D34(1, v40 == 4);
  }
}

uint64_t sub_10010808C()
{
  v59 = v0;
  v1 = *(v0 + 456);
  sub_100007BAC((v0 + 192));
  sub_100111D94(v1, type metadata accessor for MemberPeerTrust);
  sub_10000B3A8(*(v0 + 480), &qword_101698C10, &unk_10138C1E0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v58[0] = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = sub_1000136BC(v6, v7, v58);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failure on share accept, can't send acceptance message: %s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  else
  {
  }

  v9 = *(v0 + 496);
  v10 = *(v0 + 400);
  v11 = *(v0 + 408);
  sub_1000D2A70(*(v0 + 512), v9, &unk_101698C30, &unk_101392630);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v12 = *(v0 + 600);
    v13 = *(v0 + 384);
    sub_10000B3A8(*(v0 + 496), &unk_101698C30, &unk_101392630);
    sub_100111D2C(v13, v12, type metadata accessor for MemberSharingCircle);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 600);
    if (v16)
    {
      v18 = *(v0 + 512);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v58[0] = v20;
      *v19 = 141558275;
      *(v19 + 4) = 1752392040;
      *(v19 + 12) = 2081;
      sub_100111C38(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      sub_100111D94(v17, type metadata accessor for MemberSharingCircle);
      v24 = sub_1000136BC(v21, v23, v58);

      *(v19 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failure on share accept, can't fetch locations, no shared beacon record for: %{private,mask.hash}s", v19, 0x16u);
      sub_100007BAC(v20);

      v25 = v18;
    }

    else
    {
      v31 = *(v0 + 512);

      sub_100111D94(v17, type metadata accessor for MemberSharingCircle);
      v25 = v31;
    }
  }

  else
  {
    sub_100111DF4(*(v0 + 496), *(v0 + 416), type metadata accessor for SharedBeaconRecord);
    v26 = [objc_opt_self() mainBundle];
    v27 = [v26 bundleIdentifier];

    if (v27)
    {
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    sub_1000BC4D4(&unk_1016AA5B0, &unk_10138C200);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_10138C0D0;
    v33 = SPBeaconTypeDurian;
    v34 = SPBeaconTypeAccessory;
    *(v32 + 32) = SPBeaconTypeDurian;
    *(v32 + 40) = v34;
    v35 = SPBeaconTypeHele;
    v36 = SPBeaconTypeSelfBeaconing;
    *(v32 + 48) = SPBeaconTypeHele;
    *(v32 + 56) = v36;
    v37 = SPBeaconTypeVirtualMeDevice;
    *(v32 + 64) = SPBeaconTypeVirtualMeDevice;
    v38 = qword_101694940;
    v39 = v33;
    v40 = v34;
    v41 = v35;
    v42 = v36;
    v43 = v37;
    if (v38 != -1)
    {
      swift_once();
    }

    v44 = *(v0 + 512);
    v45 = *(v0 + 416);
    v47 = *(v0 + 392);
    v46 = *(v0 + 400);
    OS_dispatch_queue.sync<A>(execute:)();
    v48 = sub_1010741C0(*(v0 + 360));

    My = type metadata accessor for Feature.FindMy();
    *(v0 + 264) = My;
    *(v0 + 272) = sub_100111C38(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
    v50 = sub_1000280DC((v0 + 240));
    (*(*(My - 8) + 104))(v50, enum case for Feature.FindMy.networkScalingImprovements(_:), My);
    LOBYTE(My) = isFeatureEnabled(_:)();
    sub_100007BAC((v0 + 240));
    *(v0 + 104) = v48;
    *(v0 + 112) = 0;
    *(v0 + 120) = &off_101607870;
    *(v0 + 128) = 0;
    *(v0 + 136) = v28;
    *(v0 + 144) = v30;
    *(v0 + 152) = v32;
    *(v0 + 160) = My & 1;
    *(v0 + 168) = 0;
    *(v0 + 176) = 0;
    *(v0 + 184) = 1;
    v51 = *(v0 + 152);
    *(v0 + 48) = *(v0 + 136);
    *(v0 + 64) = v51;
    *(v0 + 80) = *(v0 + 168);
    *(v0 + 96) = *(v0 + 184);
    v52 = *(v0 + 120);
    *(v0 + 16) = *(v0 + 104);
    *(v0 + 32) = v52;
    v53 = sub_1000035D0((v47 + 368), *(v47 + 392));
    sub_1000BC4D4(&qword_1016975D8, &unk_1013AAF10);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_101385D80;
    *(v54 + 56) = v46;
    *(v54 + 64) = sub_100111C38(&qword_101698D80, type metadata accessor for SharedBeaconRecord, &unk_10140BB3C);
    v55 = sub_1000280DC((v54 + 32));
    sub_100111D2C(v45, v55, type metadata accessor for SharedBeaconRecord);
    sub_10010EF2C(v54, v0 + 16, *v53);

    sub_1001119F4(v0 + 104);
    sub_100111D94(v45, type metadata accessor for SharedBeaconRecord);
    v25 = v44;
  }

  sub_10000B3A8(v25, &unk_101698C30, &unk_101392630);

  v56 = *(v0 + 8);

  return v56();
}

uint64_t sub_1001088D4()
{
  v1 = *(*v0 + 392);

  return _swift_task_switch(sub_1001089E4, v1, 0);
}

uint64_t sub_1001089E4()
{
  v52 = v0;
  v1 = *(v0 + 480);
  sub_100111D94(*(v0 + 456), type metadata accessor for MemberPeerTrust);
  sub_10000B3A8(v1, &qword_101698C10, &unk_10138C1E0);
  v2 = *(v0 + 496);
  v3 = *(v0 + 400);
  v4 = *(v0 + 408);
  sub_1000D2A70(*(v0 + 512), v2, &unk_101698C30, &unk_101392630);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    v5 = *(v0 + 600);
    v6 = *(v0 + 384);
    sub_10000B3A8(*(v0 + 496), &unk_101698C30, &unk_101392630);
    sub_100111D2C(v6, v5, type metadata accessor for MemberSharingCircle);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 600);
    if (v9)
    {
      v11 = *(v0 + 512);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v51 = v13;
      *v12 = 141558275;
      *(v12 + 4) = 1752392040;
      *(v12 + 12) = 2081;
      sub_100111C38(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      sub_100111D94(v10, type metadata accessor for MemberSharingCircle);
      v17 = sub_1000136BC(v14, v16, &v51);

      *(v12 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failure on share accept, can't fetch locations, no shared beacon record for: %{private,mask.hash}s", v12, 0x16u);
      sub_100007BAC(v13);

      v18 = v11;
    }

    else
    {
      v24 = *(v0 + 512);

      sub_100111D94(v10, type metadata accessor for MemberSharingCircle);
      v18 = v24;
    }
  }

  else
  {
    sub_100111DF4(*(v0 + 496), *(v0 + 416), type metadata accessor for SharedBeaconRecord);
    v19 = [objc_opt_self() mainBundle];
    v20 = [v19 bundleIdentifier];

    if (v20)
    {
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;
    }

    else
    {
      v21 = 0;
      v23 = 0;
    }

    sub_1000BC4D4(&unk_1016AA5B0, &unk_10138C200);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_10138C0D0;
    v26 = SPBeaconTypeDurian;
    v27 = SPBeaconTypeAccessory;
    *(v25 + 32) = SPBeaconTypeDurian;
    *(v25 + 40) = v27;
    v28 = SPBeaconTypeHele;
    v29 = SPBeaconTypeSelfBeaconing;
    *(v25 + 48) = SPBeaconTypeHele;
    *(v25 + 56) = v29;
    v30 = SPBeaconTypeVirtualMeDevice;
    *(v25 + 64) = SPBeaconTypeVirtualMeDevice;
    v31 = qword_101694940;
    v32 = v26;
    v33 = v27;
    v34 = v28;
    v35 = v29;
    v36 = v30;
    if (v31 != -1)
    {
      swift_once();
    }

    v37 = *(v0 + 512);
    v38 = *(v0 + 416);
    v40 = *(v0 + 392);
    v39 = *(v0 + 400);
    OS_dispatch_queue.sync<A>(execute:)();
    v41 = sub_1010741C0(*(v0 + 360));

    My = type metadata accessor for Feature.FindMy();
    *(v0 + 264) = My;
    *(v0 + 272) = sub_100111C38(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
    v43 = sub_1000280DC((v0 + 240));
    (*(*(My - 8) + 104))(v43, enum case for Feature.FindMy.networkScalingImprovements(_:), My);
    LOBYTE(My) = isFeatureEnabled(_:)();
    sub_100007BAC((v0 + 240));
    *(v0 + 104) = v41;
    *(v0 + 112) = 0;
    *(v0 + 120) = &off_101607870;
    *(v0 + 128) = 0;
    *(v0 + 136) = v21;
    *(v0 + 144) = v23;
    *(v0 + 152) = v25;
    *(v0 + 160) = My & 1;
    *(v0 + 168) = 0;
    *(v0 + 176) = 0;
    *(v0 + 184) = 1;
    v44 = *(v0 + 152);
    *(v0 + 48) = *(v0 + 136);
    *(v0 + 64) = v44;
    *(v0 + 80) = *(v0 + 168);
    *(v0 + 96) = *(v0 + 184);
    v45 = *(v0 + 120);
    *(v0 + 16) = *(v0 + 104);
    *(v0 + 32) = v45;
    v46 = sub_1000035D0((v40 + 368), *(v40 + 392));
    sub_1000BC4D4(&qword_1016975D8, &unk_1013AAF10);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_101385D80;
    *(v47 + 56) = v39;
    *(v47 + 64) = sub_100111C38(&qword_101698D80, type metadata accessor for SharedBeaconRecord, &unk_10140BB3C);
    v48 = sub_1000280DC((v47 + 32));
    sub_100111D2C(v38, v48, type metadata accessor for SharedBeaconRecord);
    sub_10010EF2C(v47, v0 + 16, *v46);

    sub_1001119F4(v0 + 104);
    sub_100111D94(v38, type metadata accessor for SharedBeaconRecord);
    v18 = v37;
  }

  sub_10000B3A8(v18, &unk_101698C30, &unk_101392630);

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_10010911C(uint64_t a1, uint64_t a2)
{
  v3[28] = a2;
  v3[29] = v2;
  v3[27] = a1;
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v3[30] = swift_task_alloc();
  v4 = type metadata accessor for OwnerSharingCircle(0);
  v3[31] = v4;
  v3[32] = *(v4 - 8);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = type metadata accessor for OwnerPeerTrust(0);
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();

  return _swift_task_switch(sub_10010926C, v2, 0);
}

uint64_t sub_10010926C()
{
  v23 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[28];
  v4 = type metadata accessor for Logger();
  v0[39] = sub_1000076D4(v4, qword_10177A560);
  sub_100111D2C(v3, v2, type metadata accessor for OwnerPeerTrust);
  sub_100111D2C(v3, v1, type metadata accessor for OwnerPeerTrust);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[37];
  v9 = v0[38];
  if (v7)
  {
    v10 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v10 = 136446723;
    type metadata accessor for UUID();
    sub_100111C38(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    sub_100111D94(v9, type metadata accessor for OwnerPeerTrust);
    v14 = sub_1000136BC(v11, v13, &v22);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2160;
    *(v10 + 14) = 1752392040;
    *(v10 + 22) = 2081;
    v15 = sub_100988F40();
    v17 = v16;
    sub_100111D94(v8, type metadata accessor for OwnerPeerTrust);
    v18 = sub_1000136BC(v15, v17, &v22);

    *(v10 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v5, v6, "Accepting share request from peerTrustIdentifier: %{public}s,\ncommunicationsIdentifier: %{private,mask.hash}s.", v10, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100111D94(v8, type metadata accessor for OwnerPeerTrust);
    sub_100111D94(v9, type metadata accessor for OwnerPeerTrust);
  }

  v19 = *(v0[29] + 112);
  v0[40] = v19;
  v20 = swift_task_alloc();
  v0[41] = v20;
  *v20 = v0;
  v20[1] = sub_1001095B8;

  return sub_1012A6B58(2, v19);
}

uint64_t sub_1001095B8(__int16 a1)
{
  v2 = *(*v1 + 232);
  *(*v1 + 572) = a1;

  return _swift_task_switch(sub_1001096D0, v2, 0);
}

uint64_t sub_1001096D0()
{
  v15 = v0;
  if ((*(v0 + 572) & 0x100) != 0)
  {
    sub_100111D2C(*(v0 + 216), *(v0 + 264), type metadata accessor for OwnerSharingCircle);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 264);
    if (v4)
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v14 = v7;
      *v6 = 141558275;
      *(v6 + 4) = 1752392040;
      *(v6 + 12) = 2081;
      type metadata accessor for UUID();
      sub_100111C38(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v8 = dispatch thunk of CustomStringConvertible.description.getter();
      v10 = v9;
      sub_100111D94(v5, type metadata accessor for OwnerSharingCircle);
      v11 = sub_1000136BC(v8, v10, &v14);

      *(v6 + 14) = v11;
      _os_log_impl(&_mh_execute_header, v2, v3, "Total shared item limit reached %{private,mask.hash}s.", v6, 0x16u);
      sub_100007BAC(v7);
    }

    else
    {

      sub_100111D94(v5, type metadata accessor for OwnerSharingCircle);
    }

    type metadata accessor for SPBeaconSharingError(0);
    *(v0 + 208) = 7;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100111C38(&qword_101696340, type metadata accessor for SPBeaconSharingError, &unk_10138A4B4);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v1 = *(v0 + 320);

    return _swift_task_switch(sub_1001099E4, v1, 0);
  }
}

uint64_t sub_1001099E4()
{

  v1 = swift_task_alloc();
  *(v0 + 336) = v1;
  v2 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v1 = v0;
  v1[1] = sub_100109AD0;
  v3 = *(v0 + 320);

  return unsafeBlocking<A>(context:_:)(v0 + 168, 0xD000000000000010, 0x800000010134A8C0, sub_100111B10, v3, v2);
}

uint64_t sub_100109AD0()
{
  v1 = *(*v0 + 320);

  return _swift_task_switch(sub_100109BE8, v1, 0);
}

uint64_t sub_100109BE8()
{
  v1 = v0[29];
  v0[43] = v0[21];
  return _swift_task_switch(sub_100109C0C, v1, 0);
}

uint64_t sub_100109C0C()
{
  v29 = v0;
  v1 = *(v0 + 344);
  v2 = *(v0 + 288);
  v3 = *(v0 + 248);
  v4 = *(v0 + 216);
  v5 = *(v0 + 224);
  v6 = swift_task_alloc();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  v7 = sub_10013CF58(sub_100111B18, v6, v1);

  v8 = *(v3 + 24);
  *(v0 + 560) = v8;
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v9 = type metadata accessor for UUID();
  *(v0 + 352) = v9;
  v10 = *(v9 - 8);
  *(v0 + 360) = v10;
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_101385D80;
  (*(v10 + 16))(v12 + v11, v5 + *(v2 + 20), v9);
  v13 = sub_100B05044(v12);
  swift_setDeallocating();
  (*(v10 + 8))(v12 + v11, v9);
  swift_deallocClassInstance();
  if (v13[2])
  {
    v14 = sub_100315884(v4 + v8, v13, 3, v7, 0, 2uLL, 1);
    *(v0 + 368) = v14;
    *(v0 + 376) = v15;

    v16 = swift_task_alloc();
    *(v0 + 384) = v16;
    *v16 = v0;
    v16[1] = sub_10010A0C0;

    return sub_100EC8350(v14);
  }

  else
  {

    type metadata accessor for BeaconSharingCircleTransformer.Error(0);
    sub_100111C38(&qword_101697608, type metadata accessor for BeaconSharingCircleTransformer.Error, &unk_10139CC50);
    swift_allocError();
    (*(v10 + 56))(v18, 1, 1, v9);
    swift_willThrow();

    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v28 = v22;
      *v21 = 136315138;
      swift_getErrorValue();
      v23 = Error.localizedDescription.getter();
      v25 = sub_1000136BC(v23, v24, &v28);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "Failure in share request acceptance, cloud update error %s", v21, 0xCu);
      sub_100007BAC(v22);
    }

    sub_1001118C8();
    swift_allocError();
    *v26 = 1;
    swift_willThrow();

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_10010A0C0(uint64_t a1)
{
  v2 = *(*v1 + 232);
  *(*v1 + 392) = a1;

  return _swift_task_switch(sub_10010A1D8, v2, 0);
}

uint64_t sub_10010A1D8()
{
  v10 = v0;
  v1 = v0[29];
  *(v1 + 408) = v0[49];

  v2 = *(v1 + 408);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_1003CC318();
    v5 = sub_1003A97DC(&v9, v4 + 4, v3, v2);
    v6 = v9;

    sub_1000128F8(v6);
    if (v5 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = _swiftEmptyArrayStorage;
LABEL_5:
  v0[50] = v4;
  v7 = swift_task_alloc();
  v0[51] = v7;
  *v7 = v0;
  v7[1] = sub_10010A328;

  return sub_100EC9C44(v4);
}

uint64_t sub_10010A328()
{
  v1 = *(*v0 + 232);

  return _swift_task_switch(sub_10010A454, v1, 0);
}

uint64_t sub_10010A454()
{
  v1 = swift_task_alloc();
  v0[52] = v1;
  v2 = sub_1000BC4D4(&qword_1016975F8, &qword_10138C230);
  v3 = sub_100014084(&qword_101697600, &qword_1016975F8, &qword_10138C230);
  *v1 = v0;
  v1[1] = sub_10010A54C;
  v4 = v0[47];
  v5 = v0[31];
  v6 = v0[29];

  return Array<A>.asyncFlatMap<A>(_:)(&unk_10138C228, v6, v4, v5, v2, v3);
}

uint64_t sub_10010A54C(uint64_t a1)
{
  v3 = *v2;
  v3[53] = a1;
  v3[54] = v1;

  if (v1)
  {
  }

  else
  {
    v5 = v3[29];

    return _swift_task_switch(sub_10010A690, v5, 0);
  }
}

uint64_t sub_10010A690()
{
  v29 = v0;
  v1 = v0[46];
  v2 = _swiftEmptyArrayStorage;
  v28 = _swiftEmptyArrayStorage;
  v3 = *(v1 + 16);
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = v0[54];
  v5 = v0[32];
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 72);
  sub_100111D2C(v1 + v6, v0[35], type metadata accessor for OwnerSharingCircle);
  v8 = sub_100653B3C();
  if (v4)
  {
    v9 = v0[35];

    sub_100111D94(v9, type metadata accessor for OwnerSharingCircle);

    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v28 = v13;
      *v12 = 136315138;
      swift_getErrorValue();
      v14 = Error.localizedDescription.getter();
      v16 = sub_1000136BC(v14, v15, &v28);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "Failure in share request acceptance, cloud update error %s", v12, 0xCu);
      sub_100007BAC(v13);
    }

    sub_1001118C8();
    swift_allocError();
    *v26 = 1;
    swift_willThrow();

    v27 = v0[1];

    return v27();
  }

  v17 = v8;
  sub_100111D94(v0[35], type metadata accessor for OwnerSharingCircle);
  result = sub_1003980F8(v17);
  if (v3 == 1)
  {
LABEL_9:
    v2 = v28;
LABEL_10:

    v0[55] = v2;

    v22 = swift_task_alloc();
    v0[56] = v22;
    *v22 = v0;
    v22[1] = sub_10010AAB8;
    v23 = v0[53];
    v25 = v0[46];
    v24 = v0[47];

    return sub_10010D734(v25, v2, v24, v23);
  }

  v19 = v7 + v6;
  v20 = 1;
  while (v20 < *(v1 + 16))
  {
    sub_100111D2C(v0[46] + v19, v0[35], type metadata accessor for OwnerSharingCircle);
    v21 = sub_100653B3C();
    ++v20;
    sub_100111D94(v0[35], type metadata accessor for OwnerSharingCircle);
    result = sub_1003980F8(v21);
    v19 += v7;
    if (v3 == v20)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10010AAB8()
{
  v2 = *v1;
  *(*v1 + 456) = v0;

  v3 = *(v2 + 232);

  if (v0)
  {
    v4 = sub_10010BD28;
  }

  else
  {
    v4 = sub_10010AC1C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10010AC1C()
{
  v1 = *(v0 + 232);
  v8 = *(v1 + 344);
  v2 = *(v1 + 344);
  v3 = sub_1000035D0((v1 + 320), v2);
  *(v0 + 40) = v8;
  v4 = sub_1000280DC((v0 + 16));
  (*(*(v2 - 8) + 16))(v4, v3, v2);
  v5 = swift_task_alloc();
  *(v0 + 464) = v5;
  *v5 = v0;
  v5[1] = sub_10010AD38;
  v6 = *(v0 + 368);

  return sub_10129B73C(v6, v1 + 160, v0 + 16);
}

uint64_t sub_10010AD38()
{
  v2 = *v1;
  *(*v1 + 472) = v0;

  if (v0)
  {
    v3 = *(v2 + 232);
    v4 = sub_10010BF50;
  }

  else
  {
    v5 = *(v2 + 232);
    sub_100007BAC((v2 + 16));
    v4 = sub_10010AE60;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}