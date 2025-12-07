uint64_t sub_1001857C8(uint64_t a1, char a2)
{
  *(v3 + 276) = a2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v2;
  v4 = type metadata accessor for OwnerSharingCircle(0);
  *(v3 + 112) = v4;
  v5 = *(v4 - 8);
  *(v3 + 120) = v5;
  *(v3 + 128) = *(v5 + 64);
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();

  return _swift_task_switch(sub_1001858D0, v2, 0);
}

uint64_t sub_1001858D0()
{
  v1 = *(*(v0 + 104) + 136);
  *(v0 + 184) = v1;
  return _swift_task_switch(sub_1001858F4, v1, 0);
}

uint64_t sub_1001858F4()
{

  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  v2 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v1 = v0;
  v1[1] = sub_1001859E0;
  v3 = *(v0 + 184);

  return unsafeBlocking<A>(context:_:)(v0 + 56, 0xD000000000000010, 0x800000010134A8C0, sub_100111F4C, v3, v2);
}

uint64_t sub_1001859E0()
{
  v1 = *(*v0 + 184);

  return _swift_task_switch(sub_100185AF8, v1, 0);
}

uint64_t sub_100185AF8()
{
  v1 = v0[13];
  v0[25] = v0[7];
  return _swift_task_switch(sub_100185B1C, v1, 0);
}

uint64_t sub_100185B1C()
{
  v1 = *(*(v0 + 200) + 16);
  *(v0 + 208) = v1;
  if (v1)
  {
    v2 = 0;
    v3 = *(v0 + 120);
    *(v0 + 272) = *(v3 + 80);
    *(v0 + 216) = *(v3 + 72);
    while (1)
    {
      *(v0 + 224) = v2;
      v4 = *(v0 + 176);
      v5 = *(v0 + 112);
      sub_1001BB2E0(*(v0 + 200) + ((*(v0 + 272) + 32) & ~*(v0 + 272)) + *(v0 + 216) * v2, v4, type metadata accessor for OwnerSharingCircle);
      v6 = *(v0 + 176);
      if (*(v4 + *(v5 + 36)) == 1)
      {
        break;
      }

      sub_1001BA80C(v6, type metadata accessor for OwnerSharingCircle);
      v2 = *(v0 + 224) + 1;
      if (v2 == *(v0 + 208))
      {
        goto LABEL_5;
      }
    }

    if (*(v6 + *(*(v0 + 112) + 28)) == 3)
    {

      return _swift_task_switch(sub_100185E6C, 0, 0);
    }

    else
    {
      v9 = swift_task_alloc();
      *(v0 + 232) = v9;
      *v9 = v0;
      v9[1] = sub_100185D40;
      v10 = *(v0 + 176);

      return sub_1001942F0(v10, 0);
    }
  }

  else
  {
LABEL_5:

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_100185D40()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 104);
  if (v0)
  {
    v4 = sub_100186984;
  }

  else
  {
    v4 = sub_1001BE4A0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100185E6C()
{
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v1 = swift_task_alloc();
  *(v0 + 248) = v1;
  *v1 = v0;
  v1[1] = sub_100185F10;

  return sub_1003AC554(v0 + 16);
}

uint64_t sub_100185F10(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 256) = a1;
  *(v3 + 264) = v1;

  sub_10000B3A8(v3 + 16, &unk_101698E08, &qword_101390A08);
  if (v1)
  {
    v4 = sub_1001863A0;
  }

  else
  {
    v4 = sub_10018603C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10018603C()
{
  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 256);
  v2 = *(v0 + 168);
  v3 = *(v0 + 104);
  v4 = (*(v0 + 272) + 24) & ~*(v0 + 272);
  sub_1001BB2E0(*(v0 + 176), v2, type metadata accessor for OwnerSharingCircle);
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  sub_1001BAAE8(v2, v5 + v4, type metadata accessor for OwnerSharingCircle);

  dispatch thunk of WorkItemQueue.enqueue(_:)();

  return _swift_task_switch(sub_1001861A0, v3, 0);
}

uint64_t sub_1001861A0()
{
  v1 = *(v0 + 176);
  while (1)
  {
    sub_1001BA80C(v1, type metadata accessor for OwnerSharingCircle);
    v2 = *(v0 + 224) + 1;
    if (v2 == *(v0 + 208))
    {
      break;
    }

    *(v0 + 224) = v2;
    v3 = *(v0 + 176);
    v4 = *(v0 + 112);
    sub_1001BB2E0(*(v0 + 200) + ((*(v0 + 272) + 32) & ~*(v0 + 272)) + *(v0 + 216) * v2, v3, type metadata accessor for OwnerSharingCircle);
    v1 = *(v0 + 176);
    if (*(v3 + *(v4 + 36)) == 1)
    {
      if (*(v1 + *(*(v0 + 112) + 28)) == 3)
      {

        return _swift_task_switch(sub_100185E6C, 0, 0);
      }

      else
      {
        v6 = swift_task_alloc();
        *(v0 + 232) = v6;
        *v6 = v0;
        v6[1] = sub_100185D40;
        v7 = *(v0 + 176);

        return sub_1001942F0(v7, 0);
      }
    }
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1001863BC()
{
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 176);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177A560);
  sub_1001BB2E0(v1, v2, type metadata accessor for OwnerSharingCircle);
  sub_1001BB2E0(v1, v3, type metadata accessor for OwnerSharingCircle);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v37 = v6;
    v7 = *(v0 + 276);
    v8 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *(v0 + 80) = swift_slowAlloc();
    *v8 = 136316419;
    if (v7)
    {
      v9 = 0;
      v10 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 88) = *(v0 + 96);
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      v10 = v15;
    }

    v35 = *(v0 + 176);
    v17 = *(v0 + 152);
    v16 = *(v0 + 160);
    v18 = sub_1000136BC(v9, v10, (v0 + 80));

    *(v8 + 4) = v18;
    *(v8 + 12) = 2160;
    *(v8 + 14) = 1752392040;
    *(v8 + 22) = 2081;
    type metadata accessor for UUID();
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    sub_1001BA80C(v16, type metadata accessor for OwnerSharingCircle);
    v22 = sub_1000136BC(v19, v21, (v0 + 80));

    *(v8 + 24) = v22;
    *(v8 + 32) = 2160;
    *(v8 + 34) = 1752392040;
    *(v8 + 42) = 2081;
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    sub_1001BA80C(v17, type metadata accessor for OwnerSharingCircle);
    v26 = sub_1000136BC(v23, v25, (v0 + 80));

    *(v8 + 44) = v26;
    *(v8 + 52) = 2114;
    swift_errorRetain();
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 54) = v27;
    *v36 = v27;
    _os_log_impl(&_mh_execute_header, v5, v37, "%s Failed to retry apns registration for: %{private,mask.hash}s, beacon: %{private,mask.hash}s error: %{public}@.", v8, 0x3Eu);
    sub_10000B3A8(v36, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();

    v14 = v35;
  }

  else
  {
    v11 = *(v0 + 176);
    v13 = *(v0 + 152);
    v12 = *(v0 + 160);

    sub_1001BA80C(v13, type metadata accessor for OwnerSharingCircle);
    sub_1001BA80C(v12, type metadata accessor for OwnerSharingCircle);
    v14 = v11;
  }

  do
  {
    sub_1001BA80C(v14, type metadata accessor for OwnerSharingCircle);
    v30 = *(v0 + 224) + 1;
    if (v30 == *(v0 + 208))
    {

      v31 = *(v0 + 8);

      return v31();
    }

    *(v0 + 224) = v30;
    v28 = *(v0 + 176);
    v29 = *(v0 + 112);
    sub_1001BB2E0(*(v0 + 200) + ((*(v0 + 272) + 32) & ~*(v0 + 272)) + *(v0 + 216) * v30, v28, type metadata accessor for OwnerSharingCircle);
    v14 = *(v0 + 176);
  }

  while (*(v28 + *(v29 + 36)) != 1);
  if (*(v14 + *(*(v0 + 112) + 28)) == 3)
  {

    return _swift_task_switch(sub_100185E6C, 0, 0);
  }

  else
  {
    v33 = swift_task_alloc();
    *(v0 + 232) = v33;
    *v33 = v0;
    v33[1] = sub_100185D40;
    v34 = *(v0 + 176);

    return sub_1001942F0(v34, 0);
  }
}

uint64_t sub_100186984()
{
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 176);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177A560);
  sub_1001BB2E0(v1, v2, type metadata accessor for OwnerSharingCircle);
  sub_1001BB2E0(v1, v3, type metadata accessor for OwnerSharingCircle);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v37 = v6;
    v7 = *(v0 + 276);
    v8 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *(v0 + 64) = swift_slowAlloc();
    *v8 = 136316419;
    if (v7)
    {
      v9 = 0;
      v10 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 72) = *(v0 + 96);
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      v10 = v15;
    }

    v35 = *(v0 + 176);
    v17 = *(v0 + 136);
    v16 = *(v0 + 144);
    v18 = sub_1000136BC(v9, v10, (v0 + 64));

    *(v8 + 4) = v18;
    *(v8 + 12) = 2160;
    *(v8 + 14) = 1752392040;
    *(v8 + 22) = 2081;
    type metadata accessor for UUID();
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    sub_1001BA80C(v16, type metadata accessor for OwnerSharingCircle);
    v22 = sub_1000136BC(v19, v21, (v0 + 64));

    *(v8 + 24) = v22;
    *(v8 + 32) = 2160;
    *(v8 + 34) = 1752392040;
    *(v8 + 42) = 2081;
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    sub_1001BA80C(v17, type metadata accessor for OwnerSharingCircle);
    v26 = sub_1000136BC(v23, v25, (v0 + 64));

    *(v8 + 44) = v26;
    *(v8 + 52) = 2114;
    swift_errorRetain();
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 54) = v27;
    *v36 = v27;
    _os_log_impl(&_mh_execute_header, v5, v37, "%s Failed to upload keys for circle: %{private,mask.hash}s, beacon: %{private,mask.hash}s error: %{public}@.", v8, 0x3Eu);
    sub_10000B3A8(v36, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();

    v14 = v35;
  }

  else
  {
    v11 = *(v0 + 176);
    v13 = *(v0 + 136);
    v12 = *(v0 + 144);

    sub_1001BA80C(v13, type metadata accessor for OwnerSharingCircle);
    sub_1001BA80C(v12, type metadata accessor for OwnerSharingCircle);
    v14 = v11;
  }

  do
  {
    sub_1001BA80C(v14, type metadata accessor for OwnerSharingCircle);
    v30 = *(v0 + 224) + 1;
    if (v30 == *(v0 + 208))
    {

      v31 = *(v0 + 8);

      return v31();
    }

    *(v0 + 224) = v30;
    v28 = *(v0 + 176);
    v29 = *(v0 + 112);
    sub_1001BB2E0(*(v0 + 200) + ((*(v0 + 272) + 32) & ~*(v0 + 272)) + *(v0 + 216) * v30, v28, type metadata accessor for OwnerSharingCircle);
    v14 = *(v0 + 176);
  }

  while (*(v28 + *(v29 + 36)) != 1);
  if (*(v14 + *(*(v0 + 112) + 28)) == 3)
  {

    return _swift_task_switch(sub_100185E6C, 0, 0);
  }

  else
  {
    v33 = swift_task_alloc();
    *(v0 + 232) = v33;
    *v33 = v0;
    v33[1] = sub_100185D40;
    v34 = *(v0 + 176);

    return sub_1001942F0(v34, 0);
  }
}

uint64_t sub_100186F6C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = *(Strong + 136);
    v0[9] = v2;

    return _swift_task_switch(sub_100187028, v2, 0);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_100187028()
{

  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  v2 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v1 = v0;
  v1[1] = sub_100187114;
  v3 = *(v0 + 72);

  return unsafeBlocking<A>(context:_:)(v0 + 40, 0xD000000000000010, 0x800000010134A8C0, sub_100111F4C, v3, v2);
}

uint64_t sub_100187114()
{
  v1 = *(*v0 + 72);

  return _swift_task_switch(sub_10018722C, v1, 0);
}

uint64_t sub_100187250()
{
  v1 = v0[8];
  v0[12] = *(v0[11] + 16);

  v2 = *(v1 + 136);
  v0[13] = v2;

  return _swift_task_switch(sub_1001872C8, v2, 0);
}

uint64_t sub_1001872C8()
{

  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  v2 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v1 = v0;
  v1[1] = sub_1001873B4;
  v3 = *(v0 + 104);

  return unsafeBlocking<A>(context:_:)(v0 + 48, 0xD000000000000010, 0x800000010134A8C0, sub_10012B4B8, v3, v2);
}

uint64_t sub_1001873B4()
{
  v1 = *(*v0 + 104);

  return _swift_task_switch(sub_1001874CC, v1, 0);
}

uint64_t sub_1001874F0()
{
  v1 = *(v0[15] + 16);

  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_1001875A8;
  v3 = v0[12];

  return sub_100ECA718(v3, v1);
}

uint64_t sub_1001875A8()
{

  return _swift_task_switch(sub_1001876A4, 0, 0);
}

uint64_t sub_1001876A4()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 64) != 0;

  return v1(v2);
}

uint64_t sub_100187710(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  sub_1000BC4D4(&qword_101698D18, &qword_1013908A8);
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_1001877AC, v1, 0);
}

uint64_t sub_1001877AC()
{
  v1 = v0[8];
  v2 = v0[6];
  swift_beginAccess();
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 16))(v1, v2, v3);
  sub_100A053FC(0, 0, v1);
  swift_endAccess();
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v0[9] = qword_10177B348;

  return _swift_task_switch(sub_1001878C4, 0, 0);
}

uint64_t sub_1001878C4()
{

  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_100187988;
  v2 = *(v0 + 72);

  return unsafeBlocking<A>(_:)(v0 + 40, sub_1000D2BE0, v2, &type metadata for Configuration);
}

uint64_t sub_100187988()
{

  return _swift_task_switch(sub_100187AA0, 0, 0);
}

uint64_t sub_100187AA0()
{
  v1 = v0[7];
  v0[11] = v0[5];
  return _swift_task_switch(sub_100187AC4, v1, 0);
}

uint64_t sub_100187AC4()
{
  v1 = v0[7];
  v2 = sub_101074AC8(v0[11]);

  v3 = *(*(v1 + 240) + 16);
  if (v3)
  {
    v4 = v3 > v2;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    sub_100187B6C(v3 - v2);
  }

  v5 = v0[1];

  return v5();
}

unint64_t sub_100187B6C(unint64_t result)
{
  if (result)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v2 = *(*v1 + 16);
      v3 = v2 >= result;
      result = v2 - result;
      if (v3)
      {
        return sub_100A07658(result, v2);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100187B94()
{
  v1 = type metadata accessor for XPCServiceDescription();
  v36 = *(v1 - 8);
  v37 = v1;
  __chkstk_darwin(v1);
  v33 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for MachServiceName();
  v38 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v33 - v7;
  MachServiceName.init(_:)();
  v9 = type metadata accessor for BeaconSharingService(0);
  v42 = v9;
  v43 = &off_101610E30;
  v41[0] = v0;
  v10 = type metadata accessor for BeaconSharingTrampoline();
  v11 = objc_allocWithZone(v10);
  v12 = sub_10015049C(v41, v42);
  __chkstk_darwin(v12);
  v14 = (&v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  v40[3] = v9;
  v40[4] = &off_101610E30;
  v40[0] = v16;
  sub_10001F280(v40, v11 + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation);
  v39.receiver = v11;
  v39.super_class = v10;

  v17 = objc_msgSendSuper2(&v39, "init");
  sub_100007BAC(v40);
  sub_100007BAC(v41);
  v18 = *(v0 + 176);
  *(v0 + 176) = v17;
  v19 = v17;

  v20 = *(v38 + 16);
  v34 = v3;
  v35 = v8;
  v20(v6, v8, v3);
  v21 = qword_101694490;
  v22 = v19;
  if (v21 != -1)
  {
    swift_once();
  }

  v23 = qword_101698698;
  v24 = objc_opt_self();
  v25 = v23;
  v26 = [v24 interfaceWithProtocol:&OBJC_PROTOCOL___SPBeaconSharingClientXPCProtocol];

  v27 = v33;
  XPCServiceDescription.init(name:options:exportedObject:exportedInterface:remoteObjectInterface:shouldAccept:interruptionHandler:invalidationHandler:)();
  XPCSessionManager.register(service:)();
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_1000076D4(v28, qword_10177A560);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "BeaconSharingService: Successfully registered XPC services.", v31, 2u);
  }

  (*(v36 + 8))(v27, v37);
  return (*(v38 + 8))(v35, v34);
}

id sub_100188020()
{
  result = sub_100188040();
  qword_101698698 = result;
  return result;
}

id sub_100188040()
{
  v0 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___SPBeaconSharingXPCProtocol];
  sub_100A47234();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10138BBE0;
  *(v1 + 32) = sub_100008BB8(0, &qword_101698CF8, NSSet_ptr);
  *(v1 + 40) = sub_100008BB8(0, &qword_101698D00, SPHandle_ptr);
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  sub_100A47234();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10138BBE0;
  *(v2 + 32) = sub_100008BB8(0, &qword_10169BAF0, NSArray_ptr);
  *(v2 + 40) = sub_100008BB8(0, &qword_101698D10, NSUUID_ptr);
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  return v0;
}

uint64_t sub_1001881A8(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 96) = a3;
  *(v3 + 56) = a1;
  *(v3 + 64) = a2;
  return _swift_task_switch(sub_1001881CC, 0, 0);
}

uint64_t sub_1001881CC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 96);
    v3 = *(v0 + 64);
    *(v0 + 40) = 0x6470556572616853;
    *(v0 + 48) = 0xEB00000000657461;
    v4 = Strong;
    v5 = swift_allocObject();
    *(v0 + 80) = v5;
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    *(v5 + 32) = v2 & 1;
    v9 = &async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:) + async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:);

    v6 = swift_task_alloc();
    *(v0 + 88) = v6;
    *v6 = v0;
    v6[1] = sub_100188388;

    return (v9)(v0 + 40, &unk_101390710, v5, SharingCircleWildAdvertisementKey.init(key:), 0);
  }

  else
  {
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_100188388()
{

  if (v0)
  {
  }

  return _swift_task_switch(sub_1001884B4, 0, 0);
}

uint64_t sub_1001884B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100188514(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 256) = a3;
  *(v3 + 120) = a1;
  *(v3 + 128) = a2;
  return _swift_task_switch(sub_100188538, 0, 0);
}

uint64_t sub_100188538()
{
  v1 = *(*(v0 + 120) + 192);
  *(v0 + 136) = v1;
  return _swift_task_switch(sub_10018855C, v1, 0);
}

uint64_t sub_10018855C()
{

  dispatch thunk of WorkItemQueue.enqueue(_:)();

  return _swift_task_switch(sub_100188614, 0, 0);
}

uint64_t sub_100188614()
{
  v18 = v0;
  v1 = *(*(v0 + 120) + 184);
  swift_beginAccess();
  v2 = *(v1 + 32);
  *(v0 + 144) = v2;
  if ((v2 & 0xC000000000000001) != 0)
  {

    if (__CocoaSet.count.getter())
    {
LABEL_3:
      v3 = swift_task_alloc();
      *(v0 + 152) = v3;
      *v3 = v0;
      v3[1] = sub_1001888B0;

      return sub_1001A6AA0(0, 0, 1);
    }
  }

  else
  {
    v5 = *(v2 + 16);

    if (v5)
    {
      goto LABEL_3;
    }
  }

  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177A560);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 256);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    if (v9)
    {
      v12 = 0;
      v13 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 112) = *(v0 + 128);
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      v13 = v14;
    }

    v15 = sub_1000136BC(v12, v13, &v17);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s BeaconSharingService: no sessions to notify for share updates.", v10, 0xCu);
    sub_100007BAC(v11);
  }

  v16 = *(v0 + 8);

  return v16(1);
}

uint64_t sub_1001888B0(uint64_t a1)
{
  *(*v1 + 160) = a1;

  return _swift_task_switch(sub_1001889B0, 0, 0);
}

uint64_t sub_1001889B0()
{
  v14 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A560);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 256);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    if (v4)
    {
      v7 = 0;
      v8 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 104) = *(v0 + 128);
      v7 = dispatch thunk of CustomStringConvertible.description.getter();
      v8 = v9;
    }

    v10 = sub_1000136BC(v7, v8, &v13);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s BeaconSharingService: Forwarding share updates to listeners.", v5, 0xCu);
    sub_100007BAC(v6);
  }

  v11 = *(*(v0 + 120) + 136);
  *(v0 + 168) = v11;

  return _swift_task_switch(sub_100188B6C, v11, 0);
}

uint64_t sub_100188B6C()
{
  v1 = v0[21];
  v2 = swift_allocObject();
  v0[22] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = 7;

  v3 = swift_task_alloc();
  v0[23] = v3;
  *v3 = v0;
  v3[1] = sub_100188C78;

  return unsafeBlocking<A>(context:_:)(v3, 0xD000000000000010, 0x800000010134A8C0, sub_1001BA7C4, v2, &type metadata for () + 1);
}

uint64_t sub_100188C78()
{
  v1 = *(*v0 + 168);

  return _swift_task_switch(sub_100188DA4, v1, 0);
}

