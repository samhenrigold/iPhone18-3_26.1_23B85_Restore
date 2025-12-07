uint64_t sub_1005AD95C()
{
  v2 = v0[44];
  v1 = v0[45];

  sub_100026AC0(v0[17], v0[18]);

  sub_100026AC0(v2, v1);
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

unint64_t sub_1005ADA80()
{
  v1 = v0;
  v2 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SDAirDropServerConnectionIdentity(0);
  __chkstk_darwin(v6);
  v8 = (v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1005AE94C(v1, v8, type metadata accessor for SDAirDropServerConnectionIdentity);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v3 + 32))(v5, v8, v2);
      v19 = 0;
      v20 = 0xE000000000000000;
      _StringGuts.grow(_:)(24);

      v10 = 0x8000000100796D70;
      v11 = 0xD000000000000015;
    }

    else
    {
      (*(v3 + 32))(v5, v8, v2);
      v19 = 0;
      v20 = 0xE000000000000000;
      _StringGuts.grow(_:)(21);

      v10 = 0x8000000100796D50;
      v11 = 0xD000000000000012;
    }

    v19 = v11;
    v20 = v10;
    sub_1005AFFC4(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
    v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v15);

    v16._countAndFlagsBits = 41;
    v16._object = 0xE100000000000000;
    String.append(_:)(v16);
    v14 = v19;
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v12 = *v8;
    v19 = 0;
    v20 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);
    v13._countAndFlagsBits = 0xD000000000000025;
    v13._object = 0x8000000100796D90;
    String.append(_:)(v13);
    v18[1] = v12;
    sub_10028088C(&qword_100984938, &qword_10080C2F8);
    _print_unlocked<A, B>(_:_:)();
    swift_unknownObjectRelease();
    return v19;
  }

  return v14;
}

uint64_t sub_1005ADD74(int a1)
{
  v2 = v1;
  v32 = a1;
  v3 = type metadata accessor for SDAirDropServerConnection(0);
  v4 = __chkstk_darwin(v3);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = v31 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = v31 - v11;
  __chkstk_darwin(v10);
  v14 = v31 - v13;
  if (qword_100973AD8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000C4AC(v15, qword_1009847A0);
  sub_1005AE94C(v1, v14, type metadata accessor for SDAirDropServerConnection);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v31[0] = v1;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v33 = v19;
    *v18 = 136315394;
    sub_1005AE94C(v14, v12, type metadata accessor for SDAirDropServerConnection);
    v31[1] = v3;
    if (swift_getEnumCaseMultiPayload() >= 2)
    {
      v20 = *(sub_10028088C(&unk_10097A650, &qword_1007FD780) + 48);
      v21 = type metadata accessor for UUID();
      (*(*(v21 - 8) + 8))(&v12[v20], v21);
    }

    v22 = NWConnection.debugDescription.getter();
    v24 = v23;

    sub_1005AFF54(v14, type metadata accessor for SDAirDropServerConnection);
    v25 = sub_10000C4E4(v22, v24, &v33);

    *(v18 + 4) = v25;
    *(v18 + 12) = 1024;
    LOBYTE(v25) = v32;
    *(v18 + 14) = v32 & 1;
    _os_log_impl(&_mh_execute_header, v16, v17, "Cancelling connection %s forced %{BOOL}d", v18, 0x12u);
    sub_10000C60C(v19);

    v2 = v31[0];
    if ((v25 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {

    sub_1005AFF54(v14, type metadata accessor for SDAirDropServerConnection);
    if ((v32 & 1) == 0)
    {
LABEL_7:
      sub_1005AE94C(v2, v6, type metadata accessor for SDAirDropServerConnection);
      if (swift_getEnumCaseMultiPayload() >= 2)
      {
        v26 = *(sub_10028088C(&unk_10097A650, &qword_1007FD780) + 48);
        v27 = type metadata accessor for UUID();
        (*(*(v27 - 8) + 8))(&v6[v26], v27);
      }

      NWConnection.cancel()();
    }
  }

  sub_1005AE94C(v2, v9, type metadata accessor for SDAirDropServerConnection);
  if (swift_getEnumCaseMultiPayload() >= 2)
  {
    v28 = *(sub_10028088C(&unk_10097A650, &qword_1007FD780) + 48);
    v29 = type metadata accessor for UUID();
    (*(*(v29 - 8) + 8))(&v9[v28], v29);
  }

  NWConnection.forceCancel()();
}

uint64_t sub_1005AE1BC()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009847A0);
  v1 = sub_10000C4AC(v0, qword_1009847A0);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1005AE288(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for SDAirDropServerConnection(0);
  v2[5] = swift_task_alloc();
  type metadata accessor for SDAirDropMessage(0);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_1005AE348, 0, 0);
}

uint64_t sub_1005AE348()
{
  v29 = v0;
  if (qword_100973AD8 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = v0[2];
  v3 = type metadata accessor for Logger();
  sub_10000C4AC(v3, qword_1009847A0);
  sub_1005AE94C(v2, v1, type metadata accessor for SDAirDropMessage);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[6];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28 = v9;
    *v8 = 136315138;
    v10 = sub_100562218();
    v12 = v11;
    sub_1005AFF54(v7, type metadata accessor for SDAirDropMessage);
    v13 = sub_10000C4E4(v10, v12, &v28);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Sending response message %s", v8, 0xCu);
    sub_10000C60C(v9);
  }

  else
  {

    sub_1005AFF54(v7, type metadata accessor for SDAirDropMessage);
  }

  v14 = v0[5];
  sub_1005AE94C(v0[3], v14, type metadata accessor for SDAirDropServerConnection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v16 = *v14;
  v0[7] = *v14;
  if (EnumCaseMultiPayload >= 2)
  {
    v17 = v0[5];
    v18 = *(sub_10028088C(&unk_10097A650, &qword_1007FD780) + 48);
    v19 = type metadata accessor for UUID();
    (*(*(v19 - 8) + 8))(v17 + v18, v19);
  }

  v20 = sub_100674350();
  v0[8] = v20;
  v21 = sub_1006749CC();
  v0[9] = v21;
  v0[10] = v22;
  v23 = v21;
  v24 = v22;
  v25 = swift_task_alloc();
  v0[11] = v25;
  *(v25 + 16) = v16;
  *(v25 + 24) = v23;
  *(v25 + 32) = v24;
  *(v25 + 40) = v20;
  *(v25 + 48) = 1;
  v26 = swift_task_alloc();
  v0[12] = v26;
  *v26 = v0;
  v26[1] = sub_1005AE6F4;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v26, 0, 0, 0xD000000000000029, 0x800000010078B5E0, sub_1003CCB24, v25, &type metadata for () + 8);
}

uint64_t sub_1005AE6F4()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1005AE8B0;
  }

  else
  {

    v2 = sub_1005AE810;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005AE810()
{
  v1 = v0[9];
  v2 = v0[10];

  sub_100026AC0(v1, v2);
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1005AE8B0()
{
  sub_100026AC0(v0[9], v0[10]);
  swift_unknownObjectRelease();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1005AE94C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005AE9B4()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for SDAirDropServerConnection(0);
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_1005AEA48, 0, 0);
}

uint64_t sub_1005AEA48()
{
  if (qword_100973AD8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_1009847A0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Sending unauthorized error response", v4, 2u);
  }

  v5 = v0[4];
  v6 = v0[2];

  v0[5] = nw_http_response_create_well_known();
  metadata_for_response = nw_http_create_metadata_for_response();
  v0[6] = metadata_for_response;
  v8 = nw_content_context_create("unauthorized response");
  v0[7] = v8;
  nw_content_context_set_metadata_for_protocol(v8, metadata_for_response);
  sub_1005AE94C(v6, v5, type metadata accessor for SDAirDropServerConnection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = *v5;
  v0[8] = *v5;
  if (EnumCaseMultiPayload >= 2)
  {
    v11 = v0[4];
    v12 = *(sub_10028088C(&unk_10097A650, &qword_1007FD780) + 48);
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 8))(v11 + v12, v13);
  }

  v14 = swift_task_alloc();
  v0[9] = v14;
  *(v14 + 16) = v10;
  *(v14 + 24) = xmmword_1007F8A80;
  *(v14 + 40) = v8;
  *(v14 + 48) = 1;
  v15 = swift_task_alloc();
  v0[10] = v15;
  *v15 = v0;
  v15[1] = sub_1005AECD8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v15, 0, 0, 0xD000000000000029, 0x800000010078B5E0, sub_1003CDFDC, v14, &type metadata for () + 8);
}

uint64_t sub_1005AECD8()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1005B0074;
  }

  else
  {

    v2 = sub_1005B007C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005AEDF4()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for SDAirDropServerConnection(0);
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_1005AEE88, 0, 0);
}

uint64_t sub_1005AEE88()
{
  if (qword_100973AD8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_1009847A0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Sending unsupported error response", v4, 2u);
  }

  v5 = v0[4];
  v6 = v0[2];

  v0[5] = nw_http_response_create_well_known();
  metadata_for_response = nw_http_create_metadata_for_response();
  v0[6] = metadata_for_response;
  v8 = nw_content_context_create("unsupported response");
  v0[7] = v8;
  nw_content_context_set_metadata_for_protocol(v8, metadata_for_response);
  sub_1005AE94C(v6, v5, type metadata accessor for SDAirDropServerConnection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = *v5;
  v0[8] = *v5;
  if (EnumCaseMultiPayload >= 2)
  {
    v11 = v0[4];
    v12 = *(sub_10028088C(&unk_10097A650, &qword_1007FD780) + 48);
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 8))(v11 + v12, v13);
  }

  v14 = swift_task_alloc();
  v0[9] = v14;
  *(v14 + 16) = v10;
  *(v14 + 24) = xmmword_1007F8A80;
  *(v14 + 40) = v8;
  *(v14 + 48) = 1;
  v15 = swift_task_alloc();
  v0[10] = v15;
  *v15 = v0;
  v15[1] = sub_1005AECD8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v15, 0, 0, 0xD000000000000029, 0x800000010078B5E0, sub_1003CDFDC, v14, &type metadata for () + 8);
}

uint64_t sub_1005AF118()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for SDAirDropServerConnection(0);
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_1005AF1AC, 0, 0);
}

uint64_t sub_1005AF1AC()
{
  if (qword_100973AD8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_1009847A0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Sending insufficient storage error response", v4, 2u);
  }

  v5 = v0[4];
  v6 = v0[2];

  v0[5] = nw_http_response_create();
  metadata_for_response = nw_http_create_metadata_for_response();
  v0[6] = metadata_for_response;
  v8 = nw_content_context_create("insufficient storage response");
  v0[7] = v8;
  nw_content_context_set_metadata_for_protocol(v8, metadata_for_response);
  sub_1005AE94C(v6, v5, type metadata accessor for SDAirDropServerConnection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = *v5;
  v0[8] = *v5;
  if (EnumCaseMultiPayload >= 2)
  {
    v11 = v0[4];
    v12 = *(sub_10028088C(&unk_10097A650, &qword_1007FD780) + 48);
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 8))(v11 + v12, v13);
  }

  v14 = swift_task_alloc();
  v0[9] = v14;
  *(v14 + 16) = v10;
  *(v14 + 24) = xmmword_1007F8A80;
  *(v14 + 40) = v8;
  *(v14 + 48) = 1;
  v15 = swift_task_alloc();
  v0[10] = v15;
  *v15 = v0;
  v15[1] = sub_1005AECD8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v15, 0, 0, 0xD000000000000029, 0x800000010078B5E0, sub_1003CDFDC, v14, &type metadata for () + 8);
}

uint64_t sub_1005AF444()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for SDAirDropServerConnection(0);
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_1005AF4D8, 0, 0);
}

uint64_t sub_1005AF4D8()
{
  if (qword_100973AD8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_1009847A0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Sending server error response", v4, 2u);
  }

  v5 = v0[4];
  v6 = v0[2];

  v0[5] = nw_http_response_create_well_known();
  metadata_for_response = nw_http_create_metadata_for_response();
  v0[6] = metadata_for_response;
  v8 = nw_content_context_create("server error response");
  v0[7] = v8;
  nw_content_context_set_metadata_for_protocol(v8, metadata_for_response);
  sub_1005AE94C(v6, v5, type metadata accessor for SDAirDropServerConnection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = *v5;
  v0[8] = *v5;
  if (EnumCaseMultiPayload >= 2)
  {
    v11 = v0[4];
    v12 = *(sub_10028088C(&unk_10097A650, &qword_1007FD780) + 48);
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 8))(v11 + v12, v13);
  }

  v14 = swift_task_alloc();
  v0[9] = v14;
  *(v14 + 16) = v10;
  *(v14 + 24) = xmmword_1007F8A80;
  *(v14 + 40) = v8;
  *(v14 + 48) = 1;
  v15 = swift_task_alloc();
  v0[10] = v15;
  *v15 = v0;
  v15[1] = sub_1005AF768;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v15, 0, 0, 0xD000000000000029, 0x800000010078B5E0, sub_1003CDFDC, v14, &type metadata for () + 8);
}

uint64_t sub_1005AF768()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1005AF92C;
  }

  else
  {

    v2 = sub_1005AF884;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005AF884()
{

  sub_1005ADD74(0);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005AF92C()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005AF9D0()
{
  v1[8] = v0;
  v1[9] = type metadata accessor for SDAirDropServerConnection(0);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return _swift_task_switch(sub_1005AFA70, 0, 0);
}

uint64_t sub_1005AFA70()
{
  v1 = v0[11];
  sub_1005AE94C(v0[8], v1, type metadata accessor for SDAirDropServerConnection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = *v1;
  v0[12] = *v1;
  if (EnumCaseMultiPayload >= 2)
  {
    v4 = v0[11];
    v5 = *(sub_10028088C(&unk_10097A650, &qword_1007FD780) + 48);
    v6 = type metadata accessor for UUID();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  sub_1005AE94C(v0[8], v0[10], type metadata accessor for SDAirDropServerConnection);
  v7 = swift_getEnumCaseMultiPayload();
  v8 = v0[10];
  if (v7)
  {
    if (v7 == 1)
    {
      sub_1005AFF54(v8, type metadata accessor for SDAirDropServerConnection);
    }

    else
    {
      v10 = v0[10];

      v11 = *(sub_10028088C(&unk_10097A650, &qword_1007FD780) + 48);
      v12 = type metadata accessor for UUID();
      (*(*(v12 - 8) + 8))(v10 + v11, v12);
    }

    v9 = 3145728;
  }

  else
  {
    sub_1005AFF54(v8, type metadata accessor for SDAirDropServerConnection);
    v9 = 0x20000;
  }

  v13 = swift_task_alloc();
  v0[13] = v13;
  *(v13 + 16) = v3;
  *(v13 + 24) = v9;
  v14 = swift_task_alloc();
  v0[14] = v14;
  *v14 = v0;
  v14[1] = sub_1005AFCDC;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000027, 0x8000000100796E60, sub_1005B0080, v13, &type metadata for SDNWHTTPMessage);
}

uint64_t sub_1005AFCDC()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1005AFEC8;
  }

  else
  {

    v2 = sub_1005AFDF8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005AFDF8()
{

  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 56);
  sub_100294008(v1, v2);

  sub_100026AC0(v1, v2);
  swift_unknownObjectRelease();

  v4 = *(v0 + 8);

  return v4(v1, v2, v3);
}

uint64_t sub_1005AFEC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005AFF54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1005AFFC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1005B000C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SDAirDropMessage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005B0084()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100984940);
  v1 = sub_10000C4AC(v0, qword_100984940);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1005B014C()
{
  _s22VisionUnlockiOSManagerCMa();
  v0 = swift_allocObject();
  result = sub_1005B01B0();
  qword_1009A0C98 = v0;
  return result;
}

uint64_t sub_1005B01B0()
{
  v1 = v0;
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v11 - 8);
  __chkstk_darwin(v11);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  swift_defaultActor_initialize();
  v7 = sub_1000276B4(0, &qword_10097A620, OS_dispatch_queue_ptr);
  v10[0] = "g.triggerUpsellFlow";
  v10[1] = v7;
  static DispatchQoS.unspecified.getter();
  v12 = _swiftEmptyArrayStorage;
  sub_1005BCE80(&qword_100973C60, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10028088C(&unk_10097A630, &unk_1007F5680);
  sub_10044EDD8(&qword_100973C70, &unk_10097A630, &unk_1007F5680);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v11);
  *(v0 + 112) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + 120) = 4;
  *(v0 + 128) = sub_1005B0188;
  *(v0 + 136) = 0;
  _s28VisionUnlockiOSUpsellManagerCMa();
  v8 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v8 + 112) = &_swiftEmptySetSingleton;
  *(v8 + 120) = 0;
  *(v8 + 128) = xmmword_10080C350;
  *(v8 + 144) = xmmword_10080C360;
  *(v8 + 160) = 0x8000000100797350;
  *(v8 + 168) = 0xD00000000000003CLL;
  *(v8 + 176) = 0x8000000100797390;
  *(v1 + 144) = v8;
  return v1;
}

uint64_t sub_1005B04B0()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1005B051C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_10028088C(&qword_100976160, &qword_1007F8770);
  v4[3] = swift_task_alloc();
  v6 = type metadata accessor for SFPlatform();
  v4[4] = v6;
  v4[5] = *(v6 - 8);
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_1005B0618, a4, 0);
}

uint64_t sub_1005B0618()
{
  v1 = *(*(v0 + 16) + 144);
  *(v0 + 56) = v1;
  return _swift_task_switch(sub_1005B063C, v1, 0);
}

uint64_t sub_1005B063C(__n128 a1)
{
  v3 = v1[5];
  v2 = v1[6];
  v4 = v1[4];
  static SFPlatform.iOS.getter();
  v5 = static SFPlatform.isPlatform(_:)();
  (*(v3 + 8))(v2, v4);
  if (v5)
  {
    v6 = v1[7];
    v7 = v1[3];
    sub_1005B8E50();
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v10 = sub_1005BCE80(&qword_100984C00, v9, _s28VisionUnlockiOSUpsellManagerCMa, &unk_10080C438);
    v11 = swift_allocObject();
    v11[2] = v6;
    v11[3] = v10;
    v11[4] = v6;
    swift_retain_n();
    sub_1002B3098(0, 0, v7, &unk_10080C580, v11);
  }

  v12 = v1[1];

  return v12();
}

void sub_1005B07C4()
{
  v1 = v0;
  out_token = 0;
  sub_1000276B4(0, &qword_10097A620, OS_dispatch_queue_ptr);
  v2 = static OS_dispatch_queue.main.getter();
  v14 = sub_1005BCB28;
  v15 = v0;
  v10 = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = sub_1006935D4;
  v13 = &unk_1008E89B8;
  v3 = _Block_copy(&v10);

  notify_register_dispatch("com.apple.sharingd.postiPhoneUnlockedByVisionNotification", &out_token, v2, v3);
  _Block_release(v3);

  v4 = static OS_dispatch_queue.main.getter();
  v14 = sub_1005B0BE0;
  v15 = 0;
  v10 = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = sub_1006935D4;
  v13 = &unk_1008E89E0;
  v5 = _Block_copy(&v10);
  notify_register_dispatch("com.apple.sharingd.visionunlockios.postupsell", &out_token, v4, v5);
  _Block_release(v5);

  v6 = static OS_dispatch_queue.main.getter();
  v14 = sub_1005B1064;
  v15 = 0;
  v10 = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = sub_1006935D4;
  v13 = &unk_1008E8A08;
  v7 = _Block_copy(&v10);
  notify_register_dispatch("com.apple.sharingd.visionunlockios.clearupsell", &out_token, v6, v7);
  _Block_release(v7);

  v8 = static OS_dispatch_queue.main.getter();
  v14 = sub_1005BCB74;
  v15 = v1;
  v10 = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = sub_1006935D4;
  v13 = &unk_1008E8A30;
  v9 = _Block_copy(&v10);

  notify_register_dispatch("com.apple.sharing.triggerUpsellFlow", &out_token, v8, v9);
  _Block_release(v9);
}

uint64_t sub_1005B0AAC()
{
  if (qword_100973AE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100984940);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "postiPhoneUnlockedByVisionNotification by command line", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1005B0C1C()
{
  if (qword_100973AE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100984940);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "com.apple.sharingd.visionunlockios.postupsell by command line", v4, 2u);
  }

  v5 = objc_opt_self();
  *(v0 + 16) = v5;
  v6 = [v5 standardUserDefaults];
  v7 = String._bridgeToObjectiveC()();
  *(v0 + 40) = [v6 BOOLForKey:v7];

  v8 = [v5 standardUserDefaults];
  v9 = String._bridgeToObjectiveC()();
  [v8 setBool:1 forKey:v9];

  if (qword_100973AE8 != -1)
  {
    swift_once();
  }

  *(v0 + 24) = *(qword_1009A0C98 + 144);

  v10 = swift_task_alloc();
  *(v0 + 32) = v10;
  *v10 = v0;
  v10[1] = sub_1005B0E8C;

  return sub_1005B6250(0x69766544656B6146, 0xEA00000000006563);
}

uint64_t sub_1005B0E8C()
{

  return _swift_task_switch(sub_1005B0FA4, 0, 0);
}

uint64_t sub_1005B0FA4()
{
  v1 = *(v0 + 40);
  v2 = [*(v0 + 16) standardUserDefaults];
  v3 = String._bridgeToObjectiveC()();
  [v2 setBool:v1 forKey:v3];

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1005B1084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  sub_1002B3098(0, 0, v6, a3, v8);
}

uint64_t sub_1005B118C()
{
  if (qword_100973AE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100984940);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "com.apple.sharingd.visionunlockios.clearupsell by command line", v4, 2u);
  }

  if (qword_100973AE8 != -1)
  {
    swift_once();
  }

  v5 = *(qword_1009A0C98 + 144);
  *(v0 + 16) = v5;

  return _swift_task_switch(sub_1005B12F4, v5, 0);
}

uint64_t sub_1005B12F4(uint64_t a1)
{
  sub_1005B8E50();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1005B135C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void, char *, uint64_t, void *))
{
  v8 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v13 = sub_1005BCE80(&qword_100984BD0, v12, _s22VisionUnlockiOSManagerCMa, &unk_10080C460);
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = v13;
  v14[4] = a2;
  swift_retain_n();
  a5(0, 0, v10, a4, v14);
}

