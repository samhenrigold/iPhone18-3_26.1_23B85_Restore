uint64_t sub_1003DDCC0(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for URL();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_10028088C(&qword_100976160, &qword_1007F8770);
  v1[6] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v3 = static AirDropActor.shared;
  v1[7] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003DDDF4, v3, 0);
}

uint64_t sub_1003DDDF4()
{
  v1 = v0[6];
  v2 = objc_allocWithZone(CPSClipRequest);
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  v6 = [v2 initWithURL:v4];
  v0[8] = v6;

  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  v8 = swift_allocObject();
  v0[9] = v8;
  *(v8 + 16) = v6;
  v9 = swift_allocObject();
  v0[10] = v9;
  *(v9 + 16) = v6;
  v10 = v6;
  v11 = swift_task_alloc();
  v0[11] = v11;
  *v11 = v0;
  v11[1] = sub_1003DDF9C;
  v12 = v0[6];

  return concurrentRace<A>(priority:operation:against:)(v0 + 13, v12, &unk_1007FE9F8, v8, &unk_1007FEA08, v9, &type metadata for Bool);
}

uint64_t sub_1003DDF9C()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 96) = v0;

  sub_100005508(v3, &qword_100976160, &qword_1007F8770);

  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_1003DE1AC;
  }

  else
  {
    v5 = sub_1003DE134;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1003DE134()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1003DE1AC()
{
  v24 = v0;
  if (qword_1009737B0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = type metadata accessor for Logger();
  sub_10000C4AC(v5, qword_10097B528);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 32);
  v9 = *(v0 + 40);
  v11 = *(v0 + 24);
  if (v8)
  {
    v22 = *(v0 + 64);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v23 = v21;
    *v12 = 136315394;
    sub_100010780(&qword_100975160, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_10000C4E4(v14, v16, &v23);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v18;
    *v13 = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "Unable to open AppClip for %s - %@", v12, 0x16u);
    sub_100005508(v13, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v21);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v19 = *(v0 + 8);

  return v19(0);
}

uint64_t sub_1003DE490(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1003D568C(a1, v4);
}

uint64_t sub_1003DE530(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C04;

  return sub_1003D5AC4(a1, v4);
}

uint64_t sub_1003DE614(uint64_t a1, void *a2)
{
  sub_10028088C(&qword_10097B608, &unk_1007FEA48);

  return sub_1003D4478(a1, a2);
}

uint64_t sub_1003DE6A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1003DE6B8()
{
  sub_10028088C(&qword_10097A2B0, &qword_1007FD370);
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_1003D411C(v1, v2);
}

uint64_t sub_1003DE728()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1003DE768(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_100005C00;

  return sub_1003D5F50(a1, a2, v6, v7, v8, v9, v10);
}

id sub_1003DE840(uint64_t a1)
{
  v2 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  __chkstk_darwin(v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  __chkstk_darwin(v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002940CC(a1, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v9 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
    }

    else
    {
      v9 = type metadata accessor for SDAirDropDiscoveredEndpoint;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_10000EDE0(v7, v4, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      v10 = sub_1004E6014();
      sub_1003DEB88(v4, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      return v10;
    }

    v9 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
  }

  sub_1003DEB88(v7, v9);
  return 0;
}

uint64_t sub_1003DEA60(unint64_t a1, unint64_t a2)
{
  v5 = *(type metadata accessor for SDAirDropDiscoveredEndpoint(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_10028088C(&qword_10097B620, &qword_1007FEA90) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v2 + v10);
  v12 = *(v2 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1003D6B6C(a1, a2, v2 + v6, v2 + v9, v11, v12);
}

uint64_t sub_1003DEB88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003DEBE8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003DEC30(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1003DEC98()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097B630);
  v1 = sub_10000C4AC(v0, qword_10097B630);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003DED60(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for SFAirDropReceive.AskRequest();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = sub_10028088C(&qword_10097B720, &qword_1007FEB70);
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDrop.TransferType();
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;
  v2[18] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003DEF7C, v7, 0);
}

uint64_t sub_1003DEF7C(uint64_t a1)
{
  v17 = v1;
  v3 = v1[16];
  v2 = v1[17];
  v4 = v1[15];
  SFAirDropReceive.AskRequest.type.getter();
  v5 = SFAirDrop.TransferType.isLinks.getter();
  (*(v3 + 8))(v2, v4);
  if ((v5 & 1) == 0)
  {
LABEL_5:

    v12 = v1[1];

    return v12(0);
  }

  v6 = SFAirDropReceive.AskRequest.urlItems.getter();
  v7 = v6;
  v8 = *(v6 + 16);
  if (v8)
  {
    v9 = sub_10028F660(*(v6 + 16), 0);
    v10 = *(type metadata accessor for URL() - 8);
    v11 = sub_100291948(&v16, &v9[(*(v10 + 80) + 32) & ~*(v10 + 80)], v8, v7);
    sub_100027D64(v16);
    if (v11 != v8)
    {
      __break(1u);
      goto LABEL_5;
    }
  }

  else
  {

    v9 = _swiftEmptyArrayStorage;
  }

  v1[2] = 0;
  *(swift_allocObject() + 16) = v9;
  sub_10028088C(&qword_10097B728, &qword_1007FEB88);
  SFProgressTask.init(_:initialProgress:operation:file:line:)();
  v14 = swift_task_alloc();
  v1[19] = v14;
  *v14 = v1;
  v14[1] = sub_1003DF214;
  v15 = v1[12];

  return SFProgressTask.finalValue.getter(v1 + 3, v15);
}

uint64_t sub_1003DF214()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  *(*v1 + 160) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 144);
  if (v0)
  {
    v7 = sub_1003DF450;
  }

  else
  {
    v7 = sub_1003DF39C;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1003DF39C()
{
  v1 = v0[5];
  v2 = *(v1 + 16);
  *(v1 + 16) = v0[3];

  v3 = *(v0[5] + 16) != 0;

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_1003DF450()
{
  v29 = v0;
  if (qword_1009737C0 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[4];
  v5 = type metadata accessor for Logger();
  sub_10000C4AC(v5, qword_10097B630);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[10];
  v10 = v0[11];
  v11 = v0[9];
  if (v8)
  {
    v27 = v7;
    v12 = v0[7];
    v13 = v0[8];
    v14 = v0[6];
    v15 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v28 = v26;
    *v15 = 136315394;
    v24 = v6;
    SFAirDropReceive.AskRequest.id.getter();
    sub_1003E1B3C(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v12 + 8))(v13, v14);
    (*(v9 + 8))(v10, v11);
    v19 = sub_10000C4E4(v16, v18, &v28);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2112;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v20;
    *v25 = v20;
    _os_log_impl(&_mh_execute_header, v24, v27, "Failed to get handling app for ask request %s: %@", v15, 0x16u);
    sub_100005508(v25, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v26);
  }

  else
  {

    (*(v9 + 8))(v10, v11);
  }

  v21 = *(v0[5] + 16) != 0;

  v22 = v0[1];

  return v22(v21);
}

void sub_1003DF790(uint64_t a1, char a2)
{
  v4 = *(SFAirDropReceive.AskRequest.urlItems.getter() + 16);

  v5 = *(v2 + 16);
  if (v5)
  {
    v6 = [v5 localizedName];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F5670;
  *(inited + 32) = 0x5F434952454E4547;
  v11 = inited + 32;
  *(inited + 40) = 0xEC0000004B4E494CLL;
  *(inited + 48) = v4;
  sub_1003D8D18(inited, a2 & 1);
  swift_setDeallocating();
  sub_100005508(v11, &qword_100981D40, &unk_1007FA6C0);
  v12 = String._bridgeToObjectiveC()();
  v13 = SFLocalizedStringForKey();

  if (v13)
  {

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1007F8A70;
    *(v14 + 56) = &type metadata for Int;
    *(v14 + 64) = &protocol witness table for Int;
    *(v14 + 32) = v4;
    *(v14 + 96) = &type metadata for String;
    *(v14 + 104) = sub_100026764();
    *(v14 + 72) = v7;
    *(v14 + 80) = v9;
    static String.localizedStringWithFormat(_:_:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1003DF97C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t sub_1003DFDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a3;
  v4[22] = a4;
  v4[19] = a1;
  v4[20] = a2;
  sub_10028088C(&unk_100974E00, &qword_1007F8940);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v4[26] = v5;
  v4[27] = *(v5 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v6 = sub_10028088C(&qword_10097A3B0, &unk_1007FD5B0);
  v4[30] = v6;
  v4[31] = *(v6 - 8);
  v4[32] = swift_task_alloc();
  sub_10028088C(&qword_10097A3B8, &qword_1007FE9C0);
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;
  v4[35] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003DFFCC, v7, 0);
}

uint64_t sub_1003DFFCC(id a1)
{
  v66 = v1;
  v2 = 0;
  v3 = 0;
  v4 = *(v1[22] + 16);
  for (v1[36] = v4; ; v4 = v1[36])
  {
    v1[37] = v2;
    if (v3 == v4)
    {
      v5 = 1;
    }

    else
    {
      if (v3 >= v4)
      {
        goto LABEL_44;
      }

      v4 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_45;
      }

      v7 = v1[32];
      v6 = v1[33];
      v8 = v1[26];
      v9 = v1[27];
      v10 = *(v9 + 16);
      v11 = v1[22] + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v3;
      v12 = *(v1[30] + 48);
      *v7 = v3;
      v10(v7 + v12, v11, v8);
      sub_10002C4E4(v7, v6, &qword_10097A3B0, &unk_1007FD5B0);
      v5 = 0;
    }

    v1[38] = v4;
    v14 = v1[33];
    v13 = v1[34];
    v16 = v1[30];
    v15 = v1[31];
    (*(v15 + 56))(v14, v5, 1, v16);
    sub_10002C4E4(v14, v13, &qword_10097A3B8, &qword_1007FE9C0);
    v17 = (*(v15 + 48))(v13, 1, v16);
    v18 = v1[34];
    if (v17 == 1)
    {
      break;
    }

    v20 = v1[29];
    v19 = v1[30];
    v21 = v1[26];
    v22 = v1[27];
    v1[39] = *v18;
    (*(v22 + 32))(v20, &v18[*(v19 + 48)], v21);
    URL.scheme.getter();
    if (v23)
    {
      v24 = String.lowercased()();

      if (v24._countAndFlagsBits == 1886680168 && v24._object == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v24._countAndFlagsBits == 0x7370747468 && v24._object == 0xE500000000000000)
      {

LABEL_36:
        v58 = objc_opt_self();
        URL._bridgeToObjectiveC()(v59);
        v61 = v60;
        v1[40] = v60;
        v1[2] = v1;
        v1[7] = v1 + 18;
        v1[3] = sub_1003E0680;
        v62 = swift_continuation_init();
        v1[17] = sub_10028088C(&qword_10097B730, &qword_1007FEB90);
        v1[10] = _NSConcreteStackBlock;
        v1[11] = 1107296256;
        v1[12] = sub_1003E1858;
        v1[13] = &unk_1008DEA00;
        v1[14] = v62;
        [v58 getAppLinksWithURL:v61 completionHandler:v1 + 10];
        a1 = v1 + 2;

        return _swift_continuation_await(a1);
      }

      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v25)
      {
        goto LABEL_36;
      }
    }

    v26 = objc_opt_self();
    a1 = [v26 defaultWorkspace];
    if (!a1)
    {
      goto LABEL_47;
    }

    v28 = a1;
    URL._bridgeToObjectiveC()(v27);
    v30 = v29;
    v31 = [v28 URLOverrideForURL:v29];

    if (v31)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v32 = 0;
    }

    else
    {
      v32 = 1;
    }

    v34 = v1[24];
    v33 = v1[25];
    (*(v1[27] + 56))(v34, v32, 1, v1[26]);
    sub_10002C4E4(v34, v33, &unk_100974E00, &qword_1007F8940);
    a1 = [v26 defaultWorkspace];
    if (!a1)
    {
      goto LABEL_48;
    }

    v35 = a1;
    v36 = v1[26];
    v37 = v1[27];
    v38 = v1[23];
    sub_100333278(v1[25], v38);
    if ((*(v37 + 48))(v38, 1, v36) == 1)
    {
      v40 = 0;
    }

    else
    {
      v42 = v1[26];
      v41 = v1[27];
      v43 = v1[23];
      URL._bridgeToObjectiveC()(v39);
      v40 = v44;
      (*(v41 + 8))(v43, v42);
    }

    v45 = [v35 applicationsAvailableForOpeningURL:v40];

    if (!v45)
    {
      goto LABEL_46;
    }

    sub_1000276B4(0, &qword_100975168, LSApplicationProxy_ptr);
    v46 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v46 >> 62)
    {
      a1 = _CocoaArrayWrapper.endIndex.getter();
      if (!a1)
      {
LABEL_31:
        sub_100005508(v1[25], &unk_100974E00, &qword_1007F8940);

        v2 = 0;
        goto LABEL_32;
      }
    }

    else
    {
      a1 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!a1)
      {
        goto LABEL_31;
      }
    }

    if ((v46 & 0xC000000000000001) != 0)
    {
      v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v47 = *(v46 + 32);
    }

    v48 = v47;
    v49 = v1[25];

    v50 = [v48 correspondingApplicationRecord];

    a1 = sub_100005508(v49, &unk_100974E00, &qword_1007F8940);
    v2 = v50;
LABEL_32:
    v51 = v1[39];
    v52 = __OFADD__(v51, 1);
    v53 = v51 + 1;
    if (v52)
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      return _swift_continuation_await(a1);
    }

    v54 = v1[29];
    v56 = v1[26];
    v55 = v1[27];
    v57 = v1[20];
    v65 = v53 / (v1[36] + 1);
    v57(&v65);
    a1 = (*(v55 + 8))(v54, v56);
    v3 = v1[38];
  }

  *v1[19] = v2;

  v63 = v1[1];

  return v63();
}

uint64_t sub_1003E0680()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 328) = v2;
  v3 = *(v1 + 280);
  if (v2)
  {
    v4 = sub_1003E0F10;
  }

  else
  {
    v4 = sub_1003E07A0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003E07A0()
{
  v74 = v0;
  v1 = *(v0 + 144);

  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v72 = v0 + 144;
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_8:
    v7 = *(v0 + 296);

    v6 = 0;
    goto LABEL_9;
  }

  v2 = _CocoaArrayWrapper.endIndex.getter();
  v72 = v0 + 144;
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    goto LABEL_55;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    for (i = *(v1 + 32); ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
    {
      v4 = i;
      v5 = *(v0 + 296);

      v6 = [v4 targetApplicationRecord];

LABEL_9:
      v8 = *(v0 + 312);
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (!v9)
      {
        break;
      }

LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      ;
    }

    while (1)
    {
      v12 = *(v0 + 232);
      v14 = *(v0 + 208);
      v13 = *(v0 + 216);
      v15 = *(v0 + 160);
      v73 = v10 / (*(v0 + 288) + 1);
      v15(&v73);
      (*(v13 + 8))(v12, v14);
      v16 = *(v0 + 304);
      *(v0 + 296) = v6;
      v17 = *(v0 + 288);
      if (v16 == v17)
      {
        v18 = 1;
      }

      else
      {
        if (v16 >= v17)
        {
          goto LABEL_53;
        }

        v19 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_54;
        }

        v21 = *(v0 + 256);
        v20 = *(v0 + 264);
        v22 = *(v0 + 208);
        v23 = *(v0 + 216);
        v24 = *(v23 + 16);
        v25 = *(v0 + 176) + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v16;
        v26 = *(*(v0 + 240) + 48);
        *v21 = v16;
        v24(v21 + v26, v25, v22);
        sub_10002C4E4(v21, v20, &qword_10097A3B0, &unk_1007FD5B0);
        v18 = 0;
        v16 = v19;
      }

      *(v0 + 304) = v16;
      v28 = *(v0 + 264);
      v27 = *(v0 + 272);
      v30 = *(v0 + 240);
      v29 = *(v0 + 248);
      (*(v29 + 56))(v28, v18, 1, v30);
      sub_10002C4E4(v28, v27, &qword_10097A3B8, &qword_1007FE9C0);
      v31 = (*(v29 + 48))(v27, 1, v30);
      v32 = *(v0 + 272);
      if (v31 == 1)
      {
        **(v0 + 152) = v6;

        v70 = *(v0 + 8);

        return v70();
      }

      v34 = *(v0 + 232);
      v33 = *(v0 + 240);
      v35 = *(v0 + 208);
      v36 = *(v0 + 216);
      *(v0 + 312) = *v32;
      (*(v36 + 32))(v34, &v32[*(v33 + 48)], v35);
      URL.scheme.getter();
      if (v37)
      {
        v38 = String.lowercased()();

        if (v38._countAndFlagsBits == 1886680168 && v38._object == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v38._countAndFlagsBits == 0x7370747468 && v38._object == 0xE500000000000000)
        {

LABEL_45:
          v65 = objc_opt_self();
          URL._bridgeToObjectiveC()(v66);
          v68 = v67;
          *(v0 + 320) = v67;
          *(v0 + 16) = v0;
          *(v0 + 56) = v72;
          *(v0 + 24) = sub_1003E0680;
          v69 = swift_continuation_init();
          *(v0 + 136) = sub_10028088C(&qword_10097B730, &qword_1007FEB90);
          *(v0 + 80) = _NSConcreteStackBlock;
          *(v0 + 88) = 1107296256;
          *(v0 + 96) = sub_1003E1858;
          *(v0 + 104) = &unk_1008DEA00;
          *(v0 + 112) = v69;
          [v65 getAppLinksWithURL:v68 completionHandler:v0 + 80];
          v2 = (v0 + 16);

          return _swift_continuation_await(v2);
        }

        v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v39)
        {
          goto LABEL_45;
        }
      }

      v40 = objc_opt_self();
      v2 = [v40 defaultWorkspace];
      if (!v2)
      {
        goto LABEL_57;
      }

      v42 = v2;
      URL._bridgeToObjectiveC()(v41);
      v44 = v43;
      v45 = [v42 URLOverrideForURL:v43];

      if (v45)
      {
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v46 = 0;
      }

      else
      {
        v46 = 1;
      }

      v48 = *(v0 + 192);
      v47 = *(v0 + 200);
      (*(*(v0 + 216) + 56))(v48, v46, 1, *(v0 + 208));
      sub_10002C4E4(v48, v47, &unk_100974E00, &qword_1007F8940);
      v2 = [v40 defaultWorkspace];
      if (!v2)
      {
        goto LABEL_58;
      }

      v49 = v2;
      v50 = *(v0 + 208);
      v51 = *(v0 + 216);
      v52 = *(v0 + 184);
      sub_100333278(*(v0 + 200), v52);
      if ((*(v51 + 48))(v52, 1, v50) == 1)
      {
        v54 = 0;
      }

      else
      {
        v56 = *(v0 + 208);
        v55 = *(v0 + 216);
        v57 = *(v0 + 184);
        URL._bridgeToObjectiveC()(v53);
        v54 = v58;
        (*(v55 + 8))(v57, v56);
      }

      v59 = [v49 applicationsAvailableForOpeningURL:v54];

      if (!v59)
      {
        goto LABEL_59;
      }

      sub_1000276B4(0, &qword_100975168, LSApplicationProxy_ptr);
      v60 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v60 >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_11:
          sub_100005508(*(v0 + 200), &unk_100974E00, &qword_1007F8940);

          v6 = 0;
          goto LABEL_12;
        }
      }

      else if (!*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      if ((v60 & 0xC000000000000001) != 0)
      {
        v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_52;
        }

        v61 = *(v60 + 32);
      }

      v62 = v61;
      v63 = *(v0 + 200);

      v64 = [v62 correspondingApplicationRecord];

      sub_100005508(v63, &unk_100974E00, &qword_1007F8940);
      v6 = v64;
LABEL_12:
      v11 = *(v0 + 312);
      v9 = __OFADD__(v11, 1);
      v10 = v11 + 1;
      if (v9)
      {
        goto LABEL_51;
      }
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
  return _swift_continuation_await(v2);
}

uint64_t sub_1003E0F10(uint64_t a1)
{
  v91 = v1;
  v2 = v1[40];
  swift_willThrow();

  v3 = _convertErrorToNSError(_:)();
  v4 = [v3 code];

  if (v4 != -10814)
  {
    if (qword_1009737C0 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_53;
  }

  while (1)
  {
    v22 = v1[39];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (!v23)
    {
      break;
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    swift_once();
LABEL_4:
    v5 = v1[28];
    v6 = v1[29];
    v7 = v1[26];
    v8 = v1[27];
    v9 = type metadata accessor for Logger();
    sub_10000C4AC(v9, qword_10097B630);
    (*(v8 + 16))(v5, v6, v7);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    v12 = os_log_type_enabled(v10, v11);
    v13 = v1[28];
    v14 = v1[26];
    v15 = (v1[27] + 8);
    if (v12)
    {
      v16 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v90[0] = v89;
      *v16 = 136315394;
      sub_1003E1B3C(&qword_100975160, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      (*v15)(v13, v14);
      v20 = sub_10000C4E4(v17, v19, v90);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2112;
      swift_errorRetain();
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v21;
      *v88 = v21;
      _os_log_impl(&_mh_execute_header, v10, v11, "Failed to generate app link for %s (%@)", v16, 0x16u);
      sub_100005508(v88, &qword_100975400, &qword_1007F65D0);

      sub_10000C60C(v89);
    }

    else
    {

      (*v15)(v13, v14);
    }
  }

  v25 = v1[37];
  while (1)
  {
    v27 = v1[29];
    v29 = v1[26];
    v28 = v1[27];
    v30 = v1[20];
    *v90 = v24 / (v1[36] + 1);
    v30(v90);
    (*(v28 + 8))(v27, v29);
    v31 = v1[38];
    v1[37] = v25;
    v32 = v1[36];
    if (v31 == v32)
    {
      v33 = 1;
    }

    else
    {
      if (v31 >= v32)
      {
        goto LABEL_51;
      }

      v34 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        goto LABEL_52;
      }

      v36 = v1[32];
      v35 = v1[33];
      v37 = v1[26];
      v38 = v1[27];
      v39 = *(v38 + 16);
      v40 = v1[22] + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v31;
      v41 = *(v1[30] + 48);
      *v36 = v31;
      v39(v36 + v41, v40, v37);
      sub_10002C4E4(v36, v35, &qword_10097A3B0, &unk_1007FD5B0);
      v33 = 0;
      v31 = v34;
    }

    v1[38] = v31;
    v43 = v1[33];
    v42 = v1[34];
    v45 = v1[30];
    v44 = v1[31];
    (*(v44 + 56))(v43, v33, 1, v45);
    sub_10002C4E4(v43, v42, &qword_10097A3B8, &qword_1007FE9C0);
    v46 = (*(v44 + 48))(v42, 1, v45);
    v47 = v1[34];
    if (v46 == 1)
    {
      break;
    }

    v49 = v1[29];
    v48 = v1[30];
    v50 = v1[26];
    v51 = v1[27];
    v1[39] = *v47;
    (*(v51 + 32))(v49, &v47[*(v48 + 48)], v50);
    URL.scheme.getter();
    if (v52)
    {
      v53 = String.lowercased()();

      if (v53._countAndFlagsBits == 1886680168 && v53._object == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v53._countAndFlagsBits == 0x7370747468 && v53._object == 0xE500000000000000)
      {

LABEL_43:
        v81 = objc_opt_self();
        URL._bridgeToObjectiveC()(v82);
        v84 = v83;
        v1[40] = v83;
        v1[2] = v1;
        v1[7] = v1 + 18;
        v1[3] = sub_1003E0680;
        v85 = swift_continuation_init();
        v1[17] = sub_10028088C(&qword_10097B730, &qword_1007FEB90);
        v1[10] = _NSConcreteStackBlock;
        v1[11] = 1107296256;
        v1[12] = sub_1003E1858;
        v1[13] = &unk_1008DEA00;
        v1[14] = v85;
        [v81 getAppLinksWithURL:v84 completionHandler:v1 + 10];
        v56 = v1 + 2;

        return _swift_continuation_await(v56);
      }

      v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v54)
      {
        goto LABEL_43;
      }
    }

    v55 = objc_opt_self();
    v56 = [v55 defaultWorkspace];
    if (!v56)
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      return _swift_continuation_await(v56);
    }

    v58 = v56;
    URL._bridgeToObjectiveC()(v57);
    v60 = v59;
    v61 = [v58 URLOverrideForURL:v59];

    if (v61)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v62 = 0;
    }

    else
    {
      v62 = 1;
    }

    v64 = v1[24];
    v63 = v1[25];
    (*(v1[27] + 56))(v64, v62, 1, v1[26]);
    sub_10002C4E4(v64, v63, &unk_100974E00, &qword_1007F8940);
    v56 = [v55 defaultWorkspace];
    if (!v56)
    {
      goto LABEL_55;
    }

    v65 = v56;
    v66 = v1[26];
    v67 = v1[27];
    v68 = v1[23];
    sub_100333278(v1[25], v68);
    if ((*(v67 + 48))(v68, 1, v66) == 1)
    {
      v70 = 0;
    }

    else
    {
      v72 = v1[26];
      v71 = v1[27];
      v73 = v1[23];
      URL._bridgeToObjectiveC()(v69);
      v70 = v74;
      (*(v71 + 8))(v73, v72);
    }

    v75 = [v65 applicationsAvailableForOpeningURL:v70];

    if (!v75)
    {
      goto LABEL_56;
    }

    sub_1000276B4(0, &qword_100975168, LSApplicationProxy_ptr);
    v76 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v76 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_9:
        sub_100005508(v1[25], &unk_100974E00, &qword_1007F8940);

        v25 = 0;
        goto LABEL_10;
      }
    }

    else if (!*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

    if ((v76 & 0xC000000000000001) != 0)
    {
      v77 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_50;
      }

      v77 = *(v76 + 32);
    }

    v78 = v77;
    v79 = v1[25];

    v80 = [v78 correspondingApplicationRecord];

    sub_100005508(v79, &unk_100974E00, &qword_1007F8940);
    v25 = v80;
LABEL_10:
    v26 = v1[39];
    v23 = __OFADD__(v26, 1);
    v24 = v26 + 1;
    if (v23)
    {
      goto LABEL_49;
    }
  }

  *v1[19] = v25;

  v86 = v1[1];

  return v86();
}