uint64_t sub_100188DC0(void *a1, void (*a2)(uint64_t a1), uint64_t a3)
{
  v4 = *(v3 + 144);
  if ((v4 & 0xC000000000000001) == 0)
  {
    v7 = 0;
    v10 = -1;
    v11 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    if (-v11 < 64)
    {
      v10 = ~(-1 << -v11);
    }

    v8 = v10 & *(v4 + 56);
    *(v3 + 200) = v5;
    *(v3 + 208) = ~v11;
    *(v3 + 192) = v4;
    v9 = 63 - v11;
    goto LABEL_7;
  }

  __CocoaSet.makeIterator()();
  sub_1000BC4D4(&unk_1016C2240, &qword_1013F6350);
  sub_1000041A4(&unk_101698BE0, &unk_1016C2240, &qword_1013F6350, &protocol conformance descriptor for XPCSession<A>);
  a1 = Set.Iterator.init(_cocoa:)();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  v8 = *(v3 + 48);
  *(v3 + 200) = v5;
  *(v3 + 208) = v6;
  *(v3 + 192) = v4;
  if ((v4 & 0x8000000000000000) == 0)
  {
    v9 = v6 + 64;
LABEL_7:
    v12 = v8;
    v13 = v7;
    if (!v8)
    {
      v14 = v9 >> 6;
      v15 = v7;
      while (1)
      {
        v13 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          goto LABEL_19;
        }

        v12 = *(v5 + 8 * v13);
        ++v15;
        if (v12)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
      return XPCSession.proxy(errorHandler:)(a1, a2, a3);
    }

LABEL_12:
    v16 = (v12 - 1) & v12;
    v17 = *(*(v4 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

    goto LABEL_13;
  }

  v22 = __CocoaSet.Iterator.next()();
  if (!v22)
  {
    goto LABEL_19;
  }

  *(v3 + 96) = v22;
  sub_1000BC4D4(&unk_1016C2240, &qword_1013F6350);
  swift_dynamicCast();
  v17 = *(v3 + 88);
  v13 = v7;
  v16 = v8;
LABEL_13:
  *(v3 + 224) = v13;
  *(v3 + 232) = v16;
  *(v3 + 216) = v17;
  if (v17)
  {
    v18 = *(v3 + 256);
    v19 = *(v3 + 128);
    v20 = swift_allocObject();
    *(v3 + 240) = v20;
    *(v20 + 16) = v19;
    *(v20 + 24) = v18 & 1;
    v21 = swift_task_alloc();
    *(v3 + 248) = v21;
    *v21 = v3;
    v21[1] = sub_1001890AC;
    a2 = sub_1001BA7D0;
    a1 = (v3 + 80);
    a3 = v20;

    return XPCSession.proxy(errorHandler:)(a1, a2, a3);
  }

LABEL_19:
  sub_1000128F8(*(v3 + 192));

  v23 = *(v3 + 8);

  return v23(1);
}

uint64_t sub_1001890AC()
{

  return _swift_task_switch(sub_1001891C4, 0, 0);
}

uint64_t sub_1001891C4()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    sub_100008BB8(0, &unk_1016BBE80, SPBeaconShare_ptr);
    sub_100009CC8(&qword_101698BF0, &unk_1016BBE80, SPBeaconShare_ptr);
    swift_unknownObjectRetain();

    isa = Set._bridgeToObjectiveC()().super.isa;

    [v1 receivedUpdatedShares:isa];
    swift_unknownObjectRelease_n();
  }

  else
  {
  }

  v6 = *(v0 + 224);
  v7 = *(v0 + 232);
  v8 = *(v0 + 192);
  if (v8 < 0)
  {
    v14 = __CocoaSet.Iterator.next()();
    if (!v14)
    {
      goto LABEL_17;
    }

    *(v0 + 96) = v14;
    sub_1000BC4D4(&unk_1016C2240, &qword_1013F6350);
    swift_dynamicCast();
    v13 = *(v0 + 88);
    v10 = v6;
    v12 = v7;
  }

  else
  {
    v9 = *(v0 + 232);
    v10 = *(v0 + 224);
    if (!v7)
    {
      v11 = *(v0 + 224);
      while (1)
      {
        v10 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v10 >= ((*(v0 + 208) + 64) >> 6))
        {
          goto LABEL_17;
        }

        v9 = *(*(v0 + 200) + 8 * v10);
        ++v11;
        if (v9)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
      return XPCSession.proxy(errorHandler:)(v3, v4, v5);
    }

LABEL_10:
    v12 = (v9 - 1) & v9;
    v13 = *(*(v8 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v9)))));
  }

  *(v0 + 224) = v10;
  *(v0 + 232) = v12;
  *(v0 + 216) = v13;
  if (v13)
  {
    v15 = *(v0 + 256);
    v16 = *(v0 + 128);
    v17 = swift_allocObject();
    *(v0 + 240) = v17;
    *(v17 + 16) = v16;
    *(v17 + 24) = v15 & 1;
    v18 = swift_task_alloc();
    *(v0 + 248) = v18;
    *v18 = v0;
    v18[1] = sub_1001890AC;
    v4 = sub_1001BA7D0;
    v3 = v0 + 80;
    v5 = v17;

    return XPCSession.proxy(errorHandler:)(v3, v4, v5);
  }

LABEL_17:
  sub_1000128F8(*(v0 + 192));

  v19 = *(v0 + 8);

  return v19(1);
}

void sub_1001894A4(uint64_t a1, uint64_t a2, char a3)
{
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177A560);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v6 = 136315394;
    if (a3)
    {
      v9 = 0;
      v10 = 0xE000000000000000;
    }

    else
    {
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      v10 = v11;
    }

    v12 = sub_1000136BC(v9, v10, &v15);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v13;
    *v7 = v13;
    _os_log_impl(&_mh_execute_header, oslog, v5, "%s BeaconSharingService: failed to create reverse-proxy to forward shares %@.", v6, 0x16u);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v8);
  }

  else
  {
  }
}

uint64_t sub_1001896BC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for UUID();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v2[7] = *(v4 + 64);
  v2[8] = swift_task_alloc();
  v5 = type metadata accessor for OwnerSharingCircle(0);
  v2[9] = v5;
  v2[10] = *(v5 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_100189804, v1, 0);
}

uint64_t sub_100189804()
{
  v1 = *(v0[4] + 136);
  v0[15] = v1;
  v0[16] = sub_100B08164(&off_101608210);

  return _swift_task_switch(sub_100189880, v1, 0);
}

uint64_t sub_100189880()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 24);
  v8 = *(v6 + 16);
  *(v0 + 136) = v8;
  *(v0 + 144) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v4, v7, v5);
  v9 = *(v6 + 80);
  *(v0 + 216) = v9;
  v10 = (v9 + 24) & ~v9;
  v11 = (v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v0 + 152) = v12;
  *(v12 + 16) = v1;
  (*(v6 + 32))(v12 + v10, v4, v5);
  *(v12 + v11) = v2;

  v13 = swift_task_alloc();
  *(v0 + 160) = v13;
  v14 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v13 = v0;
  v13[1] = sub_100189A24;

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4AC, v12, v14);
}

uint64_t sub_100189A24()
{
  v1 = *(*v0 + 120);

  return _swift_task_switch(sub_100189B50, v1, 0);
}

uint64_t sub_100189B50()
{
  v1 = v0[4];
  v0[21] = v0[2];
  return _swift_task_switch(sub_100189B74, v1, 0);
}

uint64_t sub_100189B74()
{
  v1 = v0[21];
  if (*(v1 + 16))
  {
    v2 = v0[13];
    v3 = v0[14];
    v4 = v0[4];
    v5 = *(v0[10] + 80);
    sub_1001BB2E0(v1 + ((v5 + 32) & ~v5), v2, type metadata accessor for OwnerSharingCircle);

    sub_1001BAAE8(v2, v3, type metadata accessor for OwnerSharingCircle);
    v6 = *(v4 + 200);
    v7 = swift_task_alloc();
    v0[22] = v7;
    *v7 = v0;
    v7[1] = sub_100189D10;
    v8 = v0[14];

    return sub_1003BF348(v8, 0, v6);
  }

  else
  {

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_100189D10()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_10018A0B0;
  }

  else
  {
    v4 = sub_100189E3C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100189E3C()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 136);
  v3 = *(v0 + 112);
  v4 = *(v0 + 72);
  v5 = *(v0 + 40);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v6 = (v1 + 32) & ~v1;
  v7 = swift_allocObject();
  *(v0 + 192) = v7;
  *(v7 + 16) = xmmword_101385D80;
  v2(v7 + v6, v3 + *(v4 + 20), v5);
  v8 = swift_task_alloc();
  *(v0 + 200) = v8;
  *v8 = v0;
  v8[1] = sub_100189F50;

  return sub_10018A968(v7);
}

uint64_t sub_100189F50()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_10018A544;
  }

  else
  {
    v5 = *(v2 + 32);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v4 = sub_10018A498;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10018A0B0()
{
  v28 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177A560);
  sub_1001BB2E0(v1, v2, type metadata accessor for OwnerSharingCircle);
  sub_1001BB2E0(v1, v3, type metadata accessor for OwnerSharingCircle);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[14];
  v9 = v0[11];
  v10 = v0[12];
  if (v7)
  {
    v26 = v0[14];
    v11 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v11 = 141559043;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    v24 = v6;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    sub_1001BA80C(v10, type metadata accessor for OwnerSharingCircle);
    v15 = sub_1000136BC(v12, v14, &v27);

    *(v11 + 14) = v15;
    *(v11 + 22) = 2160;
    *(v11 + 24) = 1752392040;
    *(v11 + 32) = 2081;
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    sub_1001BA80C(v9, type metadata accessor for OwnerSharingCircle);
    v19 = sub_1000136BC(v16, v18, &v27);

    *(v11 + 34) = v19;
    *(v11 + 42) = 2114;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 44) = v20;
    *v25 = v20;
    _os_log_impl(&_mh_execute_header, v5, v24, "Failed to enable lost mode on key drop for circle: %{private,mask.hash}s, beacon: %{private,mask.hash}s error: %{public}@.", v11, 0x34u);
    sub_10000B3A8(v25, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();

    v21 = v26;
  }

  else
  {

    sub_1001BA80C(v9, type metadata accessor for OwnerSharingCircle);
    sub_1001BA80C(v10, type metadata accessor for OwnerSharingCircle);
    v21 = v8;
  }

  sub_1001BA80C(v21, type metadata accessor for OwnerSharingCircle);

  v22 = v0[1];

  return v22();
}

uint64_t sub_10018A498()
{
  sub_1001BA80C(*(v0 + 112), type metadata accessor for OwnerSharingCircle);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10018A544()
{
  v28 = v0;
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177A560);
  sub_1001BB2E0(v1, v2, type metadata accessor for OwnerSharingCircle);
  sub_1001BB2E0(v1, v3, type metadata accessor for OwnerSharingCircle);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[14];
  v9 = v0[11];
  v10 = v0[12];
  if (v7)
  {
    v26 = v0[14];
    v11 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v11 = 141559043;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    v24 = v6;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    sub_1001BA80C(v10, type metadata accessor for OwnerSharingCircle);
    v15 = sub_1000136BC(v12, v14, &v27);

    *(v11 + 14) = v15;
    *(v11 + 22) = 2160;
    *(v11 + 24) = 1752392040;
    *(v11 + 32) = 2081;
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    sub_1001BA80C(v9, type metadata accessor for OwnerSharingCircle);
    v19 = sub_1000136BC(v16, v18, &v27);

    *(v11 + 34) = v19;
    *(v11 + 42) = 2114;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 44) = v20;
    *v25 = v20;
    _os_log_impl(&_mh_execute_header, v5, v24, "Failed to enable lost mode on key drop for circle: %{private,mask.hash}s, beacon: %{private,mask.hash}s error: %{public}@.", v11, 0x34u);
    sub_10000B3A8(v25, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();

    v21 = v26;
  }

  else
  {

    sub_1001BA80C(v9, type metadata accessor for OwnerSharingCircle);
    sub_1001BA80C(v10, type metadata accessor for OwnerSharingCircle);
    v21 = v8;
  }

  sub_1001BA80C(v21, type metadata accessor for OwnerSharingCircle);

  v22 = v0[1];

  return v22();
}

uint64_t sub_10018A968(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for UUID();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for OwnerSharingCircle(0);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[12] = v5;
  *v5 = v2;
  v5[1] = sub_10018AAC0;

  return daemon.getter();
}

uint64_t sub_10018AAC0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 104) = a1;

  v3 = swift_task_alloc();
  *(v2 + 112) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for CircleTrustService();
  v6 = sub_1001B8FE4(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1001B8FE4(&unk_101698CE0, type metadata accessor for CircleTrustService, &unk_1013E49D8);
  *v3 = v9;
  v3[1] = sub_10018AC9C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10018AC9C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v4 = sub_10018B5DC;
  }

  else
  {

    v4 = sub_10018ADB8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10018ADB8()
{
  v1 = v0[4];

  v0[17] = sub_10000954C(v2);

  v3 = *(v1 + 136);
  v0[18] = v3;

  return _swift_task_switch(sub_10018AE38, v3, 0);
}

uint64_t sub_10018AE38()
{

  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  v2 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v1 = v0;
  v1[1] = sub_10018AF24;
  v3 = *(v0 + 144);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_100111F4C, v3, v2);
}

uint64_t sub_10018AF24()
{
  v1 = *(*v0 + 144);

  return _swift_task_switch(sub_10018B03C, v1, 0);
}

void sub_10018B060()
{
  v1 = v0[20];
  v22 = *(v1 + 16);
  if (v22)
  {
    v2 = 0;
    v20 = v0[9];
    v27 = v0[17];
    v26 = v27 + 56;
    v18 = v0[6];
    v19 = _swiftEmptyArrayStorage;
    v21 = v0[20];
    while (v2 < *(v1 + 16))
    {
      v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
      v25 = v2;
      v23 = *(v20 + 72);
      sub_1001BB2E0(v0[20] + v24 + v23 * v2, v0[11], type metadata accessor for OwnerSharingCircle);
      if (*(v27 + 16) && (sub_1001B8FE4(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID), v3 = dispatch thunk of Hashable._rawHashValue(seed:)(), v4 = -1 << *(v27 + 32), v5 = v3 & ~v4, ((*(v26 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
      {
        v6 = ~v4;
        v7 = *(v18 + 72);
        v8 = *(v18 + 16);
        while (1)
        {
          v9 = v0[7];
          v10 = v0[5];
          v8(v9, *(v27 + 48) + v5 * v7, v10);
          sub_1001B8FE4(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v11 = dispatch thunk of static Equatable.== infix(_:_:)();
          (*(v18 + 8))(v9, v10);
          if (v11)
          {
            break;
          }

          v5 = (v5 + 1) & v6;
          if (((*(v26 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        sub_1001BAAE8(v0[11], v0[10], type metadata accessor for OwnerSharingCircle);
        v12 = v19;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_101123FE4(0, v19[2] + 1, 1);
          v12 = v19;
        }

        v14 = v12[2];
        v13 = v12[3];
        if (v14 >= v13 >> 1)
        {
          sub_101123FE4((v13 > 1), v14 + 1, 1);
          v12 = v19;
        }

        v15 = v0[10];
        v12[2] = v14 + 1;
        v19 = v12;
        sub_1001BAAE8(v15, v12 + v24 + v14 * v23, type metadata accessor for OwnerSharingCircle);
      }

      else
      {
LABEL_3:
        sub_1001BA80C(v0[11], type metadata accessor for OwnerSharingCircle);
      }

      v2 = v25 + 1;
      v1 = v21;
      if (v25 + 1 == v22)
      {
        v16 = v19;
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
LABEL_19:
    v0[21] = v16;

    v17 = swift_task_alloc();
    v0[22] = v17;
    *v17 = v0;
    v17[1] = sub_10018B420;

    sub_100D276D8(v16);
  }
}

uint64_t sub_10018B420()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_10018B664;
  }

  else
  {
    v2 = sub_10018B550;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10018B550()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10018B5DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10018B664()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10018B6EC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for UUID();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v2[7] = *(v4 + 64);
  v2[8] = swift_task_alloc();
  v5 = type metadata accessor for OwnerSharingCircle(0);
  v2[9] = v5;
  v2[10] = *(v5 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_10018B834, v1, 0);
}

uint64_t sub_10018B834()
{
  v1 = *(v0[4] + 136);
  v0[15] = v1;
  v0[16] = sub_100B08164(&off_101608238);

  return _swift_task_switch(sub_10018B8B0, v1, 0);
}

uint64_t sub_10018B8B0()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 24);
  v8 = *(v6 + 16);
  *(v0 + 136) = v8;
  *(v0 + 144) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v4, v7, v5);
  v9 = *(v6 + 80);
  *(v0 + 216) = v9;
  v10 = (v9 + 24) & ~v9;
  v11 = (v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v0 + 152) = v12;
  *(v12 + 16) = v1;
  (*(v6 + 32))(v12 + v10, v4, v5);
  *(v12 + v11) = v2;

  v13 = swift_task_alloc();
  *(v0 + 160) = v13;
  v14 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v13 = v0;
  v13[1] = sub_10018BA54;

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4AC, v12, v14);
}

uint64_t sub_10018BA54()
{
  v1 = *(*v0 + 120);

  return _swift_task_switch(sub_10018BB80, v1, 0);
}

uint64_t sub_10018BB80()
{
  v1 = v0[4];
  v0[21] = v0[2];
  return _swift_task_switch(sub_10018BBA4, v1, 0);
}

uint64_t sub_10018BBA4()
{
  v1 = v0[21];
  if (*(v1 + 16))
  {
    v2 = v0[13];
    v3 = v0[14];
    v4 = v0[4];
    v5 = *(v0[10] + 80);
    sub_1001BB2E0(v1 + ((v5 + 32) & ~v5), v2, type metadata accessor for OwnerSharingCircle);

    sub_1001BAAE8(v2, v3, type metadata accessor for OwnerSharingCircle);
    v6 = *(v4 + 200);
    v7 = swift_task_alloc();
    v0[22] = v7;
    *v7 = v0;
    v7[1] = sub_10018BD40;
    v8 = v0[14];

    return sub_1003C53CC(v8, 0, v6);
  }

  else
  {

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_10018BD40()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_10018C0E0;
  }

  else
  {
    v4 = sub_10018BE6C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10018BE6C()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 136);
  v3 = *(v0 + 112);
  v4 = *(v0 + 72);
  v5 = *(v0 + 40);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v6 = (v1 + 32) & ~v1;
  v7 = swift_allocObject();
  *(v0 + 192) = v7;
  *(v7 + 16) = xmmword_101385D80;
  v2(v7 + v6, v3 + *(v4 + 20), v5);
  v8 = swift_task_alloc();
  *(v0 + 200) = v8;
  *v8 = v0;
  v8[1] = sub_10018BF80;

  return sub_10018A968(v7);
}

uint64_t sub_10018BF80()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_10018C4C8;
  }

  else
  {
    v5 = *(v2 + 32);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v4 = sub_1001BE494;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10018C0E0()
{
  v28 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177A560);
  sub_1001BB2E0(v1, v2, type metadata accessor for OwnerSharingCircle);
  sub_1001BB2E0(v1, v3, type metadata accessor for OwnerSharingCircle);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[14];
  v9 = v0[11];
  v10 = v0[12];
  if (v7)
  {
    v26 = v0[14];
    v11 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v11 = 141559043;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    v24 = v6;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    sub_1001BA80C(v10, type metadata accessor for OwnerSharingCircle);
    v15 = sub_1000136BC(v12, v14, &v27);

    *(v11 + 14) = v15;
    *(v11 + 22) = 2160;
    *(v11 + 24) = 1752392040;
    *(v11 + 32) = 2081;
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    sub_1001BA80C(v9, type metadata accessor for OwnerSharingCircle);
    v19 = sub_1000136BC(v16, v18, &v27);

    *(v11 + 34) = v19;
    *(v11 + 42) = 2114;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 44) = v20;
    *v25 = v20;
    _os_log_impl(&_mh_execute_header, v5, v24, "Failed to disable lost mode on key drop for circle: %{private,mask.hash}s, beacon: %{private,mask.hash}s error: %{public}@.", v11, 0x34u);
    sub_10000B3A8(v25, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();

    v21 = v26;
  }

  else
  {

    sub_1001BA80C(v9, type metadata accessor for OwnerSharingCircle);
    sub_1001BA80C(v10, type metadata accessor for OwnerSharingCircle);
    v21 = v8;
  }

  sub_1001BA80C(v21, type metadata accessor for OwnerSharingCircle);

  v22 = v0[1];

  return v22();
}

uint64_t sub_10018C4C8()
{
  v28 = v0;
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177A560);
  sub_1001BB2E0(v1, v2, type metadata accessor for OwnerSharingCircle);
  sub_1001BB2E0(v1, v3, type metadata accessor for OwnerSharingCircle);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[14];
  v9 = v0[11];
  v10 = v0[12];
  if (v7)
  {
    v26 = v0[14];
    v11 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v11 = 141559043;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    v24 = v6;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    sub_1001BA80C(v10, type metadata accessor for OwnerSharingCircle);
    v15 = sub_1000136BC(v12, v14, &v27);

    *(v11 + 14) = v15;
    *(v11 + 22) = 2160;
    *(v11 + 24) = 1752392040;
    *(v11 + 32) = 2081;
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    sub_1001BA80C(v9, type metadata accessor for OwnerSharingCircle);
    v19 = sub_1000136BC(v16, v18, &v27);

    *(v11 + 34) = v19;
    *(v11 + 42) = 2114;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 44) = v20;
    *v25 = v20;
    _os_log_impl(&_mh_execute_header, v5, v24, "Failed to disable lost mode on key drop for circle: %{private,mask.hash}s, beacon: %{private,mask.hash}s error: %{public}@.", v11, 0x34u);
    sub_10000B3A8(v25, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();

    v21 = v26;
  }

  else
  {

    sub_1001BA80C(v9, type metadata accessor for OwnerSharingCircle);
    sub_1001BA80C(v10, type metadata accessor for OwnerSharingCircle);
    v21 = v8;
  }

  sub_1001BA80C(v21, type metadata accessor for OwnerSharingCircle);

  v22 = v0[1];

  return v22();
}

uint64_t sub_10018C8EC()
{

  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconSharingService_pendingExpirationTask, &qword_101698C08, &unk_101390730);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10018C9CC()
{
  sub_10018C8EC();

  return _swift_defaultActor_deallocate(v0);
}

void sub_10018CA00(uint64_t a1)
{
  sub_10018CAF0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10018CAF0(uint64_t a1)
{
  if (!qword_1016988A0)
  {
    type metadata accessor for BeaconSharingService.PendingExpirationTask(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1016988A0);
    }
  }
}

void sub_10018CB90(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_10018CC14(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10018CC14(uint64_t a1)
{
  if (!qword_101698B78[0])
  {
    sub_1000BC580(&qword_101696960, &unk_10138B220);
    v1 = type metadata accessor for Task();
    if (!v2)
    {
      atomic_store(v1, qword_101698B78);
    }
  }
}

uint64_t sub_10018CC8C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for BeaconSharingService(0);
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v5, a2);
}

uint64_t sub_10018CD38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for BeaconSharingService(0);
  *v8 = v4;
  v8[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v9, a4);
}

uint64_t sub_10018CE00(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for BeaconSharingService(0);
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v5, a2);
}

uint64_t sub_10018CEAC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_100173058();
}

uint64_t sub_10018CF38()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003633C;

  return sub_10017D190();
}

uint64_t sub_10018CFC4()
{
  type metadata accessor for BeaconSharingService(0);
  sub_1001B8FE4(&unk_101696950, type metadata accessor for BeaconSharingService, &unk_101390650);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_10018D030()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_10018D0C0();
}

uint64_t sub_10018D0C0()
{
  v1[3] = v0;
  v2 = type metadata accessor for OwnerSharingCircle(0);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v3 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v1[8] = v3;
  v1[9] = *(v3 + 64);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[12] = v4;
  *v4 = v1;
  v4[1] = sub_10018D234;

  return daemon.getter();
}

uint64_t sub_10018D234(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 104) = a1;

  v3 = swift_task_alloc();
  *(v2 + 112) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DelegatedShareMetadataService();
  v6 = sub_1001B8FE4(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1001B8FE4(&unk_101698C70, type metadata accessor for DelegatedShareMetadataService, &unk_1013BB8D0);
  *v3 = v9;
  v3[1] = sub_10018D410;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10018D410(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 120) = a1;

  v4 = *(v3 + 24);
  if (v1)
  {

    v5 = sub_10018DEBC;
  }

  else
  {

    v5 = sub_10018D574;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10018D574()
{
  v1 = v0[11];
  v2 = *(v0[3] + 136);
  v0[16] = v2;
  v3 = type metadata accessor for UUID();
  v0[17] = v3;
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);

  return _swift_task_switch(sub_10018D628, v2, 0);
}

uint64_t sub_10018D628()
{
  v1 = v0[16];
  v2 = v0[10];
  v4 = v0[8];
  v3 = v0[9];
  sub_1000D2A70(v0[11], v2, &qword_1016980D0, &unk_10138F3B0);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = v5 + v3;
  v7 = swift_allocObject();
  v0[18] = v7;
  *(v7 + 16) = v1;
  sub_1000D2AD8(v2, v7 + v5, &qword_1016980D0, &unk_10138F3B0);
  *(v7 + v6) = 1;

  v8 = swift_task_alloc();
  v0[19] = v8;
  v9 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v8 = v0;
  v8[1] = sub_10018D7A4;

  return unsafeBlocking<A>(context:_:)(v0 + 2, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3164, v7, v9);
}

uint64_t sub_10018D7A4()
{
  v1 = *(*v0 + 128);

  return _swift_task_switch(sub_10018D8D0, v1, 0);
}

uint64_t sub_10018D8D0()
{
  v1 = v0[3];
  sub_10000B3A8(v0[11], &qword_1016980D0, &unk_10138F3B0);
  v0[20] = v0[2];

  return _swift_task_switch(sub_10018D954, v1, 0);
}

uint64_t sub_10018D954()
{
  v1 = *(v0 + 160);
  v2 = *(v1 + 16);
  *(v0 + 168) = v2;
  if (v2)
  {
    v4 = *(v0 + 32);
    v3 = *(v0 + 40);
    v5 = *(v3 + 80);
    *(v0 + 208) = v5;
    *(v0 + 176) = *(v3 + 72);
    *(v0 + 184) = 0;
    v6 = *(v0 + 56);
    sub_1001BB2E0(v1 + ((v5 + 32) & ~v5), v6, type metadata accessor for OwnerSharingCircle);
    v7 = *(v4 + 20);
    v8 = swift_task_alloc();
    *(v0 + 192) = v8;
    *v8 = v0;
    v8[1] = sub_10018DB60;

    return sub_1007AFF7C(v6 + v7);
  }

  else
  {

    type metadata accessor for Transaction();
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = 0;
    *(v11 + 32) = 1;

    static Transaction.asyncTask(name:block:)();

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_10018DB60()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_10018DFF4;
  }

  else
  {
    v4 = sub_10018DC8C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10018DC8C()
{
  sub_1001BA80C(*(v0 + 56), type metadata accessor for OwnerSharingCircle);
  v1 = *(v0 + 184) + 1;
  if (v1 == *(v0 + 168))
  {

    type metadata accessor for Transaction();
    v2 = swift_allocObject();
    swift_weakInit();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    *(v3 + 24) = 0;
    *(v3 + 32) = 1;

    static Transaction.asyncTask(name:block:)();

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    *(v0 + 184) = v1;
    v6 = *(v0 + 56);
    v7 = *(v0 + 32);
    sub_1001BB2E0(*(v0 + 160) + ((*(v0 + 208) + 32) & ~*(v0 + 208)) + *(v0 + 176) * v1, v6, type metadata accessor for OwnerSharingCircle);
    v8 = *(v7 + 20);
    v9 = swift_task_alloc();
    *(v0 + 192) = v9;
    *v9 = v0;
    v9[1] = sub_10018DB60;

    return sub_1007AFF7C(v6 + v8);
  }
}

uint64_t sub_10018DEBC()
{
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177AE28);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing service: DelegatedShareMetadataService", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10018DFF4()
{
  v27 = v0;
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177AE28);
  sub_1001BB2E0(v2, v1, type metadata accessor for OwnerSharingCircle);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 48);
    v25 = *(v0 + 56);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 141558275;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    sub_1001BA80C(v6, type metadata accessor for OwnerSharingCircle);
    v12 = sub_1000136BC(v9, v11, &v26);

    *(v7 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error fetching delegated share metadata for %{private,mask.hash}s", v7, 0x16u);
    sub_100007BAC(v8);

    v13 = v25;
  }

  else
  {
    v15 = *(v0 + 48);
    v14 = *(v0 + 56);

    sub_1001BA80C(v15, type metadata accessor for OwnerSharingCircle);
    v13 = v14;
  }

  sub_1001BA80C(v13, type metadata accessor for OwnerSharingCircle);
  v16 = *(v0 + 184) + 1;
  if (v16 == *(v0 + 168))
  {

    type metadata accessor for Transaction();
    v17 = swift_allocObject();
    swift_weakInit();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 1;

    static Transaction.asyncTask(name:block:)();

    v19 = *(v0 + 8);

    return v19();
  }

  else
  {
    *(v0 + 184) = v16;
    v21 = *(v0 + 56);
    v22 = *(v0 + 32);
    sub_1001BB2E0(*(v0 + 160) + ((*(v0 + 208) + 32) & ~*(v0 + 208)) + *(v0 + 176) * v16, v21, type metadata accessor for OwnerSharingCircle);
    v23 = *(v22 + 20);
    v24 = swift_task_alloc();
    *(v0 + 192) = v24;
    *v24 = v0;
    v24[1] = sub_10018DB60;

    return sub_1007AFF7C(v21 + v23);
  }
}

uint64_t sub_10018E438(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 136) = a3;
  *(v4 + 144) = v3;
  *(v4 + 128) = a2;
  *(v4 + 216) = a1;
  return _swift_task_switch(sub_10018E460, v3, 0);
}

uint64_t sub_10018E460()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 128);
  v3 = *(v0 + 216);
  *(v0 + 152) = sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
  inited = swift_initStackObject();
  *(v0 + 160) = inited;
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = v3;
  *(inited + 40) = v2;
  *(inited + 48) = v1;

  v5 = swift_task_alloc();
  *(v0 + 168) = v5;
  *v5 = v0;
  v5[1] = sub_10018E558;

  return sub_101268B0C(inited);
}