uint64_t sub_1005B14C8()
{
  if (qword_100973AE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100984940);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "handleUpsellNotificationTapped by command line", v4, 2u);
  }

  v5 = *(v0 + 16);

  v6 = *(v5 + 144);
  *(v0 + 24) = v6;

  return _swift_task_switch(sub_1005B15EC, v6, 0);
}

uint64_t sub_1005B15EC()
{
  sub_1005B8F1C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005B164C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[37] = a8;
  v8[38] = v15;
  v8[35] = a6;
  v8[36] = a7;
  v8[33] = a4;
  v8[34] = a5;
  v10 = sub_10028088C(&qword_100975E70, &unk_1007F90A0);
  v8[39] = v10;
  v8[40] = *(v10 - 8);
  v8[41] = swift_task_alloc();
  v11 = _s7RequestVMa(0);
  v8[42] = v11;
  v12 = *(v11 - 8);
  v8[43] = v12;
  v8[44] = *(v12 + 64);
  v8[45] = swift_task_alloc();
  v8[46] = swift_task_alloc();

  return _swift_task_switch(sub_1005B179C, a4, 0);
}

uint64_t sub_1005B179C()
{
  *(v0 + 104) = 0;
  *(v0 + 88) = 0u;
  *(v0 + 72) = 0u;
  v1 = swift_task_alloc();
  *(v0 + 376) = v1;
  *v1 = v0;
  v1[1] = sub_1005B1844;
  v2 = *(v0 + 272);

  return sub_1005B2C0C(v0 + 112, v2);
}

uint64_t sub_1005B1844()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  v3 = *(v2 + 264);
  if (v0)
  {
    v4 = sub_1005B2374;
  }

  else
  {
    v4 = sub_1005B1970;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1005B1970()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);
  sub_100005508(v0 + 72, &qword_100982080, &unk_1007FDD30);
  sub_1002A9938(v0 + 112, v0 + 72);
  sub_1005BAC70(v2, v3, v0 + 16);
  if (!v1)
  {
    v11 = *(v0 + 360);
    v10 = *(v0 + 368);
    v12 = *(v0 + 344);
    v13 = *(v0 + 336);
    v14 = *(v0 + 296);
    v15 = *(v0 + 304);
    v16 = *(v0 + 288);
    v17 = type metadata accessor for UUID();
    (*(*(v17 - 8) + 16))(v10, v16, v17);
    sub_1002A9938(v0 + 112, v10 + v13[5]);
    v18 = v10 + v13[6];
    v19 = *(v0 + 64);
    v21 = *(v0 + 32);
    v20 = *(v0 + 48);
    *v18 = *(v0 + 16);
    *(v18 + 16) = v21;
    *(v18 + 32) = v20;
    *(v18 + 48) = v19;
    *(v10 + v13[7]) = v14;
    swift_unknownObjectRetain();
    UUID.uuidString.getter();
    *(v0 + 65) = 0;
    sub_1005C0854(v10, v11, _s7RequestVMa);
    v22 = (*(v12 + 80) + 24) & ~*(v12 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = v15;
    sub_1005C08BC(v11, v23 + v22, _s7RequestVMa);
    v24 = v15;
    withProgressTask<A, B>(_:initialProgress:operation:)();

    v25 = swift_task_alloc();
    *(v0 + 392) = v25;
    *v25 = v0;
    v25[1] = sub_1005B1FC4;
    v26 = *(v0 + 312);
    v27 = v0 + 66;

    return SFProgressTask.finalValue.getter(v27, v26);
  }

  sub_10000C60C((v0 + 112));
  *(v0 + 408) = v1;
  if (qword_100973C50 != -1)
  {
    swift_once();
  }

  v4 = qword_1009A10A8;
  *(v0 + 416) = qword_1009A10A8;
  if (!v4)
  {
    goto LABEL_28;
  }

  v5 = v4;
  v6 = _convertErrorToNSError(_:)();
  *(v0 + 424) = v6;
  *(v0 + 248) = v1;
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  type metadata accessor for SFAuthenticationErrorCode(0);
  if (swift_dynamicCast())
  {
    v7 = *(v0 + 68);
    v8 = 0;
    v9 = 0xE000000000000000;
LABEL_19:
    v41 = sub_100010F88(v7, v8, v9);
LABEL_20:
    v28 = v41;
    v29 = v42;
    goto LABEL_21;
  }

  *(v0 + 256) = v1;
  swift_errorRetain();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v30 = [v6 domain];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    if (v31 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v33 == v34)
    {
    }

    else
    {
      v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v35 & 1) == 0)
      {
        v51 = _convertErrorToNSError(_:)();
        v41 = sub_1004FFBC4(v51, 10);
        goto LABEL_20;
      }
    }

    v27 = [v6 code];
    if ((v27 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v36 = v27;
      if (!HIDWORD(v27))
      {
        v37 = [v6 localizedDescription];
        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;

        v7 = v36;
        v8 = v38;
        v9 = v40;
        goto LABEL_19;
      }
    }

    __break(1u);
    return SFProgressTask.finalValue.getter(v27, v26);
  }

  v28 = *(v0 + 232);
  v29 = *(v0 + 240);
LABEL_21:
  v43 = *(v0 + 288);

  sub_100695FD8(v43, v28, v29);

  v44 = [objc_opt_self() standardUserDefaults];
  v45 = String._bridgeToObjectiveC()();
  v46 = [v44 BOOLForKey:v45];

  if (v46)
  {
    sub_1005BAE94(*(v0 + 288), v28, v29);
  }

  sub_10000FF90(v0 + 72, v0 + 192, &qword_100982080, &unk_1007FDD30);
  if (*(v0 + 216))
  {
    sub_1002AF998((v0 + 192), v0 + 152);
    v47 = swift_task_alloc();
    *(v0 + 432) = v47;
    *v47 = v0;
    v47[1] = sub_1005B21BC;
    v48 = *(v0 + 280);

    return sub_1005B4740(v48, v0 + 152, v28);
  }

  sub_100005508(v0 + 192, &qword_100982080, &unk_1007FDD30);
LABEL_28:

  sub_100005508(v0 + 72, &qword_100982080, &unk_1007FDD30);

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_1005B1FC4()
{
  v2 = *v1;
  *(*v1 + 400) = v0;

  v3 = *(v2 + 264);
  if (v0)
  {
    v4 = sub_1005B27A0;
  }

  else
  {
    v4 = sub_1005B20F0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1005B20F0()
{
  v1 = v0[46];
  (*(v0[40] + 8))(v0[41], v0[39]);
  sub_1005C0A1C(v1, _s7RequestVMa);
  sub_10000C60C(v0 + 14);
  sub_100005508((v0 + 9), &qword_100982080, &unk_1007FDD30);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1005B21BC()
{
  v1 = *(*v0 + 264);

  return _swift_task_switch(sub_1005B22CC, v1, 0);
}

uint64_t sub_1005B22CC()
{
  v1 = *(v0 + 416);

  sub_10000C60C((v0 + 152));

  sub_100005508(v0 + 72, &qword_100982080, &unk_1007FDD30);

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_1005B2374()
{
  v1 = *(v0 + 384);
  *(v0 + 408) = v1;
  if (qword_100973C50 != -1)
  {
    swift_once();
  }

  v2 = qword_1009A10A8;
  *(v0 + 416) = qword_1009A10A8;
  if (!v2)
  {
    goto LABEL_24;
  }

  v3 = v2;
  v4 = _convertErrorToNSError(_:)();
  *(v0 + 424) = v4;
  *(v0 + 248) = v1;
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  type metadata accessor for SFAuthenticationErrorCode(0);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 68);
    v6 = 0;
    v7 = 0xE000000000000000;
LABEL_15:
    v22 = sub_100010F88(v5, v6, v7);
LABEL_16:
    v8 = v22;
    v9 = v23;
    goto LABEL_17;
  }

  *(v0 + 256) = v1;
  swift_errorRetain();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v10 = [v4 domain];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
    {
    }

    else
    {
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v15 & 1) == 0)
      {
        v31 = _convertErrorToNSError(_:)();
        v22 = sub_1004FFBC4(v31, 10);
        goto LABEL_16;
      }
    }

    result = [v4 code];
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v17 = result;
      if (!HIDWORD(result))
      {
        v18 = [v4 localizedDescription];
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        v5 = v17;
        v6 = v19;
        v7 = v21;
        goto LABEL_15;
      }
    }

    __break(1u);
    return result;
  }

  v8 = *(v0 + 232);
  v9 = *(v0 + 240);
LABEL_17:
  v24 = *(v0 + 288);

  sub_100695FD8(v24, v8, v9);

  v25 = [objc_opt_self() standardUserDefaults];
  v26 = String._bridgeToObjectiveC()();
  v27 = [v25 BOOLForKey:v26];

  if (v27)
  {
    sub_1005BAE94(*(v0 + 288), v8, v9);
  }

  sub_10000FF90(v0 + 72, v0 + 192, &qword_100982080, &unk_1007FDD30);
  if (*(v0 + 216))
  {
    sub_1002AF998((v0 + 192), v0 + 152);
    v28 = swift_task_alloc();
    *(v0 + 432) = v28;
    *v28 = v0;
    v28[1] = sub_1005B21BC;
    v29 = *(v0 + 280);

    return sub_1005B4740(v29, v0 + 152, v8);
  }

  sub_100005508(v0 + 192, &qword_100982080, &unk_1007FDD30);
LABEL_24:

  sub_100005508(v0 + 72, &qword_100982080, &unk_1007FDD30);

  v30 = *(v0 + 8);

  return v30();
}

unint64_t sub_1005B27A0()
{
  v1 = *(v0 + 368);
  (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));
  sub_1005C0A1C(v1, _s7RequestVMa);
  sub_10000C60C((v0 + 112));
  v2 = *(v0 + 400);
  *(v0 + 408) = v2;
  if (qword_100973C50 != -1)
  {
    swift_once();
  }

  v3 = qword_1009A10A8;
  *(v0 + 416) = qword_1009A10A8;
  if (!v3)
  {
    goto LABEL_24;
  }

  v4 = v3;
  v5 = _convertErrorToNSError(_:)();
  *(v0 + 424) = v5;
  *(v0 + 248) = v2;
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  type metadata accessor for SFAuthenticationErrorCode(0);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 68);
    v7 = 0;
    v8 = 0xE000000000000000;
LABEL_15:
    v23 = sub_100010F88(v6, v7, v8);
LABEL_16:
    v9 = v23;
    v10 = v24;
    goto LABEL_17;
  }

  *(v0 + 256) = v2;
  swift_errorRetain();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v11 = [v5 domain];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
    {
    }

    else
    {
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v16 & 1) == 0)
      {
        v32 = _convertErrorToNSError(_:)();
        v23 = sub_1004FFBC4(v32, 10);
        goto LABEL_16;
      }
    }

    result = [v5 code];
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v18 = result;
      if (!HIDWORD(result))
      {
        v19 = [v5 localizedDescription];
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

        v6 = v18;
        v7 = v20;
        v8 = v22;
        goto LABEL_15;
      }
    }

    __break(1u);
    return result;
  }

  v9 = *(v0 + 232);
  v10 = *(v0 + 240);
LABEL_17:
  v25 = *(v0 + 288);

  sub_100695FD8(v25, v9, v10);

  v26 = [objc_opt_self() standardUserDefaults];
  v27 = String._bridgeToObjectiveC()();
  v28 = [v26 BOOLForKey:v27];

  if (v28)
  {
    sub_1005BAE94(*(v0 + 288), v9, v10);
  }

  sub_10000FF90(v0 + 72, v0 + 192, &qword_100982080, &unk_1007FDD30);
  if (*(v0 + 216))
  {
    sub_1002AF998((v0 + 192), v0 + 152);
    v29 = swift_task_alloc();
    *(v0 + 432) = v29;
    *v29 = v0;
    v29[1] = sub_1005B21BC;
    v30 = *(v0 + 280);

    return sub_1005B4740(v30, v0 + 152, v9);
  }

  sub_100005508(v0 + 192, &qword_100982080, &unk_1007FDD30);
LABEL_24:

  sub_100005508(v0 + 72, &qword_100982080, &unk_1007FDD30);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1005B2C0C(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return _swift_task_switch(sub_1005B2C30, v2, 0);
}

uint64_t sub_1005B2C30()
{
  if (qword_100973C50 != -1)
  {
    swift_once();
  }

  v1 = qword_1009A10A8;
  *(v0 + 120) = qword_1009A10A8;
  if (!v1)
  {
    v12 = sub_100010F88(10, 0xD000000000000011, 0x80000001007975E0);
    v14 = v13;
    sub_1000115C8();
    swift_allocError();
    *v15 = v12;
    *(v15 + 8) = v14;
    swift_willThrow();
    v11 = *(v0 + 8);
    goto LABEL_9;
  }

  v2 = *(v0 + 104);
  if (v2)
  {
    v3 = v1;
    v4 = [v2 idsDeviceID];
    if (v4)
    {
      v5 = v4;
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      v9 = *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_idsDeviceForUniqueID];

      v9(v6, v8);

      if (*(v0 + 80))
      {
        v10 = *(v0 + 96);

        sub_1002AF998((v0 + 56), v10);
        v11 = *(v0 + 8);
LABEL_9:

        return v11();
      }

      sub_100005508(v0 + 56, &qword_100982080, &unk_1007FDD30);
    }
  }

  else
  {
    v17 = v1;
  }

  v18 = swift_task_alloc();
  *(v0 + 128) = v18;
  *v18 = v0;
  v18[1] = sub_1005B2E78;

  return sub_1005B307C(v0 + 16);
}

uint64_t sub_1005B2E78()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_1005B3018;
  }

  else
  {
    v4 = sub_1005B2FA4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1005B2FA4()
{
  v1 = *(v0 + 96);

  sub_1002AF998((v0 + 16), v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1005B3018()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005B307C(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = sub_10028088C(&qword_100984BF0, &unk_10080C560);
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v4 = sub_10028088C(&qword_100984BF8, &qword_1008106E0);
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_1005B31B0, v1, 0);
}

uint64_t sub_1005B31B0()
{
  if (qword_100973C50 != -1)
  {
LABEL_33:
    swift_once();
  }

  v1 = qword_1009A10A8;
  v0[20] = qword_1009A10A8;
  if (v1)
  {
    v2 = *(v0[13] + 120);
    v3 = v1;
    sub_100695AC4(v2, 5);
    v9 = sub_1002AF074(v7, v8);

    if ((v9 & 0x8000000000000000) != 0 || (v9 & 0x4000000000000000) != 0)
    {
      v10 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v10 = *(v9 + 16);
    }

    v11 = _swiftEmptyArrayStorage;
    v0[21] = _swiftEmptyArrayStorage;
    if (v10)
    {
      v12 = 0;
      do
      {
        v13 = v12;
        while (1)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v13 >= *(v9 + 16))
            {
              goto LABEL_32;
            }

            v14 = *(v9 + 8 * v13 + 32);
          }

          v15 = v14;
          v12 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            __break(1u);
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

          v16 = [v14 uniqueID];
          if (v16)
          {
            break;
          }

          ++v13;
          if (v12 == v10)
          {
            goto LABEL_26;
          }
        }

        v38 = v3;
        v17 = v16;
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v19;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_10028E1C8(0, *(v11 + 2) + 1, 1, v11);
        }

        v21 = *(v11 + 2);
        v20 = *(v11 + 3);
        if (v21 >= v20 >> 1)
        {
          v11 = sub_10028E1C8((v20 > 1), v21 + 1, 1, v11);
        }

        *(v11 + 2) = v21 + 1;
        v22 = &v11[16 * v21];
        v3 = v38;
        *(v22 + 4) = v18;
        *(v22 + 5) = v37;
        v0[21] = v11;
      }

      while (v12 != v10);
    }

LABEL_26:

    v23 = *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_queue];
    type metadata accessor for SDAuthenticationNearbyInfoTemporaryScanner();
    v24 = swift_allocObject();
    v0[22] = v24;
    v25 = objc_allocWithZone(RPCompanionLinkClient);
    v26 = v23;
    v27 = [v25 init];
    *(v24 + 16) = v27;
    v28 = v27;
    [v28 setControlFlags:2];
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v28 setDeviceFilter:isa];

    v30 = *(v24 + 16);
    if (([v30 controlFlags] & 0x10000) != 0)
    {
      v31 = v30;
      [v31 setBleScreenOffScanRate:20];
    }

    sub_10033F434(5);
    AsyncThrowingStream.makeAsyncIterator()();
    v33 = sub_1005BCE80(&qword_100984BD0, v32, _s22VisionUnlockiOSManagerCMa, &unk_10080C460);
    v0[23] = v33;
    v34 = v0[13];
    v35 = swift_task_alloc();
    v0[24] = v35;
    *v35 = v0;
    v35[1] = sub_1005B375C;
    v36 = v0[14];

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 9, v34, v33, v36, v0 + 10);
  }

  else
  {
    type metadata accessor for SFAuthenticationErrorCode(0);
    sub_1005BCE80(&qword_100981FF0, 255, type metadata accessor for SFAuthenticationErrorCode, &protocol conformance descriptor for SFAuthenticationErrorCode);
    swift_allocError();
    *v4 = 10;
    swift_willThrow();

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1005B375C()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = *(v2 + 104);

    v4 = sub_1005B3E80;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 104);
    v4 = sub_1005B3884;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1005B3884()
{
  v1 = *(v0 + 72);
  if (!v1)
  {
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));

    goto LABEL_5;
  }

  v2 = v1;
  v3 = [v2 idsDeviceIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  v18 = *(v0 + 168);
  *(v0 + 56) = v5;
  *(v0 + 64) = v7;
  v19 = swift_task_alloc();
  *(v19 + 16) = v0 + 56;
  v20 = sub_10039026C(sub_100345B28, v19, v18);

  if (v20)
  {
    if ((*(*(v0 + 104) + 128))(v2))
    {

      v21 = [v2 idsDeviceIdentifier];

      if (v21)
      {
        v22 = *(v0 + 160);
        v24 = *(v0 + 120);
        v23 = *(v0 + 128);
        v25 = *(v0 + 112);
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;

        (*(v24 + 8))(v23, v25);
        v29 = *(v22 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_idsDeviceForUniqueID);

        v29(v26, v28);

        v30 = *(v0 + 152);
        v31 = *(v0 + 160);
        v32 = *(v0 + 136);
        v33 = *(v0 + 144);
        if (*(v0 + 40))
        {
          v34 = *(v0 + 96);
          (*(v33 + 8))(*(v0 + 152), *(v0 + 136));

          sub_1002AF998((v0 + 16), v34);

          v16 = *(v0 + 8);
          goto LABEL_7;
        }

        sub_100005508(v0 + 16, &qword_100982080, &unk_1007FDD30);
        v46 = sub_100010F88(10, 0xD000000000000032, 0x8000000100797670);
        v48 = v47;
        sub_1000115C8();
        swift_allocError();
        *v49 = v46;
        *(v49 + 8) = v48;
        swift_willThrow();

        (*(v33 + 8))(v30, v32);
LABEL_6:

        v16 = *(v0 + 8);
LABEL_7:

        return v16();
      }

      (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));

LABEL_5:
      v8 = *(v0 + 152);
      v9 = *(v0 + 160);
      v10 = *(v0 + 136);
      v11 = *(v0 + 144);
      v12 = sub_100010F88(20, 0xD00000000000003CLL, 0x8000000100797630);
      v14 = v13;
      sub_1000115C8();
      swift_allocError();
      *v15 = v12;
      *(v15 + 8) = v14;
      swift_willThrow();

      (*(v11 + 8))(v8, v10);
      goto LABEL_6;
    }

    if (qword_100973AE0 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_10000C4AC(v35, qword_100984940);
    v36 = v2;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *(v0 + 88) = v40;
      *v39 = 136315394;
      v41 = [v36 idsDeviceIdentifier];
      if (v41)
      {
        v42 = v41;
        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v44;
      }

      else
      {
        v43 = 0xD000000000000015;
        v45 = 0x8000000100789F30;
      }

      v50 = sub_10000C4E4(v43, v45, (v0 + 88));

      *(v39 + 4) = v50;
      *(v39 + 12) = 1024;
      v51 = [v36 activityLevel];

      *(v39 + 14) = v51;
      _os_log_impl(&_mh_execute_header, v37, v38, "Ignoring paired %s because its screen is off (activity level: %d)", v39, 0x12u);
      sub_10000C60C(v40);
    }

    else
    {
    }
  }

  else
  {
  }

  v52 = *(v0 + 184);
  v53 = *(v0 + 104);
  v54 = swift_task_alloc();
  *(v0 + 192) = v54;
  *v54 = v0;
  v54[1] = sub_1005B375C;
  v55 = *(v0 + 112);

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 72, v53, v52, v55, v0 + 80);
}

uint64_t sub_1005B3E80()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[14];

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

