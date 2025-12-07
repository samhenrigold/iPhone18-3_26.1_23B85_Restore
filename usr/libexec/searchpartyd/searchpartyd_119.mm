uint64_t sub_100D377D8()
{
  v22 = v0;
  if (*(v0 + 168))
  {
    (*(v0 + 88))(*(v0 + 64), *(v0 + 16), *(v0 + 48));
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    v3 = os_log_type_enabled(v1, v2);
    v4 = *(v0 + 104);
    v5 = *(v0 + 64);
    v6 = *(v0 + 48);
    if (v3)
    {
      v20 = *(v0 + 104);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v21 = v8;
      *v7 = 141558275;
      *(v7 + 4) = 1752392040;
      *(v7 + 12) = 2081;
      sub_100D42DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      v11 = v10;
      v20(v5, v6);
      v12 = sub_1000136BC(v9, v11, &v21);

      *(v7 + 14) = v12;
      _os_log_impl(&_mh_execute_header, v1, v2, "Ignoring non-me device handleCircleTrustDecline for identifier: %{private,mask.hash}s.", v7, 0x16u);
      sub_100007BAC(v8);
    }

    else
    {

      v4(v5, v6);
    }

    v19 = *(v0 + 8);

    return v19();
  }

  else
  {
    v13 = swift_task_alloc();
    *(v0 + 176) = v13;
    *v13 = v0;
    v13[1] = sub_100D37A90;
    v14 = *(v0 + 32);
    v15 = *(v0 + 40);
    v16 = *(v0 + 16);
    v17 = *(v0 + 192);

    return sub_100199BAC(v16, v17, v14, v15);
  }
}

uint64_t sub_100D37A90()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_100D37D88;
  }

  else
  {
    v2 = sub_100D37BA4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100D37BA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D37C18()
{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    v5 = _convertErrorToNSError(_:)();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error in handleCircleTrustDecline: %@", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100D37D88()
{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    v5 = _convertErrorToNSError(_:)();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error in handleCircleTrustDecline: %@", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100D37EF8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = v4;
  *(v5 + 472) = a2;
  *(v5 + 48) = a1;
  *(v5 + 56) = a3;
  *(v5 + 80) = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  *(v5 + 88) = swift_task_alloc();
  v6 = type metadata accessor for SharedBeaconRecord(0);
  *(v5 + 96) = v6;
  *(v5 + 104) = *(v6 - 8);
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  *(v5 + 128) = swift_task_alloc();
  v7 = type metadata accessor for MemberSharingCircle(0);
  *(v5 + 136) = v7;
  *(v5 + 144) = *(v7 - 8);
  *(v5 + 152) = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  *(v5 + 160) = v8;
  v9 = *(v8 - 8);
  *(v5 + 168) = v9;
  *(v5 + 176) = *(v9 + 64);
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = swift_task_alloc();

  return _swift_task_switch(sub_100D3811C, v4, 0);
}

uint64_t sub_100D3811C()
{
  v12 = v0;
  if (qword_101694E20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 216) = sub_1000076D4(v1, qword_10177BF80);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v6 = Array.description.getter();
    v8 = sub_1000136BC(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Sharing Circles updated: %s.", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v9 = swift_task_alloc();
  *(v0 + 224) = v9;
  *v9 = v0;
  v9[1] = sub_100D382F4;

  return daemon.getter();
}

uint64_t sub_100D382F4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[29] = a1;

  v3 = swift_task_alloc();
  v2[30] = v3;
  v4 = type metadata accessor for Daemon();
  v2[31] = v4;
  v5 = type metadata accessor for BeaconSharingService(0);
  v6 = sub_100D42DB8(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[32] = v6;
  v7 = sub_100D42DB8(&unk_101696950, 255, type metadata accessor for BeaconSharingService, &unk_101390650);
  *v3 = v9;
  v3[1] = sub_100D384E8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100D384E8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 264) = a1;

  if (v1)
  {
    v5 = *(v3 + 72);

    return _swift_task_switch(sub_100D3AB38, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    *(v3 + 272) = v6;
    *v6 = v4;
    v6[1] = sub_100D38698;

    return daemon.getter();
  }
}

uint64_t sub_100D38698(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 280) = a1;

  v5 = swift_task_alloc();
  *(v3 + 288) = v5;
  v6 = type metadata accessor for BeaconStoreActor();
  v7 = sub_100D42DB8(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v5 = v4;
  v5[1] = sub_100D38850;
  v8 = *(v2 + 256);
  v9 = *(v2 + 248);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_100D38850(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 296) = a1;

  if (v1)
  {
    v5 = *(v3 + 72);

    return _swift_task_switch(sub_100D3A9F8, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    *(v3 + 304) = v6;
    *v6 = v4;
    v6[1] = sub_100D38A00;

    return daemon.getter();
  }
}

uint64_t sub_100D38A00(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 312) = a1;

  v5 = swift_task_alloc();
  *(v3 + 320) = v5;
  v6 = type metadata accessor for FamilyCircleService();
  v7 = sub_100D42DB8(&unk_1016AF840, 255, type metadata accessor for FamilyCircleService, &unk_1013E4DC8);
  *v5 = v4;
  v5[1] = sub_100D38BB8;
  v8 = *(v2 + 256);
  v9 = *(v2 + 248);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_100D38BB8(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 328) = a1;

  v4 = *(v3 + 72);
  if (v1)
  {

    v5 = sub_100D3A8AC;
  }

  else
  {

    v5 = sub_100D38D1C;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100D38D1C()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  *(v0 + 336) = v2;
  if (v2)
  {
    v3 = *(v0 + 160);
    v4 = *(v0 + 168);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = *(v4 + 64);
    *(v0 + 464) = v6;
    *(v0 + 344) = *(v4 + 56);
    *(v0 + 352) = v5;
    v7 = *(v0 + 208);
    *(v0 + 360) = 0;
    *(v0 + 368) = v4 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v5(v7, v1 + ((v6 + 32) & ~v6), v3);
    v8 = swift_task_alloc();
    *(v0 + 376) = v8;
    *v8 = v0;
    v8[1] = sub_100D38EE0;
    v9 = *(v0 + 56);
    v10 = *(v0 + 64);
    v11 = *(v0 + 472);

    return sub_100D4E560(v11, v9, v10);
  }

  else
  {

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_100D38EE0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[48] = a2;
  v4[49] = v2;

  if (v2)
  {
    v5 = v4[9];
    v6 = sub_100D39448;
  }

  else
  {
    v5 = v4[37];
    v6 = sub_100D38FF8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100D38FF8()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 200);
  v3 = *(v0 + 168);
  v4 = *(v0 + 160);
  v5 = (*(v0 + 464) + 24) & ~*(v0 + 464);
  (*(v0 + 352))(v2, *(v0 + 208), v4);
  v6 = swift_allocObject();
  *(v0 + 400) = v6;
  *(v6 + 16) = v1;
  v7 = *(v3 + 32);
  *(v0 + 408) = v7;
  *(v0 + 416) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v7(v6 + v5, v2, v4);

  v8 = swift_task_alloc();
  *(v0 + 424) = v8;
  *v8 = v0;
  v8[1] = sub_100D3915C;
  v10 = *(v0 + 120);
  v9 = *(v0 + 128);

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_100D49B50, v6, v10);
}

uint64_t sub_100D3915C()
{
  v1 = *(*v0 + 72);

  return _swift_task_switch(sub_100D39288, v1, 0);
}

uint64_t sub_100D39288()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 128);
  if ((*(*(v0 + 144) + 48))(v2, 1, v1) == 1)
  {
    (*(*(v0 + 168) + 8))(*(v0 + 208), *(v0 + 160));

    sub_10000B3A8(v2, &unk_101698BC0, &qword_10138C440);

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 296);
    sub_100D4A2D4(v2, *(v0 + 152), type metadata accessor for MemberSharingCircle);
    *(v0 + 468) = *(v1 + 24);

    return _swift_task_switch(sub_100D39850, v5, 0);
  }
}

uint64_t sub_100D39448()
{
  v35 = v0;
  (*(v0 + 352))(*(v0 + 184), *(v0 + 208), *(v0 + 160));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v33 = *(v0 + 208);
    v32 = v2;
    v3 = *(v0 + 184);
    v5 = *(v0 + 160);
    v4 = *(v0 + 168);
    v6 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v6 = 141558531;
    *(v6 + 4) = 1752392040;
    *(v6 + 12) = 2081;
    sub_100D42DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = v8;
    v10 = *(v4 + 8);
    v10(v3, v5);
    v11 = sub_1000136BC(v7, v9, &v34);

    *(v6 + 14) = v11;
    *(v6 + 22) = 2082;
    swift_getErrorValue();
    v12 = Error.localizedDescription.getter();
    v14 = sub_1000136BC(v12, v13, &v34);

    *(v6 + 24) = v14;
    _os_log_impl(&_mh_execute_header, v1, v32, "Error downloading keys for updated share: %{private,mask.hash}s, %{public}s.", v6, 0x20u);
    swift_arrayDestroy();

    v10(v33, v5);
  }

  else
  {
    v15 = *(v0 + 208);
    v16 = *(v0 + 184);
    v17 = *(v0 + 160);
    v18 = *(v0 + 168);

    v19 = *(v18 + 8);
    v19(v16, v17);
    v19(v15, v17);
  }

  v20 = *(v0 + 360) + 1;
  if (v20 == *(v0 + 336))
  {

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {
    v23 = *(v0 + 352);
    v24 = *(v0 + 208);
    v25 = *(v0 + 160);
    v26 = *(v0 + 48) + ((*(v0 + 464) + 32) & ~*(v0 + 464)) + *(v0 + 344) * v20;
    v27 = (*(v0 + 168) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v0 + 360) = v20;
    *(v0 + 368) = v27;
    v23(v24, v26, v25);
    v28 = swift_task_alloc();
    *(v0 + 376) = v28;
    *v28 = v0;
    v28[1] = sub_100D38EE0;
    v29 = *(v0 + 56);
    v30 = *(v0 + 64);
    v31 = *(v0 + 472);

    return sub_100D4E560(v31, v29, v30);
  }
}

uint64_t sub_100D39850()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 296);
  v3 = *(v0 + 200);
  v4 = *(v0 + 160);
  v5 = (*(v0 + 464) + 24) & ~*(v0 + 464);
  (*(v0 + 352))(v3, *(v0 + 152) + *(v0 + 468), v4);
  v6 = swift_allocObject();
  *(v0 + 432) = v6;
  *(v6 + 16) = v2;
  v1(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 440) = v7;
  *v7 = v0;
  v7[1] = sub_100D399A8;
  v9 = *(v0 + 80);
  v8 = *(v0 + 88);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_100D49B68, v6, v9);
}

uint64_t sub_100D399A8()
{
  v1 = *(*v0 + 72);

  return _swift_task_switch(sub_100D39AD4, v1, 0);
}

uint64_t sub_100D39AD4()
{
  v34 = v0;
  v1 = *(v0 + 88);
  v2 = (*(*(v0 + 104) + 48))(v1, 1, *(v0 + 96));
  v3 = *(v0 + 384);
  if (v2 == 1)
  {
    v4 = *(v0 + 208);
    v5 = *(v0 + 160);
    v6 = *(v0 + 168);
    v7 = *(v0 + 152);

    sub_100D4A3EC(v7, type metadata accessor for MemberSharingCircle);
    (*(v6 + 8))(v4, v5);
    sub_10000B3A8(v1, &unk_101698C30, &unk_101392630);
LABEL_3:

    v8 = *(v0 + 8);

    return v8();
  }

  sub_100D4A2D4(v1, *(v0 + 112), type metadata accessor for SharedBeaconRecord);
  if (v3)
  {

LABEL_13:
    v21 = swift_task_alloc();
    *(v0 + 448) = v21;
    *v21 = v0;
    v21[1] = sub_100D39F48;
    v22 = *(v0 + 208);

    return sub_1001948A8(v22, 1, 0, 1);
  }

  sub_100D49B80();
  Set.init(minimumCapacity:)();
  sub_100DEF07C(&v32, 4);
  sub_100DEF07C(&v33, 1);
  v10 = sub_10112C0E0();

  if ((v10 & 1) == 0)
  {
    goto LABEL_13;
  }

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 208);
  v15 = *(v0 + 160);
  v16 = *(v0 + 168);
  v17 = *(v0 + 152);
  v18 = *(v0 + 112);
  if (v13)
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Ignoring incoming UTFS message from non-family member", v19, 2u);
  }

  sub_100D4A3EC(v18, type metadata accessor for SharedBeaconRecord);
  sub_100D4A3EC(v17, type metadata accessor for MemberSharingCircle);
  (*(v16 + 8))(v14, v15);
  v20 = *(v0 + 360) + 1;
  if (v20 == *(v0 + 336))
  {

    goto LABEL_3;
  }

  v23 = *(v0 + 352);
  v24 = *(v0 + 208);
  v25 = *(v0 + 160);
  v26 = *(v0 + 48) + ((*(v0 + 464) + 32) & ~*(v0 + 464)) + *(v0 + 344) * v20;
  v27 = (*(v0 + 168) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  *(v0 + 360) = v20;
  *(v0 + 368) = v27;
  v23(v24, v26, v25);
  v28 = swift_task_alloc();
  *(v0 + 376) = v28;
  *v28 = v0;
  v28[1] = sub_100D38EE0;
  v29 = *(v0 + 56);
  v30 = *(v0 + 64);
  v31 = *(v0 + 472);

  return sub_100D4E560(v31, v29, v30);
}

uint64_t sub_100D39F48()
{
  v2 = *v1;
  *(*v1 + 456) = v0;

  v3 = *(v2 + 72);
  if (v0)
  {
    v4 = sub_100D3A468;
  }

  else
  {
    v4 = sub_100D3A074;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100D3A074()
{
  v34 = v0;
  (*(v0 + 352))(*(v0 + 192), *(v0 + 208), *(v0 + 160));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 208);
  v5 = *(v0 + 192);
  v6 = *(v0 + 160);
  v7 = *(v0 + 168);
  v8 = *(v0 + 152);
  v9 = *(v0 + 112);
  if (v3)
  {
    v32 = *(v0 + 152);
    v10 = swift_slowAlloc();
    v31 = v9;
    v11 = swift_slowAlloc();
    v33 = v11;
    *v10 = 141558275;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    sub_100D42DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v4;
    v14 = v13;
    v15 = *(v7 + 8);
    v15(v5, v6);
    v16 = sub_1000136BC(v12, v14, &v33);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v1, v2, "Downloaded keys for updated share: %{private,mask.hash}s.", v10, 0x16u);
    sub_100007BAC(v11);

    sub_100D4A3EC(v31, type metadata accessor for SharedBeaconRecord);
    sub_100D4A3EC(v32, type metadata accessor for MemberSharingCircle);
    v15(v30, v6);
  }

  else
  {

    v17 = *(v7 + 8);
    v17(v5, v6);
    sub_100D4A3EC(v9, type metadata accessor for SharedBeaconRecord);
    sub_100D4A3EC(v8, type metadata accessor for MemberSharingCircle);
    v17(v4, v6);
  }

  v18 = *(v0 + 360) + 1;
  if (v18 == *(v0 + 336))
  {

    v19 = *(v0 + 8);

    return v19();
  }

  else
  {
    v21 = *(v0 + 352);
    v22 = *(v0 + 208);
    v23 = *(v0 + 160);
    v24 = *(v0 + 48) + ((*(v0 + 464) + 32) & ~*(v0 + 464)) + *(v0 + 344) * v18;
    v25 = (*(v0 + 168) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v0 + 360) = v18;
    *(v0 + 368) = v25;
    v21(v22, v24, v23);
    v26 = swift_task_alloc();
    *(v0 + 376) = v26;
    *v26 = v0;
    v26[1] = sub_100D38EE0;
    v27 = *(v0 + 56);
    v28 = *(v0 + 64);
    v29 = *(v0 + 472);

    return sub_100D4E560(v29, v27, v28);
  }
}

uint64_t sub_100D3A468()
{
  v36 = v0;
  v1 = *(v0 + 152);
  sub_100D4A3EC(*(v0 + 112), type metadata accessor for SharedBeaconRecord);
  sub_100D4A3EC(v1, type metadata accessor for MemberSharingCircle);
  (*(v0 + 352))(*(v0 + 184), *(v0 + 208), *(v0 + 160));
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v34 = *(v0 + 208);
    v33 = v3;
    v4 = *(v0 + 184);
    v6 = *(v0 + 160);
    v5 = *(v0 + 168);
    v7 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v7 = 141558531;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    sub_100D42DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;
    v11 = *(v5 + 8);
    v11(v4, v6);
    v12 = sub_1000136BC(v8, v10, &v35);

    *(v7 + 14) = v12;
    *(v7 + 22) = 2082;
    swift_getErrorValue();
    v13 = Error.localizedDescription.getter();
    v15 = sub_1000136BC(v13, v14, &v35);

    *(v7 + 24) = v15;
    _os_log_impl(&_mh_execute_header, v2, v33, "Error downloading keys for updated share: %{private,mask.hash}s, %{public}s.", v7, 0x20u);
    swift_arrayDestroy();

    v11(v34, v6);
  }

  else
  {
    v16 = *(v0 + 208);
    v17 = *(v0 + 184);
    v18 = *(v0 + 160);
    v19 = *(v0 + 168);

    v20 = *(v19 + 8);
    v20(v17, v18);
    v20(v16, v18);
  }

  v21 = *(v0 + 360) + 1;
  if (v21 == *(v0 + 336))
  {

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    v24 = *(v0 + 352);
    v25 = *(v0 + 208);
    v26 = *(v0 + 160);
    v27 = *(v0 + 48) + ((*(v0 + 464) + 32) & ~*(v0 + 464)) + *(v0 + 344) * v21;
    v28 = (*(v0 + 168) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v0 + 360) = v21;
    *(v0 + 368) = v28;
    v24(v25, v27, v26);
    v29 = swift_task_alloc();
    *(v0 + 376) = v29;
    *v29 = v0;
    v29[1] = sub_100D38EE0;
    v30 = *(v0 + 56);
    v31 = *(v0 + 64);
    v32 = *(v0 + 472);

    return sub_100D4E560(v32, v30, v31);
  }
}

uint64_t sub_100D3A8AC(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No FamilyCircleService available!", v4, 2u);
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_100D3A9F8(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No BeaconStoreActor available!", v4, 2u);
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_100D3AB38(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No BeaconSharingService available!", v4, 2u);
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_100D3AC6C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100D3AC8C, 0, 0);
}

uint64_t sub_100D3AC8C()
{
  v12 = v0;
  if (qword_101694E20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 32) = sub_1000076D4(v1, qword_10177BF80);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 141558275;
    *(v4 + 4) = 1752392040;
    *(v4 + 12) = 2081;
    type metadata accessor for UUID();
    v6 = Array.description.getter();
    v8 = sub_1000136BC(v6, v7, &v11);

    *(v4 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Received handleCircleStopped -- identifiers: %{private,mask.hash}s.", v4, 0x16u);
    sub_100007BAC(v5);
  }

  v9 = swift_task_alloc();
  *(v0 + 40) = v9;
  *v9 = v0;
  v9[1] = sub_100D3AE7C;

  return daemon.getter();
}

uint64_t sub_100D3AE7C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 48) = a1;

  v3 = swift_task_alloc();
  *(v2 + 56) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconSharingService(0);
  v6 = sub_100D42DB8(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100D42DB8(&unk_101696950, 255, type metadata accessor for BeaconSharingService, &unk_101390650);
  *v3 = v9;
  v3[1] = sub_100D3B060;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100D3B060(uint64_t a1)
{
  v3 = *v2;
  v3[8] = a1;
  v3[9] = v1;

  if (v1)
  {
    v4 = sub_100D3B82C;
    v5 = 0;
  }

  else
  {
    v6 = v3[3];

    v4 = sub_100D3B188;
    v5 = v6;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_100D3B188()
{
  if (qword_101695510 != -1)
  {
    swift_once();
  }

  *(v0 + 80) = qword_10177CEA0;

  return _swift_task_switch(sub_100D3B224, 0, 0);
}

uint64_t sub_100D3B224()
{
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_100D3B2B8;

  return sub_100507C6C();
}

uint64_t sub_100D3B2B8(char a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 120) = a1;

  return _swift_task_switch(sub_100D3B3D0, v2, 0);
}

uint64_t sub_100D3B3D0()
{
  if (*(v0 + 120) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 104) = v1;
    *v1 = v0;
    v1[1] = sub_100D3B6B8;
    v2 = *(v0 + 16);

    return sub_10019DE18(v2);
  }

  else
  {
    *(v0 + 96) = *(*(v0 + 24) + 144);

    return _swift_task_switch(sub_100D3B4B8, 0, 0);
  }
}

uint64_t sub_100D3B4B8()
{
  v13 = v0;
  if (v0[12])
  {

    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v12 = v4;
      *v3 = 141558275;
      *(v3 + 4) = 1752392040;
      *(v3 + 12) = 2081;
      type metadata accessor for UUID();
      v5 = Array.description.getter();
      v7 = sub_1000136BC(v5, v6, &v12);

      *(v3 + 14) = v7;
      _os_log_impl(&_mh_execute_header, v1, v2, "Ignoring non-me device handleCircleStopped for identifiers: %{private,mask.hash}s.", v3, 0x16u);
      sub_100007BAC(v4);
    }

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = swift_task_alloc();
    v0[13] = v10;
    *v10 = v0;
    v10[1] = sub_100D3B6B8;
    v11 = v0[2];

    return sub_10019DE18(v11);
  }
}