uint64_t sub_1003E1858(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_10002CDC0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_1000276B4(0, &qword_10097B738, LSAppLink_ptr);
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_1003E196C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandlerGenericLinks();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_1003E19A4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100289000;

  return sub_1003DED60(a1);
}

uint64_t sub_1003E1A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100005C00;

  return sub_1003DFDC4(a1, a2, a3, v8);
}

uint64_t sub_1003E1B3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003E1B84()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097B740);
  v1 = sub_10000C4AC(v0, qword_10097B740);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1003E1C4C()
{
  v0 = objc_allocWithZone(_s10LTKManagerCMa());
  sub_1003E1C88(0, 0);
  qword_1009A0B08 = v1;
}

void sub_1003E1C88(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v64 - v11;
  v13 = __chkstk_darwin(v10);
  v72 = &v64 - v14;
  v15 = __chkstk_darwin(v13);
  v71 = &v64 - v16;
  v17 = __chkstk_darwin(v15);
  v70 = &v64 - v18;
  __chkstk_darwin(v17);
  v69 = &v64 - v19;
  v20 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKManager_lockStateMonitor;
  type metadata accessor for SFLockStateMonitor();
  swift_allocObject();
  *&v2[v20] = SFLockStateMonitor.init()();
  v21 = v2;
  v22 = IDSCopyLocalDeviceUniqueID();
  if (v22)
  {
    v23 = v22;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;
  }

  else
  {
    v26 = 0x800000010078EC00;
    v24 = 0xD000000000000014;
  }

  v27 = &v21[OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKManager_localDeviceID];
  *v27 = v24;
  v27[1] = v26;
  if (a2)
  {
    v73 = a1;
    v74 = a2;
    swift_bridgeObjectRetain_n();
    v28._countAndFlagsBits = 0x6B746C6C2DLL;
    v28._object = 0xE500000000000000;
    String.append(_:)(v28);
    v29 = v74;
    v30 = &v21[OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKManager_localLTKBasename];
    *v30 = v73;
    v30[1] = v29;
    v73 = a1;
    v74 = a2;
    v31._countAndFlagsBits = 0x6C6E556F7475412DLL;
    v31._object = 0xEB000000006B636FLL;
    String.append(_:)(v31);
  }

  else
  {
    v32 = &v21[OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKManager_localLTKBasename];
    *v32 = 1802792044;
    *(v32 + 1) = 0xE400000000000000;
  }

  v68 = v21;
  v33 = sub_1001F149C();
  if (v33)
  {
    v34 = v33;

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    URL.init(fileURLWithPath:)();

    v35 = v70;
    URL.appendingPathComponent(_:isDirectory:)();

    v36 = v71;
    URL.appendingPathComponent(_:isDirectory:)();
    v37 = v72;
    URL.appendingPathComponent(_:isDirectory:)();
    URL.appendingPathComponent(_:isDirectory:)();
    sub_1003E2D44(v35);
    sub_1003E2D44(v36);
    sub_1003E2D44(v37);
    sub_1003E2D44(v12);
    sub_10028088C(&qword_10097B7A0, &qword_1007FEBD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007F8830;
    *(inited + 32) = 0;
    v66 = v6;
    v39 = *(v6 + 16);
    v39(v9, v36, v5);
    _s13LTKCollectionCMa(0);
    swift_allocObject();
    *(inited + 40) = sub_1004F4CA4(0, v9);
    *(inited + 48) = 1;
    v39(v9, v37, v5);
    swift_allocObject();
    *(inited + 56) = sub_1004F4CA4(1, v9);
    *(inited + 64) = 2;
    v65 = v12;
    v67 = v5;
    v39(v9, v12, v5);
    swift_allocObject();
    *(inited + 72) = sub_1004F4CA4(2, v9);
    v40 = sub_100280758(inited);
    swift_setDeallocating();
    sub_10028088C(&qword_10097B7A8, &qword_1007FEBD8);
    swift_arrayDestroy();
    v41 = 1 << *(v40 + 32);
    v42 = -1;
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    v43 = v42 & v40[8];
    v44 = (v41 + 63) >> 6;

    v45 = 0;
    while (v43)
    {
      v46 = v45;
LABEL_16:
      v47 = __clz(__rbit64(v43));
      v43 &= v43 - 1;
      v48 = *(v40[7] + ((v46 << 9) | (8 * v47)));
      v49 = swift_allocObject();
      *(v49 + 16) = v40;
      v50 = (v48 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_cacheDirectoryBlock);
      v51 = *(v48 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_cacheDirectoryBlock);
      v52 = *(v48 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_cacheDirectoryBlock + 8);
      *v50 = sub_1003E31FC;
      v50[1] = v49;

      sub_100015D04(v51, v52);
      v53 = swift_allocObject();
      *(v53 + 16) = v40;
      v54 = (v48 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_protectionClassBlock);
      v55 = *(v48 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_protectionClassBlock);
      v56 = *(v48 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_protectionClassBlock + 8);
      *v54 = sub_1003E3204;
      v54[1] = v53;

      sub_100015D04(v55, v56);
    }

    while (1)
    {
      v46 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        break;
      }

      if (v46 >= v44)
      {

        v57 = v68;
        *&v68[OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKManager_localLTKByKeyClass] = v40;
        v58 = _s10LTKManagerCMa();
        v75.receiver = v57;
        v75.super_class = v58;
        v59 = objc_msgSendSuper2(&v75, "init");
        sub_1003E320C(&qword_10097B7B0, v60, _s10LTKManagerCMa, &unk_1007FEBA4);
        v61 = v59;

        dispatch thunk of SFLockStateMonitor.delegate.setter();

        v62 = v67;
        v63 = *(v66 + 8);
        v63(v65, v67);
        v63(v72, v62);
        v63(v71, v62);
        v63(v70, v62);
        v63(v69, v62);
        return;
      }

      v43 = v40[v46 + 8];
      ++v45;
      if (v43)
      {
        v45 = v46;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1003E23B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a2;
  v27 = a5;
  v8 = type metadata accessor for UTType();
  v25 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URL.DirectoryHint();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for URL();
  __chkstk_darwin(v15);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a4 + 16) && (v26 = v16, sub_10000DA98(a3), v16 = v26, (v19 & 1) != 0))
  {
    v28 = a1;
    v29 = v24;
    (*(v12 + 104))(v14, enum case for URL.DirectoryHint.notDirectory(_:), v11);
    sub_10001229C();

    URL.appending<A>(path:directoryHint:)();
    (*(v12 + 8))(v14, v11);
    static UTType.propertyList.getter();
    v20 = v27;
    URL.appendingPathExtension(for:)();

    (*(v25 + 8))(v10, v8);
    (*(v26 + 8))(v18, v15);
    return (*(v26 + 56))(v20, 0, 1, v15);
  }

  else
  {
    v22 = *(v16 + 56);
    v23 = v27;

    return v22(v23, 1, 1, v15);
  }
}

uint64_t sub_1003E26E4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_10000DA98(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  if (!*(*(*(a2 + 56) + 8 * v3) + 16))
  {
    return 0x20000000;
  }

  if (*(*(*(a2 + 56) + 8 * v3) + 16) == 1)
  {
    return 0x40000000;
  }

  return 0x10000000;
}

void sub_1003E2768()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedMonitor];
  if (v2)
  {
    v3 = v2;
    if ([v2 deviceKeyBagUnlocked])
    {
      v4 = *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKManager_localLTKByKeyClass);
      if (!*(v4 + 16))
      {
        goto LABEL_23;
      }

      v5 = sub_10000DA98(0);
      if (v6)
      {
        v7 = *(*(*(v4 + 56) + 8 * v5) + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_ltkLock);
        __chkstk_darwin(v5);

        os_unfair_lock_lock(v7 + 4);
        sub_1003E32FC(&v24);
        os_unfair_lock_unlock(v7 + 4);
        if (v24 == 1)
        {
          sub_100014D7C();
        }
      }

      if (!*(v4 + 16))
      {
        goto LABEL_23;
      }

      v8 = sub_10000DA98(1);
      if ((v9 & 1) == 0)
      {
        goto LABEL_23;
      }

      v10 = *(*(*(v4 + 56) + 8 * v8) + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_ltkLock);
      __chkstk_darwin(v8);

      os_unfair_lock_lock(v10 + 4);
      sub_1003E32FC(&v25);
      os_unfair_lock_unlock(v10 + 4);
      v11 = v25;
    }

    else
    {
      if (![v3 deviceWasUnlockedOnce] || (v16 = *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKManager_localLTKByKeyClass), !*(v16 + 16)) || (v17 = sub_10000DA98(1), (v18 & 1) == 0))
      {
LABEL_23:

        goto LABEL_24;
      }

      v19 = *(*(*(v16 + 56) + 8 * v17) + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_ltkLock);
      __chkstk_darwin(v17);

      os_unfair_lock_lock(v19 + 4);
      sub_1003E32FC(v26);
      os_unfair_lock_unlock(v19 + 4);
      v11 = v26[0];
    }

    if (v11 == 1)
    {
      sub_100014D7C();
    }

    goto LABEL_23;
  }

  if (qword_1009737C8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000C4AC(v12, qword_10097B740);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Failed to get SDStatusMonitor to check lock state, only class D local LTKs will be loaded", v15, 2u);
  }

LABEL_24:
  v20 = *(v1 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKManager_localLTKByKeyClass);
  if (*(v20 + 16))
  {
    v21 = sub_10000DA98(2);
    if (v22)
    {
      v23 = *(*(*(v20 + 56) + 8 * v21) + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_ltkLock);
      __chkstk_darwin(v21);

      os_unfair_lock_lock(v23 + 4);
      sub_1003E32FC(&v27);
      os_unfair_lock_unlock(v23 + 4);
      if (v27 == 1)
      {
        sub_100014D7C();
      }
    }
  }
}

id sub_1003E2B78(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = _s10LTKManagerCMa();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void *sub_1003E2D00@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, _BYTE *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

void sub_1003E2D44(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = [objc_opt_self() defaultManager];
  URL.path(percentEncoded:)(1);
  v6 = String._bridgeToObjectiveC()();

  v7 = [v32 directoryExistsAtPath:v6];

  if (v7)
  {
    v8 = v32;
  }

  else
  {
    if (qword_1009737C8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    v10 = sub_10000C4AC(v9, qword_10097B740);
    (*(v3 + 16))(v5, a1, v2);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v31[1] = v10;
      v15 = v14;
      v33 = v14;
      *v13 = 136315138;
      sub_1003E320C(&qword_100975160, 255, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v3 + 8))(v5, v2);
      v19 = sub_10000C4E4(v16, v18, &v33);

      *(v13 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v11, v12, "Create LTK directory: %s", v13, 0xCu);
      sub_10000C60C(v15);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }

    URL._bridgeToObjectiveC()(v20);
    v22 = v21;
    v33 = 0;
    v23 = [v32 createDirectoryAtURL:v21 withIntermediateDirectories:1 attributes:0 error:&v33];

    if (v23)
    {
      v24 = v33;
    }

    else
    {
      v25 = v33;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_errorRetain();
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v28 = 138412290;
        swift_errorRetain();
        v30 = _swift_stdlib_bridgeErrorToNSError();
        *(v28 + 4) = v30;
        *v29 = v30;
        _os_log_impl(&_mh_execute_header, v26, v27, "Create LTK directory failed: %@", v28, 0xCu);
        sub_10028924C(v29);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1003E320C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void *sub_1003E3254@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

unint64_t sub_1003E3298()
{
  result = qword_10097B7C0;
  if (!qword_10097B7C0)
  {
    sub_100280938(&qword_10097B7B8, &qword_1007FEBE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097B7C0);
  }

  return result;
}

uint64_t sub_1003E3364(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);
}

uint64_t sub_1003E33FC(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  swift_beginAccess();
  v5 = *(a1 + 16);
  v6 = *(v5 + 16);
  if (v6)
  {

    v7 = _swiftEmptyArrayStorage;
    v8 = 32;
    do
    {
      v9 = *(v5 + v8);
      if (v9 != 2)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_10028E848(0, *(v7 + 2) + 1, 1, v7);
        }

        v11 = *(v7 + 2);
        v10 = *(v7 + 3);
        if (v11 >= v10 >> 1)
        {
          v7 = sub_10028E848((v10 > 1), v11 + 1, 1, v7);
        }

        *(v7 + 2) = v11 + 1;
        v7[v11 + 32] = v9 & 1;
      }

      ++v8;
      --v6;
    }

    while (v6);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  a3(v7);
}

uint64_t sub_1003E3530()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097B7C8);
  v1 = sub_10000C4AC(v0, qword_10097B7C8);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003E35F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a5;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;
  v5[4] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003E3698, v6, 0);
}

uint64_t sub_1003E3698()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = sub_1003E5C78(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *(v4 + 16) = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1003E37D0;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 7, v1, v3, 0x496C6C6174736E69, 0xEF293A5F28734150, sub_1003E5B04, v4, &type metadata for Bool);
}

uint64_t sub_1003E37D0()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_1003E38FC, v1, 0);
}

uint64_t sub_1003E3920(uint64_t a1, uint64_t a2)
{
  v101 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v80 = *(v3 - 8);
  __chkstk_darwin(v3);
  v78 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for DispatchQoS();
  v77 = *(v79 - 8);
  __chkstk_darwin(v79);
  v76 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for URL();
  v6 = *(v97 - 8);
  v7 = __chkstk_darwin(v97);
  v88 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v8;
  __chkstk_darwin(v7);
  v87 = &v72 - v9;
  v10 = sub_10028088C(&qword_10097A3B0, &unk_1007FD5B0);
  v99 = *(v10 - 8);
  __chkstk_darwin(v10);
  v81 = (&v72 - v11);
  v12 = sub_10028088C(&qword_10097A3B8, &qword_1007FE9C0);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v72 - v16;
  v18 = sub_10028088C(&qword_10097A2B0, &qword_1007FD370);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v72 - v20;
  v82 = a2;
  v22 = *(a2 + 16);
  if (!v22)
  {
    if (qword_1009737D8 == -1)
    {
LABEL_11:
      v68 = type metadata accessor for Logger();
      sub_10000C4AC(v68, qword_10097B7C8);
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&_mh_execute_header, v69, v70, "No completedURLs to install", v71, 2u);
      }

      LOBYTE(aBlock) = 0;
      return CheckedContinuation.resume(returning:)();
    }

LABEL_16:
    swift_once();
    goto LABEL_11;
  }

  v95 = v17;
  v75 = v3;
  sub_1002DDC10();
  v74 = static OS_dispatch_queue.main.getter();
  (*(v19 + 16))(v21, v101, v18);
  v23 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v24 = swift_allocObject();
  v25 = *(v19 + 32);
  v73 = v24;
  v25(v24 + v23, v21, v18);
  v94 = dispatch_group_create();
  sub_10028088C(&qword_1009806F0, &unk_1007FD5C0);
  v93 = swift_allocObject();
  *(v93 + 16) = 0;
  sub_10028088C(&qword_10097A3C0, &qword_1007FD5D0);
  v26 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v26 + 16) = v22;
  memset((v26 + 32), 2, v22);
  v27 = 0;
  v92 = swift_allocObject();
  *(v92 + 16) = v26;
  v96 = v6 + 16;
  v90 = (v99 + 56);
  v89 = (v99 + 48);
  v101 = v6 + 32;
  v85 = v100 + 7;
  v84 = &v105;
  v83 = v6 + 8;
  v91 = v22;
  v86 = v10;
  v28 = v22 == 0;
LABEL_3:
  if (v28)
  {
    __break(1u);
    goto LABEL_15;
  }

  v29 = v95;
  if (__OFADD__(v27, 1))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v30 = v82 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v27;
  v31 = *(v10 + 48);
  v32 = v81;
  *v81 = v27;
  (*(v6 + 16))(v32 + v31, v30, v97);
  sub_10002C4E4(v32, v15, &qword_10097A3B0, &unk_1007FD5B0);
  v33 = 0;
  v34 = v27 + 1;
  while (1)
  {
    (*v90)(v15, v33, 1, v10);
    sub_10002C4E4(v15, v29, &qword_10097A3B8, &qword_1007FE9C0);
    if ((*v89)(v29, 1, v10) == 1)
    {
      break;
    }

    v35 = *v29;
    v36 = *(v10 + 48);
    v98 = *(v6 + 32);
    v100 = v34;
    v37 = v87;
    v38 = v97;
    v98(v87, v29 + v36, v97);
    v39 = v94;
    dispatch_group_enter(v94);
    v40 = swift_allocObject();
    v41 = v92;
    v40[2] = v93;
    v40[3] = v41;
    v40[4] = v35;
    v40[5] = v39;
    v42 = swift_allocObject();
    *(v42 + 16) = sub_100358C08;
    *(v42 + 24) = v40;
    v99 = objc_opt_self();

    v43 = v39;
    URL._bridgeToObjectiveC()(v44);
    v46 = v45;
    v47 = v15;
    v48 = v88;
    (*(v6 + 16))(v88, v37, v38);
    v49 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v50 = v6;
    v51 = (v85 + v49) & 0xFFFFFFFFFFFFFFF8;
    v52 = swift_allocObject();
    v53 = v48;
    v15 = v47;
    v98((v52 + v49), v53, v38);
    v54 = (v52 + v51);
    v6 = v50;
    *v54 = sub_1003E5B88;
    v54[1] = v42;
    v107 = sub_1003E5BC0;
    v108 = v52;
    aBlock = _NSConcreteStackBlock;
    v104 = 1107296256;
    v105 = sub_1003E3364;
    v106 = &unk_1008DEC30;
    v55 = _Block_copy(&aBlock);

    [v99 installApplication:v46 options:0 completion:v55];
    _Block_release(v55);

    v56 = v37;
    v27 = v100;
    v57 = v38;
    v10 = v86;
    (*(v50 + 8))(v56, v57);
    v28 = v27 >= v91;
    if (v27 != v91)
    {
      goto LABEL_3;
    }

    v33 = 1;
    v34 = v91;
    v29 = v95;
  }

  v58 = swift_allocObject();
  v59 = v91;
  v58[2] = v92;
  v58[3] = v59;
  v60 = v73;
  v58[4] = sub_1003E5B0C;
  v58[5] = v60;
  v107 = sub_100358BFC;
  v108 = v58;
  aBlock = _NSConcreteStackBlock;
  v104 = 1107296256;
  v105 = sub_100011678;
  v106 = &unk_1008DEB90;
  v61 = _Block_copy(&aBlock);

  v62 = v76;
  static DispatchQoS.unspecified.getter();
  v102 = _swiftEmptyArrayStorage;
  sub_1003E5C78(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100013EB8();
  v63 = v78;
  v64 = v75;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v65 = v74;
  v66 = v94;
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v61);

  (*(v80 + 8))(v63, v64);
  (*(v77 + 8))(v62, v79);
}

uint64_t sub_1003E4418(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v51 = a6;
  v52 = a5;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v51 - v16;
  __chkstk_darwin(v15);
  v19 = &v51 - v18;
  if (a3)
  {
    swift_errorRetain();
    if (qword_1009737D8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000C4AC(v20, qword_10097B7C8);
    (*(v11 + 16))(v19, a4, v10);
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v53 = a3;
      v54 = v24;
      *v23 = 136315394;
      swift_errorRetain();
      sub_10028088C(&unk_10097A930, &unk_1007F9050);
      v25 = String.init<A>(describing:)();
      v27 = sub_10000C4E4(v25, v26, &v54);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      v28 = URL.description.getter();
      v30 = v29;
      (*(v11 + 8))(v19, v10);
      v31 = sub_10000C4E4(v28, v30, &v54);

      *(v23 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v21, v22, "IPA Handler: Failed to install app with error (%s for URL %s", v23, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v11 + 8))(v19, v10);
    }

LABEL_13:
    v40 = 0;
    return v52(v40);
  }

  if (!a2)
  {
    if (qword_1009737D8 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_10000C4AC(v42, qword_10097B7C8);
    (*(v11 + 16))(v17, a4, v10);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v54 = v46;
      *v45 = 136315138;
      sub_1003E5C78(&qword_100975160, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      (*(v11 + 8))(v17, v10);
      v50 = sub_10000C4E4(v47, v49, &v54);

      *(v45 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v43, v44, "IPA Handler: No error or success bundle ID for installing: %s", v45, 0xCu);
      sub_10000C60C(v46);
    }

    else
    {

      (*(v11 + 8))(v17, v10);
    }

    goto LABEL_13;
  }

  if (qword_1009737D8 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_10000C4AC(v32, qword_10097B7C8);
  (*(v11 + 16))(v14, a4, v10);

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *v35 = 136315394;
    *(v35 + 4) = sub_10000C4E4(a1, a2, &v54);
    *(v35 + 12) = 2080;
    v36 = URL.description.getter();
    v38 = v37;
    (*(v11 + 8))(v14, v10);
    v39 = sub_10000C4E4(v36, v38, &v54);

    *(v35 + 14) = v39;
    _os_log_impl(&_mh_execute_header, v33, v34, "IPA Handler: Successful app install '%s' for URL %s", v35, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  v40 = 1;
  return v52(v40);
}

uint64_t sub_1003E4A94(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 32);
  do
  {
    if (!v1)
    {
      break;
    }

    v3 = *v2++;
    --v1;
  }

  while ((v3 & 1) != 0);
  sub_10028088C(&qword_10097A2B0, &qword_1007FD370);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1003E4B28@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandlerIPA();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_1003E4B5C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100289000;

  return sub_1003E51F4(a1);
}

uint64_t sub_1003E4C08(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;

  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

void sub_1003E4CE8(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  os_unfair_lock_lock(a2 + 4);
  sub_1003E5CE0();
  os_unfair_lock_unlock(a2 + 4);
  dispatch_group_leave(a5);
}

uint64_t sub_1003E4D70(uint64_t *a1, unint64_t a2, char *a3)
{
  v5 = *a3;
  swift_beginAccess();
  v6 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v6;
  if (result)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_1002D64D0(v6);
  v6 = result;
  *a1 = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v6 + 16) > a2)
  {
    *(v6 + a2 + 32) = v5;
    return swift_endAccess();
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1003E4E18(uint64_t a1, char a2)
{
  v3 = type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  v10 = *(SFAirDropReceive.AskRequest.files.getter() + 16);

  if (v10 == 1)
  {
    v11 = SFAirDropReceive.AskRequest.files.getter();
    if (*(v11 + 16))
    {
      (*(v4 + 16))(v7, v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3);

      (*(v4 + 32))(v9, v7, v3);
      sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
      inited = swift_initStackObject();
      v25 = xmmword_1007F5670;
      *(inited + 16) = xmmword_1007F5670;
      *(inited + 32) = 0x485449575F415049;
      v13 = inited + 32;
      *(inited + 40) = 0xEE00454C5449545FLL;
      *(inited + 48) = 1;
      sub_1003D8D18(inited, a2 & 1);
      swift_setDeallocating();
      sub_1003470A0(v13);
      v14 = String._bridgeToObjectiveC()();
      v15 = SFLocalizedStringForKey();

      if (v15)
      {

        static String._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
        v16 = swift_allocObject();
        *(v16 + 16) = v25;
        v17 = SFAirDropReceive.AskRequest.ItemInfo.fileName.getter();
        v19 = v18;
        *(v16 + 56) = &type metadata for String;
        *(v16 + 64) = sub_100026764();
        *(v16 + 32) = v17;
        *(v16 + 40) = v19;
        static String.localizedStringWithFormat(_:_:)();

        (*(v4 + 8))(v9, v3);
        return;
      }

      goto LABEL_9;
    }
  }

  sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
  v20 = swift_initStackObject();
  v25 = xmmword_1007F5670;
  *(v20 + 16) = xmmword_1007F5670;
  *(v20 + 32) = 4280393;
  v21 = v20 + 32;
  *(v20 + 40) = 0xE300000000000000;
  *(v20 + 48) = v10;
  sub_1003D8D18(v20, a2 & 1);
  swift_setDeallocating();
  sub_1003470A0(v21);
  v22 = String._bridgeToObjectiveC()();
  v23 = SFLocalizedStringForKey();

  if (v23)
  {

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v24 = swift_allocObject();
    *(v24 + 16) = v25;
    *(v24 + 56) = &type metadata for Int;
    *(v24 + 64) = &protocol witness table for Int;
    *(v24 + 32) = v10;
    static String.localizedStringWithFormat(_:_:)();

    return;
  }

  __break(1u);
LABEL_9:
  __break(1u);
}

uint64_t sub_1003E51F4(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v3 = static AirDropActor.shared;
  v1[6] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003E52F0, v3, 0);
}

uint64_t sub_1003E52F0()
{
  *(v0 + 56) = objc_opt_self();
  type metadata accessor for MainActor();
  *(v0 + 64) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003E5394, v2, v1);
}

uint64_t sub_1003E5394()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 48);

  *(v0 + 72) = [v1 isRunningInStoreDemoMode];

  return _swift_task_switch(sub_1003E5414, v2, 0);
}