void sub_1005B3F54(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - v5;
  if (*(a1 + 16))
  {
    v7 = sub_100012854(0x496E6F6973736573, 0xE900000000000044);
    if (v8)
    {
      v27 = *(*(a1 + 56) + 8 * v7);
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        v9 = v26;
        if (*(a1 + 16))
        {
          v10 = v25;
          v11 = sub_100012854(0x726F727265, 0xE500000000000000);
          if (v12)
          {
            v25 = *(*(a1 + 56) + 8 * v11);
            swift_unknownObjectRetain();
            if (swift_dynamicCast())
            {
              if (*(a1 + 16))
              {
                v13 = v27;
                v14 = sub_100012854(0x6567617373656DLL, 0xE700000000000000);
                if (v15)
                {
                  v27 = *(*(a1 + 56) + 8 * v14);
                  swift_unknownObjectRetain();
                  if (swift_dynamicCast())
                  {
                    v16 = v25;
                    v17 = v26;
                    v18 = type metadata accessor for TaskPriority();
                    (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
                    v19 = swift_allocObject();
                    *(v19 + 16) = 0;
                    *(v19 + 24) = 0;
                    *(v19 + 32) = v2;
                    *(v19 + 40) = v10;
                    *(v19 + 48) = v9;
                    *(v19 + 56) = v13;
                    *(v19 + 64) = v16;
                    *(v19 + 72) = v17;

                    sub_1005B4480(0, 0, v6, &unk_10080C4E0, v19);

                    sub_100005508(v6, &qword_100976160, &qword_1007F8770);
                    return;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (qword_100973AE0 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_10000C4AC(v20, qword_100984940);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Got invalid visionOS unlock failure notification content. Not creating a radar.", v23, 2u);
  }
}

uint64_t sub_1005B4270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  *(v8 + 32) = a8;
  *(v8 + 40) = v10;
  *(v8 + 64) = a7;
  *(v8 + 16) = a5;
  *(v8 + 24) = a6;
  return _swift_task_switch(sub_1005B42A0, 0, 0);
}

uint64_t sub_1005B42A0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 64);

  v4 = sub_100010F88(v3, v1, v2);
  v6 = v5;
  *(v0 + 48) = v5;
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = sub_1005B4370;
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);

  return sub_1005BB0A4(v9, v8, v4, v6);
}

uint64_t sub_1005B4370()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1005B4480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000FF90(a3, v25 - v10, &qword_100976160, &qword_1007F8770);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100005508(v11, &qword_100976160, &qword_1007F8770);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1005B4740(uint64_t a1, uint64_t a2, int a3)
{
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return _swift_task_switch(sub_1005B4764, v3, 0);
}

uint64_t sub_1005B4764(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = SFDeviceClassCodeGet();
  v4 = sub_100027628(v2);
  v5 = sub_10000EF9C(8u, v4);

  if (v5)
  {
    if (!SFDeviceIsRealityDevice())
    {
      goto LABEL_11;
    }
  }

  else
  {
    v6 = sub_100027628(*(v1 + 16));
    v7 = sub_10000EF9C(v3, v6);

    if (!v7)
    {
      goto LABEL_11;
    }
  }

  v8 = *(v1 + 32);
  if (v8 == 34 || v8 == 11)
  {
    if (qword_100973C50 != -1)
    {
      swift_once();
    }

    v9 = qword_1009A10A8;
    if (qword_1009A10A8)
    {
      v10 = *(v1 + 24);
      v11 = sub_1004FE8E0(*(v1 + 16));
      v12 = v10[3];
      v13 = v10[4];
      v14 = sub_10002CDC0(v10, v12);
      sub_1006E668C(v11 & 1, 18, v14, v9, v12, v13);
    }
  }

LABEL_11:
  v15 = *(v1 + 8);

  return v15();
}

uint64_t sub_1005B48DC()
{
  v13 = v0;
  if (qword_100973AE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100984940);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    v0[2] = v4;
    _s28VisionUnlockiOSUpsellManagerCMa();

    v7 = String.init<A>(describing:)();
    v9 = sub_10000C4E4(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s: started", v5, 0xCu);
    sub_10000C60C(v6);
  }

  v10 = swift_task_alloc();
  v0[4] = v10;
  *v10 = v0;
  v10[1] = sub_100530FC8;

  return sub_1005B4AC0();
}

uint64_t sub_1005B4AC0()
{
  v1[8] = v0;
  v2 = sub_10028088C(&qword_100984C08, &qword_100810190);
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  sub_10028088C(&qword_100984C10, &qword_10080C600);
  v1[12] = swift_task_alloc();
  v3 = sub_10028088C(&qword_100984C18, &qword_10080C608);
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();
  v4 = sub_10028088C(&qword_100984C20, &qword_10080C610);
  v1[16] = v4;
  v1[17] = *(v4 - 8);
  v1[18] = swift_task_alloc();

  return _swift_task_switch(sub_1005B4C94, v0, 0);
}

uint64_t sub_1005B4C94()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v0[5] = &type metadata for RapportDeviceSequenceProvider;
  v0[6] = &off_1009895A8;
  v0[2] = 2;
  sub_10002CDC0(v0 + 2, &type metadata for RapportDeviceSequenceProvider);
  (off_1009895B8)();
  AsyncThrowingStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v5 = sub_1005BCE80(&qword_100984C00, v4, _s28VisionUnlockiOSUpsellManagerCMa, &unk_10080C438);
  v0[19] = v5;
  v6 = v0[8];
  v7 = swift_task_alloc();
  v0[20] = v7;
  *v7 = v0;
  v7[1] = sub_1005B4E18;
  v8 = v0[16];
  v9 = v0[12];

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v9, v6, v5, v8, v0 + 7);
}

uint64_t sub_1005B4E18()
{
  v2 = *v1;

  v3 = *(v2 + 64);
  if (v0)
  {
    v4 = sub_1005B50F0;
  }

  else
  {
    v4 = sub_1005B4F2C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1005B4F2C()
{
  v1 = v0[12];
  if ((*(v0[10] + 48))(v1, 1, v0[9]) == 1)
  {
    (*(v0[17] + 8))(v0[18], v0[16]);
    sub_100005508((v0 + 2), &qword_100984C28, &qword_10080C618);

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[11];
    sub_10002C4E4(v1, v4, &qword_100984C08, &qword_100810190);
    sub_1005B52EC(v4);
    sub_100005508(v4, &qword_100984C08, &qword_100810190);
    v5 = v0[19];
    v6 = v0[8];
    v7 = swift_task_alloc();
    v0[20] = v7;
    *v7 = v0;
    v7[1] = sub_1005B4E18;
    v8 = v0[16];
    v9 = v0[12];

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v9, v6, v5, v8, v0 + 7);
  }
}

uint64_t sub_1005B50F0()
{
  (*(v0[17] + 8))(v0[18], v0[16]);
  if (qword_100973AE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100984940);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Encountered error trying to discover devices: %@", v4, 0xCu);
    sub_100005508(v5, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

  sub_100005508((v0 + 2), &qword_100984C28, &qword_10080C618);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1005B52EC(uint64_t a1)
{
  v2 = type metadata accessor for AuthenticationDevice(0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = (&v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __chkstk_darwin(v3);
  v61 = (&v61 - v7);
  v8 = __chkstk_darwin(v6);
  v10 = (&v61 - v9);
  v11 = __chkstk_darwin(v8);
  v13 = (&v61 - v12);
  v14 = __chkstk_darwin(v11);
  v16 = (&v61 - v15);
  __chkstk_darwin(v14);
  v18 = (&v61 - v17);
  v19 = sub_10028088C(&qword_100984C08, &qword_100810190);
  __chkstk_darwin(v19);
  v21 = &v61 - v20;
  sub_10000FF90(a1, &v61 - v20, &qword_100984C08, &qword_100810190);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1005C08BC(v21, v13, type metadata accessor for AuthenticationDevice);
      v23 = v62;
      if (qword_100973AE0 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_10000C4AC(v24, qword_100984940);
      sub_1005C0854(v13, v10, type metadata accessor for AuthenticationDevice);

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v63 = v23;
        v64 = v28;
        *v27 = 136315394;
        _s28VisionUnlockiOSUpsellManagerCMa();

        v29 = String.init<A>(describing:)();
        v31 = sub_10000C4E4(v29, v30, &v64);

        *(v27 + 4) = v31;
        *(v27 + 12) = 2080;
        if (v10[1])
        {
          v32 = *v10;
          v33 = v10[1];
        }

        else
        {
          v32 = 0xD000000000000015;
          v33 = 0x8000000100789F30;
        }

        sub_1005C0A1C(v10, type metadata accessor for AuthenticationDevice);
        v57 = sub_10000C4E4(v32, v33, &v64);

        *(v27 + 14) = v57;
        _os_log_impl(&_mh_execute_header, v25, v26, "%s: Device changed %s", v27, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_1005C0A1C(v10, type metadata accessor for AuthenticationDevice);
      }

      sub_1005B5B54(v13);
      v18 = v13;
    }

    else
    {
      v45 = v61;
      sub_1005C08BC(v21, v61, type metadata accessor for AuthenticationDevice);
      v46 = v62;
      if (qword_100973AE0 != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      sub_10000C4AC(v47, qword_100984940);
      sub_1005C0854(v45, v5, type metadata accessor for AuthenticationDevice);

      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v63 = v46;
        v64 = v51;
        *v50 = 136315394;
        _s28VisionUnlockiOSUpsellManagerCMa();

        v52 = String.init<A>(describing:)();
        v54 = sub_10000C4E4(v52, v53, &v64);

        *(v50 + 4) = v54;
        *(v50 + 12) = 2080;
        if (v5[1])
        {
          v55 = *v5;
          v56 = v5[1];
        }

        else
        {
          v55 = 0xD000000000000015;
          v56 = 0x8000000100789F30;
        }

        sub_1005C0A1C(v5, type metadata accessor for AuthenticationDevice);
        v59 = sub_10000C4E4(v55, v56, &v64);

        *(v50 + 14) = v59;
        _os_log_impl(&_mh_execute_header, v48, v49, "%s: Device lost %s", v50, 0x16u);
        swift_arrayDestroy();

        v45 = v61;
      }

      else
      {

        sub_1005C0A1C(v5, type metadata accessor for AuthenticationDevice);
      }

      sub_1005B6150(v45);
      v18 = v45;
    }
  }

  else
  {
    sub_1005C08BC(v21, v18, type metadata accessor for AuthenticationDevice);
    if (qword_100973AE0 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_10000C4AC(v34, qword_100984940);
    sub_1005C0854(v18, v16, type metadata accessor for AuthenticationDevice);
    v35 = v62;

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v63 = v35;
      v64 = v39;
      *v38 = 136315394;
      _s28VisionUnlockiOSUpsellManagerCMa();

      v40 = String.init<A>(describing:)();
      v42 = sub_10000C4E4(v40, v41, &v64);

      *(v38 + 4) = v42;
      *(v38 + 12) = 2080;
      if (v16[1])
      {
        v43 = *v16;
        v44 = v16[1];
      }

      else
      {
        v43 = 0xD000000000000015;
        v44 = 0x8000000100789F30;
      }

      sub_1005C0A1C(v16, type metadata accessor for AuthenticationDevice);
      v58 = sub_10000C4E4(v43, v44, &v64);

      *(v38 + 14) = v58;
      _os_log_impl(&_mh_execute_header, v36, v37, "%s: Device found %s", v38, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1005C0A1C(v16, type metadata accessor for AuthenticationDevice);
    }

    sub_1005B5B54(v18);
  }

  return sub_1005C0A1C(v18, type metadata accessor for AuthenticationDevice);
}

void sub_1005B5B54(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for AuthenticationDevice(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v8 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v34 - v9;
  v11 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v11 - 8);
  v13 = &v34 - v12;
  if (a1[3])
  {
    v35 = String.lowercased()();
    strcpy(v36, "realitydevice");
    HIWORD(v36[1]) = -4864;
    sub_10001229C();
    v14 = StringProtocol.contains<A>(_:)();

    if (v14)
    {
      if ([*(a1 + *(v4 + 48)) activityLevel] >= 7)
      {
        v27 = a1[1];
        if (v27)
        {
          v28 = *a1;
          swift_beginAccess();

          sub_10046DAAC(v36, v28, v27);
          swift_endAccess();

          v29 = type metadata accessor for TaskPriority();
          (*(*(v29 - 8) + 56))(v13, 1, 1, v29);
          sub_1005C0854(a1, v10, type metadata accessor for AuthenticationDevice);
          v31 = sub_1005BCE80(&qword_100984C00, v30, _s28VisionUnlockiOSUpsellManagerCMa, &unk_10080C438);
          v32 = (*(v5 + 80) + 40) & ~*(v5 + 80);
          v33 = swift_allocObject();
          v33[2] = v2;
          v33[3] = v31;
          v33[4] = v2;
          sub_1005C08BC(v10, v33 + v32, type metadata accessor for AuthenticationDevice);
          swift_retain_n();
          sub_1002B3098(0, 0, v13, &unk_10080C5F0, v33);
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
        if (qword_100973AE0 != -1)
        {
          swift_once();
        }

        v15 = type metadata accessor for Logger();
        sub_10000C4AC(v15, qword_100984940);
        sub_1005C0854(a1, v8, type metadata accessor for AuthenticationDevice);

        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v35._countAndFlagsBits = swift_slowAlloc();
          *v18 = 136315394;
          v36[0] = v2;
          _s28VisionUnlockiOSUpsellManagerCMa();

          v19 = String.init<A>(describing:)();
          v21 = sub_10000C4E4(v19, v20, &v35._countAndFlagsBits);

          *(v18 + 4) = v21;
          *(v18 + 12) = 2080;
          v22 = [*&v8[*(v4 + 48)] description];
          v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v25 = v24;

          sub_1005C0A1C(v8, type metadata accessor for AuthenticationDevice);
          v26 = sub_10000C4E4(v23, v25, &v35._countAndFlagsBits);

          *(v18 + 14) = v26;
          _os_log_impl(&_mh_execute_header, v16, v17, "%s: Device lost because screen turned off %s", v18, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          sub_1005C0A1C(v8, type metadata accessor for AuthenticationDevice);
        }

        sub_1005B6150(a1);
      }
    }
  }
}

uint64_t sub_1005B607C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1005B609C, a4, 0);
}

void sub_1005B609C()
{
  v1 = *(v0 + 24);
  v2 = v1[1];
  if (v2)
  {
    v3 = *v1;
    v4 = swift_task_alloc();
    *(v0 + 32) = v4;
    *v4 = v0;
    v4[1] = sub_10052F858;

    sub_1005B6250(v3, v2);
  }

  else
  {
    __break(1u);
  }
}

void sub_1005B6150(uint64_t *result)
{
  if (result[3])
  {
    v2 = v1;
    String.lowercased()();
    sub_10001229C();
    v4 = StringProtocol.contains<A>(_:)();

    if (v4)
    {
      v5 = result[1];
      if (v5)
      {
        v6 = *result;
        swift_beginAccess();
        sub_10036DB18(v6, v5);
        swift_endAccess();

        if (!*(*(v2 + 112) + 16))
        {
          sub_1005B8E50();
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_1005B6250(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return _swift_task_switch(sub_1005B6274, v2, 0);
}

uint64_t sub_1005B6274()
{
  v23 = v0;
  if (*(*(v0 + 48) + 120))
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = [objc_opt_self() standardUserDefaults];
    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 BOOLForKey:v4];
    *(v0 + 72) = v5;

    if (v5)
    {
      if (qword_100973AE0 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_10000C4AC(v6, qword_100984940);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "### TESTING ONLY: showing upsell notification regardless of state because ignorePairingWhenShowingUpsellNotification is set", v9, 2u);
      }
    }

    if (qword_100973AE0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    *(v0 + 56) = sub_10000C4AC(v10, qword_100984940);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 48);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136315138;
      *(v0 + 24) = v13;
      _s28VisionUnlockiOSUpsellManagerCMa();

      v16 = String.init<A>(describing:)();
      v18 = sub_10000C4E4(v16, v17, &v22);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v11, v12, "%s: Post if necessary", v14, 0xCu);
      sub_10000C60C(v15);
    }

    v19 = swift_task_alloc();
    *(v0 + 64) = v19;
    *v19 = v0;
    v19[1] = sub_1005B65C8;
    v20 = *(v0 + 40);
    v21 = *(v0 + 32);

    return sub_1005B6898(v21, v20);
  }
}

uint64_t sub_1005B65C8(char a1)
{
  v2 = *(*v1 + 48);
  *(*v1 + 73) = a1;

  return _swift_task_switch(sub_1005B66E0, v2, 0);
}

uint64_t sub_1005B66E0()
{
  v14 = v0;
  if ((*(v0 + 72) & 1) != 0 || *(v0 + 73))
  {

    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v1, v2))
    {
      v3 = *(v0 + 48);
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v13 = v5;
      *v4 = 136315138;
      *(v0 + 16) = v3;
      _s28VisionUnlockiOSUpsellManagerCMa();

      v6 = String.init<A>(describing:)();
      v8 = sub_10000C4E4(v6, v7, &v13);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v1, v2, "%s: Posting!!", v4, 0xCu);
      sub_10000C60C(v5);
    }

    v9 = *(v0 + 48);
    v10 = [objc_opt_self() sharedManager];
    [v10 visionUnlockiOSUpsellPostIfNeeded];

    *(v9 + 120) = 1;
    sub_1005B8670();
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1005B6898(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return _swift_task_switch(sub_1005B68BC, v2, 0);
}

id sub_1005B68BC()
{
  v42 = v0;
  result = [objc_opt_self() sharedMonitor];
  if (result)
  {
    v2 = result;
    v3 = [result deviceKeyBagLocked];

    if (!v3)
    {
      goto LABEL_14;
    }

    if (qword_100973AE0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    v0[11] = sub_10000C4AC(v4, qword_100984940);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[10];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v41 = v9;
      *v8 = 136315138;
      v0[7] = v7;
      _s28VisionUnlockiOSUpsellManagerCMa();

      v10 = String.init<A>(describing:)();
      v12 = sub_10000C4E4(v10, v11, &v41);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v5, v6, "%s: keybag unlocked", v8, 0xCu);
      sub_10000C60C(v9);
    }

    if ((sub_1005B73CC() & 1) == 0)
    {
      goto LABEL_14;
    }

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = v0[10];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v41 = v17;
      *v16 = 136315138;
      v0[6] = v15;
      _s28VisionUnlockiOSUpsellManagerCMa();

      v18 = String.init<A>(describing:)();
      v20 = sub_10000C4E4(v18, v19, &v41);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v13, v14, "%s: not previously enabled", v16, 0xCu);
      sub_10000C60C(v17);
    }

    if (!sub_1005B7594())
    {
      goto LABEL_14;
    }

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = v0[10];
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v41 = v25;
      *v24 = 136315138;
      v0[5] = v23;
      _s28VisionUnlockiOSUpsellManagerCMa();

      v26 = String.init<A>(describing:)();
      v28 = sub_10000C4E4(v26, v27, &v41);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "%s: under dismissal limit", v24, 0xCu);
      sub_10000C60C(v25);
    }

    if ((sub_1005BA908(v0[8], v0[9]) & 1) == 0)
    {

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = v0[10];
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v41 = v34;
        *v33 = 136315138;
        v0[4] = v32;
        _s28VisionUnlockiOSUpsellManagerCMa();

        v35 = String.init<A>(describing:)();
        v37 = sub_10000C4E4(v35, v36, &v41);

        *(v33 + 4) = v37;
        _os_log_impl(&_mh_execute_header, v30, v31, "%s: feature not enabled", v33, 0xCu);
        sub_10000C60C(v34);
      }

      v38 = swift_task_alloc();
      v0[12] = v38;
      *v38 = v0;
      v38[1] = sub_1005B6E40;
      v39 = v0[9];
      v40 = v0[8];

      return sub_1005B7770(v40, v39);
    }

    else
    {
LABEL_14:
      v29 = v0[1];

      return v29(0);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005B6E40(char a1)
{
  v2 = *(*v1 + 80);
  *(*v1 + 112) = a1;

  return _swift_task_switch(sub_1005B6F58, v2, 0);
}

uint64_t sub_1005B6F58()
{
  v13 = v0;
  if (*(v0 + 112) == 1)
  {

    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v1, v2))
    {
      v3 = *(v0 + 80);
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v12 = v5;
      *v4 = 136315138;
      *(v0 + 24) = v3;
      _s28VisionUnlockiOSUpsellManagerCMa();

      v6 = String.init<A>(describing:)();
      v8 = sub_10000C4E4(v6, v7, &v12);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v1, v2, "%s: device eligible", v4, 0xCu);
      sub_10000C60C(v5);
    }

    v9 = swift_task_alloc();
    *(v0 + 104) = v9;
    *v9 = v0;
    v9[1] = sub_1005B7140;

    return sub_1005B7F0C();
  }

  else
  {
    v11 = *(v0 + 8);

    return v11(0);
  }
}

uint64_t sub_1005B7140(char a1)
{
  v2 = *(*v1 + 80);
  *(*v1 + 113) = a1;

  return _swift_task_switch(sub_1005B7258, v2, 0);
}

uint64_t sub_1005B7258()
{
  v13 = v0;
  v1 = *(v0 + 113);
  if (v1 == 1)
  {

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 80);
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v12 = v6;
      *v5 = 136315138;
      *(v0 + 16) = v4;
      _s28VisionUnlockiOSUpsellManagerCMa();

      v7 = String.init<A>(describing:)();
      v9 = sub_10000C4E4(v7, v8, &v12);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v2, v3, "%s: security policies pass", v5, 0xCu);
      sub_10000C60C(v6);
    }
  }

  v10 = *(v0 + 8);

  return v10(v1);
}

uint64_t sub_1005B73CC()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 BOOLForKey:v1];

  if (v2)
  {
    if (qword_100973AE0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000C4AC(v3, qword_100984940);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136315138;
      _s28VisionUnlockiOSUpsellManagerCMa();

      v8 = String.init<A>(describing:)();
      v10 = sub_10000C4E4(v8, v9, &v12);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "%s: previously enabled", v6, 0xCu);
      sub_10000C60C(v7);
    }
  }

  return v2 ^ 1;
}

BOOL sub_1005B7594()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 integerForKey:v1];

  if (v2 >= 2)
  {
    if (qword_100973AE0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000C4AC(v3, qword_100984940);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136315394;
      _s28VisionUnlockiOSUpsellManagerCMa();

      v8 = String.init<A>(describing:)();
      v10 = sub_10000C4E4(v8, v9, &v12);

      *(v6 + 4) = v10;
      *(v6 + 12) = 2048;
      *(v6 + 14) = v2;
      _os_log_impl(&_mh_execute_header, v4, v5, "%s: Already dismissed %ld times, not showing upsell", v6, 0x16u);
      sub_10000C60C(v7);
    }
  }

  return v2 < 2;
}

uint64_t sub_1005B7770(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  return _swift_task_switch(sub_1005B7794, v2, 0);
}