uint64_t sub_10018E558(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 176) = a1;

  v4 = *(v3 + 160);
  v5 = *(v3 + 144);
  if (v1)
  {

    swift_setDeallocating();
    sub_1001BAE8C(v4 + 32);
    v6 = sub_10018EEF0;
  }

  else
  {
    swift_setDeallocating();
    sub_1001BAE8C(v4 + 32);
    v6 = sub_10018E6CC;
  }

  return _swift_task_switch(v6, v5, 0);
}

char *sub_10018E6CC()
{
  if (*(*(v0 + 176) + 16))
  {
    v1 = sub_100772110(*(v0 + 216), *(v0 + 128), *(v0 + 136));
    if (v2)
    {
      v3 = *(*(*(v0 + 176) + 56) + 8 * v1);

      if (v3 >> 62)
      {
        v4 = _CocoaArrayWrapper.endIndex.getter();
        if (v4)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v4)
        {
LABEL_5:
          result = sub_1011244D8(0, v4 & ~(v4 >> 63), 0);
          if (v4 < 0)
          {
            __break(1u);
            return result;
          }

          v6 = 0;
          do
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v7 = *(v3 + 8 * v6 + 32);
            }

            v8 = v7;
            v9 = [v7 pushToken];
            v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v12 = v11;

            v14 = _swiftEmptyArrayStorage[2];
            v13 = _swiftEmptyArrayStorage[3];
            if (v14 >= v13 >> 1)
            {
              sub_1011244D8((v13 > 1), v14 + 1, 1);
            }

            ++v6;
            _swiftEmptyArrayStorage[2] = v14 + 1;
            v15 = &_swiftEmptyArrayStorage[2 * v14];
            v15[4] = v10;
            v15[5] = v12;
          }

          while (v4 != v6);
        }
      }

      v16 = sub_101129EC8(_swiftEmptyArrayStorage);

      goto LABEL_17;
    }
  }

  v16 = &_swiftEmptySetSingleton;
LABEL_17:
  *(v0 + 184) = v16;
  v18 = *(v0 + 128);
  v17 = *(v0 + 136);
  v19 = *(v0 + 216);
  inited = swift_initStackObject();
  *(v0 + 192) = inited;
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = v19;
  *(inited + 40) = v18;
  *(inited + 48) = v17;

  v21 = swift_task_alloc();
  *(v0 + 200) = v21;
  *v21 = v0;
  v21[1] = sub_10018E944;

  return sub_101268B0C(inited);
}

uint64_t sub_10018E944(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 208) = a1;

  v4 = *(v3 + 192);
  v5 = *(v3 + 144);
  if (v1)
  {

    swift_setDeallocating();
    sub_1001BAE8C(v4 + 32);
    v6 = sub_10018EFDC;
  }

  else
  {
    swift_setDeallocating();
    sub_1001BAE8C(v4 + 32);
    v6 = sub_10018EAB8;
  }

  return _swift_task_switch(v6, v5, 0);
}

char *sub_10018EAB8()
{
  v35 = v0;
  if (*(*(v0 + 208) + 16))
  {
    v1 = sub_100772110(*(v0 + 216), *(v0 + 128), *(v0 + 136));
    if (v2)
    {
      v3 = *(*(*(v0 + 208) + 56) + 8 * v1);

      if (v3 >> 62)
      {
        v4 = _CocoaArrayWrapper.endIndex.getter();
        if (v4)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v4)
        {
LABEL_5:
          v34 = _swiftEmptyArrayStorage;
          result = sub_1011244D8(0, v4 & ~(v4 >> 63), 0);
          if (v4 < 0)
          {
            __break(1u);
            return result;
          }

          v6 = 0;
          v7 = v34;
          do
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v8 = *(v3 + 8 * v6 + 32);
            }

            v9 = v8;
            v10 = [v8 pushToken];
            v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v13 = v12;

            v34 = v7;
            v15 = v7[2];
            v14 = v7[3];
            if (v15 >= v14 >> 1)
            {
              sub_1011244D8((v14 > 1), v15 + 1, 1);
              v7 = v34;
            }

            ++v6;
            v7[2] = v15 + 1;
            v16 = &v7[2 * v15];
            v16[4] = v11;
            v16[5] = v13;
          }

          while (v4 != v6);

          goto LABEL_17;
        }
      }

      v7 = _swiftEmptyArrayStorage;
LABEL_17:
      v17 = sub_101129EC8(v7);

      goto LABEL_18;
    }
  }

  v17 = &_swiftEmptySetSingleton;
LABEL_18:
  v18 = *(v0 + 184);
  if (v17[2] <= *(v18 + 16) >> 3)
  {
    v34 = *(v0 + 184);
    sub_10087D37C(v17);

    v19 = v34;
  }

  else
  {
    v19 = sub_10060EAD8(v17, *(v0 + 184));
  }

  v20 = v19[2];
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_1000076D4(v21, qword_10177A560);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = *(v0 + 128);
    v32 = *(v0 + 136);
    v25 = swift_slowAlloc();
    v33 = v20;
    v34 = swift_slowAlloc();
    v26 = v34;
    *v25 = 141559043;
    *(v25 + 4) = 1752392040;
    *(v25 + 12) = 2081;
    *(v25 + 14) = sub_1000136BC(v24, v32, &v34);
    v27 = v0;
    *(v25 + 22) = 2048;
    v28 = *(v18 + 16);

    *(v25 + 24) = v28;

    *(v25 + 32) = 2048;
    v29 = v17[2];

    *(v25 + 34) = v29;

    *(v25 + 42) = 2048;
    v30 = v19[2];

    *(v25 + 44) = v30;
    v0 = v27;

    _os_log_impl(&_mh_execute_header, v22, v23, "                Destination: %{private,mask.hash}s reported legacy endpoints: %ld, endpoints: %ld, remaining Legacy Endpoints: %ld.", v25, 0x34u);
    sub_100007BAC(v26);
    v20 = v33;
  }

  else
  {
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v31 = *(v0 + 8);

  return v31(v20 != 0);
}

uint64_t sub_10018EEF0()
{
  *(v0 + 184) = &_swiftEmptySetSingleton;
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 216);
  inited = swift_initStackObject();
  *(v0 + 192) = inited;
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = v3;
  *(inited + 40) = v2;
  *(inited + 48) = v1;

  v5 = swift_task_alloc();
  *(v0 + 200) = v5;
  *v5 = v0;
  v5[1] = sub_10018E944;

  return sub_101268B0C(inited);
}

uint64_t sub_10018EFDC(__n128 a1)
{
  v19 = v1;
  v2 = v1[23];
  if (*(&_swiftEmptySetSingleton + 2) <= *(v2 + 16) >> 3)
  {
    v18 = v1[23];
    sub_10087D37C(&_swiftEmptySetSingleton);

    v3 = v18;
  }

  else
  {
    v3 = sub_10060EAD8(&_swiftEmptySetSingleton, v1[23]);
  }

  v4 = v3[2];
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A560);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v17 = v4;
    v8 = v1[16];
    v9 = v1[17];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 141559043;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    *(v10 + 14) = sub_1000136BC(v8, v9, &v18);
    *(v10 + 22) = 2048;
    v12 = *(v2 + 16);

    *(v10 + 24) = v12;

    *(v10 + 32) = 2048;
    v13 = *(&_swiftEmptySetSingleton + 2);

    *(v10 + 34) = v13;

    *(v10 + 42) = 2048;
    v4 = v17;
    v14 = v3[2];

    *(v10 + 44) = v14;

    _os_log_impl(&_mh_execute_header, v6, v7, "                Destination: %{private,mask.hash}s reported legacy endpoints: %ld, endpoints: %ld, remaining Legacy Endpoints: %ld.", v10, 0x34u);
    sub_100007BAC(v11);
  }

  else
  {
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v15 = v1[1];

  return v15(v4 != 0);
}

uint64_t sub_10018F2A8(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = type metadata accessor for UUID();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v3[12] = *(v5 + 64);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_10018F380, v2, 0);
}

uint64_t sub_10018F380()
{
  v23 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[7];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A560);
  v6 = *(v3 + 16);
  v0[15] = v6;
  v0[16] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[14];
  v11 = v0[10];
  v12 = v0[11];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v10, v11);
    v18 = sub_1000136BC(v15, v17, &v22);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Create automatic share (UT only) for %{private,mask.hash}s", v13, 0x16u);
    sub_100007BAC(v14);
  }

  else
  {

    (*(v12 + 8))(v10, v11);
  }

  v19 = *(v0[9] + 200);
  v0[5] = type metadata accessor for MemberCircleRevokeManager();
  v0[6] = &off_1016634E8;
  v0[2] = v19;

  v20 = swift_task_alloc();
  v0[17] = v20;
  *v20 = v0;
  v20[1] = sub_10018F63C;

  return sub_1003AE100((v0 + 2));
}

uint64_t sub_10018F63C(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 144) = a1;

  if (v1)
  {
    *(v3 + 176) = v1;
    v4 = *(v3 + 72);
    v5 = sub_1001BE458;
  }

  else
  {
    v5 = sub_10018F76C;
    v4 = 0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10018F76C()
{
  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 144);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v6 = *(v0 + 64);
  (*(v0 + 120))(v2, *(v0 + 56), v4);
  v7 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v8 = (v3 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  *(v0 + 152) = v9;
  *(v9 + 16) = v1;
  (*(v5 + 32))(v9 + v7, v2, v4);
  v10 = v9 + v8;
  *v10 = v6;
  *(v10 + 8) = 0;
  v13 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v11 = swift_task_alloc();
  *(v0 + 160) = v11;
  *v11 = v0;
  v11[1] = sub_10018F910;

  return v13(&unk_101390820, v9);
}

uint64_t sub_10018F910()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_10018FBD4;
  }

  else
  {
    v2 = sub_10018FA40;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10018FA40()
{
  v1 = *(v0 + 72);

  sub_100007BAC((v0 + 16));

  return _swift_task_switch(sub_10018FAB4, v1, 0);
}

uint64_t sub_10018FAB4()
{
  type metadata accessor for Transaction();
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = 0;
  *(v2 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10018FBD4()
{

  v0[22] = v0[21];
  v1 = v0[9];

  return _swift_task_switch(sub_1001BE458, v1, 0);
}

uint64_t sub_10018FC44(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for UUID();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_10018FD08, v2, 0);
}

uint64_t sub_10018FD08()
{
  v23 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A560);
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
    v22 = v13;
    *v12 = 141558275;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1000136BC(v14, v16, &v22);

    *(v12 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Create automatic (self beaconing) share for %{private,mask.hash}s", v12, 0x16u);
    sub_100007BAC(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = swift_task_alloc();
  v0[8] = v18;
  *v18 = v0;
  v18[1] = sub_10018FFA4;
  v20 = v0[2];
  v19 = v0[3];

  return sub_1003C5E1C(v20, v19, 1);
}

uint64_t sub_10018FFA4()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 32);

    return _swift_task_switch(sub_1001900F0, v6, 0);
  }
}

uint64_t sub_1001900F0()
{
  type metadata accessor for Transaction();
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = 0;
  *(v2 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100190208(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = type metadata accessor for UUID();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v3[12] = *(v5 + 64);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_1001902E0, v2, 0);
}

uint64_t sub_1001902E0()
{
  v23 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[7];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A560);
  v6 = *(v3 + 16);
  v0[15] = v6;
  v0[16] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[14];
  v11 = v0[10];
  v12 = v0[11];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v10, v11);
    v18 = sub_1000136BC(v15, v17, &v22);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Create explicit share for %{private,mask.hash}s", v13, 0x16u);
    sub_100007BAC(v14);
  }

  else
  {

    (*(v12 + 8))(v10, v11);
  }

  v19 = *(v0[9] + 200);
  v0[5] = type metadata accessor for MemberCircleRevokeManager();
  v0[6] = &off_1016634E8;
  v0[2] = v19;

  v20 = swift_task_alloc();
  v0[17] = v20;
  *v20 = v0;
  v20[1] = sub_10019059C;

  return sub_1003AE100((v0 + 2));
}

uint64_t sub_10019059C(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 144) = a1;

  if (v1)
  {
    *(v3 + 176) = v1;
    v4 = *(v3 + 72);
    v5 = sub_100190BA8;
  }

  else
  {
    v5 = sub_1001906CC;
    v4 = 0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1001906CC()
{
  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 144);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v6 = *(v0 + 64);
  (*(v0 + 120))(v2, *(v0 + 56), v4);
  v7 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v8 = (v3 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  *(v0 + 152) = v9;
  *(v9 + 16) = v1;
  (*(v5 + 32))(v9 + v7, v2, v4);
  v10 = v9 + v8;
  *v10 = v6;
  *(v10 + 8) = 2;
  v13 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v11 = swift_task_alloc();
  *(v0 + 160) = v11;
  *v11 = v0;
  v11[1] = sub_100190874;

  return v13(&unk_101390D08, v9);
}

uint64_t sub_100190874()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_100190B38;
  }

  else
  {
    v2 = sub_1001909A4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001909A4()
{
  v1 = *(v0 + 72);

  sub_100007BAC((v0 + 16));

  return _swift_task_switch(sub_100190A18, v1, 0);
}

uint64_t sub_100190A18()
{
  type metadata accessor for Transaction();
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = 0;
  *(v2 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100190B38()
{

  v0[22] = v0[21];
  v1 = v0[9];

  return _swift_task_switch(sub_100190BA8, v1, 0);
}

uint64_t sub_100190BA8()
{
  sub_100007BAC((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100190C20(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 64) = a3;
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;
  return _swift_task_switch(sub_100190C44, 0, 0);
}

uint64_t sub_100190C44()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_100190CFC, Strong, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_100190CFC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  type metadata accessor for Transaction();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *(v4 + 32) = v1 & 1;

  static Transaction.asyncTask(name:block:)();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100190E0C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 80) = a4;
  *(v4 + 48) = a2;
  *(v4 + 56) = a3;
  *(v4 + 40) = a1;
  return _swift_task_switch(sub_100190E34, 0, 0);
}

uint64_t sub_100190E34()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 80);
    v3 = swift_task_alloc();
    *(v0 + 72) = v3;
    *v3 = v0;
    v3[1] = sub_100190F30;
    v4 = *(v0 + 56);
    v5 = *(v0 + 40);

    return sub_10017FFA4(v5, v4, v2 & 1);
  }

  else
  {
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_100190F30()
{
  v2 = *v1;

  if (v0)
  {
  }

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_100191044(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100191064, v1, 0);
}

uint64_t sub_100191064()
{
  v18 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177A560);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 141558275;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    v9 = [v6 inputUrl];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = sub_1000136BC(v10, v12, &v17);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Preview import from url %{private,mask.hash}s", v7, 0x16u);
    sub_100007BAC(v8);
  }

  v14 = swift_task_alloc();
  *(v0 + 32) = v14;
  *v14 = v0;
  v14[1] = sub_100191280;
  v15 = *(v0 + 16);

  return sub_1003C0FF8(v15);
}

uint64_t sub_100191280(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6(0);
  }

  else
  {
    v8 = *(v4 + 24);
    *(v4 + 40) = a1 & 1;

    return _swift_task_switch(sub_1001913D4, v8, 0);
  }
}

uint64_t sub_1001913D4()
{
  type metadata accessor for Transaction();
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = 0;
  *(v2 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  v3 = *(v0 + 8);
  v4 = *(v0 + 40);

  return v3(v4);
}

uint64_t sub_1001914DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_100191500, v3, 0);
}

uint64_t sub_100191500()
{
  v20 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177A560);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 141558275;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    v9 = [v6 inputUrl];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = sub_1000136BC(v10, v12, &v19);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Import url %{private,mask.hash}s", v7, 0x16u);
    sub_100007BAC(v8);
  }

  v14 = swift_task_alloc();
  v0[6] = v14;
  *v14 = v0;
  v14[1] = sub_100191720;
  v15 = v0[3];
  v16 = v0[4];
  v17 = v0[2];

  return sub_1003C1768(v17, v15, v16);
}

uint64_t sub_100191720()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 40);

    return _swift_task_switch(sub_100191864, v6, 0);
  }
}

uint64_t sub_100191864()
{
  type metadata accessor for Transaction();
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = 0;
  *(v2 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100191968(uint64_t a1, char a2)
{
  *(v3 + 64) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = type metadata accessor for UUID();
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_100191A2C, v2, 0);
}

uint64_t sub_100191A2C()
{
  v23 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A560);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 40);
  v9 = *(v0 + 48);
  v11 = *(v0 + 32);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 141558275;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1000136BC(v14, v16, &v22);

    *(v12 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Remove imported share %{private,mask.hash}s", v12, 0x16u);
    sub_100007BAC(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = swift_task_alloc();
  *(v0 + 56) = v18;
  *v18 = v0;
  v18[1] = sub_100191CC8;
  v19 = *(v0 + 16);
  v20 = *(v0 + 64);

  return sub_1003C1EE0(v19, v20);
}

uint64_t sub_100191CC8()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 24);

    return _swift_task_switch(sub_100191E14, v6, 0);
  }
}

uint64_t sub_100191E14()
{
  type metadata accessor for Transaction();
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = 0;
  *(v2 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100191F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = type metadata accessor for UUID();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_100191FFC, v3, 0);
}

uint64_t sub_100191FFC()
{
  v27 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177A560);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 112);
    v7 = *(v0 + 88);
    v8 = *(v0 + 96);
    v9 = *(v0 + 56);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v10 = 141558275;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    v12 = [v9 beaconIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v8 + 8))(v6, v7);
    v16 = sub_1000136BC(v13, v15, &v26);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "Create delegated share for %{private,mask.hash}s", v10, 0x16u);
    sub_100007BAC(v11);
  }

  v17 = *(v0 + 80);
  v18 = [*(v0 + 56) beaconIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = *(v17 + 200);
  v20 = type metadata accessor for MemberCircleRevokeManager();
  *(v0 + 16) = v19;
  *(v0 + 40) = v20;
  *(v0 + 48) = &off_1016634E8;

  v21 = swift_task_alloc();
  *(v0 + 120) = v21;
  *v21 = v0;
  v21[1] = sub_1001922E8;
  v22 = *(v0 + 104);
  v23 = *(v0 + 64);
  v24 = *(v0 + 72);

  return sub_1003C24F8(v22, v0 + 16, v23, v24);
}