id sub_1003E5414()
{
  if ((*(v0 + 72) & 1) == 0)
  {
    result = [objc_opt_self() sharedConnection];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v9 = result;
    v10 = [result isAirDropAppInstallationAllowed];

    if (v10)
    {
      v11 = *(SFAirDropReceive.AskRequest.files.getter() + 16);

      if (v11 && (v12 = *(SFAirDropReceive.AskRequest.urlItems.getter() + 16), , !v12))
      {
        v15 = SFAirDropReceive.AskRequest.files.getter();
        v16 = v15;
        v17 = *(v15 + 16);
        if (!v17)
        {
LABEL_25:

          if (SFAirDropReceive.AskRequest.senderIsMe.getter())
          {
            if (qword_1009737D8 != -1)
            {
              swift_once();
            }

            v25 = type metadata accessor for Logger();
            sub_10000C4AC(v25, qword_10097B7C8);
            v2 = Logger.logObject.getter();
            v3 = static os_log_type_t.default.getter();
            if (!os_log_type_enabled(v2, v3))
            {
              v6 = 1;
              goto LABEL_39;
            }

            v4 = 2;
            v5 = swift_slowAlloc();
            *v5 = 0;
            v6 = 1;
            v7 = "IPA Handler: Transfer is me, can handle.";
          }

          else
          {
            v26 = [objc_opt_self() defaultManager];
            v27 = String._bridgeToObjectiveC()();
            v6 = [v26 fileExistsAtPath:v27];

            if (qword_1009737D8 != -1)
            {
              swift_once();
            }

            v28 = type metadata accessor for Logger();
            sub_10000C4AC(v28, qword_10097B7C8);
            v2 = Logger.logObject.getter();
            v3 = static os_log_type_t.default.getter();
            if (!os_log_type_enabled(v2, v3))
            {
              goto LABEL_39;
            }

            v4 = 8;
            v5 = swift_slowAlloc();
            *v5 = 67109120;
            *(v5 + 4) = v6;
            v7 = "IPA Handler: Developer settings bundle exists? %{BOOL}d";
          }

          goto LABEL_17;
        }

        v18 = 0;
        v19 = *(v0 + 32);
        v31 = v15 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
        while (1)
        {
          if (v18 >= *(v16 + 16))
          {
            __break(1u);
            goto LABEL_44;
          }

          (*(v19 + 16))(*(v0 + 40), v31 + *(v19 + 72) * v18, *(v0 + 24));
          SFAirDropReceive.AskRequest.ItemInfo.fileName.getter();
          v20 = String._bridgeToObjectiveC()();

          v21 = [v20 pathExtension];

          if (!v21)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v21 = String._bridgeToObjectiveC()();
          }

          v22 = *(v0 + 40);
          v23 = *(v0 + 24);
          v24 = SFIsIPA();

          (*(v19 + 8))(v22, v23);
          if ((v24 & 1) == 0)
          {
            break;
          }

          if (v17 == ++v18)
          {
            goto LABEL_25;
          }
        }

        if (qword_1009737D8 != -1)
        {
          swift_once();
        }

        v29 = type metadata accessor for Logger();
        sub_10000C4AC(v29, qword_10097B7C8);
        v2 = Logger.logObject.getter();
        v3 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v2, v3))
        {
          v4 = 2;
          v5 = swift_slowAlloc();
          v6 = 0;
          *v5 = 0;
          v7 = "IPA Handler: File is not IPA, ignoring...";
          goto LABEL_17;
        }
      }

      else
      {
        if (qword_1009737D8 != -1)
        {
          swift_once();
        }

        v13 = type metadata accessor for Logger();
        sub_10000C4AC(v13, qword_10097B7C8);
        v2 = Logger.logObject.getter();
        v3 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v2, v3))
        {
          v4 = 2;
          v5 = swift_slowAlloc();
          v6 = 0;
          *v5 = 0;
          v7 = "IPA Handler: isJustFiles is false";
          goto LABEL_17;
        }
      }
    }

    else
    {
      if (qword_1009737D8 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_10000C4AC(v14, qword_10097B7C8);
      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = 2;
        v5 = swift_slowAlloc();
        v6 = 0;
        *v5 = 0;
        v7 = "IPA Handler: AirDrop app installation not allowed";
        goto LABEL_17;
      }
    }

LABEL_38:
    v6 = 0;
    goto LABEL_39;
  }

  if (qword_1009737D8 != -1)
  {
LABEL_44:
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_10097B7C8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v2, v3))
  {
    goto LABEL_38;
  }

  v4 = 2;
  v5 = swift_slowAlloc();
  v6 = 0;
  *v5 = 0;
  v7 = "IPA Handler: Device running in store demo mode";
LABEL_17:
  _os_log_impl(&_mh_execute_header, v2, v3, v7, v5, v4);

LABEL_39:

  v30 = *(v0 + 8);

  return v30(v6);
}

uint64_t sub_1003E5A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100005C04;

  return sub_1003E35F8(a1, a2, a3, v9, v8);
}

uint64_t sub_1003E5B0C(uint64_t a1)
{
  sub_10028088C(&qword_10097A2B0, &qword_1007FD370);

  return sub_1003E4A94(a1);
}

uint64_t sub_1003E5B88(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1003E5BC0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for URL() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  return sub_1003E4418(a1, a2, a3, v3 + v8, v10, v11);
}

uint64_t sub_1003E5C78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003E5D28()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097B8A0);
  v1 = sub_10000C4AC(v0, qword_10097B8A0);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003E5DF0(uint64_t a1)
{
  v2 = type metadata accessor for SFAirDrop.TransferType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10028088C(&qword_1009763E0, &qword_1007F95D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002FB3B4(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1002F94BC(v8);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    sub_10029418C(v8, v12);
    SFAirDropSend.Request.type.getter();
    v13 = sub_1003E67D8(v5);
    (*(v3 + 8))(v5, v2);
    sub_1003DEB88(v12, type metadata accessor for SDAirDropDiscoveredEndpoint);
    return v13;
  }

  return result;
}

uint64_t sub_1003E6060(uint64_t a1)
{
  v2 = sub_10028088C(&qword_1009763E0, &qword_1007F95D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v16 - v11;
  if (*(v10 + 16) != 1)
  {
    return 2;
  }

  sub_1002FB3B4(v10, v4);
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    sub_10029418C(v4, v12);
    sub_10029418C(v12, v9);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v14 = qword_1007FEC98[EnumCaseMultiPayload];
    sub_1003DEB88(v9, off_1008DEC58[EnumCaseMultiPayload]);
    return v14;
  }

  sub_1002F94BC(v4);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1003E6260(uint64_t a1)
{
  v2 = type metadata accessor for SFAirDrop.DeviceRelationship();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10028088C(&qword_1009763E0, &qword_1007F95D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002FB3B4(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1002F94BC(v8);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    sub_10029418C(v8, v12);
    sub_10032C154(v5);
    v13 = SFAirDrop.DeviceRelationship.rawValue.getter();
    (*(v3 + 8))(v5, v2);
    sub_1003DEB88(v12, type metadata accessor for SDAirDropDiscoveredEndpoint);
    return v13;
  }

  return result;
}

uint64_t sub_1003E64C0()
{
  v1 = v0;
  v2 = type metadata accessor for SFAirDropSend.Failure();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v19 - v7;
  v9 = type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, v1, v9);
  v13 = (*(v10 + 88))(v12, v9);
  if (v13 == enum case for SFAirDropSend.Transfer.Metrics.TransferResult.failure(_:))
  {
    (*(v10 + 96))(v12, v9);
    (*(v3 + 32))(v8, v12, v2);
    v14 = *(v3 + 104);
    v14(v6, enum case for SFAirDropSend.Failure.cancelled(_:), v2);
    v15 = static SFAirDropSend.Failure.== infix(_:_:)();
    v16 = *(v3 + 8);
    v16(v6, v2);
    if (v15)
    {
      v16(v8, v2);
      return 2;
    }

    else
    {
      v14(v6, enum case for SFAirDropSend.Failure.receiverDeclined(_:), v2);
      v18 = static SFAirDropSend.Failure.== infix(_:_:)();
      v16(v6, v2);
      v16(v8, v2);
      if (v18)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }
  }

  else if (v13 == enum case for SFAirDropSend.Transfer.Metrics.TransferResult.success(_:))
  {
    return 0;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1003E67D8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SFAirDrop.TransferType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  __chkstk_darwin(v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002940CC(v2, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = type metadata accessor for SDAirDropDiscoveredEndpoint;
  if (EnumCaseMultiPayload == 2)
  {
    (*(v5 + 16))(v7, a1, v4);
    v13 = (*(v5 + 88))(v7, v4);
    if (v13 == enum case for SFAirDrop.TransferType.exchange(_:))
    {
      v14 = 0x706F7264656D616ELL;
LABEL_8:
      (*(v5 + 8))(v7, v4);
      v12 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
      goto LABEL_9;
    }

    v12 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
    if (v13 != enum case for SFAirDrop.TransferType.peerPayment(_:))
    {
      v14 = 0x2D706F7264726961;
      goto LABEL_8;
    }

    v14 = 0x6D79615072656570;
  }

  else
  {
    v14 = 0x706F7264726961;
  }

LABEL_9:
  sub_1003DEB88(v10, v12);
  return v14;
}

void sub_1003E6A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v27 = a2;
  v25 = a1;
  v28 = type metadata accessor for SFAirDrop.TransferType();
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SFAirDrop.DeviceRelationship();
  v23 = *(v5 - 8);
  v24 = v5;
  __chkstk_darwin(v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SFAirDropSend.Failure();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10028088C(&qword_10097B1C8, &unk_1007FE4F0);
  inited = swift_initStackObject();
  strcpy((inited + 32), "failureSubType");
  *(inited + 16) = xmmword_1007F8830;
  *(inited + 47) = -18;
  (*(v9 + 16))(v11, v22, v8);
  if ((*(v9 + 88))(v11, v8) == enum case for SFAirDropSend.Transfer.Metrics.TransferResult.failure(_:))
  {
    (*(v9 + 96))(v11, v8);
    (*(v13 + 32))(v15, v11, v12);
    SFAirDropSend.Failure.errorDescription.getter();
    (*(v13 + 8))(v15, v12);
  }

  else
  {
    (*(v9 + 8))(v11, v8);
  }

  v17 = String._bridgeToObjectiveC()();

  *(inited + 48) = v17;
  *(inited + 56) = 0xD000000000000010;
  *(inited + 64) = 0x800000010078E320;
  sub_10032C154(v7);
  SFAirDrop.DeviceRelationship.rawValue.getter();
  (*(v23 + 8))(v7, v24);
  *(inited + 72) = Int._bridgeToObjectiveC()();
  *(inited + 80) = 1701869940;
  *(inited + 88) = 0xE400000000000000;
  SFAirDropSend.Request.type.getter();
  sub_1003E67D8(v4);
  (*(v26 + 8))(v4, v28);
  v18 = String._bridgeToObjectiveC()();

  *(inited + 96) = v18;
  sub_1002812CC(inited);
  swift_setDeallocating();
  sub_10028088C(&qword_10097B1D0, &qword_1007FEC90);
  swift_arrayDestroy();
  v19 = String._bridgeToObjectiveC()();
  sub_100332530();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  SFMetricsLog();
}

void sub_1003E6F1C(uint64_t a1, uint64_t a2, int a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16))
  {
    sub_10028088C(&qword_10097B1C8, &unk_1007FE4F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007F8220;
    *(inited + 32) = 0x726566736E617274;
    v23 = (inited + 32);
    *(inited + 40) = 0xEA00000000004449;
    v22[1] = a3;
    SFAirDropSend.Request.id.getter();
    SFAirDrop.TransferIdentifier.id.getter();
    (*(v10 + 8))(v12, v9);
    UUID.uuidString.getter();
    (*(v6 + 8))(v8, v5);
    v14 = String._bridgeToObjectiveC()();

    *(inited + 48) = v14;
    *(inited + 56) = 1701869940;
    *(inited + 64) = 0xE400000000000000;
    sub_1003E5DF0(a2);
    v15 = String._bridgeToObjectiveC()();

    *(inited + 72) = v15;
    *(inited + 80) = 0x6C6F636F746F7270;
    *(inited + 88) = 0xE800000000000000;
    sub_1003E6060(a2);
    *(inited + 96) = Int._bridgeToObjectiveC()();
    *(inited + 104) = 0xD000000000000010;
    *(inited + 112) = 0x800000010078E320;
    sub_1003E6260(a2);
    *(inited + 120) = Int._bridgeToObjectiveC()();
    *(inited + 128) = 0xD000000000000015;
    *(inited + 136) = 0x800000010078EE50;
    *(inited + 144) = Bool._bridgeToObjectiveC()();
    sub_1002812CC(inited);
    swift_setDeallocating();
    sub_10028088C(&qword_10097B1D0, &qword_1007FEC90);
    swift_arrayDestroy();
    v16 = String._bridgeToObjectiveC()();
    sub_100332530();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    SFMetricsLog();
  }

  else
  {
    if (qword_1009737E0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000C4AC(v18, qword_10097B8A0);
    v23 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v23, v19, "No send endpoints for logging send start", v20, 2u);
    }

    v21 = v23;
  }
}

uint64_t sub_1003E7360(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for URL();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for SFAirDrop.TransferType();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_1003E74B4, v5, 0);
}

void sub_1003E74B4(uint64_t a1)
{
  v3 = v1[8];
  v2 = v1[9];
  v4 = v1[7];
  SFAirDropReceive.AskRequest.type.getter();
  v5 = SFAirDrop.TransferType.isLinks.getter();
  (*(v3 + 8))(v2, v4);
  if (v5)
  {
    v6 = v1[5];
    v7 = v1[3];
    v8 = SFAirDropReceive.AskRequest.urlItems.getter();
    v9 = 0;
    v10 = v8 + 56;
    v11 = -1;
    v12 = -1 << *(v8 + 32);
    if (-v12 < 64)
    {
      v11 = ~(-1 << -v12);
    }

    v13 = v11 & *(v8 + 56);
    v14 = (63 - v12) >> 6;
    v23 = v8;
    while (v13)
    {
      v15 = v9;
LABEL_11:
      v16 = v1[6];
      v17 = v1[4];
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      (*(v6 + 16))(v16, *(v23 + 48) + *(v6 + 72) * (v18 | (v15 << 6)), v17);
      v19 = sub_1003D9F30(&off_1008D6EF8);
      (*(v6 + 8))(v16, v17);
      v20 = *(v7 + 16);
      *(v7 + 16) = v19;

      if (!*(v7 + 16))
      {

        sub_10032B298(&unk_1008D6F18);
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
        sub_10032B298(&unk_1008D6F18);

        v21 = 1;
        goto LABEL_15;
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
  }

  else
  {
LABEL_13:
    v21 = 0;
LABEL_15:

    v22 = v1[1];

    v22(v21);
  }
}

uint64_t sub_1003E76C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t sub_1003E7B30@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandleriTunesULinks();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_1003E7B68(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100289000;

  return sub_1003E7360(a1);
}

void sub_1003E7C00(uint64_t a1, char a2)
{
  sub_1003D8D18(&off_1008D6B48, a2);
  sub_1003470A0(&unk_1008D6B68);
  v2 = String._bridgeToObjectiveC()();
  v3 = SFLocalizedStringForKey();

  if (v3)
  {

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static String.localizedStringWithFormat(_:_:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1003E7CDC()
{
  v1 = type metadata accessor for SDAuthenticationCommonOperationInput(0);
  v2 = *(v0 + *(v1 + 28));
  if (v2 > 0x16)
  {
    goto LABEL_7;
  }

  if (((1 << v2) & 0x7A618E) == 0)
  {
    if (((1 << v2) & 0x40600) != 0)
    {
      v3 = 1;
      return v3 & 1;
    }

LABEL_7:
    v3 = *(v0 + *(v1 + 32));
    return v3 & 1;
  }

  v3 = *(v0 + *(v1 + 32)) ^ 1;
  return v3 & 1;
}

uint64_t sub_1003E7D64()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097BA28);
  v1 = sub_10000C4AC(v0, qword_10097BA28);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003E7E2C()
{
  v2 = v0[8];
  v3 = v0[9];
  sub_10002CDC0(v0 + 5, v2);
  (*(v3 + 8))(v2, v3);
  sub_10028088C(&qword_100975100, &qword_1007FBA10);
  Optional.tryUnwrap(_:file:line:)();

  if (!v1)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1003E7F10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v3[23] = type metadata accessor for AuthenticationSecurityRequest(0);
  v3[24] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v3[25] = v4;
  v3[26] = *(v4 - 8);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();

  return _swift_task_switch(sub_1003E8010, 0, 0);
}

uint64_t sub_1003E8010()
{
  v42 = v0;
  v1 = *(v0 + 176);
  v2 = type metadata accessor for SDAuthenticationCommonOperationInput(0);
  v3 = 0;
  v4 = *(v1 + *(v2 + 32));
  switch(*(v1 + *(v2 + 28)))
  {
    case 0:
    case 2:
      break;
    case 1:
      v5 = v4 == 0;
      v6 = 96;
      v7 = 31;
      goto LABEL_21;
    case 3:
      v5 = v4 == 0;
      v6 = 2050;
      v7 = 2688;
      goto LABEL_21;
    case 4:
      v5 = v4 == 0;
      v6 = 256;
      v7 = 3584;
      goto LABEL_21;
    case 5:
      v3 = 34816;
      break;
    case 6:
      v5 = v4 == 0;
      v6 = 47744;
      goto LABEL_13;
    case 7:
      v5 = v4 == 0;
      v6 = 0x4000;
      goto LABEL_13;
    case 8:
      v3 = 128;
      break;
    case 9:
      v5 = v4 == 0;
      v6 = 34816;
      goto LABEL_16;
    case 0xALL:
      v5 = v4 == 0;
      v6 = 128;
LABEL_13:
      v7 = 2;
      goto LABEL_21;
    case 0xBLL:
      v5 = v4 == 0;
      v6 = 109184;
LABEL_16:
      v7 = 34818;
      goto LABEL_21;
    case 0xELL:
      v5 = v4 == 0;
      v6 = 35456;
      v7 = 34816;
      goto LABEL_21;
    case 0x11:
    case 0x15:
      v5 = v4 == 0;
      v6 = 35552;
      goto LABEL_20;
    case 0x12:
      v5 = v4 == 0;
      v6 = 2176;
      v7 = 2178;
      goto LABEL_21;
    case 0x13:
      v5 = v4 == 0;
      v6 = 43744;
      goto LABEL_20;
    case 0x14:
      v5 = v4 == 0;
      v6 = 35522;
LABEL_20:
      v7 = 526338;
LABEL_21:
      if (v5)
      {
        v3 = v6;
      }

      else
      {
        v3 = v7;
      }

      break;
    default:
      v3 = 786431;
      break;
  }

  sub_1002A9938(*(v0 + 168), v0 + 56);
  sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
  sub_10028088C(&qword_10097BE48, &qword_100800398);
  if (swift_dynamicCast())
  {
    sub_1000121F8((v0 + 96), v0 + 16);
    v8 = *(v0 + 40);
    v9 = *(v0 + 48);
    sub_10002CDC0((v0 + 16), v8);
    (*(v9 + 16))(v8, v9);
    sub_10000C60C((v0 + 16));
  }

  else
  {
    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    sub_100005508(v0 + 96, &qword_10097BE50, &qword_1008003A0);
    static Date.distantFuture.getter();
  }

  if (qword_1009737E8 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 216);
  v11 = *(v0 + 224);
  v12 = *(v0 + 200);
  v13 = *(v0 + 208);
  v14 = type metadata accessor for Logger();
  sub_10000C4AC(v14, qword_10097BA28);
  v15 = *(v13 + 16);
  v15(v10, v11, v12);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  v18 = os_log_type_enabled(v16, v17);
  v20 = *(v0 + 208);
  v19 = *(v0 + 216);
  v21 = *(v0 + 200);
  if (v18)
  {
    v38 = v17;
    v22 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v22 = 136315394;
    v23 = String.init<A>(describing:)();
    v40 = v3;
    v39 = v15;
    v25 = sub_10000C4E4(v23, v24, &v41);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2080;
    sub_1003FCA70(&qword_100983290, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v29 = *(v20 + 8);
    v29(v19, v21);
    v30 = v26;
    v3 = v40;
    v31 = sub_10000C4E4(v30, v28, &v41);
    v15 = v39;

    *(v22 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v16, v38, "%s: using requestingDeviceUnlockDate: %s", v22, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v29 = *(v20 + 8);
    v29(v19, v21);
  }

  *(v0 + 232) = v29;
  v32 = *(v0 + 192);
  v33 = *(v0 + 176);
  v15(v32 + *(*(v0 + 184) + 20), *(v0 + 224), *(v0 + 200));
  *v32 = v3;
  v34 = (*sub_10002CDC0(v33, v33[3]) + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_securityManager);
  swift_beginAccess();
  sub_10002CDC0(v34, v34[3]);
  v35 = swift_task_alloc();
  *(v0 + 240) = v35;
  *v35 = v0;
  v35[1] = sub_1003E8534;
  v36 = *(v0 + 192);

  return sub_100351944(v36);
}

uint64_t sub_1003E8534()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_1003E8724;
  }

  else
  {
    v2 = sub_1003E8648;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003E8648()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[25];
  v5 = v0[20];
  v4 = v0[21];
  sub_1003FC968(v0[24], type metadata accessor for AuthenticationSecurityRequest);
  v2(v1, v3);
  sub_1002A9938(v4, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1003E8724()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[25];
  sub_1003FC968(v0[24], type metadata accessor for AuthenticationSecurityRequest);
  v2(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003E87E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003E7F10(a1, a2, a3);
}

uint64_t sub_1003E8898(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1003E88B8, 0, 0);
}

id sub_1003E88B8()
{
  result = [objc_opt_self() sharedMonitor];
  if (result)
  {
    v2 = result;
    v3 = [result bluetoothEnabled];

    if (v3)
    {
      sub_1002A9938(v0[3], v0[2]);
    }

    else
    {
      v5 = sub_100010F88(17, 0xD000000000000015, 0x800000010078EF60);
      v7 = v6;
      sub_1000115C8();
      swift_allocError();
      *v8 = v5;
      *(v8 + 8) = v7;
      swift_willThrow();
    }

    v4 = v0[1];

    return v4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003E89D8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1003E8898(a1, a2);
}

uint64_t sub_1003E8A78(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1003E8A98, 0, 0);
}

id sub_1003E8A98()
{
  result = [objc_opt_self() sharedMonitor];
  if (result)
  {
    v2 = result;
    v3 = [result wirelessEnabled];

    if (v3)
    {
      sub_1002A9938(v0[3], v0[2]);
    }

    else
    {
      v5 = sub_100010F88(16, 0xD000000000000010, 0x800000010078EF80);
      v7 = v6;
      sub_1000115C8();
      swift_allocError();
      *v8 = v5;
      *(v8 + 8) = v7;
      swift_willThrow();
    }

    v4 = v0[1];

    return v4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003E8BB8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1003E8A78(a1, a2);
}

uint64_t sub_1003E8C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1003E8C7C, 0, 0);
}

uint64_t sub_1003E8C7C()
{
  v1 = v0[4];
  v2 = v1[8];
  v3 = v1[9];
  sub_10002CDC0(v1 + 5, v2);
  if ((*(v3 + 40))(v2, v3))
  {
    sub_1002A9938(v0[3], v0[2]);
  }

  else
  {
    v5 = sub_100010F88(18, 0xD000000000000025, 0x800000010078EFA0);
    v7 = v6;
    sub_1000115C8();
    swift_allocError();
    *v8 = v5;
    *(v8 + 8) = v7;
    swift_willThrow();
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003E8D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return _swift_task_switch(sub_1003E8DB4, 0, 0);
}

uint64_t sub_1003E8DB4()
{
  v1 = v0[6];
  v2 = *(v1 + *(type metadata accessor for SDAuthenticationCommonOperationInput(0) + 28)) - 1;
  v3 = 0.0;
  if (v2 <= 0x14)
  {
    v3 = flt_1008010C4[v2];
  }

  v4 = v1[8];
  v5 = v1[9];
  sub_10002CDC0(v1 + 5, v4);
  v6 = (*(v5 + 64))(v4, v5);
  v8 = (v7 / 10.0) + v6;
  if (v3 <= v8)
  {
    sub_1002A9938(v0[5], v0[4]);
    v19 = v0[1];
  }

  else
  {
    if (qword_1009737E8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000C4AC(v9, qword_10097BA28);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134218240;
      *(v12 + 4) = v3;
      *(v12 + 12) = 2048;
      *(v12 + 14) = v8;
      _os_log_impl(&_mh_execute_header, v10, v11, "Remote Device version is unsupported. Need: %f, got: %f", v12, 0x16u);
    }

    _StringGuts.grow(_:)(55);
    v0[2] = 0;
    v0[3] = 0xE000000000000000;
    v13._object = 0x800000010078EF30;
    v13._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v13);
    Float.write<A>(to:)();
    v14._countAndFlagsBits = 0x203A746F67202CLL;
    v14._object = 0xE700000000000000;
    String.append(_:)(v14);
    Float.write<A>(to:)();
    v15 = sub_100010F88(15, v0[2], v0[3]);
    v17 = v16;
    sub_1000115C8();
    swift_allocError();
    *v18 = v15;
    *(v18 + 8) = v17;
    swift_willThrow();
    v19 = v0[1];
  }

  return v19();
}

uint64_t sub_1003E9068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003E8D90(a1, a2, a3);
}

uint64_t sub_1003E9118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  return _swift_task_switch(sub_1003E913C, 0, 0);
}

id sub_1003E913C()
{
  v51 = v0;
  v1 = *(v0 + 112);
  v2 = *(type metadata accessor for SDAuthenticationCommonOperationInput(0) + 36);
  sub_1003FBDAC(v1 + v2, v0 + 56);
  if (*(v0 + 80))
  {
    sub_1000121F8((v0 + 56), v0 + 16);
    v3 = *(*sub_10002CDC0((v0 + 16), *(v0 + 40)) + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_localLTK);
    v4 = *(v3 + 112);
    v5 = swift_task_alloc();
    *(v5 + 16) = sub_1003FCBA8;
    *(v5 + 24) = v3;

    os_unfair_lock_lock(v4 + 4);
    sub_1003FCBC0(v50);
    os_unfair_lock_unlock(v4 + 4);
    v49 = v2;
    v11 = *(v0 + 112);
    v12 = v50[0];

    sub_10000C60C((v0 + 16));
    v13 = swift_task_alloc();
    *(v13 + 16) = v11;
    v14 = sub_1003FB7BC(sub_1003FC9EC, v13, v12);

    result = [objc_opt_self() sharedTransport];
    if (result)
    {
      v16 = result;
      v17 = [result idsDevicesIDs];

      if (v17)
      {
        v18 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v18 = &_swiftEmptySetSingleton;
      }

      v19 = sub_1003FC048(v14, v18);

      if (!v19[2])
      {
LABEL_24:

        sub_1002A9938(*(v0 + 104), *(v0 + 96));
        v10 = *(v0 + 8);
        goto LABEL_25;
      }

      v20 = 0;
      v21 = (v19 + 7);
      v22 = -1;
      v23 = -1 << *(v19 + 32);
      if (-v23 < 64)
      {
        v22 = ~(-1 << -v23);
      }

      v24 = v22 & v19[7];
      v25 = (63 - v23) >> 6;
      v47 = (v19 + 7);
      v48 = v19;
      v46 = v25;
      if (v24)
      {
        while (1)
        {
          v26 = v20;
LABEL_17:
          v27 = (v19[6] + ((v26 << 10) | (16 * __clz(__rbit64(v24)))));
          v28 = *v27;
          v29 = v27[1];
          v30 = qword_1009737E8;

          if (v30 != -1)
          {
            swift_once();
          }

          v31 = type metadata accessor for Logger();
          sub_10000C4AC(v31, qword_10097BA28);

          v32 = Logger.logObject.getter();
          v33 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v32, v33))
          {
            v34 = swift_slowAlloc();
            v35 = v1;
            v36 = swift_slowAlloc();
            v50[0] = v36;
            *v34 = 136315138;
            *(v34 + 4) = sub_10000C4E4(v28, v29, v50);
            _os_log_impl(&_mh_execute_header, v32, v33, "Unpairing device %s", v34, 0xCu);
            sub_10000C60C(v36);
            v1 = v35;
          }

          sub_1003FBDAC(v1 + v49, v0 + 56);
          if (!*(v0 + 80))
          {
            break;
          }

          sub_1000121F8((v0 + 56), v0 + 16);
          v37 = *(*sub_10002CDC0((v0 + 16), *(v0 + 40)) + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_localLTK);
          v38 = *(v37 + 112);
          v39 = swift_task_alloc();
          v39[2] = v37;
          v39[3] = v28;
          v39[4] = v29;
          v40 = swift_task_alloc();
          *(v40 + 16) = sub_1003FCB60;
          *(v40 + 24) = v39;
          os_unfair_lock_lock(v38 + 4);
          sub_1003206A8(v41);
          os_unfair_lock_unlock(v38 + 4);
          v24 &= v24 - 1;

          result = sub_10000C60C((v0 + 16));
          v20 = v26;
          v21 = v47;
          v19 = v48;
          v25 = v46;
          if (!v24)
          {
            goto LABEL_14;
          }
        }

        sub_100005508(v0 + 56, &qword_1009819B0, &qword_100800360);
        v42 = sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);
        v44 = v43;
        sub_1000115C8();
        swift_allocError();
        *v45 = v42;
        *(v45 + 8) = v44;
        swift_willThrow();

        goto LABEL_4;
      }

LABEL_14:
      while (1)
      {
        v26 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v26 >= v25)
        {
          goto LABEL_24;
        }

        v24 = *&v21[8 * v26];
        ++v20;
        if (v24)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

  sub_100005508(v0 + 56, &qword_1009819B0, &qword_100800360);
  v6 = sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);
  v8 = v7;
  sub_1000115C8();
  swift_allocError();
  *v9 = v6;
  *(v9 + 8) = v8;
  swift_willThrow();
LABEL_4:
  v10 = *(v0 + 8);
LABEL_25:

  return v10();
}

uint64_t sub_1003E9754(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a2[8];
  v5 = a2[9];
  sub_10002CDC0(a2 + 5, v4);
  v6 = *(v5 + 8);

  v7 = v6(v4, v5);
  if (v8)
  {
    if (v3 == v7 && v8 == v2)
    {

      v11 = 0;
    }

    else
    {
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v11 = v10 ^ 1;
    }
  }

  else
  {

    v11 = 1;
  }

  return v11 & 1;
}

uint64_t sub_1003E983C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003E9118(a1, a2, a3);
}

uint64_t sub_1003E98EC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1003E990C, 0, 0);
}