uint64_t sub_1005B7794()
{
  v21 = v0;
  if (qword_100973C50 != -1)
  {
    swift_once();
  }

  v1 = qword_1009A10A8;
  v0[12] = qword_1009A10A8;
  if (v1)
  {
    v2 = qword_100973AE8;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = qword_1009A0C98;
    v5 = *(qword_1009A0C98 + 120);
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        v6 = 3;
      }

      else if (v5 == 3)
      {
        v6 = 9;
      }

      else
      {
        v6 = 17;
      }

LABEL_21:
      v15 = sub_1004FE068(v6);
      v16 = swift_task_alloc();
      v0[13] = v16;
      *v16 = v0;
      v16[1] = sub_1005B7B0C;

      return sub_100696394(v15);
    }

    if (*(qword_1009A0C98 + 120))
    {
      v6 = 5;
      goto LABEL_21;
    }

    if (qword_100973AE0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000C4AC(v7, qword_100984940);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v20 = v11;
      *v10 = 136315138;
      v12 = *(v4 + 120);
      if (v12 <= 1)
      {
        if (*(v4 + 120))
        {
          v13 = 0xEE00656E6F68506BLL;
          v14 = 0x636F6C6E5563616DLL;
        }

        else
        {
          v13 = 0xE700000000000000;
          v14 = 0x6E776F6E6B6E75;
        }
      }

      else if (v12 == 2)
      {
        v13 = 0xEC00000043737361;
        v14 = 0x6C436B636F6C6E75;
      }

      else if (v12 == 3)
      {
        v13 = 0xEF6B636F6C6E5565;
        v14 = 0x646F4D7473657567;
      }

      else
      {
        v13 = 0xEF534F696B636F6CLL;
        v14 = 0x6E556E6F69736976;
      }

      v18 = sub_10000C4E4(v14, v13, &v20);

      *(v10 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v8, v9, "Missing SFAuthenticationType for pairingType of %s. This is a coding error, please file a radar", v10, 0xCu);
      sub_10000C60C(v11);
    }
  }

  v19 = v0[1];

  return v19(0);
}

uint64_t sub_1005B7B0C(uint64_t a1)
{
  v2 = *(*v1 + 88);
  *(*v1 + 112) = a1;

  return _swift_task_switch(sub_1005B7C24, v2, 0);
}

void sub_1005B7C24(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 112);
  if ((v3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000276B4(0, &qword_100974F60, SFAutoUnlockDevice_ptr);
    sub_10002764C();
    Set.Iterator.init(_cocoa:)();
    v3 = *(v2 + 16);
    v4 = *(v2 + 24);
    v5 = *(v2 + 32);
    v6 = *(v2 + 40);
    v7 = *(v2 + 48);
  }

  else
  {
    v8 = -1 << *(v3 + 32);
    v4 = v3 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v3 + 56);

    v6 = 0;
  }

  v29 = v5;
  v30 = v4;
  v11 = (v5 + 64) >> 6;
  while (v3 < 0)
  {
    v16 = __CocoaSet.Iterator.next()();
    if (!v16)
    {
LABEL_28:
      v15 = 0;
      goto LABEL_29;
    }

    *(v2 + 64) = v16;
    sub_1000276B4(0, &qword_100974F60, SFAutoUnlockDevice_ptr);
    swift_dynamicCast();
    v15 = *(v2 + 56);
    v14 = v7;
    if (!v15)
    {
      goto LABEL_29;
    }

LABEL_18:
    v31 = v14;
    v17 = [v15 uniqueID];
    if (!v17)
    {
      goto LABEL_8;
    }

    v18 = v17;
    v19 = v3;
    v21 = *(v2 + 72);
    v20 = *(v2 + 80);
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if (v22 == v21 && v24 == v20)
    {

      v3 = v19;
      v4 = v30;
LABEL_26:
      v27 = [v15 unlockEnabled];

      v7 = v31;
      if ((v27 & 1) == 0)
      {
        v15 = 1;
LABEL_29:

        sub_100027D64(v3);

        v28 = *(v2 + 8);

        v28(v15);
        return;
      }
    }

    else
    {
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v3 = v19;
      v4 = v30;
      if (v26)
      {
        goto LABEL_26;
      }

LABEL_8:

      v7 = v31;
    }
  }

  v12 = v6;
  v13 = v7;
  if (v7)
  {
LABEL_14:
    v14 = (v13 - 1) & v13;
    v15 = *(*(v3 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v15)
    {
      goto LABEL_29;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v6 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_28;
    }

    v13 = *(v4 + 8 * v6);
    ++v12;
    if (v13)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_1005B7F0C()
{
  v1[5] = v0;
  v1[6] = type metadata accessor for AuthenticationSecurityRequest(0);
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_1005B7FA0, v0, 0);
}

uint64_t sub_1005B7FA0()
{
  if (qword_100973C50 != -1)
  {
    swift_once();
  }

  v1 = qword_1009A10A8;
  v0[8] = qword_1009A10A8;
  if (v1)
  {
    v2 = qword_100973AE8;
    v3 = v1;
    if (v2 != -1)
    {
      v17 = v3;
      swift_once();
      v3 = v17;
    }

    v4 = *(qword_1009A0C98 + 120);
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v5 = (sub_1004FE8E0(3uLL) & 1) == 0;
        v6 = 2050;
        v7 = 2688;
      }

      else if (v4 == 3)
      {
        v5 = (sub_1004FE8E0(9uLL) & 1) == 0;
        v6 = 34816;
        v7 = 34818;
      }

      else
      {
        v5 = (sub_1004FE8E0(0x11uLL) & 1) == 0;
        v6 = 35552;
        v7 = 526338;
      }

      if (v5)
      {
        v15 = v6;
      }

      else
      {
        v15 = v7;
      }

      goto LABEL_25;
    }

    if (*(qword_1009A0C98 + 120))
    {
      sub_1004FE8E0(5uLL);
      v15 = 34816;
LABEL_25:
      v16 = v0[7];
      Date.init()();
      *v16 = v15;

      return _swift_task_switch(sub_1005B821C, 0, 0);
    }

    v8 = v3;
    if (qword_100973AE0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000C4AC(v9, qword_100984940);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Could not get pairing type for visionunlockios. This is a coding error. Check SDAuthenticationSession", v12, 2u);
    }
  }

  v13 = v0[1];

  return v13(0);
}

uint64_t sub_1005B821C()
{
  v1 = (v0[8] + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_securityManager);
  swift_beginAccess();
  sub_10002CDC0(v1, v1[3]);
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_1005B82E4;
  v3 = v0[7];

  return sub_100351944(v3);
}

uint64_t sub_1005B82E4()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_1005B8498;
  }

  else
  {
    v4 = sub_1005B8410;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1005B8410()
{
  v1 = *(v0 + 56);

  sub_1005C0A1C(v1, type metadata accessor for AuthenticationSecurityRequest);

  v2 = *(v0 + 8);

  return v2(1);
}

uint64_t sub_1005B8498()
{
  if (qword_100973AE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100984940);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[8];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Got policy error %@", v6, 0xCu);
    sub_100005508(v7, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

  sub_1005C0A1C(v0[7], type metadata accessor for AuthenticationSecurityRequest);

  v9 = v0[1];

  return v9(0);
}

uint64_t sub_1005B8670()
{
  v1 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  if (*(v0 + 144))
  {

    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    Task.cancel()();
  }

  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  *(v0 + 144) = sub_1002B281C(0, 0, v3, &unk_10080C5E0, v6);
}

uint64_t sub_1005B87E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_1005B88A8, 0, 0);
}

uint64_t sub_1005B88A8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    static Task<>.checkCancellation()();
    static Clock<>.continuous.getter();
    v4 = swift_task_alloc();
    v0[13] = v4;
    *v4 = v0;
    v4[1] = sub_1005B8A14;

    return sub_10002ED10(0x43561A8829300000, 16, 0, 0, 1);
  }

  else
  {

    v2 = v0[1];

    return v2();
  }
}

uint64_t sub_1005B8A14()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  (*(v2[10] + 8))(v2[11], v2[9]);
  if (v0)
  {
    v3 = sub_1005B8D08;
  }

  else
  {
    v3 = sub_1005B8B7C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1005B8B7C()
{
  if (qword_100973AE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100984940);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Dismissal timer fired", v4, 2u);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 120) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_1005B8D74, Strong, 0);
  }

  else
  {

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1005B8D08()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005B8D74(uint64_t a1)
{
  sub_1005B8E50();

  return _swift_task_switch(sub_1005B8DE4, 0, 0);
}

uint64_t sub_1005B8DE4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1005B8E50()
{
  *(v0 + 120) = 0;
  if (*(v0 + 144))
  {

    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    Task.cancel()();
  }

  *(v0 + 144) = 0;

  v1 = [objc_opt_self() sharedManager];
  [v1 visionUnlockiOSRemoveAll];
}

void sub_1005B8F1C()
{
  v1 = v0;
  v2 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v2 - 8);
  v4 = &v27 - v3;
  swift_beginAccess();

  v6 = sub_1002FB66C(v5);
  v8 = v7;

  if (v8)
  {
    v9 = [objc_opt_self() sharedTransport];
    if (!v9)
    {
      __break(1u);
      return;
    }

    v10 = v9;
    v11 = String._bridgeToObjectiveC()();
    v12 = [v10 idsDeviceForUniqueID:v11];

    if (v12)
    {
      if (qword_100973AE0 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_10000C4AC(v13, qword_100984940);

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v27 = v17;
        *v16 = 136315138;
        v18 = sub_10000C4E4(v6, v8, &v27);

        *(v16 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v14, v15, "Upsell notification tapped for visionOS unlock pairing. Registering %s", v16, 0xCu);
        sub_10000C60C(v17);
      }

      else
      {
      }

      v23 = type metadata accessor for TaskPriority();
      (*(*(v23 - 8) + 56))(v4, 1, 1, v23);
      v25 = sub_1005BCE80(&qword_100984C00, v24, _s28VisionUnlockiOSUpsellManagerCMa, &unk_10080C438);
      v26 = swift_allocObject();
      v26[2] = v1;
      v26[3] = v25;
      v26[4] = v1;
      v26[5] = v12;
      swift_retain_n();
      sub_1002B3098(0, 0, v4, &unk_10080C590, v26);

      return;
    }
  }

  if (qword_100973AE0 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_10000C4AC(v19, qword_100984940);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Ignoring upsell notification action, no eligibleDevice", v22, 2u);
  }
}

uint64_t sub_1005B9304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_100005C04;

  return sub_1005BD238(a5, a4);
}

void sub_1005B93A0(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v3 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v3 - 8);
  v5 = &v51 - v4;
  sub_10028088C(&qword_100978508, &unk_1007FB610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F8A60;
  if (!kCFUserNotificationAlertHeaderKey)
  {
    __break(1u);
    goto LABEL_36;
  }

  v7 = inited;
  *(inited + 32) = kCFUserNotificationAlertHeaderKey;
  v8 = 0x8000000100797790;
  v9 = kCFUserNotificationAlertHeaderKey;
  v10 = String._bridgeToObjectiveC()();
  v11 = SFLocalizedStringForKey();

  if (v11)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = (v7 + 40);
    *(v7 + 64) = &type metadata for String;
    if (v14)
    {
      *v15 = v12;
      v8 = v14;
      goto LABEL_7;
    }
  }

  else
  {
    v15 = (v7 + 40);
    *(v7 + 64) = &type metadata for String;
  }

  *v15 = 0xD000000000000021;
LABEL_7:
  *(v7 + 48) = v8;
  if (!kCFUserNotificationAlertMessageKey)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  *(v7 + 72) = kCFUserNotificationAlertMessageKey;
  v16 = 0x80000001007977C0;
  v17 = kCFUserNotificationAlertMessageKey;
  v18 = String._bridgeToObjectiveC()();
  v19 = SFLocalizedStringForKey();

  if (v19)
  {
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23 = (v7 + 80);
    *(v7 + 104) = &type metadata for String;
    if (v22)
    {
      *v23 = v20;
      v16 = v22;
      goto LABEL_13;
    }
  }

  else
  {
    v23 = (v7 + 80);
    *(v7 + 104) = &type metadata for String;
  }

  *v23 = 0xD000000000000020;
LABEL_13:
  *(v7 + 88) = v16;
  if (!kCFUserNotificationDefaultButtonTitleKey)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  *(v7 + 112) = kCFUserNotificationDefaultButtonTitleKey;
  v24 = kCFUserNotificationDefaultButtonTitleKey;
  v25 = String._bridgeToObjectiveC()();
  v26 = SFLocalizedStringForKey();

  if (v26)
  {
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30 = (v7 + 120);
    *(v7 + 144) = &type metadata for String;
    if (v29)
    {
      *v30 = v27;
      goto LABEL_19;
    }
  }

  else
  {
    v30 = (v7 + 120);
    *(v7 + 144) = &type metadata for String;
  }

  *v30 = 0x6961674120797254;
  v29 = 0xE90000000000006ELL;
LABEL_19:
  *(v7 + 128) = v29;
  if (!kCFUserNotificationAlternateButtonTitleKey)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  *(v7 + 152) = kCFUserNotificationAlternateButtonTitleKey;
  v31 = kCFUserNotificationAlternateButtonTitleKey;
  v32 = String._bridgeToObjectiveC()();
  v33 = SFLocalizedStringForKey();

  if (v33)
  {
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    v37 = (v7 + 160);
    *(v7 + 184) = &type metadata for String;
    if (v36)
    {
      *v37 = v34;
      goto LABEL_25;
    }
  }

  else
  {
    v37 = (v7 + 160);
    *(v7 + 184) = &type metadata for String;
  }

  *v37 = 0x6C65636E6143;
  v36 = 0xE600000000000000;
LABEL_25:
  *(v7 + 168) = v36;
  if (!kCFUserNotificationAlertTopMostKey)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  *(v7 + 192) = kCFUserNotificationAlertTopMostKey;
  *(v7 + 224) = &type metadata for Bool;
  *(v7 + 200) = 1;
  v38 = SBUserNotificationForcesModalAlertAppearance;
  if (!SBUserNotificationForcesModalAlertAppearance)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  *(v7 + 232) = SBUserNotificationForcesModalAlertAppearance;
  *(v7 + 264) = &type metadata for Bool;
  *(v7 + 240) = 1;
  v39 = SBUserNotificationDisplayActionButtonOnLockScreen;
  if (!SBUserNotificationDisplayActionButtonOnLockScreen)
  {
    goto LABEL_41;
  }

  *(v7 + 272) = SBUserNotificationDisplayActionButtonOnLockScreen;
  *(v7 + 304) = &type metadata for Bool;
  *(v7 + 280) = 1;
  v40 = v39;
  v41 = v38;
  v42 = kCFUserNotificationAlertTopMostKey;
  sub_100281720(v7);
  swift_setDeallocating();
  sub_10028088C(&qword_100974638, &qword_1007FB620);
  swift_arrayDestroy();
  v52 = 0;
  type metadata accessor for CFString(0);
  sub_1005BCE80(&qword_100975630, 255, type metadata accessor for CFString, &unk_1007F76E4);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v44 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 0, &v52, isa);

  if (v44)
  {
    v45 = swift_allocObject();
    *(v45 + 16) = 0;
    CFUserNotificationReceiveResponse(v44, 0.0, (v45 + 16));
    v46 = type metadata accessor for TaskPriority();
    (*(*(v46 - 8) + 56))(v5, 1, 1, v46);
    sub_1002A9938(v51, v53);
    v47 = swift_allocObject();
    v47[2] = 0;
    v47[3] = 0;
    v47[4] = v45;
    v47[5] = a1;
    sub_1002AF998(v53, (v47 + 6));

    sub_1002B3098(0, 0, v5, &unk_10080C5B8, v47);
  }

  else
  {
    if (qword_100973AE0 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_10000C4AC(v48, qword_100984940);
    v44 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 67109120;
      swift_beginAccess();
      *(v50 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v44, v49, "Failed to show CFUserNotification. Error: %d", v50, 8u);
    }
  }
}

uint64_t sub_1005B9A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return _swift_task_switch(sub_1005B9A50, 0, 0);
}

uint64_t sub_1005B9A50()
{
  v1 = v0[5];
  swift_beginAccess();
  v2 = *(v1 + 16) & 3;
  if (v2 == 3)
  {
    if (qword_100973AE0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000C4AC(v14, qword_100984940);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_19;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "Cancel button tapped or notification timed out";
    goto LABEL_18;
  }

  if (!v2)
  {
    if (qword_100973AE0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000C4AC(v3, qword_100984940);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Retry button tapped", v6, 2u);
    }

    v7 = v0[7];

    v8 = v7[3];
    v9 = v7[4];
    v10 = sub_10002CDC0(v7, v8);
    v11 = swift_task_alloc();
    v0[8] = v11;
    *v11 = v0;
    v11[1] = sub_1005B9D50;
    v12 = v0[6];

    return sub_1005BEBC0(v10, v12, v8, v9);
  }

  if (qword_100973AE0 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_10000C4AC(v19, qword_100984940);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "Unknown response";
LABEL_18:
    _os_log_impl(&_mh_execute_header, v15, v16, v18, v17, 2u);
  }

LABEL_19:

  v20 = v0[1];

  return v20();
}

uint64_t sub_1005B9D50()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_1005B9E44()
{
  *(v0 + 120) = 0;
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = objc_opt_self();
  v4 = [v3 standardUserDefaults];
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 integerForKey:v5];

  v7 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
  }

  else if (qword_100973AE0 == -1)
  {
    goto LABEL_3;
  }

  swift_once();
LABEL_3:
  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_100984940);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_10000C4E4(v2, v1, &v15);
    *(v11 + 12) = 2048;
    *(v11 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v9, v10, "Updating dismissal count for %s to %ld", v11, 0x16u);
    sub_10000C60C(v12);
  }

  v13 = [v3 standardUserDefaults];
  v14 = String._bridgeToObjectiveC()();
  [v13 setInteger:v7 forKey:v14];
}

uint64_t sub_1005BA064()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1005BA0D8(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v7 = *(v21 - 8);
  __chkstk_darwin(v21);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[3] = sub_1000276B4(0, &qword_10097F0C0, IDSDevice_ptr);
  v26[4] = &off_1008EA2C0;
  v26[0] = a1;
  v10 = qword_100973AE0;
  v11 = a1;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000C4AC(v12, qword_100984940);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "VisionUnlock setup failed, asking user to retry", v15, 2u);
  }

  if (qword_100973AE8 != -1)
  {
    swift_once();
  }

  v16 = *(qword_1009A0C98 + 112);
  sub_1002A9938(v26, v25);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  sub_1002AF998(v25, v17 + 24);
  aBlock[4] = sub_1005BEAF0;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008E8C88;
  v18 = _Block_copy(aBlock);
  v19 = v16;

  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_1005BCE80(&qword_100976140, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_10044EDD8(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v22 + 8))(v6, v4);
  (*(v7 + 8))(v9, v21);

  return sub_10000C60C(v26);
}

uint64_t sub_1005BA4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v11 = *(v24 - 8);
  __chkstk_darwin(v24);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29[3] = a3;
  v29[4] = a4;
  v14 = sub_10002F604(v29);
  (*(*(a3 - 8) + 16))(v14, a1, a3);
  if (qword_100973AE0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000C4AC(v15, qword_100984940);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "VisionUnlock setup failed, asking user to retry", v18, 2u);
  }

  if (qword_100973AE8 != -1)
  {
    swift_once();
  }

  v19 = *(qword_1009A0C98 + 112);
  sub_1002A9938(v29, v28);
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  sub_1002AF998(v28, v20 + 24);
  aBlock[4] = sub_1005C0A90;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008E8D78;
  v21 = _Block_copy(aBlock);
  v22 = v19;

  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_1005BCE80(&qword_100976140, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_10044EDD8(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v25 + 8))(v10, v8);
  (*(v11 + 8))(v13, v24);

  return sub_10000C60C(v29);
}

uint64_t sub_1005BA908(void *a1, uint64_t a2)
{
  if (qword_100973C50 != -1)
  {
    goto LABEL_36;
  }

  while (qword_1009A10A8)
  {
    v31 = a1;
    v32 = a2;
    v2 = qword_100973AE8;
    v3 = qword_1009A10A8;
    if (v2 != -1)
    {
      swift_once();
    }

    sub_100695AC4(*(qword_1009A0C98 + 120), 5);
    v29 = v3;
    if ((v4 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      sub_1000276B4(0, &qword_100974F60, SFAutoUnlockDevice_ptr);
      sub_10002764C();
      a1 = Set.Iterator.init(_cocoa:)();
      v6 = v34;
      v30 = v35;
      v7 = v36;
      v8 = v37;
      v9 = v38;
    }

    else
    {
      v10 = -1 << *(v4 + 32);
      v30 = v4 + 56;
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

      v9 = v12 & *(v4 + 56);

      v8 = 0;
      v6 = a1;
    }

    v13 = (v7 + 64) >> 6;
    while (v6 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (sub_1000276B4(0, &qword_100974F60, SFAutoUnlockDevice_ptr), swift_dynamicCast(), v17 = v33, v16 = v9, !v33))
      {
LABEL_32:
        v26 = 0;
        v17 = v29;
        goto LABEL_34;
      }

LABEL_24:
      v18 = [v17 uniqueID];
      if (v18)
      {
        v19 = v18;
        v20 = v6;
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        if (v21 == v31 && v23 == v32)
        {

          v26 = 1;
          v6 = v20;
          goto LABEL_34;
        }

        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v6 = v20;
        v9 = v16;
        if (v25)
        {
          v26 = 1;
          v17 = v29;
LABEL_34:

          sub_100027D64(v6);

          return v26;
        }
      }

      else
      {

        v9 = v16;
      }
    }

    v14 = v8;
    v15 = v9;
    if (v9)
    {
LABEL_20:
      v16 = (v15 - 1) & v15;
      v17 = *(*(v6 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v15)))));
      if (!v17)
      {
        goto LABEL_32;
      }

      goto LABEL_24;
    }

    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        v26 = 0;
        v17 = v29;
        goto LABEL_34;
      }

      v15 = *(v30 + 8 * v8);
      ++v14;
      if (v15)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_36:
    v27 = a1;
    v28 = a2;
    swift_once();
    a1 = v27;
    a2 = v28;
  }

  return 0;
}