uint64_t sub_1001922E8()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  *(*v1 + 128) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = *(v2 + 80);
    v7 = sub_100192594;
  }

  else
  {
    v8 = *(v2 + 80);
    sub_100007BAC((v2 + 16));
    v7 = sub_100192474;
    v6 = v8;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100192474()
{
  type metadata accessor for Transaction();
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = 0;
  *(v2 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100192594()
{
  sub_100007BAC((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10019260C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = type metadata accessor for UUID();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_1001926DC, v3, 0);
}

uint64_t sub_1001926DC()
{
  v20 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177A560);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 112);
    v7 = *(v0 + 88);
    v8 = *(v0 + 96);
    v9 = *(v0 + 56);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 141558275;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    v12 = [v9 beaconIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v8 + 8))(v6, v7);
    v16 = sub_1000136BC(v13, v15, &v19);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "Check web share status for %{private,mask.hash}s", v10, 0x16u);
    sub_100007BAC(v11);
  }

  v17 = [*(v0 + 56) beaconIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  return _swift_task_switch(sub_100192948, 0, 0);
}

uint64_t sub_100192948()
{
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_1001929EC;

  return sub_1003AC554(v0 + 16);
}

uint64_t sub_1001929EC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[16] = v1;

  sub_10000B3A8((v4 + 2), &unk_101698E08, &qword_101390A08);
  if (v1)
  {

    return _swift_task_switch(sub_100192D48, 0, 0);
  }

  else
  {
    v4[17] = a1;
    v6 = swift_task_alloc();
    v4[18] = v6;
    *v6 = v5;
    v6[1] = sub_100192B90;
    v7 = v4[13];

    return sub_1005B29FC(v7);
  }
}

uint64_t sub_100192B90(char a1)
{
  *(*v1 + 152) = a1;

  return _swift_task_switch(sub_100192C90, 0, 0);
}

uint64_t sub_100192C90()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  (*(v0 + 64))(*(v0 + 152));

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100192D48()
{
  v1 = v0[10];
  (*(v0[12] + 8))(v0[13], v0[11]);

  return _swift_task_switch(sub_100192DC0, v1, 0);
}

uint64_t sub_100192DC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100192E2C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for UUID();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_100192EFC, v2, 0);
}

uint64_t sub_100192EFC()
{
  v23 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177A560);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 64);
    v7 = *(v0 + 40);
    v8 = *(v0 + 48);
    v9 = *(v0 + 24);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 141558275;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    v12 = [v9 beaconIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v8 + 8))(v6, v7);
    v16 = sub_1000136BC(v13, v15, &v22);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "Check web share status for %{private,mask.hash}s", v10, 0x16u);
    sub_100007BAC(v11);
  }

  v17 = [*(v0 + 24) beaconIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = swift_task_alloc();
  *(v0 + 72) = v18;
  *v18 = v0;
  v18[1] = sub_1001931A0;
  v19 = *(v0 + 56);
  v20 = *(v0 + 16);

  return sub_10039E2E4(v20, v19);
}

uint64_t sub_1001931A0()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *v1;
  v5[10] = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v6 = v5[4];

    return _swift_task_switch(sub_100193354, v6, 0);
  }

  else
  {

    v7 = v5[1];

    return v7();
  }
}

uint64_t sub_100193354()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001933C0(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for UUID();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_10019348C, v1, 0);
}

uint64_t sub_10019348C()
{
  v25 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177A560);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 96);
    v7 = *(v0 + 72);
    v8 = *(v0 + 80);
    v9 = *(v0 + 56);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 141558275;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    v12 = [v9 beaconIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v8 + 8))(v6, v7);
    v16 = sub_1000136BC(v13, v15, &v24);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "Stops temporary location share for %{private,mask.hash}s", v10, 0x16u);
    sub_100007BAC(v11);
  }

  v17 = *(v0 + 64);
  v18 = [*(v0 + 56) beaconIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = *(v17 + 200);
  v20 = type metadata accessor for MemberCircleRevokeManager();
  *(v0 + 16) = v19;
  *(v0 + 40) = v20;
  *(v0 + 48) = &off_1016634E8;

  v21 = swift_task_alloc();
  *(v0 + 104) = v21;
  *v21 = v0;
  v21[1] = sub_100193770;
  v22 = *(v0 + 88);

  return sub_1003C2BB4(v22, v0 + 16);
}

uint64_t sub_100193770()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  *(*v1 + 112) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = *(v2 + 64);
    v7 = sub_100193A1C;
  }

  else
  {
    v8 = *(v2 + 64);
    sub_100007BAC((v2 + 16));
    v7 = sub_1001938FC;
    v6 = v8;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1001938FC()
{
  type metadata accessor for Transaction();
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = 0;
  *(v2 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100193A1C()
{
  sub_100007BAC((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100193A94(uint64_t a1, char a2)
{
  *(v3 + 160) = a2;
  *(v3 + 32) = a1;
  *(v3 + 40) = v2;
  v4 = type metadata accessor for UUID();
  *(v3 + 48) = v4;
  v5 = *(v4 - 8);
  *(v3 + 56) = v5;
  *(v3 + 64) = *(v5 + 64);
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  *(v3 + 88) = swift_task_alloc();
  v6 = type metadata accessor for OwnerSharingCircle(0);
  *(v3 + 96) = v6;
  *(v3 + 104) = *(v6 - 8);
  *(v3 + 112) = swift_task_alloc();

  return _swift_task_switch(sub_100193BF8, v2, 0);
}

uint64_t sub_100193BF8()
{
  v1 = *(*(v0 + 40) + 136);
  *(v0 + 120) = v1;
  return _swift_task_switch(sub_100193C1C, v1, 0);
}

uint64_t sub_100193C1C()
{
  v1 = v0[15];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  (*(v4 + 16))(v2, v0[4], v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  v0[16] = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);

  v7 = swift_task_alloc();
  v0[17] = v7;
  *v7 = v0;
  v7[1] = sub_100193D7C;
  v9 = v0[10];
  v8 = v0[11];

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4B0, v6, v9);
}

uint64_t sub_100193D7C()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_100193EA8, v1, 0);
}

uint64_t sub_100193EA8()
{
  v1 = *(v0 + 88);
  if ((*(*(v0 + 104) + 48))(v1, 1, *(v0 + 96)) == 1)
  {
    sub_10000B3A8(v1, &unk_1016AFA00, &qword_10138C4D0);
    type metadata accessor for SPBeaconSharingError(0);
    *(v0 + 24) = 5;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_1001B8FE4(&qword_101696340, type metadata accessor for SPBeaconSharingError, &unk_10138A4B4);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    sub_1001BAAE8(v1, *(v0 + 112), type metadata accessor for OwnerSharingCircle);
    v4 = swift_task_alloc();
    *(v0 + 144) = v4;
    *v4 = v0;
    v4[1] = sub_100194080;
    v5 = *(v0 + 112);
    v6 = *(v0 + 160);

    return sub_1001942F0(v5, v6);
  }
}

uint64_t sub_100194080()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_100194250;
  }

  else
  {
    v4 = sub_1001941AC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1001941AC()
{
  sub_1001BA80C(*(v0 + 112), type metadata accessor for OwnerSharingCircle);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100194250()
{
  sub_1001BA80C(*(v0 + 112), type metadata accessor for OwnerSharingCircle);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001942F0(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = type metadata accessor for OwnerSharingCircle(0);
  *(v3 + 40) = swift_task_alloc();

  return _swift_task_switch(sub_100194388, v2, 0);
}

uint64_t sub_100194388()
{
  v20 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177A560);
  sub_1001BB2E0(v2, v1, type metadata accessor for OwnerSharingCircle);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 40);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 141558275;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    type metadata accessor for UUID();
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_1001BA80C(v7, type metadata accessor for OwnerSharingCircle);
    v13 = sub_1000136BC(v10, v12, &v19);

    *(v8 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Upload keys for %{private,mask.hash}s", v8, 0x16u);
    sub_100007BAC(v9);
  }

  else
  {

    sub_1001BA80C(v7, type metadata accessor for OwnerSharingCircle);
  }

  v14 = *(*(v0 + 24) + 200);
  v15 = swift_task_alloc();
  *(v0 + 48) = v15;
  *v15 = v0;
  v15[1] = sub_100194644;
  v16 = *(v0 + 56);
  v17 = *(v0 + 16);

  return sub_1003BF348(v17, v16, v14);
}

uint64_t sub_100194644()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 24);

    return _swift_task_switch(sub_100194790, v6, 0);
  }
}

uint64_t sub_100194790()
{
  type metadata accessor for Transaction();
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = 0;
  *(v2 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001948A8(uint64_t a1, char a2, uint64_t a3, char a4)
{
  *(v5 + 112) = a3;
  *(v5 + 120) = v4;
  *(v5 + 289) = a4;
  *(v5 + 288) = a2;
  *(v5 + 104) = a1;
  v6 = type metadata accessor for MemberSharingCircle(0);
  *(v5 + 128) = v6;
  *(v5 + 136) = *(v6 - 8);
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  *(v5 + 176) = v7;
  v8 = *(v7 - 8);
  *(v5 + 184) = v8;
  *(v5 + 192) = *(v8 + 64);
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = swift_task_alloc();

  return _swift_task_switch(sub_100194A2C, v4, 0);
}

uint64_t sub_100194A2C()
{
  v28 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 208);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 104);
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A560);
  v6 = *(v3 + 16);
  *(v0 + 216) = v6;
  *(v0 + 224) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 289);
    v10 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v10 = 136315651;
    if (v9)
    {
      v11 = 0;
      v12 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 96) = *(v0 + 112);
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      v12 = v16;
    }

    v17 = *(v0 + 208);
    v18 = *(v0 + 176);
    v19 = *(v0 + 184);
    v20 = sub_1000136BC(v11, v12, &v27);

    *(v10 + 4) = v20;
    *(v10 + 12) = 2160;
    *(v10 + 14) = 1752392040;
    *(v10 + 22) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v19 + 8))(v17, v18);
    v24 = sub_1000136BC(v21, v23, &v27);

    *(v10 + 24) = v24;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s Download keys for %{private,mask.hash}s", v10, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v13 = *(v0 + 208);
    v14 = *(v0 + 176);
    v15 = *(v0 + 184);

    (*(v15 + 8))(v13, v14);
  }

  v25 = *(*(v0 + 120) + 136);
  *(v0 + 232) = v25;

  return _swift_task_switch(sub_100194D08, v25, 0);
}

uint64_t sub_100194D08()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 200);
  v3 = *(v0 + 176);
  v4 = *(v0 + 184);
  (*(v0 + 216))(v2, *(v0 + 104), v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v0 + 240) = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);

  v7 = swift_task_alloc();
  *(v0 + 248) = v7;
  *v7 = v0;
  v7[1] = sub_100194E60;
  v8 = *(v0 + 168);
  v9 = *(v0 + 152);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_1001BAD40, v6, v9);
}

uint64_t sub_100194E60()
{
  v1 = *(*v0 + 120);

  return _swift_task_switch(sub_100194F8C, v1, 0);
}

uint64_t sub_100194F8C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  sub_1000D2A70(*(v0 + 168), v1, &unk_101698BC0, &qword_10138C440);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 168);
    sub_10000B3A8(*(v0 + 160), &unk_101698BC0, &qword_10138C440);
    sub_1001BAB50();
    swift_allocError();
    *v5 = 3;
    swift_willThrow();
    sub_10000B3A8(v4, &unk_101698BC0, &qword_10138C440);

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v8 = *(v0 + 120);
    v9 = *(v0 + 288);
    sub_1001BAAE8(*(v0 + 160), *(v0 + 144), type metadata accessor for MemberSharingCircle);
    v10 = *(v8 + 200);
    v11 = type metadata accessor for MemberCircleRevokeManager();
    if (v9 == 1)
    {
      *(v0 + 56) = v10;
      v12 = v0 + 56;
      *(v0 + 80) = v11;
      *(v0 + 88) = &off_1016634E8;
      v16 = sub_1003BFA7C;

      v13 = swift_task_alloc();
      *(v0 + 256) = v13;
      *v13 = v0;
      v14 = sub_100195230;
    }

    else
    {
      *(v0 + 16) = v10;
      v12 = v0 + 16;
      *(v0 + 40) = v11;
      *(v0 + 48) = &off_1016634E8;
      v16 = sub_1003C00F0;

      v13 = swift_task_alloc();
      *(v0 + 272) = v13;
      *v13 = v0;
      v14 = sub_1001955C0;
    }

    v13[1] = v14;
    v15 = *(v0 + 144);

    return v16(v15, v12);
  }
}

uint64_t sub_100195230()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = *(v2 + 120);
    v4 = sub_1001954E4;
  }

  else
  {
    v5 = *(v2 + 120);
    sub_100007BAC((v2 + 56));
    v4 = sub_100195358;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100195358()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);
  v3 = *(v0 + 289);
  v4 = *(v0 + 112);
  type metadata accessor for Transaction();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *(v6 + 32) = v3 & 1;

  static Transaction.asyncTask(name:block:)();

  sub_1001BA80C(v2, type metadata accessor for MemberSharingCircle);
  sub_10000B3A8(v1, &unk_101698BC0, &qword_10138C440);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1001954E4()
{
  v1 = v0[21];
  sub_1001BA80C(v0[18], type metadata accessor for MemberSharingCircle);
  sub_10000B3A8(v1, &unk_101698BC0, &qword_10138C440);
  sub_100007BAC(v0 + 7);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1001955C0()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = *(v2 + 120);
    v4 = sub_1001956E8;
  }

  else
  {
    v5 = *(v2 + 120);
    sub_100007BAC((v2 + 16));
    v4 = sub_1001BE444;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1001956E8()
{
  v1 = v0[21];
  sub_1001BA80C(v0[18], type metadata accessor for MemberSharingCircle);
  sub_10000B3A8(v1, &unk_101698BC0, &qword_10138C440);
  sub_100007BAC(v0 + 2);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1001957C4(uint64_t a1)
{
  v2[44] = a1;
  v2[45] = v1;
  v2[46] = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v2[47] = swift_task_alloc();
  v3 = type metadata accessor for SharedBeaconRecord(0);
  v2[48] = v3;
  v2[49] = *(v3 - 8);
  v2[50] = swift_task_alloc();
  v4 = type metadata accessor for MemberSharingCircle(0);
  v2[51] = v4;
  v2[52] = *(v4 - 8);
  v2[53] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_101698CC0, &unk_101390890);
  v2[54] = v5;
  v2[55] = *(v5 - 8);
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v6 = type metadata accessor for OwnerSharingCircle(0);
  v2[62] = v6;
  v2[63] = *(v6 - 8);
  v2[64] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v2[65] = v7;
  v8 = *(v7 - 8);
  v2[66] = v8;
  v2[67] = *(v8 + 64);
  v2[68] = swift_task_alloc();

  return _swift_task_switch(sub_100195A80, v1, 0);
}

uint64_t sub_100195A80()
{
  v1 = *(*(v0 + 360) + 136);
  *(v0 + 552) = v1;
  return _swift_task_switch(sub_100195AA4, v1, 0);
}

uint64_t sub_100195AA4()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 544);
  v3 = *(v0 + 528);
  v4 = *(v0 + 520);
  v5 = *(v0 + 352);
  v6 = *(v3 + 16);
  *(v0 + 560) = v6;
  *(v0 + 568) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = *(v3 + 80);
  *(v0 + 824) = v7;
  v8 = (v7 + 24) & ~v7;
  v9 = swift_allocObject();
  *(v0 + 576) = v9;
  *(v9 + 16) = v1;
  v10 = *(v3 + 32);
  *(v0 + 584) = v10;
  *(v0 + 592) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v9 + v8, v2, v4);

  v11 = swift_task_alloc();
  *(v0 + 600) = v11;
  v12 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v11 = v0;
  v11[1] = sub_100195C4C;

  return unsafeBlocking<A>(context:_:)(v0 + 288, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4B8, v9, v12);
}

uint64_t sub_100195C4C()
{
  v1 = *(*v0 + 552);

  return _swift_task_switch(sub_100195D78, v1, 0);
}

uint64_t sub_100195D78()
{
  v1 = v0[45];
  v0[76] = v0[36];
  return _swift_task_switch(sub_100195D9C, v1, 0);
}

uint64_t sub_100195D9C()
{
  v1 = *(v0 + 552);
  *(v0 + 616) = sub_100B08164(&off_101608260);

  return _swift_task_switch(sub_100195E10, v1, 0);
}

uint64_t sub_100195E10()
{
  v1 = *(v0 + 616);
  v2 = *(v0 + 584);
  v3 = *(v0 + 552);
  v4 = *(v0 + 544);
  v5 = *(v0 + 536);
  v6 = *(v0 + 520);
  v7 = (*(v0 + 824) + 24) & ~*(v0 + 824);
  (*(v0 + 560))(v4, *(v0 + 352), v6);
  v8 = swift_allocObject();
  *(v0 + 624) = v8;
  *(v8 + 16) = v3;
  v2(v8 + v7, v4, v6);
  *(v8 + ((v7 + v5 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;

  v9 = swift_task_alloc();
  *(v0 + 632) = v9;
  v10 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v9 = v0;
  v9[1] = sub_100195F9C;

  return unsafeBlocking<A>(context:_:)(v0 + 296, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4AC, v8, v10);
}

uint64_t sub_100195F9C()
{
  v1 = *(*v0 + 552);

  return _swift_task_switch(sub_1001960C8, v1, 0);
}

uint64_t sub_1001960C8()
{
  v1 = v0[45];
  v0[80] = v0[37];
  return _swift_task_switch(sub_1001960EC, v1, 0);
}

uint64_t sub_1001960EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 640);
  v5 = *(v3 + 360);
  v6 = *(v4 + 16);
  *(v3 + 648) = v6;
  if (v6)
  {
    v8 = *(v3 + 496);
    v7 = *(v3 + 504);
    *(v3 + 664) = 0;
    *(v3 + 656) = _swiftEmptyArrayStorage;
    if (*(v4 + 16))
    {
      v9 = *(v3 + 512);
      sub_1001BB2E0(v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v9, type metadata accessor for OwnerSharingCircle);
      *(v3 + 672) = *(v5 + 128);
      v10 = *(v8 + 20);
      *(v3 + 828) = v10;
      v11 = swift_task_alloc();
      *(v3 + 680) = v11;
      *v11 = v3;
      v11[1] = sub_1001963A8;

      return sub_100C7BA0C(v3 + 80, v9 + v10);
    }

    __break(1u);
    goto LABEL_15;
  }

  v13 = *(v3 + 608);

  v14 = *(v13 + 16);
  *(v3 + 720) = v14;
  if (v14)
  {
    v15 = *(v3 + 608);
    v16 = *(v3 + 408);
    v17 = *(*(v3 + 416) + 80);
    *(v3 + 832) = v17;
    *(v3 + 736) = _swiftEmptyArrayStorage;
    *(v3 + 728) = 0;
    if (*(v15 + 16))
    {
      v18 = *(v3 + 552);
      sub_1001BB2E0(v15 + ((v17 + 32) & ~v17), *(v3 + 424), type metadata accessor for MemberSharingCircle);
      *(v3 + 836) = *(v16 + 24);
      v4 = sub_100196F70;
      a2 = v18;
      a3 = 0;

      return _swift_task_switch(v4, a2, a3);
    }

LABEL_15:
    __break(1u);
    return _swift_task_switch(v4, a2, a3);
  }

  v19 = *(v3 + 8);

  return v19(_swiftEmptyArrayStorage);
}

uint64_t sub_1001963A8()
{
  v2 = *v1;
  *(*v1 + 688) = v0;

  if (v0)
  {

    v2[89] = v0;
    v3 = v2[45];
    v4 = sub_100196E5C;
  }

  else
  {
    v3 = v2[84];
    v4 = sub_1001964F0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1001964F0()
{
  v1 = v0[16];
  if (v1 >> 60 == 15)
  {

    sub_1001BAEE0();
    v2 = swift_allocError();
    *v3 = 12;
    swift_willThrow();
    sub_1001BAF34((v0 + 10));

    v0[89] = v2;
    v4 = v0[45];
    v5 = sub_100196E5C;
    goto LABEL_3;
  }

  v7 = v0[15];
  sub_100017D5C(v7, v0[16]);
  sub_100017D5C(v7, v1);
  sub_10002EA98(57, v7, v1, v0 + 28);
  v5 = v0[28];
  v4 = v0[29];
  v8 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_21;
    }

    v10 = *(v5 + 16);
    v9 = *(v5 + 24);
    v11 = __OFSUB__(v9, v10);
    v12 = v9 - v10;
    if (!v11)
    {
      if (v12 == 57)
      {
        goto LABEL_13;
      }

      goto LABEL_21;
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v8)
  {
    if (!__OFSUB__(HIDWORD(v5), v5))
    {
      if (HIDWORD(v5) - v5 == 57)
      {
        goto LABEL_13;
      }

LABEL_21:
      sub_100016590(v5, v4);
      return _assertionFailure(_:_:file:line:flags:)();
    }

    goto LABEL_44;
  }

  if (BYTE6(v4) != 57)
  {
    goto LABEL_21;
  }

LABEL_13:
  v13 = v0[86];
  v14 = v0[28];
  v15 = v0[29];
  v16 = sub_100A7A194(v5, v4, 0, 0);
  if (v13)
  {
    v19 = static os_log_type_t.error.getter();
    if (qword_101694BE0 != -1)
    {
      swift_once();
    }

    v20 = qword_10177BA00;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_101385D80;
    v0[38] = v13;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v22 = String.init<A>(describing:)();
    v24 = v23;
    *(v21 + 56) = &type metadata for String;
    *(v21 + 64) = sub_100008C00();
    *(v21 + 32) = v22;
    *(v21 + 40) = v24;
    os_log(_:dso:log:_:_:)(v19, &_mh_execute_header, v20, "Error deriving advertisementKey: %@", 35, 2, v21);

    sub_1001BAF88();
    v25 = swift_allocError();
    *v26 = 0;
    swift_willThrow();

    goto LABEL_18;
  }

  v17 = sub_100A7829C(v16, 0, 2);
  v0[87] = v17;
  v0[88] = v18;
  v29 = v17;
  v30 = v18;
  v5 = CCECCryptorRelease();
  v31 = v30 >> 62;
  if ((v30 >> 62) > 1)
  {
    if (v31 != 2)
    {
      v36 = 0;
      goto LABEL_42;
    }

    v34 = *(v29 + 16);
    v33 = *(v29 + 24);
    v11 = __OFSUB__(v33, v34);
    v32 = v33 - v34;
    if (!v11)
    {
      v5 = v14;
      v4 = v15;
      goto LABEL_31;
    }

    goto LABEL_45;
  }

  v5 = v14;
  v4 = v15;
  if (!v31)
  {
    v32 = BYTE6(v30);
    goto LABEL_31;
  }

  LODWORD(v32) = HIDWORD(v29) - v29;
  if (__OFSUB__(HIDWORD(v29), v29))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v32 = v32;
LABEL_31:
  if (v32 == 28)
  {
    v35 = v0[45];
    sub_100016590(v5, v4);
    sub_100006654(v7, v1);
    sub_1001BAF34((v0 + 10));
    v5 = sub_100196A04;
    v4 = v35;
LABEL_3:
    v6 = 0;

    return _swift_task_switch(v5, v4, v6);
  }

  if (v31 == 2)
  {
    v38 = *(v29 + 16);
    v37 = *(v29 + 24);
    v36 = v37 - v38;
    if (!__OFSUB__(v37, v38))
    {
      goto LABEL_42;
    }

    __break(1u);
    goto LABEL_41;
  }

  if (v31 != 1)
  {
LABEL_41:
    v36 = BYTE6(v30);
    goto LABEL_42;
  }

  if (!__OFSUB__(HIDWORD(v29), v29))
  {
    v36 = HIDWORD(v29) - v29;
LABEL_42:
    sub_100018350();
    v25 = swift_allocError();
    *v39 = 28;
    *(v39 + 8) = v36;
    *(v39 + 16) = 0;
    swift_willThrow();
    sub_100016590(v29, v30);
LABEL_18:
    _StringGuts.grow(_:)(35);
    v0[30] = 0;
    v0[31] = 0xE000000000000000;
    v27._countAndFlagsBits = 0xD000000000000021;
    v27._object = 0x800000010134CB30;
    String.append(_:)(v27);
    v0[39] = v25;
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    _print_unlocked<A, B>(_:_:)();
    return _assertionFailure(_:_:file:line:flags:)();
  }

LABEL_47:
  __break(1u);
  return _swift_task_switch(v5, v4, v6);
}

uint64_t sub_100196A04()
{
  v1 = *(v0 + 828);
  v2 = *(v0 + 560);
  v3 = *(v0 + 520);
  v4 = *(v0 + 512);
  v5 = *(v0 + 488);
  v6 = *(v0 + 496);
  v7 = *(*(v0 + 432) + 48);
  *v5 = *(v0 + 696);
  v2(&v5[v7], v4 + v1, v3);
  v8 = 0x4000201u >> (8 * *(v4 + *(v6 + 28)));
  v9 = *(v0 + 584);
  v10 = *(v0 + 520);
  v12 = *(v0 + 480);
  v11 = *(v0 + 488);
  v13 = *(v0 + 472);
  v14 = *(v0 + 432);
  *(v11 + *(v14 + 64)) = v8;
  sub_1000D2A70(v11, v12, &qword_101698CC0, &unk_101390890);
  v15 = *(v14 + 48);
  v16 = *(v14 + 64);
  v17 = *(v12 + v16);
  *v13 = *v12;
  v9(&v13[v15], v12 + v15, v10);
  v13[v16] = v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v0 + 656);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = sub_100A5C3B0(0, v19[2] + 1, 1, *(v0 + 656));
  }

  v21 = v19[2];
  v20 = v19[3];
  if (v21 >= v20 >> 1)
  {
    v19 = sub_100A5C3B0((v20 > 1), v21 + 1, 1, v19);
  }

  v22 = *(v0 + 648);
  v23 = *(v0 + 512);
  v24 = *(v0 + 472);
  v25 = *(v0 + 440);
  v26 = *(v0 + 664) + 1;
  sub_10000B3A8(*(v0 + 488), &qword_101698CC0, &unk_101390890);
  sub_1001BA80C(v23, type metadata accessor for OwnerSharingCircle);
  v19[2] = v21 + 1;
  v27 = sub_1000D2AD8(v24, v19 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21, &qword_101698CC0, &unk_101390890);
  if (v26 == v22)
  {
    v30 = *(v0 + 608);

    v31 = *(v30 + 16);
    *(v0 + 720) = v31;
    if (v31)
    {
      v32 = *(v0 + 608);
      v33 = *(v0 + 408);
      v34 = *(*(v0 + 416) + 80);
      *(v0 + 832) = v34;
      *(v0 + 736) = v19;
      *(v0 + 728) = 0;
      if (*(v32 + 16))
      {
        v35 = *(v0 + 552);
        sub_1001BB2E0(v32 + ((v34 + 32) & ~v34), *(v0 + 424), type metadata accessor for MemberSharingCircle);
        *(v0 + 836) = *(v33 + 24);
        v27 = sub_100196F70;
        v28 = v35;
        v29 = 0;

        return _swift_task_switch(v27, v28, v29);
      }

LABEL_19:
      __break(1u);
      return _swift_task_switch(v27, v28, v29);
    }

    v44 = *(v0 + 8);

    return v44(v19);
  }

  else
  {
    v36 = *(v0 + 664) + 1;
    *(v0 + 664) = v36;
    *(v0 + 656) = v19;
    v37 = *(v0 + 640);
    if (v36 >= *(v37 + 16))
    {
      __break(1u);
      goto LABEL_19;
    }

    v38 = *(v0 + 512);
    v39 = *(v0 + 496);
    v40 = *(v0 + 360);
    sub_1001BB2E0(v37 + ((*(*(v0 + 504) + 80) + 32) & ~*(*(v0 + 504) + 80)) + *(*(v0 + 504) + 72) * v36, v38, type metadata accessor for OwnerSharingCircle);
    *(v0 + 672) = *(v40 + 128);
    v41 = *(v39 + 20);
    *(v0 + 828) = v41;
    v42 = swift_task_alloc();
    *(v0 + 680) = v42;
    *v42 = v0;
    v42[1] = sub_1001963A8;

    return sub_100C7BA0C(v0 + 80, v38 + v41);
  }
}