uint64_t sub_1003E990C()
{
  v1 = v0[3];
  v2 = sub_10002CDC0(v1, v1[3]);
  if (*(v2 + *(_s8KeyCheckV18InitialLockContextVMa(0) + 32)) == 1)
  {
    v3 = sub_100010F88(0, 0xD000000000000022, 0x800000010078F250);
    v5 = v4;
    sub_1000115C8();
    swift_allocError();
    *v6 = v3;
    *(v6 + 8) = v5;
    swift_willThrow();
  }

  else
  {
    v9 = v0[2];
    v8 = v0[3];
    v10 = v1[3];
    v11 = v8[4];
    v12 = sub_10002CDC0(v8, v10);
    v9[3] = v10;
    v9[4] = *(v11 + 8);
    v13 = sub_10002F604(v9);
    (*(*(v10 - 8) + 16))(v13, v12, v10);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1003E9A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1003E9A8C, 0, 0);
}

uint64_t sub_1003E9A8C()
{
  v21 = v0;
  if (qword_1009737D0 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = type metadata accessor for SDAuthenticationCommonOperationInput(0);
  v3 = *(v1 + *(v2 + 28)) - 3;
  if (v3 > 0x14)
  {
    v4 = 0;
  }

  else
  {
    v4 = byte_100801118[v3];
  }

  v9 = sub_10000D6E8(v4, *(v1 + *(v2 + 32)), 0, 0, 0, 0);
  v10 = *(v9 + 112);
  v11 = swift_task_alloc();
  *(v11 + 16) = sub_1003FC51C;
  *(v11 + 24) = v9;
  os_unfair_lock_lock(v10 + 4);
  sub_100012268(&v20);
  os_unfair_lock_unlock(v10 + 4);
  v12 = v0[4];
  v13 = v20;

  v14 = v12[8];
  v15 = v12[9];
  sub_10002CDC0(v12 + 5, v14);
  result = (*(v15 + 8))(v14, v15);
  if (v17)
  {
    v18 = sub_100569230(result, v17, v13);

    if (v18)
    {
      sub_1002A9938(v0[3], v0[2]);
    }

    else
    {
      v5 = sub_100010F88(33, 0xD00000000000001BLL, 0x800000010078F120);
      v7 = v6;
      sub_1000115C8();
      swift_allocError();
      *v8 = v5;
      *(v8 + 8) = v7;
      swift_willThrow();
    }

    v19 = v0[1];

    return v19();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003E9CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003E9A68(a1, a2, a3);
}

uint64_t sub_1003E9DA4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1003E9DC4, 0, 0);
}

uint64_t sub_1003E9DC4()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 BOOLForKey:v2];

  if (v3)
  {
    if (qword_1009737E8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C4AC(v4, qword_10097BA28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "### TESTING ONLY: skipARRanging is set, skip checking AR range", v7, 2u);
    }
  }

  sub_1002A9938(v0[3], v0[2]);
  v8 = v0[1];

  return v8();
}

uint64_t sub_1003E9F54(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1003E9DA4(a1, a2);
}

uint64_t sub_1003E9FF4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1003EA014, 0, 0);
}

id sub_1003EA014()
{
  result = [objc_opt_self() sharedMonitor];
  if (result)
  {
    v2 = result;
    v3 = [result screenOn];

    if (v3)
    {
      sub_1002A9938(v0[3], v0[2]);
      v4 = v0[1];
    }

    else
    {
      if (qword_1009737E8 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_10000C4AC(v5, qword_10097BA28);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "Screen is off, cancelling unlock attempt", v8, 2u);
      }

      v9 = sub_100010F88(14, 0xD00000000000001BLL, 0x800000010078F4D0);
      v11 = v10;
      sub_1000115C8();
      swift_allocError();
      *v12 = v9;
      *(v12 + 8) = v11;
      swift_willThrow();
      v4 = v0[1];
    }

    return v4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003EA1E8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C04;

  return sub_1003E9FF4(a1, a2);
}

uint64_t sub_1003EA288(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1003EA2A8, 0, 0);
}

id sub_1003EA2A8()
{
  result = [objc_opt_self() sharedMonitor];
  if (result)
  {
    v2 = result;
    v3 = [result screenOn];

    if (v3)
    {
      sub_1002A9938(v0[3], v0[2]);
      v4 = v0[1];
    }

    else
    {
      sub_1001EA8AC();
      if (qword_1009737E8 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_10000C4AC(v5, qword_10097BA28);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "Screen is off, locking device", v8, 2u);
      }

      v9 = sub_100010F88(14, 0xD00000000000001BLL, 0x800000010078F4D0);
      v11 = v10;
      sub_1000115C8();
      swift_allocError();
      *v12 = v9;
      *(v12 + 8) = v11;
      swift_willThrow();
      v4 = v0[1];
    }

    return v4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003EA480(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1003EA288(a1, a2);
}

uint64_t sub_1003EA520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1003EA544, 0, 0);
}

uint64_t sub_1003EA544()
{
  v22 = v0;
  v1 = SFAuthenticationRegistrationSucceeded;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  type metadata accessor for SDAuthenticationCommonOperationInput(0);
  v5 = String.lowercased()();
  v6 = v1;

  v21[0] = v2;
  v21[1] = v4;
  v7._countAndFlagsBits = 46;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  String.append(_:)(v5);

  v8 = v2;
  if (qword_1009737E8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000C4AC(v9, qword_10097BA28);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_10000C4E4(v8, v4, v21);
    _os_log_impl(&_mh_execute_header, v10, v11, "Posting darwin notification %s", v12, 0xCu);
    sub_10000C60C(v13);
  }

  v15 = v0[2];
  v14 = v0[3];
  v16 = CFNotificationCenterGetDarwinNotifyCenter();
  v17 = String._bridgeToObjectiveC()();

  CFNotificationCenterPostNotification(v16, v17, 0, 0, 1u);

  v18 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(v18, v6, 0, 0, 1u);

  sub_1002A9938(v14, v15);
  v19 = v0[1];

  return v19();
}

uint64_t sub_1003EA8AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003EA520(a1, a2, a3);
}

uint64_t sub_1003EA95C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1003EA97C, 0, 0);
}

uint64_t sub_1003EA97C()
{
  if (qword_100973AE8 != -1)
  {
    swift_once();
  }

  return _swift_task_switch(sub_1003EAA0C, 0, 0);
}

uint64_t sub_1003EAA0C()
{
  sub_1002A9938(v0[3], v0[2]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1003EAA70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  return _swift_task_switch(sub_1003EAA94, 0, 0);
}

uint64_t sub_1003EAA94()
{
  v1 = v0[13];
  v2 = v0[11];
  sub_1002A9938(v0[12], (v0 + 2));
  v3 = v1[8];
  v4 = v1[9];
  sub_10002CDC0(v1 + 5, v3);
  v5 = (*(v4 + 16))(v3, v4);
  v7 = v6;
  v8 = v0[5];
  v9 = v0[6];
  sub_10002F5B4((v0 + 2), v8);
  v10 = (*(v9 + 32))(v0 + 7, v8, v9);
  *(v11 + 16) = v5;
  *(v11 + 24) = v7;

  v10(v0 + 7, 0);
  v12 = v1[8];
  v13 = v1[9];
  sub_10002CDC0(v1 + 5, v12);
  v14 = (*(v13 + 24))(v12, v13);
  v16 = v15;
  v17 = v0[5];
  v18 = v0[6];
  sub_10002F5B4((v0 + 2), v17);
  v19 = (*(v18 + 32))(v0 + 7, v17, v18);
  *(v20 + 32) = v14;
  *(v20 + 40) = v16;

  v19(v0 + 7, 0);
  v21 = v0[5];
  v22 = v0[6];
  v23 = sub_10002CDC0(v0 + 2, v21);
  v2[3] = v21;
  v2[4] = *(v22 + 8);
  v24 = sub_10002F604(v2);
  (*(*(v21 - 8) + 16))(v24, v23, v21);
  sub_10000C60C(v0 + 2);
  v25 = v0[1];

  return v25();
}

uint64_t sub_1003EAC9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003EAA70(a1, a2, a3);
}

uint64_t sub_1003EAD4C(uint64_t a1, uint64_t a2)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return _swift_task_switch(sub_1003EAD6C, 0, 0);
}

uint64_t sub_1003EAD6C()
{
  v1 = v0[12];
  v2 = v0[13];
  sub_1002D63B0(v2, (v0 + 2));
  v3 = v2[3];
  v4 = v2[4];
  sub_10002CDC0(v2, v3);
  v5 = (*(v4 + 16))(v3, v4);
  v7 = v6;
  v8 = v0[5];
  v9 = v0[7];
  sub_10002F5B4((v0 + 2), v8);
  v10 = (*(v9 + 32))(v0 + 8, v8, v9);
  *(v11 + 64) = v5;
  *(v11 + 72) = v7;

  v10(v0 + 8, 0);
  v12 = v0[5];
  v13 = v0[6];
  v14 = sub_10002CDC0(v0 + 2, v12);
  v1[3] = v12;
  v1[4] = *(v13 + 8);
  v15 = sub_10002F604(v1);
  (*(*(v12 - 8) + 16))(v15, v14, v12);
  sub_10000C60C(v0 + 2);
  v16 = v0[1];

  return v16();
}

uint64_t sub_1003EAEE8(uint64_t a1, uint64_t a2)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return _swift_task_switch(sub_1003EAF08, 0, 0);
}

uint64_t sub_1003EAF08()
{
  v1 = v0[11];
  v2 = v0[12];
  sub_1002A9938(v2, (v0 + 2));
  v3 = sub_10002CDC0(v2, v2[3]);
  v4 = *(v3 + *(_s15VisionUnlockiOSV20HandleRequestContextVMa(0) + 44));
  v5 = v0[5];
  v6 = v0[6];
  sub_10002F5B4((v0 + 2), v5);
  v7 = (*(*(v6 + 8) + 32))(v0 + 7, v5);
  *(v8 + 48) = v4;
  *(v8 + 56) = 0;
  v7(v0 + 7, 0);
  v9 = v0[5];
  v10 = v0[6];
  v11 = sub_10002CDC0(v0 + 2, v9);
  v1[3] = v9;
  v1[4] = *(*(v10 + 8) + 8);
  v12 = sub_10002F604(v1);
  (*(*(v9 - 8) + 16))(v12, v11, v9);
  sub_10000C60C(v0 + 2);
  v13 = v0[1];

  return v13();
}

uint64_t sub_1003EB060(uint64_t a1, uint64_t a2)
{
  v2[11] = a1;
  v2[12] = a2;
  sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1003EB0FC, 0, 0);
}

uint64_t sub_1003EB0FC()
{
  v1 = v0[13];
  v2 = v0[11];
  sub_1002A9938(v0[12], (v0 + 2));
  Date.init()();
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = v0[5];
  v5 = v0[6];
  sub_10002F5B4((v0 + 2), v4);
  v6 = (*(v5 + 32))(v0 + 7, v4, v5);
  v8 = v7;
  v9 = type metadata accessor for SDAuthenticationSessionMetrics(0);
  sub_1003561CC(v1, v8 + *(v9 + 60));
  v6(v0 + 7, 0);
  v10 = v0[5];
  v11 = v0[6];
  v12 = sub_10002CDC0(v0 + 2, v10);
  v2[3] = v10;
  v2[4] = *(v11 + 8);
  v13 = sub_10002F604(v2);
  (*(*(v10 - 8) + 16))(v13, v12, v10);
  sub_10000C60C(v0 + 2);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1003EB294(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1003EB060(a1, a2);
}

uint64_t sub_1003EB334(uint64_t a1, uint64_t a2)
{
  v2[11] = a1;
  v2[12] = a2;
  sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1003EB3D0, 0, 0);
}

uint64_t sub_1003EB3D0()
{
  v1 = v0[13];
  v2 = v0[11];
  sub_1002A9938(v0[12], (v0 + 2));
  Date.init()();
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = v0[5];
  v5 = v0[6];
  sub_10002F5B4((v0 + 2), v4);
  v6 = (*(v5 + 32))(v0 + 7, v4, v5);
  v8 = v7;
  v9 = type metadata accessor for SDAuthenticationSessionMetrics(0);
  sub_1003561CC(v1, v8 + *(v9 + 48));
  v6(v0 + 7, 0);
  v10 = v0[5];
  v11 = v0[6];
  v12 = sub_10002CDC0(v0 + 2, v10);
  v2[3] = v10;
  v2[4] = *(v11 + 8);
  v13 = sub_10002F604(v2);
  (*(*(v10 - 8) + 16))(v13, v12, v10);
  sub_10000C60C(v0 + 2);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1003EB568(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1003EB334(a1, a2);
}

uint64_t sub_1003EB608(uint64_t a1, uint64_t a2)
{
  v2[26] = a1;
  v2[27] = a2;
  sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v2[28] = swift_task_alloc();
  v3 = type metadata accessor for Date();
  v2[29] = v3;
  v2[30] = *(v3 - 8);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();

  return _swift_task_switch(sub_1003EB70C, 0, 0);
}

uint64_t sub_1003EB70C()
{
  v1 = *(v0 + 216);
  sub_1002A9938(v1, v0 + 16);
  Date.init()();
  sub_1002A9938(v1, v0 + 96);
  sub_10028088C(&unk_100981960, &qword_100800390);
  sub_10028088C(&qword_10097BE48, &qword_100800398);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 248);
    v2 = *(v0 + 256);
    v4 = *(v0 + 232);
    v5 = *(v0 + 240);
    sub_1000121F8((v0 + 136), v0 + 56);
    v6 = *(v0 + 80);
    v7 = *(v0 + 88);
    sub_10002CDC0((v0 + 56), v6);
    (*(v7 + 16))(v6, v7);
    (*(v5 + 8))(v2, v4);
    (*(v5 + 32))(v2, v3, v4);
    sub_10000C60C((v0 + 56));
  }

  else
  {
    *(v0 + 168) = 0;
    *(v0 + 152) = 0u;
    *(v0 + 136) = 0u;
    sub_100005508(v0 + 136, &qword_10097BE50, &qword_1008003A0);
  }

  v8 = *(v0 + 256);
  v10 = *(v0 + 232);
  v9 = *(v0 + 240);
  v11 = *(v0 + 224);
  v12 = *(v0 + 208);
  (*(v9 + 16))(v11, v8, v10);
  (*(v9 + 56))(v11, 0, 1, v10);
  v13 = *(v0 + 40);
  v14 = *(v0 + 48);
  sub_10002F5B4(v0 + 16, v13);
  v15 = (*(v14 + 32))(v0 + 176, v13, v14);
  v17 = v16;
  v18 = type metadata accessor for SDAuthenticationSessionMetrics(0);
  sub_1003561CC(v11, v17 + *(v18 + 64));
  v15(v0 + 176, 0);
  v19 = *(v0 + 40);
  v20 = *(v0 + 48);
  v21 = sub_10002CDC0((v0 + 16), v19);
  v12[3] = v19;
  v12[4] = *(v20 + 8);
  v22 = sub_10002F604(v12);
  (*(*(v19 - 8) + 16))(v22, v21, v19);
  (*(v9 + 8))(v8, v10);
  sub_10000C60C((v0 + 16));

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1003EBA00(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1003EB608(a1, a2);
}

uint64_t sub_1003EBAA0(uint64_t a1, uint64_t a2)
{
  v2[11] = a1;
  v2[12] = a2;
  sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1003EBB3C, 0, 0);
}

uint64_t sub_1003EBB3C()
{
  v1 = v0[13];
  v2 = v0[11];
  sub_1002A9938(v0[12], (v0 + 2));
  Date.init()();
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = v0[5];
  v5 = v0[6];
  sub_10002F5B4((v0 + 2), v4);
  v6 = (*(v5 + 32))(v0 + 7, v4, v5);
  v8 = v7;
  v9 = type metadata accessor for SDAuthenticationSessionMetrics(0);
  sub_1003561CC(v1, v8 + *(v9 + 68));
  v6(v0 + 7, 0);
  v10 = v0[5];
  v11 = v0[6];
  v12 = sub_10002CDC0(v0 + 2, v10);
  v2[3] = v10;
  v2[4] = *(v11 + 8);
  v13 = sub_10002F604(v2);
  (*(*(v10 - 8) + 16))(v13, v12, v10);
  sub_10000C60C(v0 + 2);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1003EBCD4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1003EBAA0(a1, a2);
}

uint64_t sub_1003EBD74(uint64_t a1, uint64_t a2)
{
  v2[11] = a1;
  v2[12] = a2;
  sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1003EBE10, 0, 0);
}

uint64_t sub_1003EBE10()
{
  v1 = v0[13];
  v2 = v0[11];
  sub_1002A9938(v0[12], (v0 + 2));
  Date.init()();
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = v0[5];
  v5 = v0[6];
  sub_10002F5B4((v0 + 2), v4);
  v6 = (*(v5 + 32))(v0 + 7, v4, v5);
  v8 = v7;
  v9 = type metadata accessor for SDAuthenticationSessionMetrics(0);
  sub_1003561CC(v1, v8 + *(v9 + 72));
  v6(v0 + 7, 0);
  v10 = v0[5];
  v11 = v0[6];
  v12 = sub_10002CDC0(v0 + 2, v10);
  v2[3] = v10;
  v2[4] = *(v11 + 8);
  v13 = sub_10002F604(v2);
  (*(*(v10 - 8) + 16))(v13, v12, v10);
  sub_10000C60C(v0 + 2);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1003EBFA8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1003EBD74(a1, a2);
}

uint64_t sub_1003EC048(uint64_t a1, uint64_t a2)
{
  v2[11] = a1;
  v2[12] = a2;
  sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1003EC0E4, 0, 0);
}

uint64_t sub_1003EC0E4()
{
  v1 = v0[13];
  v2 = v0[11];
  sub_1002A9938(v0[12], (v0 + 2));
  Date.init()();
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = v0[5];
  v5 = v0[6];
  sub_10002F5B4((v0 + 2), v4);
  v6 = (*(v5 + 32))(v0 + 7, v4, v5);
  v8 = v7;
  v9 = type metadata accessor for SDAuthenticationSessionMetrics(0);
  sub_1003561CC(v1, v8 + *(v9 + 76));
  v6(v0 + 7, 0);
  v10 = v0[5];
  v11 = v0[6];
  v12 = sub_10002CDC0(v0 + 2, v10);
  v2[3] = v10;
  v2[4] = *(v11 + 8);
  v13 = sub_10002F604(v2);
  (*(*(v10 - 8) + 16))(v13, v12, v10);
  sub_10000C60C(v0 + 2);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1003EC27C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1003EC048(a1, a2);
}

uint64_t sub_1003EC31C(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_1003EC3B8, 0, 0);
}

uint64_t sub_1003EC3B8()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  sub_1002D63B0(v2, (v0 + 2));
  v4 = v2[3];
  v5 = v2[5];
  sub_10002CDC0(v2, v4);
  (*(v5 + 16))(v4, v5);
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 56))(v1, 0, 1, v6);
  v7 = v0[5];
  v8 = v0[6];
  sub_10002F5B4((v0 + 2), v7);
  v9 = (*(v8 + 32))(v0 + 8, v7, v8);
  v11 = v10;
  v12 = type metadata accessor for SDAuthenticationSessionMetrics(0);
  sub_1003561CC(v1, v11 + *(v12 + 108));
  v9(v0 + 8, 0);
  v13 = v0[5];
  v14 = v0[6];
  v15 = sub_10002CDC0(v0 + 2, v13);
  v3[3] = v13;
  v3[4] = *(v14 + 8);
  v16 = sub_10002F604(v3);
  (*(*(v13 - 8) + 16))(v16, v15, v13);
  sub_10000C60C(v0 + 2);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1003EC584(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1003EC31C(a1, a2);
}

uint64_t sub_1003EC624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[27] = a2;
  v3[28] = a3;
  v3[26] = a1;
  v3[29] = type metadata accessor for SDAuthenticationSessionMetrics(0);
  v3[30] = swift_task_alloc();
  sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v3[31] = swift_task_alloc();

  return _swift_task_switch(sub_1003EC6F4, 0, 0);
}

uint64_t sub_1003EC6F4()
{
  v1 = *(v0 + 216);
  sub_1002A9938(v1, *(v0 + 208));
  sub_1002A9938(v1, v0 + 56);
  sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
  sub_10028088C(&unk_100981960, &qword_100800390);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 240);
    v3 = *(v0 + 248);
    v4 = *(v0 + 232);
    v5 = *(v0 + 208);
    sub_1000121F8((v0 + 96), v0 + 16);
    Date.init()();
    v6 = type metadata accessor for Date();
    (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
    v7 = *(v0 + 40);
    v8 = *(v0 + 48);
    sub_10002F5B4(v0 + 16, v7);
    v9 = (*(v8 + 32))(v0 + 176, v7, v8);
    sub_1003561CC(v3, v10 + *(v4 + 52));
    v9(v0 + 176, 0);
    v11 = *(v0 + 40);
    v12 = *(v0 + 48);
    sub_10002CDC0((v0 + 16), v11);
    (*(v12 + 16))(v11, v12);
    type metadata accessor for SDAuthenticationCommonOperationInput(0);
    sub_100666950();
    sub_1003FC968(v2, type metadata accessor for SDAuthenticationSessionMetrics);
    v13 = *(v0 + 40);
    v14 = *(v0 + 48);
    sub_10002CDC0((v0 + 16), v13);
    (*(v14 + 16))(v13, v14);
    v15 = sub_100668FE8();
    [v15 submitEvent];

    sub_1003FC968(v2, type metadata accessor for SDAuthenticationSessionMetrics);
    v16 = *(v0 + 40);
    v17 = *(v0 + 48);
    v18 = sub_10002CDC0((v0 + 16), v16);
    *(v0 + 160) = v16;
    *(v0 + 168) = *(v17 + 8);
    v19 = sub_10002F604((v0 + 136));
    (*(*(v16 - 8) + 16))(v19, v18, v16);
    sub_10000C60C(v5);
    sub_1000121F8((v0 + 136), v5);
    sub_10000C60C((v0 + 16));
  }

  else
  {
    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    sub_100005508(v0 + 96, &qword_10097BE90, &qword_100807D20);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1003ECA04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003EC624(a1, a2, a3);
}

uint64_t sub_1003ECAB4(uint64_t a1, uint64_t a2)
{
  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
  return _swift_task_switch(sub_1003ECAD4, 0, 0);
}