uint64_t sub_1005BAC70@<X0>(id a1@<X1>, uint64_t a2@<X0>, uint64_t a3@<X8>)
{
  if (a2 == 19)
  {
    v6 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    result = 0;
    v8 = 2;
  }

  else
  {
    if (a2 != 20)
    {
      _StringGuts.grow(_:)(32);

      v14._countAndFlagsBits = sub_100027340();
      String.append(_:)(v14);

      v15 = sub_100010F88(1, 0xD00000000000001ELL, 0x80000001007975C0);
      v17 = v16;
      sub_1000115C8();
      swift_allocError();
      *v18 = v15;
      *(v18 + 8) = v17;
      return swift_willThrow();
    }

    if (a1)
    {
      v25 = a3;
      v4 = [a1 bundleID];
      if (v4)
      {
        v5 = v4;
        v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = v7;
      }

      else
      {
        v6 = 0;
        v8 = 0;
      }

      v19 = [a1 appName];
      if (v19)
      {
        v20 = v19;
        v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = v21;
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }

      v22 = [a1 acmContext];
      if (v22)
      {
        v23 = v22;
        v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v24;
      }

      else
      {
        v11 = 0;
        v12 = 0xF000000000000000;
      }

      result = [a1 biometricOnly];
      a3 = v25;
    }

    else
    {
      v6 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      result = 2;
      v12 = 0xF000000000000000;
    }
  }

  *a3 = v6;
  *(a3 + 8) = v8;
  *(a3 + 16) = v9;
  *(a3 + 24) = v10;
  *(a3 + 32) = v11;
  *(a3 + 40) = v12;
  *(a3 + 48) = result;
  return result;
}

void sub_1005BAE94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() sharedManager];
  sub_1000116BC(a2, a3);
  v6 = String._bridgeToObjectiveC()();

  sub_10028088C(&qword_100985A60, &unk_100808040);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F8830;
  AnyHashable.init<A>(_:)();
  v8 = UUID.uuidString.getter();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v8;
  *(inited + 80) = v9;
  AnyHashable.init<A>(_:)();
  *(inited + 168) = &type metadata for UInt32;
  *(inited + 144) = a2;
  AnyHashable.init<A>(_:)();
  v10 = sub_1000116BC(a2, a3);
  *(inited + 240) = &type metadata for String;
  *(inited + 216) = v10;
  *(inited + 224) = v11;
  sub_10027FD18(inited);
  swift_setDeallocating();
  sub_10028088C(&qword_1009832B0, &unk_1007F64D0);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v5 visionUnlockiOSPostFailureNotificationWithMessage:v6 userInfo:isa];
}

uint64_t sub_1005BB0A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  *(v4 + 608) = a4;
  *(v4 + 744) = a3;
  *(v4 + 600) = a2;
  *(v4 + 592) = a1;
  sub_10028088C(&unk_100974E00, &qword_1007F8940);
  *(v4 + 616) = swift_task_alloc();
  *(v4 + 624) = swift_task_alloc();
  v5 = type metadata accessor for URL();
  *(v4 + 632) = v5;
  *(v4 + 640) = *(v5 - 8);
  *(v4 + 648) = swift_task_alloc();
  v6 = type metadata accessor for URLQueryItem();
  *(v4 + 656) = v6;
  *(v4 + 664) = *(v6 - 8);
  *(v4 + 672) = swift_task_alloc();

  return _swift_task_switch(sub_1005BB210, 0, 0);
}

uint64_t sub_1005BB210()
{
  v1 = *(v0 + 608);
  v2 = *(v0 + 744);
  v3 = *(v0 + 600);
  v4 = *(v0 + 592);
  _StringGuts.grow(_:)(105);
  v5._countAndFlagsBits = 0xD000000000000050;
  v5._object = 0x80000001007973D0;
  String.append(_:)(v5);
  v6._countAndFlagsBits = v4;
  v6._object = v3;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0x3A726F7272650A2ELL;
  v7._object = 0xE900000000000020;
  String.append(_:)(v7);
  v8 = SFAuthenticationErrorCodeToString();
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12._countAndFlagsBits = v9;
  v12._object = v11;
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0x3A6E6F736165720ALL;
  v13._object = 0xE900000000000020;
  String.append(_:)(v13);
  v14._countAndFlagsBits = sub_1000116BC(v2, v1);
  String.append(_:)(v14);

  v15._countAndFlagsBits = 10;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  if (v2 == 42)
  {
    v88 = 0x80000001007974C0;

    v19._countAndFlagsBits = 0xD000000000000075;
    v19._object = 0x80000001007974E0;
    String.append(_:)(v19);

    v87 = 0xD000000000000015;
    v89 = v92;
    v17 = 0xE700000000000000;
    v18 = 0x37323138353131;
    goto LABEL_5;
  }

  if (v2 == 9)
  {
    v88 = 0x8000000100797560;

    v16._countAndFlagsBits = 0xD00000000000003ALL;
    v16._object = 0x8000000100797580;
    String.append(_:)(v16);

    v87 = 0xD000000000000017;
    v89 = v92;
    v17 = 0xE600000000000000;
    v18 = 0x383830323839;
LABEL_5:
    v20 = 0xE800000000000000;
    v21 = 0x534F6E6F69736976;
    goto LABEL_7;
  }

  v17 = 0xE600000000000000;
  v18 = 0x313739313437;
  v88 = 0xEB000000006B636FLL;
  v89 = v92;
  v87 = 0x6C6E55206F747541;
  v20 = 0xE300000000000000;
  v21 = 7105633;
LABEL_7:
  v91[85] = 0xE000000000000000;
  v90 = v91[83];
  sub_10028088C(&qword_100984BD8, &qword_10080C508);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_10080C370;
  strcpy(inited + 32, "Classification");
  *(inited + 47) = -18;
  *(inited + 6) = 0x2073756F69726553;
  *(inited + 7) = 0xEB00000000677542;
  *(inited + 8) = 0x6E656E6F706D6F43;
  *(inited + 9) = 0xEB00000000444974;
  *(inited + 10) = v18;
  v23 = v91;
  *(inited + 11) = v17;
  strcpy(inited + 96, "ComponentName");
  *(inited + 55) = -4864;
  *(inited + 14) = v87;
  *(inited + 15) = v88;
  *(inited + 16) = 0xD000000000000010;
  *(inited + 17) = 0x8000000100797430;
  *(inited + 18) = v21;
  *(inited + 19) = v20;
  *(inited + 20) = 0x7364726F7779654BLL;
  *(inited + 21) = 0xE800000000000000;
  *(inited + 22) = 0x36343939323032;
  *(inited + 23) = 0xE700000000000000;
  *(inited + 24) = 0x6375646F72706552;
  *(inited + 25) = 0xEF7974696C696269;
  strcpy(inited + 208, "I Didn't Try");
  *(inited + 221) = 0;
  *(inited + 111) = -5120;
  *(inited + 28) = 0x656C746954;
  *(inited + 29) = 0xE500000000000000;
  _StringGuts.grow(_:)(30);

  v24 = SFAuthenticationErrorCodeToString();
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v28._countAndFlagsBits = v25;
  v28._object = v27;
  String.append(_:)(v28);

  *(inited + 30) = 0xD00000000000001CLL;
  *(inited + 31) = 0x8000000100797450;
  strcpy(inited + 256, "DeviceClasses");
  *(inited + 135) = -4864;
  strcpy(inited + 272, "iPhone, Vision");
  *(inited + 287) = -18;
  *(inited + 36) = 0x7470697263736544;
  *(inited + 37) = 0xEB000000006E6F69;
  *(inited + 38) = v89;
  *(inited + 39) = 0xE000000000000000;

  v29 = sub_1002821C8(inited);
  v91[86] = v29;
  swift_setDeallocating();
  sub_10028088C(&qword_100984BE0, &qword_10080C510);
  swift_arrayDestroy();
  v30 = -1;
  v31 = -1 << *(v29 + 32);
  if (-v31 < 64)
  {
    v30 = ~(-1 << -v31);
  }

  v32 = v30 & *(v29 + 64);
  v33 = (63 - v31) >> 6;

  v34 = 0;
  v35 = _swiftEmptyArrayStorage;
  v91[87] = _swiftEmptyArrayStorage;
  if (v32)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v36 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      goto LABEL_52;
    }

    if (v36 >= v33)
    {
      break;
    }

    v32 = *(v29 + 64 + 8 * v36);
    ++v34;
    if (v32)
    {
      v34 = v36;
      do
      {
LABEL_14:

        URLQueryItem.init(name:value:)();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_10028F368(0, v35[2] + 1, 1, v35);
        }

        v38 = v35[2];
        v37 = v35[3];
        inited = (v38 + 1);
        v23 = v91;
        if (v38 >= v37 >> 1)
        {
          v35 = sub_10028F368((v37 > 1), v38 + 1, 1, v35);
        }

        v32 &= v32 - 1;
        v39 = v91[84];
        v40 = v91[82];
        v35[2] = inited;
        (*(v90 + 32))(v35 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v38, v39, v40);
        v91[87] = v35;
      }

      while (v32);
    }
  }

  v41 = objc_allocWithZone(NSURLComponents);
  v42 = String._bridgeToObjectiveC()();
  inited = [v41 initWithString:v42];
  v23[88] = inited;

  if (!inited)
  {
    v48 = v23[80];
    v49 = v23[79];
    v50 = v23[78];

    (*(v48 + 56))(v50, 1, 1, v49);
    goto LABEL_27;
  }

  v43 = inited;
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v43 setQueryItems:isa];

  v45 = [v43 URL];
  if (v45)
  {
    v46 = v45;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v47 = 0;
  }

  else
  {
    v47 = 1;
  }

  v51 = v23[80];
  v52 = v23[79];
  v53 = v23[78];
  v54 = v23[77];
  (*(v51 + 56))(v54, v47, 1, v52);
  sub_10002C4E4(v54, v53, &unk_100974E00, &qword_1007F8940);
  if ((*(v51 + 48))(v53, 1, v52) == 1)
  {

LABEL_27:

    sub_100005508(v23[78], &unk_100974E00, &qword_1007F8940);
    if (qword_100973AE0 == -1)
    {
LABEL_28:
      v55 = type metadata accessor for Logger();
      sub_10000C4AC(v55, qword_100984940);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&_mh_execute_header, v56, v57, "VisionOS unlock bug report failed to create url", v58, 2u);
      }

      goto LABEL_31;
    }

LABEL_52:
    swift_once();
    goto LABEL_28;
  }

  (*(v23[80] + 32))(v23[81], v23[78], v23[79]);
  v61 = [objc_opt_self() serviceWithDefaultShellEndpoint];
  v23[89] = v61;
  if (v61)
  {
    v62 = v61;
    sub_10028088C(&qword_100985A60, &unk_100808040);
    v63 = swift_initStackObject();
    *(v63 + 16) = xmmword_1007F5670;
    v23[71] = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23[72] = v64;
    AnyHashable.init<A>(_:)();
    *(v63 + 96) = &type metadata for Bool;
    *(v63 + 72) = 1;
    sub_10027FD18(v63);
    swift_setDeallocating();
    sub_100005508(v63 + 32, &qword_1009832B0, &unk_1007F64D0);
    v65 = Dictionary._bridgeToObjectiveC()().super.isa;

    v66 = [objc_opt_self() optionsWithDictionary:v65];
    v23[90] = v66;

    v67 = String._bridgeToObjectiveC()();
    v23[91] = v67;
    v23[2] = v23;
    v23[7] = v23 + 73;
    v23[3] = sub_1005BC030;
    v68 = swift_continuation_init();
    v23[70] = sub_10028088C(&qword_100984BE8, &unk_10080C518);
    v23[67] = v68;
    v23[63] = _NSConcreteStackBlock;
    v23[64] = 1107296256;
    v23[65] = sub_10034B0A4;
    v23[66] = &unk_1008E8B70;
    [v62 openApplication:v67 withOptions:v66 completion:v23 + 63];
    v69 = v23 + 2;

    return _swift_continuation_await(v69);
  }

  v69 = [objc_opt_self() defaultWorkspace];
  if (!v69)
  {
    __break(1u);
    return _swift_continuation_await(v69);
  }

  v70 = v69;

  URL._bridgeToObjectiveC()(v71);
  v73 = v72;
  v74 = [v70 openSensitiveURL:v72 withOptions:0];

  if (!v74)
  {
    if (qword_100973AE0 != -1)
    {
      swift_once();
    }

    v85 = type metadata accessor for Logger();
    sub_10000C4AC(v85, qword_100984940);
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();
    v86 = os_log_type_enabled(v76, v77);
    v79 = v23[88];
    v80 = v23[81];
    v81 = v23[80];
    v82 = v23[79];
    if (v86)
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      v84 = "VisionOS Unlock bug report failed to open. User must unlock";
      goto LABEL_48;
    }

LABEL_49:

    goto LABEL_50;
  }

  if (qword_100973AE0 != -1)
  {
    swift_once();
  }

  v75 = type metadata accessor for Logger();
  sub_10000C4AC(v75, qword_100984940);
  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.default.getter();
  v78 = os_log_type_enabled(v76, v77);
  v79 = v23[88];
  v80 = v23[81];
  v81 = v23[80];
  v82 = v23[79];
  if (!v78)
  {
    goto LABEL_49;
  }

  v83 = swift_slowAlloc();
  *v83 = 0;
  v84 = "VisionOS Unlock bug report opened";
LABEL_48:
  _os_log_impl(&_mh_execute_header, v76, v77, v84, v83, 2u);

LABEL_50:
  (*(v81 + 8))(v80, v82);
LABEL_31:

  v59 = v23[1];

  return v59();
}

uint64_t sub_1005BC030()
{
  v1 = *(*v0 + 48);
  *(*v0 + 736) = v1;
  if (v1)
  {
    v2 = sub_1005BC3FC;
  }

  else
  {
    v2 = sub_1005BC140;
  }

  return _swift_task_switch(v2, 0, 0);
}

id sub_1005BC140()
{
  v1 = *(v0 + 728);
  v2 = *(v0 + 712);

  result = [objc_opt_self() defaultWorkspace];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v4 = result;

  URL._bridgeToObjectiveC()(v5);
  v7 = v6;
  v8 = [v4 openSensitiveURL:v6 withOptions:0];

  if (!v8)
  {
    if (qword_100973AE0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000C4AC(v19, qword_100984940);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    v20 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 704);
    v14 = *(v0 + 648);
    v15 = *(v0 + 640);
    v16 = *(v0 + 632);
    if (v20)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "VisionOS Unlock bug report failed to open. User must unlock";
      goto LABEL_11;
    }

LABEL_12:

    goto LABEL_13;
  }

  if (qword_100973AE0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000C4AC(v9, qword_100984940);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 704);
  v14 = *(v0 + 648);
  v15 = *(v0 + 640);
  v16 = *(v0 + 632);
  if (!v12)
  {
    goto LABEL_12;
  }

  v17 = swift_slowAlloc();
  *v17 = 0;
  v18 = "VisionOS Unlock bug report opened";
LABEL_11:
  _os_log_impl(&_mh_execute_header, v10, v11, v18, v17, 2u);

LABEL_13:
  (*(v15 + 8))(v14, v16);

  v21 = *(v0 + 8);

  return v21();
}

id sub_1005BC3FC(uint64_t a1)
{
  v2 = v1[91];
  v3 = v1[90];
  v4 = v1[89];
  swift_willThrow();

  result = [objc_opt_self() defaultWorkspace];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v6 = result;

  URL._bridgeToObjectiveC()(v7);
  v9 = v8;
  v10 = [v6 openSensitiveURL:v8 withOptions:0];

  if (!v10)
  {
    if (qword_100973AE0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000C4AC(v21, qword_100984940);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    v22 = os_log_type_enabled(v12, v13);
    v15 = v1[88];
    v16 = v1[81];
    v17 = v1[80];
    v18 = v1[79];
    if (v22)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = "VisionOS Unlock bug report failed to open. User must unlock";
      goto LABEL_11;
    }

LABEL_12:

    goto LABEL_13;
  }

  if (qword_100973AE0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000C4AC(v11, qword_100984940);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = os_log_type_enabled(v12, v13);
  v15 = v1[88];
  v16 = v1[81];
  v17 = v1[80];
  v18 = v1[79];
  if (!v14)
  {
    goto LABEL_12;
  }

  v19 = swift_slowAlloc();
  *v19 = 0;
  v20 = "VisionOS Unlock bug report opened";
LABEL_11:
  _os_log_impl(&_mh_execute_header, v12, v13, v20, v19, 2u);

LABEL_13:
  (*(v17 + 8))(v16, v18);

  v23 = v1[1];

  return v23();
}

void sub_1005BC6C4(int a1)
{
  if (a1 > 19)
  {
    goto LABEL_8;
  }

  switch(a1)
  {
    case 4:
LABEL_14:
      v8 = String._bridgeToObjectiveC()();
      v9 = SFLocalizedStringForKey();

      if (!v9)
      {
        __break(1u);
        goto LABEL_30;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v10 = String._bridgeToObjectiveC()();
      v4 = SFLocalizedStringForKey();

      if (v4)
      {
        goto LABEL_28;
      }

      __break(1u);
LABEL_17:
      v11 = String._bridgeToObjectiveC()();
      v12 = SFLocalizedStringForKey();

      if (v12)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v13 = String._bridgeToObjectiveC()();
        v4 = SFLocalizedStringForKey();

        if (!v4)
        {
          __break(1u);
          break;
        }

LABEL_28:
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        return;
      }

LABEL_30:
      __break(1u);
      goto LABEL_31;
    case 5:
      goto LABEL_23;
    case 17:
      v1 = String._bridgeToObjectiveC()();
      v2 = SFLocalizedStringForKey();

      if (!v2)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v3 = String._bridgeToObjectiveC()();
      v4 = SFLocalizedStringForKey();

      if (v4)
      {
        goto LABEL_28;
      }

      __break(1u);
LABEL_8:
      switch(a1)
      {
        case 43:
          goto LABEL_17;
        case 39:
          goto LABEL_26;
        case 20:
          v5 = String._bridgeToObjectiveC()();
          v6 = SFLocalizedStringForKey();

          if (!v6)
          {
LABEL_33:
            __break(1u);
            goto LABEL_34;
          }

          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v7 = String._bridgeToObjectiveC()();
          v4 = SFLocalizedStringForKey();

          if (v4)
          {
            goto LABEL_28;
          }

          __break(1u);
          goto LABEL_14;
      }

      break;
  }

  v14 = String._bridgeToObjectiveC()();
  v15 = SFLocalizedStringForKey();

  if (!v15)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = String._bridgeToObjectiveC()();
  v4 = SFLocalizedStringForKey();

  if (v4)
  {
    goto LABEL_28;
  }

  __break(1u);
LABEL_23:
  v17 = String._bridgeToObjectiveC()();
  v18 = SFLocalizedStringForKey();

  if (!v18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = String._bridgeToObjectiveC()();
  v4 = SFLocalizedStringForKey();

  if (v4)
  {
    goto LABEL_28;
  }

  __break(1u);
LABEL_26:
  v20 = String._bridgeToObjectiveC()();
  v21 = SFLocalizedStringForKey();

  if (!v21)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v22 = String._bridgeToObjectiveC()();
  v4 = SFLocalizedStringForKey();

  if (v4)
  {
    goto LABEL_28;
  }

LABEL_36:
  __break(1u);
}

uint64_t sub_1005BCBC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1005B14A8(a1, v4, v5, v6);
}

uint64_t sub_1005BCC74()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100005C00;

  return sub_1005B1170();
}

uint64_t sub_1005BCD20()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100005C00;

  return sub_1005B0C00();
}

uint64_t sub_1005BCDCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C04;

  return sub_1005B0A90(a1, v4, v5, v6);
}