uint64_t sub_100196E5C()
{
  sub_1001BA80C(*(v0 + 512), type metadata accessor for OwnerSharingCircle);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100196F70()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 552);
  v3 = *(v0 + 544);
  v4 = *(v0 + 520);
  v5 = (*(v0 + 824) + 24) & ~*(v0 + 824);
  (*(v0 + 560))(v3, *(v0 + 424) + *(v0 + 836), v4);
  v6 = swift_allocObject();
  *(v0 + 744) = v6;
  *(v6 + 16) = v2;
  v1(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 752) = v7;
  *v7 = v0;
  v7[1] = sub_1001970D0;
  v9 = *(v0 + 368);
  v8 = *(v0 + 376);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4A4, v6, v9);
}

uint64_t sub_1001970D0()
{
  v1 = *(*v0 + 360);

  return _swift_task_switch(sub_1001971FC, v1, 0);
}

uint64_t sub_1001971FC()
{
  v1 = *(v0 + 376);
  if ((*(*(v0 + 392) + 48))(v1, 1, *(v0 + 384)) != 1)
  {
    v8 = *(v0 + 552);
    sub_1001BAAE8(v1, *(v0 + 400), type metadata accessor for SharedBeaconRecord);
    v2 = sub_100197458;
    v3 = v8;
    goto LABEL_9;
  }

  sub_1001BA80C(*(v0 + 424), type metadata accessor for MemberSharingCircle);
  v2 = sub_10000B3A8(v1, &unk_101698C30, &unk_101392630);
  v5 = *(v0 + 728) + 1;
  if (v5 != *(v0 + 720))
  {
    *(v0 + 728) = v5;
    v9 = *(v0 + 608);
    if (v5 >= *(v9 + 16))
    {
      __break(1u);
      return _swift_task_switch(v2, v3, v4);
    }

    v10 = *(v0 + 552);
    v11 = *(v0 + 408);
    sub_1001BB2E0(v9 + ((*(v0 + 832) + 32) & ~*(v0 + 832)) + *(*(v0 + 416) + 72) * v5, *(v0 + 424), type metadata accessor for MemberSharingCircle);
    *(v0 + 836) = *(v11 + 24);
    v2 = sub_100196F70;
    v3 = v10;
LABEL_9:
    v4 = 0;

    return _swift_task_switch(v2, v3, v4);
  }

  v12 = *(v0 + 736);

  v6 = *(v0 + 8);

  return v6(v12);
}

uint64_t sub_100197458()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 552);
  v3 = *(v0 + 544);
  v4 = *(v0 + 520);
  v5 = (*(v0 + 824) + 24) & ~*(v0 + 824);
  (*(v0 + 560))(v3, *(v0 + 424) + *(v0 + 836), v4);
  v6 = swift_allocObject();
  *(v0 + 760) = v6;
  *(v6 + 16) = v2;
  v1(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 768) = v7;
  v8 = sub_1000BC4D4(&qword_101696920, &unk_10138B200);
  *v7 = v0;
  v7[1] = sub_1001975D0;

  return unsafeBlocking<A>(context:_:)(v0 + 184, 0xD000000000000010, 0x800000010134A8C0, sub_1000D2650, v6, v8);
}

uint64_t sub_1001975D0()
{
  v1 = *(*v0 + 360);

  return _swift_task_switch(sub_1001976FC, v1, 0);
}

uint64_t sub_1001976FC()
{
  v1 = *(v0 + 424);
  if (*(v0 + 208))
  {
    v2 = *(v0 + 408);
    v3 = *(v0 + 360);
    sub_10000A748((v0 + 184), v0 + 144);
    *(v0 + 776) = *(v3 + 128);
    v4 = *(v2 + 20);
    v5 = swift_task_alloc();
    *(v0 + 784) = v5;
    *v5 = v0;
    v5[1] = sub_1001979BC;

    return sub_100C7BA0C(v0 + 16, v1 + v4);
  }

  else
  {
    sub_1001BA80C(*(v0 + 400), type metadata accessor for SharedBeaconRecord);
    sub_1001BA80C(v1, type metadata accessor for MemberSharingCircle);
    v7 = sub_10000B3A8(v0 + 184, &qword_101696920, &unk_10138B200);
    v10 = *(v0 + 728) + 1;
    if (v10 == *(v0 + 720))
    {
      v15 = *(v0 + 736);

      v11 = *(v0 + 8);

      return v11(v15);
    }

    else
    {
      *(v0 + 728) = v10;
      v12 = *(v0 + 608);
      if (v10 >= *(v12 + 16))
      {
        __break(1u);
      }

      else
      {
        v13 = *(v0 + 552);
        v14 = *(v0 + 408);
        sub_1001BB2E0(v12 + ((*(v0 + 832) + 32) & ~*(v0 + 832)) + *(*(v0 + 416) + 72) * v10, *(v0 + 424), type metadata accessor for MemberSharingCircle);
        *(v0 + 836) = *(v14 + 24);
        v7 = sub_100196F70;
        v8 = v13;
        v9 = 0;
      }

      return _swift_task_switch(v7, v8, v9);
    }
  }
}

uint64_t sub_1001979BC()
{
  v2 = *v1;
  *(*v1 + 792) = v0;

  if (v0)
  {

    v2[102] = v0;
    v3 = v2[45];
    v4 = sub_100198570;
  }

  else
  {
    v3 = v2[97];
    v4 = sub_100197AF8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100197AF8()
{
  v1 = v0[8];
  if (v1 >> 60 == 15)
  {

    sub_1001BAEE0();
    v2 = swift_allocError();
    *v3 = 12;
    swift_willThrow();
    sub_1001BAF34((v0 + 2));

    v0[102] = v2;
    v4 = v0[45];
    v5 = sub_100198570;
    goto LABEL_3;
  }

  v7 = v0[7];
  sub_100017D5C(v7, v0[8]);
  sub_100017D5C(v7, v1);
  sub_10002EA98(57, v7, v1, v0 + 32);
  v5 = v0[32];
  v4 = v0[33];
  v8 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_21;
    }

    v10 = *(v5 + 16);
    v9 = *(v5 + 24);
    v11 = __OFSUB__(v9, v10);
    v12 = v9 - v10;
    if (!v11)
    {
      if (v12 == 57)
      {
        goto LABEL_13;
      }

      goto LABEL_21;
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v8)
  {
    if (!__OFSUB__(HIDWORD(v5), v5))
    {
      if (HIDWORD(v5) - v5 == 57)
      {
        goto LABEL_13;
      }

LABEL_21:
      sub_100016590(v5, v4);
      return _assertionFailure(_:_:file:line:flags:)();
    }

    goto LABEL_44;
  }

  if (BYTE6(v4) != 57)
  {
    goto LABEL_21;
  }

LABEL_13:
  v13 = v0[99];
  v14 = v0[32];
  v15 = v0[33];
  v16 = sub_100A7A194(v5, v4, 0, 0);
  if (v13)
  {
    v19 = static os_log_type_t.error.getter();
    if (qword_101694BE0 != -1)
    {
      swift_once();
    }

    v20 = qword_10177BA00;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_101385D80;
    v0[40] = v13;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v22 = String.init<A>(describing:)();
    v24 = v23;
    *(v21 + 56) = &type metadata for String;
    *(v21 + 64) = sub_100008C00();
    *(v21 + 32) = v22;
    *(v21 + 40) = v24;
    os_log(_:dso:log:_:_:)(v19, &_mh_execute_header, v20, "Error deriving advertisementKey: %@", 35, 2, v21);

    sub_1001BAF88();
    v25 = swift_allocError();
    *v26 = 0;
    swift_willThrow();

    goto LABEL_18;
  }

  v17 = sub_100A7829C(v16, 0, 2);
  v0[100] = v17;
  v0[101] = v18;
  v29 = v17;
  v30 = v18;
  v5 = CCECCryptorRelease();
  v31 = v30 >> 62;
  if ((v30 >> 62) > 1)
  {
    if (v31 != 2)
    {
      v36 = 0;
      goto LABEL_42;
    }

    v34 = *(v29 + 16);
    v33 = *(v29 + 24);
    v11 = __OFSUB__(v33, v34);
    v32 = v33 - v34;
    if (!v11)
    {
      v5 = v14;
      v4 = v15;
      goto LABEL_31;
    }

    goto LABEL_45;
  }

  v5 = v14;
  v4 = v15;
  if (!v31)
  {
    v32 = BYTE6(v30);
    goto LABEL_31;
  }

  LODWORD(v32) = HIDWORD(v29) - v29;
  if (__OFSUB__(HIDWORD(v29), v29))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v32 = v32;
LABEL_31:
  if (v32 == 28)
  {
    v35 = v0[45];
    sub_100016590(v5, v4);
    sub_100006654(v7, v1);
    sub_1001BAF34((v0 + 2));
    v5 = sub_100198000;
    v4 = v35;
LABEL_3:
    v6 = 0;

    return _swift_task_switch(v5, v4, v6);
  }

  if (v31 == 2)
  {
    v38 = *(v29 + 16);
    v37 = *(v29 + 24);
    v36 = v37 - v38;
    if (!__OFSUB__(v37, v38))
    {
      goto LABEL_42;
    }

    __break(1u);
    goto LABEL_41;
  }

  if (v31 != 1)
  {
LABEL_41:
    v36 = BYTE6(v30);
    goto LABEL_42;
  }

  if (!__OFSUB__(HIDWORD(v29), v29))
  {
    v36 = HIDWORD(v29) - v29;
LABEL_42:
    sub_100018350();
    v25 = swift_allocError();
    *v39 = 28;
    *(v39 + 8) = v36;
    *(v39 + 16) = 0;
    swift_willThrow();
    sub_100016590(v29, v30);
LABEL_18:
    _StringGuts.grow(_:)(35);
    v0[34] = 0;
    v0[35] = 0xE000000000000000;
    v27._countAndFlagsBits = 0xD000000000000021;
    v27._object = 0x800000010134CB30;
    String.append(_:)(v27);
    v0[41] = v25;
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    _print_unlocked<A, B>(_:_:)();
    return _assertionFailure(_:_:file:line:flags:)();
  }

LABEL_47:
  __break(1u);
  return _swift_task_switch(v5, v4, v6);
}

uint64_t sub_100198000()
{
  v1 = *(*(v0 + 400) + *(*(v0 + 384) + 64));
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  sub_1000035D0((v0 + 144), v2);
  v4 = (*(v3 + 88))(v2, v3);
  if (v1 > 2)
  {
    if (v1 == 3 || v1 != 4)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (v1)
  {
    if (v1 != 1)
    {
      LOBYTE(v1) = 0;
LABEL_13:
      v6 = *(v0 + 584);
      v7 = *(v0 + 560);
      v8 = *(v0 + 520);
      v10 = *(v0 + 456);
      v9 = *(v0 + 464);
      v11 = *(v0 + 448);
      v12 = *(v0 + 424);
      v13 = *(v0 + 432);
      v14 = *(v0 + 408);
      v15 = *(v13 + 48);
      v16 = *(v13 + 64);
      *v9 = *(v0 + 800);
      v7(&v9[v15], v12 + *(v14 + 28), v8);
      v9[v16] = v1;
      sub_1000D2A70(v9, v10, &qword_101698CC0, &unk_101390890);
      v17 = *(v13 + 48);
      v18 = *(v13 + 64);
      LOBYTE(v9) = *(v10 + v18);
      *v11 = *v10;
      v6(&v11[v17], v10 + v17, v8);
      v11[v18] = v9;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *(v0 + 736);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v20 = sub_100A5C3B0(0, v20[2] + 1, 1, *(v0 + 736));
      }

      v22 = v20[2];
      v21 = v20[3];
      if (v22 >= v21 >> 1)
      {
        v20 = sub_100A5C3B0((v21 > 1), v22 + 1, 1, v20);
      }

      v24 = *(v0 + 440);
      v23 = *(v0 + 448);
      v25 = *(v0 + 424);
      v26 = *(v0 + 400);
      sub_10000B3A8(*(v0 + 464), &qword_101698CC0, &unk_101390890);
      sub_1001BA80C(v26, type metadata accessor for SharedBeaconRecord);
      sub_1001BA80C(v25, type metadata accessor for MemberSharingCircle);
      v20[2] = v22 + 1;
      sub_1000D2AD8(v23, v20 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v22, &qword_101698CC0, &unk_101390890);
      v27 = sub_100007BAC((v0 + 144));
      v30 = *(v0 + 728) + 1;
      if (v30 == *(v0 + 720))
      {

        v31 = *(v0 + 8);

        return v31(v20);
      }

      else
      {
        *(v0 + 736) = v20;
        *(v0 + 728) = v30;
        v33 = *(v0 + 608);
        if (v30 >= *(v33 + 16))
        {
          __break(1u);
        }

        else
        {
          v34 = *(v0 + 552);
          v35 = *(v0 + 408);
          sub_1001BB2E0(v33 + ((*(v0 + 832) + 32) & ~*(v0 + 832)) + *(*(v0 + 416) + 72) * v30, *(v0 + 424), type metadata accessor for MemberSharingCircle);
          *(v0 + 836) = *(v35 + 24);
          v27 = sub_100196F70;
          v28 = v34;
          v29 = 0;
        }

        return _swift_task_switch(v27, v28, v29);
      }
    }

LABEL_10:
    if (v4)
    {
      LOBYTE(v1) = 2;
    }

    else
    {
      LOBYTE(v1) = 1;
    }

    goto LABEL_13;
  }

  v36 = *(v0 + 808);
  v37 = *(v0 + 800);
  v38 = *(v0 + 424);
  v39 = *(v0 + 400);

  type metadata accessor for SPBeaconSharingError(0);
  *(v0 + 344) = 2;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_1001B8FE4(&qword_101696340, type metadata accessor for SPBeaconSharingError, &unk_10138A4B4);
  _BridgedStoredNSError.init(_:userInfo:)();
  swift_willThrow();
  sub_100016590(v37, v36);
  sub_1001BA80C(v39, type metadata accessor for SharedBeaconRecord);
  sub_1001BA80C(v38, type metadata accessor for MemberSharingCircle);

  sub_100007BAC((v0 + 144));

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_100198570()
{
  v1 = v0[53];
  sub_1001BA80C(v0[50], type metadata accessor for SharedBeaconRecord);
  sub_1001BA80C(v1, type metadata accessor for MemberSharingCircle);
  sub_100007BAC(v0 + 18);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1001986AC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();
  v2[8] = sub_1000BC4D4(&unk_101698CA0, &unk_101393DB0);
  v2[9] = swift_task_alloc();
  v2[10] = sub_1000BC4D4(&qword_1016975B8, &unk_10138C1B0);
  v2[11] = swift_task_alloc();
  type metadata accessor for OwnerSharingCircle(0);
  v2[12] = swift_task_alloc();
  type metadata accessor for OwnerPeerTrust(0);
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_100198844, v1, 0);
}

uint64_t sub_100198844()
{
  v1 = *(*(v0 + 24) + 136);
  *(v0 + 112) = v1;
  return _swift_task_switch(sub_100198868, v1, 0);
}

uint64_t sub_100198868()
{
  v1 = v0[14];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  (*(v4 + 16))(v2, v0[2], v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  v0[15] = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);

  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_1001989C8;
  v9 = v0[8];
  v8 = v0[9];

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_1001BAE74, v6, v9);
}

uint64_t sub_1001989C8()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_100198AF4, v1, 0);
}

uint64_t sub_100198AF4()
{
  v1 = v0[9];
  v2 = sub_1000BC4D4(&qword_101698CB0, &qword_10138C1C8);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &unk_101698CA0, &unk_101393DB0);
    v3 = swift_task_alloc();
    v0[19] = v3;
    *v3 = v0;
    v3[1] = sub_1001990D0;
    v4 = v0[2];

    return sub_1003B218C(v4, 0);
  }

  else
  {
    v7 = v0[12];
    v6 = v0[13];
    v9 = v0[10];
    v8 = v0[11];
    v10 = *(v2 + 48);
    v11 = *(v9 + 48);
    sub_1001BAAE8(v1, v8, type metadata accessor for OwnerPeerTrust);
    sub_1001BAAE8(v1 + v10, v8 + v11, type metadata accessor for OwnerSharingCircle);
    v12 = *(v9 + 48);
    sub_1001BAAE8(v8, v6, type metadata accessor for OwnerPeerTrust);
    sub_1001BAAE8(v8 + v12, v7, type metadata accessor for OwnerSharingCircle);
    v13 = swift_task_alloc();
    v0[17] = v13;
    *v13 = v0;
    v13[1] = sub_100198D40;
    v14 = v0[12];
    v15 = v0[13];

    return sub_1003B0F40(v15, v14, 0);
  }
}

uint64_t sub_100198D40()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_100198FF8;
  }

  else
  {
    v4 = sub_100198E6C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100198E6C()
{
  v1 = v0[13];
  sub_1001BA80C(v0[12], type metadata accessor for OwnerSharingCircle);
  sub_1001BA80C(v1, type metadata accessor for OwnerPeerTrust);
  type metadata accessor for Transaction();
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = 0;
  *(v3 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  v4 = v0[1];

  return v4();
}

uint64_t sub_100198FF8()
{
  v1 = v0[13];
  sub_1001BA80C(v0[12], type metadata accessor for OwnerSharingCircle);
  sub_1001BA80C(v1, type metadata accessor for OwnerPeerTrust);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1001990D0()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 24);

    return _swift_task_switch(sub_10019924C, v6, 0);
  }
}

uint64_t sub_10019924C()
{
  type metadata accessor for Transaction();
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = 0;
  *(v2 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001993A0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();
  v2[8] = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for MemberSharingCircle(0);
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_100199500, v1, 0);
}

uint64_t sub_100199500()
{
  v1 = *(*(v0 + 24) + 136);
  *(v0 + 104) = v1;
  return _swift_task_switch(sub_100199524, v1, 0);
}

uint64_t sub_100199524()
{
  v1 = v0[13];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  (*(v4 + 16))(v2, v0[2], v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  v0[14] = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);

  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_100199684;
  v9 = v0[8];
  v8 = v0[9];

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4C4, v6, v9);
}