uint64_t sub_1003ECAD4()
{
  sub_1002A9938(*(v0 + 144), v0 + 56);
  sub_10028088C(&qword_10097BE58, &qword_1008003D8);
  sub_10028088C(&qword_10097BE60, &qword_1008003E0);
  v1 = swift_dynamicCast();
  v2 = *(v0 + 144);
  if (v1 || (*(v0 + 128) = 0, *(v0 + 96) = 0u, *(v0 + 112) = 0u, sub_100005508(v0 + 96, &qword_10097BE68, &qword_1008003E8), sub_1002A9938(v2, v0 + 56), sub_10028088C(&qword_10097BE70, &qword_1008003F0), v3 = swift_dynamicCast(), v2 = *(v0 + 144), v3) || (*(v0 + 128) = 0, *(v0 + 96) = 0u, *(v0 + 112) = 0u, sub_100005508(v0 + 96, &qword_10097BE78, &qword_1008003F8), sub_1002A9938(v2, v0 + 56), sub_10028088C(&qword_10097BE80, &qword_100800400), v4 = swift_dynamicCast(), v2 = *(v0 + 144), v4))
  {
    v5 = *(v0 + 136);
    sub_1000121F8((v0 + 96), v0 + 16);
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    sub_10002F5B4(v0 + 16, v6);
    v8 = (*(v7 + 24))(v6, v7);
    v9 = v2[3];
    v10 = v2[4];
    sub_10002CDC0(v2, v9);
    v11 = (*(v10 + 16))(v9, v10);
    v13 = v12;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100026AC0(v11, v13);
    [v8 setAwdlInfo:isa];

    v15 = *(v0 + 40);
    v16 = *(v0 + 48);
    v17 = sub_10002CDC0((v0 + 16), v15);
    v5[3] = v15;
    v5[4] = *(v16 + 8);
    v18 = sub_10002F604(v5);
    (*(*(v15 - 8) + 16))(v18, v17, v15);
    sub_10000C60C((v0 + 16));
    v19 = *(v0 + 8);
  }

  else
  {
    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    sub_100005508(v0 + 96, &qword_10097BE88, &qword_100800408);
    _StringGuts.grow(_:)(162);
    *(v0 + 16) = 0;
    *(v0 + 24) = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    v21._object = 0x800000010078EFD0;
    v21._countAndFlagsBits = 0xD0000000000000A0;
    String.append(_:)(v21);
    v22 = sub_100010F88(10, *(v0 + 16), *(v0 + 24));
    v24 = v23;
    sub_1000115C8();
    swift_allocError();
    *v25 = v22;
    *(v25 + 8) = v24;
    swift_willThrow();
    v19 = *(v0 + 8);
  }

  return v19();
}

uint64_t sub_1003ECED0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1003ECAB4(a1, a2);
}

uint64_t sub_1003ECF70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[93] = a3;
  v3[92] = a2;
  v3[91] = a1;
  v3[94] = type metadata accessor for RangingMetrics(0);
  v3[95] = swift_task_alloc();

  return _swift_task_switch(sub_1003ED00C, 0, 0);
}

uint64_t sub_1003ED00C()
{
  sub_1002A9938(*(v0 + 736), v0 + 112);
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  sub_10002CDC0((v0 + 112), v1);
  v3 = (*(v2 + 16))(v1, v2);
  v5 = v4;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100026AC0(v3, v5);
  v7 = sub_1001114F4(isa);

  if (!v7)
  {
    v22 = 0xD000000000000033;
    v23 = 0x800000010078F470;
    v24 = 1;
    goto LABEL_9;
  }

  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 768) = v8;

  v9 = [objc_opt_self() standardUserDefaults];
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 BOOLForKey:v10];

  if (v11)
  {

    if (qword_1009737E8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000C4AC(v12, qword_10097BA28);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Default classCUnlockSkipRanging is set. Skipping ranging", v15, 2u);
    }

    v16 = *(v0 + 728);

    v17 = *(v0 + 136);
    v18 = *(v0 + 144);
    v19 = sub_10002CDC0((v0 + 112), v17);
    v16[3] = v17;
    v16[4] = *(*(v18 + 8) + 8);
    v20 = sub_10002F604(v16);
    (*(*(v17 - 8) + 16))(v20, v19, v17);
    sub_10000C60C((v0 + 112));

    v21 = *(v0 + 8);
    goto LABEL_10;
  }

  sub_1002A9938(*(v0 + 736), v0 + 192);
  *(v0 + 776) = sub_10028088C(&qword_10097C2A8, &qword_100800FB8);
  sub_10028088C(&qword_10097C2B0, &qword_100800FC0);
  if (!swift_dynamicCast())
  {
    v44 = *(v0 + 744);
    *(v0 + 232) = 0u;
    *(v0 + 248) = 0u;
    *(v0 + 264) = 0;
    sub_100005508(v0 + 232, &qword_10097C2B8, &qword_100800FC8);
    v45 = type metadata accessor for SDAuthenticationCommonOperationInput(0);
    sub_1003FBDAC(v44 + *(v45 + 36), v0 + 312);
    if (*(v0 + 336))
    {
      v30 = (v0 + 272);
      sub_1000121F8((v0 + 312), v0 + 272);
      sub_10002CDC0((v0 + 272), *(v0 + 296));
      v33 = sub_1003FDBE8();
      goto LABEL_15;
    }

    sub_100005508(v0 + 312, &qword_1009819B0, &qword_100800360);
    v22 = 0xD000000000000027;
    v23 = 0x800000010078EF00;
    v24 = 37;
LABEL_9:
    v25 = sub_100010F88(v24, v22, v23);
    v27 = v26;
    sub_1000115C8();
    swift_allocError();
    *v28 = v25;
    *(v28 + 8) = v27;
    swift_willThrow();
    sub_10000C60C((v0 + 112));

    v21 = *(v0 + 8);
LABEL_10:

    return v21();
  }

  v30 = (v0 + 152);
  sub_1000121F8((v0 + 232), v0 + 152);
  v31 = *(v0 + 176);
  v32 = *(v0 + 184);
  sub_10002CDC0((v0 + 152), v31);
  v33 = (*(v32 + 16))(v31, v32);
LABEL_15:
  v35 = v33;
  v36 = v34;
  sub_10000C60C(v30);
  *(v0 + 784) = v36;
  *(v0 + 792) = v35;
  if (qword_1009737E8 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  sub_10000C4AC(v37, qword_10097BA28);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&_mh_execute_header, v38, v39, "Starting ranging as initiator", v40, 2u);
  }

  v42 = *(v0 + 136);
  v41 = *(v0 + 144);
  sub_10002CDC0((v0 + 112), v42);
  (*(*(v41 + 8) + 16))(v42);
  sub_10002CDC0((v0 + 352), *(v0 + 376));
  v43 = swift_task_alloc();
  *(v0 + 800) = v43;
  *v43 = v0;
  v43[1] = sub_1003ED628;

  return sub_10042CEDC(v8, v35, v36);
}

uint64_t sub_1003ED628(char a1)
{
  v3 = *v2;
  *(v3 + 816) = a1;
  *(v3 + 808) = v1;

  if (v1)
  {
    v4 = sub_1003EDC94;
  }

  else
  {
    v4 = sub_1003ED768;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003ED768()
{
  sub_10000C60C((v0 + 352));
  sub_1002A9938(v0 + 112, v0 + 392);
  sub_10028088C(&qword_10097C2C0, &qword_100800FD8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
    *(v0 + 64) = 0u;
    sub_100005508(v0 + 64, &qword_10097C2C8, &qword_100800FE0);
    if ((*(v0 + 816) & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1002A9938(v0 + 112, v0 + 472);
    sub_10028088C(&qword_10097C2D0, &qword_100800FE8);
    v22 = swift_dynamicCast();
    v23 = *(v0 + 792);
    v24 = *(v0 + 784);
    v25 = *(v0 + 728);
    if (v22)
    {
      sub_1000121F8((v0 + 512), v0 + 432);
      v26 = *(v0 + 456);
      v27 = *(v0 + 464);
      sub_10002F5B4(v0 + 432, v26);
      (*(v27 + 16))(1, v26, v27);
      sub_100026AC0(v23, v24);
      sub_1002A9938(v0 + 432, v0 + 552);
      sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
      swift_dynamicCast();
      sub_10000C60C((v0 + 432));
    }

    else
    {
      *(v0 + 544) = 0;
      *(v0 + 512) = 0u;
      *(v0 + 528) = 0u;
      sub_100005508(v0 + 512, &qword_10097C2D8, &qword_100800FF0);
      v28 = *(v0 + 136);
      v29 = *(v0 + 144);
      v30 = sub_10002CDC0((v0 + 112), v28);
      v25[3] = v28;
      v25[4] = *(*(v29 + 8) + 8);
      v31 = sub_10002F604(v25);
      (*(*(v28 - 8) + 16))(v31, v30, v28);
      sub_100026AC0(v23, v24);
    }

    sub_10000C60C((v0 + 112));

    v21 = *(v0 + 8);
    goto LABEL_9;
  }

  v1 = *(v0 + 760);
  v2 = *(v0 + 752);
  sub_1002D6398((v0 + 64), (v0 + 16));
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  sub_10002CDC0((v0 + 112), v4);
  (*(*(v3 + 8) + 16))(v4);
  v5 = *sub_10002CDC0((v0 + 592), *(v0 + 616));
  v6 = OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_metrics;
  swift_beginAccess();
  sub_1003FC900(v5 + v6, v1, type metadata accessor for RangingMetrics);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  sub_10002F5B4(v0 + 16, v7);
  v9 = (*(v8 + 32))(v0 + 672, v7, v8);
  v11 = v10;
  v12 = type metadata accessor for SDAuthenticationSessionMetrics(0);
  sub_1000168F4(v1, v11 + v12[20]);
  sub_1000168F4(v1 + v2[5], v11 + v12[21]);
  sub_1000168F4(v1 + v2[6], v11 + v12[22]);
  *(v11 + v12[23]) = *(v1 + v2[7]);
  sub_1000168F4(v1 + v2[8], v11 + v12[24]);
  sub_1000168F4(v1 + v2[9], v11 + v12[25]);
  v13 = v1 + v2[10];
  LODWORD(v12) = *v13;
  LOBYTE(v2) = *(v13 + 4);
  sub_1003FC968(v1, type metadata accessor for RangingMetrics);
  *(v11 + 84) = v12;
  *(v11 + 88) = v2;
  v9(v0 + 672, 0);
  sub_10000C60C((v0 + 592));
  v14 = *(v0 + 40);
  v15 = *(v0 + 56);
  v16 = sub_10002CDC0((v0 + 16), v14);
  *(v0 + 656) = v14;
  *(v0 + 664) = v15;
  v17 = sub_10002F604((v0 + 632));
  (*(*(v14 - 8) + 16))(v17, v16, v14);
  sub_10000C60C((v0 + 112));
  sub_1000121F8((v0 + 632), v0 + 112);
  sub_10000C60C((v0 + 16));
  if (*(v0 + 816))
  {
    goto LABEL_5;
  }

LABEL_3:
  v18 = *(v0 + 792);
  v19 = *(v0 + 784);
  type metadata accessor for SFAuthenticationErrorCode(0);
  sub_1003FCA70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode, &protocol conformance descriptor for SFAuthenticationErrorCode);
  swift_allocError();
  *v20 = 9;
  swift_willThrow();
  sub_100026AC0(v18, v19);
  sub_10000C60C((v0 + 112));

  v21 = *(v0 + 8);
LABEL_9:

  return v21();
}

uint64_t sub_1003EDC94()
{
  sub_100026AC0(v0[99], v0[98]);
  sub_10000C60C(v0 + 44);
  sub_10000C60C(v0 + 14);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1003EDD18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003ECF70(a1, a2, a3);
}

uint64_t sub_1003EDDC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[33] = a2;
  v3[34] = a3;
  v3[32] = a1;
  return _swift_task_switch(sub_1003EDDEC, 0, 0);
}

uint64_t sub_1003EDDEC()
{
  v1 = *(v0 + 264);
  v2 = v1[3];
  v3 = v1[4];
  sub_10002CDC0(v1, v2);
  v4 = (*(v3 + 16))(v2, v3);
  v6 = v5;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100026AC0(v4, v6);
  v8 = sub_1001114F4(isa);

  if (v8)
  {
    v9 = *(v0 + 264);
    v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    *(v0 + 280) = v10;

    sub_1002A9938(v9, v0 + 56);
    sub_10028088C(&qword_10097C2A8, &qword_100800FB8);
    sub_10028088C(&qword_10097C2B0, &qword_100800FC0);
    if (swift_dynamicCast())
    {
      v11 = (v0 + 16);
      sub_1000121F8((v0 + 96), v0 + 16);
      v12 = *(v0 + 40);
      v13 = *(v0 + 48);
      sub_10002CDC0((v0 + 16), v12);
      v14 = (*(v13 + 16))(v12, v13);
LABEL_4:
      v16 = v14;
      v17 = v15;
      sub_10000C60C(v11);
      *(v0 + 288) = v17;
      *(v0 + 296) = v16;
      if (qword_1009737E8 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      *(v0 + 304) = sub_10000C4AC(v18, qword_10097BA28);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "Starting ranging", v21, 2u);
      }

      v22 = *(v0 + 264);

      v24 = v1[3];
      v23 = v1[4];
      sub_10002CDC0(v22, v24);
      (*(*(v23 + 8) + 16))(v24);
      sub_10002CDC0((v0 + 216), *(v0 + 240));
      v25 = swift_task_alloc();
      *(v0 + 312) = v25;
      *v25 = v0;
      v25[1] = sub_1003EE248;

      return sub_10042EF1C(v10, v16, v17);
    }

    v30 = *(v0 + 272);
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0;
    sub_100005508(v0 + 96, &qword_10097C2B8, &qword_100800FC8);
    v31 = type metadata accessor for SDAuthenticationCommonOperationInput(0);
    sub_1003FBDAC(v30 + *(v31 + 36), v0 + 176);
    if (*(v0 + 200))
    {
      v11 = (v0 + 136);
      sub_1000121F8((v0 + 176), v0 + 136);
      sub_10002CDC0((v0 + 136), *(v0 + 160));
      v14 = sub_1003FDBE8();
      goto LABEL_4;
    }

    sub_100005508(v0 + 176, &qword_1009819B0, &qword_100800360);
    v28 = 0x800000010078EF00;
    v29 = 37;
    v27 = 0xD000000000000027;
  }

  else
  {
    v27 = 0xD000000000000033;
    v28 = 0x800000010078F470;
    v29 = 1;
  }

  v32 = sub_100010F88(v29, v27, v28);
  v34 = v33;
  sub_1000115C8();
  swift_allocError();
  *v35 = v32;
  *(v35 + 8) = v34;
  swift_willThrow();
  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_1003EE248()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_1003EE4D0;
  }

  else
  {
    v2 = sub_1003EE37C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003EE37C()
{
  sub_10000C60C(v0 + 27);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Ranging started", v3, 2u);
  }

  v5 = v0[36];
  v4 = v0[37];
  v7 = v0[32];
  v6 = v0[33];

  v8 = v6[3];
  v9 = v6[4];
  v10 = sub_10002CDC0(v6, v8);
  v7[3] = v8;
  v7[4] = *(*(v9 + 8) + 8);
  v11 = sub_10002F604(v7);
  (*(*(v8 - 8) + 16))(v11, v10, v8);
  sub_100026AC0(v4, v5);
  v12 = v0[1];

  return v12();
}

uint64_t sub_1003EE4D0()
{
  sub_100026AC0(v0[37], v0[36]);
  sub_10000C60C(v0 + 27);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1003EE53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003EDDC8(a1, a2, a3);
}

uint64_t sub_1003EE5EC(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return _swift_task_switch(sub_1003EE60C, 0, 0);
}

uint64_t sub_1003EE60C()
{
  v1 = v0[8];
  v2 = v1[3];
  v3 = v1[4];
  sub_10002CDC0(v1, v2);
  (*(v3 + 16))(v2, v3);
  sub_10002CDC0(v0 + 2, v0[5]);
  v4 = sub_10066A140();
  sub_10000C60C(v0 + 2);
  if (v4)
  {
    v5 = v0[7];
    v6 = v1[3];
    v7 = v1[4];
    v8 = sub_10002CDC0(v0[8], v6);
    v5[3] = v6;
    v5[4] = *(v7 + 8);
    v9 = sub_10002F604(v5);
    (*(*(v6 - 8) + 16))(v9, v8, v6);
  }

  else
  {
    v11 = sub_100010F88(33, 0x62616E6520746F4ELL, 0xEB0000000064656CLL);
    v13 = v12;
    sub_1000115C8();
    swift_allocError();
    *v14 = v11;
    *(v14 + 8) = v13;
    swift_willThrow();
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1003EE798(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1003EE5EC(a1, a2);
}

uint64_t sub_1003EE838(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v3 = type metadata accessor for Date();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_1003EE954, 0, 0);
}

uint64_t sub_1003EE954()
{
  v58 = v0;
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v4 = v0[3];
  v5 = v4[3];
  v6 = v4[4];
  sub_10002CDC0(v4, v5);
  (*(v6 + 16))(v5, v6);
  v7 = *(v2 + 48);
  if (v7(v3, 1, v1) == 1)
  {
    sub_100005508(v0[6], &qword_10097A7F0, &unk_1007FB600);
    v8 = sub_100010F88(11, 0x7473696765726E55, 0xEC00000064657265);
    v10 = v9;
    sub_1000115C8();
    swift_allocError();
    *v11 = v8;
    *(v11 + 8) = v10;
    swift_willThrow();
LABEL_7:

    v42 = v0[1];
    goto LABEL_8;
  }

  v12 = v0[7];
  v13 = v0[5];
  v14 = v0[3];
  v15 = *(v0[8] + 32);
  v15(v0[10], v0[6], v12);
  v56 = v4;
  v16 = v4[3];
  v17 = v14[5];
  sub_10002CDC0(v14, v16);
  (*(v17 + 16))(v16, v17);
  v18 = v7(v13, 1, v12);
  v19 = v0[10];
  if (v18 == 1)
  {
    v20 = v0[7];
    v21 = v0[8];
    sub_100005508(v0[5], &qword_10097A7F0, &unk_1007FB600);
    _StringGuts.grow(_:)(38);

    strcpy(v57, "Registered on ");
    HIBYTE(v57[1]) = -18;
    sub_1003FCA70(&qword_100983290, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v22);

    v23._countAndFlagsBits = 0xD000000000000016;
    v23._object = 0x800000010078F560;
    String.append(_:)(v23);
    v24 = sub_100010F88(36, v57[0], v57[1]);
    v26 = v25;
    sub_1000115C8();
    swift_allocError();
    *v27 = v24;
    *(v27 + 8) = v26;
    swift_willThrow();
    (*(v21 + 8))(v19, v20);
    goto LABEL_7;
  }

  v15(v0[9], v0[5], v0[7]);
  sub_1003FCA70(&qword_10097E910, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  if (dispatch thunk of static Comparable.< infix(_:_:)())
  {
    v54 = v0[10];
    v55 = v0[9];
    v29 = v0[7];
    v28 = v0[8];
    v31 = v0[3];
    v30 = v0[4];
    v57[0] = 0;
    v57[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(57);
    v32._countAndFlagsBits = 0xD00000000000001CLL;
    v32._object = 0x800000010078F580;
    String.append(_:)(v32);
    sub_1003FCA70(&qword_100983290, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v33._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v33);

    v34._object = 0x800000010078F5A0;
    v34._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v34);
    v35 = v56[3];
    v36 = v14[5];
    sub_10002CDC0(v31, v35);
    (*(v36 + 16))(v35, v36);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    sub_100005508(v30, &qword_10097A7F0, &unk_1007FB600);
    v37._countAndFlagsBits = 0x736C616620736920;
    v37._object = 0xE900000000000065;
    String.append(_:)(v37);
    LODWORD(v35) = sub_100010F88(36, 0, 0xE000000000000000);
    v39 = v38;
    sub_1000115C8();
    swift_allocError();
    *v40 = v35;
    *(v40 + 8) = v39;
    swift_willThrow();
    v41 = *(v28 + 8);
    v41(v55, v29);
    v41(v54, v29);
    goto LABEL_7;
  }

  v45 = v0[9];
  v44 = v0[10];
  v47 = v0[7];
  v46 = v0[8];
  v48 = v0[2];
  v50 = v56[3];
  v49 = v56[4];
  v51 = sub_10002CDC0(v0[3], v50);
  v48[3] = v50;
  v48[4] = *(v49 + 8);
  v52 = sub_10002F604(v48);
  (*(*(v50 - 8) + 16))(v52, v51, v50);
  v53 = *(v46 + 8);
  v53(v45, v47);
  v53(v44, v47);

  v42 = v0[1];
LABEL_8:

  return v42();
}

uint64_t sub_1003EEF9C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1003EE838(a1, a2);
}

uint64_t sub_1003EF03C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  return _swift_task_switch(sub_1003EF060, 0, 0);
}

uint64_t sub_1003EF060()
{
  v1 = *(v0 + 112);
  v2 = type metadata accessor for SDAuthenticationCommonOperationInput(0);
  sub_1003FBDAC(v1 + *(v2 + 36), v0 + 56);
  if (*(v0 + 80))
  {
    sub_1000121F8((v0 + 56), v0 + 16);
    sub_10002CDC0((v0 + 16), *(v0 + 40));
    sub_1003FDD00();
    sub_1002A9938(*(v0 + 104), *(v0 + 96));
    sub_10000C60C((v0 + 16));
  }

  else
  {
    sub_100005508(v0 + 56, &qword_1009819B0, &qword_100800360);
    v3 = sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);
    v5 = v4;
    sub_1000115C8();
    swift_allocError();
    *v6 = v3;
    *(v6 + 8) = v5;
    swift_willThrow();
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1003EF194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003EF03C(a1, a2, a3);
}

uint64_t sub_1003EF244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  return _swift_task_switch(sub_1003EF268, 0, 0);
}

uint64_t sub_1003EF268()
{
  v1 = *(v0 + 112);
  v2 = type metadata accessor for SDAuthenticationCommonOperationInput(0);
  sub_1003FBDAC(v1 + *(v2 + 36), v0 + 56);
  if (*(v0 + 80))
  {
    v3 = *(v0 + 112);
    sub_1000121F8((v0 + 56), v0 + 16);
    v4 = *(*sub_10002CDC0((v0 + 16), *(v0 + 40)) + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_localLTK);
    v5 = v3[8];
    v6 = v3[9];
    sub_10002CDC0(v3 + 5, v5);
    v7 = *(v6 + 8);

    result = v7(v5, v6);
    if (!v9)
    {
      __break(1u);
      return result;
    }

    v10 = result;
    v11 = v9;
    v12 = *(v4 + 112);
    v13 = swift_task_alloc();
    v13[2] = v4;
    v13[3] = v10;
    v13[4] = v11;
    v13[5] = sub_10031B534;
    v13[6] = 0;
    v14 = swift_task_alloc();
    *(v14 + 16) = sub_1003FC570;
    *(v14 + 24) = v13;
    os_unfair_lock_lock(v12 + 4);
    sub_1002F5418(v15);
    v21 = *(v0 + 96);
    v20 = *(v0 + 104);
    os_unfair_lock_unlock(v12 + 4);

    sub_1002A9938(v20, v21);
    sub_10000C60C((v0 + 16));
    v22 = *(v0 + 8);
  }

  else
  {
    sub_100005508(v0 + 56, &qword_1009819B0, &qword_100800360);
    v16 = sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);
    v18 = v17;
    sub_1000115C8();
    swift_allocError();
    *v19 = v16;
    *(v19 + 8) = v18;
    swift_willThrow();
    v22 = *(v0 + 8);
  }

  return v22();
}

uint64_t sub_1003EF4D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003EF244(a1, a2, a3);
}

uint64_t sub_1003EF580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  return _swift_task_switch(sub_1003EF5A4, 0, 0);
}

uint64_t sub_1003EF5A4()
{
  v36 = v0;
  v1 = sub_1003E7E2C();
  v3 = v2;
  v4 = v1;
  v5 = *(v0 + 112);
  v6 = type metadata accessor for SDAuthenticationCommonOperationInput(0);
  sub_1003FBDAC(v5 + *(v6 + 36), v0 + 56);
  if (!*(v0 + 80))
  {

    sub_100005508(v0 + 56, &qword_1009819B0, &qword_100800360);
    v11 = sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);
    v13 = v12;
    sub_1000115C8();
    swift_allocError();
    *v14 = v11;
    *(v14 + 8) = v13;
    swift_willThrow();
LABEL_13:
    v28 = *(v0 + 8);
    goto LABEL_14;
  }

  sub_1000121F8((v0 + 56), v0 + 16);
  v7 = *(*sub_10002CDC0((v0 + 16), *(v0 + 40)) + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_localLTK);
  v8 = *(v7 + 112);
  v9 = swift_task_alloc();
  v9[2] = v7;
  v9[3] = v4;
  v9[4] = v3;
  v10 = swift_task_alloc();
  *(v10 + 16) = sub_1003FCB48;
  *(v10 + 24) = v9;
  os_unfair_lock_lock(v8 + 4);
  sub_1003FCB28(&v35);
  os_unfair_lock_unlock(v8 + 4);
  v15 = v35;

  if (!*(&v15 + 1))
  {
    v23 = 0x7473696765726E55;
    v22 = 0xEC00000064657265;
    goto LABEL_12;
  }

  v16 = *(v0 + 104);
  v17 = v16[3];
  v18 = v16[4];
  sub_10002CDC0(v16, v17);
  if (v15 == (*(v18 + 16))(v17, v18) && *(&v15 + 1) == v19)
  {
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v21 & 1) == 0)
    {
      v22 = 0x800000010078F310;
      v23 = 0xD000000000000017;
LABEL_12:
      v24 = sub_100010F88(11, v23, v22);
      v26 = v25;
      sub_1000115C8();
      swift_allocError();
      *v27 = v24;
      *(v27 + 8) = v26;
      swift_willThrow();
      sub_10000C60C((v0 + 16));
      goto LABEL_13;
    }
  }

  v30 = *(v0 + 96);
  v31 = v16[3];
  v32 = v16[4];
  v33 = sub_10002CDC0(*(v0 + 104), v31);
  v30[3] = v31;
  v30[4] = *(v32 + 8);
  v34 = sub_10002F604(v30);
  (*(*(v31 - 8) + 16))(v34, v33, v31);
  sub_10000C60C((v0 + 16));
  v28 = *(v0 + 8);
LABEL_14:

  return v28();
}

uint64_t sub_1003EF920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003EF580(a1, a2, a3);
}

uint64_t sub_1003EF9D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v3[10] = type metadata accessor for SDAuthenticationCommonOperationInput(0);
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_1003EFA68, 0, 0);
}