uint64_t sub_1005BCE80(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1005BCEC8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100005C04;

  return sub_1005B4270(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1005BCFE4(uint64_t a1)
{
  v4 = *(_s7RequestVMa(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1006B6BEC(a1, v6, v1 + v5);
}

uint64_t sub_1005BD0C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1005B48BC(a1, v4, v5, v6);
}

uint64_t sub_1005BD178(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_1005B9304(a1, v4, v5, v7, v6);
}

uint64_t sub_1005BD238(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  sub_10028088C(&qword_100976160, &qword_1007F8770);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[7] = v4;
  v5 = *(v4 - 8);
  v2[8] = v5;
  v2[9] = *(v5 + 64);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v6 = sub_10028088C(&qword_100975E70, &unk_1007F90A0);
  v2[13] = v6;
  v2[14] = *(v6 - 8);
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_1005BD3BC, a2, 0);
}

void sub_1005BD3BC()
{
  if (qword_100973C50 != -1)
  {
    swift_once();
  }

  v1 = qword_1009A10A8;
  v0[16] = qword_1009A10A8;
  if (v1)
  {
    v2 = qword_100973AE0;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    v0[17] = sub_10000C4AC(v4, qword_100984940);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Handle visionUnlock upsell notification tapped", v7, 2u);
    }

    v8 = String._bridgeToObjectiveC()();
    v9 = SFLocalizedStringForKey();

    if (v9)
    {
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
    }

    else
    {
      v12 = 0x80000001007976E0;
      v10 = 0xD000000000000012;
    }

    v0[18] = v12;
    v18 = String._bridgeToObjectiveC()();
    v19 = SFLocalizedStringForKey();

    if (v19)
    {
      v20 = v0[4];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1007F5670;
      *(v21 + 56) = &type metadata for String;
      v22 = sub_100026764();
      *(v21 + 64) = v22;
      *(v21 + 32) = v10;
      *(v21 + 40) = v12;

      v23 = static String.localizedStringWithFormat(_:_:)();
      v25 = v24;

      v0[19] = v25;
      v26 = [v20 name];
      if (v26)
      {
        v27 = v26;
        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;

        v31 = HIBYTE(v30) & 0xF;
        if ((v30 & 0x2000000000000000) == 0)
        {
          v31 = v28 & 0xFFFFFFFFFFFFLL;
        }

        if (v31)
        {
          v32 = String._bridgeToObjectiveC()();
          v33 = SFLocalizedStringForKey();

          if (v33)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            v34 = swift_allocObject();
            *(v34 + 16) = xmmword_1007F5670;
            *(v34 + 56) = &type metadata for String;
            *(v34 + 64) = v22;
            *(v34 + 32) = v28;
            *(v34 + 40) = v30;
            v35 = static String.localizedStringWithFormat(_:_:)();
            v37 = v36;

LABEL_28:
            v0[20] = v37;

            v41 = swift_task_alloc();
            v0[21] = v41;
            *v41 = v0;
            v41[1] = sub_1005BD948;

            sub_1006EE8C0(v23, v25, v35, v37, 0);
            return;
          }

LABEL_33:
          __break(1u);
          return;
        }
      }

      v38 = String._bridgeToObjectiveC()();
      v39 = SFLocalizedStringForKey();

      if (v39)
      {
        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v40;

        goto LABEL_28;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_33;
  }

  if (qword_100973AE0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000C4AC(v13, qword_100984940);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Failed to get shared SDAuthenticationManager for visionUnlock upsell", v16, 2u);
  }

  v17 = v0[1];

  v17();
}

uint64_t sub_1005BD948(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[22] = a1;
  v4[23] = a2;

  if (v2)
  {
    v5 = v4[5];

    swift_bridgeObjectRelease_n();

    v6 = sub_1005BDD70;
    v7 = v5;
  }

  else
  {
    v8 = v4[5];

    v6 = sub_1005BDAE8;
    v7 = v8;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_1005BDAE8()
{
  v1 = [*(v0 + 32) uniqueIDOverride];
  if (v1)
  {
    v3 = v1;
    v30 = *(v0 + 176);
    v31 = *(v0 + 184);
    v28 = *(v0 + 128);
    v5 = *(v0 + 88);
    v4 = *(v0 + 96);
    v7 = *(v0 + 64);
    v6 = *(v0 + 72);
    v8 = *(v0 + 56);

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v10;
    v27 = v9;

    UUID.init()();
    v11 = v4;
    v29 = v4;
    UUID.uuidString.getter();
    *(v0 + 276) = 0;
    v12 = *(v7 + 16);
    *(v0 + 192) = v12;
    *(v0 + 200) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v13 = v5;
    v12(v5, v11, v8);
    v14 = *(v7 + 80);
    *(v0 + 272) = v14;
    v15 = (v14 + 24) & ~v14;
    v16 = (v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
    v18 = swift_allocObject();
    *(v18 + 16) = v28;
    v19 = *(v7 + 32);
    *(v0 + 208) = v19;
    *(v0 + 216) = (v7 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v19(v18 + v15, v13, v8);
    *(v18 + v16) = 12;
    v20 = (v18 + v17);
    *v20 = v27;
    v20[1] = v26;
    v21 = (v18 + ((v17 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v21 = v30;
    v21[1] = v31;
    v22 = v28;
    sub_100294008(v30, v31);
    withProgressTask<A, B>(_:initialProgress:operation:)();

    v23 = *(v7 + 8);
    *(v0 + 224) = v23;
    *(v0 + 232) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v23(v29, v8);
    v24 = swift_task_alloc();
    *(v0 + 240) = v24;
    *v24 = v0;
    v24[1] = sub_1005BDE7C;
    v2 = *(v0 + 104);
    v1 = (v0 + 277);
  }

  else
  {
    __break(1u);
  }

  return SFProgressTask.finalValue.getter(v1, v2);
}

uint64_t sub_1005BDD70(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 128);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Upsell passcode cancelled", v6, 2u);
  }

  v7 = *(v1 + 8);

  return v7();
}

uint64_t sub_1005BDE7C()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_1005BE244;
  }

  else
  {
    v4 = sub_1005BDFA8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1005BDFA8()
{
  v24 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[14];
    v22 = v0[15];
    v4 = v0[13];
    v5 = v0[5];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 136315138;
    v0[3] = v5;
    _s28VisionUnlockiOSUpsellManagerCMa();

    v8 = String.init<A>(describing:)();
    v10 = sub_10000C4E4(v8, v9, &v23);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s: visionUnlock upsell setup successful", v6, 0xCu);
    sub_10000C60C(v7);

    (*(v3 + 8))(v22, v4);
  }

  else
  {
    v12 = v0[14];
    v11 = v0[15];
    v13 = v0[13];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v0[4];
  v15 = [objc_allocWithZone(SFAuthenticationOptions) init];
  v0[32] = v15;
  v16 = v15;
  v17 = [v14 uniqueIDOverride];
  if (v17)
  {
    v18 = v17;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = String._bridgeToObjectiveC()();
  }

  else
  {
    v19 = 0;
  }

  [v16 setIdsDeviceID:v19];

  if (qword_100973AE8 != -1)
  {
    swift_once();
  }

  v20 = qword_1009A0C98;
  v0[33] = qword_1009A0C98;
  UUID.init()();

  return _swift_task_switch(sub_1005BE49C, v20, 0);
}

uint64_t sub_1005BE244()
{
  (*(v0[14] + 8))(v0[15], v0[13]);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to contact visionOS device for upsell enablement. %@", v3, 0xCu);
    sub_100005508(v4, &qword_100975400, &qword_1007F65D0);
  }

  v7 = v0[4];
  v6 = v0[5];

  sub_1005BA0D8(v7, v6);

  v8 = v0[4];
  v9 = [objc_allocWithZone(SFAuthenticationOptions) init];
  v0[32] = v9;
  v10 = v9;
  v11 = [v8 uniqueIDOverride];
  if (v11)
  {
    v12 = v11;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = String._bridgeToObjectiveC()();
  }

  else
  {
    v13 = 0;
  }

  [v10 setIdsDeviceID:v13];

  if (qword_100973AE8 != -1)
  {
    swift_once();
  }

  v14 = qword_1009A0C98;
  v0[33] = qword_1009A0C98;
  UUID.init()();

  return _swift_task_switch(sub_1005BE49C, v14, 0);
}

uint64_t sub_1005BE49C()
{
  v1 = *(*(v0 + 264) + 120);
  if (v1 >= 4)
  {

LABEL_4:
    v3 = *(v0 + 264);
    v23 = *(v0 + 256);
    v24 = *(v0 + 208);
    v4 = *(v0 + 272);
    v5 = *(v0 + 192);
    v6 = *(v0 + 128);
    v7 = *(v0 + 96);
    v8 = *(v0 + 80);
    v22 = *(v0 + 72);
    v9 = *(v0 + 48);
    v10 = *(v0 + 56);
    v25 = v9;
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
    v5(v7, v8, v10);
    v13 = sub_1005BCE80(&qword_100984BD0, v12, _s22VisionUnlockiOSManagerCMa, &unk_10080C460);
    v14 = (v4 + 56) & ~v4;
    v15 = (v14 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v16 = swift_allocObject();
    *(v16 + 2) = v3;
    *(v16 + 3) = v13;
    *(v16 + 4) = v3;
    *(v16 + 5) = v23;
    *(v16 + 6) = 19;
    v24(&v16[v14], v7, v10);
    *&v16[v15] = 0;
    *&v16[(v15 + 15) & 0xFFFFFFFFFFFFFFF8] = v6;
    v17 = v6;
    swift_retain_n();
    v18 = v17;
    v19 = v23;
    sub_1002B3098(0, 0, v25, &unk_100810730, v16);

    goto LABEL_6;
  }

  v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v2)
  {
    goto LABEL_4;
  }

  v18 = *(v0 + 256);
LABEL_6:

  v20 = *(v0 + 40);
  (*(v0 + 224))(*(v0 + 80), *(v0 + 56));

  return _swift_task_switch(sub_1005BE7A0, v20, 0);
}

uint64_t sub_1005BE7A0()
{
  v19 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 256);
    v4 = *(v0 + 176);
    v16 = *(v0 + 184);
    v17 = *(v0 + 128);
    v5 = *(v0 + 40);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    *(v0 + 16) = v5;
    _s28VisionUnlockiOSUpsellManagerCMa();

    v8 = String.init<A>(describing:)();
    v10 = sub_10000C4E4(v8, v9, &v18);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s: unlock on upsell successful", v6, 0xCu);
    sub_10000C60C(v7);

    sub_100026AC0(v4, v16);
  }

  else
  {
    v11 = *(v0 + 256);
    v13 = *(v0 + 176);
    v12 = *(v0 + 184);

    sub_100026AC0(v13, v12);
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1005BE998(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + v6);
  v11 = *(v1 + v7);
  v12 = *(v1 + v7 + 8);
  v13 = *(v1 + v8);
  v14 = *(v1 + v8 + 8);
  v15 = swift_task_alloc();
  *(v2 + 16) = v15;
  *v15 = v2;
  v15[1] = sub_100005C00;

  return sub_1006A3D30(a1, v9, v1 + v5, v10, v11, v12, v13, v14);
}

uint64_t sub_1005BEAFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_1005B9A2C(a1, v4, v5, v6, v7, (v1 + 6));
}

uint64_t sub_1005BEBC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[4] = a2;
  sub_10028088C(&qword_100976160, &qword_1007F8770);
  v4[7] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v4[8] = v7;
  v8 = *(v7 - 8);
  v4[9] = v8;
  v4[10] = *(v8 + 64);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v9 = sub_10028088C(&qword_100975E70, &unk_1007F90A0);
  v4[14] = v9;
  v4[15] = *(v9 - 8);
  v4[16] = swift_task_alloc();
  v10 = *(a3 - 8);
  v4[17] = v10;
  v4[18] = swift_task_alloc();
  (*(v10 + 16))();

  return _swift_task_switch(sub_1005BEDC8, a2, 0);
}

void sub_1005BEDC8()
{
  if (qword_100973C50 != -1)
  {
    swift_once();
  }

  v1 = qword_1009A10A8;
  v0[19] = qword_1009A10A8;
  if (v1)
  {
    v2 = qword_100973AE0;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    v0[20] = sub_10000C4AC(v4, qword_100984940);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Handle visionUnlock upsell notification tapped", v7, 2u);
    }

    v8 = String._bridgeToObjectiveC()();
    v9 = SFLocalizedStringForKey();

    if (v9)
    {
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
    }

    else
    {
      v12 = 0x80000001007976E0;
      v10 = 0xD000000000000012;
    }

    v0[21] = v12;
    v18 = String._bridgeToObjectiveC()();
    v19 = SFLocalizedStringForKey();

    if (v19)
    {
      v21 = v0[5];
      v20 = v0[6];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1007F5670;
      *(v22 + 56) = &type metadata for String;
      v23 = sub_100026764();
      *(v22 + 64) = v23;
      *(v22 + 32) = v10;
      *(v22 + 40) = v12;

      v24 = static String.localizedStringWithFormat(_:_:)();
      v26 = v25;

      v0[22] = v26;
      v27 = (*(v20 + 56))(v21, v20);
      if (v28)
      {
        v29 = v27;
        v30 = v28;
        v31 = HIBYTE(v28) & 0xF;
        if ((v28 & 0x2000000000000000) == 0)
        {
          v31 = v27 & 0xFFFFFFFFFFFFLL;
        }

        if (v31)
        {
          v32 = String._bridgeToObjectiveC()();
          v33 = SFLocalizedStringForKey();

          if (v33)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            v34 = swift_allocObject();
            *(v34 + 16) = xmmword_1007F5670;
            *(v34 + 56) = &type metadata for String;
            *(v34 + 64) = v23;
            *(v34 + 32) = v29;
            *(v34 + 40) = v30;
            v35 = static String.localizedStringWithFormat(_:_:)();
            v37 = v36;

LABEL_28:
            v0[23] = v37;

            v41 = swift_task_alloc();
            v0[24] = v41;
            *v41 = v0;
            v41[1] = sub_1005BF380;

            sub_1006EE8C0(v24, v26, v35, v37, 0);
            return;
          }

LABEL_33:
          __break(1u);
          return;
        }
      }

      v38 = String._bridgeToObjectiveC()();
      v39 = SFLocalizedStringForKey();

      if (v39)
      {
        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v40;

        goto LABEL_28;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_33;
  }

  if (qword_100973AE0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000C4AC(v13, qword_100984940);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Failed to get shared SDAuthenticationManager for visionUnlock upsell", v16, 2u);
  }

  (*(v0[17] + 8))(v0[18], v0[5]);

  v17 = v0[1];

  v17();
}

uint64_t sub_1005BF380(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[25] = a1;
  v4[26] = a2;

  if (v2)
  {
    v5 = v4[4];

    swift_bridgeObjectRelease_n();

    v6 = sub_1005BF8D0;
    v7 = v5;
  }

  else
  {
    v8 = v4[4];

    v6 = sub_1005BF520;
    v7 = v8;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_1005BF520()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v2 + 8);
  *(v0 + 216) = v3;
  *(v0 + 224) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0xCB13000000000000;
  v4 = v3(v1);
  v27 = v5;
  v28 = v4;
  if (v5)
  {
    v25 = *(v0 + 200);
    v26 = *(v0 + 208);
    v7 = *(v0 + 96);
    v6 = *(v0 + 104);
    v24 = *(v0 + 152);
    v9 = *(v0 + 72);
    v8 = *(v0 + 80);
    v10 = *(v0 + 64);

    UUID.init()();
    UUID.uuidString.getter();
    *(v0 + 316) = 0;
    v11 = *(v9 + 16);
    *(v0 + 232) = v11;
    *(v0 + 240) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v11(v7, v6, v10);
    v12 = *(v9 + 80);
    *(v0 + 312) = v12;
    v13 = (v12 + 24) & ~v12;
    v14 = (v8 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
    v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
    v16 = swift_allocObject();
    *(v16 + 16) = v24;
    v17 = *(v9 + 32);
    *(v0 + 248) = v17;
    *(v0 + 256) = (v9 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v17(v16 + v13, v7, v10);
    *(v16 + v14) = 12;
    v18 = (v16 + v15);
    *v18 = v28;
    v18[1] = v27;
    v19 = (v16 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v19 = v25;
    v19[1] = v26;
    v20 = v24;
    sub_100294008(v25, v26);
    withProgressTask<A, B>(_:initialProgress:operation:)();

    v21 = *(v9 + 8);
    *(v0 + 264) = v21;
    *(v0 + 272) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v21(v6, v10);
    v22 = swift_task_alloc();
    *(v0 + 280) = v22;
    *v22 = v0;
    v22[1] = sub_1005BF7A4;
    v5 = *(v0 + 112);
    v4 = v0 + 317;
  }

  else
  {
    __break(1u);
  }

  return SFProgressTask.finalValue.getter(v4, v5);
}

uint64_t sub_1005BF7A4()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_1005BFC98;
  }

  else
  {
    v4 = sub_1005BFA18;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1005BF8D0(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[19];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Upsell passcode cancelled", v6, 2u);
  }

  else
  {

    v2 = v5;
  }

  (*(v1[17] + 8))(v1[18], v1[5]);

  v7 = v1[1];

  return v7();
}

uint64_t sub_1005BFA18()
{
  v25 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[15];
    v23 = v0[16];
    v4 = v0[14];
    v5 = v0[4];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 136315138;
    v0[3] = v5;
    _s28VisionUnlockiOSUpsellManagerCMa();

    v8 = String.init<A>(describing:)();
    v10 = sub_10000C4E4(v8, v9, &v24);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s: visionUnlock upsell setup successful", v6, 0xCu);
    sub_10000C60C(v7);

    (*(v3 + 8))(v23, v4);
  }

  else
  {
    v12 = v0[15];
    v11 = v0[16];
    v13 = v0[14];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v0[27];
  v16 = v0[5];
  v15 = v0[6];
  v17 = [objc_allocWithZone(SFAuthenticationOptions) init];
  v0[37] = v17;
  v18 = v17;
  v14(v16, v15);
  if (v19)
  {
    v20 = String._bridgeToObjectiveC()();
  }

  else
  {
    v20 = 0;
  }

  [v18 setIdsDeviceID:v20];

  if (qword_100973AE8 != -1)
  {
    swift_once();
  }

  v21 = qword_1009A0C98;
  v0[38] = qword_1009A0C98;
  UUID.init()();

  return _swift_task_switch(sub_1005BFEE4, v21, 0);
}

uint64_t sub_1005BFC98()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to contact visionOS device for upsell enablement. %@", v3, 0xCu);
    sub_100005508(v4, &qword_100975400, &qword_1007F65D0);
  }

  v6 = v0[18];
  v8 = v0[5];
  v7 = v0[6];
  v9 = v0[4];

  sub_1005BA4E4(v6, v9, v8, v7);

  v10 = v0[27];
  v12 = v0[5];
  v11 = v0[6];
  v13 = [objc_allocWithZone(SFAuthenticationOptions) init];
  v0[37] = v13;
  v14 = v13;
  v10(v12, v11);
  if (v15)
  {
    v16 = String._bridgeToObjectiveC()();
  }

  else
  {
    v16 = 0;
  }

  [v14 setIdsDeviceID:v16];

  if (qword_100973AE8 != -1)
  {
    swift_once();
  }

  v17 = qword_1009A0C98;
  v0[38] = qword_1009A0C98;
  UUID.init()();

  return _swift_task_switch(sub_1005BFEE4, v17, 0);
}

uint64_t sub_1005BFEE4()
{
  v1 = *(*(v0 + 304) + 120);
  if (v1 >= 4)
  {

LABEL_4:
    v3 = *(v0 + 304);
    v23 = *(v0 + 296);
    v24 = *(v0 + 248);
    v4 = *(v0 + 312);
    v5 = *(v0 + 232);
    v6 = *(v0 + 152);
    v7 = *(v0 + 104);
    v8 = *(v0 + 88);
    v22 = *(v0 + 80);
    v9 = *(v0 + 56);
    v10 = *(v0 + 64);
    v25 = v9;
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
    v5(v7, v8, v10);
    v13 = sub_1005BCE80(&qword_100984BD0, v12, _s22VisionUnlockiOSManagerCMa, &unk_10080C460);
    v14 = (v4 + 56) & ~v4;
    v15 = (v14 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v16 = swift_allocObject();
    *(v16 + 2) = v3;
    *(v16 + 3) = v13;
    *(v16 + 4) = v3;
    *(v16 + 5) = v23;
    *(v16 + 6) = 19;
    v24(&v16[v14], v7, v10);
    *&v16[v15] = 0;
    *&v16[(v15 + 15) & 0xFFFFFFFFFFFFFFF8] = v6;
    v17 = v6;
    swift_retain_n();
    v18 = v17;
    v19 = v23;
    sub_1002B3098(0, 0, v25, &unk_10080C5D0, v16);

    goto LABEL_6;
  }

  v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v2)
  {
    goto LABEL_4;
  }

  v18 = *(v0 + 296);
LABEL_6:

  v20 = *(v0 + 32);
  (*(v0 + 264))(*(v0 + 88), *(v0 + 64));

  return _swift_task_switch(sub_1005C01E8, v20, 0);
}

uint64_t sub_1005C01E8()
{
  v19 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 296);
    v4 = *(v0 + 200);
    v16 = *(v0 + 208);
    v17 = *(v0 + 152);
    v5 = *(v0 + 32);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    *(v0 + 16) = v5;
    _s28VisionUnlockiOSUpsellManagerCMa();

    v8 = String.init<A>(describing:)();
    v10 = sub_10000C4E4(v8, v9, &v18);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s: unlock on upsell successful", v6, 0xCu);
    sub_10000C60C(v7);

    sub_100026AC0(v4, v16);
  }

  else
  {
    v12 = *(v0 + 200);
    v11 = *(v0 + 208);
    v13 = *(v0 + 152);

    sub_100026AC0(v12, v11);
  }

  (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 40));

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1005C0404()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (((((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  sub_100026AC0(*(v0 + v4), *(v0 + v4 + 8));

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_1005C0504()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_1005C0604(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100005C00;

  return sub_1005B164C(a1, v5, v6, v7, v8, v9, v1 + v4, v10);
}

uint64_t sub_1005C0760()
{

  sub_10000C60C((v0 + 24));

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1005C07A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1005B87E8(a1, v4, v5, v6);
}

uint64_t sub_1005C0854(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005C08BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005C0924(uint64_t a1)
{
  v4 = *(type metadata accessor for AuthenticationDevice(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C00;

  return sub_1005B607C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1005C0A1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1005C0AA8()
{
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_currentUpdateToken;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  v4 = OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_sessionStart;
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_finishedBatchCount] = 0;
  *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_totalBatchCount] = 0;
  v6 = OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_log;
  if (qword_100973708 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  v8 = sub_10000C4AC(v7, qword_1009A0960);
  (*(*(v7 - 8) + 16))(&v1[v6], v8, v7);
  v10.receiver = v1;
  v10.super_class = v0;
  return objc_msgSendSuper2(&v10, "init");
}

uint64_t sub_1005C0C2C(uint64_t a1, uint64_t a2)
{
  v3[25] = a2;
  v3[26] = v2;
  v3[24] = a1;
  v4 = type metadata accessor for UUID();
  v3[27] = v4;
  v3[28] = *(v4 - 8);
  v3[29] = swift_task_alloc();
  v3[30] = sub_10028088C(&unk_100987030, &qword_1007F9330);
  v3[31] = swift_task_alloc();
  sub_10028088C(&unk_100976120, &qword_1007F9260);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v3[34] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v3[35] = v5;
  v3[36] = *(v5 - 8);
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();

  return _swift_task_switch(sub_1005C0E10, v2, 0);
}

uint64_t sub_1005C0E10()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[34];
  v4 = v0[26];
  v5 = OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_sessionStart;
  swift_beginAccess();
  sub_10000FF90(v4 + v5, v3, &qword_10097A7F0, &unk_1007FB600);
  v6 = *(v2 + 48);
  if ((v6)(v3, 1, v1) != 1)
  {
    v7 = v0[26];
    (*(v0[36] + 32))(v0[38], v0[34], v0[35]);
    if (*(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_totalBatchCount))
    {
      v48 = v6;
      v8 = v0[33];
      v9 = v0[30];
      v10 = v0[31];
      v11 = v0[27];
      v12 = v0[28];
      v13 = v0[26];
      (*(v12 + 16))(v8, v0[24], v11);
      (*(v12 + 56))(v8, 0, 1, v11);
      v14 = OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_currentUpdateToken;
      swift_beginAccess();
      v15 = *(v9 + 48);
      sub_10000FF90(v8, v10, &unk_100976120, &qword_1007F9260);
      v16 = v13 + v14;
      v17 = v15;
      v18 = v10;
      sub_10000FF90(v16, v10 + v17, &unk_100976120, &qword_1007F9260);
      v19 = *(v12 + 48);
      if (v19(v18, 1, v11) == 1)
      {
        v20 = v0[27];
        sub_100005508(v0[33], &unk_100976120, &qword_1007F9260);
        if (v19(v18 + v17, 1, v20) == 1)
        {
          sub_100005508(v0[31], &unk_100976120, &qword_1007F9260);
          goto LABEL_16;
        }

        goto LABEL_9;
      }

      v21 = v0[27];
      sub_10000FF90(v0[31], v0[32], &unk_100976120, &qword_1007F9260);
      v22 = v19(v18 + v17, 1, v21);
      v23 = v0[32];
      v24 = v0[33];
      if (v22 == 1)
      {
        v25 = v0[27];
        v26 = v0[28];
        sub_100005508(v0[33], &unk_100976120, &qword_1007F9260);
        (*(v26 + 8))(v23, v25);
LABEL_9:
        sub_100005508(v0[31], &unk_100987030, &qword_1007F9330);
        goto LABEL_10;
      }

      v47 = v0[31];
      v30 = v0[28];
      v29 = v0[29];
      v31 = v0[27];
      (*(v30 + 32))(v29, v18 + v17, v31);
      sub_1005C1EC4();
      v32 = dispatch thunk of static Equatable.== infix(_:_:)();
      v33 = *(v30 + 8);
      v33(v29, v31);
      sub_100005508(v24, &unk_100976120, &qword_1007F9260);
      v33(v23, v31);
      sub_100005508(v47, &unk_100976120, &qword_1007F9260);
      if (v32)
      {
LABEL_16:
        v34 = v0[35];
        v35 = v0[25];
        Date.init()();
        v48(v35, 1, v34);
        Date.timeIntervalSince(_:)();
        v37 = v36;
        v38 = v36;
        sub_10028088C(&qword_10097A3D0, &qword_1007FD5E0);
        result = swift_initStackObject();
        *(result + 32) = 0x6E6F697461727564;
        *(result + 16) = xmmword_1007FA7E0;
        *(result + 40) = 0xE800000000000000;
        if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (v37 > -9.22337204e18)
        {
          if (v37 < 9.22337204e18)
          {
            v39 = result;
            v40 = v0[37];
            v49 = v0[38];
            v41 = v0[35];
            v42 = v0[36];
            *(result + 48) = Int._bridgeToObjectiveC()();
            v39[7].super.super.isa = 0x7461426C61746F74;
            v39[8].super.super.isa = 0xEF746E756F436863;
            v39[9].super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
            v39[10].super.super.isa = 0xD000000000000012;
            v39[11].super.super.isa = 0x8000000100797850;
            v39[12].super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
            v39[13].super.super.isa = 0x6F6B636142646964;
            v39[14].super.super.isa = 0xEA00000000006666;
            v39[15].super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
            v43 = sub_100281A6C(v39);
            swift_setDeallocating();
            sub_10028088C(&qword_10097A3D8, &qword_1007FD5E8);
            swift_arrayDestroy();
            v44 = String._bridgeToObjectiveC()();
            sub_1003CE55C(v43);

            sub_100332530();
            isa = Dictionary._bridgeToObjectiveC()().super.isa;

            SFMetricsLog();

            v46 = *(v42 + 8);
            v46(v40, v41);
            v46(v49, v41);
            goto LABEL_12;
          }

LABEL_22:
          __break(1u);
          return result;
        }

        __break(1u);
        goto LABEL_22;
      }
    }

LABEL_10:
    (*(v0[36] + 8))(v0[38], v0[35]);
    goto LABEL_11;
  }

  sub_100005508(v0[34], &qword_10097A7F0, &unk_1007FB600);
LABEL_11:
  sub_1005C18F4();
LABEL_12:

  v27 = v0[1];

  return v27();
}

uint64_t sub_1005C149C(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for UUID();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = sub_10028088C(&unk_100987030, &qword_1007F9330);
  v3[12] = swift_task_alloc();
  sub_10028088C(&unk_100976120, &qword_1007F9260);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_1005C15E0, v2, 0);
}

uint64_t sub_1005C15E0()
{
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[7];
  (*(v5 + 16))(v1, v0[6], v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v7 = OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_currentUpdateToken;
  swift_beginAccess();
  v8 = *(v3 + 48);
  sub_10000FF90(v1, v2, &unk_100976120, &qword_1007F9260);
  sub_10000FF90(v6 + v7, v2 + v8, &unk_100976120, &qword_1007F9260);
  v9 = *(v5 + 48);
  if (v9(v2, 1, v4) != 1)
  {
    v11 = v0[8];
    sub_10000FF90(v0[12], v0[13], &unk_100976120, &qword_1007F9260);
    v12 = v9(v2 + v8, 1, v11);
    v13 = v0[13];
    v14 = v0[14];
    if (v12 != 1)
    {
      v17 = v0[12];
      v19 = v0[9];
      v18 = v0[10];
      v20 = v0[8];
      (*(v19 + 32))(v18, v2 + v8, v20);
      sub_1005C1EC4();
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *(v19 + 8);
      v22(v18, v20);
      sub_100005508(v14, &unk_100976120, &qword_1007F9260);
      v22(v13, v20);
      sub_100005508(v17, &unk_100976120, &qword_1007F9260);
      if ((v21 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    v15 = v0[8];
    v16 = v0[9];
    sub_100005508(v0[14], &unk_100976120, &qword_1007F9260);
    (*(v16 + 8))(v13, v15);
LABEL_6:
    sub_100005508(v0[12], &unk_100987030, &qword_1007F9330);
    goto LABEL_9;
  }

  v10 = v0[8];
  sub_100005508(v0[14], &unk_100976120, &qword_1007F9260);
  if (v9(v2 + v8, 1, v10) != 1)
  {
    goto LABEL_6;
  }

  sub_100005508(v0[12], &unk_100976120, &qword_1007F9260);
LABEL_8:
  *(v0[7] + OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_totalBatchCount) = v0[5];
LABEL_9:

  v23 = v0[1];

  return v23();
}

uint64_t sub_1005C18F4()
{
  v1 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - v2;
  v4 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_currentUpdateToken;
  swift_beginAccess();
  sub_10000C788(v6, v0 + v8, &unk_100976120, &qword_1007F9260);
  swift_endAccess();
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  v10 = OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_sessionStart;
  swift_beginAccess();
  sub_10000C788(v3, v0 + v10, &qword_10097A7F0, &unk_1007FB600);
  result = swift_endAccess();
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_finishedBatchCount) = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_totalBatchCount) = 0;
  return result;
}

uint64_t sub_1005C1C60()
{
  sub_100005508(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_currentUpdateToken, &unk_100976120, &qword_1007F9260);
  sub_100005508(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_sessionStart, &qword_10097A7F0, &unk_1007FB600);
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_log;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for SDAirDropIDMSServiceTelemetry(uint64_t a1)
{
  result = qword_100984C80;
  if (!qword_100984C80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005C1D6C(uint64_t a1)
{
  sub_1004EC778(319, &qword_100975F70, &type metadata accessor for UUID);
  if (v1 <= 0x3F)
  {
    sub_1004EC778(319, &qword_10097DB80, &type metadata accessor for Date);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Logger();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_1005C1EC4()
{
  result = qword_1009761E0;
  if (!qword_1009761E0)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009761E0);
  }

  return result;
}

uint64_t sub_1005C1F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a4;
  v20 = a2;
  v21 = a3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v24 = *(v9 - 8);
  v25 = v9;
  __chkstk_darwin(v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v22 = *(v4 + OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_queue);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v13 + 16))(&v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
  v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  (*(v13 + 32))(v17 + v16, &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  aBlock[4] = v21;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = v23;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_100014494(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v26 + 8))(v8, v6);
  (*(v24 + 8))(v11, v25);
}

uint64_t sub_1005C2394(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v8 = *(v15 - 8);
  __chkstk_darwin(v15);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_queue);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = a1;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = a2;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_100014494(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v16 + 8))(v7, v5);
  (*(v8 + 8))(v10, v15);
}

uint64_t sub_1005C2704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v11 = *(v19 - 8);
  __chkstk_darwin(v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v4 + OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_queue);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = a4;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_100014494(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v20 + 8))(v10, v8);
  (*(v11 + 8))(v13, v19);
}

uint64_t sub_1005C2A08()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v4 = *(v11 - 8);
  __chkstk_darwin(v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005C2704(0, &unk_1008E9030, sub_1005C6F28, &unk_1008E9048);
  v10 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_queue);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1005C7248;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008E9250;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v13 = _swiftEmptyArrayStorage;
  sub_100014494(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);
  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);
}

uint64_t sub_1005C2D44()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100984C90);
  v1 = sub_10000C4AC(v0, qword_100984C90);
  if (qword_1009736D8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1005C2E0C()
{
  result = [objc_allocWithZone(type metadata accessor for SDAirDropBLEController()) init];
  qword_1009A0CA0 = result;
  return result;
}

id sub_1005C2E98()
{
  ObjectType = swift_getObjectType();
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v12 - 8);
  __chkstk_darwin(v12);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  result = [objc_opt_self() sharedMonitor];
  v11 = result;
  if (result)
  {
    v10 = sub_1000276B4(0, &qword_10097A620, OS_dispatch_queue_ptr);
    static DispatchQoS.utility.getter();
    v15 = _swiftEmptyArrayStorage;
    sub_100014494(&qword_100973C60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_10028088C(&unk_10097A630, &unk_1007F5680);
    sub_100011630(&qword_100973C70, &unk_10097A630, &unk_1007F5680, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v12);
    v6 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v7 = ObjectType;
    v8 = objc_allocWithZone(ObjectType);
    *&v8[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_airDropAdvertiser] = 0;
    *&v8[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_nearbyInfoV2Advertiser] = 0;
    *&v8[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_scanner] = 0;
    *&v8[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_aggressiveScannerTimer] = 0;
    *&v8[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_deviceUpdatesHandlers] = &_swiftEmptyDictionarySingleton;
    *&v8[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_deviceStatus] = v11;
    *&v8[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_queue] = v6;
    v14.receiver = v8;
    v14.super_class = v7;
    v9 = objc_msgSendSuper2(&v14, "init");
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1005C3210(uint64_t a1, uint64_t a2)
{
  v3 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v3 - 8);
  v5 = &v44 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = [*(Strong + OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_deviceStatus) myShortHashesForAirDrop];
    if (v8)
    {
      v9 = v8;
      v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
    }

    else
    {
      sub_10028088C(&qword_1009750C0, &qword_1007F90F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1007F5670;
      *(inited + 32) = AirDropID.getter();
      *(inited + 40) = v14;
      v15 = sub_1005581A0(inited, 2, 4);
      v16 = v5;
      v18 = v17;
      v51 = &off_1008D7CB0;
      sub_100294008(v15, v17);
      sub_100403C08(v15, v18);
      sub_10040367C(&off_1008D7CD8);
      v10 = sub_10057EA7C(v51);
      v12 = v19;

      v20 = v18;
      v5 = v16;
      sub_100026AC0(v15, v20);
      swift_setDeallocating();
      swift_arrayDestroy();
    }

    v21 = OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_airDropAdvertiser;
    if (*&v7[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_airDropAdvertiser])
    {
      sub_100026AC0(v10, v12);
    }

    else
    {
      if (qword_100973AF0 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_10000C4AC(v22, qword_100984C90);
      sub_100294008(v10, v12);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      sub_100026AC0(v10, v12);
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v48 = a2;
        v26 = v25;
        v46 = v25;
        v47 = swift_slowAlloc();
        v50 = v47;
        *v26 = 136315138;
        v49 = sub_100467BE4(v10, v12);
        v45 = v24;
        sub_10028088C(&unk_100976C20, &unk_1007F9D80);
        sub_100011630(&qword_10097F070, &unk_100976C20, &unk_1007F9D80, &protocol conformance descriptor for [A]);
        v27 = BidirectionalCollection<>.joined(separator:)();
        v29 = v28;

        v30 = sub_10000C4E4(v27, v29, &v50);

        v31 = v46;
        *(v46 + 4) = v30;
        _os_log_impl(&_mh_execute_header, v23, v45, "Starting advertisement for AirDrop %s", v31, 0xCu);
        sub_10000C60C(v47);

        a2 = v48;
      }

      v32 = *&v7[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_queue];
      v33 = objc_allocWithZone(type metadata accessor for SDBLEAdvertiser());
      sub_100294008(v10, v12);
      v34 = sub_1005948A4(v32, v10, v12, 0x3200000100);
      v35 = *&v7[v21];
      *&v7[v21] = v34;

      v36 = *&v7[v21];
      if (v36)
      {
        v37 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v38 = v36;

        sub_100594A00(sub_1005C6F30, v37);
      }

      v39 = type metadata accessor for TaskPriority();
      (*(*(v39 - 8) + 56))(v5, 1, 1, v39);
      v40 = qword_1009735E0;

      if (v40 != -1)
      {
        swift_once();
      }

      v41 = static AirDropActor.shared;
      v42 = sub_100014494(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
      v43 = swift_allocObject();
      v43[2] = v41;
      v43[3] = v42;
      v43[4] = a2;

      sub_1002B3098(0, 0, v5, &unk_10080C6C0, v43);
      sub_100026AC0(v10, v12);
    }
  }
}

void sub_1005C37A0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_airDropAdvertiser);
    if (v3)
    {
      v4 = v3;

      sub_100596038(22);
      v2 = v4;
    }
  }
}

uint64_t sub_1005C3818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_1005C38B4, v5, 0);
}

uint64_t sub_1005C38B4()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    v3 = getpid();
    goto LABEL_11;
  }

  result = sub_10055FC6C();
  v3 = *(v1 + 24);
  if (v3)
  {
    if (v3 >> 62)
    {
      v4 = result;
      v5 = _CocoaArrayWrapper.endIndex.getter();
      result = v4;
      if (v5)
      {
LABEL_5:
        if ((v3 & 0xC000000000000001) != 0)
        {

          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();

          v3 = *(v8 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_pid);
          swift_unknownObjectRelease();
        }

        else
        {
          if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v3 = *(*(v3 + 32) + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_pid);
        }

        goto LABEL_11;
      }
    }

    else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    v3 = 0;
  }

LABEL_11:
  v6 = String._bridgeToObjectiveC()();

  sub_100086D20(@"BluetoothAdvertise", @"Start", v6, v3);

  v7 = *(v0 + 8);

  return v7();
}