uint64_t sub_100199684()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_1001997B0, v1, 0);
}

uint64_t sub_1001997B0()
{
  v1 = v0[9];
  if ((*(v0[11] + 48))(v1, 1, v0[10]) == 1)
  {
    sub_10000B3A8(v1, &unk_101698BC0, &qword_10138C440);
    sub_1001BAB50();
    swift_allocError();
    *v2 = 3;
    swift_willThrow();

    v3 = v0[1];

    return v3();
  }

  else
  {
    sub_1001BAAE8(v1, v0[12], type metadata accessor for MemberSharingCircle);
    v5 = swift_task_alloc();
    v0[16] = v5;
    *v5 = v0;
    v5[1] = sub_100199948;
    v6 = v0[12];

    return sub_10107F924(v6);
  }
}

uint64_t sub_100199948()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_100199A58, v1, 0);
}

uint64_t sub_100199A58()
{
  v1 = *(v0 + 96);
  type metadata accessor for Transaction();
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = 0;
  *(v3 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  sub_1001BA80C(v1, type metadata accessor for MemberSharingCircle);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100199BAC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = v4;
  *(v5 + 476) = a2;
  *(v5 + 32) = a1;
  *(v5 + 40) = a3;
  *(v5 + 64) = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  *(v5 + 72) = swift_task_alloc();
  v6 = type metadata accessor for MemberSharingCircle(0);
  *(v5 + 80) = v6;
  *(v5 + 88) = *(v6 - 8);
  *(v5 + 96) = swift_task_alloc();
  *(v5 + 104) = *(type metadata accessor for OwnerPeerTrust(0) - 8);
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = swift_task_alloc();
  *(v5 + 128) = sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  *(v5 + 136) = swift_task_alloc();
  v7 = type metadata accessor for OwnerSharingCircle(0);
  *(v5 + 144) = v7;
  *(v5 + 152) = *(v7 - 8);
  *(v5 + 160) = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  *(v5 + 168) = v8;
  v9 = *(v8 - 8);
  *(v5 + 176) = v9;
  *(v5 + 184) = *(v9 + 64);
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = swift_task_alloc();

  return _swift_task_switch(sub_100199E28, v4, 0);
}

uint64_t sub_100199E28()
{
  v23 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[4];
  v5 = type metadata accessor for Logger();
  v0[27] = v5;
  sub_1000076D4(v5, qword_10177A560);
  v6 = *(v3 + 16);
  v0[28] = v6;
  v0[29] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[26];
  v11 = v0[21];
  v12 = v0[22];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_1000136BC(v14, v16, &v22);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Handle decline %{private,mask.hash}s", v13, 0x16u);
    sub_100007BAC(v21);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[30] = v17;
  v19 = swift_task_alloc();
  v0[31] = v19;
  *v19 = v0;
  v19[1] = sub_10019A0BC;

  return daemon.getter();
}

uint64_t sub_10019A0BC(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[32] = a1;

  v3 = swift_task_alloc();
  v2[33] = v3;
  v4 = type metadata accessor for Daemon();
  v2[34] = v4;
  v5 = type metadata accessor for PeerTrustService();
  v6 = sub_1001B8FE4(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[35] = v6;
  v7 = sub_1001B8FE4(&qword_1016B1190, type metadata accessor for PeerTrustService, &unk_1013EBD00);
  *v3 = v9;
  v3[1] = sub_10019A29C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10019A29C(uint64_t a1)
{
  v3 = *v2;
  v3[36] = a1;
  v3[37] = v1;

  if (v1)
  {
    v4 = v3[7];
    v5 = sub_10019C38C;
  }

  else
  {
    v6 = v3[7];

    v5 = sub_10019A3C4;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10019A3C4()
{
  v1 = *(*(v0 + 56) + 136);
  *(v0 + 304) = v1;
  return _swift_task_switch(sub_10019A3E8, v1, 0);
}

uint64_t sub_10019A3E8()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 200);
  v3 = *(v0 + 176);
  v4 = *(v0 + 168);
  (*(v0 + 224))(v2, *(v0 + 32), v4);
  v5 = *(v3 + 80);
  *(v0 + 472) = v5;
  v6 = (v5 + 24) & ~v5;
  v7 = swift_allocObject();
  *(v0 + 312) = v7;
  *(v7 + 16) = v1;
  v8 = *(v3 + 32);
  *(v0 + 320) = v8;
  *(v0 + 328) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v8(v7 + v6, v2, v4);

  v9 = swift_task_alloc();
  *(v0 + 336) = v9;
  *v9 = v0;
  v9[1] = sub_10019A554;
  v11 = *(v0 + 128);
  v10 = *(v0 + 136);

  return unsafeBlocking<A>(context:_:)(v10, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4B0, v7, v11);
}

uint64_t sub_10019A554()
{
  v1 = *(*v0 + 56);

  return _swift_task_switch(sub_10019A680, v1, 0);
}

uint64_t sub_10019A680()
{
  v1 = *(v0 + 136);
  if ((*(*(v0 + 152) + 48))(v1, 1, *(v0 + 144)) == 1)
  {
    sub_10000B3A8(v1, &unk_1016AFA00, &qword_10138C4D0);
    v2 = *(v0 + 304);

    return _swift_task_switch(sub_10019B8E4, v2, 0);
  }

  else
  {
    sub_1001BAAE8(v1, *(v0 + 160), type metadata accessor for OwnerSharingCircle);
    v3 = swift_task_alloc();
    *(v0 + 344) = v3;
    *v3 = v0;
    v3[1] = sub_10019A7B4;
    v4 = *(v0 + 40);
    v5 = *(v0 + 48);
    v6 = *(v0 + 476);

    return sub_100E86158(v6, v4, v5);
  }
}

uint64_t sub_10019A7B4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 352) = a1;
  *(v4 + 360) = v1;

  v5 = *(v3 + 56);
  if (v1)
  {
    v6 = sub_10019C470;
  }

  else
  {
    v6 = sub_10019A8E8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10019A8E8()
{
  v1 = v0[44];
  if (*(v1 + 16))
  {
    v3 = v0[14];
    v2 = v0[15];
    v4 = *(v0[13] + 80);
    sub_1001BB2E0(v1 + ((v4 + 32) & ~v4), v3, type metadata accessor for OwnerPeerTrust);

    sub_1001BAAE8(v3, v2, type metadata accessor for OwnerPeerTrust);
    v5 = swift_task_alloc();
    v0[46] = v5;
    *v5 = v0;
    v5[1] = sub_10019AA48;

    return daemon.getter();
  }

  else
  {
    sub_1001BA80C(v0[20], type metadata accessor for OwnerSharingCircle);

    v6 = v0[38];

    return _swift_task_switch(sub_10019B8E4, v6, 0);
  }
}

uint64_t sub_10019AA48(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 376) = a1;

  v5 = swift_task_alloc();
  *(v3 + 384) = v5;
  v6 = type metadata accessor for FamilyCircleService();
  v7 = sub_1001B8FE4(&unk_1016AF840, type metadata accessor for FamilyCircleService, &unk_1013E4DC8);
  *v5 = v4;
  v5[1] = sub_10019ABFC;
  v8 = *(v2 + 280);
  v9 = *(v2 + 272);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_10019ABFC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 392) = a1;

  if (v1)
  {
    v5 = *(v3 + 56);

    return _swift_task_switch(sub_10019B714, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    *(v3 + 400) = v6;
    *v6 = v4;
    v6[1] = sub_10019ADD0;
    v7 = *(v3 + 40);
    v8 = *(v3 + 48);
    v9 = *(v3 + 476);

    return sub_100D4E560(v9, v7, v8);
  }
}

uint64_t sub_10019ADD0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  *(v5 + 408) = a2;
  *(v5 + 416) = v2;

  v6 = *(v4 + 56);
  if (v2)
  {
    v7 = sub_10019B1BC;
  }

  else
  {
    v7 = sub_10019AEFC;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10019AEFC()
{
  if (v0[51])
  {

LABEL_11:
    v10 = swift_task_alloc();
    v0[53] = v10;
    *v10 = v0;
    v10[1] = sub_10019B2EC;
    v11 = v0[20];
    v12 = v0[15];

    return sub_1003B0F40(v12, v11, 1);
  }

  sub_101129F64(&off_101608288);
  v1 = sub_10112C0E0();

  if ((v1 & 1) == 0)
  {
    goto LABEL_11;
  }

  if (qword_101694488 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v0[27], qword_10177A578);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[20];
  v6 = v0[15];
  if (v4)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Ignoring incoming UTFS message from non-family member", v7, 2u);
  }

  sub_1001BA80C(v6, type metadata accessor for OwnerPeerTrust);
  sub_1001BA80C(v5, type metadata accessor for OwnerSharingCircle);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10019B1BC()
{
  v1 = v0[20];
  v2 = v0[15];

  sub_1001BA80C(v2, type metadata accessor for OwnerPeerTrust);
  sub_1001BA80C(v1, type metadata accessor for OwnerSharingCircle);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10019B2EC()
{
  v2 = *v1;
  *(*v1 + 432) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_10019B5E4;
  }

  else
  {
    v4 = sub_10019B418;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10019B418()
{
  v1 = v0[20];
  v2 = v0[15];
  type metadata accessor for Transaction();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = 0;
  *(v4 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  sub_1001BA80C(v2, type metadata accessor for OwnerPeerTrust);
  sub_1001BA80C(v1, type metadata accessor for OwnerSharingCircle);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10019B5E4()
{
  v1 = v0[20];
  v2 = v0[15];

  sub_1001BA80C(v2, type metadata accessor for OwnerPeerTrust);
  sub_1001BA80C(v1, type metadata accessor for OwnerSharingCircle);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10019B714()
{
  if (qword_101694488 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v0[27], qword_10177A578);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[20];
  v5 = v0[15];
  if (v3)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "No FamilyCircleService available!", v6, 2u);
  }

  sub_1001BA80C(v5, type metadata accessor for OwnerPeerTrust);
  sub_1001BA80C(v4, type metadata accessor for OwnerSharingCircle);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10019B8E4()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 304);
  v3 = *(v0 + 200);
  v4 = *(v0 + 168);
  v5 = (*(v0 + 472) + 24) & ~*(v0 + 472);
  (*(v0 + 224))(v3, *(v0 + 32), v4);
  v6 = swift_allocObject();
  *(v0 + 440) = v6;
  *(v6 + 16) = v2;
  v1(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 448) = v7;
  *v7 = v0;
  v7[1] = sub_10019BA34;
  v9 = *(v0 + 64);
  v8 = *(v0 + 72);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4B4, v6, v9);
}

uint64_t sub_10019BA34()
{
  v1 = *(*v0 + 56);

  return _swift_task_switch(sub_10019BB60, v1, 0);
}

uint64_t sub_10019BB60()
{
  v29 = v0;
  v1 = v0[10];
  v2 = v0[9];
  if ((*(v0[11] + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &unk_101698BC0, &qword_10138C440);
    type metadata accessor for SPBeaconSharingError(0);
    v0[3] = 4;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_1001B8FE4(&qword_101696340, type metadata accessor for SPBeaconSharingError, &unk_10138A4B4);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    v3 = v0[1];
LABEL_13:

    return v3();
  }

  v4 = v0[12];
  sub_1001BAAE8(v2, v4, type metadata accessor for MemberSharingCircle);
  if (*(v4 + *(v1 + 40)) != 2)
  {
    if (qword_101694488 != -1)
    {
      swift_once();
    }

    v8 = v0[28];
    v9 = v0[24];
    v10 = v0[21];
    v11 = v0[4];
    sub_1000076D4(v0[27], qword_10177A578);
    v8(v9, v11, v10);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[30];
    v16 = v0[24];
    v17 = v0[21];
    v18 = v0[12];
    if (v14)
    {
      v26 = v0[30];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      *v19 = 141558275;
      *(v19 + 4) = 1752392040;
      *(v19 + 12) = 2081;
      sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v18;
      v23 = v22;
      v26(v16, v17);
      v24 = sub_1000136BC(v21, v23, &v28);

      *(v19 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v12, v13, "Received decline for not requested member share %{private,mask.hash}s", v19, 0x16u);
      sub_100007BAC(v20);

      v25 = v27;
    }

    else
    {

      v15(v16, v17);
      v25 = v18;
    }

    sub_1001BA80C(v25, type metadata accessor for MemberSharingCircle);

    v3 = v0[1];
    goto LABEL_13;
  }

  v5 = swift_task_alloc();
  v0[57] = v5;
  *v5 = v0;
  v5[1] = sub_10019C060;
  v6 = v0[12];

  return sub_1003C7900(v6);
}

uint64_t sub_10019C060()
{
  v2 = *v1;
  *(*v1 + 464) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_10019C288;
  }

  else
  {
    v4 = sub_10019C18C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10019C18C()
{
  v1 = *(v0 + 96);

  sub_1001BA80C(v1, type metadata accessor for MemberSharingCircle);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10019C288()
{
  v1 = *(v0 + 96);

  sub_1001BA80C(v1, type metadata accessor for MemberSharingCircle);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10019C38C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10019C470()
{
  v1 = *(v0 + 160);

  sub_1001BA80C(v1, type metadata accessor for OwnerSharingCircle);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10019C574(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for MACAddress();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v2[8] = *(v4 + 64);
  v2[9] = swift_task_alloc();
  v2[10] = sub_1000BC4D4(&qword_101698E18, &unk_101390B80);
  v2[11] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_101698E20, &unk_10139FDF0);
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = type metadata accessor for WildModeAssociationRecord(0);
  v2[16] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[17] = v6;
  v7 = *(v6 - 8);
  v2[18] = v7;
  v2[19] = *(v7 + 64);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_10019C780, v1, 0);
}

uint64_t sub_10019C780()
{
  v22 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[4];
  v5 = type metadata accessor for Logger();
  v0[22] = sub_1000076D4(v5, qword_10177A560);
  v6 = *(v3 + 16);
  v0[23] = v6;
  v0[24] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[21];
  v11 = v0[17];
  v12 = v0[18];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v10, v11);
    v18 = sub_1000136BC(v15, v17, &v21);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Request unknown beacon %{private,mask.hash}s", v13, 0x16u);
    sub_100007BAC(v14);
  }

  else
  {

    (*(v12 + 8))(v10, v11);
  }

  v19 = *(v0[5] + 136);
  v0[25] = v19;

  return _swift_task_switch(sub_10019C9E8, v19, 0);
}

uint64_t sub_10019C9E8()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 160);
  v3 = *(v0 + 136);
  v4 = *(v0 + 144);
  (*(v0 + 184))(v2, *(v0 + 32), v3);
  v5 = *(v4 + 80);
  *(v0 + 312) = v5;
  v6 = (v5 + 24) & ~v5;
  v7 = swift_allocObject();
  *(v0 + 208) = v7;
  *(v7 + 16) = v1;
  v8 = *(v4 + 32);
  *(v0 + 216) = v8;
  *(v0 + 224) = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v8(v7 + v6, v2, v3);

  v9 = swift_task_alloc();
  *(v0 + 232) = v9;
  *v9 = v0;
  v9[1] = sub_10019CB50;
  v11 = *(v0 + 120);
  v10 = *(v0 + 128);

  return unsafeBlocking<A>(context:_:)(v10, 0xD000000000000010, 0x800000010134A8C0, sub_1001BCC5C, v7, v11);
}

uint64_t sub_10019CB50()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = *(v2 + 200);
    v4 = sub_10019D1D8;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_10019CC78;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10019CC78(uint64_t a1)
{
  v2 = *(v1 + 120);
  v3 = (*(v1 + 128) + *(v2 + 48));
  v4 = v3[2];
  *(v1 + 248) = v4;
  if (v4)
  {
    v5 = *(v1 + 200);
    *(v1 + 256) = v3[1];
    *(v1 + 264) = *v3;
    *(v1 + 316) = *(v2 + 28);

    return _swift_task_switch(sub_10019CEAC, v5, 0);
  }

  else
  {
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Failure in share requesting, can't find beacon.", v8, 2u);
    }

    v9 = *(v1 + 128);

    type metadata accessor for SPBeaconSharingError(0);
    *(v1 + 24) = 4;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_1001B8FE4(&qword_101696340, type metadata accessor for SPBeaconSharingError, &unk_10138A4B4);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    sub_1001BA80C(v9, type metadata accessor for WildModeAssociationRecord);

    v10 = *(v1 + 8);

    return v10();
  }
}

uint64_t sub_10019CEAC()
{
  v17 = *(v0 + 316);
  v22 = *(v0 + 256);
  v23 = *(v0 + 264);
  v21 = *(v0 + 248);
  v19 = *(v0 + 200);
  v20 = *(v0 + 216);
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = *(v0 + 128);
  v4 = *(v0 + 136);
  v5 = *(v0 + 72);
  v18 = v5;
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = (*(v0 + 312) + 24) & ~*(v0 + 312);
  (*(v0 + 184))(v2, *(v0 + 32), v4);
  (*(v7 + 16))(v5, v3 + v17, v6);
  v9 = (v8 + v1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + *(v7 + 80) + 24) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v0 + 272) = v11;
  *(v11 + 16) = v19;
  v20(v11 + v8, v2, v4);
  v12 = v11 + v9;
  *v12 = v23;
  *(v12 + 8) = v22;
  *(v12 + 16) = v21;
  (*(v7 + 32))(v11 + v10, v18, v6);

  v13 = swift_task_alloc();
  *(v0 + 280) = v13;
  *v13 = v0;
  v13[1] = sub_10019D0B0;
  v15 = *(v0 + 80);
  v14 = *(v0 + 88);

  return unsafeBlocking<A>(context:_:)(v14, 0xD000000000000010, 0x800000010134A8C0, sub_1001BCCCC, v11, v15);
}

uint64_t sub_10019D0B0()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = *(v2 + 200);
    v4 = sub_10019D5A8;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_10019D2F0;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10019D1D8()
{
  v1 = *(v0 + 40);

  return _swift_task_switch(sub_10019D244, v1, 0);
}

uint64_t sub_10019D244()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10019D2F0()
{
  v1 = v0[12];
  v2 = v0[11];
  if ((*(v0[13] + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &qword_101698E18, &unk_101390B80);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Failure in share requesting, can't find beacon.", v5, 2u);
    }

    v6 = v0[16];

    type metadata accessor for SPBeaconSharingError(0);
    v0[3] = 4;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_1001B8FE4(&qword_101696340, type metadata accessor for SPBeaconSharingError, &unk_10138A4B4);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    sub_1001BA80C(v6, type metadata accessor for WildModeAssociationRecord);

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[14];
    sub_1000D2AD8(v2, v9, &qword_101698E20, &unk_10139FDF0);
    v10 = *(v1 + 48);
    v11 = swift_task_alloc();
    v0[37] = v11;
    *v11 = v0;
    v11[1] = sub_10019D6DC;
    v12 = v0[14];

    return sub_1003BE5C0(v9 + v10, v12);
  }
}

uint64_t sub_10019D5A8()
{
  v1 = *(v0 + 40);

  return _swift_task_switch(sub_10019D614, v1, 0);
}

uint64_t sub_10019D614()
{
  sub_1001BA80C(*(v0 + 128), type metadata accessor for WildModeAssociationRecord);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10019D6DC()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_10019D9A0;
  }

  else
  {
    v4 = sub_10019D808;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10019D808()
{
  v1 = v0[16];
  v2 = v0[14];
  type metadata accessor for Transaction();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = 0;
  *(v4 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  sub_10000B3A8(v2, &qword_101698E20, &unk_10139FDF0);

  sub_1001BA80C(v1, type metadata accessor for WildModeAssociationRecord);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10019D9A0()
{
  v1 = v0[16];
  sub_10000B3A8(v0[14], &qword_101698E20, &unk_10139FDF0);
  sub_1001BA80C(v1, type metadata accessor for WildModeAssociationRecord);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10019DA84(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return _swift_task_switch(sub_10019DAA4, v1, 0);
}

uint64_t sub_10019DAA4()
{
  v1 = *(v0[8] + 200);
  v2 = type metadata accessor for MemberCircleRevokeManager();
  v0[2] = v1;
  v0[5] = v2;
  v0[6] = &off_1016634E8;

  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_10019DB88;
  v4 = v0[7];

  return sub_1003B2FC8(v4, (v0 + 2));
}

uint64_t sub_10019DB88()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = sub_10019DDB4;
  }

  else
  {
    v5 = *(v2 + 64);
    sub_100007BAC((v2 + 16));
    v4 = sub_10019DCB0;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10019DCB0()
{
  type metadata accessor for Transaction();
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = 0;
  *(v2 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10019DDB4()
{
  sub_100007BAC((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10019DE18(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10019DE38, v1, 0);
}

uint64_t sub_10019DE38()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v0 + 32) = v2;
  if (v2)
  {
    v3 = *(type metadata accessor for UUID() - 8);
    v4 = *(v3 + 80);
    *(v0 + 64) = v4;
    v5 = (v4 + 32) & ~v4;
    *(v0 + 40) = *(v3 + 72);
    *(v0 + 48) = 0;
    v6 = swift_task_alloc();
    *(v0 + 56) = v6;
    *v6 = v0;
    v6[1] = sub_10019E03C;

    return sub_1003B218C(v1 + v5, 1);
  }

  else
  {
    type metadata accessor for Transaction();
    v8 = swift_allocObject();
    swift_weakInit();
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = 0;
    *(v9 + 32) = 1;

    static Transaction.asyncTask(name:block:)();

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_10019E03C()
{
  v2 = *v1;

  v3 = *(v2 + 24);
  if (v0)
  {

    v4 = sub_1001BE460;
  }

  else
  {
    v4 = sub_10019E174;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10019E174()
{
  v1 = *(v0 + 48) + 1;
  if (v1 == *(v0 + 32))
  {
    type metadata accessor for Transaction();
    v2 = swift_allocObject();
    swift_weakInit();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    *(v3 + 24) = 0;
    *(v3 + 32) = 1;

    static Transaction.asyncTask(name:block:)();

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    *(v0 + 48) = v1;
    v6 = *(v0 + 16) + ((*(v0 + 64) + 32) & ~*(v0 + 64)) + *(v0 + 40) * v1;
    v7 = swift_task_alloc();
    *(v0 + 56) = v7;
    *v7 = v0;
    v7[1] = sub_10019E03C;

    return sub_1003B218C(v6, 1);
  }
}

uint64_t sub_10019E338(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for UUID();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v2[8] = *(v4 + 64);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_10019E418, v1, 0);
}

uint64_t sub_10019E418()
{
  v1 = *(v0[5] + 136);
  v0[12] = v1;
  v0[13] = sub_100B08164(&off_101608120);

  return _swift_task_switch(sub_10019E494, v1, 0);
}

uint64_t sub_10019E494()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 48);
  v7 = *(v0 + 32);
  v8 = *(v5 + 16);
  *(v0 + 112) = v8;
  *(v0 + 120) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v3, v7, v6);
  v9 = *(v5 + 80);
  *(v0 + 240) = v9;
  v10 = (v9 + 24) & ~v9;
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v0 + 128) = v12;
  *(v12 + 16) = v1;
  v13 = *(v5 + 32);
  *(v0 + 136) = v13;
  *(v0 + 144) = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v13(v12 + v10, v3, v6);
  *(v12 + v11) = v2;

  v14 = swift_task_alloc();
  *(v0 + 152) = v14;
  v15 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v14 = v0;
  v14[1] = sub_10019E648;

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4AC, v12, v15);
}

uint64_t sub_10019E648()
{
  v1 = *(*v0 + 96);

  return _swift_task_switch(sub_10019E774, v1, 0);
}

uint64_t sub_10019E774()
{
  v1 = v0[5];
  v0[20] = v0[2];
  return _swift_task_switch(sub_10019E798, v1, 0);
}

uint64_t sub_10019E798()
{
  v23 = v0;
  if (*(v0[20] + 16))
  {
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v1 = v0[14];
    v2 = v0[9];
    v3 = v0[6];
    v4 = v0[4];
    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177A560);
    v1(v2, v4, v3);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[9];
    v10 = v0[6];
    v11 = v0[7];
    if (v8)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v22 = v13;
      *v12 = 141558275;
      *(v12 + 4) = 1752392040;
      *(v12 + 12) = 2081;
      sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      (*(v11 + 8))(v9, v10);
      v17 = sub_1000136BC(v14, v16, &v22);

      *(v12 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v6, v7, "Stop sharing of %{private,mask.hash}s", v12, 0x16u);
      sub_100007BAC(v13);
    }

    else
    {

      (*(v11 + 8))(v9, v10);
    }

    v19 = swift_task_alloc();
    v0[28] = v19;
    *v19 = v0;
    v19[1] = sub_10019F4D0;
    v20 = v0[20];

    return sub_1003B518C(v20);
  }

  else
  {
    v18 = v0[12];

    return _swift_task_switch(sub_10019EA84, v18, 0);
  }
}

uint64_t sub_10019EA84()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 48);
  v5 = (*(v0 + 240) + 24) & ~*(v0 + 240);
  (*(v0 + 112))(v2, *(v0 + 32), v4);
  v6 = swift_allocObject();
  *(v0 + 168) = v6;
  *(v6 + 16) = v3;
  v1(v6 + v5, v2, v4);

  v7 = swift_task_alloc();
  *(v0 + 176) = v7;
  v8 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v7 = v0;
  v7[1] = sub_10019EBE8;

  return unsafeBlocking<A>(context:_:)(v0 + 24, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4B8, v6, v8);
}

uint64_t sub_10019EBE8()
{
  v1 = *(*v0 + 96);

  return _swift_task_switch(sub_10019ED14, v1, 0);
}

uint64_t sub_10019ED14()
{
  v1 = v0[5];
  v0[23] = v0[3];
  return _swift_task_switch(sub_10019ED38, v1, 0);
}

uint64_t sub_10019ED38()
{
  v1 = v0[23];
  v2 = *(v1 + 16);
  if (v2 < 2)
  {
    goto LABEL_7;
  }

  if (qword_101694480 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177A560);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = *(v1 + 16);

      _os_log_impl(&_mh_execute_header, v4, v5, "Too much circles to decline on sharing stop! There is %ld circles.", v6, 0xCu);
    }

    else
    {
    }

    v2 = *(v1 + 16);
LABEL_7:
    v0[24] = v2;
    if (!v2)
    {
      break;
    }

    v0[25] = 0;
    v7 = v0[23];
    if (*(v7 + 16))
    {
      v8 = v0[14];
      v9 = v0[10];
      v10 = v0[6];
      v11 = type metadata accessor for MemberSharingCircle(0);
      v8(v9, v7 + *(v11 + 28) + ((*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80)), v10);
      v12 = swift_task_alloc();
      v0[26] = v12;
      *v12 = v0;
      v12[1] = sub_10019F080;
      v13 = v0[10];

      return sub_1003B218C(v13, 0);
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

  type metadata accessor for Transaction();
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = 0;
  *(v16 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  v17 = v0[1];

  return v17();
}

uint64_t sub_10019F080()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = v2[10];
    v4 = v2[6];
    v5 = v2[7];
    v6 = v2[5];
    (*(v5 + 8))(v3, v4);

    v7 = sub_10019F450;
    v8 = v6;
  }

  else
  {
    v9 = v2[5];
    (*(v2[7] + 8))(v2[10], v2[6]);
    v7 = sub_10019F1E0;
    v8 = v9;
  }

  return _swift_task_switch(v7, v8, 0);
}