uint64_t sub_1003EFA68()
{
  v42 = v0;
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 BOOLForKey:v2];

  if (v3)
  {
    if (qword_1009737E8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C4AC(v4, qword_10097BA28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "### TESTING ONLY: throwAKSCreateTokenError default set, throwing generic error", v7, 2u);
    }

    v8 = sub_100010F88(34, 0xD00000000000002CLL, 0x800000010078F530);
    v10 = v9;
    sub_1000115C8();
    swift_allocError();
    *v11 = v8;
    *(v11 + 8) = v10;
    swift_willThrow();

    v20 = v0[1];
  }

  else
  {
    v12 = v0[8];
    v13 = v12[3];
    v14 = v12[4];
    sub_10002CDC0(v12, v13);
    (*(v14 + 16))(v13, v14);
    sub_10002CDC0(v0 + 2, v0[5]);
    v15 = v12[3];
    v16 = v12[5];
    sub_10002CDC0(v12, v15);
    v17 = (*(v16 + 16))(v15, v16);
    v19 = v18;
    sub_100669484(v17, v18);

    sub_100026AC0(v17, v19);
    sub_10000C60C(v0 + 2);
    if (qword_1009737E8 != -1)
    {
      swift_once();
    }

    v23 = v0[11];
    v24 = v0[9];
    v25 = type metadata accessor for Logger();
    sub_10000C4AC(v25, qword_10097BA28);
    sub_1003FC900(v24, v23, type metadata accessor for SDAuthenticationCommonOperationInput);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    v28 = os_log_type_enabled(v26, v27);
    v29 = v0[11];
    if (v28)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v41 = v31;
      *v30 = 136315138;
      v32 = sub_100027340();
      v34 = v33;
      sub_1003FC968(v29, type metadata accessor for SDAuthenticationCommonOperationInput);
      v35 = sub_10000C4E4(v32, v34, &v41);

      *(v30 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v26, v27, "AUTHENTICATION SUCCEEDED for %s", v30, 0xCu);
      sub_10000C60C(v31);
    }

    else
    {

      sub_1003FC968(v29, type metadata accessor for SDAuthenticationCommonOperationInput);
    }

    v36 = v0[7];
    v37 = v12[3];
    v38 = v12[4];
    v39 = sub_10002CDC0(v0[8], v37);
    v36[3] = v37;
    v36[4] = *(v38 + 8);
    v40 = sub_10002F604(v36);
    (*(*(v37 - 8) + 16))(v40, v39, v37);

    v20 = v0[1];
  }

  return v20();
}

uint64_t sub_1003EFF8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003EF9D0(a1, a2, a3);
}

uint64_t sub_1003F003C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[23] = a2;
  v3[24] = a3;
  v3[22] = a1;
  v3[25] = type metadata accessor for SDAuthenticationCommonOperationInput(0);
  v3[26] = swift_task_alloc();

  return _swift_task_switch(sub_1003F00D4, 0, 0);
}

uint64_t sub_1003F00D4()
{
  v42 = v0;
  v1 = *(v0 + 192);
  v2 = *(*(v0 + 200) + 36);
  sub_1003FBDAC(v1 + v2, v0 + 56);
  if (*(v0 + 80))
  {
    v3 = *(v0 + 184);
    sub_1000121F8((v0 + 56), v0 + 16);
    v4 = sub_10002CDC0((v0 + 16), *(v0 + 40));
    v5 = v3[3];
    v6 = v3[4];
    sub_10002CDC0(v3, v5);
    v7 = (*(v6 + 16))(v5, v6);
    v9 = v8;
    v10 = *v4 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_aksSession;
    v11 = *v10;
    LOBYTE(v10) = *(v10 + 8);
    *(v0 + 216) = v11;
    *(v0 + 224) = v10;
    sub_10028088C(&qword_10097C2A0, &qword_100800F80);
    Optional.tryUnwrap(_:file:line:)();
    v12 = sub_1004BD0BC(v7, v9, *(v0 + 228));
    sub_10028BCC0(v12, v22);
    sub_100026AC0(v7, v9);
    sub_10000C60C((v0 + 16));
    sub_1003FBDAC(v1 + v2, v0 + 136);
    if (*(v0 + 160))
    {
      sub_1000121F8((v0 + 136), v0 + 96);
      sub_10002CDC0((v0 + 96), *(v0 + 120));
      sub_1003FD950();
      sub_10000C60C((v0 + 96));
    }

    else
    {
      sub_100005508(v0 + 136, &qword_1009819B0, &qword_100800360);
      sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);
    }

    if (qword_1009737E8 != -1)
    {
      swift_once();
    }

    v23 = *(v0 + 208);
    v24 = *(v0 + 192);
    v25 = type metadata accessor for Logger();
    sub_10000C4AC(v25, qword_10097BA28);
    sub_1003FC900(v24, v23, type metadata accessor for SDAuthenticationCommonOperationInput);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 208);
    if (v28)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v41 = v31;
      *v30 = 136315138;
      v32 = sub_100027340();
      v34 = v33;
      sub_1003FC968(v29, type metadata accessor for SDAuthenticationCommonOperationInput);
      v35 = sub_10000C4E4(v32, v34, &v41);

      *(v30 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v26, v27, "AUTHENTICATION SUCCEEDED for %s", v30, 0xCu);
      sub_10000C60C(v31);
    }

    else
    {

      sub_1003FC968(v29, type metadata accessor for SDAuthenticationCommonOperationInput);
    }

    v36 = *(v0 + 176);
    v37 = v3[3];
    v38 = v3[4];
    v39 = sub_10002CDC0(*(v0 + 184), v37);
    v36[3] = v37;
    v36[4] = *(v38 + 8);
    v40 = sub_10002F604(v36);
    (*(*(v37 - 8) + 16))(v40, v39, v37);

    v20 = *(v0 + 8);
  }

  else
  {
    sub_100005508(v0 + 56, &qword_1009819B0, &qword_100800360);
    v13 = sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);
    v15 = v14;
    sub_1000115C8();
    swift_allocError();
    *v16 = v13;
    *(v16 + 8) = v15;
    swift_willThrow();
    LODWORD(v15) = sub_100010F88(34, 0xD00000000000003ALL, 0x800000010078F430);
    v18 = v17;
    sub_1000115C8();
    swift_allocError();
    *v19 = v15;
    *(v19 + 8) = v18;
    swift_willThrow();

    v20 = *(v0 + 8);
  }

  return v20();
}

uint64_t sub_1003F05F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003F003C(a1, a2, a3);
}

uint64_t sub_1003F06A4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1003F06C4, 0, 0);
}

uint64_t sub_1003F06C4()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  sub_10002CDC0(v1, v2);
  v4 = (*(v3 + 16))(v2, v3);
  if (v5 >> 60 == 15)
  {
    v6 = sub_100010F88(1, 0xD000000000000012, 0x800000010078F100);
    v8 = v7;
    sub_1000115C8();
    swift_allocError();
    *v9 = v6;
    *(v9 + 8) = v8;
    swift_willThrow();
  }

  else
  {
    v12 = v0[2];
    v11 = v0[3];
    sub_10028BCC0(v4, v5);
    v14 = v1[3];
    v13 = v1[4];
    v15 = sub_10002CDC0(v11, v14);
    v12[3] = v14;
    v12[4] = *(v13 + 8);
    v16 = sub_10002F604(v12);
    (*(*(v14 - 8) + 16))(v16, v15, v14);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1003F0838(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return _swift_task_switch(sub_1003F0858, 0, 0);
}

uint64_t sub_1003F0858()
{
  v1 = v0[9];
  sub_1002D63B0(v1, (v0 + 2));
  v2 = v0[5];
  v3 = v0[7];
  sub_10002F5B4((v0 + 2), v2);
  v4 = (*(v3 + 24))(v2, v3);
  v5 = v1[3];
  v6 = v1[4];
  sub_10002CDC0(v1, v5);
  (*(v6 + 24))(v5, v6);
  if (v7)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v9 = v0[9];
  [v4 setAppName:v8];

  v10 = v0[5];
  v11 = v0[7];
  sub_10002F5B4((v0 + 2), v10);
  v12 = (*(v11 + 24))(v10, v11);
  v13 = v1[3];
  v14 = v1[4];
  sub_10002CDC0(v9, v13);
  (*(v14 + 16))(v13, v14);
  if (v15)
  {
    v16 = String._bridgeToObjectiveC()();
  }

  else
  {
    v16 = 0;
  }

  v17 = v0[8];
  v18 = v0[9];
  [v12 setBundleID:v16];

  v19 = v0[5];
  v20 = v0[7];
  sub_10002F5B4((v0 + 2), v19);
  v21 = (*(v20 + 24))(v19, v20);
  v23 = v1[3];
  v22 = v1[4];
  sub_10002CDC0(v18, v23);
  [v21 setBiometricOnly:{(*(v22 + 32))(v23, v22) & 1}];

  v24 = v0[5];
  v25 = v0[6];
  v26 = sub_10002CDC0(v0 + 2, v24);
  v17[3] = v24;
  v17[4] = *(v25 + 8);
  v27 = sub_10002F604(v17);
  (*(*(v24 - 8) + 16))(v27, v26, v24);
  sub_10000C60C(v0 + 2);
  v28 = v0[1];

  return v28();
}

uint64_t sub_1003F0B04(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1003F0838(a1, a2);
}

uint64_t sub_1003F0BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1003F0BC8, 0, 0);
}

uint64_t sub_1003F0BC8()
{
  v1 = v0[3];
  v2 = v0[4];
  v31 = type metadata accessor for SDAuthenticationCommonOperationInput(0);
  v32 = sub_1004FE068(*(v2 + *(v31 + 28)));
  v3 = v2[8];
  v4 = v2[9];
  sub_10002CDC0(v2 + 5, v3);
  (*(v4 + 8))(v3, v4);
  v6 = v5;
  v7 = v1[3];
  v8 = v1[4];
  sub_10002CDC0(v1, v7);
  (*(v8 + 24))(v7, v8);
  v9 = v1[3];
  v10 = v1[4];
  sub_10002CDC0(v1, v9);
  (*(v10 + 16))(v9, v10);
  v11 = v1[3];
  v12 = v1[4];
  sub_10002CDC0(v1, v11);
  v13 = (*(v12 + 32))(v11, v12);
  if (v6)
  {
    v14 = String._bridgeToObjectiveC()();
  }

  else
  {
    v14 = 0;
  }

  v15 = objc_allocWithZone(SFAuthenticationApproveInfo);
  v16 = String._bridgeToObjectiveC()();

  v17 = String._bridgeToObjectiveC()();

  v18 = [v15 initWithType:v32 idsDeviceID:v14 appName:v16 bundleID:v17 biometricOnly:v13 & 1];

  if (v18)
  {
    v19 = v0[4];
    sub_10002CDC0(v19, v19[3]);
    sub_1006D2FCC(v19 + *(v31 + 24), v18);
    v24 = v0[2];
    v25 = v1[3];
    v26 = v1[4];
    v27 = sub_10002CDC0(v0[3], v25);
    v24[3] = v25;
    v24[4] = *(v26 + 8);
    v28 = sub_10002F604(v24);
    (*(*(v25 - 8) + 16))(v28, v27, v25);
  }

  else
  {
    v20 = sub_100010F88(10, 0xD00000000000001DLL, 0x800000010078F330);
    v22 = v21;
    sub_1000115C8();
    swift_allocError();
    *v23 = v20;
    *(v23 + 8) = v22;
    swift_willThrow();
  }

  v29 = v0[1];

  return v29();
}

uint64_t sub_1003F0ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003F0BA4(a1, a2, a3);
}

uint64_t sub_1003F0FA0(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = type metadata accessor for Date();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_1003F1060, 0, 0);
}

uint64_t sub_1003F1060()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  sub_1002D63B0(v4, (v0 + 2));
  v6 = v0[5];
  v7 = v0[6];
  sub_10002F5B4((v0 + 2), v6);
  v8 = (*(v7 + 24))(v6, v7);
  sub_10002CDC0(v4, v4[3]);
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v10 = v9;
  (*(v2 + 8))(v1, v3);
  [v8 setSessionStartDate:v10];

  v11 = v0[5];
  v12 = v0[6];
  v13 = sub_10002CDC0(v0 + 2, v11);
  v5[3] = v11;
  v5[4] = *(v12 + 8);
  v14 = sub_10002F604(v5);
  (*(*(v11 - 8) + 16))(v14, v13, v11);
  sub_10000C60C(v0 + 2);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1003F11E0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1003F0FA0(a1, a2);
}

uint64_t sub_1003F1280(uint64_t a1, uint64_t a2)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
  return _swift_task_switch(sub_1003F12A0, 0, 0);
}

uint64_t sub_1003F12A0()
{
  v1 = v0[16];
  sub_1003FCA0C(v1, (v0 + 2));
  v2 = v1[3];
  v3 = v1[6];
  sub_10002CDC0(v1, v2);
  v4 = (*(v3 + 16))(v2, v3);
  if (v5 >> 60 == 15)
  {
    v6 = sub_100010F88(1, 0xD000000000000010, 0x800000010078F370);
    v8 = v7;
    sub_1000115C8();
    swift_allocError();
    *v9 = v6;
    *(v9 + 8) = v8;
    swift_willThrow();
  }

  else
  {
    v10 = v4;
    v11 = v5;
    v12 = v0[16];
    v13 = v1[3];
    v14 = v12[4];
    sub_10002CDC0(v12, v13);
    (*(v14 + 16))(v13, v14);
    sub_10002CDC0(v0 + 10, v0[13]);
    v15 = v1[3];
    v16 = v12[5];
    sub_10002CDC0(v12, v15);
    v17 = *(v16 + 16);
    sub_100294008(v10, v11);
    v18 = v17(v15, v16);
    v20 = v19;
    sub_100669814(v10, v11);
    sub_100669484(v18, v20);
    v24 = v23;
    v25 = v0[15];
    sub_100026AC0(v18, v20);
    sub_10028BCC0(v10, v11);
    v26 = Data.init(referencing:)();
    v28 = v27;

    sub_10000C60C(v0 + 10);
    v29 = v0[5];
    v30 = v0[9];
    sub_10002F5B4((v0 + 2), v29);
    v31 = (*(v30 + 24))(v29, v30);
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v31 setAksToken:isa];

    v33 = v0[5];
    v34 = v0[6];
    v35 = sub_10002CDC0(v0 + 2, v33);
    v25[3] = v33;
    v25[4] = *(v34 + 8);
    v36 = sub_10002F604(v25);
    (*(*(v33 - 8) + 16))(v36, v35, v33);
    sub_100026AC0(v26, v28);
    sub_10028BCC0(v10, v11);
  }

  sub_10000C60C(v0 + 2);
  v21 = v0[1];

  return v21();
}

uint64_t sub_1003F15F4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1003F1280(a1, a2);
}

uint64_t sub_1003F1694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return _swift_task_switch(sub_1003F16B8, 0, 0);
}

uint64_t sub_1003F16B8()
{
  v1 = v0[12];
  sub_1002A9938(v0[11], (v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  sub_10002F5B4((v0 + 2), v2);
  v4 = (*(v3 + 24))(v2, v3);
  [v4 setVersion:1];

  v5 = v0[5];
  v6 = v0[6];
  sub_10002F5B4((v0 + 2), v5);
  v7 = (*(v6 + 24))(v5, v6);
  v8 = type metadata accessor for SDAuthenticationCommonOperationInput(0);
  UUID.uuidString.getter();
  v9 = String._bridgeToObjectiveC()();

  [v7 setSessionID:v9];

  v10 = v0[5];
  v11 = v0[6];
  sub_10002F5B4((v0 + 2), v10);
  v12 = (*(v11 + 24))(v10, v11);
  if (HIDWORD(*(v1 + *(v8 + 28))))
  {
    __break(1u);
  }

  else
  {
    v13 = v12;
    [v12 setType:?];

    if (qword_1009737E8 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v14 = type metadata accessor for Logger();
  sub_10000C4AC(v14, qword_10097BA28);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    swift_beginAccess();
    v19 = v0[5];
    v20 = v0[6];
    sub_10002F5B4((v0 + 2), v19);
    v21 = (*(v20 + 24))(v19, v20);
    swift_endAccess();
    *(v17 + 4) = v21;
    *v18 = v21;
    _os_log_impl(&_mh_execute_header, v15, v16, "Sending %@", v17, 0xCu);
    sub_100005508(v18, &qword_100975400, &qword_1007F65D0);
  }

  v22 = v0[10];

  swift_beginAccess();
  v23 = v0[5];
  v24 = v0[6];
  v25 = sub_10002CDC0(v0 + 2, v23);
  v22[3] = v23;
  v22[4] = *(v24 + 8);
  v26 = sub_10002F604(v22);
  (*(*(v23 - 8) + 16))(v26, v25, v23);
  sub_10000C60C(v0 + 2);
  v27 = v0[1];

  return v27();
}

uint64_t sub_1003F1A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003F1694(a1, a2, a3);
}

uint64_t sub_1003F1AC8(uint64_t a1, uint64_t a2)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return _swift_task_switch(sub_1003F1AE8, 0, 0);
}

uint64_t sub_1003F1AE8()
{
  v1 = v0[14];
  sub_1002D63B0(v1, (v0 + 2));
  v2 = sub_10002CDC0(v1, v1[3]);
  v3 = (v2 + *(_s14MacUnlockPhoneV17InitialKeyContextVMa(0) + 36));
  v4 = v3[1];
  if (v4 >> 60 == 15)
  {
    v5 = sub_100010F88(1, 0xD000000000000012, 0x800000010078F0E0);
    v7 = v6;
    sub_1000115C8();
    swift_allocError();
    *v8 = v5;
    *(v8 + 8) = v7;
    swift_willThrow();
  }

  else
  {
    v9 = *v3;
    v10 = v0[14];
    v11 = v1[3];
    v12 = v10[4];
    sub_10002CDC0(v10, v11);
    v13 = *(v12 + 8);
    v14 = *(v13 + 16);
    sub_100294008(v9, v4);
    v14(v11, v13);
    sub_10002CDC0(v0 + 8, v0[11]);
    sub_100294008(v9, v4);
    sub_100669814(v9, v4);
    sub_100669484(0, 0xF000000000000000);
    v18 = v17;
    v19 = v0[13];
    sub_10028BCC0(v9, v4);
    v20 = Data.init(referencing:)();
    v22 = v21;

    sub_10000C60C(v0 + 8);
    v23 = v0[5];
    v24 = v0[7];
    sub_10002F5B4((v0 + 2), v23);
    v25 = (*(v24 + 24))(v23, v24);
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v25 setAksToken:isa];

    v27 = v0[5];
    v28 = v0[7];
    v29 = sub_10002CDC0(v0 + 2, v27);
    v19[3] = v27;
    v19[4] = *(v28 + 8);
    v30 = sub_10002F604(v19);
    (*(*(v27 - 8) + 16))(v30, v29, v27);
    sub_100026AC0(v20, v22);
    sub_10028BCC0(v9, v4);
  }

  sub_10000C60C(v0 + 2);
  v15 = v0[1];

  return v15();
}

uint64_t sub_1003F1DE0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1003F1AC8(a1, a2);
}

uint64_t sub_1003F1E80(uint64_t a1, uint64_t a2)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return _swift_task_switch(sub_1003F1EA0, 0, 0);
}

void sub_1003F1EA0()
{
  v49 = v0;
  v1 = v0[15];
  sub_1003FCAB8(v1, (v0 + 2));
  v2 = v1[3];
  v3 = v1[4];
  sub_10002CDC0(v1, v2);
  v4 = (*(v3 + 16))(v2, v3);
  if (v5 >> 60 != 15)
  {
    v10 = v4;
    v11 = v5;
    if (qword_1009737E8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000C4AC(v12, qword_10097BA28);
    sub_100294008(v10, v11);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    sub_10028BCC0(v10, v11);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v48 = v16;
      *v15 = 136315138;
      sub_100294008(v10, v11);
      v17 = Data.description.getter();
      v19 = v18;
      sub_10028BCC0(v10, v11);
      v20 = sub_10000C4E4(v17, v19, &v48);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v13, v14, "Starting MacApprovePhone AKS session with acmToken: %s", v15, 0xCu);
      sub_10000C60C(v16);
    }

    v21 = v11 >> 62;
    if ((v11 >> 62) > 1)
    {
      if (v21 != 2)
      {
        goto LABEL_17;
      }

      v23 = *(v10 + 16);
      v22 = *(v10 + 24);
      v24 = __OFSUB__(v22, v23);
      v25 = v22 - v23;
      if (!v24)
      {
        if (v25 == 1)
        {
          goto LABEL_14;
        }

LABEL_17:
        v29 = v0[15];
        v30 = v1[3];
        v31 = v29[5];
        sub_10002CDC0(v29, v30);
        (*(*(v31 + 8) + 16))(v30);
        sub_10002CDC0(v0 + 9, v0[12]);
        sub_100294008(v10, v11);
        sub_100669814(v10, v11);
        sub_100669484(0, 0xF000000000000000);
        v35 = v33;
        sub_10028BCC0(v10, v11);
        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v21)
      {
        if (BYTE6(v11) != 1)
        {
          goto LABEL_17;
        }

LABEL_14:
        v26 = v0[15];
        v27 = v1[3];
        v28 = v26[5];
        sub_10002CDC0(v26, v27);
        (*(*(v28 + 8) + 16))(v27);
        sub_10002CDC0(v0 + 9, v0[12]);
        sub_100669814(0, 0xF000000000000000);
        sub_100669484(0, 0xF000000000000000);
        v35 = v34;
LABEL_21:
        v36 = Data.init(referencing:)();
        v38 = v37;

        sub_10000C60C(v0 + 9);
        v39 = v0[14];
        v40 = v0[5];
        v41 = v0[8];
        sub_10002F5B4((v0 + 2), v40);
        v42 = (*(v41 + 24))(v40, v41);
        isa = Data._bridgeToObjectiveC()().super.isa;
        [v42 setAksToken:isa];

        sub_100026AC0(v36, v38);
        v44 = v0[5];
        v45 = v0[6];
        v46 = sub_10002CDC0(v0 + 2, v44);
        v39[3] = v44;
        v39[4] = *(v45 + 8);
        v47 = sub_10002F604(v39);
        (*(*(v44 - 8) + 16))(v47, v46, v44);
        sub_10028BCC0(v10, v11);
        sub_10000C60C(v0 + 2);
        v32 = v0[1];
        goto LABEL_18;
      }

      if (!__OFSUB__(HIDWORD(v10), v10))
      {
        if (HIDWORD(v10) - v10 == 1)
        {
          goto LABEL_14;
        }

        goto LABEL_17;
      }
    }

    __break(1u);
    return;
  }

  v6 = sub_100010F88(30, 0xD000000000000019, 0x800000010078F350);
  v8 = v7;
  sub_1000115C8();
  swift_allocError();
  *v9 = v6;
  *(v9 + 8) = v8;
  swift_willThrow();
  sub_10000C60C(v0 + 2);
  v32 = v0[1];
LABEL_18:

  v32();
}

uint64_t sub_1003F23C0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1003F1E80(a1, a2);
}

uint64_t sub_1003F2460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[17] = a2;
  v3[18] = a3;
  v3[16] = a1;
  return _swift_task_switch(sub_1003F2484, 0, 0);
}

uint64_t sub_1003F2484()
{
  v1 = *(v0 + 144);
  v2 = type metadata accessor for SDAuthenticationCommonOperationInput(0);
  sub_1003FBDAC(v1 + *(v2 + 36), v0 + 56);
  if (!*(v0 + 80))
  {
    sub_100005508(v0 + 56, &qword_1009819B0, &qword_100800360);
    v3 = sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);
    v5 = v4;
    sub_1000115C8();
    swift_allocError();
    *v6 = v3;
    *(v6 + 8) = v5;
    swift_willThrow();
LABEL_4:
    v7 = *(v0 + 8);
    goto LABEL_5;
  }

  sub_1000121F8((v0 + 56), v0 + 16);
  sub_10002CDC0((v0 + 16), *(v0 + 40));
  v9 = sub_1003FCCA0(0, 0xF000000000000000, 0, 0xF000000000000000);
  v11 = v10;
  v12 = *(v0 + 136);
  sub_10000C60C((v0 + 16));
  sub_10000C5B0(v12, v0 + 96);
  sub_10028088C(&qword_10097BE70, &qword_1008003F0);
  v13 = swift_dynamicCast();
  if ((v13 & 1) == 0)
  {
    v14 = *(v0 + 136);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    sub_100005508(v0 + 56, &qword_10097BE78, &qword_1008003F8);
    sub_10000C5B0(v14, v0 + 96);
    sub_10028088C(&qword_10097BE80, &qword_100800400);
    if (!swift_dynamicCast())
    {
      *(v0 + 56) = 0u;
      *(v0 + 72) = 0u;
      *(v0 + 88) = 0;
      sub_100005508(v0 + 56, &qword_10097BE88, &qword_100800408);
      _StringGuts.grow(_:)(114);
      *(v0 + 16) = 0;
      *(v0 + 24) = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      v24._countAndFlagsBits = 0xD000000000000070;
      v24._object = 0x800000010078F1D0;
      String.append(_:)(v24);
      v25 = sub_100010F88(10, *(v0 + 16), *(v0 + 24));
      v27 = v26;
      sub_1000115C8();
      swift_allocError();
      *v28 = v25;
      *(v28 + 8) = v27;
      swift_willThrow();
      sub_100026AC0(v9, v11);
      goto LABEL_4;
    }
  }

  v15 = *(v0 + 128);
  sub_1000121F8((v0 + 56), v0 + 16);
  v16 = *(v0 + 40);
  v17 = *(v0 + 48);
  sub_10002F5B4(v0 + 16, v16);
  v18 = (*(v17 + 24))(v16, v17);
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v18 setAksToken:isa];

  v20 = *(v0 + 40);
  v21 = *(v0 + 48);
  v22 = sub_10002CDC0((v0 + 16), v20);
  v15[3] = v20;
  v15[4] = *(v21 + 8);
  v23 = sub_10002F604(v15);
  (*(*(v20 - 8) + 16))(v23, v22, v20);
  sub_100026AC0(v9, v11);
  sub_10000C60C((v0 + 16));
  v7 = *(v0 + 8);
LABEL_5:

  return v7();
}

uint64_t sub_1003F28A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003F2460(a1, a2, a3);
}

uint64_t sub_1003F2950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  return _swift_task_switch(sub_1003F2974, 0, 0);
}