void sub_1005C3A44(uint64_t a1, uint64_t a2)
{
  v3 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_airDropAdvertiser;
    v9 = *&Strong[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_airDropAdvertiser];
    if (v9)
    {
      v10 = v9;
      sub_1005958B0(0, 0, 0.0);

      v11 = *&v7[v8];
      *&v7[v8] = 0;

      v12 = type metadata accessor for TaskPriority();
      (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
      v13 = qword_1009735E0;

      if (v13 != -1)
      {
        swift_once();
      }

      v14 = static AirDropActor.shared;
      v15 = sub_100014494(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
      v16 = swift_allocObject();
      v16[2] = v14;
      v16[3] = v15;
      v16[4] = a2;

      sub_1002B3098(0, 0, v5, &unk_10080C6D8, v16);
    }

    else
    {
    }
  }
}

uint64_t sub_1005C3C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_1005C3CE8, v5, 0);
}

uint64_t sub_1005C3CE8()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    v3 = getpid();
    goto LABEL_11;
  }

  result = sub_10055FC6C();
  v3 = *(v1 + 24);
  if (v3)
  {
    if (v3 >> 62)
    {
      v4 = result;
      v5 = _CocoaArrayWrapper.endIndex.getter();
      result = v4;
      if (v5)
      {
LABEL_5:
        if ((v3 & 0xC000000000000001) != 0)
        {

          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();

          v3 = *(v8 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_pid);
          swift_unknownObjectRelease();
        }

        else
        {
          if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v3 = *(*(v3 + 32) + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_pid);
        }

        goto LABEL_11;
      }
    }

    else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    v3 = 0;
  }

LABEL_11:
  v6 = String._bridgeToObjectiveC()();

  sub_100086D20(@"BluetoothAdvertise", @"Stop", v6, v3);

  v7 = *(v0 + 8);

  return v7();
}

void sub_1005C3E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_scanner;
    if (!*&Strong[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_scanner])
    {
      v16 = swift_allocObject();
      *(v16 + 16) = a3;
      *(v16 + 24) = a4;
      v17 = OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_deviceUpdatesHandlers;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = *&v8[v17];
      *&v8[v17] = 0x8000000000000000;
      sub_10057C0D4(sub_1005C6D14, v16, a2, isUniquelyReferenced_nonNull_native);
      *&v8[v17] = v40;
      swift_endAccess();
      v19 = [objc_allocWithZone(CBDiscovery) init];
      [v19 setDispatchQueue:*&v8[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_queue]];
      [v19 addDiscoveryType:1];
      [v19 setUseCase:131090];
      v20 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v38 = sub_1005C6D44;
      v39 = v20;
      v34 = _NSConcreteStackBlock;
      v35 = 1107296256;
      v36 = sub_100035F94;
      v37 = &unk_1008E8F30;
      v21 = _Block_copy(&v34);
      v22 = v8;

      [v19 setDeviceFoundHandler:v21];
      _Block_release(v21);
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v38 = sub_1005C6D64;
      v39 = v23;
      v34 = _NSConcreteStackBlock;
      v35 = 1107296256;
      v36 = sub_100035F94;
      v37 = &unk_1008E8F58;
      v24 = _Block_copy(&v34);

      [v19 setDeviceLostHandler:v24];
      _Block_release(v24);
      if (qword_100973AF0 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_10000C4AC(v25, qword_100984C90);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "Starting to scan for AirDrop", v28, 2u);
      }

      v29 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v38 = sub_1005C6D84;
      v39 = v29;
      v34 = _NSConcreteStackBlock;
      v35 = 1107296256;
      v36 = sub_1005CC610;
      v37 = &unk_1008E8F80;
      v30 = _Block_copy(&v34);

      [v19 activateWithCompletion:v30];
      _Block_release(v30);
      v31 = *&v8[v9];
      *&v8[v9] = v19;
      v32 = v19;

      v15 = String._bridgeToObjectiveC()();
      v33 = getpid();
      sub_100086D20(@"BluetoothScanning", @"Start", v15, v33);

      goto LABEL_15;
    }
  }

  if (qword_100973AF0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000C4AC(v10, qword_100984C90);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Attempting to start scanning but already scanning", v13, 2u);
  }

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    sub_1005C442C(a2, a3, a4, &unk_1008E8FB8, sub_1005C6E68, &unk_1008E8FD0);
LABEL_15:
  }
}

uint64_t sub_1005C442C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a6;
  v26 = a3;
  v27 = a5;
  v24 = a4;
  v25 = a2;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v30 = *(v11 - 8);
  v31 = v11;
  __chkstk_darwin(v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v28 = *(v6 + OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_queue);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v15 + 16))(&v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v14);
  v18 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  (*(v15 + 32))(v19 + v18, &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
  v20 = (v19 + ((v16 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  v21 = v26;
  *v20 = v25;
  v20[1] = v21;
  aBlock[4] = v27;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = v29;
  v22 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v33 = _swiftEmptyArrayStorage;
  sub_100014494(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v32 + 8))(v10, v8);
  (*(v30 + 8))(v13, v31);
}

void sub_1005C4810(uint64_t a1, char a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_queue);
  *v8 = v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    v11 = OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_deviceUpdatesHandlers;
    swift_beginAccess();
    v12 = *(v2 + v11);
    v13 = 1 << *(v12 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v12 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = a2 & 1;

    v18 = 0;
    while (v15)
    {
      v19 = v18;
LABEL_10:
      v20 = *(*(v12 + 56) + ((v19 << 10) | (16 * __clz(__rbit64(v15)))));
      v15 &= v15 - 1;
      v23 = a1;
      v22 = v17;

      v20(&v23, &v22);
    }

    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v16)
      {

        return;
      }

      v15 = *(v12 + 64 + 8 * v19);
      ++v18;
      if (v15)
      {
        v18 = v19;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1005C4A28(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1005C4810(a1, a3 & 1);
  }
}

void sub_1005C4A98(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100973AF0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000C4AC(v2, qword_100984C90);
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v16[0] = v6;
      *v5 = 136315138;
      swift_errorRetain();
      sub_10028088C(&unk_10097A930, &unk_1007F9050);
      v7 = String.init<A>(describing:)();
      v9 = sub_10000C4E4(v7, v8, v16);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "Failed to start scanning for AirDrop: %s", v5, 0xCu);
      sub_10000C60C(v6);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v11 = *&Strong[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_scanner];
      *&Strong[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_scanner] = 0;
    }
  }

  else
  {
    if (qword_100973AF0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000C4AC(v12, qword_100984C90);
    oslog = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v13, "Started scanning for AirDrop", v14, 2u);
    }
  }
}

void sub_1005C4E9C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_scanner;
    v10 = *&Strong[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_scanner];
    if (v10)
    {
      v11 = qword_100973AF0;
      v12 = v10;
      if (v11 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_10000C4AC(v13, qword_100984C90);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "Stopping to scan for AirDrop", v16, 2u);
      }

      (*(v4 + 16))(v6, a2, v3);
      swift_beginAccess();
      sub_1002B2214(0, 0, v6);
      swift_endAccess();
      [v12 invalidate];
      v17 = *&v8[v9];
      *&v8[v9] = 0;

      v18 = String._bridgeToObjectiveC()();
      v19 = getpid();
      sub_100086D20(@"BluetoothScanning", @"Stop", v18, v19);

      goto LABEL_13;
    }
  }

  if (qword_100973AF0 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_10000C4AC(v20, qword_100984C90);
  v18 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v18, v21, "Attempting to stop scanning but not scanning", v22, 2u);
  }

LABEL_13:
}