uint64_t sub_100D3B6B8()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_100D3B988;
  }

  else
  {
    v2 = sub_100D3B7CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100D3B7CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D3B82C()
{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    v5 = _convertErrorToNSError(_:)();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error in handleCircleStopped: %@", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100D3B988()
{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    v5 = _convertErrorToNSError(_:)();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error in handleCircleStopped: %@", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

void sub_100D3BAE4(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (sub_100E8F8C0())
  {
    if (qword_101694E20 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000076D4(v14, qword_10177BF80);
    v28 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v28, v15, "handleCircleRequested received by underage account. Ignoring it.", v16, 2u);
    }

    v17 = v28;
  }

  else
  {
    v28 = type metadata accessor for Transaction();
    (*(v11 + 16))(&v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v10);
    v18 = *(v11 + 80);
    v26 = v9;
    v27 = a3;
    v19 = (v18 + 16) & ~v18;
    v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = a2;
    v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    (*(v11 + 32))(v22 + v19, v13, v10);
    *(v22 + v20) = v4;
    v23 = v22 + v21;
    *v23 = v25;
    *(v23 + 8) = v27;
    *(v23 + 16) = a4;
    *(v22 + ((v21 + 31) & 0xFFFFFFFFFFFFFFF8)) = v26;

    static Transaction.asyncTask(name:block:)();
  }
}

uint64_t sub_100D3BDBC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 176) = a4;
  *(v5 + 184) = a5;
  *(v5 + 900) = a3;
  *(v5 + 160) = a1;
  *(v5 + 168) = a2;
  sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0);
  *(v5 + 192) = swift_task_alloc();
  v6 = type metadata accessor for OwnerPeerTrust(0);
  *(v5 + 200) = v6;
  *(v5 + 208) = *(v6 - 8);
  *(v5 + 216) = swift_task_alloc();
  *(v5 + 224) = swift_task_alloc();
  *(v5 + 232) = sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  *(v5 + 240) = swift_task_alloc();
  v7 = type metadata accessor for OwnerSharingCircle(0);
  *(v5 + 248) = v7;
  *(v5 + 256) = *(v7 - 8);
  *(v5 + 264) = swift_task_alloc();
  *(v5 + 272) = swift_task_alloc();
  *(v5 + 280) = swift_task_alloc();
  *(v5 + 288) = swift_task_alloc();
  *(v5 + 296) = swift_task_alloc();
  *(v5 + 304) = swift_task_alloc();
  *(v5 + 312) = swift_task_alloc();
  *(v5 + 320) = swift_task_alloc();
  *(v5 + 328) = swift_task_alloc();
  *(v5 + 336) = swift_task_alloc();
  *(v5 + 344) = swift_task_alloc();
  *(v5 + 352) = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  *(v5 + 360) = v8;
  v9 = *(v8 - 8);
  *(v5 + 368) = v9;
  *(v5 + 376) = *(v9 + 64);
  *(v5 + 384) = swift_task_alloc();
  *(v5 + 392) = swift_task_alloc();
  *(v5 + 400) = swift_task_alloc();
  *(v5 + 408) = swift_task_alloc();

  return _swift_task_switch(sub_100D3C06C, 0, 0);
}

uint64_t sub_100D3C06C()
{
  v23 = v0;
  if (qword_101694E20 != -1)
  {
    swift_once();
  }

  v1 = v0[51];
  v2 = v0[45];
  v3 = v0[46];
  v4 = v0[20];
  v5 = type metadata accessor for Logger();
  v0[52] = v5;
  v0[53] = sub_1000076D4(v5, qword_10177BF80);
  v6 = *(v3 + 16);
  v0[54] = v6;
  v0[55] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[51];
  v11 = v0[45];
  v12 = v0[46];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_100D42DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_1000136BC(v14, v16, &v22);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Received handleCircleRequested -- shareIdentifier: %{private,mask.hash}s", v13, 0x16u);
    sub_100007BAC(v21);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[56] = v17;
  v19 = v0[21];

  return _swift_task_switch(sub_100D3C2D8, v19, 0);
}

uint64_t sub_100D3C2D8()
{
  if (qword_101695510 != -1)
  {
    swift_once();
  }

  *(v0 + 456) = qword_10177CEA0;

  return _swift_task_switch(sub_100D3C374, 0, 0);
}

uint64_t sub_100D3C374()
{
  v1 = swift_task_alloc();
  *(v0 + 464) = v1;
  *v1 = v0;
  v1[1] = sub_100D3C408;

  return sub_100507C6C();
}

uint64_t sub_100D3C408(char a1)
{
  v2 = *(*v1 + 168);
  *(*v1 + 901) = a1;

  return _swift_task_switch(sub_100D3C520, v2, 0);
}

uint64_t sub_100D3C520()
{
  if (*(v0 + 901) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 480) = v1;
    *v1 = v0;
    v1[1] = sub_100D3C958;

    return daemon.getter();
  }

  else
  {
    *(v0 + 472) = *(*(v0 + 168) + 144);

    return _swift_task_switch(sub_100D3C600, 0, 0);
  }
}

uint64_t sub_100D3C600()
{
  v18 = v0;
  if (*(v0 + 472))
  {
    (*(v0 + 432))(*(v0 + 384), *(v0 + 160), *(v0 + 360));
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    v3 = os_log_type_enabled(v1, v2);
    v4 = *(v0 + 448);
    v5 = *(v0 + 384);
    v6 = *(v0 + 360);
    if (v3)
    {
      v16 = *(v0 + 448);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v17 = v8;
      *v7 = 141558275;
      *(v7 + 4) = 1752392040;
      *(v7 + 12) = 2081;
      sub_100D42DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      v11 = v10;
      v16(v5, v6);
      v12 = sub_1000136BC(v9, v11, &v17);

      *(v7 + 14) = v12;
      _os_log_impl(&_mh_execute_header, v1, v2, "Ignoring non-me device handleCircleRequested for identifier: %{private,mask.hash}s.", v7, 0x16u);
      sub_100007BAC(v8);
    }

    else
    {

      v4(v5, v6);
    }

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v13 = swift_task_alloc();
    *(v0 + 480) = v13;
    *v13 = v0;
    v13[1] = sub_100D3C958;

    return daemon.getter();
  }
}

uint64_t sub_100D3C958(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[61] = a1;

  v3 = swift_task_alloc();
  v2[62] = v3;
  v4 = type metadata accessor for Daemon();
  v2[63] = v4;
  v5 = type metadata accessor for PeerTrustService();
  v6 = sub_100D42DB8(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[64] = v6;
  v7 = sub_100D42DB8(&qword_1016B1190, 255, type metadata accessor for PeerTrustService, &unk_1013EBD00);
  *v3 = v9;
  v3[1] = sub_100D3CB4C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100D3CB4C(uint64_t a1)
{
  v3 = *v2;
  v3[65] = a1;
  v3[66] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100D412A4, 0, 0);
  }

  else
  {

    v4 = swift_task_alloc();
    v3[67] = v4;
    *v4 = v3;
    v4[1] = sub_100D3CCC4;

    return daemon.getter();
  }
}

uint64_t sub_100D3CCC4(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 544) = a1;

  v5 = swift_task_alloc();
  *(v3 + 552) = v5;
  v6 = type metadata accessor for BeaconStoreActor();
  v7 = sub_100D42DB8(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v5 = v4;
  v5[1] = sub_100D3CE7C;
  v8 = *(v2 + 512);
  v9 = *(v2 + 504);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_100D3CE7C(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 560) = a1;
  *(v4 + 568) = v1;

  if (v1)
  {
    v5 = sub_100D414EC;
    v6 = 0;
  }

  else
  {

    v5 = sub_100D3CFB8;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100D3CFE0()
{
  v1 = swift_task_alloc();
  *(v0 + 584) = v1;
  *v1 = v0;
  v1[1] = sub_100D3D0BC;
  v2 = *(v0 + 576);

  return withCheckedContinuation<A>(isolation:function:_:)(v1, 0, 0, 0x696176416E656877, 0xEF2928656C62616CLL, sub_10058D6FC, v2, &type metadata for () + 1);
}

uint64_t sub_100D3D0BC()
{

  return _swift_task_switch(sub_100D3D1B8, 0, 0);
}

uint64_t sub_100D3D1D4()
{

  v1 = swift_task_alloc();
  v0[74] = v1;
  v2 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  v0[75] = v2;
  *v1 = v0;
  v1[1] = sub_100D3D2C4;
  v3 = v0[70];

  return unsafeBlocking<A>(context:_:)(v0 + 15, 0xD000000000000010, 0x800000010134A8C0, sub_100111F4C, v3, v2);
}

uint64_t sub_100D3D2C4()
{
  v1 = *(*v0 + 560);

  return _swift_task_switch(sub_100D3D3DC, v1, 0);
}

uint64_t sub_100D3D400()
{
  v1 = v0[76];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v0[32];
    v17 = v0[31];
    while (v3 < *(v1 + 16))
    {
      v5 = v0[44];
      v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v7 = *(v4 + 72);
      sub_100D4A580(v0[76] + v6 + v7 * v3, v5, type metadata accessor for OwnerSharingCircle);
      v8 = *(v5 + *(v17 + 32));

      v9 = sub_1005C9C88(2, v8);

      v10 = v0[44];
      if (v9)
      {
        sub_100D4A2D4(v10, v0[43], type metadata accessor for OwnerSharingCircle);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_101123FE4(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v12 = _swiftEmptyArrayStorage[2];
        v11 = _swiftEmptyArrayStorage[3];
        if (v12 >= v11 >> 1)
        {
          sub_101123FE4((v11 > 1), v12 + 1, 1);
        }

        v13 = v0[43];
        _swiftEmptyArrayStorage[2] = v12 + 1;
        sub_100D4A2D4(v13, _swiftEmptyArrayStorage + v6 + v12 * v7, type metadata accessor for OwnerSharingCircle);
      }

      else
      {
        sub_100D4A3EC(v10, type metadata accessor for OwnerSharingCircle);
      }

      if (v2 == ++v3)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    v0[77] = _swiftEmptyArrayStorage[2];

    if (qword_101694940 == -1)
    {
      goto LABEL_13;
    }
  }

  swift_once();
LABEL_13:
  v14 = qword_10177B348;
  v0[78] = qword_10177B348;

  v15 = swift_task_alloc();
  v0[79] = v15;
  *v15 = v0;
  v15[1] = sub_100D3D6B4;

  return unsafeBlocking<A>(_:)(v0 + 16, sub_1000D2BE0, v14, &type metadata for Configuration);
}

uint64_t sub_100D3D6B4()
{

  return _swift_task_switch(sub_100D3D7CC, 0, 0);
}

uint64_t sub_100D3D7CC()
{
  v27 = v0;
  v1 = *(v0 + 616);
  v2 = sub_101074AAC(*(v0 + 128));

  if (v1 >= v2)
  {
    (*(v0 + 432))(*(v0 + 392), *(v0 + 160), *(v0 + 360));
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 616);
      v7 = *(v0 + 392);
      v8 = *(v0 + 360);
      v9 = *(v0 + 368);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v26 = v11;
      *v10 = 134218755;
      *(v10 + 4) = v6;
      *(v10 + 12) = 2048;
      *(v10 + 14) = v2;
      *(v10 + 22) = 2160;
      *(v10 + 24) = 1752392040;
      *(v10 + 32) = 2081;
      sub_100D42DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      v14 = v13;
      (*(v9 + 8))(v7, v8);
      v15 = sub_1000136BC(v12, v14, &v26);

      *(v10 + 34) = v15;
      _os_log_impl(&_mh_execute_header, v4, v5, "Cannot process handleCircleRequested. existingRequests: %ld >= maxPendingRequestSharedItem: %lu,\nshareIdentifier: %{private,mask.hash}s", v10, 0x2Au);
      sub_100007BAC(v11);
    }

    else
    {
      v16 = *(v0 + 392);
      v17 = *(v0 + 360);
      v18 = *(v0 + 368);

      (*(v18 + 8))(v16, v17);
    }

    type metadata accessor for SPBeaconSharingError(0);
    *(v0 + 144) = 10;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100D42DB8(&qword_101696340, 255, type metadata accessor for SPBeaconSharingError, &unk_10138A4B4);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      v23 = _convertErrorToNSError(_:)();
      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&_mh_execute_header, v19, v20, "Error in handleCircleRequested: %@", v21, 0xCu);
      sub_10000B3A8(v22, &qword_10169BB30, &unk_10138B3C0);
    }

    else
    {
    }

    v24 = *(v0 + 8);

    return v24();
  }

  else
  {
    v3 = *(v0 + 560);

    return _swift_task_switch(sub_100D3DCA8, v3, 0);
  }
}

uint64_t sub_100D3DCA8()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 400);
  v3 = *(v0 + 368);
  v4 = *(v0 + 360);
  (*(v0 + 432))(v2, *(v0 + 160), v4);
  v5 = *(v3 + 80);
  *(v0 + 888) = v5;
  v6 = (v5 + 24) & ~v5;
  v7 = swift_allocObject();
  *(v0 + 640) = v7;
  *(v7 + 16) = v1;
  v8 = *(v3 + 32);
  *(v0 + 648) = v8;
  *(v0 + 656) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v8(v7 + v6, v2, v4);

  v9 = swift_task_alloc();
  *(v0 + 664) = v9;
  *v9 = v0;
  v9[1] = sub_100D3DE10;
  v11 = *(v0 + 232);
  v10 = *(v0 + 240);

  return unsafeBlocking<A>(context:_:)(v10, 0xD000000000000010, 0x800000010134A8C0, sub_100D49DD8, v7, v11);
}

uint64_t sub_100D3DE10()
{

  return _swift_task_switch(sub_100D3DF28, 0, 0);
}

uint64_t sub_100D3DF28()
{
  v1 = *(v0 + 240);
  if ((*(*(v0 + 256) + 48))(v1, 1, *(v0 + 248)) == 1)
  {
    sub_10000B3A8(v1, &unk_1016AFA00, &qword_10138C4D0);
    sub_100D487D8();
    swift_allocError();
    *v2 = 7;
    swift_willThrow();

    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      v7 = _convertErrorToNSError(_:)();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&_mh_execute_header, v3, v4, "Error in handleCircleRequested: %@", v5, 0xCu);
      sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);
    }

    else
    {
    }

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    sub_100D4A2D4(v1, *(v0 + 336), type metadata accessor for OwnerSharingCircle);
    v8 = swift_task_alloc();
    *(v0 + 672) = v8;
    *v8 = v0;
    v8[1] = sub_100D3E290;
    v9 = *(v0 + 176);
    v10 = *(v0 + 184);
    v11 = *(v0 + 900);

    return sub_100E86158(v11, v9, v10);
  }
}