uint64_t sub_1003F2974()
{
  v43 = v0;
  v1 = *(v0 + 152);
  sub_1002D63B0(v1, v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  sub_10002CDC0(v1, v2);
  v4 = (*(v3 + 16))(v2, v3);
  if (v5 >> 60 == 15)
  {
    v6 = sub_100010F88(30, 0xD000000000000019, 0x800000010078F350);
    v8 = v7;
    sub_1000115C8();
    swift_allocError();
    *v9 = v6;
    *(v9 + 8) = v8;
    swift_willThrow();
  }

  else
  {
    v10 = v4;
    v11 = v5;
    if (qword_1009737E8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000C4AC(v12, qword_10097BA28);
    sub_100294008(v10, v11);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    sub_10028BCC0(v10, v11);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v42 = v16;
      *v15 = 136315138;
      sub_100294008(v10, v11);
      v17 = Data.description.getter();
      v19 = v18;
      sub_10028BCC0(v10, v11);
      v20 = sub_10000C4E4(v17, v19, &v42);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v13, v14, "Starting AKS session with acmToken: %s", v15, 0xCu);
      sub_10000C60C(v16);
    }

    v21 = *(v0 + 160);
    v22 = type metadata accessor for SDAuthenticationCommonOperationInput(0);
    sub_1003FBDAC(v21 + *(v22 + 36), v0 + 104);
    if (*(v0 + 128))
    {
      sub_1000121F8((v0 + 104), v0 + 64);
      sub_10002CDC0((v0 + 64), *(v0 + 88));
      sub_100294008(v10, v11);
      v23 = sub_1003FCCA0(v10, v11, 0, 0xF000000000000000);
      v29 = *(v0 + 144);
      v30 = v23;
      v32 = v31;
      sub_10028BCC0(v10, v11);
      sub_10000C60C((v0 + 64));
      v33 = *(v0 + 40);
      v34 = *(v0 + 56);
      sub_10002F5B4(v0 + 16, v33);
      v35 = (*(v34 + 24))(v33, v34);
      isa = Data._bridgeToObjectiveC()().super.isa;
      [v35 setAksToken:isa];

      v37 = *(v0 + 40);
      v38 = *(v0 + 48);
      v39 = sub_10002CDC0((v0 + 16), v37);
      v29[3] = v37;
      v29[4] = *(v38 + 8);
      v40 = sub_10002F604(v29);
      (*(*(v37 - 8) + 16))(v40, v39, v37);
      sub_100026AC0(v30, v32);
      sub_10028BCC0(v10, v11);
      sub_10000C60C((v0 + 16));
      v41 = *(v0 + 8);
      goto LABEL_11;
    }

    sub_100005508(v0 + 104, &qword_1009819B0, &qword_100800360);
    v24 = sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);
    v26 = v25;
    sub_1000115C8();
    swift_allocError();
    *v27 = v24;
    *(v27 + 8) = v26;
    swift_willThrow();
    sub_10028BCC0(v10, v11);
  }

  sub_10000C60C((v0 + 16));
  v41 = *(v0 + 8);
LABEL_11:

  return v41();
}

uint64_t sub_1003F2E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003F2950(a1, a2, a3);
}

uint64_t sub_1003F2EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return _swift_task_switch(sub_1003F2EE0, 0, 0);
}

uint64_t sub_1003F2EE0()
{
  v1 = *(v0 + 160);
  sub_1003FCAB8(v1, v0 + 16);
  v2 = v1[3];
  v3 = v1[5];
  sub_10002CDC0(v1, v2);
  v4 = (*(v3 + 16))(v2, v3);
  if (v5 >> 60 == 15)
  {
    v6 = sub_100010F88(1, 0xD000000000000010, 0x800000010078F370);
    v8 = v7;
    sub_1000115C8();
    swift_allocError();
    *v9 = v6;
    *(v9 + 8) = v8;
    swift_willThrow();
  }

  else
  {
    v10 = v4;
    v11 = v5;
    v12 = *(v0 + 168);
    v13 = type metadata accessor for SDAuthenticationCommonOperationInput(0);
    sub_1003FBDAC(v12 + *(v13 + 36), v0 + 112);
    if (*(v0 + 136))
    {
      v14 = *(v0 + 160);
      sub_1000121F8((v0 + 112), v0 + 72);
      sub_10002CDC0((v0 + 72), *(v0 + 96));
      v15 = v1[3];
      v16 = v14[4];
      sub_10002CDC0(v14, v15);
      v17 = *(v16 + 16);
      sub_100294008(v10, v11);
      v18 = v17(v15, v16);
      v20 = v19;
      v21 = sub_1003FCCA0(v10, v11, v18, v19);
      v27 = *(v0 + 152);
      v28 = v21;
      v29 = v18;
      v31 = v30;
      sub_100026AC0(v29, v20);
      sub_10028BCC0(v10, v11);
      sub_10000C60C((v0 + 72));
      v32 = *(v0 + 40);
      v33 = *(v0 + 64);
      sub_10002F5B4(v0 + 16, v32);
      v34 = (*(v33 + 24))(v32, v33);
      isa = Data._bridgeToObjectiveC()().super.isa;
      [v34 setAksToken:isa];

      v36 = *(v0 + 40);
      v37 = *(v0 + 48);
      v38 = sub_10002CDC0((v0 + 16), v36);
      v27[3] = v36;
      v27[4] = *(v37 + 8);
      v39 = sub_10002F604(v27);
      (*(*(v36 - 8) + 16))(v39, v38, v36);
      sub_100026AC0(v28, v31);
      sub_10028BCC0(v10, v11);
      sub_10000C60C((v0 + 16));
      v40 = *(v0 + 8);
      goto LABEL_7;
    }

    sub_100005508(v0 + 112, &qword_1009819B0, &qword_100800360);
    v22 = sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);
    v24 = v23;
    sub_1000115C8();
    swift_allocError();
    *v25 = v22;
    *(v25 + 8) = v24;
    swift_willThrow();
    sub_10028BCC0(v10, v11);
  }

  sub_10000C60C((v0 + 16));
  v40 = *(v0 + 8);
LABEL_7:

  return v40();
}

uint64_t sub_1003F328C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003F2EBC(a1, a2, a3);
}

uint64_t sub_1003F333C(uint64_t a1, uint64_t a2)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return _swift_task_switch(sub_1003F335C, 0, 0);
}

uint64_t sub_1003F335C()
{
  v1 = v0[15];
  sub_1003FCAB8(v1, (v0 + 2));
  v2 = v1[3];
  v3 = v1[4];
  sub_10002CDC0(v1, v2);
  (*(v3 + 16))(v2, v3);
  sub_10002CDC0(v0 + 9, v0[12]);
  v4 = v1[3];
  v5 = v1[5];
  sub_10002CDC0(v1, v4);
  v6 = (*(v5 + 16))(v4, v5);
  v8 = v7;
  sub_100669814(0, 0xF000000000000000);
  sub_100669484(v6, v8);
  v11 = v10;
  v12 = v0[14];
  sub_100026AC0(v6, v8);
  v13 = Data.init(referencing:)();
  v15 = v14;

  sub_10000C60C(v0 + 9);
  v16 = v0[5];
  v17 = v0[8];
  sub_10002F5B4((v0 + 2), v16);
  v18 = (*(v17 + 24))(v16, v17);
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v18 setAksToken:isa];

  v20 = v0[5];
  v21 = v0[6];
  v22 = sub_10002CDC0(v0 + 2, v20);
  v12[3] = v20;
  v12[4] = *(v21 + 8);
  v23 = sub_10002F604(v12);
  (*(*(v20 - 8) + 16))(v23, v22, v20);
  sub_100026AC0(v13, v15);
  sub_10000C60C(v0 + 2);
  v24 = v0[1];

  return v24();
}

uint64_t sub_1003F35B4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1003F333C(a1, a2);
}

uint64_t sub_1003F3654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  return _swift_task_switch(sub_1003F3678, 0, 0);
}

uint64_t sub_1003F3678()
{
  v1 = *(v0 + 160);
  sub_1002D63B0(*(v0 + 152), v0 + 16);
  v2 = type metadata accessor for SDAuthenticationCommonOperationInput(0);
  sub_1003FBDAC(v1 + *(v2 + 36), v0 + 104);
  if (*(v0 + 128))
  {
    v3 = *(v0 + 152);
    sub_1000121F8((v0 + 104), v0 + 64);
    sub_10002CDC0((v0 + 64), *(v0 + 88));
    v4 = v3[3];
    v5 = v3[4];
    sub_10002CDC0(v3, v4);
    v6 = (*(v5 + 16))(v4, v5);
    v8 = v7;
    v9 = sub_1003FCCA0(0, 0xF000000000000000, v6, v7);
    v14 = *(v0 + 144);
    v15 = v9;
    v17 = v16;
    sub_100026AC0(v6, v8);
    sub_10000C60C((v0 + 64));
    v18 = *(v0 + 40);
    v19 = *(v0 + 56);
    sub_10002F5B4(v0 + 16, v18);
    v20 = (*(v19 + 24))(v18, v19);
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v20 setAksToken:isa];

    v22 = *(v0 + 40);
    v23 = *(v0 + 48);
    v24 = sub_10002CDC0((v0 + 16), v22);
    v14[3] = v22;
    v14[4] = *(v23 + 8);
    v25 = sub_10002F604(v14);
    (*(*(v22 - 8) + 16))(v25, v24, v22);
    sub_100026AC0(v15, v17);
  }

  else
  {
    sub_100005508(v0 + 104, &qword_1009819B0, &qword_100800360);
    v10 = sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);
    v12 = v11;
    sub_1000115C8();
    swift_allocError();
    *v13 = v10;
    *(v13 + 8) = v12;
    swift_willThrow();
  }

  sub_10000C60C((v0 + 16));
  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1003F3920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003F3654(a1, a2, a3);
}

uint64_t sub_1003F39D0(uint64_t a1, uint64_t a2)
{
  *(v2 + 192) = a1;
  *(v2 + 200) = a2;
  return _swift_task_switch(sub_1003F39F0, 0, 0);
}

uint64_t sub_1003F39F0()
{
  v1 = *(v0 + 200);
  sub_1002D63B0(v1, v0 + 16);
  sub_1002D63B0(v1, v0 + 64);
  sub_10028088C(&qword_10097C2E0, &qword_100801090);
  sub_10028088C(&qword_10097C2E8, &qword_100801098);
  if (swift_dynamicCast())
  {
    sub_1000121F8((v0 + 152), v0 + 112);
    v2 = *(v0 + 136);
    v3 = *(v0 + 144);
    sub_10002CDC0((v0 + 112), v2);
    v4 = (*(v3 + 16))(v2, v3);
    v6 = v5;
    sub_10000C60C((v0 + 112));
  }

  else
  {
    *(v0 + 184) = 0;
    *(v0 + 168) = 0u;
    *(v0 + 152) = 0u;
    sub_100005508(v0 + 152, &qword_10097C2F0, &qword_1008010A0);
    v4 = 0;
    v6 = 0xF000000000000000;
  }

  v7 = *(v0 + 200);
  v8 = v7[3];
  v9 = v7[4];
  sub_10002CDC0(v7, v8);
  (*(v9 + 16))(v8, v9);
  sub_10002CDC0((v0 + 64), *(v0 + 88));
  sub_100669484(v4, v6);
  v11 = v10;
  v12 = *(v0 + 192);
  sub_10000C60C((v0 + 64));
  v13 = *(v0 + 40);
  v14 = *(v0 + 56);
  sub_10002F5B4(v0 + 16, v13);
  v15 = (*(v14 + 24))(v13, v14);
  v16 = Data.init(referencing:)();
  v18 = v17;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100026AC0(v16, v18);
  [v15 setAksToken:isa];

  v20 = *(v0 + 40);
  v21 = *(v0 + 48);
  v22 = sub_10002CDC0((v0 + 16), v20);
  v12[3] = v20;
  v12[4] = *(v21 + 8);
  v23 = sub_10002F604(v12);
  (*(*(v20 - 8) + 16))(v23, v22, v20);
  sub_10028BCC0(v4, v6);

  sub_10000C60C((v0 + 16));
  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1003F3CCC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1003F39D0(a1, a2);
}

uint64_t sub_1003F3D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  return _swift_task_switch(sub_1003F3D90, 0, 0);
}

uint64_t sub_1003F3D90()
{
  v1 = *(v0 + 160);
  sub_1002D63B0(*(v0 + 152), v0 + 16);
  v2 = type metadata accessor for SDAuthenticationCommonOperationInput(0);
  sub_1003FBDAC(v1 + *(v2 + 36), v0 + 104);
  if (*(v0 + 128))
  {
    v3 = *(v0 + 152);
    sub_1000121F8((v0 + 104), v0 + 64);
    v4 = sub_10002CDC0((v0 + 64), *(v0 + 88));
    v5 = v3[3];
    v6 = v3[4];
    sub_10002CDC0(v3, v5);
    v7 = (*(v6 + 16))(v5, v6);
    v9 = v8;
    v10 = *v4 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_aksSession;
    v11 = *v10;
    LOBYTE(v10) = *(v10 + 8);
    *(v0 + 104) = v11;
    *(v0 + 112) = v10;
    sub_10028088C(&qword_10097C2A0, &qword_100800F80);
    Optional.tryUnwrap(_:file:line:)();
    v16 = sub_1004BD0BC(v7, v9, *(v0 + 168));
    v18 = v17;
    sub_100026AC0(v7, v9);
    sub_10000C60C((v0 + 64));
    v21 = *(v0 + 40);
    v22 = *(v0 + 56);
    sub_10002F5B4(v0 + 16, v21);
    v23 = (*(v22 + 24))(v21, v22);
    if (v18 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      sub_100294008(v16, v18);
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_10028BCC0(v16, v18);
    }

    v25 = *(v0 + 144);
    [v23 setAksToken:isa];

    v26 = *(v0 + 40);
    v27 = *(v0 + 48);
    v28 = sub_10002CDC0((v0 + 16), v26);
    v25[3] = v26;
    v25[4] = *(v27 + 8);
    v29 = sub_10002F604(v25);
    (*(*(v26 - 8) + 16))(v29, v28, v26);
    sub_10028BCC0(v16, v18);
    sub_10000C60C((v0 + 16));
    v19 = *(v0 + 8);
  }

  else
  {
    sub_100005508(v0 + 104, &qword_1009819B0, &qword_100800360);
    v12 = sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);
    v14 = v13;
    sub_1000115C8();
    swift_allocError();
    *v15 = v12;
    *(v15 + 8) = v14;
    swift_willThrow();
    sub_10000C60C((v0 + 16));
    v19 = *(v0 + 8);
  }

  return v19();
}

uint64_t sub_1003F40E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003F3D6C(a1, a2, a3);
}

uint64_t sub_1003F4198(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return _swift_task_switch(sub_1003F41B8, 0, 0);
}

uint64_t sub_1003F41B8()
{
  sub_1002D63B0(v0[9], (v0 + 2));
  v1 = sub_1003FC3A8();
  v2 = v0[5];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v1;
  v7 = v6;
  sub_10002F5B4((v0 + 2), v2);
  v8 = (*(v4 + 24))(v2, v4);
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v8 setRangingToken:isa];

  v10 = v0[5];
  v11 = v0[6];
  sub_10002F5B4((v0 + 2), v10);
  v12 = *(v11 + 16);
  sub_100294008(v5, v7);
  v12(v5, v7, v10, v11);
  v13 = v0[5];
  v14 = v0[7];
  v15 = sub_10002CDC0(v0 + 2, v13);
  v3[3] = v13;
  v3[4] = *(v14 + 8);
  v16 = sub_10002F604(v3);
  (*(*(v13 - 8) + 16))(v16, v15, v13);
  sub_100026AC0(v5, v7);
  sub_10000C60C(v0 + 2);
  v17 = v0[1];

  return v17();
}

uint64_t sub_1003F4384(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1003F4198(a1, a2);
}

uint64_t sub_1003F4424(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = type metadata accessor for Date();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1003F451C, 0, 0);
}

uint64_t sub_1003F451C()
{
  v2 = v0 + 13;
  v1 = v0[13];
  v3 = v0[11];
  v22 = v0[10];
  v4 = v0[9];
  sub_1002D63B0(v4, (v0 + 2));
  v5 = v0[5];
  v6 = v0[7];
  sub_10002F5B4((v0 + 2), v5);
  v7 = (*(v6 + 24))(v5, v6);
  v8 = v4[3];
  v9 = v4[4];
  sub_10002CDC0(v4, v8);
  (*(v9 + 16))(v8, v9);
  if ((*(v3 + 48))(v1, 1, v22) == 1)
  {
    v2 = v0 + 12;
    sub_100005508(v0[13], &qword_10097A7F0, &unk_1007FB600);
    static Date.distantFuture.getter();
  }

  v10 = *v2;
  v11 = v0[10];
  v12 = v0[11];
  v13 = v0[8];
  Date.timeIntervalSince1970.getter();
  v15 = v14;
  (*(v12 + 8))(v10, v11);
  [v7 setUnlockDate:v15];

  v16 = v0[5];
  v17 = v0[6];
  v18 = sub_10002CDC0(v0 + 2, v16);
  v13[3] = v16;
  v13[4] = *(v17 + 8);
  v19 = sub_10002F604(v13);
  (*(*(v16 - 8) + 16))(v19, v18, v16);
  sub_10000C60C(v0 + 2);

  v20 = v0[1];

  return v20();
}

uint64_t sub_1003F4730(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1003F4424(a1, a2);
}

uint64_t sub_1003F47D0(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v2[10] = swift_task_alloc();
  v3 = type metadata accessor for Date();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_1003F48D4, 0, 0);
}

uint64_t sub_1003F48D4()
{
  v42 = v0;
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  sub_1002D63B0(v3, (v0 + 2));
  v5 = v3[3];
  v6 = v3[4];
  sub_10002CDC0(v3, v5);
  (*(v6 + 16))(v5, v6);
  if ((*(v2 + 48))(v4, 1, v1) == 1)
  {
    sub_100005508(v0[10], &qword_10097A7F0, &unk_1007FB600);
    v7 = sub_100010F88(11, 0xD00000000000002ELL, 0x800000010078F0B0);
    v9 = v8;
    sub_1000115C8();
    swift_allocError();
    *v10 = v7;
    *(v10 + 8) = v9;
    swift_willThrow();
    sub_10000C60C(v0 + 2);

    v11 = v0[1];
  }

  else
  {
    (*(v0[12] + 32))(v0[14], v0[10], v0[11]);
    if (qword_1009737E8 != -1)
    {
      swift_once();
    }

    v12 = v0[13];
    v13 = v0[14];
    v14 = v0[11];
    v15 = v0[12];
    v16 = type metadata accessor for Logger();
    sub_10000C4AC(v16, qword_10097BA28);
    (*(v15 + 16))(v12, v13, v14);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    v19 = os_log_type_enabled(v17, v18);
    v21 = v0[12];
    v20 = v0[13];
    v22 = v0[11];
    if (v19)
    {
      v23 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v41 = v39;
      *v23 = 136315138;
      sub_1003FCA70(&qword_100983290, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      v40 = *(v21 + 8);
      v40(v20, v22);
      v27 = sub_10000C4E4(v24, v26, &v41);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v17, v18, "Registration success date: %s", v23, 0xCu);
      sub_10000C60C(v39);
    }

    else
    {

      v40 = *(v21 + 8);
      v40(v20, v22);
    }

    v28 = v0[14];
    v29 = v0[11];
    v30 = v0[5];
    v32 = v0[7];
    v31 = v0[8];
    sub_10002F5B4((v0 + 2), v30);
    v33 = (*(v32 + 24))(v30, v32);
    Date.timeIntervalSince1970.getter();
    [v33 setUnlockDate:?];

    v34 = v0[5];
    v35 = v0[6];
    v36 = sub_10002CDC0(v0 + 2, v34);
    v31[3] = v34;
    v31[4] = *(v35 + 8);
    v37 = sub_10002F604(v31);
    (*(*(v34 - 8) + 16))(v37, v36, v34);
    v40(v28, v29);
    sub_10000C60C(v0 + 2);

    v11 = v0[1];
  }

  return v11();
}

uint64_t sub_1003F4D3C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1003F47D0(a1, a2);
}

uint64_t sub_1003F4DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[18] = a2;
  v3[19] = a3;
  v3[17] = a1;
  return _swift_task_switch(sub_1003F4E00, 0, 0);
}

uint64_t sub_1003F4E00()
{
  v37 = v0;
  sub_1002A9938(*(v0 + 144), v0 + 16);
  v1 = sub_1003E7E2C();
  v3 = v2;
  v4 = v1;
  v5 = *(v0 + 152);
  v6 = type metadata accessor for SDAuthenticationCommonOperationInput(0);
  sub_1003FBDAC(v5 + *(v6 + 36), v0 + 96);
  if (!*(v0 + 120))
  {

    sub_100005508(v0 + 96, &qword_1009819B0, &qword_100800360);
    v11 = sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);
    v13 = v12;
    sub_1000115C8();
    swift_allocError();
    *v14 = v11;
    *(v14 + 8) = v13;
    swift_willThrow();
LABEL_4:
    sub_10000C60C((v0 + 16));
    v15 = *(v0 + 8);
    goto LABEL_5;
  }

  sub_1000121F8((v0 + 96), v0 + 56);
  v7 = *(*sub_10002CDC0((v0 + 56), *(v0 + 80)) + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_localLTK);
  v8 = *(v7 + 112);
  v9 = swift_task_alloc();
  v9[2] = v7;
  v9[3] = v4;
  v9[4] = v3;
  v10 = swift_task_alloc();
  *(v10 + 16) = sub_1003FC538;
  *(v10 + 24) = v9;
  os_unfair_lock_lock(v8 + 4);
  sub_1003FC558(&v36);
  os_unfair_lock_unlock(v8 + 4);
  v17 = v36;

  if (!*(&v17 + 1))
  {
    v32 = sub_100010F88(11, 0xD00000000000002ELL, 0x800000010078F0B0);
    v34 = v33;
    sub_1000115C8();
    swift_allocError();
    *v35 = v32;
    *(v35 + 8) = v34;
    swift_willThrow();
    sub_10000C60C((v0 + 56));
    goto LABEL_4;
  }

  if (qword_1009737E8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_10000C4AC(v18, qword_10097BA28);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *&v36 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_10000C4E4(v17, *(&v17 + 1), &v36);
    _os_log_impl(&_mh_execute_header, v19, v20, "Registration ID: %s", v21, 0xCu);
    sub_10000C60C(v22);
  }

  v23 = *(v0 + 136);
  v24 = *(v0 + 40);
  v25 = *(v0 + 48);
  sub_10002F5B4(v0 + 16, v24);
  v26 = (*(v25 + 24))(v24, v25);
  v27 = String._bridgeToObjectiveC()();

  [v26 setRegistrationID:v27];

  v28 = *(v0 + 40);
  v29 = *(v0 + 48);
  v30 = sub_10002CDC0((v0 + 16), v28);
  v23[3] = v28;
  v23[4] = *(v29 + 8);
  v31 = sub_10002F604(v23);
  (*(*(v28 - 8) + 16))(v31, v30, v28);
  sub_10000C60C((v0 + 56));
  sub_10000C60C((v0 + 16));
  v15 = *(v0 + 8);
LABEL_5:

  return v15();
}

uint64_t sub_1003F5264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003F4DDC(a1, a2, a3);
}

uint64_t sub_1003F5314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return _swift_task_switch(sub_1003F5338, 0, 0);
}

uint64_t sub_1003F5338()
{
  v1 = v0[12];
  sub_1002A9938(v0[11], (v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  sub_10002F5B4((v0 + 2), v2);
  v4 = (*(v3 + 24))(v2, v3);
  [v4 setVersion:1];

  v5 = v0[5];
  v6 = v0[6];
  sub_10002F5B4((v0 + 2), v5);
  v7 = (*(v6 + 24))(v5, v6);
  v8 = type metadata accessor for SDAuthenticationCommonOperationInput(0);
  UUID.uuidString.getter();
  v9 = String._bridgeToObjectiveC()();

  [v7 setSessionID:v9];

  v10 = v0[5];
  v11 = v0[6];
  sub_10002F5B4((v0 + 2), v10);
  v12 = (*(v11 + 24))(v10, v11);
  if (HIDWORD(*(v1 + *(v8 + 28))))
  {
    __break(1u);
  }

  else
  {
    v13 = v12;
    [v12 setType:?];

    if (qword_1009737E8 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v14 = type metadata accessor for Logger();
  sub_10000C4AC(v14, qword_10097BA28);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    swift_beginAccess();
    v19 = v0[5];
    v20 = v0[6];
    sub_10002F5B4((v0 + 2), v19);
    v21 = (*(v20 + 24))(v19, v20);
    swift_endAccess();
    *(v17 + 4) = v21;
    *v18 = v21;
    _os_log_impl(&_mh_execute_header, v15, v16, "Sending %@", v17, 0xCu);
    sub_100005508(v18, &qword_100975400, &qword_1007F65D0);
  }

  v22 = v0[10];

  swift_beginAccess();
  v23 = v0[5];
  v24 = v0[6];
  v25 = sub_10002CDC0(v0 + 2, v23);
  v22[3] = v23;
  v22[4] = *(v24 + 8);
  v26 = sub_10002F604(v22);
  (*(*(v23 - 8) + 16))(v26, v25, v23);
  sub_10000C60C(v0 + 2);
  v27 = v0[1];

  return v27();
}

uint64_t sub_1003F5698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003F5314(a1, a2, a3);
}

uint64_t sub_1003F5748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return _swift_task_switch(sub_1003F576C, 0, 0);
}

uint64_t sub_1003F576C()
{
  v1 = v0[12];
  sub_1002A9938(v0[11], (v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  sub_10002F5B4((v0 + 2), v2);
  v4 = (*(v3 + 24))(v2, v3);
  [v4 setVersion:1];

  v5 = v0[5];
  v6 = v0[6];
  sub_10002F5B4((v0 + 2), v5);
  v7 = (*(v6 + 24))(v5, v6);
  v8 = type metadata accessor for SDAuthenticationCommonOperationInput(0);
  UUID.uuidString.getter();
  v9 = String._bridgeToObjectiveC()();

  [v7 setSessionID:v9];

  v10 = v0[5];
  v11 = v0[6];
  sub_10002F5B4((v0 + 2), v10);
  v12 = (*(v11 + 24))(v10, v11);
  if (HIDWORD(*(v1 + *(v8 + 28))))
  {
    __break(1u);
  }

  else
  {
    v13 = v12;
    [v12 setType:?];

    if (qword_1009737E8 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v14 = type metadata accessor for Logger();
  sub_10000C4AC(v14, qword_10097BA28);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    swift_beginAccess();
    v19 = v0[5];
    v20 = v0[6];
    sub_10002F5B4((v0 + 2), v19);
    v21 = (*(v20 + 24))(v19, v20);
    swift_endAccess();
    *(v17 + 4) = v21;
    *v18 = v21;
    _os_log_impl(&_mh_execute_header, v15, v16, "Sending %@", v17, 0xCu);
    sub_100005508(v18, &qword_100975400, &qword_1007F65D0);
  }

  v22 = v0[10];

  swift_beginAccess();
  v23 = v0[5];
  v24 = v0[6];
  v25 = sub_10002CDC0(v0 + 2, v23);
  v22[3] = v23;
  v22[4] = *(v24 + 8);
  v26 = sub_10002F604(v22);
  (*(*(v23 - 8) + 16))(v26, v25, v23);
  sub_10000C60C(v0 + 2);
  v27 = v0[1];

  return v27();
}

uint64_t sub_1003F5ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003F5748(a1, a2, a3);
}

uint64_t sub_1003F5B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return _swift_task_switch(sub_1003F5BA0, 0, 0);
}

uint64_t sub_1003F5BA0()
{
  sub_1002A9938(v0[11], (v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  sub_10002F5B4((v0 + 2), v1);
  v3 = (*(v2 + 24))(v1, v2);
  [v3 setVersion:1];

  v4 = v0[5];
  v5 = v0[6];
  sub_10002F5B4((v0 + 2), v4);
  v6 = (*(v5 + 24))(v4, v5);
  type metadata accessor for SDAuthenticationCommonOperationInput(0);
  UUID.uuidString.getter();
  v7 = String._bridgeToObjectiveC()();

  [v6 setSessionID:v7];

  if (qword_1009737E8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_10097BA28);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    swift_beginAccess();
    v13 = v0[5];
    v14 = v0[6];
    sub_10002F5B4((v0 + 2), v13);
    v15 = (*(v14 + 24))(v13, v14);
    swift_endAccess();
    *(v11 + 4) = v15;
    *v12 = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "Sending %@", v11, 0xCu);
    sub_100005508(v12, &qword_100975400, &qword_1007F65D0);
  }

  v16 = v0[10];

  swift_beginAccess();
  v17 = v0[5];
  v18 = v0[6];
  v19 = sub_10002CDC0(v0 + 2, v17);
  v16[3] = v17;
  v16[4] = *(v18 + 8);
  v20 = sub_10002F604(v16);
  (*(*(v17 - 8) + 16))(v20, v19, v17);
  sub_10000C60C(v0 + 2);
  v21 = v0[1];

  return v21();
}

uint64_t sub_1003F5EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003F5B7C(a1, a2, a3);
}

uint64_t sub_1003F5F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return _swift_task_switch(sub_1003F5F78, 0, 0);
}