void sub_10019F1E0()
{
  v1 = v0[25] + 1;
  if (v1 == v0[24])
  {

    type metadata accessor for Transaction();
    v2 = swift_allocObject();
    swift_weakInit();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    *(v3 + 24) = 0;
    *(v3 + 32) = 1;

    static Transaction.asyncTask(name:block:)();

    v4 = v0[1];

    v4();
  }

  else
  {
    v0[25] = v1;
    v5 = v0[23];
    if (v1 >= *(v5 + 16))
    {
      __break(1u);
    }

    else
    {
      v6 = v0[14];
      v7 = v0[10];
      v8 = v0[6];
      v9 = type metadata accessor for MemberSharingCircle(0);
      v6(v7, v5 + ((*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80)) + *(*(v9 - 8) + 72) * v1 + *(v9 + 28), v8);
      v10 = swift_task_alloc();
      v0[26] = v10;
      *v10 = v0;
      v10[1] = sub_10019F080;
      v11 = v0[10];

      sub_1003B218C(v11, 0);
    }
  }
}

uint64_t sub_10019F450()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10019F4D0()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = sub_10019F72C;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_10019F5F8;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10019F5F8()
{
  type metadata accessor for Transaction();
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = 0;
  *(v2 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10019F72C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10019F7B4(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v2[8] = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v2[9] = swift_task_alloc();
  v3 = type metadata accessor for SharedBeaconRecord(0);
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v4 = type metadata accessor for MemberSharingCircle(0);
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v2[16] = v5;
  v6 = *(v5 - 8);
  v2[17] = v6;
  v2[18] = *(v6 + 64);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v7 = type metadata accessor for OwnedBeaconRecord(0);
  v2[21] = v7;
  v2[22] = *(v7 - 8);
  v2[23] = swift_task_alloc();

  return _swift_task_switch(sub_10019F9D8, v1, 0);
}

uint64_t sub_10019F9D8()
{
  v18 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A560);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[6];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315138;
    v0[5] = v4;
    type metadata accessor for SPShareType(0);
    v7 = String.init<A>(describing:)();
    v9 = sub_1000136BC(v7, v8, &v17);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "forceBreakAllShares of %s type", v5, 0xCu);
    sub_100007BAC(v6);
  }

  v10 = v0[6];
  if (v10)
  {
    v15 = *(v0[7] + 136);
    v0[24] = v15;
    v16 = sub_10019FCD4;
  }

  else
  {
    if ((v10 & 2) == 0)
    {
      type metadata accessor for Transaction();
      v11 = swift_allocObject();
      swift_weakInit();
      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 1;

      static Transaction.asyncTask(name:block:)();

      v13 = v0[1];

      return v13();
    }

    v15 = *(v0[7] + 136);
    v0[37] = v15;
    v16 = sub_1001A0BD8;
  }

  return _swift_task_switch(v16, v15, 0);
}

uint64_t sub_10019FCD4()
{

  v1 = swift_task_alloc();
  *(v0 + 200) = v1;
  v2 = sub_1000BC4D4(&qword_101698C80, &unk_1013A23F0);
  *v1 = v0;
  v1[1] = sub_10019FDC0;
  v3 = *(v0 + 192);

  return unsafeBlocking<A>(context:_:)(v0 + 24, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4C0, v3, v2);
}

uint64_t sub_10019FDC0()
{
  v1 = *(*v0 + 192);

  return _swift_task_switch(sub_10019FED8, v1, 0);
}

uint64_t sub_10019FED8()
{
  v1 = v0[7];
  v0[26] = v0[3];
  return _swift_task_switch(sub_10019FEFC, v1, 0);
}

uint64_t sub_10019FEFC()
{
  v1 = *(v0 + 208);
  v2 = *(v1 + 16);
  *(v0 + 216) = v2;
  if (v2)
  {
    v3 = *(v0 + 176);
    v4 = *(v0 + 184);
    v5 = *(v0 + 160);
    v6 = *(*(v0 + 168) + 20);
    *(v0 + 368) = v6;
    v7 = *(v3 + 80);
    *(v0 + 372) = v7;
    *(v0 + 224) = *(v3 + 72);
    *(v0 + 232) = 0;
    v8 = *(v0 + 192);
    v9 = *(v0 + 128);
    v10 = *(v0 + 136);
    sub_1001BB2E0(v1 + ((v7 + 32) & ~v7), v4, type metadata accessor for OwnedBeaconRecord);
    v11 = *(v10 + 16);
    *(v0 + 240) = v11;
    *(v0 + 248) = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v11(v5, v4 + v6, v9);
    sub_1001BA80C(v4, type metadata accessor for OwnedBeaconRecord);
    *(v0 + 256) = sub_100B08164(&off_101608148);
    v12 = sub_1001A018C;
    v13 = v8;
LABEL_8:

    return _swift_task_switch(v12, v13, 0);
  }

  if ((*(v0 + 48) & 2) != 0)
  {
    v13 = *(*(v0 + 56) + 136);
    *(v0 + 296) = v13;
    v12 = sub_1001A0BD8;
    goto LABEL_8;
  }

  type metadata accessor for Transaction();
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = 0;
  *(v15 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1001A018C()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 192);
  v3 = *(v0 + 152);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v6 = *(v0 + 128);
  (*(v0 + 240))(v3, *(v0 + 160), v6);
  v7 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v8 = (v4 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  *(v0 + 264) = v9;
  *(v9 + 16) = v2;
  (*(v5 + 32))(v9 + v7, v3, v6);
  *(v9 + v8) = v1;

  v10 = swift_task_alloc();
  *(v0 + 272) = v10;
  v11 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v10 = v0;
  v10[1] = sub_1001A030C;

  return unsafeBlocking<A>(context:_:)(v0 + 32, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4AC, v9, v11);
}

uint64_t sub_1001A030C()
{
  v1 = *(*v0 + 192);

  return _swift_task_switch(sub_1001A0438, v1, 0);
}

uint64_t sub_1001A0438()
{
  v1 = v0[7];
  (*(v0[17] + 8))(v0[20], v0[16]);
  v0[35] = v0[4];

  return _swift_task_switch(sub_1001A04BC, v1, 0);
}

uint64_t sub_1001A04BC()
{
  if (*(*(v0 + 280) + 16))
  {
    v1 = swift_task_alloc();
    *(v0 + 288) = v1;
    *v1 = v0;
    v1[1] = sub_1001A07EC;
    v2 = *(v0 + 280);

    return sub_1003B64C0(v2);
  }

  v4 = *(v0 + 232) + 1;
  if (v4 == *(v0 + 216))
  {

    if ((*(v0 + 48) & 2) == 0)
    {
      type metadata accessor for Transaction();
      v5 = swift_allocObject();
      swift_weakInit();
      v6 = swift_allocObject();
      *(v6 + 16) = v5;
      *(v6 + 24) = 0;
      *(v6 + 32) = 1;

      static Transaction.asyncTask(name:block:)();

      v7 = *(v0 + 8);

      return v7();
    }

    v16 = *(*(v0 + 56) + 136);
    *(v0 + 296) = v16;
    v15 = sub_1001A0BD8;
  }

  else
  {
    *(v0 + 232) = v4;
    v8 = *(v0 + 368);
    v9 = *(v0 + 184);
    v10 = *(v0 + 192);
    v11 = *(v0 + 160);
    v12 = *(v0 + 128);
    v13 = *(v0 + 136);
    sub_1001BB2E0(*(v0 + 208) + ((*(v0 + 372) + 32) & ~*(v0 + 372)) + *(v0 + 224) * v4, v9, type metadata accessor for OwnedBeaconRecord);
    v14 = *(v13 + 16);
    *(v0 + 240) = v14;
    *(v0 + 248) = (v13 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v14(v11, v9 + v8, v12);
    sub_1001BA80C(v9, type metadata accessor for OwnedBeaconRecord);
    *(v0 + 256) = sub_100B08164(&off_101608148);
    v15 = sub_1001A018C;
    v16 = v10;
  }

  return _swift_task_switch(v15, v16, 0);
}

uint64_t sub_1001A07EC()
{
  v2 = *v1;

  v3 = *(v2 + 56);
  if (v0)
  {

    v4 = sub_1001BE45C;
  }

  else
  {

    v4 = sub_1001A0948;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1001A0948()
{
  v1 = *(v0 + 232) + 1;
  if (v1 == *(v0 + 216))
  {

    if ((*(v0 + 48) & 2) == 0)
    {
      type metadata accessor for Transaction();
      v2 = swift_allocObject();
      swift_weakInit();
      v3 = swift_allocObject();
      *(v3 + 16) = v2;
      *(v3 + 24) = 0;
      *(v3 + 32) = 1;

      static Transaction.asyncTask(name:block:)();

      v4 = *(v0 + 8);

      return v4();
    }

    v14 = *(*(v0 + 56) + 136);
    *(v0 + 296) = v14;
    v13 = sub_1001A0BD8;
  }

  else
  {
    *(v0 + 232) = v1;
    v6 = *(v0 + 368);
    v7 = *(v0 + 184);
    v8 = *(v0 + 192);
    v9 = *(v0 + 160);
    v10 = *(v0 + 128);
    v11 = *(v0 + 136);
    sub_1001BB2E0(*(v0 + 208) + ((*(v0 + 372) + 32) & ~*(v0 + 372)) + *(v0 + 224) * v1, v7, type metadata accessor for OwnedBeaconRecord);
    v12 = *(v11 + 16);
    *(v0 + 240) = v12;
    *(v0 + 248) = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v9, v7 + v6, v10);
    sub_1001BA80C(v7, type metadata accessor for OwnedBeaconRecord);
    *(v0 + 256) = sub_100B08164(&off_101608148);
    v13 = sub_1001A018C;
    v14 = v8;
  }

  return _swift_task_switch(v13, v14, 0);
}

uint64_t sub_1001A0BD8()
{

  v1 = swift_task_alloc();
  *(v0 + 304) = v1;
  v2 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v1 = v0;
  v1[1] = sub_1001A0CC4;
  v3 = *(v0 + 296);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_10012B4B8, v3, v2);
}

uint64_t sub_1001A0CC4()
{
  v1 = *(*v0 + 296);

  return _swift_task_switch(sub_1001A0DDC, v1, 0);
}

uint64_t sub_1001A0DDC()
{
  v1 = v0[7];
  v0[39] = v0[2];
  return _swift_task_switch(sub_1001A0E00, v1, 0);
}

uint64_t sub_1001A0E00()
{
  v1 = *(v0 + 312);
  v2 = *(v1 + 16);
  *(v0 + 320) = v2;
  if (v2)
  {
    v4 = *(v0 + 104);
    v3 = *(v0 + 112);
    v5 = *(v3 + 80);
    *(v0 + 376) = v5;
    *(v0 + 328) = *(v3 + 72);
    *(v0 + 336) = 0;
    v6 = *(v0 + 296);
    sub_1001BB2E0(v1 + ((v5 + 32) & ~v5), *(v0 + 120), type metadata accessor for MemberSharingCircle);
    *(v0 + 380) = *(v4 + 24);

    return _swift_task_switch(sub_1001A100C, v6, 0);
  }

  else
  {

    type metadata accessor for Transaction();
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = 0;
    *(v8 + 32) = 1;

    static Transaction.asyncTask(name:block:)();

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1001A100C()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 160);
  v3 = *(v0 + 136);
  v4 = *(v0 + 128);
  (*(v3 + 16))(v2, *(v0 + 120) + *(v0 + 380), v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v0 + 344) = v6;
  *(v6 + 16) = v1;
  (*(v3 + 32))(v6 + v5, v2, v4);

  v7 = swift_task_alloc();
  *(v0 + 352) = v7;
  *v7 = v0;
  v7[1] = sub_1001A116C;
  v9 = *(v0 + 64);
  v8 = *(v0 + 72);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4A4, v6, v9);
}

uint64_t sub_1001A116C()
{
  v1 = *(*v0 + 56);

  return _swift_task_switch(sub_1001A1298, v1, 0);
}

uint64_t sub_1001A1298()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 72);
  if ((*(*(v0 + 88) + 48))(v2, 1, v1) == 1)
  {
    sub_1001BA80C(*(v0 + 120), type metadata accessor for MemberSharingCircle);
    sub_10000B3A8(v2, &unk_101698C30, &unk_101392630);
    goto LABEL_8;
  }

  v3 = *(v0 + 96);
  sub_1001BAAE8(v2, v3, type metadata accessor for SharedBeaconRecord);
  v4 = *(v0 + 120);
  if (*(v3 + *(v1 + 64)) != 2)
  {
    sub_1001BA80C(*(v0 + 96), type metadata accessor for SharedBeaconRecord);
    sub_1001BA80C(v4, type metadata accessor for MemberSharingCircle);
LABEL_8:
    v8 = *(v0 + 336) + 1;
    if (v8 == *(v0 + 320))
    {

      type metadata accessor for Transaction();
      v9 = swift_allocObject();
      swift_weakInit();
      v10 = swift_allocObject();
      *(v10 + 16) = v9;
      *(v10 + 24) = 0;
      *(v10 + 32) = 1;

      static Transaction.asyncTask(name:block:)();

      v11 = *(v0 + 8);

      return v11();
    }

    else
    {
      *(v0 + 336) = v8;
      v12 = *(v0 + 296);
      v13 = *(v0 + 104);
      sub_1001BB2E0(*(v0 + 312) + ((*(v0 + 376) + 32) & ~*(v0 + 376)) + *(v0 + 328) * v8, *(v0 + 120), type metadata accessor for MemberSharingCircle);
      *(v0 + 380) = *(v13 + 24);

      return _swift_task_switch(sub_1001A100C, v12, 0);
    }
  }

  v5 = *(*(v0 + 104) + 28);
  v6 = swift_task_alloc();
  *(v0 + 360) = v6;
  *v6 = v0;
  v6[1] = sub_1001A1618;

  return sub_1003B7584(v4 + v5);
}

uint64_t sub_1001A1618()
{
  v2 = *v1;

  v3 = *(v2 + 56);
  if (v0)
  {

    v4 = sub_1001BE4D8;
  }

  else
  {
    v4 = sub_1001A1750;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1001A1750()
{
  v1 = *(v0 + 120);
  sub_1001BA80C(*(v0 + 96), type metadata accessor for SharedBeaconRecord);
  sub_1001BA80C(v1, type metadata accessor for MemberSharingCircle);
  v2 = *(v0 + 336) + 1;
  if (v2 == *(v0 + 320))
  {

    type metadata accessor for Transaction();
    v3 = swift_allocObject();
    swift_weakInit();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = 0;
    *(v4 + 32) = 1;

    static Transaction.asyncTask(name:block:)();

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    *(v0 + 336) = v2;
    v7 = *(v0 + 296);
    v8 = *(v0 + 104);
    sub_1001BB2E0(*(v0 + 312) + ((*(v0 + 376) + 32) & ~*(v0 + 376)) + *(v0 + 328) * v2, *(v0 + 120), type metadata accessor for MemberSharingCircle);
    *(v0 + 380) = *(v8 + 24);

    return _swift_task_switch(sub_1001A100C, v7, 0);
  }
}

uint64_t sub_1001A19A0(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v3 = type metadata accessor for MemberSharingCircle(0);
  v2[17] = v3;
  v2[18] = *(v3 - 8);
  v2[19] = swift_task_alloc();
  v4 = type metadata accessor for OwnerPeerTrust(0);
  v2[20] = v4;
  v2[21] = *(v4 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v5 = type metadata accessor for OwnerSharingCircle(0);
  v2[25] = v5;
  v2[26] = *(v5 - 8);
  v2[27] = swift_task_alloc();
  v6 = type metadata accessor for MemberPeerTrust(0);
  v2[28] = v6;
  v2[29] = *(v6 - 8);
  v2[30] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v2[31] = v7;
  v2[32] = *(v7 - 8);
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();

  return _swift_task_switch(sub_1001A1C00, v1, 0);
}

uint64_t sub_1001A1C00()
{
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = type metadata accessor for Logger();
  v0[36] = sub_1000076D4(v2, qword_10177A560);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[15];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "forceBreakAllShares for %@ user", v7, 0xCu);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);
  }

  v10 = swift_task_alloc();
  v0[37] = v10;
  *v10 = v0;
  v10[1] = sub_1001A1DB8;

  return daemon.getter();
}