uint64_t sub_100D3E290(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 680) = a1;
  *(v3 + 688) = v1;

  if (v1)
  {
    v4 = sub_100D41740;
  }

  else
  {
    v4 = sub_100D3E3A8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100D3E3A8()
{
  v1 = *(v0 + 680);
  v2 = *(v0 + 560);
  if (*(v1 + 16))
  {
    v3 = *(v0 + 248);
    v4 = *(v0 + 216);
    v5 = *(v0 + 224);
    v6 = *(*(v0 + 208) + 80);
    sub_100D4A580(v1 + ((v6 + 32) & ~v6), v4, type metadata accessor for OwnerPeerTrust);

    sub_100D4A2D4(v4, v5, type metadata accessor for OwnerPeerTrust);
    sub_100B5A68C();
    sub_100B5A6E0();
    v7 = static CaseIterable<>.allMembers.getter();
    *(v0 + 696) = sub_100616F34(&off_10160D0D0, v7);
    *(v0 + 892) = *(v3 + 24);

    return _swift_task_switch(sub_100D3E748, v2, 0);
  }

  else
  {
    v8 = *(v0 + 336);

    sub_100D487D8();
    swift_allocError();
    *v9 = 7;
    swift_willThrow();

    sub_100D4A3EC(v8, type metadata accessor for OwnerSharingCircle);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = _convertErrorToNSError(_:)();
      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&_mh_execute_header, v10, v11, "Error in handleCircleRequested: %@", v12, 0xCu);
      sub_10000B3A8(v13, &qword_10169BB30, &unk_10138B3C0);
    }

    else
    {
    }

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_100D3E748()
{
  v1 = *(v0 + 696);
  v2 = *(v0 + 648);
  v3 = *(v0 + 560);
  v4 = *(v0 + 400);
  v5 = *(v0 + 376);
  v6 = *(v0 + 360);
  v7 = (*(v0 + 888) + 24) & ~*(v0 + 888);
  (*(v0 + 432))(v4, *(v0 + 336) + *(v0 + 892), v6);
  v8 = swift_allocObject();
  *(v0 + 704) = v8;
  *(v8 + 16) = v3;
  v2(v8 + v7, v4, v6);
  *(v8 + ((v7 + v5 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;

  v9 = swift_task_alloc();
  *(v0 + 712) = v9;
  *v9 = v0;
  v9[1] = sub_100D3E8C4;
  v10 = *(v0 + 600);

  return unsafeBlocking<A>(context:_:)(v0 + 152, 0xD000000000000010, 0x800000010134A8C0, sub_1001BD71C, v8, v10);
}

uint64_t sub_100D3E8C4()
{
  v1 = *(*v0 + 560);

  return _swift_task_switch(sub_100D3E9F0, v1, 0);
}

uint64_t sub_100D3EA14()
{
  v107 = v0;
  v1 = *(v0 + 720);
  v2 = *(v0 + 688);
  v3 = *(v0 + 224);
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;

  v5 = sub_10013CF58(sub_100D49DF0, v4, v1);

  v6 = v5[2];

  if (v6)
  {

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Already requested by the sharee.", v9, 2u);
    }

    else
    {
    }

    v21 = *(v0 + 336);
    v22 = *(v0 + 224);

    sub_100D4A3EC(v21, type metadata accessor for OwnerSharingCircle);
    sub_100D4A3EC(v22, type metadata accessor for OwnerPeerTrust);
    goto LABEL_13;
  }

  v10 = *(v0 + 888);
  v11 = *(v0 + 432);
  v12 = *(v0 + 360);
  v13 = *(v0 + 368);
  v14 = *(v0 + 224);
  v15 = *(v0 + 200);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v16 = (v10 + 32) & ~v10;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_101385D80;
  v11(v17 + v16, v14 + *(v15 + 20), v12);
  v18 = sub_100B05044(v17);
  swift_setDeallocating();
  (*(v13 + 8))(v17 + v16, v12);
  swift_deallocClassInstance();
  if (v18[2])
  {
    v20 = sub_100315884(*(v0 + 336) + *(v0 + 892), v18, 2, *(v0 + 720), 0, 2uLL, 2);
    *(v0 + 728) = v20;
    if (v2)
    {

      goto LABEL_10;
    }

    v35 = v19;

    v103 = v35;
    v105 = *(v35 + 16);
    if (v105)
    {

      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 134218240;
        *(v41 + 4) = *(v35 + 16);

        *(v41 + 12) = 2048;
        *(v41 + 14) = *(v20 + 16);

        _os_log_impl(&_mh_execute_header, v39, v40, "Not empty circlesToDelete list on share request transformation! Count of items to delete: %ld, items to create: %ld", v41, 0x16u);
      }

      else
      {
      }
    }

    v42 = *(v20 + 16);
    *(v0 + 736) = v42;
    v102 = v20;
    v104 = v42;
    if (v42)
    {
      v43 = 0;
      v44 = *(v0 + 256);
      while (v43 < *(v20 + 16))
      {
        v46 = *(v0 + 328);
        v47 = *(v0 + 312);
        sub_100D4A580(v20 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v43, v46, type metadata accessor for OwnerSharingCircle);
        sub_100D4A580(v46, v47, type metadata accessor for OwnerSharingCircle);
        v48 = Logger.logObject.getter();
        v49 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = *(v0 + 312);
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v106[0] = v52;
          *v51 = 141558275;
          *(v51 + 4) = 1752392040;
          *(v51 + 12) = 2081;
          sub_100D42DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v53 = dispatch thunk of CustomStringConvertible.description.getter();
          v55 = v54;
          sub_100D4A3EC(v50, type metadata accessor for OwnerSharingCircle);
          v56 = sub_1000136BC(v53, v55, v106);

          *(v51 + 14) = v56;
          _os_log_impl(&_mh_execute_header, v48, v49, "Data update on circle request. Create %{private,mask.hash}s", v51, 0x16u);
          sub_100007BAC(v52);

          v20 = v102;
        }

        else
        {
          v45 = *(v0 + 312);

          sub_100D4A3EC(v45, type metadata accessor for OwnerSharingCircle);
        }

        ++v43;
        v36 = sub_100D4A3EC(*(v0 + 328), type metadata accessor for OwnerSharingCircle);
        if (v104 == v43)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_28:
      v57 = v103;
      if (!v105)
      {
LABEL_35:
        type metadata accessor for ChangeSetAdaptor();
        inited = swift_initStackObject();
        *(inited + 16) = _swiftEmptyDictionarySingleton;
        *(inited + 24) = _swiftEmptyDictionarySingleton;
        v73 = inited + 24;

        if (v105)
        {
          if (!*(v103 + 16))
          {
LABEL_59:
            __break(1u);
            goto LABEL_60;
          }

          v74 = (v0 + 304);
          v75 = *(v0 + 256);
          v76 = *(v0 + 304);
          v77 = (*(v75 + 80) + 32) & ~*(v75 + 80);
          v78 = *(v75 + 72);
          sub_100D4A580(v103 + v77, v76, type metadata accessor for OwnerSharingCircle);
          sub_100D45194(v76);
          v36 = sub_100D4A3EC(*(v0 + 304), type metadata accessor for OwnerSharingCircle);
          if (v105 != 1)
          {
            v79 = v103 + v78 + v77;
            v80 = 1;
            while (v80 < *(v103 + 16))
            {
              v81 = *v74;
              sub_100D4A580(v79, *v74, type metadata accessor for OwnerSharingCircle);
              sub_100D45194(v81);
              ++v80;
              v36 = sub_100D4A3EC(*v74, type metadata accessor for OwnerSharingCircle);
              v79 += v78;
              if (v105 == v80)
              {
                goto LABEL_41;
              }
            }

            goto LABEL_59;
          }
        }

LABEL_41:

        if (v104)
        {
          if (!*(v102 + 16))
          {
LABEL_60:
            __break(1u);
            return _swift_task_switch(v36, v37, v38);
          }

          v82 = (v0 + 296);
          v83 = *(v0 + 256);
          v84 = *(v0 + 296);
          v85 = (*(v83 + 80) + 32) & ~*(v83 + 80);
          v86 = *(v83 + 72);
          sub_100D4A580(v102 + v85, v84, type metadata accessor for OwnerSharingCircle);
          sub_100D43498(v84, sub_101120F7C);
          v36 = sub_100D4A3EC(*(v0 + 296), type metadata accessor for OwnerSharingCircle);
          if (v104 != 1)
          {
            v87 = v102 + v86 + v85;
            v88 = 1;
            while (v88 < *(v102 + 16))
            {
              v89 = *v82;
              sub_100D4A580(v87, *v82, type metadata accessor for OwnerSharingCircle);
              sub_100D43498(v89, sub_101120F7C);
              ++v88;
              v36 = sub_100D4A3EC(*v82, type metadata accessor for OwnerSharingCircle);
              v87 += v86;
              if (v104 == v88)
              {
                goto LABEL_47;
              }
            }

            goto LABEL_60;
          }
        }

LABEL_47:

        swift_beginAccess();
        v90 = *(inited + 16);
        if (*(v90 + 16))
        {
          goto LABEL_52;
        }

        swift_beginAccess();
        if ((*v73 & 0xC000000000000001) != 0)
        {

          v91 = __CocoaDictionary.count.getter();
        }

        else
        {
          v91 = *(*v73 + 16);
        }

        if (v91)
        {
LABEL_52:
          v92 = *(v0 + 648);
          v93 = *(v0 + 400);
          v94 = *(v0 + 360);
          v95 = *(v0 + 192);
          UUID.init()();
          swift_beginAccess();

          v98 = sub_1003A8B54(v96, v97);
          swift_bridgeObjectRelease_n();
          v92(v95, v93, v94);
          v99 = type metadata accessor for CloudKitChangeSet(0);
          *(v95 + *(v99 + 20)) = v98;
          *(v95 + *(v99 + 24)) = v90;
          (*(*(v99 - 8) + 56))(v95, 0, 1, v99);
        }

        else
        {
          v100 = *(v0 + 192);

          v101 = type metadata accessor for CloudKitChangeSet(0);
          (*(*(v101 - 8) + 56))(v100, 1, 1, v101);
        }

        v37 = *(v0 + 560);
        v36 = sub_100D3F9A0;
        v38 = 0;

        return _swift_task_switch(v36, v37, v38);
      }

      v58 = 0;
      v59 = *(v0 + 256);
      while (v58 < *(v57 + 16))
      {
        v61 = *(v0 + 320);
        v62 = *(v0 + 288);
        sub_100D4A580(v57 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v58, v61, type metadata accessor for OwnerSharingCircle);
        sub_100D4A580(v61, v62, type metadata accessor for OwnerSharingCircle);
        v63 = Logger.logObject.getter();
        v64 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = *(v0 + 288);
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          v106[0] = v67;
          *v66 = 141558275;
          *(v66 + 4) = 1752392040;
          *(v66 + 12) = 2081;
          sub_100D42DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v68 = dispatch thunk of CustomStringConvertible.description.getter();
          v70 = v69;
          sub_100D4A3EC(v65, type metadata accessor for OwnerSharingCircle);
          v71 = sub_1000136BC(v68, v70, v106);

          *(v66 + 14) = v71;
          _os_log_impl(&_mh_execute_header, v63, v64, "Data update on circle request. Delete %{private,mask.hash}s", v66, 0x16u);
          sub_100007BAC(v67);

          v57 = v103;
        }

        else
        {
          v60 = *(v0 + 288);

          sub_100D4A3EC(v60, type metadata accessor for OwnerSharingCircle);
        }

        ++v58;
        v36 = sub_100D4A3EC(*(v0 + 320), type metadata accessor for OwnerSharingCircle);
        if (v105 == v58)
        {
          goto LABEL_35;
        }
      }
    }

    __break(1u);
    goto LABEL_59;
  }

  v23 = *(v0 + 360);
  v24 = *(v0 + 368);

  type metadata accessor for BeaconSharingCircleTransformer.Error(0);
  sub_100D42DB8(&qword_101697608, 255, type metadata accessor for BeaconSharingCircleTransformer.Error, &unk_10139CC50);
  swift_allocError();
  (*(v24 + 56))(v25, 1, 1, v23);
  swift_willThrow();

LABEL_10:
  v26 = *(v0 + 336);
  v27 = *(v0 + 224);

  sub_100D4A3EC(v26, type metadata accessor for OwnerSharingCircle);
  sub_100D4A3EC(v27, type metadata accessor for OwnerPeerTrust);
  swift_errorRetain();
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 138412290;
    v32 = _convertErrorToNSError(_:)();
    *(v30 + 4) = v32;
    *v31 = v32;
    _os_log_impl(&_mh_execute_header, v28, v29, "Error in handleCircleRequested: %@", v30, 0xCu);
    sub_10000B3A8(v31, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

LABEL_13:

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_100D3F9C8()
{
  v1 = v0[93];
  v2 = v0[24];
  v3 = swift_task_alloc();
  v0[94] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[95] = v4;
  *v4 = v0;
  v4[1] = sub_100D3FAC0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_100111F54, v3, &type metadata for () + 1);
}

uint64_t sub_100D3FAC0()
{
  *(*v1 + 768) = v0;

  if (v0)
  {

    v2 = sub_100D40008;
  }

  else
  {

    v2 = sub_100D3FC08;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100D3FC08()
{
  v1 = swift_task_alloc();
  *(v0 + 776) = v1;
  *v1 = v0;
  v1[1] = sub_100D3FC98;

  return daemon.getter();
}

uint64_t sub_100D3FC98(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 784) = a1;

  v5 = swift_task_alloc();
  *(v3 + 792) = v5;
  v6 = type metadata accessor for BeaconSharingService(0);
  v7 = sub_100D42DB8(&unk_101696950, 255, type metadata accessor for BeaconSharingService, &unk_101390650);
  *v5 = v4;
  v5[1] = sub_100D3FE50;
  v8 = *(v2 + 512);
  v9 = *(v2 + 504);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_100D3FE50(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v4[101] = 0;
    v6 = swift_task_alloc();
    v4[102] = v6;
    *v6 = v5;
    v6[1] = sub_100D40488;

    return daemon.getter();
  }

  else
  {

    v4[100] = a1;

    return _swift_task_switch(sub_100D402D4, 0, 0);
  }
}

uint64_t sub_100D40024()
{
  v1 = v0[42];
  v2 = v0[28];
  v3 = v0[24];

  sub_100D4A3EC(v1, type metadata accessor for OwnerSharingCircle);
  sub_10000B3A8(v3, &qword_1016975C8, &qword_10138C1F0);
  sub_100D4A3EC(v2, type metadata accessor for OwnerPeerTrust);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = _convertErrorToNSError(_:)();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error in handleCircleRequested: %@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_100D402D4()
{
  v1 = *(v0 + 800);

  return _swift_task_switch(sub_100D40344, v1, 0);
}

uint64_t sub_100D40344()
{
  type metadata accessor for Transaction();
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = 0;
  *(v2 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  v0[101] = v0[100];
  v3 = swift_task_alloc();
  v0[102] = v3;
  *v3 = v0;
  v3[1] = sub_100D40488;

  return daemon.getter();
}

uint64_t sub_100D40488(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 824) = a1;

  v5 = swift_task_alloc();
  *(v3 + 832) = v5;
  v6 = type metadata accessor for ItemSharingNotificationsService();
  v7 = sub_100D42DB8(&qword_1016B1160, 255, type metadata accessor for ItemSharingNotificationsService, &unk_1013D77C8);
  *v5 = v4;
  v5[1] = sub_100D40640;
  v8 = *(v2 + 512);
  v9 = *(v2 + 504);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_100D40640(uint64_t a1)
{
  *(*v2 + 840) = a1;

  if (v1)
  {

    v3 = sub_100D4079C;
  }

  else
  {

    v3 = sub_100D40A3C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100D4079C()
{
  if (qword_101694C50 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v0[52], qword_10177BAA0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "No ItemSharingNotificationsService available!", v3, 2u);
  }

  else
  {
  }

  v4 = v0[28];
  v5 = v0[24];
  sub_100D4A3EC(v0[42], type metadata accessor for OwnerSharingCircle);
  sub_10000B3A8(v5, &qword_1016975C8, &qword_10138C1F0);
  sub_100D4A3EC(v4, type metadata accessor for OwnerPeerTrust);

  v6 = v0[1];

  return v6();
}

void sub_100D40A3C()
{
  if (*(v0 + 736))
  {
    v1 = 0;
    v3 = *(v0 + 248);
    v2 = *(v0 + 256);
    while (1)
    {
      v4 = *(v0 + 728);
      if (v1 >= *(v4 + 16))
      {
        break;
      }

      v5 = *(v0 + 280);
      v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v7 = *(v2 + 72);
      sub_100D4A580(v4 + v6 + v7 * v1, v5, type metadata accessor for OwnerSharingCircle);
      v8 = *(v0 + 280);
      if (*(v5 + *(v3 + 28)) == 2)
      {
        sub_100D4A2D4(v8, *(v0 + 264), type metadata accessor for OwnerSharingCircle);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_101123FE4(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v10 = _swiftEmptyArrayStorage[2];
        v9 = _swiftEmptyArrayStorage[3];
        if (v10 >= v9 >> 1)
        {
          sub_101123FE4((v9 > 1), v10 + 1, 1);
        }

        v11 = *(v0 + 264);
        _swiftEmptyArrayStorage[2] = v10 + 1;
        sub_100D4A2D4(v11, _swiftEmptyArrayStorage + v6 + v10 * v7, type metadata accessor for OwnerSharingCircle);
      }

      else
      {
        sub_100D4A3EC(v8, type metadata accessor for OwnerSharingCircle);
      }

      if (++v1 == *(v0 + 736))
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    *(v0 + 848) = _swiftEmptyArrayStorage;

    v12 = _swiftEmptyArrayStorage[2];
    *(v0 + 856) = v12;
    if (v12)
    {
      v13 = *(v0 + 256);
      v14 = *(v0 + 184);
      v15 = *(v0 + 900);
      v16 = *(v13 + 80);
      *(v0 + 896) = v16;
      *(v0 + 864) = *(v13 + 72);
      *(v0 + 872) = 0;
      sub_100D4A580(*(v0 + 848) + ((v16 + 32) & ~v16), *(v0 + 272), type metadata accessor for OwnerSharingCircle);
      v17 = swift_task_alloc();
      *(v0 + 880) = v17;
      *v17 = v0;
      v17[1] = sub_100D40E68;
      v18 = *(v0 + 272);
      v19 = *(v0 + 176);

      sub_100B419CC(v18, v15, v19, v14);
    }

    else
    {
      v20 = *(v0 + 336);
      v21 = *(v0 + 224);
      v22 = *(v0 + 192);

      sub_100D4A3EC(v20, type metadata accessor for OwnerSharingCircle);
      sub_10000B3A8(v22, &qword_1016975C8, &qword_10138C1F0);
      sub_100D4A3EC(v21, type metadata accessor for OwnerPeerTrust);

      v23 = *(v0 + 8);

      v23();
    }
  }
}

uint64_t sub_100D40E68()
{
  v2 = *v1;

  v3 = *(v2 + 272);
  if (v0)
  {

    sub_100D4A3EC(v3, type metadata accessor for OwnerSharingCircle);
    v4 = sub_100D4A650;
  }

  else
  {
    sub_100D4A3EC(v3, type metadata accessor for OwnerSharingCircle);
    v4 = sub_100D40FD8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100D40FD8()
{
  v1 = *(v0 + 872) + 1;
  if (v1 == *(v0 + 856))
  {
    v2 = *(v0 + 336);
    v3 = *(v0 + 224);
    v4 = *(v0 + 192);

    sub_100D4A3EC(v2, type metadata accessor for OwnerSharingCircle);
    sub_10000B3A8(v4, &qword_1016975C8, &qword_10138C1F0);
    sub_100D4A3EC(v3, type metadata accessor for OwnerPeerTrust);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    *(v0 + 872) = v1;
    v7 = *(v0 + 184);
    v8 = *(v0 + 900);
    sub_100D4A580(*(v0 + 848) + ((*(v0 + 896) + 32) & ~*(v0 + 896)) + *(v0 + 864) * v1, *(v0 + 272), type metadata accessor for OwnerSharingCircle);
    v9 = swift_task_alloc();
    *(v0 + 880) = v9;
    *v9 = v0;
    v9[1] = sub_100D40E68;
    v10 = *(v0 + 272);
    v11 = *(v0 + 176);

    return sub_100B419CC(v10, v8, v11, v7);
  }
}

uint64_t sub_100D412A4()
{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    v5 = _convertErrorToNSError(_:)();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error in handleCircleRequested: %@", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100D414EC()
{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    v5 = _convertErrorToNSError(_:)();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error in handleCircleRequested: %@", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100D41740()
{
  v1 = *(v0 + 336);

  sub_100D4A3EC(v1, type metadata accessor for OwnerSharingCircle);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    v6 = _convertErrorToNSError(_:)();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error in handleCircleRequested: %@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

BOOL sub_100D419B4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for OwnerSharingCircle(0);
  v4 = *(sub_100D4A09C(*(a1 + *(v3 + 32)), sub_100D49E10) + 2);

  return *(a1 + *(v3 + 36)) == 2 && v4 != 0;
}

uint64_t sub_100D41A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v9 = type metadata accessor for UUID();
  v4[3] = v9;
  v4[4] = *(v9 - 8);
  v4[5] = swift_task_alloc();
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_100D41B74;

  return sub_1003C95D8(a1, a2, a3, a4);
}

uint64_t sub_100D41B74()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100D41CB0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100D41CB0()
{
  v23 = v0;
  if (qword_101694E20 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177BF80);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[4];
  v9 = v0[5];
  v11 = v0[3];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v12 = 141558531;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_100D42DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_1000136BC(v13, v15, &v22);

    *(v12 + 14) = v16;
    *(v12 + 22) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v17;
    *v20 = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Cannot handle stop from sharee to owner for delegated share %{private,mask.hash}s, %{public}@.", v12, 0x20u);
    sub_10000B3A8(v20, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v21);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_100D41F84(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v15 = a3;
  v16 = v8;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  type metadata accessor for Transaction();
  (*(v10 + 16))(&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v12 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v4;
  *(v13 + 24) = a2;
  *(v13 + 32) = v15;
  *(v13 + 40) = a4;
  (*(v10 + 32))(v13 + v12, &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  *(v13 + ((v11 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v16;

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_100D421DC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v24 = a2;
  v25 = a3;
  v26 = a9;
  v27 = a10;
  v28 = a8;
  v23 = *v10;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Transaction();
  (*(v15 + 16))(v17, a1, v14);
  v18 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v19 = (v16 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = v11;
  (*(v15 + 32))(v20 + v18, v17, v14);
  v21 = v20 + v19;
  *v21 = v24;
  *(v21 + 8) = v25;
  *(v21 + 16) = a4;
  *(v20 + ((v19 + 31) & 0xFFFFFFFFFFFFFFF8)) = v23;

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_100D423AC(uint64_t a1)
{
  v3 = *v1;
  type metadata accessor for Transaction();
  v4 = swift_allocObject();
  v4[2] = a1;
  v4[3] = v1;
  v4[4] = v3;

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_100D42484(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v18 = a3;
  HIDWORD(v17) = a2;
  v7 = *v4;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Transaction();
  (*(v9 + 16))(v11, a1, v8);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = (v10 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v12, v11, v8);
  v15 = v14 + v13;
  *v15 = BYTE4(v17);
  *(v15 + 8) = v18;
  *(v15 + 16) = a4;
  *(v14 + ((v13 + 31) & 0xFFFFFFFFFFFFFFF8)) = v7;

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_100D42670()
{
  v12 = v0;
  if (qword_101694E20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177BF80);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    sub_10058BB20();
    v6 = Set.description.getter();
    v8 = sub_1000136BC(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Messaging accounts changed. Accounts: %s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100D42814(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100D42834, v1, 0);
}

uint64_t sub_100D42834()
{
  v15 = v0;
  if (qword_101694E20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177BF80);
  swift_bridgeObjectRetain_n();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[2];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315394;
    sub_100D48DC8();
    v8 = Set.description.getter();
    v10 = sub_1000136BC(v8, v9, &v14);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2048;
    v11 = *(v5 + 16);

    *(v6 + 14) = v11;

    _os_log_impl(&_mh_execute_header, v2, v3, "Messaging devices changed. Devices: %s, count: %ld.", v6, 0x16u);
    sub_100007BAC(v7);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  *(v0[3] + 144) = *(v0[2] + 16);
  v12 = v0[1];

  return v12();
}

uint64_t sub_100D42A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_task_alloc();
  *(v6 + 16) = v11;
  *v11 = v6;
  v11[1] = sub_100014744;

  return sub_100D48E1C(a3, a4, a5, a6);
}

uint64_t sub_100D42AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v13 = a6[1];
  v14 = a6[2];
  v15 = a6[3];
  v16 = *a6;
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_100014744;

  return (sub_100D49174)(a3, a4, a5, v16, v13, v14, v15, a7, a8);
}

uint64_t sub_100D42BE8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_100D42650(a1);
}

uint64_t sub_100D42C80(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_100D42814(a1);
}

uint64_t sub_100D42D18(uint64_t a1, uint64_t a2)
{
  result = sub_100D42DB8(&qword_1016BA4C0, a2, type metadata accessor for CircleTrustService, &unk_1013E4A38);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100D42DB8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_100D42E48()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *(v4 + 1);
  v6 = *(v4 + 2);
  v7 = *v4;
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100014650;

  return sub_100D41A48(v0 + v3, v7, v5, v6);
}

uint64_t sub_100D42F74()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177BF98);
  sub_1000076D4(v0, qword_10177BF98);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100D42FF4(id *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for OwnerSharingCircle(0);
  __chkstk_darwin(v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100D4A580(a2, v8, type metadata accessor for OwnerSharingCircle);
  v9 = [*a1 encryptedValues];
  swift_getObjectType();
  type metadata accessor for UUID();
  sub_100D42DB8(&qword_1016984A0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v10 = UUID.uuidString.getter();
    v29 = &type metadata for String;
    v30 = &protocol witness table for String;
    v27 = v10;
    v28 = v11;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v12 = v6[8];
  v13 = *&v8[v12];
  if ((sub_100DE7CB4(*(v3 + v12), v13) & 1) == 0)
  {
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    v27 = v13;

    sub_1000BC4D4(&qword_1016BC2D0, &unk_1013E4B00);
    sub_100D489BC();
    v14 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v16 = v15;

    isa = Data._bridgeToObjectiveC()().super.isa;
    v18 = String._bridgeToObjectiveC()();
    [v9 setObject:isa forKeyedSubscript:v18];

    sub_100016590(v14, v16);
  }

  v19 = v6[9];
  v20 = *(v3 + v19);
  v21 = v8[v19];
  if (v20 != v21)
  {
    v29 = &type metadata for Int;
    v30 = &protocol witness table for Int;
    v27 = v21;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v22 = v6[7];
  v23 = *(v3 + v22);
  v24 = v8[v22];
  if (v23 == v24)
  {
    sub_100D4A3EC(v8, type metadata accessor for OwnerSharingCircle);
    return swift_unknownObjectRelease();
  }

  else
  {
    v29 = &type metadata for Int;
    v30 = &protocol witness table for Int;
    v27 = v24;
    CKRecordKeyValueSetting.subscript.setter();
    swift_unknownObjectRelease();
    return sub_100D4A3EC(v8, type metadata accessor for OwnerSharingCircle);
  }
}

void sub_100D43498(uint64_t *a1, uint64_t (*a2)(uint64_t *))
{
  v5 = v2;
  v6 = *a1;
  v7 = a1[1];
  v8 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (v8)
    {
      if (v6 == v6 >> 32)
      {
        goto LABEL_9;
      }
    }

    else if ((v7 & 0xFF000000000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    sub_100D48968();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();
    return;
  }

  if (v8 == 2 && *(v6 + 16) != *(v6 + 24))
  {
    goto LABEL_7;
  }

LABEL_9:
  v11 = objc_autoreleasePoolPush();
  v12 = a2(a1);
  if (!v3)
  {
    v13 = v12;
    objc_autoreleasePoolPop(v11);
    swift_beginAccess();
    v14 = *(v5 + 24);

    v15 = [v13 recordID];
    if ((v14 & 0xC000000000000001) != 0)
    {
      v16 = v15;
      v17 = __CocoaDictionary.contains(_:)();

      if (v17)
      {
        goto LABEL_19;
      }
    }

    else if (*(v14 + 16))
    {
      v18 = v15;
      sub_100771FF8(v15);
      v20 = v19;

      if (v20)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v21 = v15;
    }

    swift_beginAccess();
    v22 = *(v5 + 16);

    v23 = [v13 recordID];
    v24 = v23;
    if (*(v22 + 16))
    {
      sub_100771FF8(v23);
      v26 = v25;

      if (v26)
      {
LABEL_19:
        sub_100D48968();
        swift_allocError();
        *v27 = 4;
        swift_willThrow();
LABEL_29:

        return;
      }
    }

    else
    {
    }

    v28 = [v13 recordID];
    swift_beginAccess();
    v29 = *(v5 + 24);
    if ((v29 & 0xC000000000000001) == 0)
    {
      v32 = v13;
      goto LABEL_28;
    }

    if (v29 < 0)
    {
      v11 = *(v5 + 24);
    }

    else
    {
      v11 = (v29 & 0xFFFFFFFFFFFFFF8);
    }

    v30 = v13;
    v31 = __CocoaDictionary.count.getter();
    if (!__OFADD__(v31, 1))
    {
      *(v5 + 24) = sub_100D47C24(v11, v31 + 1);
LABEL_28:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = *(v5 + 24);
      sub_100FFB704(v13, v28, isUniquelyReferenced_nonNull_native);
      *(v5 + 24) = v34;

      swift_endAccess();
      goto LABEL_29;
    }

    __break(1u);
  }

  objc_autoreleasePoolPop(v11);
  __break(1u);
}

void sub_100D437EC(uint64_t *a1, uint64_t (*a2)(uint64_t *))
{
  v5 = v2;
  v6 = *a1;
  v7 = a1[1];
  v8 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (v8)
    {
      if (v6 == v6 >> 32)
      {
        goto LABEL_9;
      }
    }

    else if ((v7 & 0xFF000000000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    sub_100D48968();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();
    return;
  }

  if (v8 == 2 && *(v6 + 16) != *(v6 + 24))
  {
    goto LABEL_7;
  }

LABEL_9:
  v11 = objc_autoreleasePoolPush();
  v12 = a2(a1);
  if (!v3)
  {
    v13 = v12;
    objc_autoreleasePoolPop(v11);
    swift_beginAccess();
    v14 = *(v5 + 24);

    v15 = [v13 recordID];
    if ((v14 & 0xC000000000000001) != 0)
    {
      v16 = v15;
      v17 = __CocoaDictionary.contains(_:)();

      if (v17)
      {
        goto LABEL_19;
      }
    }

    else if (*(v14 + 16))
    {
      v18 = v15;
      sub_100771FF8(v15);
      v20 = v19;

      if (v20)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v21 = v15;
    }

    swift_beginAccess();
    v22 = *(v5 + 16);

    v23 = [v13 recordID];
    v24 = v23;
    if (*(v22 + 16))
    {
      sub_100771FF8(v23);
      v26 = v25;

      if (v26)
      {
LABEL_19:
        sub_100D48968();
        swift_allocError();
        *v27 = 4;
        swift_willThrow();
LABEL_29:

        return;
      }
    }

    else
    {
    }

    v28 = [v13 recordID];
    swift_beginAccess();
    v29 = *(v5 + 24);
    if ((v29 & 0xC000000000000001) == 0)
    {
      v32 = v13;
      goto LABEL_28;
    }

    if (v29 < 0)
    {
      v11 = *(v5 + 24);
    }

    else
    {
      v11 = (v29 & 0xFFFFFFFFFFFFFF8);
    }

    v30 = v13;
    v31 = __CocoaDictionary.count.getter();
    if (!__OFADD__(v31, 1))
    {
      *(v5 + 24) = sub_100D47C24(v11, v31 + 1);
LABEL_28:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = *(v5 + 24);
      sub_100FFB704(v13, v28, isUniquelyReferenced_nonNull_native);
      *(v5 + 24) = v34;

      swift_endAccess();
      goto LABEL_29;
    }

    __break(1u);
  }

  objc_autoreleasePoolPop(v11);
  __break(1u);
}

void sub_100D43B6C(uint64_t *a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v5 = v3;
  v9 = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  __chkstk_darwin(v9 - 8);
  v11 = (v48 - v10);
  v12 = type metadata accessor for MemberSharingCircle(0);
  __chkstk_darwin(v12);
  v15 = (v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *a1;
  v17 = a1[1];
  v18 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v18 != 2 || *(v16 + 16) == *(v16 + 24))
    {
      goto LABEL_12;
    }
  }

  else if (v18)
  {
    if (v16 == v16 >> 32)
    {
LABEL_12:
      sub_100D48968();
      swift_allocError();
      *v27 = 2;
      swift_willThrow();
      return;
    }
  }

  else if ((v17 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

  v48[0] = v13;
  v48[1] = a3;
  v49 = a2;
  v19 = objc_autoreleasePoolPush();
  sub_1011224E4(a1);
  if (!v4)
  {
    v21 = v20;
    objc_autoreleasePoolPop(v19);
    v54 = v21;
    swift_beginAccess();
    v22 = *(v5 + 24);

    v50 = v21;
    v23 = [v21 recordID];
    v24 = v23;
    if ((v22 & 0xC000000000000001) != 0)
    {
      v25 = v23;
      v26 = __CocoaDictionary.contains(_:)();

      if (v26)
      {
        goto LABEL_19;
      }
    }

    else if (*(v22 + 16))
    {
      sub_100771FF8(v23);
      v29 = v28;

      if (v29)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }

    swift_beginAccess();
    v30 = *(v5 + 16);

    v31 = [v50 recordID];
    v32 = v31;
    if (*(v30 + 16))
    {
      sub_100771FF8(v31);
      v34 = v33;

      if (v34)
      {
LABEL_19:
        sub_100D48968();
        swift_allocError();
        *v35 = 4;
        swift_willThrow();

        return;
      }
    }

    else
    {
    }

    v36 = v50;
    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    v52 = 0x7365547265646E75;
    v53 = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    if (v51 == 1)
    {
      v37 = [v36 valueStore];
      [v37 resetChangedKeys];

      v38 = [v36 encryptedValueStore];
      [v38 resetChangedKeys];
    }

    v39 = [v36 recordID];
    v40 = *(v5 + 24);

    v41 = sub_1005CAAF8(v39, v40);

    if (v41)
    {
      sub_1003268EC(v41, v11);
      v42 = v50;
      (*(v48[0] + 56))(v11, 0, 1, v12);
      sub_100D4A2D4(v11, v15, type metadata accessor for MemberSharingCircle);
    }

    else
    {
      v42 = v50;
      sub_100D4A580(a1, v15, type metadata accessor for MemberSharingCircle);
    }

    v49(v15);
    sub_100EC12C4(&v54, v15);
    if (sub_1003287CC(a1, v15))
    {
      goto LABEL_36;
    }

    v43 = v42;
    v44 = [v43 recordID];
    swift_beginAccess();
    v45 = *(v5 + 24);
    if ((v45 & 0xC000000000000001) == 0)
    {
LABEL_35:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = *(v5 + 24);
      sub_100FFB704(v43, v44, isUniquelyReferenced_nonNull_native);
      *(v5 + 24) = v51;

      swift_endAccess();
LABEL_36:
      sub_100D4A3EC(v15, type metadata accessor for MemberSharingCircle);

      return;
    }

    if (v45 < 0)
    {
      v19 = *(v5 + 24);
    }

    else
    {
      v19 = (v45 & 0xFFFFFFFFFFFFFF8);
    }

    v46 = __CocoaDictionary.count.getter();
    if (!__OFADD__(v46, 1))
    {
      *(v5 + 24) = sub_100D47C24(v19, v46 + 1);
      goto LABEL_35;
    }

    __break(1u);
  }

  objc_autoreleasePoolPop(v19);
  __break(1u);
}

void sub_100D44190(uint64_t *a1, void (*a2)(char *), uint64_t a3)
{
  v5 = v3;
  v9 = sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  __chkstk_darwin(v9 - 8);
  v11 = (v48 - v10);
  v12 = type metadata accessor for OwnerSharingCircle(0);
  __chkstk_darwin(v12);
  v15 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = a1[1];
  v18 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v18 != 2 || *(v16 + 16) == *(v16 + 24))
    {
      goto LABEL_12;
    }
  }

  else if (v18)
  {
    if (v16 == v16 >> 32)
    {
LABEL_12:
      sub_100D48968();
      swift_allocError();
      *v27 = 2;
      swift_willThrow();
      return;
    }
  }

  else if ((v17 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

  v48[0] = v13;
  v48[1] = a3;
  v49 = a2;
  v19 = objc_autoreleasePoolPush();
  sub_101120F7C(a1);
  if (!v4)
  {
    v21 = v20;
    objc_autoreleasePoolPop(v19);
    v54 = v21;
    swift_beginAccess();
    v22 = *(v5 + 24);

    v50 = v21;
    v23 = [v21 recordID];
    v24 = v23;
    if ((v22 & 0xC000000000000001) != 0)
    {
      v25 = v23;
      v26 = __CocoaDictionary.contains(_:)();

      if (v26)
      {
        goto LABEL_19;
      }
    }

    else if (*(v22 + 16))
    {
      sub_100771FF8(v23);
      v29 = v28;

      if (v29)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }

    swift_beginAccess();
    v30 = *(v5 + 16);

    v31 = [v50 recordID];
    v32 = v31;
    if (*(v30 + 16))
    {
      sub_100771FF8(v31);
      v34 = v33;

      if (v34)
      {
LABEL_19:
        sub_100D48968();
        swift_allocError();
        *v35 = 4;
        swift_willThrow();

        return;
      }
    }

    else
    {
    }

    v36 = v50;
    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    v52 = 0x7365547265646E75;
    v53 = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    if (v51 == 1)
    {
      v37 = [v36 valueStore];
      [v37 resetChangedKeys];

      v38 = [v36 encryptedValueStore];
      [v38 resetChangedKeys];
    }

    v39 = [v36 recordID];
    v40 = *(v5 + 24);

    v41 = sub_1005CAAF8(v39, v40);

    if (v41)
    {
      sub_100E0F270(v41, v11);
      v42 = v50;
      (*(v48[0] + 56))(v11, 0, 1, v12);
      sub_100D4A2D4(v11, v15, type metadata accessor for OwnerSharingCircle);
    }

    else
    {
      v42 = v50;
      sub_100D4A580(a1, v15, type metadata accessor for OwnerSharingCircle);
    }

    v49(v15);
    sub_100D42FF4(&v54, v15);
    if (sub_100E11AF8(a1, v15))
    {
      goto LABEL_36;
    }

    v43 = v42;
    v44 = [v43 recordID];
    swift_beginAccess();
    v45 = *(v5 + 24);
    if ((v45 & 0xC000000000000001) == 0)
    {
LABEL_35:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = *(v5 + 24);
      sub_100FFB704(v43, v44, isUniquelyReferenced_nonNull_native);
      *(v5 + 24) = v51;

      swift_endAccess();
LABEL_36:
      sub_100D4A3EC(v15, type metadata accessor for OwnerSharingCircle);

      return;
    }

    if (v45 < 0)
    {
      v19 = *(v5 + 24);
    }

    else
    {
      v19 = (v45 & 0xFFFFFFFFFFFFFF8);
    }

    v46 = __CocoaDictionary.count.getter();
    if (!__OFADD__(v46, 1))
    {
      *(v5 + 24) = sub_100D47C24(v19, v46 + 1);
      goto LABEL_35;
    }

    __break(1u);
  }

  objc_autoreleasePoolPop(v19);
  __break(1u);
}

void sub_100D447B4(uint64_t *a1, void (*a2)(char *), uint64_t a3)
{
  v5 = v3;
  v9 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  __chkstk_darwin(v9 - 8);
  v11 = v48 - v10;
  v12 = type metadata accessor for SharedBeaconRecord(0);
  __chkstk_darwin(v12);
  v15 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = a1[1];
  v18 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v18 != 2 || *(v16 + 16) == *(v16 + 24))
    {
      goto LABEL_12;
    }
  }

  else if (v18)
  {
    if (v16 == v16 >> 32)
    {
LABEL_12:
      sub_100D48968();
      swift_allocError();
      *v27 = 2;
      swift_willThrow();
      return;
    }
  }

  else if ((v17 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

  v48[0] = v13;
  v48[1] = a3;
  v49 = a2;
  v19 = objc_autoreleasePoolPush();
  sub_101122288(a1);
  if (!v4)
  {
    v21 = v20;
    objc_autoreleasePoolPop(v19);
    v54 = v21;
    swift_beginAccess();
    v22 = *(v5 + 24);

    v50 = v21;
    v23 = [v21 recordID];
    v24 = v23;
    if ((v22 & 0xC000000000000001) != 0)
    {
      v25 = v23;
      v26 = __CocoaDictionary.contains(_:)();

      if (v26)
      {
        goto LABEL_19;
      }
    }

    else if (*(v22 + 16))
    {
      sub_100771FF8(v23);
      v29 = v28;

      if (v29)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }

    swift_beginAccess();
    v30 = *(v5 + 16);

    v31 = [v50 recordID];
    v32 = v31;
    if (*(v30 + 16))
    {
      sub_100771FF8(v31);
      v34 = v33;

      if (v34)
      {
LABEL_19:
        sub_100D48968();
        swift_allocError();
        *v35 = 4;
        swift_willThrow();

        return;
      }
    }

    else
    {
    }

    v36 = v50;
    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    v52 = 0x7365547265646E75;
    v53 = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    if (v51 == 1)
    {
      v37 = [v36 valueStore];
      [v37 resetChangedKeys];

      v38 = [v36 encryptedValueStore];
      [v38 resetChangedKeys];
    }

    v39 = [v36 recordID];
    v40 = *(v5 + 24);

    v41 = sub_1005CAAF8(v39, v40);

    if (v41)
    {
      sub_1011D5D0C(v41, v11);
      v42 = v50;
      (*(v48[0] + 56))(v11, 0, 1, v12);
      sub_100D4A2D4(v11, v15, type metadata accessor for SharedBeaconRecord);
    }

    else
    {
      v42 = v50;
      sub_100D4A580(a1, v15, type metadata accessor for SharedBeaconRecord);
    }

    v49(v15);
    sub_100D46BC4(&v54, v15);
    if (sub_1011DB3D8(a1, v15))
    {
      goto LABEL_36;
    }

    v43 = v42;
    v44 = [v43 recordID];
    swift_beginAccess();
    v45 = *(v5 + 24);
    if ((v45 & 0xC000000000000001) == 0)
    {
LABEL_35:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = *(v5 + 24);
      sub_100FFB704(v43, v44, isUniquelyReferenced_nonNull_native);
      *(v5 + 24) = v51;

      swift_endAccess();
LABEL_36:
      sub_100D4A3EC(v15, type metadata accessor for SharedBeaconRecord);

      return;
    }

    if (v45 < 0)
    {
      v19 = *(v5 + 24);
    }

    else
    {
      v19 = (v45 & 0xFFFFFFFFFFFFFF8);
    }

    v46 = __CocoaDictionary.count.getter();
    if (!__OFADD__(v46, 1))
    {
      *(v5 + 24) = sub_100D47C24(v19, v46 + 1);
      goto LABEL_35;
    }

    __break(1u);
  }

  objc_autoreleasePoolPop(v19);
  __break(1u);
}

void sub_100D44DD8(uint64_t *a1)
{
  v4 = sub_1000BC4D4(&qword_101699868, &qword_101391FF8);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - v5;
  v7 = *a1;
  v8 = a1[1];
  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v9 != 2 || *(v7 + 16) == *(v7 + 24))
    {
      goto LABEL_12;
    }
  }

  else if (v9)
  {
    if (v7 == v7 >> 32)
    {
LABEL_12:
      sub_100D48968();
      swift_allocError();
      *v17 = 3;
      swift_willThrow();
      return;
    }
  }

  else if ((v8 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

  v10 = objc_autoreleasePoolPush();
  sub_1011211D8(a1);
  if (v2)
  {
    objc_autoreleasePoolPop(v10);
    __break(1u);
  }

  else
  {
    v12 = v11;
    objc_autoreleasePoolPop(v10);
    v13 = [v12 recordID];
    swift_beginAccess();
    v14 = *(v1 + 24);
    if ((v14 & 0xC000000000000001) != 0)
    {

      v15 = v13;
      v16 = __CocoaDictionary.contains(_:)();

      if (v16)
      {
LABEL_17:
        sub_100D48968();
        swift_allocError();
        *v22 = 4;
        swift_willThrow();

        return;
      }
    }

    else if (*(v14 + 16))
    {

      sub_100771FF8(v13);
      v19 = v18;

      if (v19)
      {
        goto LABEL_17;
      }
    }

    swift_beginAccess();
    v31 = v1;
    if (*(*(v1 + 16) + 16))
    {

      sub_100771FF8(v13);
      v21 = v20;

      if (v21)
      {
        goto LABEL_17;
      }
    }

    v23 = *(type metadata accessor for SharingCircleSecret(0) + 20);
    v24 = type metadata accessor for CloudKitChangeSet.TombstoneInfo(0);
    v25 = *(v24 + 20);
    v26 = type metadata accessor for UUID();
    (*(*(v26 - 8) + 16))(&v6[v25], a1 + v23, v26);
    v27 = qword_101694E90;
    v28 = v12;
    if (v27 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for URL();
    sub_1000076D4(v29, qword_10177C090);
    UUID.uuidString.getter();
    URL.appendingPathComponent(_:isDirectory:)();

    *v6 = v28;
    (*(*(v24 - 8) + 56))(v6, 0, 1, v24);
    swift_beginAccess();
    sub_1001DDF1C(v6, v13);
    swift_endAccess();
  }
}

void sub_100D45194(uint64_t *a1)
{
  v4 = sub_1000BC4D4(&qword_101699868, &qword_101391FF8);
  __chkstk_darwin(v4 - 8);
  v6 = &v32 - v5;
  v7 = *a1;
  v8 = a1[1];
  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v9 != 2 || *(v7 + 16) == *(v7 + 24))
    {
      goto LABEL_12;
    }
  }

  else if (v9)
  {
    if (v7 == v7 >> 32)
    {
LABEL_12:
      sub_100D48968();
      swift_allocError();
      *v17 = 3;
      swift_willThrow();
      return;
    }
  }

  else if ((v8 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

  v10 = objc_autoreleasePoolPush();
  sub_101120F7C(a1);
  if (v2)
  {
    objc_autoreleasePoolPop(v10);
    __break(1u);
  }

  else
  {
    v12 = v11;
    objc_autoreleasePoolPop(v10);
    v13 = [v12 recordID];
    swift_beginAccess();
    v14 = *(v1 + 24);
    if ((v14 & 0xC000000000000001) != 0)
    {

      v15 = v13;
      v16 = __CocoaDictionary.contains(_:)();

      if (v16)
      {
LABEL_17:
        sub_100D48968();
        swift_allocError();
        *v22 = 4;
        swift_willThrow();

        return;
      }
    }

    else if (*(v14 + 16))
    {

      sub_100771FF8(v13);
      v19 = v18;

      if (v19)
      {
        goto LABEL_17;
      }
    }

    swift_beginAccess();
    if (*(*(v1 + 16) + 16))
    {

      sub_100771FF8(v13);
      v21 = v20;

      if (v21)
      {
        goto LABEL_17;
      }
    }

    v23 = *(type metadata accessor for OwnerSharingCircle(0) + 20);
    v24 = type metadata accessor for CloudKitChangeSet.TombstoneInfo(0);
    v25 = *(v24 + 20);
    v26 = type metadata accessor for UUID();
    (*(*(v26 - 8) + 16))(&v6[v25], a1 + v23, v26);
    v27 = *(v24 + 24);
    v28 = qword_101694EB8;
    v29 = v12;
    if (v28 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for URL();
    v31 = sub_1000076D4(v30, qword_10177C0D8);
    (*(*(v30 - 8) + 16))(&v6[v27], v31, v30);
    *v6 = v29;
    (*(*(v24 - 8) + 56))(v6, 0, 1, v24);
    swift_beginAccess();
    sub_1001DDF1C(v6, v13);
    swift_endAccess();
  }
}

void sub_100D4555C(uint64_t *a1)
{
  v5 = sub_1000BC4D4(&qword_101699868, &qword_101391FF8);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - v6;
  v8 = *a1;
  v9 = a1[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2 || *(v8 + 16) == *(v8 + 24))
    {
      goto LABEL_12;
    }
  }

  else if (v10)
  {
    if (v8 == v8 >> 32)
    {
LABEL_12:
      sub_100D48968();
      swift_allocError();
      *v18 = 3;
      swift_willThrow();
      return;
    }
  }

  else if ((v9 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

  v11 = objc_autoreleasePoolPush();
  sub_101121DD0(a1);
  if (v2)
  {
    objc_autoreleasePoolPop(v11);
    __break(1u);
    objc_autoreleasePoolPop(v3);
    __break(1u);
  }

  else
  {
    v13 = v12;
    objc_autoreleasePoolPop(v11);
    v14 = [v13 recordID];
    swift_beginAccess();
    v15 = *(v1 + 24);
    if ((v15 & 0xC000000000000001) != 0)
    {

      v16 = v14;
      v17 = __CocoaDictionary.contains(_:)();

      if (v17)
      {
LABEL_17:
        sub_100D48968();
        swift_allocError();
        *v23 = 4;
        swift_willThrow();

        return;
      }
    }

    else if (*(v15 + 16))
    {

      sub_100771FF8(v14);
      v20 = v19;

      if (v20)
      {
        goto LABEL_17;
      }
    }

    swift_beginAccess();
    if (*(*(v1 + 16) + 16))
    {

      sub_100771FF8(v14);
      v22 = v21;

      if (v22)
      {
        goto LABEL_17;
      }
    }

    v32 = v14;
    v24 = type metadata accessor for CloudKitChangeSet.TombstoneInfo(0);
    v25 = *(v24 + 20);
    v26 = *(type metadata accessor for BeaconNamingRecord(0) + 20);
    v27 = type metadata accessor for UUID();
    (*(*(v27 - 8) + 16))(&v7[v25], a1 + v26, v27);
    v28 = *(v24 + 24);
    v29 = objc_autoreleasePoolPush();
    sub_100DE1148(&v7[v28]);
    objc_autoreleasePoolPop(v29);
    *v7 = v13;
    (*(*(v24 - 8) + 56))(v7, 0, 1, v24);
    swift_beginAccess();
    v30 = v13;
    sub_1001DDF1C(v7, v32);
    swift_endAccess();
  }
}

void sub_100D458E8(uint64_t *a1)
{
  v4 = sub_1000BC4D4(&qword_101699868, &qword_101391FF8);
  __chkstk_darwin(v4 - 8);
  v6 = &v32 - v5;
  v7 = *a1;
  v8 = a1[1];
  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v9 != 2 || *(v7 + 16) == *(v7 + 24))
    {
      goto LABEL_12;
    }
  }

  else if (v9)
  {
    if (v7 == v7 >> 32)
    {
LABEL_12:
      sub_100D48968();
      swift_allocError();
      *v17 = 3;
      swift_willThrow();
      return;
    }
  }

  else if ((v8 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

  v10 = objc_autoreleasePoolPush();
  sub_101122288(a1);
  if (v2)
  {
    objc_autoreleasePoolPop(v10);
    __break(1u);
  }

  else
  {
    v12 = v11;
    objc_autoreleasePoolPop(v10);
    v13 = [v12 recordID];
    swift_beginAccess();
    v14 = *(v1 + 24);
    if ((v14 & 0xC000000000000001) != 0)
    {

      v15 = v13;
      v16 = __CocoaDictionary.contains(_:)();

      if (v16)
      {
LABEL_17:
        sub_100D48968();
        swift_allocError();
        *v22 = 4;
        swift_willThrow();

        return;
      }
    }

    else if (*(v14 + 16))
    {

      sub_100771FF8(v13);
      v19 = v18;

      if (v19)
      {
        goto LABEL_17;
      }
    }

    swift_beginAccess();
    if (*(*(v1 + 16) + 16))
    {

      sub_100771FF8(v13);
      v21 = v20;

      if (v21)
      {
        goto LABEL_17;
      }
    }

    v23 = type metadata accessor for CloudKitChangeSet.TombstoneInfo(0);
    v24 = *(v23 + 20);
    v25 = *(type metadata accessor for SharedBeaconRecord(0) + 20);
    v26 = type metadata accessor for UUID();
    (*(*(v26 - 8) + 16))(&v6[v24], a1 + v25, v26);
    v27 = *(v23 + 24);
    v28 = qword_101695470;
    v29 = v12;
    if (v28 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for URL();
    v31 = sub_1000076D4(v30, qword_10177CD50);
    (*(*(v30 - 8) + 16))(&v6[v27], v31, v30);
    *v6 = v29;
    (*(*(v23 - 8) + 56))(v6, 0, 1, v23);
    swift_beginAccess();
    sub_1001DDF1C(v6, v13);
    swift_endAccess();
  }
}

void sub_100D45CB0(uint64_t *a1)
{
  v4 = sub_1000BC4D4(&qword_101699868, &qword_101391FF8);
  __chkstk_darwin(v4 - 8);
  v6 = &v32 - v5;
  v7 = *a1;
  v8 = a1[1];
  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v9 != 2 || *(v7 + 16) == *(v7 + 24))
    {
      goto LABEL_12;
    }
  }

  else if (v9)
  {
    if (v7 == v7 >> 32)
    {
LABEL_12:
      sub_100D48968();
      swift_allocError();
      *v17 = 3;
      swift_willThrow();
      return;
    }
  }

  else if ((v8 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

  v10 = objc_autoreleasePoolPush();
  sub_1011224E4(a1);
  if (v2)
  {
    objc_autoreleasePoolPop(v10);
    __break(1u);
  }

  else
  {
    v12 = v11;
    objc_autoreleasePoolPop(v10);
    v13 = [v12 recordID];
    swift_beginAccess();
    v14 = *(v1 + 24);
    if ((v14 & 0xC000000000000001) != 0)
    {

      v15 = v13;
      v16 = __CocoaDictionary.contains(_:)();

      if (v16)
      {
LABEL_17:
        sub_100D48968();
        swift_allocError();
        *v22 = 4;
        swift_willThrow();

        return;
      }
    }

    else if (*(v14 + 16))
    {

      sub_100771FF8(v13);
      v19 = v18;

      if (v19)
      {
        goto LABEL_17;
      }
    }

    swift_beginAccess();
    if (*(*(v1 + 16) + 16))
    {

      sub_100771FF8(v13);
      v21 = v20;

      if (v21)
      {
        goto LABEL_17;
      }
    }

    v23 = type metadata accessor for CloudKitChangeSet.TombstoneInfo(0);
    v24 = *(v23 + 20);
    v25 = *(type metadata accessor for MemberSharingCircle(0) + 20);
    v26 = type metadata accessor for UUID();
    (*(*(v26 - 8) + 16))(&v6[v24], a1 + v25, v26);
    v27 = *(v23 + 24);
    v28 = qword_101694680;
    v29 = v12;
    if (v28 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for URL();
    v31 = sub_1000076D4(v30, qword_10177AC60);
    (*(*(v30 - 8) + 16))(&v6[v27], v31, v30);
    *v6 = v29;
    (*(*(v23 - 8) + 56))(v6, 0, 1, v23);
    swift_beginAccess();
    sub_1001DDF1C(v6, v13);
    swift_endAccess();
  }
}

void sub_100D46078(uint64_t *a1)
{
  v4 = sub_1000BC4D4(&qword_101699868, &qword_101391FF8);
  __chkstk_darwin(v4 - 8);
  v6 = &v32 - v5;
  v7 = *a1;
  v8 = a1[1];
  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v9 != 2 || *(v7 + 16) == *(v7 + 24))
    {
      goto LABEL_12;
    }
  }

  else if (v9)
  {
    if (v7 == v7 >> 32)
    {
LABEL_12:
      sub_100D48968();
      swift_allocError();
      *v17 = 3;
      swift_willThrow();
      return;
    }
  }

  else if ((v8 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

  v10 = objc_autoreleasePoolPush();
  sub_101121880(a1);
  if (v2)
  {
    objc_autoreleasePoolPop(v10);
    __break(1u);
  }

  else
  {
    v12 = v11;
    objc_autoreleasePoolPop(v10);
    v13 = [v12 recordID];
    swift_beginAccess();
    v14 = *(v1 + 24);
    if ((v14 & 0xC000000000000001) != 0)
    {

      v15 = v13;
      v16 = __CocoaDictionary.contains(_:)();

      if (v16)
      {
LABEL_17:
        sub_100D48968();
        swift_allocError();
        *v22 = 4;
        swift_willThrow();

        return;
      }
    }

    else if (*(v14 + 16))
    {

      sub_100771FF8(v13);
      v19 = v18;

      if (v19)
      {
        goto LABEL_17;
      }
    }

    swift_beginAccess();
    if (*(*(v1 + 16) + 16))
    {

      sub_100771FF8(v13);
      v21 = v20;

      if (v21)
      {
        goto LABEL_17;
      }
    }

    v23 = type metadata accessor for CloudKitChangeSet.TombstoneInfo(0);
    v24 = *(v23 + 20);
    v25 = *(type metadata accessor for MemberPeerTrust(0) + 20);
    v26 = type metadata accessor for UUID();
    (*(*(v26 - 8) + 16))(&v6[v24], a1 + v25, v26);
    v27 = *(v23 + 24);
    v28 = qword_101694F30;
    v29 = v12;
    if (v28 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for URL();
    v31 = sub_1000076D4(v30, qword_10177C1D0);
    (*(*(v30 - 8) + 16))(&v6[v27], v31, v30);
    *v6 = v29;
    (*(*(v23 - 8) + 56))(v6, 0, 1, v23);
    swift_beginAccess();
    sub_1001DDF1C(v6, v13);
    swift_endAccess();
  }
}

void sub_100D46440(uint64_t *a1)
{
  v4 = sub_1000BC4D4(&qword_101699868, &qword_101391FF8);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - v5;
  v7 = *a1;
  v8 = a1[1];
  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v9 != 2 || *(v7 + 16) == *(v7 + 24))
    {
      goto LABEL_12;
    }
  }

  else if (v9)
  {
    if (v7 == v7 >> 32)
    {
LABEL_12:
      sub_100D48968();
      swift_allocError();
      *v17 = 3;
      swift_willThrow();
      return;
    }
  }

  else if ((v8 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

  v10 = objc_autoreleasePoolPush();
  sub_10112299C(a1);
  if (v2)
  {
    objc_autoreleasePoolPop(v10);
    __break(1u);
  }

  else
  {
    v12 = v11;
    objc_autoreleasePoolPop(v10);
    v13 = [v12 recordID];
    swift_beginAccess();
    v14 = *(v1 + 24);
    if ((v14 & 0xC000000000000001) != 0)
    {

      v15 = v13;
      v16 = __CocoaDictionary.contains(_:)();

      if (v16)
      {
LABEL_17:
        sub_100D48968();
        swift_allocError();
        *v22 = 4;
        swift_willThrow();

        return;
      }
    }

    else if (*(v14 + 16))
    {

      sub_100771FF8(v13);
      v19 = v18;

      if (v19)
      {
        goto LABEL_17;
      }
    }

    swift_beginAccess();
    v31 = v1;
    if (*(*(v1 + 16) + 16))
    {

      sub_100771FF8(v13);
      v21 = v20;

      if (v21)
      {
        goto LABEL_17;
      }
    }

    v23 = type metadata accessor for CloudKitChangeSet.TombstoneInfo(0);
    v24 = *(v23 + 20);
    v25 = *(type metadata accessor for NotifyWhenFoundRecord(0) + 20);
    v26 = type metadata accessor for UUID();
    (*(*(v26 - 8) + 16))(&v6[v24], a1 + v25, v26);
    v27 = qword_1016947A0;
    v28 = v12;
    if (v27 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for URL();
    sub_1000076D4(v29, qword_10177AEC8);
    UUID.uuidString.getter();
    URL.appendingPathComponent(_:isDirectory:)();

    *v6 = v28;
    (*(*(v23 - 8) + 56))(v6, 0, 1, v23);
    swift_beginAccess();
    sub_1001DDF1C(v6, v13);
    swift_endAccess();
  }
}

void sub_100D467FC(uint64_t *a1)
{
  v4 = sub_1000BC4D4(&qword_101699868, &qword_101391FF8);
  __chkstk_darwin(v4 - 8);
  v6 = &v32 - v5;
  v7 = *a1;
  v8 = a1[1];
  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v9 != 2 || *(v7 + 16) == *(v7 + 24))
    {
      goto LABEL_12;
    }
  }

  else if (v9)
  {
    if (v7 == v7 >> 32)
    {
LABEL_12:
      sub_100D48968();
      swift_allocError();
      *v17 = 3;
      swift_willThrow();
      return;
    }
  }

  else if ((v8 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

  v10 = objc_autoreleasePoolPush();
  sub_101121820(a1);
  if (v2)
  {
    objc_autoreleasePoolPop(v10);
    __break(1u);
  }

  else
  {
    v12 = v11;
    objc_autoreleasePoolPop(v10);
    v13 = [v12 recordID];
    swift_beginAccess();
    v14 = *(v1 + 24);
    if ((v14 & 0xC000000000000001) != 0)
    {

      v15 = v13;
      v16 = __CocoaDictionary.contains(_:)();

      if (v16)
      {
LABEL_17:
        sub_100D48968();
        swift_allocError();
        *v22 = 4;
        swift_willThrow();

        return;
      }
    }

    else if (*(v14 + 16))
    {

      sub_100771FF8(v13);
      v19 = v18;

      if (v19)
      {
        goto LABEL_17;
      }
    }

    swift_beginAccess();
    if (*(*(v1 + 16) + 16))
    {

      sub_100771FF8(v13);
      v21 = v20;

      if (v21)
      {
        goto LABEL_17;
      }
    }

    v23 = type metadata accessor for CloudKitChangeSet.TombstoneInfo(0);
    v24 = *(v23 + 20);
    v25 = *(type metadata accessor for OwnerPeerTrust(0) + 20);
    v26 = type metadata accessor for UUID();
    (*(*(v26 - 8) + 16))(&v6[v24], a1 + v25, v26);
    v27 = *(v23 + 24);
    v28 = qword_101694568;
    v29 = v12;
    if (v28 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for URL();
    v31 = sub_1000076D4(v30, qword_10177A918);
    (*(*(v30 - 8) + 16))(&v6[v27], v31, v30);
    *v6 = v29;
    (*(*(v23 - 8) + 56))(v6, 0, 1, v23);
    swift_beginAccess();
    sub_1001DDF1C(v6, v13);
    swift_endAccess();
  }
}

uint64_t sub_100D46BC4(id *a1, uint64_t a2)
{
  v5 = type metadata accessor for UUID();
  v119 = *(v5 - 8);
  __chkstk_darwin(v5);
  v109 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v8 = __chkstk_darwin(v7 - 8);
  v113 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v111 = &v106 - v10;
  v116 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  __chkstk_darwin(v116);
  v115 = &v106 - v11;
  v114 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  v12 = *(v114 - 8);
  __chkstk_darwin(v114);
  v107 = (&v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v112 = sub_1000BC4D4(&unk_1016AF890, &qword_1013926D0);
  __chkstk_darwin(v112);
  v110 = (&v106 - v14);
  v15 = sub_1000BC4D4(&qword_1016CACC0, &qword_1013E4BE0);
  __chkstk_darwin(v15);
  v17 = &v106 - v16;
  v18 = type metadata accessor for SharedBeaconRecord(0);
  __chkstk_darwin(v18);
  v20 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100D4A580(a2, v20, type metadata accessor for SharedBeaconRecord);
  v21 = [*a1 encryptedValues];
  ObjectType = swift_getObjectType();
  v23 = sub_100D42DB8(&qword_1016984A0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v120 = v2;
  v117 = v5;
  v24 = ObjectType;
  v108 = v23;
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v25 = UUID.uuidString.getter();
    *(&v122 + 1) = &type metadata for String;
    v123 = &protocol witness table for String;
    *&v121 = v25;
    *(&v121 + 1) = v26;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v27 = v18[7];
  v28 = v120;
  v29 = v120 + v27;
  v30 = *(v120 + v27);
  v31 = &v20[v27];
  v33 = *(v31 + 1);
  v32 = *(v31 + 2);
  if (v30 != *v31 || (*(v29 + 8) != v33 || *(v29 + 16) != v32) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    *(&v122 + 1) = &type metadata for String;
    v123 = &protocol witness table for String;
    *&v121 = v33;
    *(&v121 + 1) = v32;

    CKRecordKeyValueSetting.subscript.setter();
  }

  v34 = v18[8];
  v35 = *(v28 + v34);
  v36 = *(v28 + v34 + 8);
  v37 = &v20[v34];
  v39 = *v37;
  v38 = *(v37 + 1);
  if ((v35 != *v37 || v36 != v38) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    *(&v122 + 1) = &type metadata for String;
    v123 = &protocol witness table for String;
    *&v121 = v39;
    *(&v121 + 1) = v38;

    v28 = v120;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v40 = v18[9];
  v41 = *(v28 + v40);
  v42 = *(v28 + v40 + 8);
  v43 = &v20[v40];
  v45 = *v43;
  v44 = *(v43 + 1);
  if ((v41 != *v43 || v42 != v44) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    *(&v122 + 1) = &type metadata for String;
    v123 = &protocol witness table for String;
    *&v121 = v45;
    *(&v121 + 1) = v44;

    CKRecordKeyValueSetting.subscript.setter();
  }

  v46 = v18[10];
  v47 = *(v28 + v46);
  v48 = *(v28 + v46 + 8);
  v49 = &v20[v46];
  v51 = *v49;
  v50 = *(v49 + 1);
  if ((v47 != *v49 || v48 != v50) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    *(&v122 + 1) = &type metadata for String;
    v123 = &protocol witness table for String;
    *&v121 = v51;
    *(&v121 + 1) = v50;

    CKRecordKeyValueSetting.subscript.setter();
  }

  v52 = v18[11];
  v53 = *(v28 + v52);
  v54 = *&v20[v52];
  if (v53 != v54)
  {
    *(&v122 + 1) = &type metadata for Int;
    v123 = &protocol witness table for Int;
    *&v121 = v54;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v55 = v18[12];
  v56 = *(v28 + v55);
  v57 = *&v20[v55];
  if (v56 != v57)
  {
    *(&v122 + 1) = &type metadata for Int;
    v123 = &protocol witness table for Int;
    *&v121 = v57;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v58 = v18[15];
  v59 = *(v28 + v58);
  v60 = *&v20[v58];
  if (v59 != v60)
  {
    *(&v122 + 1) = &type metadata for Int;
    v123 = &protocol witness table for Int;
    *&v121 = v60;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v61 = v18[13];
  v62 = *(v28 + v61);
  v63 = v20[v61];
  if (v62 != v63)
  {
    *(&v122 + 1) = &type metadata for Bool;
    v123 = &protocol witness table for Bool;
    LOBYTE(v121) = v63;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v64 = v18[16];
  v65 = *(v28 + v64);
  v66 = v20[v64];
  if (v65 != v66)
  {
    *(&v122 + 1) = &type metadata for Int;
    v123 = &protocol witness table for Int;
    *&v121 = v66;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v67 = v18[17];
  v68 = *(v28 + v67);
  v69 = *&v20[v67];
  if (v68 != v69)
  {
    *(&v122 + 1) = &type metadata for UInt64;
    v123 = &protocol witness table for UInt64;
    *&v121 = v69;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v70 = v18[18];
  v71 = type metadata accessor for Date();
  sub_100D42DB8(&qword_101698290, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    *(&v122 + 1) = v71;
    v123 = &protocol witness table for Date;
    v72 = sub_1000280DC(&v121);
    (*(*(v71 - 8) + 16))(v72, &v20[v70], v71);
    CKRecordKeyValueSetting.subscript.setter();
  }

  v118 = v24;
  v73 = v18[20];
  v74 = *(v15 + 48);
  sub_1000D2A70(v120 + v73, v17, &unk_1016AF890, &qword_1013926D0);
  sub_1000D2A70(&v20[v73], &v17[v74], &unk_1016AF890, &qword_1013926D0);
  v75 = *(v12 + 48);
  v76 = v114;
  if (v75(v17, 1, v114) == 1)
  {
    if (v75(&v17[v74], 1, v76) == 1)
    {
      sub_10000B3A8(v17, &unk_1016AF890, &qword_1013926D0);
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  v77 = v110;
  sub_1000D2A70(v17, v110, &unk_1016AF890, &qword_1013926D0);
  if (v75(&v17[v74], 1, v76) == 1)
  {
    sub_100D4A3EC(v77, type metadata accessor for SharedBeaconRecord.PropertyListContent);
LABEL_39:
    sub_10000B3A8(v17, &qword_1016CACC0, &qword_1013E4BE0);
LABEL_40:
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_100D4A21C();
    v80 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v82 = v81;

    *(&v122 + 1) = &type metadata for Data;
    v123 = &protocol witness table for Data;
    *&v121 = v80;
    *(&v121 + 1) = v82;
    sub_100017D5C(v80, v82);
    CKRecordKeyValueSetting.subscript.setter();
    sub_100016590(v80, v82);
    goto LABEL_42;
  }

  v78 = v107;
  sub_100D4A2D4(&v17[v74], v107, type metadata accessor for SharedBeaconRecord.PropertyListContent);
  v79 = sub_1011DBB88(v77, v78);
  sub_100D4A3EC(v78, type metadata accessor for SharedBeaconRecord.PropertyListContent);
  sub_100D4A3EC(v77, type metadata accessor for SharedBeaconRecord.PropertyListContent);
  sub_10000B3A8(v17, &unk_1016AF890, &qword_1013926D0);
  if (!v79)
  {
    goto LABEL_40;
  }

LABEL_42:
  v83 = v18[19];
  v84 = v115;
  v85 = *(v116 + 48);
  sub_1000D2A70(v120 + v83, v115, &qword_1016980D0, &unk_10138F3B0);
  sub_1000D2A70(&v20[v83], v84 + v85, &qword_1016980D0, &unk_10138F3B0);
  v86 = *(v119 + 48);
  v87 = v117;
  v88 = v86(v84, 1, v117);
  v116 = v21;
  if (v88 == 1)
  {
    v89 = v86(v84 + v85, 1, v87) == 1;
    v90 = v84;
    if (v89)
    {
      sub_10000B3A8(v84, &qword_1016980D0, &unk_10138F3B0);
      goto LABEL_53;
    }
  }

  else
  {
    v91 = v111;
    sub_1000D2A70(v84, v111, &qword_1016980D0, &unk_10138F3B0);
    v92 = v86(v84 + v85, 1, v87);
    v93 = v84;
    if (v92 != 1)
    {
      v103 = v119;
      v104 = v109;
      (*(v119 + 32))(v109, v93 + v85, v87);
      LODWORD(v114) = dispatch thunk of static Equatable.== infix(_:_:)();
      v105 = *(v103 + 8);
      v105(v104, v87);
      v105(v91, v87);
      sub_10000B3A8(v115, &qword_1016980D0, &unk_10138F3B0);
      if (v114)
      {
        goto LABEL_53;
      }

      goto LABEL_49;
    }

    (*(v119 + 8))(v91, v87);
    v90 = v84;
  }

  sub_10000B3A8(v90, &qword_1016AF880, &unk_10138CE20);
LABEL_49:
  v94 = &v20[v83];
  v95 = v113;
  sub_1000D2A70(v94, v113, &qword_1016980D0, &unk_10138F3B0);
  v96 = v117;
  if (v86(v95, 1, v117) == 1)
  {
    sub_10000B3A8(v95, &qword_1016980D0, &unk_10138F3B0);
    v121 = 0u;
    v122 = 0u;
    v123 = 0;
  }

  else
  {
    v97 = UUID.uuidString.getter();
    *(&v122 + 1) = &type metadata for String;
    v123 = &protocol witness table for String;
    *&v121 = v97;
    *(&v121 + 1) = v98;
    (*(v119 + 8))(v95, v96);
  }

  CKRecordKeyValueSetting.subscript.setter();
LABEL_53:
  v99 = v18[14];
  v100 = *(v120 + v99);
  v101 = v20[v99];
  if (v100 == 3)
  {
    if (v101 != 3)
    {
      goto LABEL_59;
    }
  }

  else if (v100 != v101)
  {
    if (v101 == 3)
    {
      v123 = 0;
      v121 = 0u;
      v122 = 0u;
LABEL_60:
      CKRecordKeyValueSetting.subscript.setter();
      goto LABEL_61;
    }

LABEL_59:
    *(&v122 + 1) = &type metadata for Int;
    v123 = &protocol witness table for Int;
    *&v121 = v101;
    goto LABEL_60;
  }

LABEL_61:
  swift_unknownObjectRelease();
  return sub_100D4A3EC(v20, type metadata accessor for SharedBeaconRecord);
}

void sub_100D47A74(char a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  _StringGuts.grow(_:)(41);
  v7._countAndFlagsBits = 0x286567617373654DLL;
  v7._object = 0xEE00203A65707974;
  String.append(_:)(v7);
  _print_unlocked<A, B>(_:_:)();
  v8._countAndFlagsBits = 0x6F6973726576202CLL;
  v8._object = 0xEB00000000203A6ELL;
  String.append(_:)(v8);
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0x3A7365747962202CLL;
  v10._object = 0xE900000000000020;
  String.append(_:)(v10);
  v11 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v11 != 2 || !__OFSUB__(*(a3 + 24), *(a3 + 16)))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (!v11)
  {
    goto LABEL_9;
  }

  if (!__OFSUB__(HIDWORD(a3), a3))
  {
LABEL_9:
    v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v12);

    v13._countAndFlagsBits = 41;
    v13._object = 0xE100000000000000;
    String.append(_:)(v13);
    return;
  }

  __break(1u);
}

Swift::Int sub_100D47C24(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000BC4D4(&unk_1016C2D40, &unk_1013F7630);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_100FE8904(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_100D47E70(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000BC4D4(&qword_1016C2F00, &qword_1013E4BD8);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_100008BB8(0, &unk_1016BBFC0, CKRecordZoneID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_100008BB8(0, &qword_1016BA500, CKFetchRecordZoneChangesConfiguration_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_100FF7B08(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptyDictionarySingleton;
  }

  return v2;
}

void *sub_100D480BC(void *result, uint64_t a2, void *a3, uint64_t (*a4)(char *, void))
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

    v8 = sub_100D49E64(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_100D4814C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_100D3AC6C(v2, v3);
}

uint64_t sub_100D481F4()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 31) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  v7 = v0 + v4;
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v10 = *(v0 + v5);
  v11 = *v7;
  v12 = swift_task_alloc();
  *(v1 + 16) = v12;
  *v12 = v1;
  v12[1] = sub_100014744;

  return sub_100D36B7C(v6, v0 + v3, v11, v8, v9, v10);
}

uint64_t sub_100D4832C()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v4);
  v7 = *(v0 + v5 + 8);
  v8 = *(v0 + v5 + 16);
  v9 = *(v0 + v5);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_100014744;

  return sub_100D36E28(v0 + v3, v6, v9, v7, v8);
}

uint64_t sub_100D48470()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, ((v4 + 31) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_100D4855C()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 31) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  v7 = v0 + v4;
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v10 = *(v0 + v5);
  v11 = *v7;
  v12 = swift_task_alloc();
  *(v1 + 16) = v12;
  *v12 = v1;
  v12[1] = sub_100014744;

  return sub_100D32E7C(v6, v0 + v3, v11, v8, v9, v10);
}

uint64_t sub_100D48694()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 31) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v4;
  v7 = *(v0 + v5);
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = *v6;
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_100014744;

  return sub_100D33120(v0 + v3, v10, v8, v9, v7);
}

unint64_t sub_100D487D8()
{
  result = qword_1016BA4D0;
  if (!qword_1016BA4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA4D0);
  }

  return result;
}

void sub_100D4882C()
{
  v1 = *(v0 + 16);
  v2[2] = *(v0 + 24);
  sub_100D44190(v1, sub_100D48960, v2);
}

uint64_t sub_100D4887C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_100D3688C(a1, a2, v2);
}

unint64_t sub_100D48968()
{
  result = qword_1016BA4D8;
  if (!qword_1016BA4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA4D8);
  }

  return result;
}

unint64_t sub_100D489BC()
{
  result = qword_1016BC2F0;
  if (!qword_1016BC2F0)
  {
    sub_1000BC580(&qword_1016BC2D0, &unk_1013E4B00);
    sub_100D42DB8(&qword_101698330, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    sub_100D48A7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BC2F0);
  }

  return result;
}

unint64_t sub_100D48A7C()
{
  result = qword_1016BC300;
  if (!qword_1016BC300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BC300);
  }

  return result;
}

uint64_t sub_100D48AD0()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v0 + 24);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100014744;

  return sub_100D2FA90(v4, v8, v5, v6, v0 + v3, v7);
}

uint64_t sub_100D48BFC()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v9 = *(v0 + 24);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_100014744;

  return sub_100D30B30(v4, v9, v5, v6, v7, v8, v0 + v3);
}

unint64_t sub_100D48DC8()
{
  result = qword_1016BA4E0;
  if (!qword_1016BA4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA4E0);
  }

  return result;
}

uint64_t sub_100D48E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[3] = a3;
  v5[4] = a4;
  v5[2] = a1;
  v6 = type metadata accessor for UUID();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();

  return _swift_task_switch(sub_100D48EE0, v4, 0);
}

uint64_t sub_100D48EE0()
{
  v22 = v0;
  if (qword_101694E20 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177BF80);
  (*(v2 + 16))(v1, v4, v3);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[5];
  if (v8)
  {
    v19 = v0[3];
    v20 = v0[4];
    v12 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v12 = 136446723;
    sub_100D42DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_1000136BC(v13, v15, &v21);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2160;
    *(v12 + 14) = 1752392040;
    *(v12 + 22) = 2081;
    *(v12 + 24) = sub_1000136BC(v19, v20, &v21);
    _os_log_impl(&_mh_execute_header, v6, v7, "Message %{public}s delivered successfully from %{private,mask.hash}s.", v12, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_100D49174(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 72) = v11;
  *(v9 + 80) = v8;
  *(v9 + 56) = a7;
  *(v9 + 64) = a8;
  *(v9 + 40) = a5;
  *(v9 + 48) = a6;
  *(v9 + 88) = a4;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  return _swift_task_switch(sub_100D491AC, v8, 0);
}

uint64_t sub_100D491AC()
{
  v35 = v0;
  if (qword_101694E20 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177BF80);
  sub_100017D5C(v2, v1);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  sub_100016590(v2, v1);

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 48);
    v6 = *(v0 + 56);
    v8 = *(v0 + 40);
    v32 = *(v0 + 24);
    v33 = *(v0 + 32);
    v9 = *(v0 + 88);
    v10 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v10 = 136446723;
    sub_100D47A74(v9, v8, v7, v6, &type metadata for ItemSharingCrossAccountMessageType);
    v13 = sub_1000136BC(v11, v12, &v34);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2160;
    *(v10 + 14) = 1752392040;
    *(v10 + 22) = 2081;
    *(v10 + 24) = sub_1000136BC(v32, v33, &v34);
    _os_log_impl(&_mh_execute_header, v4, v5, "Message %{public}s received from %{private,mask.hash}s.", v10, 0x20u);
    swift_arrayDestroy();
  }

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v34 = v17;
    *v16 = 136315138;
    type metadata accessor for Transaction();
    result = static Transaction.current.getter();
    if (!result)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = result;
    sub_100D42DB8(&qword_1016BA4E8, 255, &type metadata accessor for Transaction, &protocol conformance descriptor for Transaction);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;

    v22 = sub_1000136BC(v19, v21, &v34);

    *(v16 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v14, v15, "txn: %s", v16, 0xCu);
    sub_100007BAC(v17);
  }

  v23 = *(v0 + 72);
  v25 = *(v0 + 56);
  v24 = *(v0 + 64);
  v27 = *(v0 + 40);
  v26 = *(v0 + 48);
  v28 = *(v0 + 88);
  sub_100D26C0C(v29, v30);
  sub_1005968A4(v28, v27, v26, v25, v24, v23);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_100D49540()
{
  v1 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v17 = (*(v1 + 80) + 17) & ~*(v1 + 80);
  v2 = *(v1 + 64);
  v3 = *(type metadata accessor for UUID() - 8);
  v16 = (v17 + v2 + *(v3 + 80)) & ~*(v3 + 80);
  v4 = (*(v3 + 64) + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 31) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v4;
  v14 = *(v6 + 16);
  v15 = *(v6 + 8);
  v7 = (v0 + v5);
  v12 = v7[1];
  v13 = *v7;
  v11 = *v6;
  v8 = *(v0 + 16);
  v9 = swift_task_alloc();
  *(v18 + 16) = v9;
  *v9 = v18;
  v9[1] = sub_100014744;

  return sub_100D2BA20(v8, v0 + v17, v0 + v16, v11, v15, v14, v13, v12);
}

uint64_t sub_100D49820()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100190C20(v2, v3, v4);
}

uint64_t sub_100D498C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100190E0C(a1, v4, v5, v6);
}

uint64_t sub_100D49978()
{
  v2 = *(sub_1000BC4D4(&qword_10169EF90, &unk_10139FCF0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_1000BC4D4(&qword_10169EF88, &unk_1013E4B70) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v21 = *(v0 + 16);
  v11 = v0 + v8;
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = (v0 + v9);
  v15 = *v14;
  v16 = v14[1];
  v17 = *(v0 + v10);
  v18 = swift_task_alloc();
  *(v1 + 16) = v18;
  *v18 = v1;
  v18[1] = sub_100014650;

  return sub_1003A0B74(v21, v0 + v3, v0 + v6, v12, v13, v15, v16, v17);
}

unint64_t sub_100D49B80()
{
  result = qword_1016BA4F8;
  if (!qword_1016BA4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA4F8);
  }

  return result;
}

uint64_t sub_100D49BD4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, ((v4 + 31) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_100D49C94()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v4);
  v7 = *(v0 + v5 + 8);
  v8 = *(v0 + v5 + 16);
  v9 = *(v0 + v5);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_100014744;

  return sub_100D3BDBC(v0 + v3, v6, v9, v7, v8);
}

uint64_t sub_100D49E10(uint64_t a1, unsigned __int8 a2)
{
  v2 = a2;
  type metadata accessor for OwnerPeerTrust(0);
  return static UUID.== infix(_:_:)() & (v2 == 2);
}

uint64_t sub_100D49E64(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(char *, void))
{
  v25 = a2;
  v33 = a4;
  v26 = a1;
  v32 = type metadata accessor for UUID();
  result = __chkstk_darwin(v32);
  v30 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v6;
  v8 = 0;
  v34 = a3;
  v11 = a3[8];
  v10 = a3 + 8;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v29 = v6 + 16;
  v27 = 0;
  v28 = v6 + 8;
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v35 = (v14 - 1) & v14;
LABEL_11:
    v36 = v16 | (v8 << 6);
    v19 = v34;
    v21 = v30;
    v20 = v31;
    v22 = v36;
    v23 = v32;
    (*(v31 + 16))(v30, v34[6] + *(v31 + 72) * v36, v32);
    LOBYTE(v19) = v33(v21, *(v19[7] + v22));
    result = (*(v20 + 8))(v21, v23);
    v14 = v35;
    if (v19)
    {
      *(v26 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
        return sub_10061C234(v26, v25, v27, v34);
      }
    }
  }

  v17 = v8;
  while (1)
  {
    v8 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v8 >= v15)
    {
      return sub_10061C234(v26, v25, v27, v34);
    }

    v18 = v10[v8];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v35 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_100D4A09C(uint64_t a1, uint64_t (*a2)(char *, void))
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
    result = sub_100D49E64(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_100D480BC(v10, v6, v4, a2);

  if (!v2)
  {
    return v11;
  }

  return result;
}

unint64_t sub_100D4A21C()
{
  result = qword_1016BA508;
  if (!qword_1016BA508)
  {
    sub_1000BC580(&unk_1016AF890, &qword_1013926D0);
    sub_100D42DB8(&qword_1016BA510, 255, type metadata accessor for SharedBeaconRecord.PropertyListContent, &unk_10140B9FC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA508);
  }

  return result;
}

uint64_t sub_100D4A2D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100D4A33C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100D2AA74(a1, a2);
}

uint64_t sub_100D4A3EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100D4A44C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_100D2947C(a1, a2, v2);
}

uint64_t sub_100D4A4F8(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_100D4A580(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100D4A5FC()
{
  result = qword_1016BA540;
  if (!qword_1016BA540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA540);
  }

  return result;
}

uint64_t sub_100D4A674()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177BFB0);
  v1 = sub_1000076D4(v0, qword_10177BFB0);
  if (qword_101694E38 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177BFC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100D4A73C()
{
  v1 = *v0;
  v2 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v7 = sub_100D4F760(&qword_1016BA700, v6, type metadata accessor for FamilyCircleService, &unk_1013E4E28);
  v8 = swift_allocObject();
  v8[2] = v0;
  v8[3] = v7;
  v8[4] = v0;
  v8[5] = v1;
  swift_retain_n();
  sub_10025EDD4(0, 0, v4, &unk_1013E4EA0, v8);
}

uint64_t sub_100D4A8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = sub_1000BC4D4(&qword_1016BA728, &qword_1013E4EA8);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_1016BA730, &unk_1013E4EB0);
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v7 = swift_task_alloc();
  v4[11] = v7;
  *v7 = v4;
  v7[1] = sub_100D4AA14;

  return sub_100D4AFA4();
}

uint64_t sub_100D4AA14(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 32);
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v5 = sub_100D4ACEC;
  }

  else
  {
    v5 = sub_100D4AB40;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100D4AB40()
{
  type metadata accessor for Transaction();
  result = static Transaction.current.getter();
  if (result)
  {
    v2 = result;
    v3 = *(v0[4] + 128);
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = v0[9];
      v16 = *(v5 + 16);
      v6 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v15 = *(v5 + 72);
      v7 = (v0[6] + 8);
      v17 = v2;
      v8 = (v5 + 8);

      do
      {
        v9 = v0[12];
        v10 = v0[10];
        v12 = v0[7];
        v11 = v0[8];
        v13 = v0[5];
        v16(v10, v6, v11);
        v0[2] = v17;
        v0[3] = v9;

        AsyncStream.Continuation.yield(_:)();
        (*v7)(v12, v13);
        (*v8)(v10, v11);
        v6 += v15;
        --v4;
      }

      while (v4);
    }

    v14 = v0[1];

    return v14();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100D4ACEC()
{
  if (qword_101694E30 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177BFB0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    v6 = _convertErrorToNSError(_:)();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error fetching members: %{public}@", v4, 0xCu);
    sub_100288C6C(v5);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100D4AE8C()
{
  v1 = v0;
  if (qword_101694E30 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177BFB0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Flushing cached familyMembers", v5, 2u);
  }

  *(v1 + 152) = 0;

  swift_beginAccess();
  *(v1 + 160) = _swiftEmptyDictionarySingleton;
}

uint64_t sub_100D4AFC4()
{
  v1 = *(v0[19] + 152);
  if (v1)
  {
    v2 = qword_101694E40;

    if (v2 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177BFE0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Using cached FamilyCircle", v6, 2u);
    }

    v7 = v0[1];

    return v7(v1);
  }

  else
  {
    v9 = [objc_allocWithZone(FAFetchFamilyCircleRequest) init];
    v0[20] = v9;
    [v9 setCachePolicy:1];
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_100D4B20C;
    v10 = swift_continuation_init();
    v0[17] = sub_1000BC4D4(&qword_1016BA720, &unk_1013E4E88);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100D4B740;
    v0[13] = &unk_10164F808;
    v0[14] = v10;
    [v9 startRequestWithCompletionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_100D4B20C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  v3 = *(v1 + 152);
  if (v2)
  {
    v4 = sub_100D4B6D0;
  }

  else
  {
    v4 = sub_100D4B32C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100D4B32C()
{
  v1 = v0[18];
  v2 = [v1 members];
  sub_100D4F6A8();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
LABEL_33:
    v47 = v3 & 0xFFFFFFFFFFFFFF8;
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_34:
    v46 = _swiftEmptyArrayStorage;
    goto LABEL_35;
  }

  v47 = v3 & 0xFFFFFFFFFFFFFF8;
  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_34;
  }

LABEL_3:
  v5 = 0;
  v45 = v1;
  v46 = _swiftEmptyArrayStorage;
  do
  {
    v6 = v5;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *(v47 + 16))
        {
          goto LABEL_32;
        }

        v7 = *(v3 + 8 * v6 + 32);
      }

      v8 = v7;
      v5 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v9 = [v7 altDSID];
      if (v9)
      {
        break;
      }

LABEL_6:

      ++v6;
      if (v5 == v4)
      {
        v1 = v45;
        goto LABEL_35;
      }
    }

    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = v12;

    v13 = [v8 appleID];
    if (!v13)
    {

      goto LABEL_6;
    }

    v14 = v13;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v16;

    v42 = [v8 isMe];
    v17 = [v8 firstName];
    if (v17)
    {
      v18 = v17;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v20;
      v41 = v19;
    }

    else
    {
      v40 = 0;
      v41 = 0;
    }

    v21 = [v8 lastName];
    v44 = v15;
    if (v21)
    {
      v22 = v21;
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v24;
      v39 = v23;
    }

    else
    {
      v38 = 0;
      v39 = 0;
    }

    v25 = [v8 fullName];
    if (v25)
    {
      v26 = v25;
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;
    }

    else
    {

      v37 = 0;
      v28 = 0;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v46 = sub_100A5E3E4(0, *(v46 + 2) + 1, 1, v46);
    }

    v30 = *(v46 + 2);
    v29 = *(v46 + 3);
    if (v30 >= v29 >> 1)
    {
      v46 = sub_100A5E3E4((v29 > 1), v30 + 1, 1, v46);
    }

    *(v46 + 2) = v30 + 1;
    v31 = &v46[88 * v30];
    *(v31 + 4) = v11;
    *(v31 + 5) = v1;
    *(v31 + 6) = v44;
    *(v31 + 7) = v43;
    v31[64] = v42;
    *(v31 + 65) = *v48;
    *(v31 + 17) = *&v48[3];
    *(v31 + 9) = v41;
    *(v31 + 10) = v40;
    *(v31 + 11) = v39;
    *(v31 + 12) = v38;
    *(v31 + 13) = v37;
    *(v31 + 14) = v28;
    v1 = v45;
  }

  while (v5 != v4);
LABEL_35:
  v33 = v0[19];
  v32 = v0[20];

  v34 = sub_10112B2E0(v46);

  *(v33 + 152) = v34;

  v35 = v0[1];

  return v35(v34);
}

uint64_t sub_100D4B6D0(uint64_t a1)
{
  v2 = *(v1 + 160);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_100D4B740(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_1000035D0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
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

uint64_t sub_100D4B818()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100D4B8AC;

  return daemon.getter();
}

uint64_t sub_100D4B8AC(uint64_t a1)
{
  *(*v1 + 32) = a1;

  type metadata accessor for Daemon();
  sub_100D4F760(&qword_1016969E0, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100D4BA08, v3, v2);
}

uint64_t sub_100D4BA08()
{
  v1 = *(v0 + 16);
  *(v0 + 40) = Daemon.darwinNotificationHandler.getter();

  return _swift_task_switch(sub_100D4BA80, v1, 0);
}

uint64_t sub_100D4BA80()
{
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  v0[6] = v2;
  v4 = swift_allocObject();
  v0[7] = v4;
  swift_weakInit();
  v7 = (&async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:) + async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:));

  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_100D4BBA4;

  return v7(v1, v3, &unk_1013E4E80, v4);
}

uint64_t sub_100D4BBA4(uint64_t a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 72) = a1;

  return _swift_task_switch(sub_100D4BD1C, v2, 0);
}

uint64_t sub_100D4BD1C()
{
  *(v0[2] + 136) = v0[9];

  v1 = v0[1];

  return v1();
}

uint64_t sub_100D4BDAC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_100D4BE64, Strong, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_100D4BE64()
{
  sub_100D4AE8C();
  sub_100D4A73C();

  return _swift_task_switch(sub_1004D4490, 0, 0);
}

uint64_t sub_100D4BED0(uint64_t a1)
{
  *(v2 + 64) = v1;
  v4 = swift_task_alloc();
  *(v2 + 72) = v4;
  *v4 = v2;
  v4[1] = sub_100D4BF80;

  return sub_100E8BEF8(a1);
}

uint64_t sub_100D4BF80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v4;
  v7 = *v4;
  v6[10] = a1;
  v6[11] = a2;
  v6[12] = a3;

  if (v3)
  {
    v8 = v7[1];
LABEL_3:

    return v8(0);
  }

  if (!a3)
  {
    v8 = v7[1];
    goto LABEL_3;
  }

  v10 = swift_task_alloc();
  v6[13] = v10;
  v11 = sub_1000BC4D4(&qword_1016BA718, &unk_1013E4E60);
  *v10 = v7;
  v10[1] = sub_100D4C150;

  return unsafeBlocking<A>(_:)(v6 + 6, sub_100D4C690, 0, v11);
}

uint64_t sub_100D4C150()
{
  v1 = *(*v0 + 64);

  return _swift_task_switch(sub_100D4C260, v1, 0);
}

void sub_100D4C260()
{
  v1 = *(v0 + 48);
  if (*(v0 + 56))
  {

    swift_errorRetain();
    if (qword_101694E40 == -1)
    {
LABEL_3:
      v2 = type metadata accessor for Logger();
      sub_1000076D4(v2, qword_10177BFE0);
      swift_errorRetain();
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.error.getter();
      sub_1001DB7B8(v1, 1);
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        *v5 = 138412290;
        swift_errorRetain();
        v7 = _swift_stdlib_bridgeErrorToNSError();
        *(v5 + 4) = v7;
        *v6 = v7;
        _os_log_impl(&_mh_execute_header, v3, v4, "FMFFollowers error: %@", v5, 0xCu);
        sub_100288C6C(v6);
      }

      swift_willThrow();
      sub_1001DB7B8(v1, 1);
      v8 = *(v0 + 8);
      v9 = 0;
      goto LABEL_26;
    }

LABEL_30:
    swift_once();
    goto LABEL_3;
  }

  v35 = v0;
  v10 = v1 + 56;
  v11 = -1;
  v12 = -1 << *(v1 + 32);
  if (-v12 < 64)
  {
    v11 = ~(-1 << -v12);
  }

  v0 = v11 & *(v1 + 56);
  v13 = (63 - v12) >> 6;

  v14 = 0;
  v15 = _swiftEmptyArrayStorage;
  v34 = v1;
  if (!v0)
  {
LABEL_10:
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= v13)
      {
        v30 = *(v35 + 88);
        v29 = *(v35 + 96);
        v31 = *(v35 + 80);

        v32 = sub_101129FC8(v15);

        v33 = sub_10111FDB4(v31, v30, v29, v32);

        sub_1001DB7B8(v1, 0);

        v8 = *(v35 + 8);
        v9 = v33 & 1;
LABEL_26:

        v8(v9);
        return;
      }

      v0 = *(v10 + 8 * v16);
      ++v14;
      if (v0)
      {
        v36 = v15;
        v14 = v16;
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  while (1)
  {
    v36 = v15;
LABEL_14:
    v17 = (*(v1 + 48) + 40 * (__clz(__rbit64(v0)) | (v14 << 6)));
    v18 = v17[1];
    *(v35 + 16) = *v17;
    *(v35 + 24) = v18;
    *(v35 + 32) = 64;
    *(v35 + 40) = 0xE100000000000000;
    sub_1000DF96C();

    v19 = StringProtocol.contains<A>(_:)();
    v20 = String._bridgeToObjectiveC()();
    if (v19)
    {
      break;
    }

    v21 = IDSCopyIDForPhoneNumber();

    if (!v21)
    {
      goto LABEL_32;
    }

    v22 = 1;
LABEL_19:

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v15 = v36;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_100A5C1F8(0, *(v36 + 2) + 1, 1, v36);
    }

    v27 = *(v15 + 2);
    v26 = *(v15 + 3);
    if (v27 >= v26 >> 1)
    {
      v15 = sub_100A5C1F8((v26 > 1), v27 + 1, 1, v15);
    }

    *(v15 + 2) = v27 + 1;
    v28 = &v15[24 * v27];
    v28[32] = v22;
    v0 &= v0 - 1;
    *(v28 + 5) = v23;
    *(v28 + 6) = v25;
    v1 = v34;
    if (!v0)
    {
      goto LABEL_10;
    }
  }

  v21 = IDSCopyIDForEmailAddress();

  if (v21)
  {
    v22 = 0;
    goto LABEL_19;
  }

  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t sub_100D4C690@<X0>(uint64_t a1@<X8>)
{
  sub_1000BC4D4(&qword_1016A4770, &qword_1013E4E70);
  unsafeFromAsyncTask<A>(_:)();
  v2 = qword_101694CF0;

  if (v2 != -1)
  {
    v3 = swift_once();
  }

  __chkstk_darwin(v3);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  result = sub_1001DB7B8(v5, 0);
  *a1 = v5;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_100D4C7CC(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 168) = a3;
  *(v4 + 176) = v3;
  *(v4 + 160) = a2;
  *(v4 + 352) = a1;
  return _swift_task_switch(sub_100D4C7F4, v3, 0);
}

uint64_t sub_100D4C7F4()
{
  v1 = *(v0 + 176);
  swift_beginAccess();
  v2 = *(v1 + 160);
  if (*(v2 + 16))
  {
    v4 = *(v0 + 160);
    v3 = *(v0 + 168);
    v5 = *(v0 + 352);

    v6 = sub_100772110(v5, v4, v3);
    if (v7)
    {
      v8 = (*(v2 + 56) + 16 * v6);
      v9 = *v8;
      v10 = v8[1];

      v11 = *(v0 + 8);

      return v11(v9, v10);
    }
  }

  return _swift_task_switch(sub_100D4C908, 0, 0);
}

uint64_t sub_100D4C908()
{
  if (qword_1016944B8 != -1)
  {
    swift_once();
  }

  *(v0 + 184) = qword_101699690;
  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  *v1 = v0;
  v1[1] = sub_100D4C9DC;
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v4 = *(v0 + 352);

  return sub_101269AA4(v4, v2, v3);
}

uint64_t sub_100D4C9DC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v4[25] = a1;
  v4[26] = a2;

  if (v2)
  {
    v6 = v5[1];

    return v6();
  }

  else
  {
    v8 = swift_task_alloc();
    v4[27] = v8;
    *v8 = v5;
    v8[1] = sub_100D4CB50;

    return sub_100D4AFA4();
  }
}

uint64_t sub_100D4CB50(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 224) = a1;
  *(v4 + 232) = v1;

  v5 = *(v3 + 176);
  if (v1)
  {
    v6 = sub_100D4DC48;
  }

  else
  {
    v6 = sub_100D4CC84;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100D4CC84()
{
  v1 = *(v0 + 224);
  v2 = *(v1 + 32);
  *(v0 + 353) = v2;
  v3 = -1;
  v4 = -1 << v2;
  if (-(-1 << v2) < 64)
  {
    v3 = ~(-1 << -(-1 << v2));
  }

  v5 = v3 & *(v1 + 56);
  if (v5)
  {
    v6 = 0;
LABEL_8:
    *(v0 + 240) = v5;
    *(v0 + 248) = v6;
    v9 = (*(v1 + 48) + 88 * (__clz(__rbit64(v5)) | (v6 << 6)));
    v11 = v9[2];
    v10 = v9[3];
    *(v0 + 256) = v9[9];
    *(v0 + 264) = v9[10];
    *(v0 + 120) = v11;
    *(v0 + 128) = v10;
    *(v0 + 136) = 64;
    *(v0 + 144) = 0xE100000000000000;
    sub_1000DF96C();

    v12 = StringProtocol.contains<A>(_:)();
    v13 = String._bridgeToObjectiveC()();
    if (v12)
    {
      v14 = IDSCopyIDForEmailAddress();

      if (v14)
      {
        v18 = 0;
        goto LABEL_13;
      }

      __break(1u);
    }

    else
    {
      v14 = IDSCopyIDForPhoneNumber();

      if (v14)
      {
        v18 = 1;
LABEL_13:
        *(v0 + 354) = v18;
        v19 = *(v0 + 184);

        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

        *(v0 + 272) = v22;
        *(v0 + 280) = v20;
        v15 = sub_100D4CEC0;
        v16 = v19;
        v17 = 0;

        return _swift_task_switch(v15, v16, v17);
      }
    }

    __break(1u);
    return _swift_task_switch(v15, v16, v17);
  }

  v7 = 0;
  v8 = ((63 - v4) >> 6) - 1;
  while (v8 != v7)
  {
    v6 = v7 + 1;
    v5 = *(v1 + 8 * v7++ + 64);
    if (v5)
    {
      goto LABEL_8;
    }
  }

  sub_100D4F70C();
  swift_allocError();
  *v23 = 1;
  swift_willThrow();
  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100D4CEC0()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 354);
  v4 = *(v0 + 184);
  sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
  inited = swift_initStackObject();
  *(v0 + 288) = inited;
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = v3;
  *(inited + 40) = v1;
  *(inited + 48) = v2;
  v6 = *(v4 + 112);
  *(v0 + 296) = v6;
  if (v6)
  {
    v7 = *(v0 + 184);
    v8 = sub_100D4F760(&qword_1016996B0, 255, type metadata accessor for MessagingQueryController, &unk_10140F8A0);
    v9 = swift_task_alloc();
    *(v0 + 304) = v9;
    v9[2] = inited;
    v9[3] = v6;
    v9[4] = v7;
    v10 = v6;
    v11 = swift_task_alloc();
    *(v0 + 312) = v11;
    v12 = sub_1000BC4D4(&qword_1016996B8, &qword_101391C40);
    *v11 = v0;
    v11[1] = sub_100D4D110;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 152, v7, v8, 0xD00000000000001CLL, 0x800000010134D210, sub_1001DD080, v9, v12);
  }

  else
  {

    swift_setDeallocating();
    sub_1001BAE8C(inited + 32);
    sub_1001DCF6C();
    v13 = swift_allocError();
    *v14 = 6;
    swift_willThrow();
    *(v0 + 328) = v13;
    v15 = *(v0 + 176);

    return _swift_task_switch(sub_100D4D524, v15, 0);
  }
}

uint64_t sub_100D4D110()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = *(v2 + 184);
    swift_setDeallocating();
    swift_arrayDestroy();

    v4 = sub_100D4D4B4;
    v5 = v3;
  }

  else
  {
    v6 = *(v2 + 184);
    swift_setDeallocating();
    swift_arrayDestroy();

    v4 = sub_100D4D2D0;
    v5 = v6;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_100D4D2D0()
{
  v2 = 0;
  v3 = 0;
  v4 = *(v1 + 152);
  v5 = 1 << *(v4 + 32);
  while (1)
  {
    v6 = *(v4 + 8 * v3 + 64);
    if (v6)
    {
      break;
    }

    ++v3;
    v2 -= 64;
    if ((v5 + 63) >> 6 == v3)
    {
      goto LABEL_21;
    }
  }

  v7 = __clz(__rbit64(v6));
  if (v7 - v5 == v2)
  {
    goto LABEL_21;
  }

  if (-v2 < 0 || (v8 = v7 - v2, v8 >= v5))
  {
    __break(1u);
    goto LABEL_19;
  }

  if (((*(v4 + 64 + 8 * (v3 & 0x3FFFFFFFFFFFFFFLL)) >> v7) & 1) == 0)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    v11 = _CocoaArrayWrapper.endIndex.getter();
    if (v11)
    {
      goto LABEL_11;
    }

LABEL_21:

    v9 = *(v1 + 176);
    v11 = sub_100D4D588;
    goto LABEL_22;
  }

  v0 = *(*(v4 + 56) + 8 * v8);

  if (v0 >> 62)
  {
    goto LABEL_20;
  }

  v11 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    goto LABEL_21;
  }

LABEL_11:
  if ((v0 & 0xC000000000000001) != 0)
  {
    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return _swift_task_switch(v11, v9, v10);
    }

    v12 = *(v0 + 32);
  }

  v13 = v12;

  v14 = [v13 senderCorrelationIdentifier];

  v15 = *(v1 + 176);
  if (v14)
  {
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    *(v1 + 336) = v16;
    *(v1 + 344) = v18;
    v19 = sub_100D4D8BC;
  }

  else
  {
    v19 = sub_100D4F968;
  }

  v11 = v19;
  v9 = v15;
LABEL_22:
  v10 = 0;

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_100D4D4B4()
{
  *(v0 + 328) = *(v0 + 320);
  v1 = *(v0 + 176);

  return _swift_task_switch(sub_100D4D524, v1, 0);
}

uint64_t sub_100D4D524()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D4D588(uint64_t a1)
{
  v2 = *(v1 + 264);
  if (*(v1 + 208))
  {

    v6 = *(v1 + 248);
    v7 = (*(v1 + 240) - 1) & *(v1 + 240);
    if (v7)
    {
      v3 = *(v1 + 224);
LABEL_12:
      *(v1 + 240) = v7;
      *(v1 + 248) = v6;
      v17 = (*(v3 + 48) + 88 * (__clz(__rbit64(v7)) | (v6 << 6)));
      v19 = v17[2];
      v18 = v17[3];
      *(v1 + 256) = v17[9];
      *(v1 + 264) = v17[10];
      *(v1 + 120) = v19;
      *(v1 + 128) = v18;
      *(v1 + 136) = 64;
      *(v1 + 144) = 0xE100000000000000;
      sub_1000DF96C();

      v20 = StringProtocol.contains<A>(_:)();
      v21 = String._bridgeToObjectiveC()();
      if ((v20 & 1) == 0)
      {
        v22 = IDSCopyIDForPhoneNumber();

        if (v22)
        {
          v23 = 1;
LABEL_17:
          *(v1 + 354) = v23;
          v24 = *(v1 + 184);

          v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v27 = v26;

          *(v1 + 272) = v27;
          *(v1 + 280) = v25;
          v3 = sub_100D4CEC0;
          v4 = v24;
          v5 = 0;

          return _swift_task_switch(v3, v4, v5);
        }

LABEL_27:
        __break(1u);
        return _swift_task_switch(v3, v4, v5);
      }

      v22 = IDSCopyIDForEmailAddress();

      if (v22)
      {
        v23 = 0;
        goto LABEL_17;
      }
    }

    else
    {
      while (1)
      {
        v16 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v3 = *(v1 + 224);
        if (v16 >= (((1 << *(v1 + 353)) + 63) >> 6))
        {

          sub_100D4F70C();
          swift_allocError();
          *v29 = 1;
          swift_willThrow();
          goto LABEL_22;
        }

        v7 = *(v3 + 8 * v16 + 56);
        ++v6;
        if (v7)
        {
          v6 = v16;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }

  if (v2)
  {
    v8 = *(v1 + 256);
    v9 = *(v1 + 168);
    v10 = *(v1 + 160);
    v11 = *(v1 + 352);
    swift_beginAccess();

    sub_1001E0414(v8, v2, v11, v10, v9);
    swift_endAccess();

    v12 = *(v1 + 256);
    v13 = *(v1 + 264);
    v14 = *(v1 + 8);

    return v14(v12, v13);
  }

  else
  {
    sub_100D4F70C();
    swift_allocError();
    *v28 = 2;
    swift_willThrow();

LABEL_22:
    v30 = *(v1 + 8);

    return v30();
  }
}

uint64_t sub_100D4D8BC()
{
  v1 = *(v0 + 208);
  if (!v1)
  {

    goto LABEL_9;
  }

  if (*(v0 + 336) == *(v0 + 200) && v1 == *(v0 + 344))
  {

    goto LABEL_12;
  }

  v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v3 & 1) == 0)
  {
LABEL_9:

    v7 = *(v0 + 248);
    v8 = (*(v0 + 240) - 1) & *(v0 + 240);
    if (v8)
    {
      v4 = *(v0 + 224);
LABEL_20:
      *(v0 + 240) = v8;
      *(v0 + 248) = v7;
      v19 = (*(v4 + 48) + 88 * (__clz(__rbit64(v8)) | (v7 << 6)));
      v21 = v19[2];
      v20 = v19[3];
      *(v0 + 256) = v19[9];
      *(v0 + 264) = v19[10];
      *(v0 + 120) = v21;
      *(v0 + 128) = v20;
      *(v0 + 136) = 64;
      *(v0 + 144) = 0xE100000000000000;
      sub_1000DF96C();

      v22 = StringProtocol.contains<A>(_:)();
      v23 = String._bridgeToObjectiveC()();
      if ((v22 & 1) == 0)
      {
        v24 = IDSCopyIDForPhoneNumber();

        if (v24)
        {
          v25 = 1;
LABEL_25:
          *(v0 + 354) = v25;
          v26 = *(v0 + 184);

          v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v29 = v28;

          *(v0 + 272) = v29;
          *(v0 + 280) = v27;
          v4 = sub_100D4CEC0;
          v5 = v26;
          v6 = 0;

          return _swift_task_switch(v4, v5, v6);
        }

LABEL_35:
        __break(1u);
        return _swift_task_switch(v4, v5, v6);
      }

      v24 = IDSCopyIDForEmailAddress();

      if (v24)
      {
        v25 = 0;
        goto LABEL_25;
      }
    }

    else
    {
      while (1)
      {
        v18 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v4 = *(v0 + 224);
        if (v18 >= (((1 << *(v0 + 353)) + 63) >> 6))
        {

          sub_100D4F70C();
          swift_allocError();
          *v31 = 1;
          swift_willThrow();
          goto LABEL_30;
        }

        v8 = *(v4 + 8 * v18 + 56);
        ++v7;
        if (v8)
        {
          v7 = v18;
          goto LABEL_20;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_35;
  }

LABEL_12:

  v9 = *(v0 + 264);
  if (v9)
  {
    v10 = *(v0 + 256);
    v11 = *(v0 + 168);
    v12 = *(v0 + 160);
    v13 = *(v0 + 352);
    swift_beginAccess();

    sub_1001E0414(v10, v9, v13, v12, v11);
    swift_endAccess();

    v14 = *(v0 + 256);
    v15 = *(v0 + 264);
    v16 = *(v0 + 8);

    return v16(v14, v15);
  }

  else
  {
    sub_100D4F70C();
    swift_allocError();
    *v30 = 2;
    swift_willThrow();

LABEL_30:
    v32 = *(v0 + 8);

    return v32();
  }
}

uint64_t sub_100D4DC48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D4DCAC@<X0>(void *a1@<X8>)
{
  if (qword_1016944B0 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&qword_1016A4768, &unk_1013B10E0);
  result = OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  if (v4)
  {
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    return swift_willThrowTypedImpl();
  }

  else
  {
    *a1 = v3;
  }

  return result;
}

uint64_t sub_100D4DDA8()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100D4DE2C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for FamilyCircleService();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v5, a2);
}

uint64_t sub_100D4DED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for FamilyCircleService();
  *v8 = v4;
  v8[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v9, a4);
}

uint64_t sub_100D4DF98(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for FamilyCircleService();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v5, a2);
}

uint64_t sub_100D4E040()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_100D4B818();
}

uint64_t sub_100D4E0EC()
{
  v1 = *(v0[2] + 136);
  v0[3] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[4] = v2;
    *v2 = v0;
    v2[1] = sub_100D4E1C8;

    return DarwinNotification.Listener.run()();
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_100D4E1C8()
{
  v2 = *v1;
  v2[5] = v0;

  if (v0)
  {
    v3 = v2[2];

    return _swift_task_switch(sub_100D4E304, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_100D4E304()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D4E368()
{
  type metadata accessor for FamilyCircleService();
  sub_100D4F760(&unk_1016AF840, v0, type metadata accessor for FamilyCircleService, &unk_1013E4DC8);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_100D4E460()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177BFC8);
  sub_1000076D4(v0, qword_10177BFC8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100D4E4E0()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177BFE0);
  sub_1000076D4(v0, qword_10177BFE0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100D4E560(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 120) = a2;
  *(v3 + 128) = a3;
  *(v3 + 296) = a1;
  return _swift_task_switch(sub_100D4E584, 0, 0);
}

uint64_t sub_100D4E584()
{
  if (qword_1016944B8 != -1)
  {
    swift_once();
  }

  *(v0 + 136) = qword_101699690;
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_100D4E658;
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  v4 = *(v0 + 296);

  return sub_101269AA4(v4, v2, v3);
}

uint64_t sub_100D4E658(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  v6[19] = a1;
  v6[20] = a2;

  if (v2)
  {
    v8 = v7[1];

    return v8();
  }

  else if (a2)
  {
    v10 = swift_task_alloc();
    v6[21] = v10;
    v11 = sub_1000BC4D4(&qword_1016BA708, &qword_1013EBDD0);
    *v10 = v7;
    v10[1] = sub_100D4E860;

    return unsafeBlocking<A>(_:)(v6 + 11, sub_100D4DCAC, 0, v11);
  }

  else
  {
    v12 = v7[1];

    return v12(a1, 0);
  }
}

uint64_t sub_100D4E860()
{
  *(*v1 + 176) = v0;

  if (v0)
  {

    v2 = sub_100D4F690;
  }

  else
  {
    v2 = sub_100D4E97C;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_100D4E97C()
{
  v1 = v0[11];
  v0[23] = v1;
  if ((v1 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    sub_100D4F6A8();
    sub_100D4F760(&qword_1016A4758, 255, sub_100D4F6A8, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v2 = v0[2];
    v3 = v0[3];
    v5 = v0[4];
    v4 = v0[5];
    v6 = v0[6];
  }

  else
  {
    v7 = -1 << *(v1 + 32);
    v3 = v1 + 56;
    v5 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(v1 + 56);

    v4 = 0;
  }

  v0[25] = v3;
  v0[26] = v5;
  v0[24] = v2;
  v0[27] = v4;
  v0[28] = v6;
  if (v2 < 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v10 = v4;
  v11 = v6;
  v12 = v4;
  if (v6)
  {
LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    while (1)
    {
      v0[30] = v12;
      v0[31] = v13;
      v0[29] = v14;
      if (!v14)
      {
LABEL_20:
        v2 = v0[24];
        goto LABEL_21;
      }

      v16 = [v14 appleID];
      if (v16)
      {
        break;
      }

      v2 = v0[24];
      v4 = v12;
      v6 = v13;
      v0[27] = v12;
      v0[28] = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_13:
      v15 = __CocoaSet.Iterator.next()();
      if (!v15)
      {
        goto LABEL_20;
      }

      v0[14] = v15;
      sub_100D4F6A8();
      swift_dynamicCast();
      v14 = v0[13];
      v12 = v4;
      v13 = v6;
    }

    v18 = v16;
    v0[7] = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v0[8] = v19;
    v0[9] = 64;
    v0[10] = 0xE100000000000000;
    sub_1000DF96C();
    v20 = v18;
    if (StringProtocol.contains<A>(_:)())
    {
      v21 = IDSCopyIDForEmailAddress();

      if (v21)
      {
        v22 = 0;
LABEL_29:

        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;

        v0[32] = v25;
        v26 = swift_task_alloc();
        v0[33] = v26;
        *v26 = v0;
        v26[1] = sub_100D4ED1C;

        sub_101269AA4(v22, v23, v25);
        return;
      }

LABEL_33:
      __break(1u);
    }

    else
    {
      v21 = IDSCopyIDForPhoneNumber();

      if (v21)
      {
        v22 = 1;
        goto LABEL_29;
      }
    }

    __break(1u);
    return;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v12 >= ((v0[26] + 64) >> 6))
    {
      break;
    }

    v11 = *(v0[25] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

LABEL_21:
  sub_1000128F8(v2);

  v17 = v0[1];

  v17(0, 0);
}

uint64_t sub_100D4ED1C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[34] = a1;
  v4[35] = a2;
  v4[36] = v2;

  if (v2)
  {
    v5 = sub_100D4F220;
  }

  else
  {
    v5 = sub_100D4EE54;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_100D4EE54()
{
  v1 = *(v0 + 280);
  if (v1)
  {
    if (*(v0 + 272) == *(v0 + 152) && v1 == *(v0 + 160))
    {

      goto LABEL_22;
    }

    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v3)
    {

LABEL_22:
      v14 = *(v0 + 232);

      v15 = [v14 altDSID];
      v16 = *(v0 + 232);
      v17 = *(v0 + 192);
      if (v15)
      {
        v18 = v15;
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        sub_1000128F8(v17);
        v22 = v21;
        v23 = v19;
      }

      else
      {

        sub_1000128F8(v17);
LABEL_27:
        v23 = 0;
        v22 = 0;
      }

      v24 = *(v0 + 8);

      v24(v23, v22);
      return;
    }
  }

  v4 = *(v0 + 240);
  for (i = *(v0 + 248); ; i = v10)
  {
    *(v0 + 216) = v4;
    *(v0 + 224) = i;
    v6 = *(v0 + 192);
    if (v6 < 0)
    {
      v12 = __CocoaSet.Iterator.next()();
      if (!v12)
      {
        goto LABEL_25;
      }

      *(v0 + 112) = v12;
      sub_100D4F6A8();
      swift_dynamicCast();
      v11 = *(v0 + 104);
      v9 = v4;
      v10 = i;
    }

    else
    {
      v7 = v4;
      v8 = i;
      v9 = v4;
      if (!i)
      {
        while (1)
        {
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            break;
          }

          if (v9 >= ((*(v0 + 208) + 64) >> 6))
          {
            goto LABEL_26;
          }

          v8 = *(*(v0 + 200) + 8 * v9);
          ++v7;
          if (v8)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
        goto LABEL_40;
      }

LABEL_14:
      v10 = (v8 - 1) & v8;
      v11 = *(*(v6 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v8)))));
    }

    *(v0 + 240) = v9;
    *(v0 + 248) = v10;
    *(v0 + 232) = v11;
    if (!v11)
    {
LABEL_25:
      v6 = *(v0 + 192);
LABEL_26:
      sub_1000128F8(v6);

      goto LABEL_27;
    }

    v13 = [v11 appleID];
    if (v13)
    {
      break;
    }

    v4 = v9;
  }

  v25 = v13;
  *(v0 + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 64) = v26;
  *(v0 + 72) = 64;
  *(v0 + 80) = 0xE100000000000000;
  sub_1000DF96C();
  v27 = v25;
  if (StringProtocol.contains<A>(_:)())
  {
    v28 = IDSCopyIDForEmailAddress();

    if (v28)
    {
      v29 = 0;
      goto LABEL_36;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    return;
  }

  v28 = IDSCopyIDForPhoneNumber();

  if (!v28)
  {
    goto LABEL_41;
  }

  v29 = 1;
LABEL_36:

  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  *(v0 + 256) = v32;
  v33 = swift_task_alloc();
  *(v0 + 264) = v33;
  *v33 = v0;
  v33[1] = sub_100D4ED1C;

  sub_101269AA4(v29, v30, v32);
}

void sub_100D4F220()
{
  if (qword_101694E38 != -1)
  {
LABEL_34:
    swift_once();
  }

  v1 = v0[29];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177BFC8);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[29];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v0[12] = v8;
    *v7 = 141558275;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    v9 = [v6 appleID];
    if (v9)
    {
      v10 = v9;
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
    }

    else
    {
      v13 = 0xE300000000000000;
      v11 = 7104846;
    }

    v15 = v0[29];
    v16 = sub_1000136BC(v11, v13, v0 + 12);

    *(v7 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failure on getting correlationIdentifier for appleID: %{private,mask.hash}s", v7, 0x16u);
    sub_100007BAC(v8);
  }

  else
  {
    v14 = v0[29];
  }

  v17 = v0[30];
  for (i = v0[31]; ; i = v23)
  {
    v0[27] = v17;
    v0[28] = i;
    v19 = v0[24];
    if (v19 < 0)
    {
      v25 = __CocoaSet.Iterator.next()();
      if (!v25)
      {
        goto LABEL_21;
      }

      v0[14] = v25;
      sub_100D4F6A8();
      swift_dynamicCast();
      v24 = v0[13];
      v22 = v17;
      v23 = i;
    }

    else
    {
      v20 = v17;
      v21 = i;
      v22 = v17;
      if (!i)
      {
        while (1)
        {
          v22 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v22 >= ((v0[26] + 64) >> 6))
          {
            goto LABEL_22;
          }

          v21 = *(v0[25] + 8 * v22);
          ++v20;
          if (v21)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
        goto LABEL_34;
      }

LABEL_14:
      v23 = (v21 - 1) & v21;
      v24 = *(*(v19 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));
    }

    v0[30] = v22;
    v0[31] = v23;
    v0[29] = v24;
    if (!v24)
    {
LABEL_21:
      v19 = v0[24];
LABEL_22:
      sub_1000128F8(v19);

      v27 = v0[1];

      v27(0, 0);
      return;
    }

    v26 = [v24 appleID];
    if (v26)
    {
      break;
    }

    v17 = v22;
  }

  v28 = v26;
  v0[7] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0[8] = v29;
  v0[9] = 64;
  v0[10] = 0xE100000000000000;
  sub_1000DF96C();
  v30 = v28;
  if (StringProtocol.contains<A>(_:)())
  {
    v31 = IDSCopyIDForEmailAddress();

    if (v31)
    {
      v32 = 0;
      goto LABEL_30;
    }

    __break(1u);
LABEL_36:
    __break(1u);
    return;
  }

  v31 = IDSCopyIDForPhoneNumber();

  if (!v31)
  {
    goto LABEL_36;
  }

  v32 = 1;
LABEL_30:

  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  v0[32] = v35;
  v36 = swift_task_alloc();
  v0[33] = v36;
  *v36 = v0;
  v36[1] = sub_100D4ED1C;

  sub_101269AA4(v32, v33, v35);
}

unint64_t sub_100D4F6A8()
{
  result = qword_1016996A0;
  if (!qword_1016996A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1016996A0);
  }

  return result;
}

unint64_t sub_100D4F70C()
{
  result = qword_1016BA710;
  if (!qword_1016BA710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA710);
  }

  return result;
}

uint64_t sub_100D4F760(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_100D4F7A8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100D4BD8C(a1, v1);
}

uint64_t sub_100D4F840(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014650;

  return sub_100D4A8B0(a1, v4, v5, v6);
}

unint64_t sub_100D4F914()
{
  result = qword_1016BA738;
  if (!qword_1016BA738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA738);
  }

  return result;
}

uint64_t sub_100D4F96C(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016BA8B8, &qword_1013E5320);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_1000035D0(a1, a1[3]);
  sub_100D52B60();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *v3;
  v13 = v12;
  v11[23] = 0;
  sub_1001022C4(&v13, v11);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    sub_100016590(v12, *(&v12 + 1));
  }

  else
  {
    sub_100016590(v12, *(&v12 + 1));
    LOBYTE(v12) = *(v3 + 16);
    v11[0] = 1;
    sub_1005132CC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v12) = *(v3 + 40);
    v11[0] = 3;
    sub_1001E8200();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v12) = *(v3 + 41);
    v11[0] = 4;
    sub_100513320();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v12 = *(v3 + 6);
    v11[0] = 5;
    sub_1000BC4D4(&qword_1016BA8A8, &qword_1013E5318);
    sub_100D52BB4(&qword_1016BA8C0, &qword_1016BA7E0, &unk_1013E5168, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100D4FC58(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016BA8D8, &qword_1013E5330);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_1000035D0(a1, a1[3]);
  sub_100D52C80();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v12 = *v3;
  v13 = v9;
  v11[15] = 0;
  sub_100017D5C(v12, v9);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v12, v13);
  if (!v2)
  {
    type metadata accessor for OwnSubmitLocationInfo(0);
    LOBYTE(v12) = 1;
    type metadata accessor for Date();
    sub_100D52D94(&unk_101697F60, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100D4FE34@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v20 = type metadata accessor for Date();
  v17 = *(v20 - 8);
  __chkstk_darwin(v20);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000BC4D4(&qword_1016BA8C8, &qword_1013E5328);
  v19 = *(v21 - 8);
  __chkstk_darwin(v21);
  v7 = &v16 - v6;
  v8 = type metadata accessor for OwnSubmitLocationInfo(0);
  __chkstk_darwin(v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_100D52C80();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v16 = v8;
  v11 = v10;
  v13 = v19;
  v12 = v20;
  v23 = 0;
  sub_1000E307C();
  v14 = v21;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *v11 = v22;
  LOBYTE(v22) = 1;
  sub_100D52D94(&qword_101697F40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v13 + 8))(v7, v14);
  (*(v17 + 32))(&v11[*(v16 + 20)], v5, v12);
  sub_100D52CD4(v11, v18);
  sub_100007BAC(a1);
  return sub_100D52D38(v11);
}

uint64_t sub_100D50158(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016BA858, &qword_1013E52F8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_100D52108();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v13 = *v3;
  v14 = v9;
  v15 = v3[2];
  v12 = 0;
  sub_100D5215C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    *&v13 = *(v3 + 6);
    v12 = 1;
    sub_1000BC4D4(&qword_1016BA870, &qword_1013E5300);
    sub_100D52AE8(&qword_1016BA878, sub_100D520B4, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100D50338(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016BA928, &qword_1013E5700);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000035D0(a1, a1[3]);
  sub_100D53134();
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
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100D504D8()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 1701869940;
  v4 = 1701080941;
  if (v1 != 4)
  {
    v4 = 0x6E6F697461636F6CLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6570795479656BLL;
  if (v1 != 1)
  {
    v5 = 0x64496572616873;
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

uint64_t sub_100D50580@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100D521B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100D505A8(uint64_t a1)
{
  v2 = sub_100D52B60();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100D505E4(uint64_t a1)
{
  v2 = sub_100D52B60();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100D50628()
{
  v1 = *(v0 + 24);

  return v1;
}

double sub_100D50660@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100D523A8(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_100D506C8(uint64_t a1)
{
  v2 = sub_100D52C80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100D50704(uint64_t a1)
{
  v2 = sub_100D52C80();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100D50770()
{
  if (*v0)
  {
    return 0x74696D627573;
  }

  else
  {
    return 0x6F43746E65696C63;
  }
}

uint64_t sub_100D507B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74696D627573 && a2 == 0xE600000000000000)
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

uint64_t sub_100D50894(uint64_t a1)
{
  v2 = sub_100D52108();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100D508D0(uint64_t a1)
{
  v2 = sub_100D52108();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100D5090C@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100D527EC(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_100D50974()
{
  v1 = 0x526873696C627570;
  if (*v0 != 1)
  {
    v1 = 0x6449746E65696C63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x41747865746E6F63;
  }
}

uint64_t sub_100D509E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100D53188(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100D50A08(uint64_t a1)
{
  v2 = sub_100D53134();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100D50A44(uint64_t a1)
{
  v2 = sub_100D53134();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100D50A80@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100D532B0(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_100D50ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 240) = a2;
  *(v3 + 248) = a3;
  *(v3 + 256) = *a1;
  *(v3 + 272) = *(a1 + 16);
  *(v3 + 280) = *(a1 + 24);
  *(v3 + 296) = *(a1 + 40);
  v4 = type metadata accessor for HashAlgorithm();
  *(v3 + 304) = v4;
  *(v3 + 312) = *(v4 - 8);
  *(v3 + 320) = swift_task_alloc();
  v5 = type metadata accessor for OwnSubmitLocationInfo(0);
  *(v3 + 328) = v5;
  *(v3 + 336) = *(v5 - 8);
  *(v3 + 344) = swift_task_alloc();
  v6 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  *(v3 + 352) = v6;
  *(v3 + 360) = *(v6 - 8);
  *(v3 + 368) = swift_task_alloc();
  v7 = type metadata accessor for Date();
  *(v3 + 376) = v7;
  *(v3 + 384) = *(v7 - 8);
  *(v3 + 392) = swift_task_alloc();

  return _swift_task_switch(sub_100D50CD4, 0, 0);
}

id sub_100D50CD4()
{
  v0[24] = sub_100907E70(_swiftEmptyArrayStorage);
  v72 = v0 + 24;
  result = [objc_opt_self() currentDevice];
  if (!result)
  {
    goto LABEL_26;
  }

  v2 = result;
  v3 = [result serverFriendlyDescription];

  if (v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v8 = v0[48];
  v7 = v0[49];
  v9 = v0[47];
  v10 = v0[30];
  sub_1001DD5B8(v4, v6, 0xD000000000000011, 0x800000010134EA40);
  v11 = v0[24];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(49, 0xE100000000000000, 0x562D747065636341, 0xEE006E6F69737265, isUniquelyReferenced_nonNull_native);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(0xD000000000000010, 0x800000010134F5C0, 0x2D746E65746E6F43, 0xEC00000065707954, v13);
  v14 = v11;
  v0[24] = v11;
  v76 = v0;
  v15 = v10;
  Date.init()();
  v16 = Date.epoch.getter();
  (*(v8 + 8))(v7, v9);
  v76[29] = v16;
  v17 = dispatch thunk of CustomStringConvertible.description.getter();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v88 = v14;
  v21 = v76;
  sub_100FFACA0(v17, v19, 0xD000000000000015, 0x8000000101360770, v20);
  v76[24] = v14;
  v75 = v15;
  v22 = *(v15 + 16);
  if (v22)
  {
    v83 = v76[42];
    v84 = v76[43];
    v23 = v76[30];
    result = sub_1011240B0(0, v22, 0);
    if (*(v15 + 16))
    {
      v24 = 0;
      v81 = v72 - 15;
      v82 = v72 - 10;
      v25 = _swiftEmptyArrayStorage;
      v73 = v23 + 32;
      v74 = v22;
      v26 = 1;
      while (1)
      {
        v80 = v26;
        sub_10001F280(v73 + 40 * v24, v81);
        v27 = v21[12];
        v28 = v21[13];
        sub_1000035D0(v81, v27);
        (*(v28 + 64))(v27, v28);
        swift_getAssociatedTypeWitness();
        sub_1000BC4D4(&qword_101696918, &qword_10138B1F8);
        v29 = _arrayForceCast<A, B>(_:)();

        v30 = *(v29 + 16);
        if (v30)
        {
          v78 = v25;
          sub_1011240D0(0, v30, 0);
          v31 = v29 + 32;
          do
          {
            v86 = v30;
            v32 = v21[43];
            sub_10001F280(v31, v82);
            v33 = v21[17];
            v34 = v21[18];
            sub_1000035D0(v82, v33);
            v35 = (*(v34 + 24))(v33, v34);
            v37 = v36;
            v38 = v21;
            v39 = v21[17];
            v40 = v21[18];
            sub_1000035D0(v82, v39);
            (*(v40 + 32))(v39, v40);
            *v32 = v35;
            *(v84 + 8) = v37;
            sub_100007BAC(v82);
            v88 = _swiftEmptyArrayStorage;
            v42 = _swiftEmptyArrayStorage[2];
            v41 = _swiftEmptyArrayStorage[3];
            if (v42 >= v41 >> 1)
            {
              sub_1011240D0((v41 > 1), v42 + 1, 1);
            }

            v43 = v38[43];
            _swiftEmptyArrayStorage[2] = v42 + 1;
            sub_100D51DC0(v43, _swiftEmptyArrayStorage + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v42);
            v31 += 40;
            v30 = v86 - 1;
            v21 = v38;
          }

          while (v86 != 1);

          v25 = v78;
        }

        else
        {
        }

        v44 = v21[12];
        v45 = v21[13];
        sub_1000035D0(v81, v44);
        v77 = (*(v45 + 40))(v44, v45);
        v79 = v46;
        v47 = v21[12];
        v48 = v21[13];
        sub_1000035D0(v81, v47);
        v49 = (*(v48 + 48))(v47, v48);
        v50 = v21[12];
        v51 = v21[13];
        sub_1000035D0(v81, v50);
        v52 = (*(v51 + 72))(v50, v51);
        v54 = v53;
        v55 = v21[12];
        v56 = v21[13];
        sub_1000035D0(v81, v55);
        v57 = (*(v56 + 80))(v55, v56);
        v58 = v21[12];
        v59 = v21[13];
        sub_1000035D0(v81, v58);
        v60 = (*(v59 + 56))(v58, v59);
        result = sub_100007BAC(v81);
        v62 = v25[2];
        v61 = v25[3];
        if (v62 >= v61 >> 1)
        {
          result = sub_1011240B0((v61 > 1), v62 + 1, 1);
        }

        v25[2] = v62 + 1;
        v63 = &v25[7 * v62];
        v63[4] = v77;
        v63[5] = v79;
        *(v63 + 48) = v49;
        *(v63 + 49) = v88;
        *(v63 + 13) = *(&v88 + 3);
        v63[7] = v52;
        v63[8] = v54;
        *(v63 + 72) = v57;
        *(v63 + 73) = v60;
        *(v63 + 39) = v90;
        *(v63 + 74) = v89;
        v63[10] = _swiftEmptyArrayStorage;
        v24 = v80;
        if (v80 == v74)
        {
          break;
        }

        v26 = v80 + 1;
        v21 = v76;
        if (v80 >= *(v75 + 16))
        {
          goto LABEL_25;
        }
      }

      v21 = v76;

      goto LABEL_22;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    return result;
  }

  v25 = _swiftEmptyArrayStorage;
LABEL_22:
  v65 = v21[45];
  v64 = v21[46];
  v66 = v21[44];
  v67 = v21[37];
  v68 = v76[36];
  v85 = *(v76 + 16);
  v87 = *(v76 + 17);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  v76[50] = JSONEncoder.init()();
  *v64 = sub_100281AE0;
  v64[1] = 0;
  (*(v65 + 104))(v64, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v66);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  *(v76 + 1) = v85;
  *(v76 + 2) = v87;
  v76[6] = v68;
  v76[7] = v67;
  v76[8] = v25;
  sub_100D51E24();
  v69 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v76[51] = 0;
  v76[52] = v69;
  v76[53] = v70;

  v71 = swift_task_alloc();
  v76[54] = v71;
  *v71 = v76;
  v71[1] = sub_100D515D8;

  return sub_100E9DE8C();
}

uint64_t sub_100D515D8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 440) = a1;
  *(v3 + 448) = a2;

  return _swift_task_switch(sub_100D516D8, 0, 0);
}

uint64_t sub_100D516D8()
{
  v2 = v0[55];
  v1 = v0[56];
  v3 = v0[52];
  v4 = v0[53];
  v5 = v0[39];
  v6 = v0[40];
  v0[27] = v2;
  v17 = v5;
  v18 = v0[38];
  v19 = v6;
  v0[28] = v1;
  v0[22] = &type metadata for Data;
  v0[23] = &protocol witness table for Data;
  v0[19] = v3;
  v0[20] = v4;
  v7 = sub_1000035D0(v0 + 19, &type metadata for Data);
  v8 = *v7;
  v9 = v7[1];
  sub_100017D5C(v2, v1);
  sub_100017D5C(v3, v4);
  sub_100017DB0(v8, v9, (v0 + 27));
  sub_100016590(v2, v1);
  sub_100007BAC(v0 + 19);
  v10 = v0[28];
  v0[57] = v0[27];
  v0[58] = v10;
  (*(v17 + 104))(v19, enum case for HashAlgorithm.sha256(_:), v18);
  v11 = Data.hash(algorithm:)();
  v13 = v12;
  v0[59] = v11;
  v0[60] = v12;
  (*(v17 + 8))(v19, v18);
  v14 = swift_task_alloc();
  v0[61] = v14;
  *v14 = v0;
  v14[1] = sub_100D518A8;
  v15 = v0[31];

  return sub_100EA87F4(v11, v13, v15);
}

uint64_t sub_100D518A8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 496) = v1;

  if (v1)
  {
    v5 = sub_100D51B28;
  }

  else
  {
    v6 = v4[59];
    v7 = v4[60];
    v4[63] = a1;
    sub_100016590(v6, v7);
    v5 = sub_100D519D8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100D519D8()
{
  v14 = v0;
  v1 = v0[63];
  v3 = v0[57];
  v2 = v0[58];
  v4 = v0[24];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = v4;
  sub_10028709C(v1, sub_100EB00A4, 0, isUniquelyReferenced_nonNull_native, &v13);

  sub_100016590(v3, v2);

  v6 = v13;
  v8 = v0[52];
  v7 = v0[53];
  v0[24] = v13;
  v0[25] = v8;
  v0[26] = v7;

  sub_100017D5C(v8, v7);

  sub_100016590(v8, v7);
  v10 = v0[52];
  v9 = v0[53];

  v11 = v0[1];

  return v11(v6, v10, v9);
}

uint64_t sub_100D51B28()
{
  v1 = v0[57];
  v2 = v0[58];
  sub_100016590(v0[59], v0[60]);
  sub_100016590(v1, v2);
  if (qword_101694D10 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177BC88);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to generate attestation header: %{public}@.", v6, 0xCu);
    sub_100288C6C(v7);
  }

  else
  {
  }

  v9 = v0[52];
  v10 = v0[53];
  v0[25] = v9;
  v0[26] = v10;
  v11 = v0[24];

  sub_100017D5C(v9, v10);

  sub_100016590(v9, v10);
  v12 = v0[52];
  v13 = v0[53];

  v14 = v0[1];

  return v14(v11, v12, v13);
}

uint64_t type metadata accessor for OwnSubmitLocationInfo(uint64_t a1)
{
  result = qword_1016BA7A0;
  if (!qword_1016BA7A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100D51DC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OwnSubmitLocationInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100D51E24()
{
  result = qword_1016BA740;
  if (!qword_1016BA740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA740);
  }

  return result;
}

uint64_t sub_100D51E78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_100D51EC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100D51F64(uint64_t a1)
{
  *(a1 + 8) = sub_100D52D94(&qword_1016BA7D8, type metadata accessor for OwnSubmitLocationInfo, &unk_1013E5190);
  result = sub_100D52D94(&qword_1016BA7E0, type metadata accessor for OwnSubmitLocationInfo, &unk_1013E5168);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100D52030(uint64_t a1)
{
  *(a1 + 8) = sub_100D52060();
  result = sub_100D520B4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100D52060()
{
  result = qword_1016BA848;
  if (!qword_1016BA848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA848);
  }

  return result;
}

unint64_t sub_100D520B4()
{
  result = qword_1016BA850;
  if (!qword_1016BA850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA850);
  }

  return result;
}

unint64_t sub_100D52108()
{
  result = qword_1016BA860;
  if (!qword_1016BA860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA860);
  }

  return result;
}

unint64_t sub_100D5215C()
{
  result = qword_1016BA868;
  if (!qword_1016BA868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA868);
  }

  return result;
}

uint64_t sub_100D521B0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6570795479656BLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64496572616873 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701080941 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEC0000006F666E49)
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

uint64_t sub_100D523A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016BA898, &qword_1013E5310);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_100D52B60();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  LOBYTE(v26) = 0;
  sub_1000E307C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v10 = v30;
  v9 = v31;
  LOBYTE(v26) = 1;
  sub_100513224();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v25 = v9;
  LODWORD(v9) = v30;
  LOBYTE(v30) = 2;
  v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v23 = v9;
  v24 = v11;
  LOBYTE(v26) = 3;
  sub_10064666C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v21 = v30;
  LOBYTE(v26) = 4;
  sub_100513278();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v12 = v25;
  v20 = v30;
  sub_1000BC4D4(&qword_1016BA8A8, &qword_1013E5318);
  v38[0] = 5;
  sub_100D52BB4(&qword_1016BA8B0, &qword_1016BA7D8, &unk_1013E5190, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v19 = v39;
  *&v26 = v10;
  *(&v26 + 1) = v12;
  LOBYTE(v12) = v23;
  LOBYTE(v27) = v23;
  v13 = v22;
  v14 = v24;
  *(&v27 + 1) = v22;
  *&v28 = v24;
  v15 = v20;
  v16 = v21;
  BYTE8(v28) = v21;
  BYTE9(v28) = v20;
  v29 = v39;
  sub_1003CA224(&v26, &v30);
  sub_100007BAC(a1);
  v30 = v10;
  v31 = v25;
  v32 = v12;
  v33 = v13;
  v34 = v14;
  v35 = v16;
  v36 = v15;
  v37 = v19;
  result = sub_100D52C50(&v30);
  v18 = v27;
  *a2 = v26;
  *(a2 + 16) = v18;
  *(a2 + 32) = v28;
  *(a2 + 48) = v29;
  return result;
}

uint64_t sub_100D527EC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016BA880, &qword_1013E5308);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_100D52108();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v25 = 0;
  sub_100D52A94();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = v19;
  v18 = v20;
  v9 = v22;
  v10 = v24;
  v15 = v23;
  v16 = v21;
  sub_1000BC4D4(&qword_1016BA870, &qword_1013E5300);
  v25 = 1;
  sub_100D52AE8(&qword_1016BA890, sub_100D52060, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v12 = v18;
  v11 = v19;

  sub_100007BAC(a1);

  v14 = v16;
  *a2 = v17;
  a2[1] = v12;
  a2[2] = v14;
  a2[3] = v9;
  a2[4] = v15;
  a2[5] = v10;
  a2[6] = v11;
  return result;
}