uint64_t sub_1003F5F78()
{
  sub_1002A9938(v0[11], (v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  sub_10002F5B4((v0 + 2), v1);
  v3 = (*(v2 + 24))(v1, v2);
  [v3 setVersion:1];

  v4 = v0[5];
  v5 = v0[6];
  sub_10002F5B4((v0 + 2), v4);
  v6 = (*(v5 + 24))(v4, v5);
  type metadata accessor for SDAuthenticationCommonOperationInput(0);
  UUID.uuidString.getter();
  v7 = String._bridgeToObjectiveC()();

  [v6 setSessionID:v7];

  if (qword_1009737E8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_10097BA28);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    swift_beginAccess();
    v13 = v0[5];
    v14 = v0[6];
    sub_10002F5B4((v0 + 2), v13);
    v15 = (*(v14 + 24))(v13, v14);
    swift_endAccess();
    *(v11 + 4) = v15;
    *v12 = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "Sending %@", v11, 0xCu);
    sub_100005508(v12, &qword_100975400, &qword_1007F65D0);
  }

  v16 = v0[10];

  swift_beginAccess();
  v17 = v0[5];
  v18 = v0[6];
  v19 = sub_10002CDC0(v0 + 2, v17);
  v16[3] = v17;
  v16[4] = *(v18 + 8);
  v20 = sub_10002F604(v16);
  (*(*(v17 - 8) + 16))(v20, v19, v17);
  sub_10000C60C(v0 + 2);
  v21 = v0[1];

  return v21();
}

uint64_t sub_1003F627C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003F5F54(a1, a2, a3);
}

uint64_t sub_1003F632C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return _swift_task_switch(sub_1003F6350, 0, 0);
}

uint64_t sub_1003F6350()
{
  sub_1002A9938(v0[11], (v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  sub_10002F5B4((v0 + 2), v1);
  v3 = (*(v2 + 32))(v1, v2);
  [v3 setVersion:1];

  v4 = v0[5];
  v5 = v0[6];
  sub_10002F5B4((v0 + 2), v4);
  v6 = (*(v5 + 32))(v4, v5);
  type metadata accessor for SDAuthenticationCommonOperationInput(0);
  UUID.uuidString.getter();
  v7 = String._bridgeToObjectiveC()();

  [v6 setSessionID:v7];

  v8 = v0[5];
  v9 = v0[6];
  sub_10002F5B4((v0 + 2), v8);
  v10 = (*(v9 + 32))(v8, v9);
  [v10 setSuccess:1];

  if (qword_1009737E8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000C4AC(v11, qword_10097BA28);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    swift_beginAccess();
    v16 = v0[5];
    v17 = v0[6];
    sub_10002F5B4((v0 + 2), v16);
    v18 = (*(v17 + 32))(v16, v17);
    swift_endAccess();
    *(v14 + 4) = v18;
    *v15 = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "Sending %@", v14, 0xCu);
    sub_100005508(v15, &qword_100975400, &qword_1007F65D0);
  }

  v19 = v0[10];

  swift_beginAccess();
  v20 = v0[5];
  v21 = v0[6];
  v22 = sub_10002CDC0(v0 + 2, v20);
  v19[3] = v20;
  v19[4] = *(v21 + 16);
  v23 = sub_10002F604(v19);
  (*(*(v20 - 8) + 16))(v23, v22, v20);
  sub_10000C60C(v0 + 2);
  v24 = v0[1];

  return v24();
}

uint64_t sub_1003F669C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003F632C(a1, a2, a3);
}

uint64_t sub_1003F674C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[18] = a2;
  v3[19] = a3;
  v3[17] = a1;
  return _swift_task_switch(sub_1003F6770, 0, 0);
}

uint64_t sub_1003F6770()
{
  v37 = v0;
  sub_1002A9938(*(v0 + 144), v0 + 16);
  v3 = sub_1003E7E2C();
  v5 = v4;
  v6 = *(v0 + 152);
  v7 = *(type metadata accessor for SDAuthenticationCommonOperationInput(0) + 36);
  sub_1003FBDAC(v6 + v7, v0 + 96);
  if (*(v0 + 120))
  {
    sub_1000121F8((v0 + 96), v0 + 56);
    v8 = *(*sub_10002CDC0((v0 + 56), *(v0 + 80)) + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_localLTK);
    v9 = *(v8 + 112);
    v10 = swift_task_alloc();
    v10[2] = v8;
    v10[3] = v3;
    v10[4] = v5;
    v11 = swift_task_alloc();
    *(v11 + 16) = sub_1003FC5C8;
    *(v11 + 24) = v10;
    os_unfair_lock_lock(v9 + 4);
    sub_1003FCB28(&v36);
    os_unfair_lock_unlock(v9 + 4);
    v13 = *(&v36 + 1);
    v12 = v36;

    sub_10000C60C((v0 + 56));
  }

  else
  {
    sub_100005508(v0 + 96, &qword_1009819B0, &qword_100800360);
    sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);

    v12 = 0;
    v13 = 0;
  }

  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  sub_10002F5B4(v0 + 16, v14);
  (*(v15 + 24))(v12, v13, v14, v15);
  sub_1003FBDAC(v6 + v7, v0 + 96);
  if (*(v0 + 120))
  {
    sub_1000121F8((v0 + 96), v0 + 56);
    v16 = *(*sub_10002CDC0((v0 + 56), *(v0 + 80)) + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_localLTK);
    v17 = *(v16 + 112);
    v18 = swift_task_alloc();
    v18[2] = v16;
    v18[3] = v3;
    v18[4] = v5;
    v19 = swift_task_alloc();
    *(v19 + 16) = sub_1003FC5A8;
    *(v19 + 24) = v18;
    os_unfair_lock_lock(v17 + 4);
    sub_1003206A8(v20);
    os_unfair_lock_unlock(v17 + 4);

    sub_10000C60C((v0 + 56));
    if (qword_1009737E8 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_10000C4AC(v25, qword_10097BA28);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v36 = v29;
      *v28 = 136315138;
      v30 = sub_10000C4E4(v3, v5, &v36);

      *(v28 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v26, v27, "Unpaired %s", v28, 0xCu);
      sub_10000C60C(v29);
    }

    else
    {
    }

    v31 = *(v0 + 136);
    v32 = *(v0 + 40);
    v33 = *(v0 + 48);
    v34 = sub_10002CDC0((v0 + 16), v32);
    v31[3] = v32;
    v31[4] = *(v33 + 8);
    v35 = sub_10002F604(v31);
    (*(*(v32 - 8) + 16))(v35, v34, v32);
    sub_10000C60C((v0 + 16));
    v1 = *(v0 + 8);
  }

  else
  {

    sub_100005508(v0 + 96, &qword_1009819B0, &qword_100800360);
    v21 = sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);
    v23 = v22;
    sub_1000115C8();
    swift_allocError();
    *v24 = v21;
    *(v24 + 8) = v23;
    swift_willThrow();
    sub_10000C60C((v0 + 16));
    v1 = *(v0 + 8);
  }

  return v1();
}

uint64_t sub_1003F6C70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003F674C(a1, a2, a3);
}

uint64_t sub_1003F6D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  return _swift_task_switch(sub_1003F6D44, 0, 0);
}

uint64_t sub_1003F6D44()
{
  v1 = v0[12];
  sub_1002D63B0(v1, (v0 + 2));
  v2 = v0[5];
  v3 = v0[7];
  sub_10002F5B4((v0 + 2), v2);
  v4 = (*(v3 + 24))(v2, v3);
  [v4 setVersion:1];

  v5 = sub_10002CDC0(v1, v1[3]);
  if (!*(v5 + *(_s6UnpairV23InitialInitiatorContextVMa(0) + 24) + 8))
  {
    v35 = sub_100010F88(10, 0xD000000000000012, 0x800000010078F2B0);
    v37 = v36;
    sub_1000115C8();
    swift_allocError();
    *v38 = v35;
    *(v38 + 8) = v37;
    swift_willThrow();
    sub_10000C60C(v0 + 2);
    v34 = v0[1];
    goto LABEL_8;
  }

  v6 = v0[13];
  v7 = v0[5];
  v8 = v0[7];
  sub_10002F5B4((v0 + 2), v7);
  v9 = *(v8 + 24);

  v10 = v9(v7, v8);
  v11 = String._bridgeToObjectiveC()();

  [v10 setPairingID:v11];

  v12 = v0[5];
  v13 = v0[7];
  sub_10002F5B4((v0 + 2), v12);
  v14 = (*(v13 + 24))(v12, v13);
  v15 = type metadata accessor for SDAuthenticationCommonOperationInput(0);
  UUID.uuidString.getter();
  v16 = String._bridgeToObjectiveC()();

  [v14 setSessionID:v16];

  v17 = v0[5];
  v18 = v0[7];
  sub_10002F5B4((v0 + 2), v17);
  v19 = (*(v18 + 24))(v17, v18);
  if (HIDWORD(*(v6 + *(v15 + 28))))
  {
    __break(1u);
    goto LABEL_12;
  }

  v20 = v19;
  [v19 setType:?];

  if (qword_1009737E8 != -1)
  {
LABEL_12:
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_10000C4AC(v21, qword_10097BA28);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    swift_beginAccess();
    v26 = v0[5];
    v27 = v0[7];
    sub_10002F5B4((v0 + 2), v26);
    v28 = (*(v27 + 24))(v26, v27);
    swift_endAccess();
    *(v24 + 4) = v28;
    *v25 = v28;
    _os_log_impl(&_mh_execute_header, v22, v23, "Sending %@", v24, 0xCu);
    sub_100005508(v25, &qword_100975400, &qword_1007F65D0);
  }

  v29 = v0[11];

  swift_beginAccess();
  v30 = v0[5];
  v31 = v0[6];
  v32 = sub_10002CDC0(v0 + 2, v30);
  v29[3] = v30;
  v29[4] = *(v31 + 8);
  v33 = sub_10002F604(v29);
  (*(*(v30 - 8) + 16))(v33, v32, v30);
  sub_10000C60C(v0 + 2);
  v34 = v0[1];
LABEL_8:

  return v34();
}

uint64_t sub_1003F71D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003F6D20(a1, a2, a3);
}

uint64_t sub_1003F7284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  return _swift_task_switch(sub_1003F72A8, 0, 0);
}

uint64_t sub_1003F72A8()
{
  v37 = v0;
  v3 = sub_1003E7E2C();
  v5 = v4;
  v6 = *(v0 + 112);
  v7 = type metadata accessor for SDAuthenticationCommonOperationInput(0);
  sub_1003FBDAC(v6 + *(v7 + 36), v0 + 56);
  if (*(v0 + 80))
  {
    v8 = *(v0 + 104);
    sub_1000121F8((v0 + 56), v0 + 16);
    v9 = sub_10002CDC0((v0 + 16), *(v0 + 40));
    v10 = sub_10002CDC0(v8, v8[3]);
    v11 = (v10 + *(_s6UnpairV27HandlePairingDisableContextVMa(0) + 24));
    v13 = *v11;
    v12 = v11[1];
    v14 = *(*v9 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_localLTK);
    v15 = swift_task_alloc();
    v15[2] = v13;
    v15[3] = v12;
    v15[4] = v3;
    v15[5] = v5;
    v15[6] = v14;
    v16 = *(v14 + 112);
    v17 = swift_task_alloc();
    v17[2] = v14;
    v17[3] = v3;
    v17[4] = v5;
    v17[5] = sub_1003FC898;
    v17[6] = v15;
    v18 = swift_task_alloc();
    *(v18 + 16) = sub_1003FCB78;
    *(v18 + 24) = v17;

    os_unfair_lock_lock(v16 + 4);
    sub_1003206A8(v19);
    os_unfair_lock_unlock(v16 + 4);

    sub_10000C60C((v0 + 16));
    if (qword_1009737E8 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000C4AC(v24, qword_10097BA28);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v36 = v28;
      *v27 = 136315138;
      v29 = sub_10000C4E4(v3, v5, &v36);

      *(v27 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v25, v26, "Unpaired %s", v27, 0xCu);
      sub_10000C60C(v28);
    }

    else
    {
    }

    v31 = *(v0 + 96);
    v30 = *(v0 + 104);
    v32 = v8[3];
    v33 = v30[4];
    v34 = sub_10002CDC0(v30, v32);
    v31[3] = v32;
    v31[4] = *(v33 + 8);
    v35 = sub_10002F604(v31);
    (*(*(v32 - 8) + 16))(v35, v34, v32);
    v1 = *(v0 + 8);
  }

  else
  {

    sub_100005508(v0 + 56, &qword_1009819B0, &qword_100800360);
    v20 = sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);
    v22 = v21;
    sub_1000115C8();
    swift_allocError();
    *v23 = v20;
    *(v23 + 8) = v22;
    swift_willThrow();
    v1 = *(v0 + 8);
  }

  return v1();
}

uint64_t sub_1003F7694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003F7284(a1, a2, a3);
}

uint64_t sub_1003F7744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return _swift_task_switch(sub_1003F7768, 0, 0);
}

uint64_t sub_1003F7768()
{
  v33 = v0;
  v1 = v0[12];
  sub_1002A9938(v0[11], (v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  sub_10002F5B4((v0 + 2), v2);
  [(*(v3 + 32))(v2 v3)];
  swift_unknownObjectRelease();
  v4 = v0[5];
  v5 = v0[6];
  sub_10002F5B4((v0 + 2), v4);
  v6 = (*(v5 + 32))(v4, v5);
  v7 = type metadata accessor for SDAuthenticationCommonOperationInput(0);
  UUID.uuidString.getter();
  v8 = String._bridgeToObjectiveC()();

  [v6 setSessionID:v8];

  swift_unknownObjectRelease();
  v9 = v0[5];
  v10 = v0[6];
  sub_10002F5B4((v0 + 2), v9);
  v11 = (*(v10 + 32))(v9, v10);
  if (HIDWORD(*(v1 + *(v7 + 28))))
  {
    __break(1u);
  }

  else
  {
    [v11 setType:?];
    swift_unknownObjectRelease();
    if (qword_1009737E8 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v12 = type metadata accessor for Logger();
  sub_10000C4AC(v12, qword_10097BA28);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v32 = v16;
    *v15 = 136315138;
    swift_beginAccess();
    v17 = v0[5];
    v18 = v0[6];
    sub_10002F5B4((v0 + 2), v17);
    v19 = (*(v18 + 32))(v17, v18);
    swift_endAccess();
    v20 = [v19 description];
    swift_unknownObjectRelease();
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = sub_10000C4E4(v21, v23, &v32);

    *(v15 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v13, v14, "Sending %s", v15, 0xCu);
    sub_10000C60C(v16);
  }

  v25 = v0[10];
  swift_beginAccess();
  v26 = v0[5];
  v27 = v0[6];
  v28 = sub_10002CDC0(v0 + 2, v26);
  v25[3] = v26;
  v25[4] = *(v27 + 8);
  v29 = sub_10002F604(v25);
  (*(*(v26 - 8) + 16))(v29, v28, v26);
  sub_10000C60C(v0 + 2);
  v30 = v0[1];

  return v30();
}

uint64_t sub_1003F7B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003F7744(a1, a2, a3);
}

uint64_t sub_1003F7BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1003F7BEC, 0, 0);
}

uint64_t sub_1003F7BEC()
{
  v18 = v0;
  v1 = v0[4];
  v2 = *(v1 + *(type metadata accessor for SDAuthenticationCommonOperationInput(0) + 28));
  if (v2 > 0x17)
  {
    goto LABEL_8;
  }

  if (((1 << v2) & 0xFE0000) != 0)
  {
    v3 = 0xEF534F696B636F6CLL;
    v4 = 0x6E556E6F69736976;
    goto LABEL_11;
  }

  if (((1 << v2) & 0x7E00) != 0)
  {
    v3 = 0xEF6B636F6C6E5565;
    v4 = 0x646F4D7473657567;
    goto LABEL_11;
  }

  if (((1 << v2) & 0x1E0) != 0)
  {
    v3 = 0xEE00656E6F68506BLL;
    v4 = 0x636F6C6E5563616DLL;
  }

  else
  {
LABEL_8:
    if (v2 - 3 >= 2)
    {
      v3 = 0xE700000000000000;
      v4 = 0x6E776F6E6B6E75;
    }

    else
    {
      v3 = 0xEC00000043737361;
      v4 = 0x6C436B636F6C6E75;
    }
  }

LABEL_11:
  v17[0] = 0xD00000000000002DLL;
  v17[1] = 0x800000010078F280;
  v5 = v3;
  String.append(_:)(*&v4);

  if (qword_1009737E8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C4AC(v6, qword_10097BA28);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_10000C4E4(0xD00000000000002DLL, 0x800000010078F280, v17);
    _os_log_impl(&_mh_execute_header, v7, v8, "Setting default %s to true", v9, 0xCu);
    sub_10000C60C(v10);
  }

  v12 = v0[2];
  v11 = v0[3];
  v13 = [objc_opt_self() standardUserDefaults];
  v14 = String._bridgeToObjectiveC()();

  [v13 setBool:1 forKey:v14];

  sub_1002A9938(v11, v12);
  v15 = v0[1];

  return v15();
}

uint64_t sub_1003F7F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003F7BC8(a1, a2, a3);
}

uint64_t sub_1003F7FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[18] = a2;
  v3[19] = a3;
  v3[17] = a1;
  return _swift_task_switch(sub_1003F7FD8, 0, 0);
}

uint64_t sub_1003F7FD8()
{
  v1 = *(v0 + 152);
  sub_1002A9938(*(v0 + 144), v0 + 16);
  v2 = type metadata accessor for SDAuthenticationCommonOperationInput(0);
  sub_1003FBDAC(v1 + *(v2 + 36), v0 + 96);
  if (*(v0 + 120))
  {
    sub_1000121F8((v0 + 96), v0 + 56);
    v3 = *(*sub_10002CDC0((v0 + 56), *(v0 + 80)) + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_localLTK);
    v4 = *(v3 + 112);
    v5 = swift_task_alloc();
    *(v5 + 16) = sub_1003FBE1C;
    *(v5 + 24) = v3;
    os_unfair_lock_lock(v4 + 4);
    sub_1002F5418(v6);
    v11 = *(v0 + 136);
    os_unfair_lock_unlock(v4 + 4);

    sub_10000C60C((v0 + 56));
    v12 = *(v0 + 40);
    v13 = *(v0 + 48);
    sub_10002F5B4(v0 + 16, v12);
    v14 = (*(v13 + 24))(v12, v13);
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v14 setLongTermKey:isa];

    v16 = *(v0 + 40);
    v17 = *(v0 + 48);
    v18 = sub_10002CDC0((v0 + 16), v16);
    v11[3] = v16;
    v11[4] = *(v17 + 8);
    v19 = sub_10002F604(v11);
    (*(*(v16 - 8) + 16))(v19, v18, v16);
    sub_100026AC0(v22, v23);
  }

  else
  {
    sub_100005508(v0 + 96, &qword_1009819B0, &qword_100800360);
    v7 = sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);
    v9 = v8;
    sub_1000115C8();
    swift_allocError();
    *v10 = v7;
    *(v10 + 8) = v9;
    swift_willThrow();
  }

  sub_10000C60C((v0 + 16));
  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1003F8274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003F7FB4(a1, a2, a3);
}

uint64_t sub_1003F8324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  return _swift_task_switch(sub_1003F8348, 0, 0);
}

uint64_t sub_1003F8348()
{
  v1 = *(v0 + 160);
  sub_1002D63B0(*(v0 + 152), v0 + 16);
  v2 = type metadata accessor for SDAuthenticationCommonOperationInput(0);
  sub_1003FBDAC(v1 + *(v2 + 36), v0 + 104);
  if (*(v0 + 128))
  {
    sub_1000121F8((v0 + 104), v0 + 64);
    v3 = *(*sub_10002CDC0((v0 + 64), *(v0 + 88)) + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_localLTK);
    v4 = *(v3 + 112);
    v5 = swift_task_alloc();
    *(v5 + 16) = sub_1003FCB90;
    *(v5 + 24) = v3;
    os_unfair_lock_lock(v4 + 4);
    sub_1003206A8(v6);
    v11 = *(v0 + 152);
    os_unfair_lock_unlock(v4 + 4);

    sub_10002CDC0((v0 + 64), *(v0 + 88));
    v12 = v11[3];
    v13 = v11[4];
    sub_10002CDC0(v11, v12);
    v14 = (*(v13 + 16))(v12, v13);
    v16 = v15;
    v17 = sub_1003FE39C(v14, v15, 0, 0xF000000000000000);
    v19 = *(v0 + 144);
    v20 = v17;
    v21 = v14;
    v23 = v22;
    sub_100026AC0(v21, v16);
    v24 = *(v0 + 40);
    v25 = *(v0 + 56);
    sub_10002F5B4(v0 + 16, v24);
    v26 = (*(v25 + 24))(v24, v25);
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v26 setLongTermKey:isa];

    v28 = *(v0 + 40);
    v29 = *(v0 + 56);
    sub_10002F5B4(v0 + 16, v28);
    v30 = (*(v29 + 24))(v28, v29);
    v31 = Data._bridgeToObjectiveC()().super.isa;
    [v30 setToken:v31];

    v32 = *(v0 + 40);
    v33 = *(v0 + 48);
    v34 = sub_10002CDC0((v0 + 16), v32);
    v19[3] = v32;
    v19[4] = *(v33 + 8);
    v35 = sub_10002F604(v19);
    (*(*(v32 - 8) + 16))(v35, v34, v32);
    sub_100026AC0(v20, v23);
    sub_100026AC0(v37, v38);
    sub_10000C60C((v0 + 64));
  }

  else
  {
    sub_100005508(v0 + 104, &qword_1009819B0, &qword_100800360);
    v7 = sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);
    v9 = v8;
    sub_1000115C8();
    swift_allocError();
    *v10 = v7;
    *(v10 + 8) = v9;
    swift_willThrow();
  }

  sub_10000C60C((v0 + 16));
  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_1003F86F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003F8324(a1, a2, a3);
}

uint64_t sub_1003F87A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return _swift_task_switch(sub_1003F87C4, 0, 0);
}

uint64_t sub_1003F87C4()
{
  v1 = *(v0 + 168);
  sub_1003FCAB8(*(v0 + 160), v0 + 16);
  v2 = type metadata accessor for SDAuthenticationCommonOperationInput(0);
  sub_1003FBDAC(v1 + *(v2 + 36), v0 + 112);
  if (*(v0 + 136))
  {
    v3 = *(v0 + 160);
    sub_1000121F8((v0 + 112), v0 + 72);
    sub_10002CDC0((v0 + 72), *(v0 + 96));
    v4 = v3[3];
    v5 = v3[4];
    sub_10002CDC0(v3, v4);
    v6 = (*(v5 + 16))(v4, v5);
    v8 = v7;
    v9 = v3[3];
    v10 = v3[5];
    sub_10002CDC0(v3, v9);
    v11 = (*(v10 + 16))(v9, v10);
    v13 = v12;
    v14 = sub_1003FE39C(v6, v8, v11, v12);
    v19 = *(v0 + 152);
    v20 = v14;
    v22 = v21;
    sub_100026AC0(v11, v13);
    sub_100026AC0(v6, v8);
    v23 = *(v0 + 40);
    v24 = *(v0 + 64);
    sub_10002F5B4(v0 + 16, v23);
    v25 = (*(v24 + 24))(v23, v24);
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v25 setToken:isa];

    v27 = *(v0 + 40);
    v28 = *(v0 + 48);
    v29 = sub_10002CDC0((v0 + 16), v27);
    v19[3] = v27;
    v19[4] = *(v28 + 8);
    v30 = sub_10002F604(v19);
    (*(*(v27 - 8) + 16))(v30, v29, v27);
    sub_100026AC0(v20, v22);
    sub_10000C60C((v0 + 72));
  }

  else
  {
    sub_100005508(v0 + 112, &qword_1009819B0, &qword_100800360);
    v15 = sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);
    v17 = v16;
    sub_1000115C8();
    swift_allocError();
    *v18 = v15;
    *(v18 + 8) = v17;
    swift_willThrow();
  }

  sub_10000C60C((v0 + 16));
  v31 = *(v0 + 8);

  return v31();
}