uint64_t sub_1001A1DB8(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 304) = a1;

  v3 = swift_task_alloc();
  *(v2 + 312) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for PeerTrustService();
  v6 = sub_1001B8FE4(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1001B8FE4(&qword_1016B1190, type metadata accessor for PeerTrustService, &unk_1013EBD00);
  *v3 = v9;
  v3[1] = sub_1001A1F94;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1001A1F94(uint64_t a1)
{
  v3 = *v2;
  v3[40] = a1;
  v3[41] = v1;

  if (v1)
  {
    v4 = v3[16];
    v5 = sub_1001A428C;
  }

  else
  {
    v6 = v3[16];

    v5 = sub_1001A20BC;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1001A20BC()
{
  sub_100EB3858();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  *(v0 + 336) = v5;
  v7 = swift_task_alloc();
  *(v0 + 344) = v7;
  *v7 = v0;
  v7[1] = sub_1001A2178;

  return sub_100E86158(v2, v4, v6);
}

uint64_t sub_1001A2178(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 352) = a1;
  *(v4 + 360) = v1;

  v5 = *(v3 + 128);
  if (v1)
  {
    v6 = sub_1001A437C;
  }

  else
  {
    v6 = sub_1001A22C8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1001A22C8()
{
  sub_100EB3858();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  *(v0 + 368) = v5;
  v7 = swift_task_alloc();
  *(v0 + 376) = v7;
  *v7 = v0;
  v7[1] = sub_1001A2384;

  return sub_100E878B0(v2, v4, v6);
}

uint64_t sub_1001A2384(uint64_t a1)
{
  v3 = *v2;
  v3[48] = a1;
  v3[49] = v1;

  if (v1)
  {
    v4 = v3[16];

    v5 = sub_1001A446C;
    v6 = v4;
  }

  else
  {
    v7 = v3[16];

    v5 = sub_1001A24E4;
    v6 = v7;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_1001A24E4()
{
  v1 = v0[48];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[32];
    v4 = v0[29];
    v22 = v0[28];
    sub_101123D4C(0, v2, 0);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v21 = *(v4 + 72);
    do
    {
      v6 = v0[35];
      v8 = v0[30];
      v7 = v0[31];
      sub_1001BB2E0(v5, v8, type metadata accessor for MemberPeerTrust);
      (*(v3 + 16))(v6, v8 + *(v22 + 20), v7);
      sub_1001BA80C(v8, type metadata accessor for MemberPeerTrust);
      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_101123D4C((v9 > 1), v10 + 1, 1);
      }

      v11 = v0[35];
      v12 = v0[31];
      _swiftEmptyArrayStorage[2] = v10 + 1;
      (*(v3 + 32))(_swiftEmptyArrayStorage + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10, v11, v12);
      v5 += v21;
      --v2;
    }

    while (v2);
  }

  v13 = v0[44];
  v14 = sub_10000954C(_swiftEmptyArrayStorage);
  v0[50] = v14;

  if (*(v13 + 16) || *(v14 + 16))
  {
    v15 = *(v0[16] + 136);
    v0[51] = v15;

    return _swift_task_switch(sub_1001A2824, v15, 0);
  }

  else
  {

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Can't forceBreakAllShares, missing peer trust record.", v18, 2u);
    }

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_1001A2824()
{

  v1 = swift_task_alloc();
  *(v0 + 416) = v1;
  v2 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v1 = v0;
  v1[1] = sub_1001A2910;
  v3 = *(v0 + 408);

  return unsafeBlocking<A>(context:_:)(v0 + 96, 0xD000000000000010, 0x800000010134A8C0, sub_100111F4C, v3, v2);
}

uint64_t sub_1001A2910()
{
  v1 = *(*v0 + 408);

  return _swift_task_switch(sub_1001A2A28, v1, 0);
}

uint64_t sub_1001A2A28()
{
  v1 = v0[16];
  v0[53] = v0[12];
  return _swift_task_switch(sub_1001A2A4C, v1, 0);
}

uint64_t sub_1001A2A4C()
{
  v1 = *(v0 + 424);
  v2 = *(v1 + 16);
  *(v0 + 432) = v2;
  if (!v2)
  {
LABEL_24:

    v21 = *(v0 + 408);
    v20 = sub_1001A33EC;
    v22 = 0;

    return _swift_task_switch(v20, v21, v22);
  }

  v3 = 0;
  v4 = *(v0 + 208);
  v5 = *(v4 + 80);
  *(v0 + 504) = v5;
  v6 = *(v4 + 72);
  *(v0 + 440) = v6;
  while (1)
  {
    *(v0 + 448) = v3;
    v7 = *(v0 + 352);
    sub_1001BB2E0(v1 + ((v5 + 32) & ~v5) + v6 * v3, *(v0 + 216), type metadata accessor for OwnerSharingCircle);
    v8 = *(v7 + 16);
    if (!v8)
    {
      goto LABEL_19;
    }

    v9 = 0;
    v10 = *(v0 + 168);
    v11 = *(v0 + 352) + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v12 = *(v10 + 72);
    v39 = v12;
    v40 = v11;
LABEL_5:
    v13 = *(v0 + 216);
    v14 = *(v0 + 200);
    sub_1001BB2E0(v11 + v9 * v12, *(v0 + 176), type metadata accessor for OwnerPeerTrust);
    v15 = *(*(v13 + *(v14 + 32)) + 16);
    if (v15)
    {
      break;
    }

    v19 = _swiftEmptyArrayStorage;
LABEL_14:
    v25 = 0;
    v42 = v9 + 1;
    v26 = v19[2];
    while (v26 != v25)
    {
      v27 = v25 + 1;
      sub_1001B8FE4(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      v25 = v27;
      if (v28)
      {
        v32 = *(v0 + 184);
        v33 = *(v0 + 192);
        v34 = *(v0 + 176);

        sub_1001BAAE8(v34, v32, type metadata accessor for OwnerPeerTrust);
        sub_1001BAAE8(v32, v33, type metadata accessor for OwnerPeerTrust);
        v35 = swift_task_alloc();
        *(v0 + 456) = v35;
        *v35 = v0;
        v35[1] = sub_1001A2E70;
        v36 = *(v0 + 216);
        v37 = *(v0 + 192);

        return sub_1003B85E8(v37, v36);
      }
    }

    v29 = *(v0 + 176);

    sub_1001BA80C(v29, type metadata accessor for OwnerPeerTrust);
    v9 = v42;
    v12 = v39;
    v11 = v40;
    if (v42 != v8)
    {
      goto LABEL_5;
    }

LABEL_19:
    v30 = *(v0 + 432);
    v31 = *(v0 + 448) + 1;
    sub_1001BA80C(*(v0 + 216), type metadata accessor for OwnerSharingCircle);
    if (v31 == v30)
    {
      goto LABEL_24;
    }

    v6 = *(v0 + 440);
    v3 = *(v0 + 448) + 1;
    LOBYTE(v5) = *(v0 + 504);
    v1 = *(v0 + 424);
  }

  v16 = *(v0 + 256);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  v20 = j__malloc_size(v19);
  if (v17)
  {
    if (v20 - v18 == 0x8000000000000000 && v17 == -1)
    {
      goto LABEL_29;
    }

    v19[2] = v15;
    v19[3] = 2 * ((v20 - v18) / v17);
    v41 = sub_1003CC2CC();
    v24 = *(v0 + 16);

    v20 = sub_1000128F8(v24);
    if (v41 != v15)
    {
      goto LABEL_28;
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return _swift_task_switch(v20, v21, v22);
}

uint64_t sub_1001A2E70()
{
  v2 = *v1;

  v3 = *(v2 + 128);
  if (v0)
  {

    v4 = sub_1001BE48C;
  }

  else
  {
    v4 = sub_1001A2FA8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1001A2FA8()
{
  sub_1001BA80C(*(v0 + 192), type metadata accessor for OwnerPeerTrust);
  v1 = *(v0 + 432);
  v2 = *(v0 + 448) + 1;
  sub_1001BA80C(*(v0 + 216), type metadata accessor for OwnerSharingCircle);
  if (v2 == v1)
  {
LABEL_2:

    v3 = *(v0 + 408);
    v4 = sub_1001A33EC;
    v5 = 0;

    return _swift_task_switch(v4, v3, v5);
  }

  while (1)
  {
    v6 = *(v0 + 440);
    v7 = *(v0 + 448) + 1;
    *(v0 + 448) = v7;
    v8 = *(v0 + 352);
    sub_1001BB2E0(*(v0 + 424) + ((*(v0 + 504) + 32) & ~*(v0 + 504)) + v6 * v7, *(v0 + 216), type metadata accessor for OwnerSharingCircle);
    v9 = *(v8 + 16);
    if (v9)
    {
      break;
    }

LABEL_21:
    v28 = *(v0 + 432);
    v29 = *(v0 + 448) + 1;
    sub_1001BA80C(*(v0 + 216), type metadata accessor for OwnerSharingCircle);
    if (v29 == v28)
    {
      goto LABEL_2;
    }
  }

  v10 = 0;
  v11 = *(v0 + 168);
  v12 = *(v0 + 352) + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v13 = *(v11 + 72);
  v37 = v13;
  v38 = v12;
  while (2)
  {
    v14 = *(v0 + 216);
    v15 = *(v0 + 200);
    sub_1001BB2E0(v12 + v10 * v13, *(v0 + 176), type metadata accessor for OwnerPeerTrust);
    v16 = *(*(v14 + *(v15 + 32)) + 16);
    if (!v16)
    {
      v20 = _swiftEmptyArrayStorage;
LABEL_16:
      v23 = 0;
      v40 = v10 + 1;
      v24 = v20[2];
      while (v24 != v23)
      {
        v25 = v23 + 1;
        sub_1001B8FE4(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v26 = dispatch thunk of static Equatable.== infix(_:_:)();
        v23 = v25;
        if (v26)
        {
          v30 = *(v0 + 184);
          v31 = *(v0 + 192);
          v32 = *(v0 + 176);

          sub_1001BAAE8(v32, v30, type metadata accessor for OwnerPeerTrust);
          sub_1001BAAE8(v30, v31, type metadata accessor for OwnerPeerTrust);
          v33 = swift_task_alloc();
          *(v0 + 456) = v33;
          *v33 = v0;
          v33[1] = sub_1001A2E70;
          v34 = *(v0 + 216);
          v35 = *(v0 + 192);

          return sub_1003B85E8(v35, v34);
        }
      }

      v27 = *(v0 + 176);

      sub_1001BA80C(v27, type metadata accessor for OwnerPeerTrust);
      v10 = v40;
      v13 = v37;
      v12 = v38;
      if (v40 != v9)
      {
        continue;
      }

      goto LABEL_21;
    }

    break;
  }

  v17 = *(v0 + 256);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v4 = j__malloc_size(v20);
  if (v18)
  {
    if (v4 - v19 == 0x8000000000000000 && v18 == -1)
    {
      goto LABEL_28;
    }

    v20[2] = v16;
    v20[3] = 2 * ((v4 - v19) / v18);
    v39 = sub_1003CC2CC();
    v22 = *(v0 + 16);

    v4 = sub_1000128F8(v22);
    if (v39 != v16)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return _swift_task_switch(v4, v3, v5);
}

uint64_t sub_1001A33EC()
{

  v1 = swift_task_alloc();
  *(v0 + 464) = v1;
  v2 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v1 = v0;
  v1[1] = sub_1001A34D8;
  v3 = *(v0 + 408);

  return unsafeBlocking<A>(context:_:)(v0 + 104, 0xD000000000000010, 0x800000010134A8C0, sub_10012B4B8, v3, v2);
}

uint64_t sub_1001A34D8()
{
  v1 = *(*v0 + 408);

  return _swift_task_switch(sub_1001A35F0, v1, 0);
}

uint64_t sub_1001A35F0()
{
  v1 = v0[16];
  v0[59] = v0[13];
  return _swift_task_switch(sub_1001A3614, v1, 0);
}

void *sub_1001A3614()
{
  v1 = *(v0 + 472);
  v2 = *(v1 + 16);
  *(v0 + 480) = v2;
  if (v2)
  {
    *(v0 + 508) = *(*(v0 + 144) + 80);
    *(v0 + 488) = 0;
    if (*(v1 + 16))
    {
      v3 = 0;
      while (1)
      {
        v4 = *(v0 + 256);
        v5 = *(v0 + 152);
        v6 = *(v0 + 136);
        sub_1001BB2E0(v1 + ((*(v0 + 508) + 32) & ~*(v0 + 508)) + *(*(v0 + 144) + 72) * v3, v5, type metadata accessor for MemberSharingCircle);
        v7 = *(*(v5 + *(v6 + 36)) + 16);
        v8 = *(v4 + 72);
        v9 = *(v4 + 80);
        v43 = v8;
        if (v7)
        {
          sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
          v10 = (v9 + 32) & ~v9;
          v11 = swift_allocObject();
          result = j__malloc_size(v11);
          if (!v8)
          {
            goto LABEL_30;
          }

          if ((result - v10) == 0x8000000000000000 && v8 == -1)
          {
            goto LABEL_32;
          }

          v11[2] = v7;
          v11[3] = 2 * ((result - v10) / v8);
          v14 = sub_1003CC2CC();
          v15 = *(v0 + 56);
          v42 = v14;

          result = sub_1000128F8(v15);
          if (v42 != v7)
          {
            goto LABEL_31;
          }

          v16 = v11;
        }

        else
        {
          v10 = (v9 + 32) & ~v9;
          v16 = _swiftEmptyArrayStorage;
        }

        v17 = *(v0 + 248);
        v18 = *(v0 + 256);
        v19 = *(v0 + 152);
        v20 = *(v0 + 136);
        sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
        v21 = swift_allocObject();
        v22 = *(v18 + 16);
        *(v21 + 16) = xmmword_101385D80;
        v22(v21 + v10, v19 + *(v20 + 32), v17);
        v23 = v16[2];
        result = swift_isUniquelyReferenced_nonNull_native();
        v24 = v16;
        if (!result || (v25 = v16[3] >> 1, v25 <= v23))
        {
          result = sub_100A5BFE0(result, v23 + 1, 1, v16);
          v24 = result;
          v25 = result[3] >> 1;
        }

        if (v25 <= v24[2])
        {
          break;
        }

        v26 = v24 + v10;
        swift_arrayInitWithCopy();

        ++v24[2];
        sub_1001B8FE4(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        *(v0 + 112) = Set.init(minimumCapacity:)();
        for (i = v24[2]; i; --i)
        {
          v29 = *(v0 + 264);
          v28 = *(v0 + 272);
          v30 = *(v0 + 248);
          v31 = *(v0 + 256);
          v22(v28, v26, v30);
          sub_100DE8BCC(v29, v28);
          (*(v31 + 8))(v29, v30);
          v26 += v43;
        }

        sub_100314BE4(*(v0 + 400), *(v0 + 112));
        v33 = v32;

        if ((v33 & 1) == 0)
        {
          goto LABEL_24;
        }

        v34 = *(v0 + 480);
        v35 = *(v0 + 488) + 1;
        sub_1001BA80C(*(v0 + 152), type metadata accessor for MemberSharingCircle);
        if (v35 == v34)
        {
          goto LABEL_27;
        }

        v3 = *(v0 + 488) + 1;
        *(v0 + 488) = v3;
        v1 = *(v0 + 472);
        if (v3 >= *(v1 + 16))
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
    }

    else
    {
LABEL_23:
      __break(1u);
LABEL_24:
      v36 = *(v0 + 152);
      v37 = *(*(v0 + 136) + 28);
      v38 = swift_task_alloc();
      *(v0 + 496) = v38;
      *v38 = v0;
      v38[1] = sub_1001A3BC8;

      return sub_1003B7584(v36 + v37);
    }
  }

  else
  {
LABEL_27:

    type metadata accessor for Transaction();
    v39 = swift_allocObject();
    swift_weakInit();
    v40 = swift_allocObject();
    *(v40 + 16) = v39;
    *(v40 + 24) = 0;
    *(v40 + 32) = 1;

    static Transaction.asyncTask(name:block:)();

    v41 = *(v0 + 8);

    return v41();
  }

  return result;
}

uint64_t sub_1001A3BC8()
{
  v2 = *v1;

  v3 = *(v2 + 128);
  if (v0)
  {

    v4 = sub_1001BE490;
  }

  else
  {
    v4 = sub_1001A3D00;
  }

  return _swift_task_switch(v4, v3, 0);
}

void *sub_1001A3D00()
{
  while (1)
  {
    v3 = *(v0 + 480);
    v4 = *(v0 + 488) + 1;
    result = sub_1001BA80C(*(v0 + 152), type metadata accessor for MemberSharingCircle);
    if (v4 == v3)
    {
      break;
    }

    v6 = *(v0 + 488) + 1;
    *(v0 + 488) = v6;
    v7 = *(v0 + 472);
    if (v6 >= *(v7 + 16))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      return result;
    }

    v8 = *(v0 + 256);
    v9 = *(v0 + 152);
    v10 = *(v0 + 136);
    sub_1001BB2E0(v7 + ((*(v0 + 508) + 32) & ~*(v0 + 508)) + *(*(v0 + 144) + 72) * v6, v9, type metadata accessor for MemberSharingCircle);
    v11 = *(*(v9 + *(v10 + 36)) + 16);
    v12 = *(v8 + 72);
    v13 = *(v8 + 80);
    v42 = v12;
    if (v11)
    {
      sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
      v14 = (v13 + 32) & ~v13;
      v15 = swift_allocObject();
      result = j__malloc_size(v15);
      if (!v12)
      {
        goto LABEL_29;
      }

      if ((result - v14) == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_31;
      }

      v15[2] = v11;
      v15[3] = 2 * ((result - v14) / v12);
      v17 = sub_1003CC2CC();
      v18 = *(v0 + 56);
      v41 = v17;

      result = sub_1000128F8(v18);
      if (v41 != v11)
      {
        goto LABEL_30;
      }

      v19 = v15;
    }

    else
    {
      v14 = (v13 + 32) & ~v13;
      v19 = _swiftEmptyArrayStorage;
    }

    v20 = *(v0 + 248);
    v21 = *(v0 + 256);
    v22 = *(v0 + 152);
    v23 = *(v0 + 136);
    sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
    v24 = swift_allocObject();
    v25 = *(v21 + 16);
    *(v24 + 16) = xmmword_101385D80;
    v25(v24 + v14, v22 + *(v23 + 32), v20);
    v26 = v19[2];
    result = swift_isUniquelyReferenced_nonNull_native();
    v27 = v19;
    if (!result || (v28 = v19[3] >> 1, v28 <= v26))
    {
      result = sub_100A5BFE0(result, v26 + 1, 1, v19);
      v27 = result;
      v28 = result[3] >> 1;
    }

    if (v28 <= v27[2])
    {
      goto LABEL_28;
    }

    v29 = v27 + v14;
    swift_arrayInitWithCopy();

    ++v27[2];
    sub_1001B8FE4(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    *(v0 + 112) = Set.init(minimumCapacity:)();
    for (i = v27[2]; i; --i)
    {
      v32 = *(v0 + 264);
      v31 = *(v0 + 272);
      v33 = *(v0 + 248);
      v34 = *(v0 + 256);
      v25(v31, v29, v33);
      sub_100DE8BCC(v32, v31);
      (*(v34 + 8))(v32, v33);
      v29 += v42;
    }

    sub_100314BE4(*(v0 + 400), *(v0 + 112));
    v2 = v1;

    if ((v2 & 1) == 0)
    {
      v38 = *(v0 + 152);
      v39 = *(*(v0 + 136) + 28);
      v40 = swift_task_alloc();
      *(v0 + 496) = v40;
      *v40 = v0;
      v40[1] = sub_1001A3BC8;

      return sub_1003B7584(v38 + v39);
    }
  }

  type metadata accessor for Transaction();
  v35 = swift_allocObject();
  swift_weakInit();
  v36 = swift_allocObject();
  *(v36 + 16) = v35;
  *(v36 + 24) = 0;
  *(v36 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_1001A428C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001A437C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001A446C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001A455C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_1001A461C, v1, 0);
}

uint64_t sub_1001A461C()
{
  v22 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A560);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[4];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136315138;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1000136BC(v14, v16, &v21);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "forceDecline shareIdentifier %s", v12, 0xCu);
    sub_100007BAC(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = swift_task_alloc();
  v0[7] = v18;
  *v18 = v0;
  v18[1] = sub_1001A48A0;
  v19 = v0[2];

  return sub_1003B7584(v19);
}

uint64_t sub_1001A48A0()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 24);

    return _swift_task_switch(sub_1001A49EC, v6, 0);
  }
}

uint64_t sub_1001A49EC()
{
  type metadata accessor for Transaction();
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = 0;
  *(v2 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001A4B04(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for UUID();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v2[8] = *(v4 + 64);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_1001A4BF0, v1, 0);
}

uint64_t sub_1001A4BF0()
{
  v23 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[4];
  v5 = type metadata accessor for Logger();
  v0[13] = sub_1000076D4(v5, qword_10177A560);
  v6 = *(v3 + 16);
  v0[14] = v6;
  v0[15] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[12];
  v11 = v0[6];
  v12 = v0[7];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v13 = 136315138;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_1000136BC(v14, v16, &v22);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "forceStopSharing beaconIdentifier %s", v13, 0xCu);
    sub_100007BAC(v21);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[16] = v17;
  v19 = *(v0[5] + 136);
  v0[17] = v19;
  v0[18] = sub_100B08164(&off_101608170);

  return _swift_task_switch(sub_1001A4E5C, v19, 0);
}

uint64_t sub_1001A4E5C()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 88);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 48);
  (*(v0 + 112))(v3, *(v0 + 32), v6);
  v7 = *(v5 + 80);
  *(v0 + 264) = v7;
  v8 = (v7 + 24) & ~v7;
  v9 = (v4 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v0 + 152) = v10;
  *(v10 + 16) = v1;
  v11 = *(v5 + 32);
  *(v0 + 160) = v11;
  *(v0 + 168) = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v11(v10 + v8, v3, v6);
  *(v10 + v9) = v2;

  v12 = swift_task_alloc();
  *(v0 + 176) = v12;
  v13 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v12 = v0;
  v12[1] = sub_1001A4FF8;

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4AC, v10, v13);
}

uint64_t sub_1001A4FF8()
{
  v1 = *(*v0 + 136);

  return _swift_task_switch(sub_1001A5124, v1, 0);
}

uint64_t sub_1001A5124()
{
  v1 = v0[5];
  v0[23] = v0[2];
  return _swift_task_switch(sub_1001A5148, v1, 0);
}

uint64_t sub_1001A5148()
{
  v19 = v0;
  if (*(*(v0 + 184) + 16))
  {
    (*(v0 + 112))(*(v0 + 72), *(v0 + 32), *(v0 + 48));
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    v3 = os_log_type_enabled(v1, v2);
    v4 = *(v0 + 128);
    v5 = *(v0 + 72);
    v6 = *(v0 + 48);
    if (v3)
    {
      v17 = *(v0 + 128);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 141558275;
      *(v7 + 4) = 1752392040;
      *(v7 + 12) = 2081;
      sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      v11 = v10;
      v17(v5, v6);
      v12 = sub_1000136BC(v9, v11, &v18);

      *(v7 + 14) = v12;
      _os_log_impl(&_mh_execute_header, v1, v2, "Stop sharing of %{private,mask.hash}s", v7, 0x16u);
      sub_100007BAC(v8);
    }

    else
    {

      v4(v5, v6);
    }

    v14 = swift_task_alloc();
    *(v0 + 248) = v14;
    *v14 = v0;
    v14[1] = sub_1001A5E14;
    v15 = *(v0 + 184);

    return sub_1003B64C0(v15);
  }

  else
  {
    v13 = *(v0 + 136);

    return _swift_task_switch(sub_1001A53EC, v13, 0);
  }
}

uint64_t sub_1001A53EC()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 136);
  v3 = *(v0 + 88);
  v4 = *(v0 + 48);
  v5 = (*(v0 + 264) + 24) & ~*(v0 + 264);
  (*(v0 + 112))(v3, *(v0 + 32), v4);
  v6 = swift_allocObject();
  *(v0 + 192) = v6;
  *(v6 + 16) = v2;
  v1(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 200) = v7;
  v8 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v7 = v0;
  v7[1] = sub_1001A5554;

  return unsafeBlocking<A>(context:_:)(v0 + 24, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4B8, v6, v8);
}

uint64_t sub_1001A5554()
{
  v1 = *(*v0 + 136);

  return _swift_task_switch(sub_1001A5680, v1, 0);
}

uint64_t sub_1001A5680()
{
  v1 = v0[5];
  v0[26] = v0[3];
  return _swift_task_switch(sub_1001A56A4, v1, 0);
}

void sub_1001A56A4()
{
  v1 = v0[26];
  v2 = *(v1 + 16);
  if (v2 >= 2)
  {

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = *(v1 + 16);

      _os_log_impl(&_mh_execute_header, v3, v4, "Too much circles to decline on sharing stop! There is %ld circles.", v5, 0xCu);
    }

    else
    {
    }

    v2 = *(v1 + 16);
  }

  v0[27] = v2;
  if (v2)
  {
    v0[28] = 0;
    v6 = v0[26];
    if (*(v6 + 16))
    {
      v7 = v0[14];
      v8 = v0[10];
      v9 = v0[6];
      v10 = type metadata accessor for MemberSharingCircle(0);
      v7(v8, v6 + *(v10 + 28) + ((*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80)), v9);
      v11 = swift_task_alloc();
      v0[29] = v11;
      *v11 = v0;
      v11[1] = sub_1001A59A8;
      v12 = v0[10];

      sub_1003B7584(v12);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    type metadata accessor for Transaction();
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 1;

    static Transaction.asyncTask(name:block:)();

    v15 = v0[1];

    v15();
  }
}

uint64_t sub_1001A59A8()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = v2[16];
    v4 = v2[10];
    v5 = v2[6];
    v6 = v2[5];
    v3(v4, v5);

    v7 = sub_1001A5D8C;
    v8 = v6;
  }

  else
  {
    v9 = v2[5];
    (v2[16])(v2[10], v2[6]);
    v7 = sub_1001A5B10;
    v8 = v9;
  }

  return _swift_task_switch(v7, v8, 0);
}