void sub_1005C52E0(uint64_t a1, uint64_t a2, void (*a3)(id, uint64_t), uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = swift_allocObject();
    *(v9 + 16) = a3;
    *(v9 + 24) = a4;
    v10 = OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_deviceUpdatesHandlers;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *&v8[v10];
    *&v8[v10] = 0x8000000000000000;
    sub_10057C0D4(sub_1005C728C, v9, a2, isUniquelyReferenced_nonNull_native);
    *&v8[v10] = v21;
    swift_endAccess();
    v12 = *&v8[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_scanner];
    if (v12)
    {
      v13 = [v12 discoveredDevices];
      sub_1000276B4(0, &unk_10097CA20, CBDevice_ptr);
      v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v20 = v8;
      if (v14 >> 62)
      {
        goto LABEL_15;
      }

      for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v16 = 0;
        while (1)
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_14;
            }

            v17 = *(v14 + 8 * v16 + 32);
          }

          v18 = v17;
          v19 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          a3(v17, 1);

          ++v16;
          if (v19 == i)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        ;
      }

LABEL_16:

      v8 = v20;
    }
  }
}

void sub_1005C54F0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    (*(v4 + 16))(v6, a2, v3);
    swift_beginAccess();
    sub_1002B2214(0, 0, v6);
    swift_endAccess();
  }
}

void sub_1005C56F8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = *(Strong + OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_scanner), v3 = Strong, v4 = v2, v3, v2))
  {
    if (qword_100973AF0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000C4AC(v5, qword_100984C90);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Starting aggressive scan for Ask to AirDrop", v8, 2u);
    }

    [v4 setBleScanRate:50];
    [v4 setDiscoveryFlags:0x240000000];
    [v4 setUseCase:131093];
    swift_beginAccess();
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v10 = v9;
      sub_1005C594C();
    }
  }

  else
  {
    if (qword_100973AF0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000C4AC(v11, qword_100984C90);
    v4 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v4, v12, "Attempting to scan aggressively for Ask to AirDrop but not scanning yet", v13, 2u);
    }
  }
}

double sub_1005C594C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTimeInterval();
  v45 = *(v2 - 8);
  v46 = v2;
  v3 = __chkstk_darwin(v2);
  v44 = (&v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v41 = (&v35 - v5);
  v6 = type metadata accessor for DispatchTime();
  v42 = *(v6 - 8);
  v43 = v6;
  v7 = __chkstk_darwin(v6);
  v39 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v40 = &v35 - v9;
  v38 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v38 - 8);
  __chkstk_darwin(v38);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v36 = *(v13 - 8);
  v37 = v13;
  __chkstk_darwin(v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_aggressiveScannerTimer;
  if (*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_aggressiveScannerTimer))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();
  }

  sub_1000276B4(0, &qword_10097DBA0, OS_dispatch_source_ptr);
  static OS_dispatch_source.TimerFlags.strict.getter();
  v21 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
  (*(v17 + 8))(v19, v16);
  *(v1 + v20) = v21;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v35 = v21;
  ObjectType = swift_getObjectType();
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1005C7214;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008E91D8;
  v24 = _Block_copy(aBlock);

  v47 = ObjectType;
  j___s8Dispatch0A3QoSV11unspecifiedACvgZ(ObjectType);
  sub_1005944AC();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v24);
  (*(v10 + 8))(v12, v38);
  (*(v36 + 8))(v15, v37);

  v25 = v39;
  static DispatchTime.now()();
  v26 = v41;
  *v41 = 10;
  v28 = v45;
  v27 = v46;
  (*(v45 + 104))(v26, enum case for DispatchTimeInterval.seconds(_:), v46);
  v29 = v40;
  + infix(_:_:)();
  v30 = *(v28 + 8);
  v30(v26, v27);
  v31 = v43;
  v32 = *(v42 + 8);
  v32(v25, v43);
  sub_1002EAB84(v26);
  v33 = v44;
  sub_1002EABF8(v44);
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
  v30(v33, v27);
  v30(v26, v27);
  v32(v29, v31);
  OS_dispatch_source.activate()();
  swift_unknownObjectRelease();
  return result;
}

void sub_1005C5EFC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v2 = *(Strong + OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_scanner), v3 = Strong, v4 = v2, v3, !v2))
  {
    if (qword_100973AF0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000C4AC(v12, qword_100984C90);
    v4 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v4, v13, "Attempting to stop aggressive scan for Ask to AirDrop but not scanning yet", v14, 2u);
    }

    goto LABEL_15;
  }

  if (qword_100973AF0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000C4AC(v5, qword_100984C90);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Stopping aggressive scan for Ask to AirDrop", v8, 2u);
  }

  [v4 setBleScanRate:0];
  [v4 setUseCase:131090];
  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (!v9)
  {
LABEL_15:

    return;
  }

  v10 = v9;
  v11 = OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_aggressiveScannerTimer;
  if (*(v9 + OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_aggressiveScannerTimer))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();
  }

  *&v10[v11] = 0;
  swift_unknownObjectRelease();
}

void sub_1005C617C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v2 = *&Strong[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_airDropAdvertiser];
  if (!v2 || (v3 = &v2[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_configuration], v4 = *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_configuration + 8], v4 >> 60 == 15))
  {

LABEL_5:
    if (qword_100973AF0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000C4AC(v5, qword_100984C90);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Attempting to start Ask to AirDrop without already advertising", v8, 2u);
    }

    return;
  }

  v9 = Strong;
  v10 = *v3;
  v11 = v3[2];
  v12 = v2;
  sub_1002A9924(v10, v4);
  if (qword_100973AF0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000C4AC(v13, qword_100984C90);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Adding Ask to AirDrop data to advertisement", v16, 2u);
  }

  sub_1002A9924(v10, v4);
  v17 = SFDeviceClassCodeGet();
  v18 = SFDeviceModelCodeGet();
  sub_1005968E8(v10, v4, v11 & 0xFFFFFFFFFFFF0000 | v18 & 0x1Fu | (32 * v17) | 0x1800000);
  sub_100594630(50);
  sub_100594658(131093);
  sub_10028BCC0(v10, v4);

  sub_100026AC0(v10, v4);
}

void sub_1005C641C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v2 = *(Strong + OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_airDropAdvertiser);
  v3 = Strong;
  v4 = v2;

  if (!v2)
  {
    goto LABEL_5;
  }

  v5 = &v4[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_configuration];
  v6 = *&v4[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_configuration + 8];
  if (v6 >> 60 == 15)
  {

LABEL_5:
    if (qword_100973AF0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000C4AC(v7, qword_100984C90);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Attempting to stop Ask to AirDrop without already advertising", v10, 2u);
    }

    return;
  }

  v11 = *v5;
  v12 = v5[2];
  sub_100294008(*v5, *&v4[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_configuration + 8]);
  if (qword_100973AF0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000C4AC(v13, qword_100984C90);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Removing Ask to AirDrop data from advertisement", v16, 2u);
  }

  sub_1002A9924(v11, v6);
  sub_1005968E8(v11, v6, v12 & 0xFFFFFFFFFE7F0000);
  sub_100594630(0);
  sub_100594658(131090);
  sub_10028BCC0(v11, v6);

  sub_100026AC0(v11, v6);
}

void sub_1005C669C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_nearbyInfoV2Advertiser;
    if (*(Strong + OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_nearbyInfoV2Advertiser))
    {
      if (qword_100973AF0 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_10000C4AC(v4, qword_100984C90);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "Attempting to start advertising temp auth tag but already advertising", v7, 2u);
      }
    }

    else
    {
      if (qword_100973AF0 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_10000C4AC(v8, qword_100984C90);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "Starting to advertise temp auth tag", v11, 2u);
      }

      v12 = *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_queue];
      v13 = objc_allocWithZone(type metadata accessor for SDBLEAdvertiser());
      v14 = sub_1005948A4(v12, 0, 0xF000000000000000, 0);
      v15 = *&v2[v3];
      *&v2[v3] = v14;

      v16 = *&v2[v3];
      if (v16 && (v17 = v16, sub_100594658(131094), v17, (v18 = *&v2[v3]) != 0) && (v19 = v18, sub_100594630(30), v19, (v20 = *&v2[v3]) != 0) && (v21 = v20, sub_100594A00(0, 0), v21, (v22 = *&v2[v3]) != 0))
      {
        v23 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v24 = v22;

        sub_1005958B0(sub_1005C7288, v23, 15.0);
      }

      else
      {
      }
    }
  }
}

void sub_1005C697C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *&Strong[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_nearbyInfoV2Advertiser];
    if (v3)
    {
      v4 = qword_100973AF0;
      v5 = v3;
      if (v4 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_10000C4AC(v6, qword_100984C90);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "Stop advertising temp auth tag", v9, 2u);
      }

      v10 = swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_1005958B0(sub_1005C7224, v10, 0.0);
    }

    else
    {
    }
  }
}

void sub_1005C6B10(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *&Strong[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_nearbyInfoV2Advertiser];
    *&Strong[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_nearbyInfoV2Advertiser] = 0;
  }
}

void sub_1005C6B70(uint64_t a1)
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_queue);
    *v4 = v7;
    (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
    v8 = v7;
    LOBYTE(v7) = _dispatchPreconditionTest(_:)();
    (*(v2 + 8))(v4, v1);
    if (v7)
    {
      if (*&v6[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_aggressiveScannerTimer])
      {
        sub_1005C2394(sub_1005C70A8, &unk_1008E9110);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1005C6D8C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_1005C6E80(uint64_t (*a1)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v1 + 16);
  v5 = (v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return a1(v4, v1 + v3, v6, v7);
}

uint64_t sub_1005C6F38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1005C3818(a1, v4, v5, v6);
}

uint64_t sub_1005C6FF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C04;

  return sub_1005C3C4C(a1, v4, v5, v6);
}

uint64_t sub_1005C70B0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1005C718C(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

id sub_1005C72C8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = String._bridgeToObjectiveC()();

  v9 = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:&v9];

  if (v5)
  {
    v6 = v9;
  }

  else
  {
    v7 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v5;
}

uint64_t sub_1005C73B0()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100984D08);
  v1 = sub_10000C4AC(v0, qword_100984D08);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1005C7478(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for SFAirDropReceive.AskRequest();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDrop.TransferType();
  v2[13] = v6;
  v2[14] = *(v6 - 8);
  v2[15] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;

  return _swift_task_switch(sub_1005C7684, v7, 0);
}

uint64_t sub_1005C7684(uint64_t a1)
{
  v52 = v1;
  v3 = v1[14];
  v2 = v1[15];
  v4 = v1[13];
  SFAirDropReceive.AskRequest.type.getter();
  v5 = SFAirDrop.TransferType.isLinks.getter();
  (*(v3 + 8))(v2, v4);
  if (v5)
  {
    v6 = v1[11];
    v7 = SFAirDropReceive.AskRequest.urlItems.getter();
    v8 = v7;
    v9 = 0;
    v10 = v7 + 56;
    v11 = -1;
    v12 = -1 << *(v7 + 32);
    if (-v12 < 64)
    {
      v11 = ~(-1 << -v12);
    }

    v13 = v11 & *(v7 + 56);
    v14 = (63 - v12) >> 6;
    while (v13)
    {
      v15 = v9;
LABEL_11:
      v16 = v1[12];
      v17 = v1[10];
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      (*(v6 + 16))(v16, *(v8 + 48) + *(v6 + 72) * (v18 | (v15 << 6)), v17);
      v19 = sub_1005C8694();
      (*(v6 + 8))(v16, v17);
      if ((v19 & 1) == 0)
      {

        goto LABEL_13;
      }
    }

    while (1)
    {
      v15 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v15 >= v14)
      {

        sub_1000276B4(0, &qword_100978130, LSBundleRecord_ptr);
        v21 = sub_1005C72C8(0xD00000000000001CLL, 0x80000001007883D0, 1);
        v42 = v1[3];
        v43 = *(v42 + 16);
        *(v42 + 16) = v21;

        goto LABEL_18;
      }

      v13 = *(v10 + 8 * v15);
      ++v9;
      if (v13)
      {
        v9 = v15;
        goto LABEL_11;
      }
    }

    __break(1u);
    swift_once();
    v23 = v1[8];
    v22 = v1[9];
    v24 = v1[7];
    v25 = v1[2];
    v26 = type metadata accessor for Logger();
    sub_10000C4AC(v26, qword_100984D08);
    (*(v23 + 16))(v22, v25, v24);
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    v29 = os_log_type_enabled(v27, v28);
    v30 = v1[8];
    v31 = v1[9];
    v32 = v1[7];
    if (v29)
    {
      v34 = v1[5];
      v33 = v1[6];
      v35 = v1[4];
      v49 = v28;
      v36 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v51 = v50;
      *v36 = 136315394;
      v47 = v27;
      SFAirDropReceive.AskRequest.id.getter();
      sub_1002891F4();
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v32;
      v39 = v38;
      (*(v34 + 8))(v33, v35);
      (*(v30 + 8))(v31, v37);
      v40 = sub_10000C4E4(v46, v39, &v51);

      *(v36 + 4) = v40;
      *(v36 + 12) = 2112;
      swift_errorRetain();
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 14) = v41;
      *v48 = v41;
      _os_log_impl(&_mh_execute_header, v47, v49, "Failed to get ShareBear for ask request %s: %@", v36, 0x16u);
      sub_100005508(v48, &qword_100975400, &qword_1007F65D0);

      sub_10000C60C(v50);
    }

    else
    {

      (*(v30 + 8))(v31, v32);
    }

LABEL_18:
    v20 = *(v1[3] + 16) != 0;
  }

  else
  {
LABEL_13:
    v20 = 0;
  }

  v44 = v1[1];

  return v44(v20);
}

uint64_t sub_1005C7B24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v32 - v9;
  v11 = *(a1 + 16);
  v35 = *(v2 + 16);
  v12 = v35;
  v33 = a1;
  v34 = v11;
  if (v11)
  {
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v38 = (*(v13 + 64) + 32) & ~*(v13 + 64);
    v15 = a1 + v38;
    v16 = *(v13 + 56);
    v41 = (v13 + 16);
    v42 = v14;
    v37 = (v13 - 8);
    v17 = _swiftEmptyArrayStorage;
    v39 = v8;
    v40 = v13;
    v14(v10, a1 + v38, v4);
    while (1)
    {
      if (URL.isFileURL.getter())
      {
        (*v37)(v10, v4);
      }

      else
      {
        v18 = *v41;
        (*v41)(v8, v10, v4);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10028FAB4(0, v17[2] + 1, 1);
          v17 = v43;
        }

        v21 = v17[2];
        v20 = v17[3];
        if (v21 >= v20 >> 1)
        {
          sub_10028FAB4((v20 > 1), v21 + 1, 1);
          v17 = v43;
        }

        v17[2] = v21 + 1;
        v22 = v17 + v38 + v21 * v16;
        v8 = v39;
        v18(v22, v39, v4);
      }

      v15 += v16;
      if (!--v11)
      {
        break;
      }

      v42(v10, v15, v4);
    }
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  v23 = v17[2];
  if (v23)
  {
    if (v23 != v34)
    {
      if (qword_1009737B0 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_10000C4AC(v24, qword_10097B528);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "Asked to view mixed files and links, only viewing links", v27, 2u);
      }
    }

    v43 = 0;
    v28 = swift_allocObject();
    v29 = v35;
    *(v28 + 16) = v17;
    *(v28 + 24) = v29;
  }

  else
  {

    v43 = 0;
    v30 = swift_allocObject();
    *(v30 + 16) = v35;
    *(v30 + 24) = 1;
    *(v30 + 32) = v33;
  }

  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

uint64_t sub_1005C7F90@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandlerSharediCloudDocumentsLinks();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_1005C7FC8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100289000;

  return sub_1005C7478(a1);
}

void sub_1005C8088(uint64_t a1, int a2)
{
  v39 = a2;
  v2 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v38 - v6;
  *&v38 = *(SFAirDropReceive.AskRequest.urlItems.getter() + 16);

  v8 = SFAirDropReceive.AskRequest.urlItems.getter();
  sub_1002FB398(v8, v7);

  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v13 = 0;
  if (v11(v7, 1, v9) != 1)
  {
    URL._bridgeToObjectiveC()(v12);
    v13 = v14;
    (*(v10 + 8))(v7, v9);
  }

  countAndFlagsBits = SFSharediCloudDocumentsLinkToAppName();

  if (countAndFlagsBits)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = String.lowercased()();
    countAndFlagsBits = v16._countAndFlagsBits;
    object = v16._object;
  }

  else
  {
    object = 0;
  }

  v18 = SFAirDropReceive.AskRequest.urlItems.getter();
  sub_1002FB398(v18, v5);

  if (v11(v5, 1, v9) == 1)
  {
    v20 = 0;
  }

  else
  {
    URL._bridgeToObjectiveC()(v19);
    v20 = v21;
    (*(v10 + 8))(v5, v9);
  }

  v22 = v38;
  v23 = 0xD00000000000001CLL;
  v24 = SFSharediCloudDocumentsLinkToFileName();

  if (v24)
  {
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    if (v22 == 1 && object && v27)
    {
      v28 = "SHARED_NUMBERS_DOCUMENT_LINK";
      if (countAndFlagsBits == 0x65746F6E79656BLL && object == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v28 = "SHARED_PAGES_DOCUMENT_LINK", countAndFlagsBits == 0x737265626D756ELL) && object == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
LABEL_23:
        sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
        inited = swift_initStackObject();
        v38 = xmmword_1007F5670;
        *(inited + 16) = xmmword_1007F5670;
        *(inited + 32) = v23;
        *(inited + 40) = v28 | 0x8000000000000000;
        *(inited + 48) = 1;

        sub_1003D8D18(inited, v39 & 1);
        swift_setDeallocating();
        sub_100005508(inited + 32, &qword_100981D40, &unk_1007FA6C0);
        v30 = String._bridgeToObjectiveC()();

        v31 = SFLocalizedStringForKey();

        if (v31)
        {

          static String._unconditionallyBridgeFromObjectiveC(_:)();

          sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
          v32 = swift_allocObject();
          *(v32 + 16) = v38;
          *(v32 + 56) = &type metadata for String;
          *(v32 + 64) = sub_100026764();
          *(v32 + 32) = v25;
          *(v32 + 40) = v27;
          static String.localizedStringWithFormat(_:_:)();

LABEL_27:

          return;
        }

        goto LABEL_29;
      }

      v28 = "SHARED_ICLOUD_DOCUMENT_LINK";
      if (countAndFlagsBits == 0x7365676170 && object == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v23 = 0xD00000000000001ALL;
        goto LABEL_23;
      }
    }
  }

  sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
  v33 = swift_initStackObject();
  v38 = xmmword_1007F5670;
  *(v33 + 16) = xmmword_1007F5670;
  *(v33 + 32) = 0xD00000000000001BLL;
  v34 = v33 + 32;
  *(v33 + 40) = 0x8000000100797A30;
  *(v33 + 48) = v22;
  sub_1003D8D18(v33, v39 & 1);
  swift_setDeallocating();
  sub_100005508(v34, &qword_100981D40, &unk_1007FA6C0);
  v35 = String._bridgeToObjectiveC()();

  v36 = SFLocalizedStringForKey();

  if (v36)
  {

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v37 = swift_allocObject();
    *(v37 + 16) = v38;
    *(v37 + 56) = &type metadata for Int;
    *(v37 + 64) = &protocol witness table for Int;
    *(v37 + 32) = v22;
    static String.localizedStringWithFormat(_:_:)();
    goto LABEL_27;
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t sub_1005C8694()
{
  v0 = objc_opt_self();
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  v31[0] = 0;
  v4 = [v0 appLinksWithURL:v2 limit:0x7FFFFFFFFFFFFFFFLL error:v31];

  v5 = v31[0];
  if (v4)
  {
    sub_1000276B4(0, &qword_10097B738, LSAppLink_ptr);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v5;

    if (v6 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v9 = 0;
      v29 = v6 & 0xFFFFFFFFFFFFFF8;
      v30 = v6 & 0xC000000000000001;
      while (1)
      {
        if (v30)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= *(v29 + 16))
          {
            goto LABEL_21;
          }

          v10 = *(v6 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v13 = [v10 targetApplicationRecord];
        v14 = [v13 bundleIdentifier];

        if (v14)
        {
          v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v17 = v16;

          v31[0] = v15;
          v31[1] = v17;
          __chkstk_darwin(v18);
          v28[2] = v31;
          v19 = sub_10039026C(sub_100345B28, v28, &off_1008D6FD8);

          if (v19)
          {

            sub_10032B298(&unk_1008D6FF8);
            return 1;
          }
        }

        else
        {
        }

        ++v9;
        if (v12 == i)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }

LABEL_23:

    sub_10032B298(&unk_1008D6FF8);
  }

  else
  {
    v21 = v31[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100973B00 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000C4AC(v22, qword_100984D08);
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      swift_errorRetain();
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v27;
      *v26 = v27;
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to get app links with error %@", v25, 0xCu);
      sub_100005508(v26, &qword_100975400, &qword_1007F65D0);
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_1005C8A68()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100984E00);
  v1 = sub_10000C4AC(v0, qword_100984E00);
  if (qword_100973770 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A98);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1005C8BF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v2(v3, v5);
}

uint64_t sub_1005C8D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 241) = a5;
  *(v5 + 24) = a4;
  v6 = sub_10028088C(&qword_100984EA0, &qword_10080C7D0);
  *(v5 + 32) = v6;
  *(v5 + 40) = *(v6 - 8);
  *(v5 + 48) = swift_task_alloc();
  *(v5 + 56) = swift_task_alloc();
  sub_10028088C(&qword_100984EA8, &qword_10080C7D8);
  *(v5 + 64) = swift_task_alloc();
  v7 = sub_10028088C(&qword_100984EB0, &qword_10080C7E0);
  *(v5 + 72) = v7;
  *(v5 + 80) = *(v7 - 8);
  *(v5 + 88) = swift_task_alloc();
  v8 = sub_10028088C(&qword_100984EB8, &qword_10080C7E8);
  *(v5 + 96) = v8;
  *(v5 + 104) = *(v8 - 8);
  *(v5 + 112) = swift_task_alloc();
  v9 = type metadata accessor for LSKStatusOptions.Scope();
  *(v5 + 120) = v9;
  *(v5 + 128) = *(v9 - 8);
  *(v5 + 136) = swift_task_alloc();
  v10 = type metadata accessor for LSKStatusOptions();
  *(v5 + 144) = v10;
  *(v5 + 152) = *(v10 - 8);
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = sub_10028088C(&qword_100984EC0, &qword_10080C7F0);
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();

  return _swift_task_switch(sub_1005C8FF4, 0, 0);
}