uint64_t sub_1001B59F4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  done = _s19CommandOutputBufferV8IdleDoneVMa(0);
  __chkstk_darwin(done - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s19CommandOutputBufferV9HandshakeVMa(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s19CommandOutputBufferV12ContinuationVMa(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s19CommandOutputBufferV7CommandVMa(0);
  __chkstk_darwin(v13 - 8);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _s19CommandOutputBufferV7ElementOMa(0);
  __chkstk_darwin(v16);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001B6374(v2, v18, _s19CommandOutputBufferV7ElementOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1001B630C(v18, v6, _s19CommandOutputBufferV8IdleDoneVMa);
      v15 = v6;
    }

    else
    {
      sub_1001B630C(v18, v9, _s19CommandOutputBufferV9HandshakeVMa);
      v15 = v9;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1001B630C(v18, v12, _s19CommandOutputBufferV12ContinuationVMa);
    v15 = v12;
  }

  else
  {
    sub_1001B630C(v18, v15, _s19CommandOutputBufferV7CommandVMa);
  }

  v20 = sub_1004A5384();
  return (*(*(v20 - 8) + 32))(a1, v15, v20);
}

unint64_t sub_1001B5CA4()
{
  v1 = v0;
  done = _s19CommandOutputBufferV8IdleDoneVMa(0);
  __chkstk_darwin(done);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s19CommandOutputBufferV9HandshakeVMa(0);
  __chkstk_darwin(v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s19CommandOutputBufferV12ContinuationVMa(0);
  __chkstk_darwin(v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s19CommandOutputBufferV7CommandVMa(0);
  __chkstk_darwin(v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s19CommandOutputBufferV7ElementOMa(0);
  __chkstk_darwin(v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001B6374(v1, v15, _s19CommandOutputBufferV7ElementOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1001B630C(v15, v3, _s19CommandOutputBufferV8IdleDoneVMa);
      v22 = &v3[*(done + 20)];
      v18 = *v22;
      v19 = *(v22 + 1);
      v20 = _s19CommandOutputBufferV8IdleDoneVMa;
      v21 = v3;
    }

    else
    {
      sub_1001B630C(v15, v6, _s19CommandOutputBufferV9HandshakeVMa);
      v24 = &v6[*(v4 + 20)];
      v18 = *v24;
      v19 = *(v24 + 1);
      v20 = _s19CommandOutputBufferV9HandshakeVMa;
      v21 = v6;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1001B630C(v15, v9, _s19CommandOutputBufferV12ContinuationVMa);
    v23 = &v9[*(v7 + 20)];
    v18 = *v23;
    v19 = *(v23 + 1);
    v20 = _s19CommandOutputBufferV12ContinuationVMa;
    v21 = v9;
  }

  else
  {
    sub_1001B630C(v15, v12, _s19CommandOutputBufferV7CommandVMa);
    v17 = &v12[*(v10 + 20)];
    v18 = *v17;
    v19 = *(v17 + 1);
    v20 = _s19CommandOutputBufferV7CommandVMa;
    v21 = v12;
  }

  sub_1001B62AC(v21, v20);
  return v18 | (v19 << 32);
}

uint64_t sub_1001B5FE4(uint64_t a1, uint64_t a2)
{
  v2 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  if (v2 != _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0())
  {
    return 0;
  }

  sub_1004A5384();
  sub_1001B60F8();
  sub_1004A5E64();
  v3 = sub_1004A5EA4();
  if (v6 == v5)
  {
    return 1;
  }

  __chkstk_darwin(v3);
  sub_1004A5314();
  return v6;
}

unint64_t sub_1001B60F8()
{
  result = qword_1005D3650;
  if (!qword_1005D3650)
  {
    v3 = sub_1004A5384();
    result = swift_getWitnessTable(&protocol conformance descriptor for DispatchData, v3, v0, v1);
    atomic_store(result, &qword_1005D3650);
  }

  return result;
}

uint64_t sub_1001B61AC@<X0>(const void *a1@<X0>, BOOL *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  result = memcmp(v5, a1, v6);
  *a2 = result == 0;
  return result;
}

uint64_t sub_1001B62AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001B630C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001B6374(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001B63DC(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D3658, &unk_1004DD560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001B6464()
{
  result = qword_1005D3660;
  if (!qword_1005D3660)
  {
    result = swift_getWitnessTable(aU_4, &_s19CommandOutputBufferV27ServerExpectsHandshakeReplyVN, v0, v1);
    atomic_store(result, &qword_1005D3660);
  }

  return result;
}

unint64_t sub_1001B64B8()
{
  result = qword_1005D3668;
  if (!qword_1005D3668)
  {
    result = swift_getWitnessTable(byte_1004DD6BC, &_s19CommandOutputBufferV25ServerExpectsContinuationVN, v0, v1);
    atomic_store(result, &qword_1005D3668);
  }

  return result;
}

uint64_t sub_1001B6610(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A5384();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1001B6690(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A5384();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1001B6704(uint64_t a1)
{
  result = sub_1004A5384();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001B678C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004A5384();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1001B6858(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1004A5384();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1001B691C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1004A5384();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001B699C(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    *(result + 9) = 1;
  }

  else
  {
    *(result + 9) = 0;
  }

  return result;
}

uint64_t sub_1001B69D0(uint64_t a1)
{
  result = _s19CommandOutputBufferV7CommandVMa(319);
  if (v2 <= 0x3F)
  {
    result = _s19CommandOutputBufferV12ContinuationVMa(319);
    if (v3 <= 0x3F)
    {
      result = _s19CommandOutputBufferV8IdleDoneVMa(319);
      if (v4 <= 0x3F)
      {
        result = _s19CommandOutputBufferV9HandshakeVMa(319);
        if (v5 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t sub_1001B6A70()
{
  result = qword_1005D3A00;
  if (!qword_1005D3A00)
  {
    result = swift_getWitnessTable("Ֆ\n", &_s19CommandOutputBufferV7CommandV4KindON, v0, v1);
    atomic_store(result, &qword_1005D3A00);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for OptionalMillisecondDate(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

double sub_1001B6B2C@<D0>(uint64_t a1@<X8>)
{
  *a1 = 2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 5;
  return result;
}

double sub_1001B6B54@<D0>(char a1@<W3>, uint64_t a2@<X8>)
{
  if (a1)
  {
    sub_1001B6C64(v9);
  }

  else
  {
    sub_1001B6CA8(v9);
  }

  v19 = v9[8];
  v20 = v9[9];
  v21 = v9[10];
  v22 = v10;
  v15 = v9[4];
  v16 = v9[5];
  v17 = v9[6];
  v18 = v9[7];
  v11 = v9[0];
  v12 = v9[1];
  v13 = v9[2];
  v14 = v9[3];
  UInt32.init(_:)(&v11);
  v31 = v21;
  v32 = v22;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v23 = v11;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v3 = v20;
  *(a2 + 128) = v19;
  *(a2 + 144) = v3;
  *(a2 + 160) = v31;
  *(a2 + 176) = v32;
  v4 = v28;
  *(a2 + 64) = v27;
  *(a2 + 80) = v4;
  v5 = v30;
  *(a2 + 96) = v29;
  *(a2 + 112) = v5;
  v6 = v24;
  *a2 = v23;
  *(a2 + 16) = v6;
  result = *&v25;
  v8 = v26;
  *(a2 + 32) = v25;
  *(a2 + 48) = v8;
  return result;
}

double sub_1001B6C64(uint64_t a1)
{
  *a1 = 2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = 7;
  return result;
}

double sub_1001B6CA8(uint64_t a1)
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
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = 7;
  return result;
}

uint64_t sub_1001B6CEC()
{
  v1 = v0;
  v2 = sub_1004A4C04();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004A4BC4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v20 - v12;
  (*(v3 + 16))(v5, v1, v2, v11);
  if ((*(v3 + 88))(v5, v2) == enum case for NWEndpoint.hostPort(_:))
  {
    (*(v3 + 96))(v5, v2);
    v14 = *(sub_10000C9C0(&qword_1005D3CB8, &qword_1004DDA40) + 48);
    v15 = *(v7 + 32);
    v15(v13, v5, v6);
    v16 = sub_1004A4BF4();
    (*(*(v16 - 8) + 8))(&v5[v14], v16);
    v15(v9, v13, v6);
    if ((*(v7 + 88))(v9, v6) == enum case for NWEndpoint.Host.name(_:))
    {
      (*(v7 + 96))(v9, v6);
      v17 = *v9;
      v18 = sub_10000C9C0(&qword_1005D3CC0, &qword_1004DDA48);
      sub_100025F40(&v9[*(v18 + 48)], &qword_1005D3CC8, &qword_1004DDA50);
      return v17;
    }

    (*(v7 + 8))(v9, v6);
  }

  else
  {
    (*(v3 + 8))(v5, v2);
  }

  return 0;
}

uint64_t sub_1001B6FEC()
{
  v1 = sub_1004A5244();
  v52 = *(v1 - 8);
  v53 = v1;
  __chkstk_darwin(v1);
  v50 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1004A5274();
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v48 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = _s6LoggerVMa(0);
  v46 = *(v44 - 8);
  v4 = *(v46 + 64);
  __chkstk_darwin(v44);
  v47 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v44 - v6;
  v8 = sub_1004A4E34();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v44 - v13;
  v54 = v0;
  sub_1004A4E54();
  (*(v9 + 104))(v11, enum case for NWConnection.State.setup(_:), v8);
  v15 = sub_1004A4E24();
  v16 = *(v9 + 8);
  v16(v11, v8);
  result = (v16)(v14, v8);
  if (v15)
  {
    sub_10000C9C0(&qword_1005D3CD0, &qword_1004DDA58);
    v18 = swift_allocBox();
    (*(v9 + 56))(v19, 1, 1, v8);
    v20 = swift_allocObject();
    v21 = v54;
    swift_weakInit();
    v22 = v21 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger;
    v45 = _s6LoggerVMa;
    sub_1001C1C6C(v21 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger, v7, _s6LoggerVMa);
    v23 = (*(v46 + 80) + 16) & ~*(v46 + 80);
    v24 = (v4 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    sub_1001C1E74(v7, v25 + v23, _s6LoggerVMa);
    *(v25 + v24) = v20;
    *(v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;

    sub_1001C1F84(sub_1001C1EDC, v25);
    sub_1004A4DA4();

    v26 = swift_allocObject();
    swift_weakInit();

    sub_1001C1F84(sub_1001C1F94, v26);
    sub_1004A4D34();

    v27 = swift_allocObject();
    swift_weakInit();

    sub_1001C1F84(sub_1001C1FC4, v27);
    sub_1004A4DB4();

    v28 = swift_allocObject();
    swift_weakInit();

    sub_1001C1F84(sub_1001C1FCC, v28);
    sub_1004A4DC4();

    v29 = v47;
    sub_1001C1C6C(v22, v47, v45);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v30 = sub_1004A4A54();
    v31 = sub_1004A4A74();
    (*(*(v31 - 8) + 8))(v29, v31);
    v32 = sub_1004A6034();
    if (os_log_type_enabled(v30, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      aBlock[0] = v34;
      *v33 = 68158210;
      *(v33 + 4) = 2;
      *(v33 + 8) = 256;
      v35 = v22 + *(v44 + 20);
      *(v33 + 10) = *v35;

      *(v33 + 11) = 2082;
      v36 = ConnectionID.debugDescription.getter(*(v35 + 4));
      v38 = sub_10015BA6C(v36, v37, aBlock);

      *(v33 + 13) = v38;
      _os_log_impl(&_mh_execute_header, v30, v32, "[%.*hhx-%{public}s] Starting", v33, 0x15u);
      sub_1000197E0(v34);
    }

    else
    {
    }

    sub_1004A4E44();
    v39 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1001C1FD4;
    aBlock[5] = v39;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10019C778;
    aBlock[3] = &unk_1005A52D8;
    v40 = _Block_copy(aBlock);

    v41 = v48;
    sub_1004A5254();
    v55 = _swiftEmptyArrayStorage;
    sub_1001C1FF4(&qword_1005D4F50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000C9C0(&unk_1005D91A0, &unk_1004DDA60);
    sub_10000DF44(&qword_1005D4F60, &unk_1005D91A0, &unk_1004DDA60, &protocol conformance descriptor for [A]);
    v42 = v50;
    v43 = v53;
    sub_1004A6544();
    sub_1004A6084();
    _Block_release(v40);
    (*(v52 + 8))(v42, v43);
    (*(v49 + 8))(v41, v51);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001B78AC(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v54 = a1;
  v45 = type metadata accessor for LoggableCommand(0);
  __chkstk_darwin(v45);
  v46 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s6LoggerVMa(0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v49 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for OutboundContent(0);
  __chkstk_darwin(v53);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ClientCommand(0);
  __chkstk_darwin(v11 - 8);
  v52 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v51 = &v44 - v14;
  v15 = sub_1004A4904();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v7 + 28);
  v48 = v3 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger;
  v20 = (v3 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger + v19);
  v21 = *(v20 + 1);
  v47 = *v20;
  sub_1004A4914();
  v22 = swift_allocObject();
  v50 = v3;
  v23 = v54;
  swift_weakInit();

  sub_1001D6F2C(v23, a2, v18, sub_1001C1D0C, v22);

  (*(v16 + 8))(v18, v15);

  sub_1001C1C6C(a2, v10, type metadata accessor for OutboundContent);
  if (swift_getEnumCaseMultiPayload())
  {
    v24 = type metadata accessor for OutboundContent;
    v25 = v10;
  }

  else
  {
    v26 = v47;
    v53 = v21;
    v27 = v23;
    v28 = v51;
    sub_1001C1E74(v10, v51, type metadata accessor for ClientCommand);
    v29 = v49;
    sub_1001C1C6C(v48, v49, _s6LoggerVMa);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    sub_1001C1C6C(v28, v52, type metadata accessor for ClientCommand);
    v30 = sub_1004A4A54();
    v31 = sub_1004A4A74();
    (*(*(v31 - 8) + 8))(v29, v31);
    v32 = sub_1004A6034();
    if (os_log_type_enabled(v30, v32))
    {
      v33 = v27;
      v34 = HIDWORD(v27);
      v35 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v35 = 68158466;
      *(v35 + 4) = 2;
      *(v35 + 8) = 256;
      *(v35 + 10) = v26;

      *(v35 + 11) = 2082;
      v36 = ConnectionID.debugDescription.getter(v53);
      v38 = sub_10015BA6C(v36, v37, &v55);

      *(v35 + 13) = v38;
      *(v35 + 21) = 2082;
      v39 = v46;
      v40 = v52;
      sub_1001C1C6C(v52, &v46[*(v45 + 20)], type metadata accessor for ClientCommand);
      *v39 = v33;
      *(v39 + 4) = v34;
      v41 = LoggableCommand.makeDescriptionWithoutPII()();
      sub_1001C1C0C(v39, type metadata accessor for LoggableCommand);
      sub_1001C1C0C(v40, type metadata accessor for ClientCommand);
      v42 = sub_10015BA6C(v41._countAndFlagsBits, v41._object, &v55);

      *(v35 + 23) = v42;
      _os_log_impl(&_mh_execute_header, v30, v32, "[%.*hhx-%{public}s] Sent 'C: %{public}s'", v35, 0x1Fu);
      swift_arrayDestroy();
    }

    else
    {

      sub_1001C1C0C(v52, type metadata accessor for ClientCommand);
    }

    v25 = v28;
    v24 = type metadata accessor for ClientCommand;
  }

  return sub_1001C1C0C(v25, v24);
}

void sub_1001B7E84()
{
  v1 = _s6LoggerVMa(0);
  __chkstk_darwin(v1);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v34 - v5;
  v7 = sub_1004A4E34();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004A4E54();
  v11 = (*(v8 + 88))(v10, v7);
  if (v11 == enum case for NWConnection.State.waiting(_:))
  {
    goto LABEL_2;
  }

  if (v11 == enum case for NWConnection.State.failed(_:))
  {
    (*(v8 + 8))(v10, v7);
    goto LABEL_7;
  }

  if (v11 == enum case for NWConnection.State.setup(_:) || v11 == enum case for NWConnection.State.preparing(_:))
  {
    goto LABEL_3;
  }

  if (v11 == enum case for NWConnection.State.ready(_:) || v11 == enum case for NWConnection.State.cancelled(_:))
  {
LABEL_7:
    v22 = v0 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger;
    sub_1001C1C6C(v0 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger, v6, _s6LoggerVMa);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v23 = sub_1004A4A54();
    v24 = sub_1004A4A74();
    (*(*(v24 - 8) + 8))(v6, v24);
    v25 = sub_1004A6004();
    if (os_log_type_enabled(v23, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v35 = v27;
      *v26 = 68158210;
      *(v26 + 4) = 2;
      *(v26 + 8) = 256;
      v28 = v22 + *(v1 + 20);
      *(v26 + 10) = *v28;

      *(v26 + 11) = 2082;
      v29 = ConnectionID.debugDescription.getter(*(v28 + 4));
      v31 = sub_10015BA6C(v29, v30, &v35);

      *(v26 + 13) = v31;
      _os_log_impl(&_mh_execute_header, v23, v25, "[%.*hhx-%{public}s] Ignoring restart", v26, 0x15u);
      sub_1000197E0(v27);
    }

    else
    {
    }

    return;
  }

LABEL_2:
  (*(v8 + 8))(v10, v7);
LABEL_3:
  v12 = v0 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger;
  sub_1001C1C6C(v0 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger, v3, _s6LoggerVMa);

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v13 = sub_1004A4A54();
  v14 = sub_1004A4A74();
  (*(*(v14 - 8) + 8))(v3, v14);
  v15 = sub_1004A6034();
  if (os_log_type_enabled(v13, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v35 = v17;
    *v16 = 68158210;
    *(v16 + 4) = 2;
    *(v16 + 8) = 256;
    v18 = v12 + *(v1 + 20);
    *(v16 + 10) = *v18;

    *(v16 + 11) = 2082;
    v19 = ConnectionID.debugDescription.getter(*(v18 + 4));
    v21 = sub_10015BA6C(v19, v20, &v35);

    *(v16 + 13) = v21;
    _os_log_impl(&_mh_execute_header, v13, v15, "[%.*hhx-%{public}s] Restart", v16, 0x15u);
    sub_1000197E0(v17);
  }

  else
  {
  }

  sub_1004A4E74();
}

uint64_t sub_1001B8394()
{
  v1 = sub_1004A4C04();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004A4BC4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v18 - v10;
  v12 = *(v0 + *(type metadata accessor for ConnectionConfiguration(0) + 28));
  if (v12 >> 6)
  {
    if (v12 >> 6 != 1)
    {
      return 0;
    }

    v12 &= 0x3Fu;
  }

  (*(v2 + 16))(v4, v0, v1);
  if ((*(v2 + 88))(v4, v1) == enum case for NWEndpoint.hostPort(_:))
  {
    (*(v2 + 96))(v4, v1);
    v13 = *(sub_10000C9C0(&qword_1005D3CB8, &qword_1004DDA40) + 48);
    v14 = *(v6 + 32);
    v14(v11, v4, v5);
    v15 = sub_1004A4BF4();
    (*(*(v15 - 8) + 8))(&v4[v13], v15);
    v14(v8, v11, v5);
    if ((*(v6 + 88))(v8, v5) == enum case for NWEndpoint.Host.name(_:))
    {
      (*(v6 + 96))(v8, v5);
      v16 = sub_10000C9C0(&qword_1005D3CC0, &qword_1004DDA48);
      sub_100025F40(&v8[*(v16 + 48)], &qword_1005D3CC8, &qword_1004DDA50);
    }

    else
    {
      (*(v6 + 8))(v8, v5);
    }
  }

  else
  {
    (*(v2 + 8))(v4, v1);
  }

  return v12;
}

unint64_t sub_1001B86D0()
{
  sub_1004A4FE4();
  sub_1004A4F84();
  v0 = sub_1004A4E94();

  result = 0;
  if (v0)
  {
    sub_1004A4FD4();
    swift_dynamicCastClassUnconditional();
    v2 = sub_1004A4FC4();
    negotiated_tls_protocol_version = sec_protocol_metadata_get_negotiated_tls_protocol_version(v2);
    negotiated_tls_ciphersuite = sec_protocol_metadata_get_negotiated_tls_ciphersuite(v2);
    if (sec_protocol_metadata_get_server_name(v2))
    {
      sub_1004A59B4();
    }

    swift_unknownObjectRelease();

    return negotiated_tls_protocol_version | (negotiated_tls_ciphersuite << 16);
  }

  return result;
}

uint64_t sub_1001B87D8()
{
  v0 = sub_1004A4A74();
  sub_1001C2074(v0, qword_1005D3A08);
  sub_1001C203C(v0, qword_1005D3A08);
  return sub_1004A4A64();
}

uint64_t ConnectionConfiguration.endpoint.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004A4C04();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ConnectionConfiguration.endpoint.setter(uint64_t a1)
{
  v3 = sub_1004A4C04();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ConnectionConfiguration.prohibitConstrainedPaths.getter(__n128 a1)
{
  return *(v1 + *(type metadata accessor for ConnectionConfiguration(0) + 20));
}

{
  return *(v1 + *(type metadata accessor for ConnectionConfiguration(0) + 20));
}

uint64_t type metadata accessor for ConnectionConfiguration(uint64_t a1)
{
  return sub_10002A984(a1, &unk_1005D3A80, &nominal type descriptor for ConnectionConfiguration);
}

{
  result = qword_1005D6FA8;
  if (!qword_1005D6FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ConnectionConfiguration.prohibitConstrainedPaths.setter(char a1)
{
  result = type metadata accessor for ConnectionConfiguration(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

{
  result = type metadata accessor for ConnectionConfiguration(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

Swift::UInt32 (__swiftcall *ConnectionConfiguration.prohibitConstrainedPaths.modify())(IMAP2Persistence::CredentialsRequestID)
{
  type metadata accessor for ConnectionConfiguration(0);
  return UInt32.init(_:);
}

{
  type metadata accessor for ConnectionConfiguration(0);
  return UInt32.init(_:);
}

double ConnectionConfiguration.prohibitedInterfaceTypes.getter()
{
  type metadata accessor for ConnectionConfiguration(0);

  return result;
}

{
  type metadata accessor for ConnectionConfiguration(0);

  return result;
}

uint64_t ConnectionConfiguration.prohibitedInterfaceTypes.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ConnectionConfiguration(0) + 24);

  *(v1 + v3) = a1;
  return result;
}

{
  v3 = *(type metadata accessor for ConnectionConfiguration(0) + 24);

  *(v1 + v3) = a1;
  return result;
}

Swift::UInt32 (__swiftcall *ConnectionConfiguration.prohibitedInterfaceTypes.modify())(IMAP2Persistence::CredentialsRequestID)
{
  type metadata accessor for ConnectionConfiguration(0);
  return UInt32.init(_:);
}

{
  type metadata accessor for ConnectionConfiguration(0);
  return UInt32.init(_:);
}

uint64_t ConnectionConfiguration.transportLayerSecurity.getter()
{
  return *(v0 + *(type metadata accessor for ConnectionConfiguration(0) + 28));
}

{
  return *(v0 + *(type metadata accessor for ConnectionConfiguration(0) + 28));
}

uint64_t ConnectionConfiguration.transportLayerSecurity.setter(char a1)
{
  result = type metadata accessor for ConnectionConfiguration(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

{
  result = type metadata accessor for ConnectionConfiguration(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

Swift::UInt32 (__swiftcall *ConnectionConfiguration.transportLayerSecurity.modify())(IMAP2Persistence::CredentialsRequestID)
{
  type metadata accessor for ConnectionConfiguration(0);
  return UInt32.init(_:);
}

{
  type metadata accessor for ConnectionConfiguration(0);
  return UInt32.init(_:);
}

uint64_t ConnectionConfiguration.sourceApplicationBundleIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for ConnectionConfiguration(0) + 32));

  return v1;
}

{
  v1 = *(v0 + *(type metadata accessor for ConnectionConfiguration(0) + 32));

  return v1;
}

uint64_t ConnectionConfiguration.sourceApplicationBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ConnectionConfiguration(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

{
  v5 = (v2 + *(type metadata accessor for ConnectionConfiguration(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

Swift::UInt32 (__swiftcall *ConnectionConfiguration.sourceApplicationBundleIdentifier.modify())(IMAP2Persistence::CredentialsRequestID)
{
  type metadata accessor for ConnectionConfiguration(0);
  return UInt32.init(_:);
}

{
  type metadata accessor for ConnectionConfiguration(0);
  return UInt32.init(_:);
}

uint64_t ConnectionConfiguration.networkAccountIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for ConnectionConfiguration(0) + 36));

  return v1;
}

{
  v1 = *(v0 + *(type metadata accessor for ConnectionConfiguration(0) + 40));

  return v1;
}

uint64_t ConnectionConfiguration.networkAccountIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ConnectionConfiguration(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

{
  v5 = (v2 + *(type metadata accessor for ConnectionConfiguration(0) + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

Swift::UInt32 (__swiftcall *ConnectionConfiguration.networkAccountIdentifier.modify())(IMAP2Persistence::CredentialsRequestID)
{
  type metadata accessor for ConnectionConfiguration(0);
  return UInt32.init(_:);
}

{
  type metadata accessor for ConnectionConfiguration(0);
  return UInt32.init(_:);
}

uint64_t ConnectionConfiguration.init(endpoint:prohibitConstrainedPaths:prohibitedInterfaceTypes:transportLayerSecurity:sourceApplicationBundleIdentifier:networkAccountIdentifier:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v15 = type metadata accessor for ConnectionConfiguration(0);
  v16 = v15[6];
  v17 = (a9 + v15[8]);
  v18 = (a9 + v15[9]);
  v19 = sub_1004A4C04();
  result = (*(*(v19 - 8) + 32))(a9, a1, v19);
  *(a9 + v15[5]) = a2;
  *(a9 + v16) = a3;
  *(a9 + v15[7]) = a4;
  *v17 = a5;
  v17[1] = a6;
  *v18 = a7;
  v18[1] = a8;
  return result;
}

BOOL static AccountConfiguration.TransportLayerSecurity.__derived_enum_equals(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 >> 6)
  {
    if (a1 >> 6 == 1)
    {
      if ((a2 & 0xC0) == 0x40)
      {
        return ((a2 ^ a1) & 0x3F) == 0;
      }
    }

    else if (a2 == 128)
    {
      return 1;
    }
  }

  else if (a2 <= 0x3Fu)
  {
    return a1 == a2;
  }

  return 0;
}

BOOL sub_1001B8E3C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      if ((v3 & 0xC0) == 0x40)
      {
        return ((v3 ^ v2) & 0x3F) == 0;
      }
    }

    else if (v3 == 128)
    {
      return 1;
    }
  }

  else if (v3 < 0x40)
  {
    return v2 == v3;
  }

  return 0;
}

uint64_t ConnectionConfiguration.TransportLayerSecurity.init(_:)(uint64_t result)
{
  if (result >> 6 == 1)
  {
    v1 = result & 0x3F | 0x40;
  }

  else
  {
    v1 = 128;
  }

  if (result >> 6)
  {
    return v1;
  }

  else
  {
    return result;
  }
}

unint64_t sub_1001B8EC4()
{
  result = qword_1005D3A20;
  if (!qword_1005D3A20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConnectionConfiguration.SourceApplicationKind, &type metadata for ConnectionConfiguration.SourceApplicationKind, v0, v1);
    atomic_store(result, &qword_1005D3A20);
  }

  return result;
}

uint64_t sub_1001B8F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004A4C04();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1001B9008(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1004A4C04();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

void sub_1001B90C0(uint64_t a1)
{
  sub_1004A4C04();
  if (v1 <= 0x3F)
  {
    sub_1001B916C(319);
    if (v2 <= 0x3F)
    {
      sub_1001B91D0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1001B916C(uint64_t a1)
{
  if (!qword_1005D3A90)
  {
    sub_10000DEFC(&qword_1005D3A98, &qword_1004DD918);
    v1 = sub_1004A6374();
    if (!v2)
    {
      atomic_store(v1, &qword_1005D3A90);
    }
  }
}

void sub_1001B91D0()
{
  if (!qword_1005D3AA0)
  {
    v0 = sub_1004A6374();
    if (!v1)
    {
      atomic_store(v0, &qword_1005D3AA0);
    }
  }
}

ValueMetadata *type metadata accessor for ConnectionConfiguration.SourceApplicationKind()
{
  return &type metadata for ConnectionConfiguration.SourceApplicationKind;
}

{
  return &type metadata for ConnectionConfiguration.SourceApplicationKind;
}

uint64_t getEnumTagSinglePayload for ConnectionConfiguration.TransportLayerSecurity(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3E)
  {
    goto LABEL_17;
  }

  if (a2 + 194 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 194) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 194;
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

      return (*a1 | (v4 << 8)) - 194;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 194;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x3C | (*a1 >> 6)) ^ 0x3F;
  if (v6 >= 0x3D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for ConnectionConfiguration.TransportLayerSecurity(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 194 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 194) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x3E)
  {
    v4 = 0;
  }

  if (a2 > 0x3D)
  {
    v5 = ((a2 - 62) >> 8) + 1;
    *result = a2 - 62;
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
    *result = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1001B9388(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return (v1 & 3u) + 2;
  }
}

_BYTE *sub_1001B93B4(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 3 | (a2 << 6);
  }

  else
  {
    *result = a2 & 3 ^ 0x82;
  }

  return result;
}

ValueMetadata *type metadata accessor for ConnectionConfiguration.TransportLayerSecurity()
{
  return &type metadata for ConnectionConfiguration.TransportLayerSecurity;
}

{
  return &type metadata for ConnectionConfiguration.TransportLayerSecurity;
}

BOOL sub_1001B9410(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = a2[4];
  v12 = a2[5];
  if (!(v3 >> 62))
  {
    if (v7 >> 62)
    {
      return 0;
    }

    goto LABEL_6;
  }

  if (v3 >> 62 == 1)
  {
    if (v7 >> 62 != 1)
    {
      return 0;
    }

LABEL_6:
    if (sub_1001FCCD8(v3, a1[1], a1[2], v7, v8, v9))
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (v7 >> 62 != 2 || v7 != 0x8000000000000000 || (v9 | v8) != 0)
  {
    return 0;
  }

LABEL_7:

  return sub_1001C0904(v4, v5, v6, v10, v11, v12);
}

uint64_t sub_1001B94F0()
{
  v1 = v0;
  v2 = sub_1004A4904();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s6LoggerVMa(0);
  __chkstk_darwin(v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1004A4944();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = tracingSignposter.unsafeMutableAddressor();
  (*(v10 + 16))(v12, v13, v9);
  v21 = OBJC_IVAR____TtC15IMAP2Connection10Connection_logger;
  sub_1001C1C6C(v1 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger, v8, _s6LoggerVMa);
  sub_1004A4914();
  sub_1001C1C0C(v8, _s6LoggerVMa);
  v14 = sub_1004A4934();
  v15 = sub_1004A6154();
  if (sub_1004A6354())
  {
    v16 = swift_slowAlloc();
    v20 = v2;
    v17 = v16;
    *v16 = 67109120;
    *(v16 + 1) = 2;
    v18 = sub_1004A48F4();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, v15, v18, "Connection.networkStateUpdate", "%u", v17, 8u);
    v2 = v20;
  }

  (*(v3 + 8))(v5, v2);
  (*(v10 + 8))(v12, v9);

  sub_1004A4CC4();

  sub_1001C1C0C(v1 + v21, _s6LoggerVMa);
  sub_1001C1C0C(v1 + OBJC_IVAR____TtC15IMAP2Connection10Connection_configuration, type metadata accessor for ConnectionConfiguration);
  sub_1001AD0E0(v1 + OBJC_IVAR____TtC15IMAP2Connection10Connection_delegate);

  return v1;
}

uint64_t sub_1001B9868()
{
  sub_1001B94F0();

  return swift_deallocClassInstance();
}

uint64_t sub_1001B98E8(uint64_t a1)
{
  result = _s6LoggerVMa(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ConnectionConfiguration(319);
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1001B9A24(uint64_t a1)
{
  result = type metadata accessor for ClientCommand(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001B9A8C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t, uint64_t))
{
  v436 = a4;
  v431 = a3;
  v439 = a1;
  v5 = sub_10000C9C0(&qword_1005D3CD0, &qword_1004DDA58);
  __chkstk_darwin(v5 - 8);
  v417 = &v378 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v424 = &v378 - v8;
  __chkstk_darwin(v9);
  v425 = &v378 - v10;
  v420 = type metadata accessor for ConnectionEvent(0);
  v421 = *(v420 - 8);
  __chkstk_darwin(v420);
  v416 = &v378 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v383 = &v378 - v13;
  __chkstk_darwin(v14);
  v414 = &v378 - v15;
  v435 = sub_1004A5214();
  v437 = *(v435 - 8);
  __chkstk_darwin(v435);
  v391 = &v378 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v390 = &v378 - v18;
  __chkstk_darwin(v19);
  v398 = &v378 - v20;
  __chkstk_darwin(v21);
  v412 = &v378 - v22;
  __chkstk_darwin(v23);
  v419 = (&v378 - v24);
  __chkstk_darwin(v25);
  v409 = &v378 - v26;
  __chkstk_darwin(v27);
  v399 = &v378 - v28;
  __chkstk_darwin(v29);
  v408 = &v378 - v30;
  __chkstk_darwin(v31);
  v413 = (&v378 - v32);
  __chkstk_darwin(v33);
  v423 = (&v378 - v34);
  v35 = _s6LoggerVMa(0);
  __chkstk_darwin(v35);
  v381 = &v378 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v382 = &v378 - v38;
  __chkstk_darwin(v39);
  v379 = &v378 - v40;
  __chkstk_darwin(v41);
  v380 = &v378 - v42;
  __chkstk_darwin(v43);
  v387 = &v378 - v44;
  __chkstk_darwin(v45);
  v389 = &v378 - v46;
  __chkstk_darwin(v47);
  v386 = &v378 - v48;
  __chkstk_darwin(v49);
  v388 = &v378 - v50;
  __chkstk_darwin(v51);
  v396 = &v378 - v52;
  __chkstk_darwin(v53);
  v397 = &v378 - v54;
  __chkstk_darwin(v55);
  v406 = &v378 - v56;
  __chkstk_darwin(v57);
  v407 = &v378 - v58;
  __chkstk_darwin(v59);
  v384 = &v378 - v60;
  __chkstk_darwin(v61);
  v385 = &v378 - v62;
  __chkstk_darwin(v63);
  v392 = &v378 - v64;
  __chkstk_darwin(v65);
  v393 = &v378 - v66;
  __chkstk_darwin(v67);
  v395 = &v378 - v68;
  __chkstk_darwin(v69);
  v405 = &v378 - v70;
  __chkstk_darwin(v71);
  v394 = &v378 - v72;
  __chkstk_darwin(v73);
  v404 = &v378 - v74;
  __chkstk_darwin(v75);
  v402 = &v378 - v76;
  __chkstk_darwin(v77);
  v403 = &v378 - v78;
  __chkstk_darwin(v79);
  v410 = &v378 - v80;
  __chkstk_darwin(v81);
  v411 = &v378 - v82;
  __chkstk_darwin(v83);
  v400 = &v378 - v84;
  __chkstk_darwin(v85);
  v401 = &v378 - v86;
  v87 = sub_1004A4E34();
  v88 = *(v87 - 8);
  __chkstk_darwin(v87);
  v426 = (&v378 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v90);
  v92 = &v378 - v91;
  __chkstk_darwin(v93);
  v95 = &v378 - v94;
  v96 = sub_1004A4904();
  v429 = *(v96 - 8);
  v430 = v96;
  __chkstk_darwin(v96);
  v98 = (&v378 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0));
  v99 = sub_1004A4944();
  v100 = *(v99 - 1);
  __chkstk_darwin(v99);
  v102 = &v378 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  v433 = swift_projectBox();
  v103 = tracingSignposter.unsafeMutableAddressor();
  v104 = *(v100 + 16);
  v427 = v99;
  v104(v102, v103, v99);
  v415 = v35;
  v422 = a2;
  v428 = v98;
  sub_1004A4914();
  v105 = *(v88 + 16);
  v105(v95, v439, v87);
  v106 = sub_1004A4934();
  LODWORD(v418) = sub_1004A6154();
  v107 = sub_1004A6354();
  v438 = v88;
  v434 = v87;
  v432 = v88 + 16;
  v436 = v105;
  if ((v107 & 1) == 0)
  {
    v111 = *(v88 + 8);
    v111(v95, v87);
    v112 = v87;
    v110 = v435;
    v113 = v428;
    goto LABEL_18;
  }

  v378 = swift_slowAlloc();
  *v378 = 67109120;
  v105(v92, v95, v87);
  v108 = (*(v88 + 88))(v92, v87);
  if (v108 == enum case for NWConnection.State.waiting(_:))
  {
    v109 = 4;
    v110 = v435;
  }

  else
  {
    v110 = v435;
    if (v108 != enum case for NWConnection.State.failed(_:))
    {
      if (v108 == enum case for NWConnection.State.setup(_:))
      {
        v109 = 3;
      }

      else if (v108 == enum case for NWConnection.State.preparing(_:))
      {
        v109 = 5;
      }

      else if (v108 == enum case for NWConnection.State.ready(_:))
      {
        v109 = 6;
      }

      else
      {
        if (v108 != enum case for NWConnection.State.cancelled(_:))
        {
          v109 = 0;
          goto LABEL_7;
        }

        v109 = 8;
      }

      v115 = v434;
      v114 = v438;
      goto LABEL_17;
    }

    v109 = 7;
  }

LABEL_7:
  v114 = v438;
  v115 = v434;
  (*(v438 + 8))(v92, v434);
LABEL_17:
  v111 = *(v114 + 8);
  v111(v95, v115);
  v116 = v378;
  *(v378 + 1) = v109;
  v113 = v428;
  v117 = sub_1004A48F4();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v106, v418, v117, "Connection.networkStateUpdate", "%u", v116, 8u);

  v112 = v115;
LABEL_18:

  (*(v429 + 1))(v113, v430);
  (*(v100 + 8))(v102, v427);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v120 = v436;
  v119 = v437;
  if (!result)
  {
    return result;
  }

  v121 = result;
  v122 = v426;
  v436(v426, v439, v112);
  v123 = v438;
  v124 = *(v438 + 88);
  v430 = v438 + 88;
  v125 = v124(v122, v112);
  v428 = v111;
  if (v125 == enum case for NWConnection.State.waiting(_:))
  {
    v431 = v121;
    (*(v123 + 96))(v122, v112);
    v126 = v423;
    (*(v119 + 32))(v423, v122, v110);
    v127 = *(v119 + 16);
    v128 = v413;
    v127(v413, v126, v110);
    v129 = (*(v119 + 88))(v128, v110);
    if (v129 == enum case for NWError.posix(_:))
    {
      (*(v119 + 96))(v128, v110);
      v130 = *v128;
      v131 = v119;
      v132 = v422;
      v133 = v411;
      sub_1001C1C6C(v422, v411, _s6LoggerVMa);
      v134 = v410;
      sub_1001C1C6C(v132, v410, _s6LoggerVMa);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v135 = sub_1004A4A54();
      v136 = sub_1004A6034();
      if (os_log_type_enabled(v135, v136))
      {
        v137 = swift_slowAlloc();
        v429 = v124;
        v138 = v137;
        v139 = swift_slowAlloc();
        v440 = v139;
        *v138 = 68158466;
        *(v138 + 4) = 2;
        *(v138 + 8) = 256;
        LODWORD(v427) = v130;
        v140 = v415;
        v141 = v134;
        v142 = *(v134 + *(v415 + 20));
        sub_1001C1C0C(v141, _s6LoggerVMa);
        *(v138 + 10) = v142;
        *(v138 + 11) = 2082;
        v143 = *(v133 + *(v140 + 20) + 4);
        sub_1001C1C0C(v133, _s6LoggerVMa);
        v144 = ConnectionID.debugDescription.getter(v143);
        v146 = sub_10015BA6C(v144, v145, &v440);

        *(v138 + 13) = v146;
        *(v138 + 21) = 1024;
        *(v138 + 23) = sub_1004A4B64();
        _os_log_impl(&_mh_execute_header, v135, v136, "[%.*hhx-%{public}s] state: waiting, POSIX %{darwin.errno}d", v138, 0x1Bu);
        sub_1000197E0(v139);
        v123 = v438;

        v124 = v429;

        (*(v131 + 8))(v423, v435);
      }

      else
      {
        sub_1001C1C0C(v134, _s6LoggerVMa);

        sub_1001C1C0C(v133, _s6LoggerVMa);
        (*(v131 + 8))(v423, v110);
      }

      v206 = v425;
      v207 = v424;
      v209 = v433;
      v208 = v434;
      v120 = v436;
      goto LABEL_80;
    }

    if (v129 == enum case for NWError.dns(_:))
    {
      v168 = v422;
      v169 = v403;
      sub_1001C1C6C(v422, v403, _s6LoggerVMa);
      v170 = v402;
      sub_1001C1C6C(v168, v402, _s6LoggerVMa);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v171 = v408;
      v427 = v127;
      v127(v408, v126, v110);
      v172 = sub_1004A4A54();
      v173 = sub_1004A6034();
      if (!os_log_type_enabled(v172, v173))
      {
        sub_1001C1C0C(v170, _s6LoggerVMa);

        v257 = *(v437 + 8);
        v257(v171, v110);
        sub_1001C1C0C(v169, _s6LoggerVMa);
        v257(v423, v110);
        v206 = v425;
        v207 = v424;
        v209 = v433;
        v208 = v434;
        v120 = v436;
        v123 = v438;
        goto LABEL_80;
      }

      v174 = swift_slowAlloc();
      LODWORD(v422) = v173;
      v175 = v174;
      v419 = swift_slowAlloc();
      v176 = swift_slowAlloc();
      v429 = v124;
      v426 = v176;
      v440 = v176;
      *v175 = 68158466;
      *(v175 + 4) = 2;
      *(v175 + 8) = 256;
      v177 = v415;
      v178 = v171;
      v179 = *(v170 + *(v415 + 20));
      v180 = v110;
      sub_1001C1C0C(v170, _s6LoggerVMa);
      *(v175 + 10) = v179;
      *(v175 + 11) = 2082;
      v181 = *(v169 + *(v177 + 20) + 4);
      sub_1001C1C0C(v169, _s6LoggerVMa);
      v182 = ConnectionID.debugDescription.getter(v181);
      v184 = sub_10015BA6C(v182, v183, &v440);

      *(v175 + 13) = v184;
      *(v175 + 21) = 2112;
      sub_1001C1FF4(&qword_1005D35D0, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
      swift_allocError();
      v427(v185, v178, v110);
      v186 = sub_1004A4264();
      v187 = *(v437 + 8);
      v187(v178, v110);

      *(v175 + 23) = v186;
      v188 = v419;
      v419->isa = v186;
      _os_log_impl(&_mh_execute_header, v172, v422, "[%.*hhx-%{public}s] state: waiting, DNS %@", v175, 0x1Fu);
      sub_100025F40(v188, &qword_1005D51A0, &qword_1004D0940);
      v123 = v438;

      v189 = &v441;
    }

    else
    {
      if (v129 != enum case for NWError.tls(_:))
      {
        v272 = v422;
        sub_1001C1C6C(v422, v405, _s6LoggerVMa);
        v273 = v395;
        sub_1001C1C6C(v272, v395, _s6LoggerVMa);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v127(v409, v126, v110);
        v274 = sub_1004A4A54();
        v275 = sub_1004A6034();
        if (os_log_type_enabled(v274, v275))
        {
          v276 = swift_slowAlloc();
          LODWORD(v426) = v275;
          v277 = v276;
          v422 = swift_slowAlloc();
          v278 = swift_slowAlloc();
          v429 = v124;
          v427 = v278;
          v440 = v278;
          *v277 = 68158466;
          *(v277 + 4) = 2;
          *(v277 + 8) = 256;
          v279 = v415;
          v280 = v409;
          v281 = *(v273 + *(v415 + 20));
          v419 = v274;
          v282 = v110;
          sub_1001C1C0C(v273, _s6LoggerVMa);
          *(v277 + 10) = v281;
          *(v277 + 11) = 2082;
          v283 = *(v405 + *(v279 + 20) + 4);
          sub_1001C1C0C(v405, _s6LoggerVMa);
          v284 = ConnectionID.debugDescription.getter(v283);
          v286 = sub_10015BA6C(v284, v285, &v440);

          *(v277 + 13) = v286;
          *(v277 + 21) = 2112;
          sub_1001C1FF4(&qword_1005D35D0, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
          swift_allocError();
          v127(v287, v280, v110);
          v288 = sub_1004A4264();
          v289 = *(v437 + 8);
          v289(v280, v110);

          *(v277 + 23) = v288;
          v290 = v422;
          *v422 = v288;
          v291 = v419;
          _os_log_impl(&_mh_execute_header, v419, v426, "[%.*hhx-%{public}s] state: waiting, %@", v277, 0x1Fu);
          sub_100025F40(v290, &qword_1005D51A0, &qword_1004D0940);
          v123 = v438;

          sub_1000197E0(v427);
          v124 = v429;

          v289(v423, v282);
          v206 = v425;
        }

        else
        {
          sub_1001C1C0C(v273, _s6LoggerVMa);

          v289 = *(v437 + 8);
          v289(v409, v110);
          sub_1001C1C0C(v405, _s6LoggerVMa);
          v289(v423, v110);
          v206 = v425;
          v282 = v110;
        }

        v209 = v433;
        v289(v128, v282);
        v207 = v424;
        v208 = v434;
        goto LABEL_67;
      }

      v230 = v422;
      sub_1001C1C6C(v422, v404, _s6LoggerVMa);
      v231 = v394;
      sub_1001C1C6C(v230, v394, _s6LoggerVMa);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v232 = v399;
      v127(v399, v126, v110);
      v172 = sub_1004A4A54();
      v233 = sub_1004A6034();
      if (!os_log_type_enabled(v172, v233))
      {
        sub_1001C1C0C(v231, _s6LoggerVMa);

        v307 = *(v437 + 8);
        v307(v232, v110);
        sub_1001C1C0C(v404, _s6LoggerVMa);
        v307(v423, v110);
        goto LABEL_62;
      }

      v234 = swift_slowAlloc();
      LODWORD(v426) = v233;
      v235 = v234;
      v422 = swift_slowAlloc();
      v236 = swift_slowAlloc();
      v429 = v124;
      v427 = v236;
      v440 = v236;
      *v235 = 68158466;
      *(v235 + 4) = 2;
      *(v235 + 8) = 256;
      v237 = v415;
      v238 = *(v231 + *(v415 + 20));
      v239 = v404;
      v180 = v110;
      sub_1001C1C0C(v231, _s6LoggerVMa);
      *(v235 + 10) = v238;
      *(v235 + 11) = 2082;
      v240 = *(v239 + *(v237 + 20) + 4);
      sub_1001C1C0C(v239, _s6LoggerVMa);
      v241 = ConnectionID.debugDescription.getter(v240);
      v243 = sub_10015BA6C(v241, v242, &v440);

      *(v235 + 13) = v243;
      *(v235 + 21) = 2112;
      sub_1001C1FF4(&qword_1005D35D0, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
      swift_allocError();
      v244 = v399;
      v127(v245, v399, v110);
      v246 = sub_1004A4264();
      v187 = *(v437 + 8);
      v187(v244, v110);

      *(v235 + 23) = v246;
      v247 = v422;
      *v422 = v246;
      _os_log_impl(&_mh_execute_header, v172, v426, "[%.*hhx-%{public}s] state: waiting, TLS %@", v235, 0x1Fu);
      sub_100025F40(v247, &qword_1005D51A0, &qword_1004D0940);
      v123 = v438;

      v189 = &v442;
    }

    sub_1000197E0(*(v189 - 32));
    v124 = v429;

    v187(v423, v180);
LABEL_62:
    v206 = v425;
    v207 = v424;
    v209 = v433;
    v208 = v434;
LABEL_67:
    v120 = v436;
    goto LABEL_80;
  }

  if (v125 == enum case for NWConnection.State.failed(_:))
  {
    v431 = v121;
    (*(v123 + 96))(v122, v112);
    v147 = v419;
    (*(v119 + 32))(v419, v122, v110);
    v148 = (v119 + 16);
    v149 = v412;
    v150 = v147;
    v151 = *(v119 + 16);
    v151(v412, v150, v110);
    v152 = (*(v119 + 88))(v149, v110);
    v427 = v151;
    if (v152 == enum case for NWError.posix(_:))
    {
      (*(v119 + 96))(v149, v110);
      v153 = *v149;
      v154 = v422;
      v155 = v407;
      sub_1001C1C6C(v422, v407, _s6LoggerVMa);
      v156 = v406;
      sub_1001C1C6C(v154, v406, _s6LoggerVMa);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v157 = sub_1004A4A54();
      v158 = sub_1004A6014();
      if (os_log_type_enabled(v157, v158))
      {
        v159 = swift_slowAlloc();
        v429 = v124;
        v160 = v159;
        v161 = swift_slowAlloc();
        v440 = v161;
        *v160 = 68158466;
        *(v160 + 4) = 2;
        *(v160 + 8) = 256;
        LODWORD(v426) = v153;
        v162 = v415;
        v163 = *(v156 + *(v415 + 20));
        sub_1001C1C0C(v156, _s6LoggerVMa);
        *(v160 + 10) = v163;
        *(v160 + 11) = 2082;
        v164 = *(v155 + *(v162 + 20) + 4);
        sub_1001C1C0C(v155, _s6LoggerVMa);
        v165 = ConnectionID.debugDescription.getter(v164);
        v167 = sub_10015BA6C(v165, v166, &v440);

        *(v160 + 13) = v167;
        *(v160 + 21) = 1024;
        *(v160 + 23) = sub_1004A4B64();
        _os_log_impl(&_mh_execute_header, v157, v158, "[%.*hhx-%{public}s] state: failed, POSIX %{darwin.errno}d", v160, 0x1Bu);
        sub_1000197E0(v161);
        v123 = v438;

        v124 = v429;
      }

      else
      {
        sub_1001C1C0C(v156, _s6LoggerVMa);

        sub_1001C1C0C(v155, _s6LoggerVMa);
      }

      v206 = v425;
      v209 = v433;
      v221 = v435;
      goto LABEL_75;
    }

    if (v152 == enum case for NWError.dns(_:))
    {
      v210 = v422;
      v211 = v397;
      sub_1001C1C6C(v422, v397, _s6LoggerVMa);
      v212 = v396;
      sub_1001C1C6C(v210, v396, _s6LoggerVMa);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v213 = v398;
      v151(v398, v419, v110);
      v214 = sub_1004A4A54();
      LODWORD(v422) = sub_1004A6014();
      v423 = v214;
      if (os_log_type_enabled(v214, v422))
      {
        v215 = swift_slowAlloc();
        v413 = swift_slowAlloc();
        v216 = swift_slowAlloc();
        v429 = v124;
        v418 = v216;
        v440 = v216;
        *v215 = 68158466;
        *(v215 + 4) = 2;
        *(v215 + 8) = 256;
        v217 = v415;
        v218 = *(v415 + 20);
        v426 = v148;
        v219 = *(v212 + v218);
        v220 = v213;
        v221 = v110;
        sub_1001C1C0C(v212, _s6LoggerVMa);
        *(v215 + 10) = v219;
        *(v215 + 11) = 2082;
        v222 = *(v211 + *(v217 + 20) + 4);
        sub_1001C1C0C(v211, _s6LoggerVMa);
        v223 = ConnectionID.debugDescription.getter(v222);
        v225 = sub_10015BA6C(v223, v224, &v440);

        *(v215 + 13) = v225;
        *(v215 + 21) = 2112;
        sub_1001C1FF4(&qword_1005D35D0, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
        swift_allocError();
        v151(v226, v220, v110);
        v227 = sub_1004A4264();
        (*(v437 + 8))(v220, v110);

        *(v215 + 23) = v227;
        v228 = v413;
        *v413 = v227;
        v229 = "[%.*hhx-%{public}s] state: failed, DNS %@";
LABEL_54:
        v271 = v423;
        _os_log_impl(&_mh_execute_header, v423, v422, v229, v215, 0x1Fu);
        sub_100025F40(v228, &qword_1005D51A0, &qword_1004D0940);
        v123 = v438;

        sub_1000197E0(v418);
        v124 = v429;

        v206 = v425;
        v209 = v433;
LABEL_75:
        v345 = v414;
        v427(v414, v419, v221);
        type metadata accessor for ConnectionEvent.FailureReason(0);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        sub_10000C9C0(&qword_1005D3CB0, &unk_1004DDA30);
        v346 = (*(v421 + 80) + 32) & ~*(v421 + 80);
        v347 = swift_allocObject();
        *(v347 + 16) = xmmword_1004CEAA0;
        sub_1001C1C6C(v345, v347 + v346, type metadata accessor for ConnectionEvent);
        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_1001A5A14(v347);

          swift_unknownObjectRelease();
        }

        else
        {
        }

        sub_1001C1C0C(v414, type metadata accessor for ConnectionEvent);
        (*(v437 + 8))(v419, v435);
LABEL_79:
        v207 = v424;
        v208 = v434;
        goto LABEL_80;
      }
    }

    else
    {
      if (v152 != enum case for NWError.tls(_:))
      {
        v429 = v124;
        v308 = v422;
        v309 = v389;
        sub_1001C1C6C(v422, v389, _s6LoggerVMa);
        v310 = v387;
        sub_1001C1C6C(v308, v387, _s6LoggerVMa);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v311 = v391;
        v151(v391, v419, v110);
        v312 = sub_1004A4A54();
        v313 = sub_1004A6014();
        if (os_log_type_enabled(v312, v313))
        {
          v314 = swift_slowAlloc();
          LODWORD(v423) = v313;
          v315 = v314;
          v422 = swift_slowAlloc();
          v426 = swift_slowAlloc();
          v440 = v426;
          *v315 = 68158466;
          *(v315 + 4) = 2;
          *(v315 + 8) = 256;
          v316 = v415;
          v317 = v310;
          v318 = *(v310 + *(v415 + 20));
          v319 = v311;
          v221 = v110;
          sub_1001C1C0C(v317, _s6LoggerVMa);
          *(v315 + 10) = v318;
          *(v315 + 11) = 2082;
          v320 = *(v309 + *(v316 + 20) + 4);
          sub_1001C1C0C(v309, _s6LoggerVMa);
          v321 = ConnectionID.debugDescription.getter(v320);
          v323 = sub_10015BA6C(v321, v322, &v440);

          *(v315 + 13) = v323;
          *(v315 + 21) = 2112;
          sub_1001C1FF4(&qword_1005D35D0, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
          swift_allocError();
          v151(v324, v319, v110);
          v325 = sub_1004A4264();
          v326 = *(v437 + 8);
          v326(v319, v110);

          *(v315 + 23) = v325;
          v327 = v422;
          *v422 = v325;
          _os_log_impl(&_mh_execute_header, v312, v423, "[%.*hhx-%{public}s] state: failed, %@", v315, 0x1Fu);
          sub_100025F40(v327, &qword_1005D51A0, &qword_1004D0940);
          v123 = v438;

          sub_1000197E0(v426);

          v206 = v425;
        }

        else
        {
          sub_1001C1C0C(v310, _s6LoggerVMa);

          v326 = *(v437 + 8);
          v326(v311, v110);
          sub_1001C1C0C(v309, _s6LoggerVMa);
          v206 = v425;
          v221 = v110;
        }

        v209 = v433;
        v326(v412, v221);
        v120 = v436;
        v124 = v429;
        goto LABEL_75;
      }

      v258 = v422;
      v211 = v388;
      sub_1001C1C6C(v422, v388, _s6LoggerVMa);
      v212 = v386;
      sub_1001C1C6C(v258, v386, _s6LoggerVMa);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v213 = v390;
      v151(v390, v419, v110);
      v259 = sub_1004A4A54();
      LODWORD(v422) = sub_1004A6014();
      v423 = v259;
      if (os_log_type_enabled(v259, v422))
      {
        v215 = swift_slowAlloc();
        v413 = swift_slowAlloc();
        v260 = swift_slowAlloc();
        v429 = v124;
        v418 = v260;
        v440 = v260;
        *v215 = 68158466;
        *(v215 + 4) = 2;
        *(v215 + 8) = 256;
        v261 = v415;
        v262 = *(v415 + 20);
        v426 = v148;
        v263 = *(v212 + v262);
        v264 = v213;
        v221 = v110;
        sub_1001C1C0C(v212, _s6LoggerVMa);
        *(v215 + 10) = v263;
        *(v215 + 11) = 2082;
        v265 = *(v211 + *(v261 + 20) + 4);
        sub_1001C1C0C(v211, _s6LoggerVMa);
        v266 = ConnectionID.debugDescription.getter(v265);
        v268 = sub_10015BA6C(v266, v267, &v440);

        *(v215 + 13) = v268;
        *(v215 + 21) = 2112;
        sub_1001C1FF4(&qword_1005D35D0, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
        swift_allocError();
        v151(v269, v264, v110);
        v270 = sub_1004A4264();
        (*(v437 + 8))(v264, v110);

        *(v215 + 23) = v270;
        v228 = v413;
        *v413 = v270;
        v229 = "[%.*hhx-%{public}s] state: failed, TLS %@";
        goto LABEL_54;
      }
    }

    sub_1001C1C0C(v212, _s6LoggerVMa);

    (*(v437 + 8))(v213, v110);
    sub_1001C1C0C(v211, _s6LoggerVMa);
    v206 = v425;
    v221 = v110;
    v209 = v433;
    goto LABEL_75;
  }

  if (v125 == enum case for NWConnection.State.setup(_:))
  {
    v190 = v422;
    v191 = v401;
    sub_1001C1C6C(v422, v401, _s6LoggerVMa);
    v192 = v400;
    sub_1001C1C6C(v190, v400, _s6LoggerVMa);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v193 = sub_1004A4A54();
    v194 = sub_1004A6004();
    if (os_log_type_enabled(v193, v194))
    {
      v195 = swift_slowAlloc();
      v196 = swift_slowAlloc();
      v429 = v124;
      v197 = v196;
      v440 = v196;
      *v195 = 68158210;
      *(v195 + 4) = 2;
      *(v195 + 8) = 256;
      v198 = v415;
      v199 = v192;
      v200 = *(v192 + *(v415 + 20));
      sub_1001C1C0C(v199, _s6LoggerVMa);
      *(v195 + 10) = v200;
      *(v195 + 11) = 2082;
      v201 = *(v191 + *(v198 + 20) + 4);
      sub_1001C1C0C(v191, _s6LoggerVMa);
      v202 = ConnectionID.debugDescription.getter(v201);
      v204 = sub_10015BA6C(v202, v203, &v440);
      v123 = v438;

      *(v195 + 13) = v204;
      v205 = "[%.*hhx-%{public}s] state: setup";
LABEL_45:
      _os_log_impl(&_mh_execute_header, v193, v194, v205, v195, 0x15u);
      sub_1000197E0(v197);
      v124 = v429;

LABEL_47:
      v206 = v425;
      v207 = v424;
      v209 = v433;
      v208 = v434;
      goto LABEL_80;
    }

    goto LABEL_46;
  }

  if (v125 == enum case for NWConnection.State.preparing(_:))
  {
    v248 = v422;
    v191 = v393;
    sub_1001C1C6C(v422, v393, _s6LoggerVMa);
    v192 = v392;
    sub_1001C1C6C(v248, v392, _s6LoggerVMa);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v193 = sub_1004A4A54();
    v194 = sub_1004A6004();
    if (os_log_type_enabled(v193, v194))
    {
      v195 = swift_slowAlloc();
      v249 = swift_slowAlloc();
      v429 = v124;
      v197 = v249;
      v440 = v249;
      *v195 = 68158210;
      *(v195 + 4) = 2;
      *(v195 + 8) = 256;
      v250 = v415;
      v251 = v192;
      v252 = *(v192 + *(v415 + 20));
      sub_1001C1C0C(v251, _s6LoggerVMa);
      *(v195 + 10) = v252;
      *(v195 + 11) = 2082;
      v253 = *(v191 + *(v250 + 20) + 4);
      sub_1001C1C0C(v191, _s6LoggerVMa);
      v254 = ConnectionID.debugDescription.getter(v253);
      v256 = sub_10015BA6C(v254, v255, &v440);
      v123 = v438;

      *(v195 + 13) = v256;
      v205 = "[%.*hhx-%{public}s] state: preparing";
      goto LABEL_45;
    }

LABEL_46:
    sub_1001C1C0C(v192, _s6LoggerVMa);

    sub_1001C1C0C(v191, _s6LoggerVMa);
    goto LABEL_47;
  }

  if (v125 == enum case for NWConnection.State.ready(_:))
  {
    v292 = v422;
    v293 = v385;
    sub_1001C1C6C(v422, v385, _s6LoggerVMa);
    v294 = v384;
    sub_1001C1C6C(v292, v384, _s6LoggerVMa);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v295 = sub_1004A4A54();
    v296 = sub_1004A6034();
    if (os_log_type_enabled(v295, v296))
    {
      v297 = swift_slowAlloc();
      v298 = swift_slowAlloc();
      v429 = v124;
      v299 = v298;
      v440 = v298;
      *v297 = 68158210;
      *(v297 + 4) = 2;
      *(v297 + 8) = 256;
      v300 = v415;
      v301 = v294;
      v302 = *(v294 + *(v415 + 20));
      sub_1001C1C0C(v301, _s6LoggerVMa);
      *(v297 + 10) = v302;
      *(v297 + 11) = 2082;
      v303 = *(v293 + *(v300 + 20) + 4);
      sub_1001C1C0C(v293, _s6LoggerVMa);
      v304 = ConnectionID.debugDescription.getter(v303);
      v306 = sub_10015BA6C(v304, v305, &v440);
      v123 = v438;

      *(v297 + 13) = v306;
      _os_log_impl(&_mh_execute_header, v295, v296, "[%.*hhx-%{public}s] state: ready", v297, 0x15u);
      sub_1000197E0(v299);
      v124 = v429;
    }

    else
    {
      sub_1001C1C0C(v294, _s6LoggerVMa);

      sub_1001C1C0C(v293, _s6LoggerVMa);
    }

    v209 = v433;
    v343 = swift_allocObject();
    swift_weakInit();
    v344 = swift_allocObject();
    *(v344 + 16) = sub_1001C2148;
    *(v344 + 24) = v343;
    swift_retain_n();
    sub_1004A4D24();

    v206 = v425;
    goto LABEL_79;
  }

  if (v125 == enum case for NWConnection.State.cancelled(_:))
  {
    v328 = v422;
    v329 = v380;
    sub_1001C1C6C(v422, v380, _s6LoggerVMa);
    v330 = v379;
    sub_1001C1C6C(v328, v379, _s6LoggerVMa);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v331 = sub_1004A4A54();
    v332 = sub_1004A5FF4();
    if (os_log_type_enabled(v331, v332))
    {
      v333 = swift_slowAlloc();
      v334 = swift_slowAlloc();
      v429 = v124;
      v335 = v334;
      v440 = v334;
      *v333 = 68158210;
      *(v333 + 4) = 2;
      *(v333 + 8) = 256;
      v336 = v415;
      v337 = v330;
      v338 = *(v330 + *(v415 + 20));
      sub_1001C1C0C(v337, _s6LoggerVMa);
      *(v333 + 10) = v338;
      *(v333 + 11) = 2082;
      v339 = *(v329 + *(v336 + 20) + 4);
      sub_1001C1C0C(v329, _s6LoggerVMa);
      v340 = ConnectionID.debugDescription.getter(v339);
      v342 = sub_10015BA6C(v340, v341, &v440);
      v123 = v438;

      *(v333 + 13) = v342;
      _os_log_impl(&_mh_execute_header, v331, v332, "[%.*hhx-%{public}s] state: cancelled", v333, 0x15u);
      sub_1000197E0(v335);
      v124 = v429;
    }

    else
    {
      sub_1001C1C0C(v330, _s6LoggerVMa);

      sub_1001C1C0C(v329, _s6LoggerVMa);
    }

    v206 = v425;
    v374 = v433;
    v375 = v383;
    type metadata accessor for ConnectionEvent.FailureReason(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_10000C9C0(&qword_1005D3CB0, &unk_1004DDA30);
    v376 = (*(v421 + 80) + 32) & ~*(v421 + 80);
    v377 = swift_allocObject();
    *(v377 + 16) = xmmword_1004CEAA0;
    sub_1001C1C6C(v375, v377 + v376, type metadata accessor for ConnectionEvent);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1001A5A14(v377);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v208 = v434;
    sub_1001C1C0C(v375, type metadata accessor for ConnectionEvent);
    v207 = v424;
    v209 = v374;
  }

  else
  {
    v359 = v422;
    v360 = v382;
    sub_1001C1C6C(v422, v382, _s6LoggerVMa);
    v361 = v381;
    sub_1001C1C6C(v359, v381, _s6LoggerVMa);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v362 = sub_1004A4A54();
    v363 = sub_1004A6014();
    if (os_log_type_enabled(v362, v363))
    {
      v364 = swift_slowAlloc();
      v365 = swift_slowAlloc();
      v429 = v124;
      v366 = v365;
      v440 = v365;
      *v364 = 68158210;
      *(v364 + 4) = 2;
      *(v364 + 8) = 256;
      v367 = v415;
      v368 = v361;
      v369 = *(v361 + *(v415 + 20));
      sub_1001C1C0C(v368, _s6LoggerVMa);
      *(v364 + 10) = v369;
      *(v364 + 11) = 2082;
      v122 = v426;
      v370 = *(v360 + *(v367 + 20) + 4);
      sub_1001C1C0C(v360, _s6LoggerVMa);
      v371 = ConnectionID.debugDescription.getter(v370);
      v373 = sub_10015BA6C(v371, v372, &v440);
      v123 = v438;

      *(v364 + 13) = v373;
      _os_log_impl(&_mh_execute_header, v362, v363, "[%.*hhx-%{public}s] state: <unknown>", v364, 0x15u);
      sub_1000197E0(v366);
      v124 = v429;
    }

    else
    {
      sub_1001C1C0C(v361, _s6LoggerVMa);

      sub_1001C1C0C(v360, _s6LoggerVMa);
    }

    v206 = v425;
    v209 = v433;
    v208 = v434;
    v428(v122, v434);
    v207 = v424;
  }

LABEL_80:
  swift_beginAccess();
  sub_10000E268(v209, v206, &qword_1005D3CD0, &qword_1004DDA58);
  if ((*(v123 + 48))(v206, 1, v208) == 1)
  {
LABEL_81:
    v348 = v123;
    v349 = v416;
    v350 = v120;
    v351 = v439;
    v352 = v208;
    v353 = v350;
    (v350)(v416);
    swift_storeEnumTagMultiPayload();
    sub_10000C9C0(&qword_1005D3CB0, &unk_1004DDA30);
    v354 = (*(v421 + 80) + 32) & ~*(v421 + 80);
    v355 = swift_allocObject();
    *(v355 + 16) = xmmword_1004CEAA0;
    sub_1001C1C6C(v349, v355 + v354, type metadata accessor for ConnectionEvent);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1001A5A14(v355);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    sub_1001C1C0C(v349, type metadata accessor for ConnectionEvent);
    v357 = v417;
    v353(v417, v351, v352);
    (*(v348 + 56))(v357, 0, 1, v352);
    v358 = v433;
    swift_beginAccess();
    sub_1001C20D8(v357, v358);
    return sub_100025F40(v206, &qword_1005D3CD0, &qword_1004DDA58);
  }

  sub_10000E268(v206, v207, &qword_1005D3CD0, &qword_1004DDA58);
  v356 = v124(v207, v208);
  if (v356 == enum case for NWConnection.State.failed(_:))
  {

    v428(v207, v208);
  }

  else
  {
    if (v356 != enum case for NWConnection.State.cancelled(_:))
    {
      v428(v207, v208);
      goto LABEL_81;
    }
  }

  return sub_100025F40(v206, &qword_1005D3CD0, &qword_1004DDA58);
}

uint64_t sub_1001BCFA4(uint64_t a1, __n128 a2)
{
  v81 = type metadata accessor for ConnectionEvent(0);
  v83 = *(v81 - 8);
  __chkstk_darwin(v81);
  v82 = v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004A4C94();
  v6 = *(v5 - 8);
  v88 = v5;
  v89 = v6;
  __chkstk_darwin(v5);
  v8 = v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1004A51E4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v70 - v14;
  __chkstk_darwin(v16);
  v85 = v70 - v17;
  __chkstk_darwin(v18);
  v87 = v70 - v19;
  __chkstk_darwin(v20);
  v22 = v70 - v21;
  if (qword_1005D2D70 != -1)
  {
    swift_once();
  }

  v23 = sub_1004A4A74();
  sub_1001C203C(v23, qword_1005D3A08);

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v84 = v2;
  v24 = v10;
  v25 = *(v10 + 16);
  v25(v22, a1, v9);
  v25(v87, a1, v9);
  v25(v85, a1, v9);
  v25(v15, a1, v9);
  v80 = a1;
  v25(v12, a1, v9);
  v26 = sub_1004A4A54();
  v27 = sub_1004A6034();
  if (os_log_type_enabled(v26, v27))
  {
    v74 = v27;
    v76 = v26;
    v77 = v15;
    v78 = v12;
    v28 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v93[0] = v73;
    *v28 = 68159490;
    *(v28 + 4) = 2;
    *(v28 + 8) = 256;
    v29 = v84 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger;
    v30 = v29 + *(_s6LoggerVMa(0) + 20);
    *(v28 + 10) = *v30;

    *(v28 + 11) = 2082;
    v31 = ConnectionID.debugDescription.getter(*(v30 + 4));
    v33 = sub_10015BA6C(v31, v32, v93);

    *(v28 + 13) = v33;
    *(v28 + 21) = 1024;
    LODWORD(v30) = sub_1004A5184() & 1;
    v34 = *(v24 + 8);
    v34(v22, v9);
    *(v28 + 23) = v30;
    *(v28 + 27) = 2082;
    v35 = v87;
    v36 = sub_1001FA828();
    v38 = v37;
    v79 = v24 + 8;
    v72 = v34;
    v34(v35, v9);
    v39 = sub_10015BA6C(v36, v38, v93);

    *(v28 + 29) = v39;
    v75 = v28;
    *(v28 + 37) = 2082;
    v40 = v85;
    v41 = sub_1004A51B4();
    v42 = *(v41 + 16);
    v43 = v83;
    if (v42)
    {
      v71 = v9;
      v92 = _swiftEmptyArrayStorage;
      sub_100091A08(0, v42, 0);
      v44 = v92;
      v87 = *(v89 + 16);
      v45 = (*(v89 + 80) + 32) & ~*(v89 + 80);
      v70[1] = v41;
      v46 = v41 + v45;
      v86 = *(v89 + 72);
      v89 += 16;
      v47 = (v89 - 8);
      do
      {
        v48 = v88;
        (v87)(v8, v46, v88);
        v90 = sub_1004A4C24();
        v91 = v49;
        v94._countAndFlagsBits = 10285;
        v94._object = 0xE200000000000000;
        sub_1004A5994(v94);
        v95._countAndFlagsBits = sub_1001FAC30();
        sub_1004A5994(v95);

        v96._countAndFlagsBits = 41;
        v96._object = 0xE100000000000000;
        sub_1004A5994(v96);
        v50 = v90;
        v51 = v91;
        (*v47)(v8, v48);
        v92 = v44;
        v53 = v44[2];
        v52 = v44[3];
        if (v53 >= v52 >> 1)
        {
          sub_100091A08((v52 > 1), v53 + 1, 1);
          v44 = v92;
        }

        v44[2] = v53 + 1;
        v54 = &v44[2 * v53];
        v54[4] = v50;
        v54[5] = v51;
        v46 += v86;
        --v42;
      }

      while (v42);

      v56 = v82;
      v43 = v83;
      v40 = v85;
      v9 = v71;
    }

    else
    {

      v44 = _swiftEmptyArrayStorage;
      v56 = v82;
    }

    v90 = v44;
    sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
    sub_10000DF44(&qword_1005CDA18, &unk_1005DA9A0, &unk_1004CF770, &protocol conformance descriptor for [A]);
    v57 = sub_1004A5614();
    v59 = v58;

    v60 = v72;
    v72(v40, v9);
    v61 = sub_10015BA6C(v57, v59, v93);

    v62 = v75;
    *(v75 + 39) = v61;
    *(v62 + 47) = 1024;
    v63 = v77;
    LODWORD(v57) = sub_1004A5164() & 1;
    v60(v63, v9);
    *(v62 + 49) = v57;
    *(v62 + 53) = 1024;
    v64 = v78;
    LODWORD(v61) = sub_1004A5174() & 1;
    v60(v64, v9);
    *(v62 + 55) = v61;
    v65 = v76;
    _os_log_impl(&_mh_execute_header, v76, v74, "[%.*hhx-%{public}s] Path did change. Constrained: %{BOOL}d, status: %{public}s, interfaces: %{public}s, IPv4: %{BOOL}d, IPv6: %{BOOL}d", v62, 0x3Bu);
    swift_arrayDestroy();
  }

  else
  {
    v55 = *(v24 + 8);
    v55(v12, v9);
    v55(v15, v9);
    v55(v22, v9);

    v55(v85, v9);
    v55(v87, v9);
    v56 = v82;
    v43 = v83;
  }

  v66 = _swiftEmptySetSingleton;
  v90 = _swiftEmptySetSingleton;
  if (sub_1004A5184())
  {
    sub_100201B74();
    v66 = v90;
  }

  *v56 = v66;
  swift_storeEnumTagMultiPayload();
  sub_10000C9C0(&qword_1005D3CB0, &unk_1004DDA30);
  v67 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_1004CEAA0;
  sub_1001C1C6C(v56, v68 + v67, type metadata accessor for ConnectionEvent);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1001A5A14(v68);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return sub_1001C1C0C(v56, type metadata accessor for ConnectionEvent);
}

uint64_t sub_1001BD898(char a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1001BD8FC((a1 & 1) == 0);
  }

  return result;
}

void sub_1001BD8FC(char a1)
{
  v2 = v1;
  if (qword_1005D2D70 != -1)
  {
    swift_once();
  }

  v4 = sub_1004A4A74();
  sub_1001C203C(v4, qword_1005D3A08);

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  oslog = sub_1004A4A54();
  v5 = sub_1004A6034();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 68158466;
    *(v6 + 4) = 2;
    *(v6 + 8) = 256;
    v8 = v2 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger;
    v9 = v8 + *(_s6LoggerVMa(0) + 20);
    *(v6 + 10) = *v9;

    *(v6 + 11) = 2082;
    v10 = ConnectionID.debugDescription.getter(*(v9 + 4));
    v12 = sub_10015BA6C(v10, v11, &v14);

    *(v6 + 13) = v12;
    *(v6 + 21) = 1024;
    *(v6 + 23) = (a1 & 1) == 0;
    _os_log_impl(&_mh_execute_header, oslog, v5, "[%.*hhx-%{public}s] Is viable: %{BOOL}d", v6, 0x1Bu);
    sub_1000197E0(v7);
  }

  else
  {
  }
}

uint64_t sub_1001BDAF4(char a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1001BDB54(a1 & 1, v4);
  }

  return result;
}

uint64_t sub_1001BDB54(char a1, __n128 a2)
{
  v3 = v2;
  v5 = type metadata accessor for ConnectionEvent(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005D2D70 != -1)
  {
    swift_once();
  }

  v9 = sub_1004A4A74();
  sub_1001C203C(v9, qword_1005D3A08);

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v10 = sub_1004A4A54();
  v11 = sub_1004A6034();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 68158466;
    *(v12 + 4) = 2;
    *(v12 + 8) = 256;
    v25 = v5;
    v26 = v13;
    v14 = v6;
    v15 = a1;
    v16 = v3 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger;
    v17 = v16 + *(_s6LoggerVMa(0) + 20);
    *(v12 + 10) = *v17;

    *(v12 + 11) = 2082;
    v18 = ConnectionID.debugDescription.getter(*(v17 + 4));
    v20 = sub_10015BA6C(v18, v19, &v26);

    *(v12 + 13) = v20;
    *(v12 + 21) = 1024;
    v21 = v15 & 1;
    v6 = v14;
    *(v12 + 23) = v21;
    _os_log_impl(&_mh_execute_header, v10, v11, "[%.*hhx-%{public}s] Better path available: %{BOOL}d", v12, 0x1Bu);
    sub_1000197E0(v13);
  }

  else
  {

    LOBYTE(v21) = a1 & 1;
  }

  *v8 = v21;
  swift_storeEnumTagMultiPayload();
  sub_10000C9C0(&qword_1005D3CB0, &unk_1004DDA30);
  v22 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1004CEAA0;
  sub_1001C1C6C(v8, v23 + v22, type metadata accessor for ConnectionEvent);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1001A5A14(v23);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return sub_1001C1C0C(v8, type metadata accessor for ConnectionEvent);
}

uint64_t sub_1001BDE7C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtC15IMAP2Connection10Connection_lastMessageTime) = static MonotonicTime.now()();
  }

  return result;
}

uint64_t sub_1001BDEE0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(a1);
  }

  return result;
}

uint64_t sub_1001BDF54(void (*a1)(char *, char *, uint64_t), __n128 a2)
{
  v75 = a1;
  v3 = type metadata accessor for ConnectionEvent(0);
  v4 = *(v3 - 8);
  v72 = v3;
  v73 = v4;
  __chkstk_darwin(v3);
  v74 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = _s6LoggerVMa(0);
  __chkstk_darwin(v70);
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v69 = &v67 - v9;
  v10 = sub_10000C9C0(&unk_1005D54F0, &unk_1004E8DA0);
  __chkstk_darwin(v10 - 8);
  v12 = &v67 - v11;
  v13 = sub_1004A5214();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v71 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v67 - v17;
  __chkstk_darwin(v19);
  v76 = &v67 - v20;
  __chkstk_darwin(v21);
  v77 = &v67 - v22;
  v23 = sub_1004A53F4();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v27 = (&v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = *(v2 + OBJC_IVAR____TtC15IMAP2Connection10Connection_queue);
  *v27 = v28;
  (*(v24 + 104))(v27, enum case for DispatchPredicate.onQueue(_:), v23, v25);
  v29 = v28;
  LOBYTE(v28) = sub_1004A5404();
  result = (*(v24 + 8))(v27, v23);
  if (v28)
  {
    *(v2 + OBJC_IVAR____TtC15IMAP2Connection10Connection_lastMessageTime) = static MonotonicTime.now()();
    sub_10000E268(v75, v12, &unk_1005D54F0, &unk_1004E8DA0);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      return sub_100025F40(v12, &unk_1005D54F0, &unk_1004E8DA0);
    }

    else
    {
      v31 = v2;
      v32 = v14;
      v33 = v77;
      (*(v14 + 32))(v77, v12, v13);
      v34 = *(v14 + 16);
      v35 = v76;
      v34(v76, v33, v13);
      if ((*(v14 + 88))(v35, v13) == enum case for NWError.posix(_:) && (v34(v18, v76, v13), (*(v14 + 96))(v18, v13), *v18 == 89))
      {
        v75 = v34;
        v36 = v31 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger;
        v37 = v69;
        sub_1001C1C6C(v31 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger, v69, _s6LoggerVMa);

        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v38 = sub_1004A4A54();
        v39 = sub_1004A4A74();
        (*(*(v39 - 8) + 8))(v37, v39);
        v40 = sub_1004A6034();
        if (os_log_type_enabled(v38, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v78 = v42;
          *v41 = 68158210;
          *(v41 + 4) = 2;
          *(v41 + 8) = 256;
          v43 = v36 + *(v70 + 20);
          *(v41 + 10) = *v43;

          *(v41 + 11) = 2082;
          v44 = ConnectionID.debugDescription.getter(*(v43 + 4));
          v46 = sub_10015BA6C(v44, v45, &v78);

          *(v41 + 13) = v46;
          _os_log_impl(&_mh_execute_header, v38, v40, "[%.*hhx-%{public}s] Failed to send data (connection is cancelled)", v41, 0x15u);
          sub_1000197E0(v42);
        }

        else
        {
        }

        v63 = v74;
        v51 = v75;
      }

      else
      {
        v69 = v14;
        v47 = v31 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger;
        sub_1001C1C6C(v31 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger, v7, _s6LoggerVMa);

        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v48 = v71;
        v34(v71, v77, v13);
        v49 = sub_1004A4A54();
        v50 = sub_1004A4A74();
        (*(*(v50 - 8) + 8))(v7, v50);
        v51 = v34;
        v52 = sub_1004A6014();
        if (os_log_type_enabled(v49, v52))
        {
          v53 = swift_slowAlloc();
          v75 = v51;
          v54 = v53;
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v78 = v68;
          *v54 = 68158466;
          *(v54 + 4) = 2;
          *(v54 + 8) = 256;
          v55 = v47 + *(v70 + 20);
          *(v54 + 10) = *v55;

          *(v54 + 11) = 2082;
          v56 = ConnectionID.debugDescription.getter(*(v55 + 4));
          v58 = sub_10015BA6C(v56, v57, &v78);

          *(v54 + 13) = v58;
          *(v54 + 21) = 2112;
          sub_1001C1FF4(&qword_1005D35D0, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
          swift_allocError();
          v75(v59, v48, v13);
          v60 = sub_1004A4264();
          v61 = v69;
          (*(v69 + 8))(v48, v13);

          *(v54 + 23) = v60;
          v62 = v67;
          *v67 = v60;
          _os_log_impl(&_mh_execute_header, v49, v52, "[%.*hhx-%{public}s] Failed to send data: %@", v54, 0x1Fu);
          sub_100025F40(v62, &qword_1005D51A0, &qword_1004D0940);

          sub_1000197E0(v68);

          v51 = v75;

          v32 = v61;
        }

        else
        {

          v32 = v69;
          (*(v69 + 8))(v48, v13);
        }

        v63 = v74;
      }

      v64 = *(v32 + 8);
      v64(v76, v13);
      v51(v63, v77, v13);
      type metadata accessor for ConnectionEvent.FailureReason(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_10000C9C0(&qword_1005D3CB0, &unk_1004DDA30);
      v65 = (*(v73 + 80) + 32) & ~*(v73 + 80);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_1004CEAA0;
      sub_1001C1C6C(v63, v66 + v65, type metadata accessor for ConnectionEvent);
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1001A5A14(v66);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      sub_1001C1C0C(v63, type metadata accessor for ConnectionEvent);
      sub_1004A4E64();
      return (v64)(v77, v13);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1001BE954(uint64_t a1, char a2, uint64_t a3)
{
  v5 = _s6LoggerVMa(0);
  __chkstk_darwin(v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v35 - v9;
  __chkstk_darwin(v11);
  v13 = &v35 - v12;
  __chkstk_darwin(v14);
  v16 = &v35 - v15;
  if (a2)
  {
    sub_1001C1C6C(a3, &v35 - v15, _s6LoggerVMa);
    sub_1001C1C6C(a3, v13, _s6LoggerVMa);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v17 = sub_1004A4A54();
    v18 = sub_1004A6034();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v36 = v20;
      *v19 = 68158210;
      *(v19 + 4) = 2;
      *(v19 + 8) = 256;
      v21 = v13[*(v5 + 20)];
      sub_1001C1C0C(v13, _s6LoggerVMa);
      *(v19 + 10) = v21;
      *(v19 + 11) = 2082;
      v22 = *&v16[*(v5 + 20) + 4];
      sub_1001C1C0C(v16, _s6LoggerVMa);
      v23 = ConnectionID.debugDescription.getter(v22);
      v25 = sub_10015BA6C(v23, v24, &v36);

      *(v19 + 13) = v25;
      _os_log_impl(&_mh_execute_header, v17, v18, "[%.*hhx-%{public}s] Did request opportunistic STARTTLS", v19, 0x15u);
      sub_1000197E0(v20);

LABEL_6:

      return;
    }

    sub_1001C1C0C(v13, _s6LoggerVMa);

    v34 = v16;
  }

  else
  {
    sub_1001C1C6C(a3, v10, _s6LoggerVMa);
    sub_1001C1C6C(a3, v7, _s6LoggerVMa);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v17 = sub_1004A4A54();
    v26 = sub_1004A6034();
    if (os_log_type_enabled(v17, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v36 = v28;
      *v27 = 68158210;
      *(v27 + 4) = 2;
      *(v27 + 8) = 256;
      v29 = v7[*(v5 + 20)];
      sub_1001C1C0C(v7, _s6LoggerVMa);
      *(v27 + 10) = v29;
      *(v27 + 11) = 2082;
      v30 = *&v10[*(v5 + 20) + 4];
      sub_1001C1C0C(v10, _s6LoggerVMa);
      v31 = ConnectionID.debugDescription.getter(v30);
      v33 = sub_10015BA6C(v31, v32, &v36);

      *(v27 + 13) = v33;
      _os_log_impl(&_mh_execute_header, v17, v26, "[%.*hhx-%{public}s] Did request STARTTLS", v27, 0x15u);
      sub_1000197E0(v28);

      goto LABEL_6;
    }

    sub_1001C1C0C(v7, _s6LoggerVMa);

    v34 = v10;
  }

  sub_1001C1C0C(v34, _s6LoggerVMa);
}

void sub_1001BED64(char a1, uint64_t a2, __n128 a3)
{
  v4 = type metadata accessor for ConnectionEvent(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_storeEnumTagMultiPayload();
      sub_10000C9C0(&qword_1005D3CB0, &unk_1004DDA30);
      v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1004CEAA0;
      sub_1001C1C6C(v7, v9 + v8, type metadata accessor for ConnectionEvent);
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1001A5A14(v9);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      sub_1001C1C0C(v7, type metadata accessor for ConnectionEvent);
    }
  }
}

uint64_t sub_1001BEF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_10000C9C0(&unk_1005D54F0, &unk_1004E8DA0);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - v8;
  v10 = sub_1004A5214();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtC15IMAP2Connection10Connection_lastMessageTime) = static MonotonicTime.now()();
    if (a1 != 1)
    {
      sub_1001BF1B8(a1, v15);
    }

    sub_10000E268(a4, v9, &unk_1005D54F0, &unk_1004E8DA0);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_100025F40(v9, &unk_1005D54F0, &unk_1004E8DA0);
      v16 = swift_allocObject();
      swift_weakInit();
      v17 = swift_allocObject();
      *(v17 + 16) = sub_1001C33F8;
      *(v17 + 24) = v16;
      swift_retain_n();
      sub_1004A4D24();
    }

    else
    {
      v18.n128_f64[0] = (*(v11 + 32))(v13, v9, v10);
      sub_1001BF7D4(v13, v18);

      return (*(v11 + 8))(v13, v10);
    }
  }

  return result;
}

void sub_1001BF1B8(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v5 = type metadata accessor for ConnectionEvent(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s6LoggerVMa(0);
  __chkstk_darwin(v9);
  __chkstk_darwin(v10);
  v12 = &v26[-1] - v11;
  if (a1)
  {
    sub_1001BF9C8(a1);
  }

  else
  {
    v13 = v3 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger;
    sub_1001C1C6C(v3 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger, &v26[-1] - v11, _s6LoggerVMa);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v14 = sub_1004A4A54();
    v15 = sub_1004A4A74();
    (*(*(v15 - 8) + 8))(v12, v15);
    v16 = sub_1004A6034();
    if (os_log_type_enabled(v14, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26[0] = v18;
      *v17 = 68158210;
      *(v17 + 4) = 2;
      *(v17 + 8) = 256;
      v19 = v13 + *(v9 + 20);
      *(v17 + 10) = *v19;

      *(v17 + 11) = 2082;
      v20 = ConnectionID.debugDescription.getter(*(v19 + 4));
      v22 = sub_10015BA6C(v20, v21, v26);

      *(v17 + 13) = v22;
      _os_log_impl(&_mh_execute_header, v14, v16, "[%.*hhx-%{public}s] Did complete STARTTLS", v17, 0x15u);
      sub_1000197E0(v18);
    }

    else
    {
    }

    swift_storeEnumTagMultiPayload();
    sub_10000C9C0(&qword_1005D3CB0, &unk_1004DDA30);
    v23 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1004CEAA0;
    sub_1001C1C6C(v8, v24 + v23, type metadata accessor for ConnectionEvent);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1001A5A14(v24);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    sub_1001C1C0C(v8, type metadata accessor for ConnectionEvent);
  }
}

void sub_1001BF7D4(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for ConnectionEvent(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004A5214();
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  type metadata accessor for ConnectionEvent.FailureReason(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_10000C9C0(&qword_1005D3CB0, &unk_1004DDA30);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1004CEAA0;
  sub_1001C1C6C(v6, v9 + v8, type metadata accessor for ConnectionEvent);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1001A5A14(v9);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_1001C1C0C(v6, type metadata accessor for ConnectionEvent);
  sub_1004A4E64();
}

void sub_1001BF9C8(uint64_t a1)
{
  v3 = type metadata accessor for UntaggedResponse(0);
  __chkstk_darwin(v3 - 8);
  v77 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C9C0(&qword_1005D3CD8, &qword_1004DDA70);
  __chkstk_darwin(v5 - 8);
  v79 = (&v70 - v6);
  v78 = type metadata accessor for Response(0);
  v7 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v80 = &v70 - v10;
  v81 = type metadata accessor for Response(0);
  __chkstk_darwin(v81);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v91 = &v70 - v14;
  v82 = type metadata accessor for ConnectionEvent(0);
  v83 = *(v82 - 8);
  __chkstk_darwin(v82);
  v75 = (&v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v74 = &v70 - v17;
  __chkstk_darwin(v18);
  v90 = (&v70 - v19);
  v89 = type metadata accessor for ResponseOrContinuationRequest(0);
  v20 = *(v89 - 8);
  __chkstk_darwin(v89);
  v22 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a1 + 16);
  if (!v23)
  {
    return;
  }

  v71 = v7;
  v72 = v1;
  v24 = sub_1001EC224(0, v23, 0, _swiftEmptyArrayStorage);
  v84 = OBJC_IVAR____TtC15IMAP2Connection10Connection_receiveTranscoder;
  v85 = v12;
  v25 = a1 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
  v88 = *(v20 + 72);
  do
  {
    sub_1001C1C6C(v25, v22, type metadata accessor for ResponseOrContinuationRequest);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v27 = v91;
      sub_1001C1E74(v22, v91, type metadata accessor for Response);
      sub_1001C1C6C(v27, v12, type metadata accessor for Response);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v92 = v24;
        v28 = *(v12 + 2);
        v29 = *(v12 + 3);
        v30 = *(v12 + 4);
        v31 = v12[40];
        v94 = v29;
        v95 = v30;
        *&__dst = 0x4C54544F5248545BLL;
        *(&__dst + 1) = 0xEB000000005D4445;
        sub_10001123C(v28, v29, v30, v31);
        sub_1001C2190();

        v32 = sub_1004A6464();
        sub_10001114C(v28);
        swift_bridgeObjectRelease_n();
        if (v32)
        {
          sub_1001C04FC();
        }

        sub_100173584(v28, v29, v30, v31);
        v24 = v92;
        v12 = v85;
      }

      else
      {
        sub_1001C1C0C(v12, type metadata accessor for Response);
      }

      swift_beginAccess();
      v26 = v91;
      ServerResponseTranscoder.append(_:)(v91);
      swift_endAccess();
      sub_1001C1C0C(v26, type metadata accessor for Response);
      goto LABEL_5;
    }

    v92 = v24;
    v33 = *v22;
    v34 = *(v22 + 1);
    v35 = *(v22 + 2);
    v36 = v22[24];
    v86 = v34;
    v87 = v33;
    if ((v36 & 1) == 0)
    {

      v41 = v35;
      goto LABEL_18;
    }

    swift_beginAccess();
    v37 = *(v33 + 24) + ((v35 >> 24) & 0xFFFF00 | BYTE6(v35));
    v96 = &type metadata for UnsafeRawBufferPointer;
    v97 = &protocol witness table for UnsafeRawBufferPointer;
    v94 = v37 + v34;
    v95 = v37 + HIDWORD(v34);
    v38 = sub_10002587C(&v94, &type metadata for UnsafeRawBufferPointer);
    v34 = *v38;
    if (*v38)
    {
      v39 = v38[1];
      v40 = v39 - v34;
      if (v39 != v34)
      {
        if (v40 <= 14)
        {
          *(&__dst + 6) = 0;
          *&__dst = 0;
          BYTE14(__dst) = v39 - v34;
          memcpy(&__dst, v34, v39 - v34);
          v34 = __dst;
          v41 = v73 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
          v73 = v41;
        }

        else
        {
          sub_1004A4114();
          swift_allocObject();
          v45 = sub_1004A40C4();
          v46 = v45;
          if (v40 >= 0x7FFFFFFF)
          {
            sub_1004A43C4();
            v34 = swift_allocObject();
            *(v34 + 16) = 0;
            *(v34 + 24) = v40;
            v41 = v46 | 0x8000000000000000;
          }

          else
          {
            v34 = v40 << 32;
            v41 = v45 | 0x4000000000000000;
          }
        }

        goto LABEL_15;
      }

      v34 = 0;
    }

    v41 = 0xC000000000000000;
LABEL_15:
    sub_1000197E0(&v94);
LABEL_18:
    v42 = v90;
    *v90 = v34;
    v42[1] = v41;
    *(v42 + 16) = v36;
    swift_storeEnumTagMultiPayload();
    sub_100193D28(v34, v41, v36);
    v44 = v92[2];
    v43 = v92[3];
    if (v44 >= v43 >> 1)
    {
      v92 = sub_1001EC224((v43 > 1), v44 + 1, 1, v92);
    }

    sub_10018E150(v34, v41, v36);
    sub_1001C21E4(v87, v86, v35, v36);
    v24 = v92;
    v92[2] = v44 + 1;
    sub_1001C1E74(v90, v24 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v44, type metadata accessor for ConnectionEvent);
    v12 = v85;
LABEL_5:
    v25 += v88;
    --v23;
  }

  while (v23);
  swift_beginAccess();
  v47 = v79;
  v48 = v72;
  ServerResponseTranscoder.parseNext()(v79);
  v49 = v48;
  if (v48)
  {
    swift_endAccess();
  }

  else
  {
    v50 = (v71 + 48);
    while (1)
    {
      swift_endAccess();
      if ((*v50)(v47, 1, v78) == 1)
      {
        break;
      }

      v63 = v47;
      v64 = v80;
      sub_1001C1E74(v63, v80, type metadata accessor for Response);
      v65 = v64;
      v66 = v76;
      sub_1001C1C6C(v65, v76, type metadata accessor for Response);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v51 = v49;
        v52 = *v66;
        v53 = *(v66 + 4);
        v54 = *(v66 + 8);
        v55 = *(v66 + 16);
        v56 = *(v66 + 24);
        v57 = *(v66 + 32);
        v58 = v75;
        *v75 = v54;
        v58[1] = v55;
        v58[2] = v56;
        *(v58 + 24) = v57;
        *(v58 + 28) = v52;
        *(v58 + 8) = v53;
        swift_storeEnumTagMultiPayload();
        sub_10001123C(v54, v55, v56, v57);
        v60 = v24[2];
        v59 = v24[3];
        v61 = v60 + 1;
        if (v60 >= v59 >> 1)
        {
          v24 = sub_1001EC224((v59 > 1), v60 + 1, 1, v24);
        }

        sub_100173584(v54, v55, v56, v57);
        v62 = v75;
        v49 = v51;
      }

      else
      {
        v67 = v66;
        v68 = v77;
        sub_1001C1E74(v67, v77, type metadata accessor for UntaggedResponse);
        sub_1001C1C6C(v68, v74, type metadata accessor for UntaggedResponse);
        swift_storeEnumTagMultiPayload();
        v60 = v24[2];
        v69 = v24[3];
        v61 = v60 + 1;
        if (v60 >= v69 >> 1)
        {
          v24 = sub_1001EC224((v69 > 1), v60 + 1, 1, v24);
        }

        sub_1001C1C0C(v77, type metadata accessor for UntaggedResponse);
        v62 = v74;
      }

      sub_1001C1C0C(v80, type metadata accessor for Response);
      v24[2] = v61;
      sub_1001C1E74(v62, v24 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v60, type metadata accessor for ConnectionEvent);
      swift_beginAccess();
      v47 = v79;
      ServerResponseTranscoder.parseNext()(v79);
    }

    sub_100025F40(v47, &qword_1005D3CD8, &qword_1004DDA70);
    if (v24[2] && swift_unknownObjectWeakLoadStrong())
    {
      sub_1001A5A14(v24);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1001C04FC()
{
  v1 = _s6LoggerVMa(0);
  __chkstk_darwin(v1);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = static MonotonicTime.now()();
  v5 = (v0 + OBJC_IVAR____TtC15IMAP2Connection10Connection_throttleInfo);
  if (*(v0 + OBJC_IVAR____TtC15IMAP2Connection10Connection_throttleInfo + 16))
  {
    goto LABEL_2;
  }

  v6 = *v5;
  v7 = v5[1];
  v8 = __OFSUB__(result, *v5);
  v9 = result - *v5;
  if (result >= *v5)
  {
LABEL_8:
    if (!v8)
    {
      goto LABEL_9;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (__OFSUB__(v6, result))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = __OFSUB__(0, v6 - result);
  v9 = result - v6;
  if (v8)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  v10 = v9 / 1000000000.0;
  if (v10 <= 20.0)
  {
    if (!__OFADD__(v7, 1))
    {
      v5[1] = v7 + 1;
      return result;
    }

    goto LABEL_22;
  }

  if (v10 >= 120.0)
  {
LABEL_2:
    *v5 = result;
    v5[1] = 1;
    *(v5 + 16) = 0;
    return result;
  }

  v11 = result;
  v12 = v0 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger;
  sub_1001C1C6C(v0 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger, v3, _s6LoggerVMa);

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v13 = sub_1004A4A54();
  v14 = sub_1004A4A74();
  (*(*(v14 - 8) + 8))(v3, v14);
  v15 = sub_1004A6014();
  if (!os_log_type_enabled(v13, v15))
  {

    goto LABEL_19;
  }

  v16 = swift_slowAlloc();
  v17 = swift_slowAlloc();
  v24 = v17;
  *v16 = 68158722;
  *(v16 + 4) = 2;
  *(v16 + 8) = 256;
  v18 = v12 + *(v1 + 20);
  *(v16 + 10) = *v18;

  *(v16 + 11) = 2082;
  v19 = ConnectionID.debugDescription.getter(*(v18 + 4));
  v21 = sub_10015BA6C(v19, v20, &v24);

  *(v16 + 13) = v21;
  *(v16 + 21) = 2048;
  *(v16 + 23) = v7;
  *(v16 + 31) = 2048;
  v22 = round(v10);
  if (*&v22 >> 52 > 0x7FEuLL)
  {
    goto LABEL_23;
  }

  if (v22 > -9.22337204e18)
  {
    if (v22 < 9.22337204e18)
    {
      *(v16 + 33) = v22;
      _os_log_impl(&_mh_execute_header, v13, v15, "[%.*hhx-%{public}s] Connection was throttled by server (%ld commands in %ld seconds).", v16, 0x29u);
      sub_1000197E0(v17);

LABEL_19:
      result = v11;
      goto LABEL_2;
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1001C0814(uint64_t a1)
{
  sub_1001C08B0();
  v2._countAndFlagsBits = sub_1004A5A84();
  sub_1004A5994(v2);

  v3._countAndFlagsBits = 62;
  v3._object = 0xE100000000000000;
  sub_1004A5994(v3);

  return 7876668;
}

unint64_t sub_1001C08B0()
{
  result = qword_1005D3CA0;
  if (!qword_1005D3CA0)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Int, &type metadata for Int, v0, v1);
    atomic_store(result, &qword_1005D3CA0);
  }

  return result;
}

BOOL sub_1001C0904(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if (a3 == 1)
  {
    return a6 == 1;
  }

  if (a6 == 1 || a4 != a1)
  {
    return 0;
  }

  if (a3)
  {
    if (!a6)
    {
      return 0;
    }

    return a2 == a5 && a3 == a6 || (sub_1004A6D34() & 1) != 0;
  }

  else
  {
    return !a6;
  }
}

uint64_t sub_1001C099C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A5214();
  v34 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ConnectionEvent.FailureReason(0);
  __chkstk_darwin(v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = (&v33 - v11);
  v13 = sub_10000C9C0(&qword_1005D3EE8, &qword_1004DDB80);
  __chkstk_darwin(v13 - 8);
  v15 = &v33 - v14;
  v17 = (&v33 + *(v16 + 56) - v14);
  sub_1001C1C6C(a1, &v33 - v14, type metadata accessor for ConnectionEvent.FailureReason);
  sub_1001C1C6C(a2, v17, type metadata accessor for ConnectionEvent.FailureReason);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_13;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1001C1C6C(v15, v12, type metadata accessor for ConnectionEvent.FailureReason);
    v20 = *v12;
    v19 = v12[1];
    v21 = v12[2];
    if (swift_getEnumCaseMultiPayload())
    {
      sub_100191E44(v20, v19, v21);
LABEL_13:
      sub_100025F40(v15, &qword_1005D3EE8, &qword_1004DDB80);
LABEL_14:
      v23 = 0;
      return v23 & 1;
    }

    v26 = *v17;
    v27 = v17[1];
    v28 = v17[2];
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        if (v28 != 2)
        {
          goto LABEL_30;
        }

        goto LABEL_11;
      }

      if (v21 == 3)
      {
        if (v28 != 3)
        {
          goto LABEL_30;
        }

        goto LABEL_11;
      }
    }

    else
    {
      if (!v21)
      {
        if (v28)
        {
          goto LABEL_30;
        }

        goto LABEL_11;
      }

      if (v21 == 1)
      {
        if (v28 != 1)
        {
          goto LABEL_30;
        }

        goto LABEL_11;
      }
    }

    if (v28 < 4)
    {
      sub_100191E44(v26, v27, v28);
      v26 = v20;
      v27 = v19;
      v28 = v21;
LABEL_30:
      sub_100191E44(v26, v27, v28);
LABEL_31:
      sub_1001C1C0C(v15, type metadata accessor for ConnectionEvent.FailureReason);
      goto LABEL_14;
    }

    v29 = *v17;
    v30 = v17[1];
    v31 = v28;
    v32 = static ResponseText.__derived_struct_equals(_:_:)(v20, v19);
    sub_100191E44(v29, v30, v31);
    sub_100191E44(v20, v19, v21);
    if ((v32 & 1) == 0)
    {
      goto LABEL_31;
    }

LABEL_11:
    sub_1001C1C0C(v15, type metadata accessor for ConnectionEvent.FailureReason);
    v23 = 1;
    return v23 & 1;
  }

  sub_1001C1C6C(v15, v9, type metadata accessor for ConnectionEvent.FailureReason);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v34 + 8))(v9, v4);
    goto LABEL_13;
  }

  v22 = v34;
  (*(v34 + 32))(v6, v17, v4);
  v23 = sub_1004A5204();
  v24 = *(v22 + 8);
  v24(v6, v4);
  v24(v9, v4);
  sub_1001C1C0C(v15, type metadata accessor for ConnectionEvent.FailureReason);
  return v23 & 1;
}

uint64_t sub_1001C0DE8(char *a1, uint64_t a2)
{
  v92 = a1;
  v3 = type metadata accessor for UntaggedResponse(0);
  __chkstk_darwin(v3 - 8);
  v91 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ConnectionEvent.FailureReason(0);
  __chkstk_darwin(v5 - 8);
  v90 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004A4E34();
  v88 = *(v7 - 8);
  v89 = v7;
  __chkstk_darwin(v7);
  v87 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ConnectionEvent(0);
  __chkstk_darwin(v9);
  v86 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v85 = (&v85 - v12);
  __chkstk_darwin(v13);
  v15 = &v85 - v14;
  __chkstk_darwin(v16);
  v18 = &v85 - v17;
  __chkstk_darwin(v19);
  v21 = &v85 - v20;
  __chkstk_darwin(v22);
  v24 = &v85 - v23;
  __chkstk_darwin(v25);
  v27 = &v85 - v26;
  v28 = sub_10000C9C0(&qword_1005D3EF0, &qword_1004DDB88);
  __chkstk_darwin(v28 - 8);
  v30 = &v85 - v29;
  v32 = (&v85 + *(v31 + 56) - v29);
  sub_1001C1C6C(v92, &v85 - v29, type metadata accessor for ConnectionEvent);
  v33 = a2;
  v34 = v32;
  sub_1001C1C6C(v33, v32, type metadata accessor for ConnectionEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v36 = v27;
    v37 = v24;
    v39 = v87;
    v38 = v88;
    v40 = v89;
    v41 = v90;
    v42 = v91;
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v43 = v36;
        sub_1001C1C6C(v30, v36, type metadata accessor for ConnectionEvent);
        if (swift_getEnumCaseMultiPayload())
        {
          (*(v38 + 8))(v43, v40);
          goto LABEL_38;
        }

        v80 = v38;
        (*(v38 + 32))(v39, v34, v40);
        v45 = sub_1004A4E24();
        v81 = *(v80 + 8);
        v81(v39, v40);
        v81(v43, v40);
        goto LABEL_41;
      }

      v60 = v37;
      sub_1001C1C6C(v30, v37, type metadata accessor for ConnectionEvent);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_1001C1C0C(v60, type metadata accessor for ConnectionEvent.FailureReason);
        goto LABEL_38;
      }

      sub_1001C1E74(v32, v41, type metadata accessor for ConnectionEvent.FailureReason);
      v45 = sub_1001C099C(v60, v41);
      sub_1001C1C0C(v41, type metadata accessor for ConnectionEvent.FailureReason);
      v46 = v60;
      v47 = type metadata accessor for ConnectionEvent.FailureReason;
LABEL_23:
      sub_1001C1C0C(v46, v47);
LABEL_41:
      v82 = v30;
LABEL_42:
      sub_1001C1C0C(v82, type metadata accessor for ConnectionEvent);
      return v45 & 1;
    }

    v44 = v32;
    if (EnumCaseMultiPayload == 2)
    {
      sub_1001C1C6C(v30, v21, type metadata accessor for ConnectionEvent);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_1001C1C0C(v21, type metadata accessor for UntaggedResponse);
        goto LABEL_38;
      }

      sub_1001C1E74(v32, v42, type metadata accessor for UntaggedResponse);
      v45 = static UntaggedResponse.__derived_enum_equals(_:_:)(v21, v42);
      sub_1001C1C0C(v42, type metadata accessor for UntaggedResponse);
      v46 = v21;
      v47 = type metadata accessor for UntaggedResponse;
      goto LABEL_23;
    }

    sub_1001C1C6C(v30, v18, type metadata accessor for ConnectionEvent);
    v61 = *v18;
    v62 = *(v18 + 1);
    v63 = *(v18 + 2);
    v64 = v18[24];
    v65 = v18[28];
    v66 = *(v18 + 8);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      sub_100173584(v61, v62, v63, v64);
      goto LABEL_38;
    }

    v92 = v30;
    v68 = *v32;
    v67 = v32[1];
    v69 = v32[2];
    v70 = *(v44 + 24);
    v71 = *(v44 + 28);
    v72 = *(v44 + 8);
    if (v64)
    {
      if (v64 == 1)
      {
        if (v70 == 1)
        {
          LODWORD(v91) = v71;
          v73 = static ResponseText.__derived_struct_equals(_:_:)(v61, v62);
          sub_100173584(v68, v67, v69, 1u);
          v74 = v61;
          v75 = v62;
          v76 = v63;
          v77 = 1;
          goto LABEL_50;
        }

LABEL_58:
        sub_100173584(v68, v67, v69, v70);
        sub_100173584(v61, v62, v63, v64);
        goto LABEL_59;
      }

      if (v70 != 2)
      {
        goto LABEL_58;
      }

      LODWORD(v91) = v71;
      v73 = static ResponseText.__derived_struct_equals(_:_:)(v61, v62);
      sub_100173584(v68, v67, v69, 2u);
      v74 = v61;
      v75 = v62;
      v76 = v63;
      v77 = 2;
    }

    else
    {
      if (v70)
      {
        goto LABEL_58;
      }

      LODWORD(v91) = v71;
      v73 = static ResponseText.__derived_struct_equals(_:_:)(v61, v62);
      sub_100173584(v68, v67, v69, 0);
      v74 = v61;
      v75 = v62;
      v76 = v63;
      v77 = 0;
    }

LABEL_50:
    sub_100173584(v74, v75, v76, v77);
    if (v73)
    {
      v45 = v65 == v91 && v66 == v72;
      v82 = v92;
      goto LABEL_42;
    }

LABEL_59:
    sub_1001C1C0C(v92, type metadata accessor for ConnectionEvent);
    goto LABEL_39;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    v48 = v32;
    if (EnumCaseMultiPayload == 4)
    {
      sub_1001C1C6C(v30, v15, type metadata accessor for ConnectionEvent);
      v50 = *v15;
      v49 = *(v15 + 1);
      v51 = v15[16];
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        sub_10018E150(v50, v49, v51);
        goto LABEL_38;
      }

      v53 = *v32;
      v52 = v32[1];
      if (v51)
      {
        if (v48[2])
        {
          v54 = sub_10003A194(v50, v49, *v48, v48[1]);
          sub_10018E150(v53, v52, 1);
          v55 = v50;
          v56 = v49;
          v57 = 1;
LABEL_64:
          sub_10018E150(v55, v56, v57);
          if (v54)
          {
            goto LABEL_30;
          }

LABEL_65:
          sub_1001C1C0C(v30, type metadata accessor for ConnectionEvent);
          goto LABEL_39;
        }
      }

      else if ((v48[2] & 1) == 0)
      {
        if (v50 == v53 && v49 == v52)
        {
          sub_10018E150(v50, v49, 0);
          sub_10018E150(v50, v49, 0);
          goto LABEL_30;
        }

        v54 = sub_1004A6D34();
        sub_10018E150(v53, v52, 0);
        v55 = v50;
        v56 = v49;
        v57 = 0;
        goto LABEL_64;
      }

      sub_10018E150(*v48, v48[1], v51 ^ 1);
      sub_10018E150(v50, v49, v51);
      goto LABEL_65;
    }

    v78 = v85;
    sub_1001C1C6C(v30, v85, type metadata accessor for ConnectionEvent);
    v79 = *v78;
    if (swift_getEnumCaseMultiPayload() != 5)
    {

      goto LABEL_38;
    }

    v45 = sub_100083010(v79, *v32);

    goto LABEL_41;
  }

  if (EnumCaseMultiPayload != 6)
  {
    if (EnumCaseMultiPayload == 7)
    {
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    if (swift_getEnumCaseMultiPayload() == 8)
    {
LABEL_30:
      sub_1001C1C0C(v30, type metadata accessor for ConnectionEvent);
      v45 = 1;
      return v45 & 1;
    }

LABEL_38:
    sub_100025F40(v30, &qword_1005D3EF0, &qword_1004DDB88);
LABEL_39:
    v45 = 0;
    return v45 & 1;
  }

  v58 = v86;
  sub_1001C1C6C(v30, v86, type metadata accessor for ConnectionEvent);
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    goto LABEL_38;
  }

  v59 = *v58 ^ *v32;
  sub_1001C1C0C(v30, type metadata accessor for ConnectionEvent);
  v45 = v59 ^ 1;
  return v45 & 1;
}

uint64_t sub_1001C1804(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientCommand(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OutboundContent(0);
  __chkstk_darwin(v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v29 - v11;
  v13 = sub_10000C9C0(&qword_1005D3CA8, &unk_1004DDA20);
  __chkstk_darwin(v13 - 8);
  v15 = &v29 - v14;
  v17 = &v29 + *(v16 + 56) - v14;
  sub_1001C1C6C(a1, &v29 - v14, type metadata accessor for OutboundContent);
  sub_1001C1C6C(a2, v17, type metadata accessor for OutboundContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1001C1C6C(v15, v12, type metadata accessor for OutboundContent);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1001C1E74(v17, v6, type metadata accessor for ClientCommand);
      v25 = static ClientCommand.__derived_enum_equals(_:_:)(v12, v6);
      sub_1001C1C0C(v6, type metadata accessor for ClientCommand);
      sub_1001C1C0C(v12, type metadata accessor for ClientCommand);
      sub_1001C1C0C(v15, type metadata accessor for OutboundContent);
      return v25 & 1;
    }

    sub_1001C1C0C(v12, type metadata accessor for ClientCommand);
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_11;
    }

LABEL_13:
    sub_100025F40(v15, &qword_1005D3CA8, &unk_1004DDA20);
LABEL_14:
    v25 = 0;
    return v25 & 1;
  }

  sub_1001C1C6C(v15, v9, type metadata accessor for OutboundContent);
  v20 = *v9;
  v19 = *(v9 + 1);
  v21 = v9[16];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10018E150(v20, v19, v21);
    goto LABEL_13;
  }

  v23 = *v17;
  v22 = *(v17 + 1);
  if ((v21 & 1) == 0)
  {
    if ((v17[16] & 1) == 0)
    {
      if (v20 == v23 && v19 == v22)
      {
        sub_10018E150(v20, v19, 0);
        sub_10018E150(v20, v19, 0);
      }

      else
      {
        v28 = sub_1004A6D34();
        sub_10018E150(v23, v22, 0);
        sub_10018E150(v20, v19, 0);
        if ((v28 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      goto LABEL_11;
    }

LABEL_18:
    sub_10018E150(*v17, *(v17 + 1), v21 ^ 1);
    sub_10018E150(v20, v19, v21);
LABEL_19:
    sub_1001C1C0C(v15, type metadata accessor for OutboundContent);
    goto LABEL_14;
  }

  if ((v17[16] & 1) == 0)
  {
    goto LABEL_18;
  }

  v24 = sub_10003A194(v20, v19, *v17, *(v17 + 1));
  sub_10018E150(v23, v22, 1);
  sub_10018E150(v20, v19, 1);
  if (!v24)
  {
    goto LABEL_19;
  }

LABEL_11:
  sub_1001C1C0C(v15, type metadata accessor for OutboundContent);
  v25 = 1;
  return v25 & 1;
}

uint64_t sub_1001C1C0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001C1C6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001C1CD4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001C1D7C()
{
  v1 = *(_s6LoggerVMa(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_1004A4A74();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_1001C1E74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001C1EDC(uint64_t a1)
{
  v3 = *(_s6LoggerVMa(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1001B9A8C(a1, (v1 + v4), v6, v7);
}

uint64_t sub_1001C1F84(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1001C1FDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001C1FF4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001C203C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_1001C2074(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1001C20D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D3CD0, &qword_1004DDA58);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001C2150()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1001C2190()
{
  result = qword_1005D3CE0;
  if (!qword_1005D3CE0)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for String, &type metadata for String, v0, v1);
    atomic_store(result, &qword_1005D3CE0);
  }

  return result;
}

uint64_t sub_1001C21E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
    sub_10001114C(a1);
  }
}

unint64_t sub_1001C2230(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[2];
  v5 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  v7 = *a1 >> 62;
  if (v7)
  {
    if (v7 != 1)
    {
      if (v5 >> 62 != 2)
      {
        return 0;
      }

      if (v5 != 0x8000000000000000 || (v6 | v4) != 0)
      {
        return 0;
      }

      goto LABEL_24;
    }

    v7 = 0;
    if (v5 >> 62 == 1 && *a1 == v5)
    {
      if (WORD1(v2) != WORD1(v5))
      {
        return 0;
      }

      if (v3)
      {
        goto LABEL_7;
      }

      goto LABEL_16;
    }
  }

  else if (!(v5 >> 62) && *a1 == v5)
  {
    if (WORD1(v2) != WORD1(v5))
    {
      return 0;
    }

    if (v3)
    {
LABEL_7:
      if (!v6)
      {
        return 0;
      }

      if (a1[1] != v4 || v3 != v6)
      {
        v8 = a1;
        v9 = a2;
        v10 = sub_1004A6D34();
        a2 = v9;
        v11 = v10;
        a1 = v8;
        if ((v11 & 1) == 0)
        {
          return 0;
        }
      }

LABEL_24:
      v13 = a1[5];
      v14 = a2[5];
      if (v13 == 1)
      {
        if (v14 == 1)
        {
          return 1;
        }
      }

      else if (v14 != 1 && *(a1 + 24) == *(a2 + 24))
      {
        if (v13)
        {
          if (v14 && (a1[4] == a2[4] && v13 == v14 || (sub_1004A6D34() & 1) != 0))
          {
            return 1;
          }
        }

        else if (!v14)
        {
          return 1;
        }
      }

      return 0;
    }

LABEL_16:
    if (v6)
    {
      return 0;
    }

    goto LABEL_24;
  }

  return v7;
}

uint64_t sub_1001C239C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D3CE8, &qword_1004DDA78);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v23 - v8;
  sub_1004A4F74();
  swift_allocObject();
  sub_1004A4F64();
  sub_1004A4F54();
  v10 = *(a1 + *(type metadata accessor for ConnectionConfiguration(0) + 28));
  sub_1004A4F44();
  if ((v10 & 0xC0) == 0x40)
  {
    sub_100213F20(a1, v10 & 0x3F, a2);
  }

  v11 = sub_1004A4F24();
  v12 = qword_1005D2D88;

  if (v12 != -1)
  {
    swift_once();
  }

  sub_1004A5084();
  swift_allocObject();

  v13 = sub_1004A5074();
  v14 = (a2 + *(_s6LoggerVMa(0) + 20));
  v15 = *(v14 + 1);
  v16 = *v14;
  *(&v24 + 1) = &type metadata for ConnectionLoggerID;
  LOBYTE(v23) = v16;
  DWORD1(v23) = v15;
  sub_1004A50A4();
  sub_1004A4914();
  v17 = sub_1004A4904();
  v18 = *(v17 - 8);
  (*(v18 + 56))(v9, 0, 1, v17);
  sub_10000E268(v9, v6, &qword_1005D3CE8, &qword_1004DDA78);
  if ((*(v18 + 48))(v6, 1, v17) == 1)
  {
    sub_100025F40(v6, &qword_1005D3CE8, &qword_1004DDA78);
    v23 = 0u;
    v24 = 0u;
  }

  else
  {
    *(&v24 + 1) = v17;
    v19 = sub_1000B3774(&v23);
    (*(v18 + 32))(v19, v6, v17);
  }

  sub_1004A50A4();
  sub_100025F40(v9, &qword_1005D3CE8, &qword_1004DDA78);
  sub_1004A4EE4();

  v20 = sub_1004A4ED4();
  if (*v21 >> 62 && (result = sub_1004A6A34(), result < 0))
  {
    __break(1u);
  }

  else
  {
    sub_1001AC808(0, 0, v13);

    v20(&v23, 0);

    return v11;
  }

  return result;
}

uint64_t sub_1001C2778(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = a4;
  v7 = a3;
  v47 = a4;
  v48 = a3;
  v57 = a2;
  v9 = sub_1004A4904();
  v59 = *(v9 - 8);
  v60 = v9;
  __chkstk_darwin(v9);
  v52 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1004A4944();
  v55 = *(v53 - 8);
  __chkstk_darwin(v53);
  v54 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1004A4C04();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v51 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1004A4EB4();
  v49 = *(v13 - 8);
  v50 = v13;
  __chkstk_darwin(v13);
  v46 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ConnectionConfiguration(0);
  __chkstk_darwin(v15);
  v17 = v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _s6LoggerVMa(0);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v21 = v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = (v44 - v23);
  *(v5 + OBJC_IVAR____TtC15IMAP2Connection10Connection_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v25 = OBJC_IVAR____TtC15IMAP2Connection10Connection_receiveTranscoder;
  *(v5 + v25) = ServerResponseTranscoder.init()(v26);
  *(v5 + OBJC_IVAR____TtC15IMAP2Connection10Connection_pendingHandshakeReplyCount) = 0;
  v27 = v5 + OBJC_IVAR____TtC15IMAP2Connection10Connection_throttleInfo;
  *v27 = 0;
  *(v27 + 8) = 0;
  *(v27 + 16) = 1;
  v28 = OBJC_IVAR____TtC15IMAP2Connection10Connection_lastMessageTime;
  *(v5 + v28) = static MonotonicTime.now()();
  sub_1004A4A64();
  v29 = v24 + *(v19 + 28);
  *v29 = v7;
  *(v29 + 1) = v6;
  v44[1] = sub_1004A4EA4();
  v45 = type metadata accessor for ConnectionConfiguration;
  sub_1001C1C6C(a1, v17, type metadata accessor for ConnectionConfiguration);
  sub_1001C1C6C(v24, v21, _s6LoggerVMa);
  sub_1001C239C(v17, v21);
  sub_1004A4EF4();

  sub_1004A4F04();

  v30 = v52;
  sub_1004A4F14();

  v31 = a1;
  sub_1004A4F34();
  (*(v49 + 104))(v46, enum case for NWParameters.Attribution.user(_:), v50);
  sub_1004A4EC4();
  v56[2](v51, v17, v58);
  v32 = sub_1004A4DF4();
  sub_1001C1C0C(v21, _s6LoggerVMa);
  sub_1001C1C0C(v17, type metadata accessor for ConnectionConfiguration);
  v56 = v24;
  v33 = v53;
  sub_1001C1C6C(v24, v5 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger, _s6LoggerVMa);
  *(v5 + OBJC_IVAR____TtC15IMAP2Connection10Connection_createdAt) = static MonotonicTime.now()();
  v58 = v31;
  sub_1001C1C6C(v31, v5 + OBJC_IVAR____TtC15IMAP2Connection10Connection_configuration, v45);
  v34 = v57;
  *(v5 + OBJC_IVAR____TtC15IMAP2Connection10Connection_queue) = v57;
  *(v5 + OBJC_IVAR____TtC15IMAP2Connection10Connection_connection) = v32;
  v35 = v34;

  *(v5 + OBJC_IVAR____TtC15IMAP2Connection10Connection_underlyingID) = sub_1004A4CA4();
  v36 = tracingSignposter.unsafeMutableAddressor();
  v37 = v54;
  v38 = v55;
  (*(v55 + 16))(v54, v36, v33);
  sub_1004A4914();
  v39 = sub_1004A4934();
  v40 = sub_1004A6154();
  if (sub_1004A6354())
  {
    v41 = swift_slowAlloc();
    *v41 = 67109120;
    *(v41 + 4) = 1;
    v42 = sub_1004A48F4();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v39, v40, v42, "Connection.networkStateUpdate", "%u", v41, 8u);
  }

  sub_1001C1C0C(v58, type metadata accessor for ConnectionConfiguration);
  (*(v59 + 8))(v30, v60);
  (*(v38 + 8))(v37, v33);
  sub_1001C1C0C(v56, _s6LoggerVMa);
  return v5;
}

uint64_t sub_1001C2E48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 24))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001C2EA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

void *sub_1001C2F04(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[2] = a2;
  }

  return result;
}

uint64_t sub_1001C2F44(uint64_t a1)
{
  result = sub_1004A5214();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1001C2FB0(uint64_t a1, __n128 a2)
{
  sub_1004A4E34();
  if (v2 <= 0x3F)
  {
    type metadata accessor for ConnectionEvent.FailureReason(319);
    if (v3 <= 0x3F)
    {
      type metadata accessor for UntaggedResponse(319);
      if (v4 <= 0x3F)
      {
        sub_1001C3070();
        if (v5 <= 0x3F)
        {
          sub_1001C30D0(319);
          if (v6 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1001C3070()
{
  if (!qword_1005D3E18)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1005D3E18);
    }
  }
}

void sub_1001C30D0(uint64_t a1)
{
  if (!qword_1005D3E20)
  {
    sub_1001C312C();
    v1 = sub_1004A5DC4();
    if (!v2)
    {
      atomic_store(v1, &qword_1005D3E20);
    }
  }
}

unint64_t sub_1001C312C()
{
  result = qword_1005D3E28;
  if (!qword_1005D3E28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PathAttribute, &type metadata for PathAttribute, v0, v1);
    atomic_store(result, &qword_1005D3E28);
  }

  return result;
}

uint64_t sub_1001C3194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for ClientCommand.Encoded(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1001C3220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for ClientCommand.Encoded(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1001C32BC(uint64_t a1)
{
  result = type metadata accessor for ClientCommand.Encoded(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001C3338(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  HIDWORD(v3) = *(a1 + 4);
  LODWORD(v3) = HIDWORD(v3);
  v2 = v3 >> 30;
  if (v2 > 0x80000000)
  {
    v4 = ~v2;
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1001C3388(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      HIDWORD(v3) = -a2;
      LODWORD(v3) = -a2;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = (v3 >> 2) << 32;
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1001C3404(unint64_t *a1)
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

uint64_t sub_1001C341C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  HIDWORD(v3) = *(a1 + 4);
  LODWORD(v3) = HIDWORD(v3);
  v2 = v3 >> 30;
  if (v2 > 0x80000000)
  {
    v4 = ~v2;
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1001C346C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      HIDWORD(v3) = -a2;
      LODWORD(v3) = -a2;
      *result = (v3 >> 2) << 32;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 0;
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t *sub_1001C34B8(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result | (a2 << 62);
  }

  else
  {
    result[1] = 0;
    result[2] = 0;
    result[3] = 0;
    *result = (a2 - 2) | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_1001C3510(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 >> 62)
  {
    if (a1 >> 62 == 1)
    {
      if (a5 >> 62 == 1)
      {
        return static PushRegistrationResponse.__derived_struct_equals(_:_:)(a1, a2, a3, a4, a5, a6, a7, a8);
      }
    }

    else
    {
      v9 = a3 | a2 | a4;
      if (a1 != 0x8000000000000000 || v9)
      {
        if (a1 != 0x8000000000000001 || v9)
        {
          if (a1 != 0x8000000000000002 || v9)
          {
            if (a1 != 0x8000000000000003 || v9)
            {
              if (a5 >> 62 == 2 && a5 == 0x8000000000000004 && !(a7 | a6 | a8))
              {
                return 1;
              }
            }

            else if (a5 >> 62 == 2 && a5 == 0x8000000000000003 && !(a7 | a6 | a8))
            {
              return 1;
            }
          }

          else if (a5 >> 62 == 2 && a5 == 0x8000000000000002 && !(a7 | a6 | a8))
          {
            return 1;
          }
        }

        else if (a5 >> 62 == 2 && a5 == 0x8000000000000001 && !(a7 | a6 | a8))
        {
          return 1;
        }
      }

      else if (a5 >> 62 == 2 && a5 == 0x8000000000000000 && !(a7 | a6 | a8))
      {
        return 1;
      }
    }
  }

  else if (!(a5 >> 62))
  {
    return ((a5 ^ a1) & 0x101FFLL) == 0;
  }

  return 0;
}

uint64_t ConnectionState.isClosed.getter()
{
  v1 = type metadata accessor for ConnectionState(0);
  v2 = __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001CDD1C(v0, v4, v2, type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    sub_1001CDD84(v4, type metadata accessor for ConnectionState);
    return 0;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_1001CDD84(v4, type metadata accessor for ConnectionState);
  }

  else if (EnumCaseMultiPayload != 4)
  {
    return 0;
  }

  return 1;
}

uint64_t ConnectionState.isReadyForCommands.getter()
{
  v1 = type metadata accessor for ConnectionState(0);
  v2 = __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001CDD1C(v0, v4, v2, type metadata accessor for ConnectionState);
  v5 = 0;
  v6 = 1 << swift_getEnumCaseMultiPayload();
  if ((v6 & 0xB) != 0)
  {
    goto LABEL_4;
  }

  if ((v6 & 0x30) == 0)
  {
    v5 = 1;
LABEL_4:
    sub_1001CDD84(v4, type metadata accessor for ConnectionState);
  }

  return v5;
}

Swift::Bool __swiftcall ConnectionState.selectMailbox(name:)(NIOIMAPCore2::MailboxName name)
{
  value = name._hashValue._value;
  rawValue = name.bytes._rawValue;
  v4 = type metadata accessor for ConnectionState(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001CDD1C(v1, v7, v5, type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    memcpy(v37, v7, 0x162uLL);
    v9 = *(v7 + 21);
    v38[8] = *(v7 + 20);
    v38[9] = v9;
    v39 = *(v7 + 176);
    v10 = *(v7 + 17);
    v38[4] = *(v7 + 16);
    v38[5] = v10;
    v11 = *(v7 + 19);
    v38[6] = *(v7 + 18);
    v38[7] = v11;
    v12 = *(v7 + 13);
    v38[0] = *(v7 + 12);
    v38[1] = v12;
    v13 = *(v7 + 15);
    v38[2] = *(v7 + 14);
    v38[3] = v13;
    v14 = sub_1001ACFC0(v38);
    v15 = sub_1001AD074(v38);
    if (v14 && (*(v15 + 8) | (*(v15 + 8) << 32)) == (value | (value << 32)) && (sub_1000FFC98(*v15, rawValue) & 1) != 0)
    {
      sub_1001ACFCC(v37);
    }

    else
    {
      sub_1001CDD84(v1, type metadata accessor for ConnectionState);
      sub_1001EA1F4(rawValue, value, v35);
      v16 = v37[0];
      v17 = v37[23];

      sub_10010E800(&v37[1], &v24);

      sub_1001ACFCC(v37);
      v32 = v35[8];
      v33 = v35[9];
      v34 = v36;
      v28 = v35[4];
      v29 = v35[5];
      v30 = v35[6];
      v31 = v35[7];
      v24 = v35[0];
      v25 = v35[1];
      v26 = v35[2];
      v27 = v35[3];
      sub_1001CC288(&v24);
      *v1 = v16;
      *(v1 + 120) = *&v37[15];
      *(v1 + 136) = *&v37[17];
      *(v1 + 152) = *&v37[19];
      *(v1 + 168) = *&v37[21];
      *(v1 + 56) = *&v37[7];
      *(v1 + 72) = *&v37[9];
      *(v1 + 88) = *&v37[11];
      *(v1 + 104) = *&v37[13];
      *(v1 + 8) = *&v37[1];
      *(v1 + 24) = *&v37[3];
      *(v1 + 40) = *&v37[5];
      *(v1 + 184) = v17;
      v18 = v33;
      *(v1 + 320) = v32;
      *(v1 + 336) = v18;
      *(v1 + 352) = v34;
      v19 = v29;
      *(v1 + 256) = v28;
      *(v1 + 272) = v19;
      v20 = v31;
      *(v1 + 288) = v30;
      *(v1 + 304) = v20;
      v21 = v25;
      *(v1 + 192) = v24;
      *(v1 + 208) = v21;
      v22 = v27;
      *(v1 + 224) = v26;
      *(v1 + 240) = v22;
      swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    sub_1001CDD84(v7, type metadata accessor for ConnectionState);
  }

  return EnumCaseMultiPayload == 2;
}

uint64_t ConnectionState.mailboxSelectionPayload(old:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ConnectionState(0);
  __chkstk_darwin(v4);
  v6 = &v32[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __chkstk_darwin(v7);
  v10 = &v32[-v9];
  sub_1001CDD1C(a1, &v32[-v9], v8, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    memcpy(v44, v10, sizeof(v44));
    v11 = *(v10 + 21);
    v53 = *(v10 + 20);
    v54 = v11;
    v55 = *(v10 + 176);
    v12 = *(v10 + 17);
    v49 = *(v10 + 16);
    v50 = v12;
    v13 = *(v10 + 19);
    v51 = *(v10 + 18);
    v52 = v13;
    v14 = *(v10 + 13);
    v45 = *(v10 + 12);
    v46 = v14;
    v15 = *(v10 + 15);
    v47 = *(v10 + 14);
    v48 = v15;
    if (sub_1001ACFC0(&v45) == 2)
    {
      v16 = sub_1001AD074(&v45);
      v41 = *&v44[320];
      v42 = *&v44[336];
      v43 = *&v44[352];
      v37 = *&v44[256];
      v38 = *&v44[272];
      v39 = *&v44[288];
      v40 = *&v44[304];
      v33 = *&v44[192];
      v34 = *&v44[208];
      v35 = *&v44[224];
      v36 = *&v44[240];
      v17 = sub_1001AD074(&v33);
      sub_1000CB914(v17, __dst);
      sub_1001ACFCC(v44);
      memmove(__dst, v16, 0x4BuLL);
      goto LABEL_7;
    }

    sub_1001ACFCC(v44);
  }

  else
  {
    sub_1001CDD84(v10, type metadata accessor for ConnectionState);
  }

  v18 = 0uLL;
  memset(__dst, 0, 75);
LABEL_7:
  sub_1001CDD1C(v2, v6, v18, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1001CDD84(v6, type metadata accessor for ConnectionState);
    if (!*&__dst[0])
    {
      return 0xF000000000000007;
    }

LABEL_14:
    sub_100025F40(__dst, &qword_1005CF260, &qword_1004D2420);
    return 0x8000000000000000;
  }

  memcpy(v44, v6, sizeof(v44));
  v19 = *(v6 + 21);
  v53 = *(v6 + 20);
  v54 = v19;
  v55 = *(v6 + 176);
  v20 = *(v6 + 17);
  v49 = *(v6 + 16);
  v50 = v20;
  v21 = *(v6 + 19);
  v51 = *(v6 + 18);
  v52 = v21;
  v22 = *(v6 + 13);
  v45 = *(v6 + 12);
  v46 = v22;
  v23 = *(v6 + 15);
  v47 = *(v6 + 14);
  v48 = v23;
  if (sub_1001ACFC0(&v45) != 2)
  {
    sub_1001ACFCC(v44);
    if (!*&__dst[0])
    {
      return 0xF000000000000007;
    }

    goto LABEL_14;
  }

  v24 = sub_1001AD074(&v45);
  v41 = *&v44[320];
  v42 = *&v44[336];
  v43 = *&v44[352];
  v37 = *&v44[256];
  v38 = *&v44[272];
  v39 = *&v44[288];
  v40 = *&v44[304];
  v33 = *&v44[192];
  v34 = *&v44[208];
  v35 = *&v44[224];
  v36 = *&v44[240];
  v25 = sub_1001AD074(&v33);
  sub_1000CB914(v25, v32);
  sub_1001ACFCC(v44);
  if (*&__dst[0])
  {
    if ((DWORD2(__dst[0]) | (DWORD2(__dst[0]) << 32)) == (*(v24 + 8) | (*(v24 + 8) << 32)))
    {
      v26 = sub_1000FFC98(*&__dst[0], *v24);
      sub_100025F40(__dst, &qword_1005CF260, &qword_1004D2420);
      if (v26)
      {
        sub_1001AD020(&v44[192]);
        return 0xF000000000000007;
      }
    }

    else
    {
      sub_100025F40(__dst, &qword_1005CF260, &qword_1004D2420);
    }
  }

  v28 = swift_allocObject();
  *(v28 + 16) = *v24;
  v30 = *(v24 + 32);
  v29 = *(v24 + 48);
  v31 = *(v24 + 16);
  *(v28 + 75) = *(v24 + 59);
  *(v28 + 48) = v30;
  *(v28 + 64) = v29;
  *(v28 + 32) = v31;
  return v28 | 0x2000000000000000;
}

uint64_t sub_1001C3EF8(uint64_t a1, unint64_t a2, int a3, uint64_t a4, void (*a5)(unint64_t, uint64_t, uint64_t, uint64_t, double), uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t), uint64_t a8)
{
  v50 = a6;
  v9 = v8;
  v45[1] = a8;
  v46 = a7;
  v48 = a2;
  v49 = a5;
  v47 = a3;
  v12 = _s6LoggerVMa(0);
  __chkstk_darwin(v12);
  v14 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v45 - v16;
  v18 = type metadata accessor for ConnectionState(0);
  __chkstk_darwin(v18);
  v20 = v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for UnauthenticatedStateWithTasks(0);
  v22 = __chkstk_darwin(v21 - 8);
  v24 = v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001CDD1C(v9, v20, v22, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1001CDC18(v20, v24, type metadata accessor for UnauthenticatedStateWithTasks);
    v25 = v51;
    v26 = sub_10022051C(a1, v48, v47 & 1, v49, v50, a4);
    if (!v25)
    {
      v29 = v28;
      v30 = v27;
      v31 = v26;
      sub_1001CDD84(v9, type metadata accessor for ConnectionState);
      sub_1001CDD1C(v24, v9, v32, type metadata accessor for UnauthenticatedStateWithTasks);
      swift_storeEnumTagMultiPayload();
      if (v29 != -1)
      {
        v46(v31, v30, v29 & 1);
        sub_1001CD80C(v31, v30, v29);
      }
    }

    return sub_1001CDD84(v24, type metadata accessor for UnauthenticatedStateWithTasks);
  }

  else
  {
    sub_1001CDD84(v20, type metadata accessor for ConnectionState);
    sub_1001CDD1C(a4, v17, v34, _s6LoggerVMa);
    sub_1001CDD1C(a4, v14, v35, _s6LoggerVMa);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v36 = sub_1004A4A54();
    v37 = sub_1004A6014();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v52 = v39;
      *v38 = 0x204100302;
      *(v38 + 8) = 256;
      v40 = v14[*(v12 + 20)];
      sub_1001CDD84(v14, _s6LoggerVMa);
      *(v38 + 10) = v40;
      *(v38 + 11) = 2082;
      v41 = *&v17[*(v12 + 20) + 4];
      sub_1001CDD84(v17, _s6LoggerVMa);
      v42 = ConnectionID.debugDescription.getter(v41);
      v44 = sub_10015BA6C(v42, v43, &v52);

      *(v38 + 13) = v44;
      _os_log_impl(&_mh_execute_header, v36, v37, "[%.*hhx-%{public}s] Received HandshakeQuery, but not in unauthenticated state.", v38, 0x15u);
      sub_1000197E0(v39);
    }

    else
    {
      sub_1001CDD84(v14, _s6LoggerVMa);

      sub_1001CDD84(v17, _s6LoggerVMa);
    }

    sub_1001CD7B8();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_1001C4358(unint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = _s6LoggerVMa(0);
  __chkstk_darwin(v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v29 - v10;
  v12 = type metadata accessor for ConnectionState(0);
  __chkstk_darwin(v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UnauthenticatedStateWithTasks(0);
  __chkstk_darwin(v15 - 8);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001CDC18(v3, v14, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1001CDC18(v14, v17, type metadata accessor for UnauthenticatedStateWithTasks);
    sub_100220760(a1, a2);
    sub_1001CDC18(v17, v3, type metadata accessor for UnauthenticatedStateWithTasks);
  }

  else
  {
    sub_1001CDD84(v14, type metadata accessor for ConnectionState);
    sub_1001CDD1C(a2, v11, v18, _s6LoggerVMa);
    sub_1001CDD1C(a2, v8, v19, _s6LoggerVMa);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v20 = sub_1004A4A54();
    v21 = sub_1004A6014();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = v30;
      *v22 = 0x204100302;
      *(v22 + 8) = 256;
      v23 = v8[*(v6 + 20)];
      sub_1001CDD84(v8, _s6LoggerVMa);
      *(v22 + 10) = v23;
      *(v22 + 11) = 2082;
      v24 = *&v11[*(v6 + 20) + 4];
      sub_1001CDD84(v11, _s6LoggerVMa);
      v25 = ConnectionID.debugDescription.getter(v24);
      v27 = sub_10015BA6C(v25, v26, &v31);

      *(v22 + 13) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "[%.*hhx-%{public}s] Received did-start-TLS, but not in unauthenticated state.", v22, 0x15u);
      sub_1000197E0(v30);
    }

    else
    {
      sub_1001CDD84(v8, _s6LoggerVMa);

      sub_1001CDD84(v11, _s6LoggerVMa);
    }
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1001C4728(uint64_t a1, uint64_t a2)
{
  v5 = sub_10000C9C0(&qword_1005D3FB0, &qword_1004DF4A8);
  __chkstk_darwin(v5);
  v7 = &v21 - v6;
  v8 = type metadata accessor for ConnectionState(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001CDD1C(v2, v11, v9, type metadata accessor for ConnectionState);
  result = swift_getEnumCaseMultiPayload();
  if (result > 2)
  {
    if (result == 3)
    {
      return sub_1001CDD84(v11, type metadata accessor for ConnectionState);
    }

    if (result == 4)
    {
      return result;
    }
  }

  else
  {
    sub_1001CDD84(v11, type metadata accessor for ConnectionState);
  }

  v14 = *(v5 + 48);
  sub_1001CDD1C(v2, v7, v13, type metadata accessor for ConnectionState);
  v15 = sub_1004A4E34();
  v16 = *(v15 - 8);
  v17 = *(v16 + 16);
  v17(&v7[v14], a1, v15);
  v18 = (*(v16 + 88))(&v7[v14], v15);
  if (v18 == enum case for NWConnection.State.failed(_:))
  {
LABEL_6:
    sub_1001CDD84(v2, type metadata accessor for ConnectionState);
    swift_storeEnumTagMultiPayload();
    (*(v16 + 8))(&v7[v14], v15);
    return sub_1001CDD84(v7, type metadata accessor for ConnectionState);
  }

  if (v18 == enum case for NWConnection.State.ready(_:))
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1001CDD84(v2, type metadata accessor for ConnectionState);
      v19 = static MonotonicTime.now()();
      *&v2[*(type metadata accessor for UnauthenticatedStateWithTasks(0) + 28)] = _swiftEmptyArrayStorage;
      *v2 = a2;
      *(v2 + 1) = v19;
      type metadata accessor for UnauthenticatedState(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();

      v20 = v7;
      goto LABEL_15;
    }
  }

  else if (v18 == enum case for NWConnection.State.cancelled(_:))
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload())
  {
    return sub_100025F40(v7, &qword_1005D3FB0, &qword_1004DF4A8);
  }

  sub_1001CDD84(v2, type metadata accessor for ConnectionState);
  v17(v2, a1, v15);
  swift_storeEnumTagMultiPayload();
  v20 = v7;
LABEL_15:
  sub_1001CDD84(v20, type metadata accessor for ConnectionState);
  return (*(v16 + 8))(&v7[v14], v15);
}

uint64_t sub_1001C4B18(unint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void (*a5)(void), uint64_t a6, NSObject *a7)
{
  v8 = v7;
  v100 = a3;
  v101 = a7;
  v97 = a5;
  v98 = a6;
  v99 = a2;
  v11 = type metadata accessor for UntaggedResponse(0);
  __chkstk_darwin(v11 - 8);
  v103 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UnauthenticatedStateWithTasks(0);
  __chkstk_darwin(v13);
  v104 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ConnectionState(0);
  __chkstk_darwin(v15);
  v96 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v95 - v18;
  __chkstk_darwin(v20);
  v22 = &v95 - v21;
  v24 = __chkstk_darwin(v23);
  v26 = &v95 - v25;
  v102 = v8;
  sub_1001CDD1C(v8, &v95 - v25, v24, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1001CDD84(v26, type metadata accessor for ConnectionState);
  }

  else
  {
    v28 = v102;
    sub_1001CDD84(v102, type metadata accessor for ConnectionState);
    sub_1001CDD84(v26, type metadata accessor for ConnectionState);
    v29 = static MonotonicTime.now()();
    *(v28 + *(v13 + 28)) = _swiftEmptyArrayStorage;
    *v28 = v99;
    v28[1] = v29;
    type metadata accessor for UnauthenticatedState(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
  }

  sub_1001CDD1C(v102, v22, v27, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1001CDD84(v22, type metadata accessor for ConnectionState);
    sub_1001CDD1C(v102, v19, v56, type metadata accessor for ConnectionState);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      memcpy(v151, v19, 0x162uLL);
      v57 = *(v19 + 19);
      v58 = *(v19 + 21);
      v146 = *(v19 + 20);
      v147 = v58;
      v59 = *(v19 + 15);
      v60 = *(v19 + 17);
      v142 = *(v19 + 16);
      v143 = v60;
      v62 = *(v19 + 17);
      v61 = *(v19 + 18);
      v63 = v61;
      v145 = *(v19 + 19);
      v144 = v61;
      v64 = *(v19 + 13);
      v138 = *(v19 + 12);
      v139 = v64;
      v65 = *(v19 + 14);
      v67 = *(v19 + 12);
      v66 = *(v19 + 13);
      v68 = v65;
      v141 = *(v19 + 15);
      v140 = v65;
      v69 = *(v19 + 21);
      v149[8] = v146;
      v149[9] = v69;
      v149[4] = v142;
      v149[5] = v62;
      v149[7] = v57;
      v149[6] = v63;
      v149[0] = v67;
      v149[1] = v66;
      v148 = *(v19 + 176);
      v150 = *(v19 + 176);
      v149[3] = v59;
      v149[2] = v68;
      if (sub_1001ACFC0(v149) == 1)
      {
        v70 = sub_1001AD074(v149);
        v109[8] = v146;
        v109[9] = v147;
        v110 = v148;
        v109[4] = v142;
        v109[5] = v143;
        v109[7] = v145;
        v109[6] = v144;
        v109[0] = v138;
        v109[1] = v139;
        v109[2] = v140;
        v109[3] = v141;
        v71 = sub_1001AD074(v109);
        sub_1001AD084(v71, v126);
        v72 = v102;
        sub_1001CDD84(v102, type metadata accessor for ConnectionState);
        v73 = *(v70 + 144);
        v135 = *(v70 + 128);
        v136 = v73;
        v137 = *(v70 + 160);
        v74 = *(v70 + 80);
        v131 = *(v70 + 64);
        v132 = v74;
        v75 = *(v70 + 96);
        v134 = *(v70 + 112);
        v133 = v75;
        v76 = *(v70 + 16);
        v127 = *v70;
        v128 = v76;
        v77 = *(v70 + 32);
        v130 = *(v70 + 48);
        v129 = v77;
        sub_1001E8E94(a1, v101);
        v111[8] = v135;
        v111[9] = v136;
        v111[4] = v131;
        v111[5] = v132;
        v111[7] = v134;
        v111[6] = v133;
        v111[0] = v127;
        v111[1] = v128;
        v111[3] = v130;
        v111[2] = v129;
        v121 = v135;
        v122 = v136;
        v117 = v131;
        v118 = v132;
        v120 = v134;
        v119 = v133;
        v113 = v127;
        v114 = v128;
        v112 = v137;
        v123 = v137;
        v116 = v130;
        v115 = v129;
        sub_1001CC288(&v113);
        v124[8] = v151[20];
        v124[9] = v151[21];
        v125 = v151[22];
        v124[4] = v151[16];
        v124[5] = v151[17];
        v124[7] = v151[19];
        v124[6] = v151[18];
        v124[0] = v151[12];
        v124[1] = v151[13];
        v124[3] = v151[15];
        v124[2] = v151[14];
        sub_1001AD084(v111, v126);
        sub_1001AD020(v124);
        v151[20] = v121;
        v151[21] = v122;
        LOWORD(v151[22]) = v123;
        v151[16] = v117;
        v151[17] = v118;
        v151[18] = v119;
        v151[19] = v120;
        v151[12] = v113;
        v151[13] = v114;
        v151[14] = v115;
        v151[15] = v116;
        memcpy(v126, v151, 0x162uLL);
        memcpy(v72, v151, 0x162uLL);
        swift_storeEnumTagMultiPayload();
        sub_1001CDD1C(v72, v96, v78, type metadata accessor for ConnectionState);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          sub_1001CD824(v126, v105);
          v79 = v102;
          sub_1001CDD84(v102, type metadata accessor for ConnectionState);
          memcpy(v108, v96, sizeof(v108));
          sub_1001C97B4(&v108[192], v101);
          v105[8] = v135;
          v105[9] = v136;
          LOWORD(v105[10]) = v137;
          v105[4] = v131;
          v105[5] = v132;
          v105[6] = v133;
          v105[7] = v134;
          v105[0] = v127;
          v105[1] = v128;
          v105[2] = v129;
          v105[3] = v130;
          sub_1001CDC80(v105);
          memcpy(v79, v108, 0x162uLL);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          v106[8] = v135;
          v106[9] = v136;
          v107 = v137;
          v106[4] = v131;
          v106[5] = v132;
          v106[6] = v133;
          v106[7] = v134;
          v106[0] = v127;
          v106[1] = v128;
          v106[2] = v129;
          v106[3] = v130;
          sub_1001CD824(v126, v105);
          sub_1001CDC80(v106);
          sub_1001CDD84(v96, type metadata accessor for ConnectionState);
        }

        memcpy(v105, v151, 0x162uLL);
        return sub_1001ACFCC(v105);
      }

      memcpy(v126, v151, 0x162uLL);
      sub_1001ACFCC(v126);
    }

    else
    {
      sub_1001CDD84(v19, type metadata accessor for ConnectionState);
    }

    return sub_1001C78D4(a1);
  }

  sub_1001CDD84(v102, type metadata accessor for ConnectionState);
  v30 = v104;
  v31 = sub_1001CDC18(v22, v104, type metadata accessor for UnauthenticatedStateWithTasks);
  v99 = &v95;
  __chkstk_darwin(v31);
  v32 = v101;
  *(&v95 - 2) = v100;
  *(&v95 - 1) = a4;
  v33 = sub_10021FE80(a1, v32, v30 + *(v13 + 24), sub_1001CDCD4, (&v95 - 4));
  if (v33 <= 0xFFFFFFFEFFFFFFFFLL)
  {
    v37 = v33;
    v38 = v15;
    v39 = a1;
    v40 = v34;
    v41 = v35;
    v42 = v13;
    v43 = v36;
    v97();
    v44 = v40;
    a1 = v39;
    v15 = v38;
    v45 = v43;
    v13 = v42;
    sub_1001CDDE4(v37, v44, v41, v45);
  }

  if (a1 >> 60 == 4)
  {
    v80 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v81 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v82 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v83 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
    v84 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    sub_10001123C(v81, v82, v83, *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30));
    v85 = sub_100221D78(v81, v82, v83, v84, v80, v101);
    v86 = v85[2];
    if (v86)
    {
      LODWORD(v96) = v84;
      v100 = v15;
      v101 = v83;
      v103 = v82;
      v95 = v85;
      v87 = v85 + 7;
      v88 = v97;
      do
      {
        v89 = *(v87 - 3);
        v90 = *(v87 - 2);
        v91 = *(v87 - 1);
        v92 = *v87;
        v93 = sub_1001AD7AC(v89, v90, v91, *v87);
        (v88)(v89, v90, v91, v92, v93);
        sub_1001AD7F8(v89, v90, v91, v92);
        v87 += 4;
        --v86;
      }

      while (v86);
      sub_100173584(v81, v103, v101, v96);
    }

    else
    {
      sub_100173584(v81, v82, v83, v84);
    }
  }

  else if (a1 >> 60 == 3)
  {
    v46 = v101;
    v100 = v15;
    v47 = swift_projectBox();
    sub_1001CDD1C(v47, v103, v48, type metadata accessor for UntaggedResponse);
    v49 = *(v13 + 28);
    v50 = *(v104 + v49);
    v51 = v50[2];
    if (v51)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_32;
      }

      while (1)
      {
        v52 = 0;
        v53 = (v50 + 5);
        while (v52 < v50[2])
        {
          ++v52;
          v54 = *(v53 + 24);
          v55 = *(v53 + 32);
          sub_100025928(v53, v54);
          (*(v55 + 24))(v103, v46, v54, v55);
          *(v104 + v49) = v50;
          v53 += 48;
          if (v51 == v52)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_32:
        v50 = sub_1001EDF60(v50);
      }
    }

LABEL_14:
    sub_1001CDD84(v103, type metadata accessor for UntaggedResponse);
  }

  sub_1001CDC18(v104, v102, type metadata accessor for UnauthenticatedStateWithTasks);
  return swift_storeEnumTagMultiPayload();
}

BOOL ConnectionState.isClosedOrCancelled.getter()
{
  v1 = type metadata accessor for ConnectionState(0);
  __chkstk_darwin(v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v4);
  v7 = &v12 - v6;
  sub_1001CDD1C(v0, &v12 - v6, v5, type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    sub_1001CDD84(v7, type metadata accessor for ConnectionState);
    goto LABEL_5;
  }

  v10 = 1;
  if (EnumCaseMultiPayload == 3)
  {
LABEL_6:
    sub_1001CDD84(v7, type metadata accessor for ConnectionState);
    return v10;
  }

  if (EnumCaseMultiPayload != 4)
  {
LABEL_5:
    sub_1001CDD1C(v0, v3, v9, type metadata accessor for ConnectionState);
    v10 = swift_getEnumCaseMultiPayload() == 5;
    v7 = v3;
    goto LABEL_6;
  }

  return v10;
}

uint64_t ConnectionState.hasMailboxSelected.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ConnectionState(0);
  v3 = __chkstk_darwin(v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1001CDD1C(v1, v5, v3, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    memcpy(v13, v5, 0x162uLL);
    v6 = *(v5 + 21);
    v14[8] = *(v5 + 20);
    v14[9] = v6;
    v15 = *(v5 + 176);
    v7 = *(v5 + 17);
    v14[4] = *(v5 + 16);
    v14[5] = v7;
    v8 = *(v5 + 19);
    v14[6] = *(v5 + 18);
    v14[7] = v8;
    v9 = *(v5 + 13);
    v14[0] = *(v5 + 12);
    v14[1] = v9;
    v10 = *(v5 + 15);
    v14[2] = *(v5 + 14);
    v14[3] = v10;
    if (sub_1001ACFC0(v14) == 2)
    {
      sub_1001AD074(v14);
      sub_1001ACFCC(v13);
      return 1;
    }

    sub_1001ACFCC(v13);
  }

  else
  {
    sub_1001CDD84(v5, type metadata accessor for ConnectionState);
  }

  return 0;
}

uint64_t static AuthenticatedState.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_1001B00A0(*a1, *a2) & 1) != 0 && (v4 = *(a1 + 120), v5 = *(a1 + 152), v31[8] = *(a1 + 136), v31[9] = v5, v31[10] = *(a1 + 168), v6 = *(a1 + 56), v7 = *(a1 + 88), v31[4] = *(a1 + 72), v31[5] = v7, v31[6] = *(a1 + 104), v31[7] = v4, v8 = *(a1 + 24), v31[0] = *(a1 + 8), v31[1] = v8, v31[2] = *(a1 + 40), v31[3] = v6, v9 = *(a2 + 120), v10 = *(a2 + 152), v30[8] = *(a2 + 136), v30[9] = v10, v30[10] = *(a2 + 168), v11 = *(a2 + 56), v12 = *(a2 + 88), v30[4] = *(a2 + 72), v30[5] = v12, v30[6] = *(a2 + 104), v30[7] = v9, v13 = *(a2 + 24), v30[0] = *(a2 + 8), v30[1] = v13, v30[2] = *(a2 + 40), v30[3] = v11, (static ServerID.__derived_struct_equals(_:_:)(v31, v30)) && (sub_1001B02D8(*(a1 + 184), *(a2 + 184)))
  {
    v14 = *(a1 + 336);
    v28[8] = *(a1 + 320);
    v28[9] = v14;
    v29 = *(a1 + 352);
    v15 = *(a1 + 272);
    v28[4] = *(a1 + 256);
    v28[5] = v15;
    v16 = *(a1 + 304);
    v28[6] = *(a1 + 288);
    v28[7] = v16;
    v17 = *(a1 + 208);
    v28[0] = *(a1 + 192);
    v28[1] = v17;
    v18 = *(a1 + 240);
    v28[2] = *(a1 + 224);
    v28[3] = v18;
    v19 = *(a2 + 336);
    v26[8] = *(a2 + 320);
    v26[9] = v19;
    v27 = *(a2 + 352);
    v20 = *(a2 + 272);
    v26[4] = *(a2 + 256);
    v26[5] = v20;
    v21 = *(a2 + 304);
    v26[6] = *(a2 + 288);
    v26[7] = v21;
    v22 = *(a2 + 208);
    v26[0] = *(a2 + 192);
    v26[1] = v22;
    v23 = *(a2 + 240);
    v26[2] = *(a2 + 224);
    v26[3] = v23;
    v24 = sub_1001CA1E0(v28, v26);
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}

uint64_t ConnectionState.kind.getter()
{
  v1 = type metadata accessor for ConnectionState(0);
  v2 = __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001CDD1C(v0, v4, v2, type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1001CDD84(v4, type metadata accessor for ConnectionState);
      return 6;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1001CDD84(v4, type metadata accessor for ConnectionState);
      return 2;
    }

    else
    {
      sub_1001CDD84(v4, type metadata accessor for ConnectionState);
      return 3;
    }
  }

  else
  {
    v7 = sub_1004A4E34();
    v8 = *(v7 - 8);
    v9 = (*(v8 + 88))(v4, v7) == enum case for NWConnection.State.waiting(_:);
    (*(v8 + 8))(v4, v7);
    return v9;
  }
}

uint64_t ConnectionState.nonSensitiveShortLogDescription.getter(__n128 a1)
{
  v2 = type metadata accessor for UnauthenticatedState(0);
  __chkstk_darwin(v2);
  v31 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UnauthenticatedStateWithTasks(0);
  __chkstk_darwin(v4);
  v32 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004A4E34();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ConnectionState(0);
  v14 = __chkstk_darwin(v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001CDD1C(v1, v16, v14, type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1001CDD84(v16, type metadata accessor for ConnectionState);
      return 0xD000000000000014;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 0x64656C696166;
    }

    else
    {
      return 0x656C6C65636E6163;
    }
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = v32;
      sub_1001CDC18(v16, v32, type metadata accessor for UnauthenticatedStateWithTasks);
      v19 = v31;
      sub_1001CDD1C(v18 + *(v4 + 24), v31, v20, type metadata accessor for UnauthenticatedState);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
        case 5u:
          sub_1001CDD84(v19, type metadata accessor for UnauthenticatedState);
          sub_1001CDD84(v18, type metadata accessor for UnauthenticatedStateWithTasks);
          result = 0xD000000000000026;
          break;
        case 2u:
          sub_1001CDD84(v18, type metadata accessor for UnauthenticatedStateWithTasks);
          sub_1001CDD84(v19, type metadata accessor for UnauthenticatedState);
          result = 0xD00000000000001FLL;
          break;
        case 3u:
          sub_1001CDD84(v19, type metadata accessor for UnauthenticatedState);
          sub_1001CDD84(v18, type metadata accessor for UnauthenticatedStateWithTasks);
          result = 0xD000000000000022;
          break;
        case 4u:
          sub_1001CDD84(v19, type metadata accessor for UnauthenticatedState);
          sub_1001CDD84(v18, type metadata accessor for UnauthenticatedStateWithTasks);
          result = 0xD000000000000020;
          break;
        case 6u:
          sub_1001CDD84(v19, type metadata accessor for UnauthenticatedState);
          sub_1001CDD84(v18, type metadata accessor for UnauthenticatedStateWithTasks);
          result = 0xD000000000000024;
          break;
        case 7u:
          sub_1001CDD84(v19, type metadata accessor for UnauthenticatedState);
          sub_1001CDD84(v18, type metadata accessor for UnauthenticatedStateWithTasks);
          result = 0xD00000000000002FLL;
          break;
        case 8u:
          sub_1001CDD84(v19, type metadata accessor for UnauthenticatedState);
          sub_1001CDD84(v18, type metadata accessor for UnauthenticatedStateWithTasks);
          result = 0xD000000000000023;
          break;
        case 9u:
          sub_1001CDD84(v19, type metadata accessor for UnauthenticatedState);
          sub_1001CDD84(v18, type metadata accessor for UnauthenticatedStateWithTasks);
          result = 0xD000000000000015;
          break;
        case 0xAu:
          sub_1001CDD84(v19, type metadata accessor for UnauthenticatedState);
          sub_1001CDD84(v18, type metadata accessor for UnauthenticatedStateWithTasks);
          result = 0xD000000000000017;
          break;
        case 0xBu:
          sub_1001CDD84(v18, type metadata accessor for UnauthenticatedStateWithTasks);
          result = 0xD00000000000001BLL;
          break;
        case 0xCu:
          goto LABEL_27;
        case 0xDu:
          sub_1001CDD84(v18, type metadata accessor for UnauthenticatedStateWithTasks);
          result = 0xD00000000000001CLL;
          break;
        case 0xEu:
          sub_1001CDD84(v18, type metadata accessor for UnauthenticatedStateWithTasks);
          result = 0xD00000000000001ELL;
          break;
        case 0xFu:
          sub_1001CDD84(v18, type metadata accessor for UnauthenticatedStateWithTasks);
          result = 0xD00000000000002CLL;
          break;
        default:
          sub_1001CDD84(v19, type metadata accessor for UnauthenticatedState);
LABEL_27:
          sub_1001CDD84(v18, type metadata accessor for UnauthenticatedStateWithTasks);
          result = 0xD00000000000002BLL;
          break;
      }

      return result;
    }

    memcpy(v33, v16, 0x162uLL);
    v23 = *(v16 + 21);
    v34[8] = *(v16 + 20);
    v34[9] = v23;
    v35 = *(v16 + 176);
    v24 = *(v16 + 17);
    v34[4] = *(v16 + 16);
    v34[5] = v24;
    v25 = *(v16 + 19);
    v34[6] = *(v16 + 18);
    v34[7] = v25;
    v26 = *(v16 + 13);
    v34[0] = *(v16 + 12);
    v34[1] = v26;
    v27 = *(v16 + 15);
    v34[2] = *(v16 + 14);
    v34[3] = v27;
    v28 = sub_1001ACFC0(v34);
    sub_1001AD074(v34);
    sub_1001ACFCC(v33);
    if (v28)
    {
      if (v28 == 1)
      {
        return 0xD000000000000019;
      }

      else
      {
        return 0xD000000000000018;
      }
    }

    return 0xD000000000000013;
  }

  v22 = (*(v7 + 88))(v16, v6);
  if (v22 == enum case for NWConnection.State.waiting(_:))
  {
    (*(v7 + 8))(v16, v6);
    return 0xD000000000000013;
  }

  if (v22 == enum case for NWConnection.State.failed(_:))
  {
    (*(v7 + 8))(v16, v6);
    return 0xD000000000000012;
  }

  if (v22 == enum case for NWConnection.State.setup(_:))
  {
    return 0xD000000000000011;
  }

  if (v22 == enum case for NWConnection.State.preparing(_:))
  {
    return 0xD000000000000015;
  }

  if (v22 == enum case for NWConnection.State.ready(_:))
  {
    return 0xD000000000000011;
  }

  if (v22 == enum case for NWConnection.State.cancelled(_:))
  {
    return 0xD000000000000015;
  }

  (*(v7 + 32))(v12, v16, v6);
  v33[0] = 0x697463656E6E6F63;
  v33[1] = 0xEB0000000028676ELL;
  (*(v7 + 16))(v9, v12, v6);
  v36._countAndFlagsBits = sub_1004A5804();
  sub_1004A5994(v36);

  v37._countAndFlagsBits = 41;
  v37._object = 0xE100000000000000;
  sub_1004A5994(v37);
  v29 = v33[0];
  (*(v7 + 8))(v12, v6);
  return v29;
}

uint64_t sub_1001C6710(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 144);
  v13[8] = *(a1 + 128);
  v13[9] = v2;
  v14 = *(a1 + 160);
  v3 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v3;
  v4 = *(a1 + 112);
  v13[6] = *(a1 + 96);
  v13[7] = v4;
  v5 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v5;
  v6 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v6;
  v7 = *(a2 + 144);
  v15[8] = *(a2 + 128);
  v15[9] = v7;
  v16 = *(a2 + 160);
  v8 = *(a2 + 80);
  v15[4] = *(a2 + 64);
  v15[5] = v8;
  v9 = *(a2 + 112);
  v15[6] = *(a2 + 96);
  v15[7] = v9;
  v10 = *(a2 + 16);
  v15[0] = *a2;
  v15[1] = v10;
  v11 = *(a2 + 48);
  v15[2] = *(a2 + 32);
  v15[3] = v11;
  return sub_1001CA1E0(v13, v15) & 1;
}

uint64_t sub_1001C67A4(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 120);
  v5 = *(a1 + 152);
  v33[8] = *(a1 + 136);
  v33[9] = v5;
  v33[10] = *(a1 + 168);
  v6 = *(a1 + 56);
  v7 = *(a1 + 88);
  v33[4] = *(a1 + 72);
  v33[5] = v7;
  v33[6] = *(a1 + 104);
  v33[7] = v4;
  v8 = *(a1 + 24);
  v33[0] = *(a1 + 8);
  v33[1] = v8;
  v33[2] = *(a1 + 40);
  v33[3] = v6;
  v9 = *(a1 + 184);
  v10 = *(a1 + 336);
  v29[8] = *(a1 + 320);
  v29[9] = v10;
  v30 = *(a1 + 352);
  v11 = *(a1 + 272);
  v29[4] = *(a1 + 256);
  v29[5] = v11;
  v12 = *(a1 + 304);
  v29[6] = *(a1 + 288);
  v29[7] = v12;
  v13 = *(a1 + 208);
  v29[0] = *(a1 + 192);
  v29[1] = v13;
  v14 = *(a1 + 240);
  v29[2] = *(a1 + 224);
  v29[3] = v14;
  v15 = *a2;
  v16 = *(a2 + 120);
  v17 = *(a2 + 152);
  v34[8] = *(a2 + 136);
  v34[9] = v17;
  v34[10] = *(a2 + 168);
  v18 = *(a2 + 56);
  v19 = *(a2 + 88);
  v34[4] = *(a2 + 72);
  v34[5] = v19;
  v34[6] = *(a2 + 104);
  v34[7] = v16;
  v20 = *(a2 + 24);
  v34[0] = *(a2 + 8);
  v34[1] = v20;
  v34[2] = *(a2 + 40);
  v34[3] = v18;
  v21 = *(a2 + 184);
  v22 = *(a2 + 336);
  v31[8] = *(a2 + 320);
  v31[9] = v22;
  v32 = *(a2 + 352);
  v23 = *(a2 + 272);
  v31[4] = *(a2 + 256);
  v31[5] = v23;
  v24 = *(a2 + 304);
  v31[6] = *(a2 + 288);
  v31[7] = v24;
  v25 = *(a2 + 208);
  v31[0] = *(a2 + 192);
  v31[1] = v25;
  v26 = *(a2 + 240);
  v31[2] = *(a2 + 224);
  v31[3] = v26;
  if (sub_1001B00A0(v3, v15) & 1) != 0 && (static ServerID.__derived_struct_equals(_:_:)(v33, v34) & 1) != 0 && (sub_1001B02D8(v9, v21))
  {
    v27 = sub_1001CA1E0(v29, v31);
  }

  else
  {
    v27 = 0;
  }

  return v27 & 1;
}

uint64_t MailboxSelectionFailure.response.getter()
{
  v1 = v0[2];
  sub_10010E780(v1, v0[3], v0[4]);
  return v1;
}

uint64_t MailboxSelectionFailure.response.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_10010E7C0(v3[2], v3[3], v3[4]);
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return result;
}

uint64_t sub_1001C69A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s15IMAP2Connection23MailboxSelectionFailureV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v7) & 1;
}

double AuthenticatedState.mailboxSelection.getter()
{
  v1 = *(v0 + 336);
  v8[8] = *(v0 + 320);
  v8[9] = v1;
  v9 = *(v0 + 352);
  v2 = *(v0 + 272);
  v8[4] = *(v0 + 256);
  v8[5] = v2;
  v3 = *(v0 + 304);
  v8[6] = *(v0 + 288);
  v8[7] = v3;
  v4 = *(v0 + 208);
  v8[0] = *(v0 + 192);
  v8[1] = v4;
  v5 = *(v0 + 240);
  v8[2] = *(v0 + 224);
  v8[3] = v5;
  v6 = sub_1001ACFC0(v8);
  sub_1001AD074(v8);
  if (v6)
  {
  }

  return result;
}

BOOL ConnectionState.isConnectingOrAuthenticating.getter()
{
  v1 = type metadata accessor for ConnectionState(0);
  v2 = __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001CDD1C(v0, v4, v2, type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v6 = EnumCaseMultiPayload < 2;
LABEL_6:
    sub_1001CDD84(v4, type metadata accessor for ConnectionState);
    return v6;
  }

  if ((EnumCaseMultiPayload - 4) >= 2)
  {
    v6 = 0;
    goto LABEL_6;
  }

  return 0;
}

BOOL ConnectionState.isActivelyConnectingOrAuthenticating.getter()
{
  v1 = type metadata accessor for ConnectionState(0);
  __chkstk_darwin(v1);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v4);
  v7 = &v14 - v6;
  sub_1001CDD1C(v0, &v14 - v6, v5, type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 4) < 2)
    {
      return 0;
    }

    goto LABEL_7;
  }

  if (EnumCaseMultiPayload >= 2)
  {
LABEL_7:
    sub_1001CDD84(v7, type metadata accessor for ConnectionState);
    return 0;
  }

  sub_1001CDD84(v7, type metadata accessor for ConnectionState);
  sub_1001CDD1C(v0, v3, v9, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1001CDD84(v3, type metadata accessor for ConnectionState);
    return 1;
  }

  else
  {
    v11 = sub_1004A4E34();
    v12 = *(v11 - 8);
    v13 = (*(v12 + 88))(v3, v11) != enum case for NWConnection.State.waiting(_:);
    (*(v12 + 8))(v3, v11);
    return v13;
  }
}

Swift::Bool __swiftcall ConnectionState.hasMailboxSelectedOrSelectionIsInProgress(_:)(NIOIMAPCore2::MailboxName a1)
{
  v2 = v1;
  value = a1._hashValue._value;
  rawValue = a1.bytes._rawValue;
  v5 = type metadata accessor for ConnectionState(0);
  __chkstk_darwin(v5);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = v30 - v10;
  sub_1001CDD1C(v2, v30 - v10, v9, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1001CDD84(v11, type metadata accessor for ConnectionState);
    goto LABEL_9;
  }

  memcpy(v32, v11, sizeof(v32));
  v12 = *(v11 + 21);
  v41 = *(v11 + 20);
  v42 = v12;
  v43 = *(v11 + 176);
  v13 = *(v11 + 17);
  v37 = *(v11 + 16);
  v38 = v13;
  v14 = *(v11 + 19);
  v39 = *(v11 + 18);
  v40 = v14;
  v15 = *(v11 + 13);
  v33 = *(v11 + 12);
  v34 = v15;
  v16 = *(v11 + 15);
  v35 = *(v11 + 14);
  v36 = v16;
  if (sub_1001ACFC0(&v33) != 2)
  {
    sub_1001ACFCC(v32);
    goto LABEL_9;
  }

  v17 = sub_1001AD074(&v33);
  v18 = *v17;
  v19 = *(v17 + 8);
  v30[0] = *&v32[192];
  v30[1] = *&v32[208];
  v30[4] = *&v32[256];
  v30[5] = *&v32[272];
  v30[2] = *&v32[224];
  v30[3] = *&v32[240];
  v31 = *&v32[352];
  v30[8] = *&v32[320];
  v30[9] = *&v32[336];
  v30[6] = *&v32[288];
  v30[7] = *&v32[304];
  sub_1001AD074(v30);

  sub_1001ACFCC(v32);

  sub_1001AD020(&v32[192]);
  if ((v19 | (v19 << 32)) != (value | (value << 32)))
  {

LABEL_9:
    sub_1001CDD1C(v2, v7, v21, type metadata accessor for ConnectionState);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      memcpy(v32, v7, sizeof(v32));
      v23 = *(v7 + 21);
      v41 = *(v7 + 20);
      v42 = v23;
      v43 = *(v7 + 176);
      v24 = *(v7 + 17);
      v37 = *(v7 + 16);
      v38 = v24;
      v25 = *(v7 + 19);
      v39 = *(v7 + 18);
      v40 = v25;
      v26 = *(v7 + 13);
      v33 = *(v7 + 12);
      v34 = v26;
      v27 = *(v7 + 15);
      v35 = *(v7 + 14);
      v36 = v27;
      if (sub_1001ACFC0(&v33) == 1)
      {
        v28 = sub_1001AD074(&v33);
        if ((*(v28 + 8) | (*(v28 + 8) << 32)) == (value | (value << 32)))
        {
          v22 = sub_1000FFC98(*v28, rawValue);
          sub_1001ACFCC(v32);
          return v22 & 1;
        }
      }

      sub_1001ACFCC(v32);
    }

    else
    {
      sub_1001CDD84(v7, type metadata accessor for ConnectionState);
    }

    v22 = 0;
    return v22 & 1;
  }

  v20 = sub_1000FFC98(v18, rawValue);

  if ((v20 & 1) == 0)
  {
    goto LABEL_9;
  }

  v22 = 1;
  return v22 & 1;
}

Swift::Bool __swiftcall ConnectionState.hasMailboxSelected(_:)(NIOIMAPCore2::MailboxName a1)
{
  v2 = v1;
  value = a1._hashValue._value;
  rawValue = a1.bytes._rawValue;
  v5 = type metadata accessor for ConnectionState(0);
  v6 = __chkstk_darwin(v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001CDD1C(v2, v8, v6, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1001CDD84(v8, type metadata accessor for ConnectionState);
LABEL_8:
    v17 = 0;
    return v17 & 1;
  }

  memcpy(v21, v8, sizeof(v21));
  v9 = *(v8 + 21);
  v22[8] = *(v8 + 20);
  v22[9] = v9;
  v23 = *(v8 + 176);
  v10 = *(v8 + 17);
  v22[4] = *(v8 + 16);
  v22[5] = v10;
  v11 = *(v8 + 19);
  v22[6] = *(v8 + 18);
  v22[7] = v11;
  v12 = *(v8 + 13);
  v22[0] = *(v8 + 12);
  v22[1] = v12;
  v13 = *(v8 + 15);
  v22[2] = *(v8 + 14);
  v22[3] = v13;
  if (sub_1001ACFC0(v22) != 2)
  {
    sub_1001ACFCC(v21);
    goto LABEL_8;
  }

  v14 = sub_1001AD074(v22);
  v15 = *v14;
  v16 = *(v14 + 8);
  v19[0] = *&v21[192];
  v19[1] = *&v21[208];
  v19[4] = *&v21[256];
  v19[5] = *&v21[272];
  v19[2] = *&v21[224];
  v19[3] = *&v21[240];
  v20 = *&v21[352];
  v19[8] = *&v21[320];
  v19[9] = *&v21[336];
  v19[6] = *&v21[288];
  v19[7] = *&v21[304];
  sub_1001AD074(v19);

  sub_1001ACFCC(v21);

  sub_1001AD020(&v21[192]);
  if ((v16 | (v16 << 32)) != (value | (value << 32)))
  {

    goto LABEL_8;
  }

  v17 = sub_1000FFC98(v15, rawValue);

  return v17 & 1;
}

Swift::Bool __swiftcall ConnectionState.mailboxSelectionIsInProgress(_:)(NIOIMAPCore2::MailboxName a1)
{
  v2 = v1;
  value = a1._hashValue._value;
  rawValue = a1.bytes._rawValue;
  v5 = type metadata accessor for ConnectionState(0);
  v6 = __chkstk_darwin(v5);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1001CDD1C(v2, v8, v6, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1001CDD84(v8, type metadata accessor for ConnectionState);
LABEL_7:
    v15 = 0;
    return v15 & 1;
  }

  memcpy(v18, v8, 0x162uLL);
  v9 = *(v8 + 21);
  v19[8] = *(v8 + 20);
  v19[9] = v9;
  v20 = *(v8 + 176);
  v10 = *(v8 + 17);
  v19[4] = *(v8 + 16);
  v19[5] = v10;
  v11 = *(v8 + 19);
  v19[6] = *(v8 + 18);
  v19[7] = v11;
  v12 = *(v8 + 13);
  v19[0] = *(v8 + 12);
  v19[1] = v12;
  v13 = *(v8 + 15);
  v19[2] = *(v8 + 14);
  v19[3] = v13;
  if (sub_1001ACFC0(v19) != 1 || (v14 = sub_1001AD074(v19), (*(v14 + 8) | (*(v14 + 8) << 32)) != (value | (value << 32))))
  {
    sub_1001ACFCC(v18);
    goto LABEL_7;
  }

  v15 = sub_1000FFC98(*v14, rawValue);
  sub_1001ACFCC(v18);
  return v15 & 1;
}

uint64_t ConnectionState.selectedMailbox.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ConnectionState(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1001CDD1C(v2, v7, v5, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    result = sub_1001CDD84(v7, type metadata accessor for ConnectionState);
LABEL_6:
    v20 = 0;
    v21 = 0;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
    goto LABEL_7;
  }

  memcpy(v25, v7, sizeof(v25));
  v8 = *(v7 + 21);
  v26[8] = *(v7 + 20);
  v26[9] = v8;
  v27 = *(v7 + 176);
  v9 = *(v7 + 17);
  v26[4] = *(v7 + 16);
  v26[5] = v9;
  v10 = *(v7 + 19);
  v26[6] = *(v7 + 18);
  v26[7] = v10;
  v11 = *(v7 + 13);
  v26[0] = *(v7 + 12);
  v26[1] = v11;
  v12 = *(v7 + 15);
  v26[2] = *(v7 + 14);
  v26[3] = v12;
  if (sub_1001ACFC0(v26) != 2)
  {
    result = sub_1001ACFCC(v25);
    goto LABEL_6;
  }

  v13 = sub_1001AD074(v26);
  v23[8] = *&v25[320];
  v23[9] = *&v25[336];
  v24 = *&v25[352];
  v23[4] = *&v25[256];
  v23[5] = *&v25[272];
  v23[6] = *&v25[288];
  v23[7] = *&v25[304];
  v23[0] = *&v25[192];
  v23[1] = *&v25[208];
  v23[2] = *&v25[224];
  v23[3] = *&v25[240];
  v14 = sub_1001AD074(v23);
  sub_1000CB914(v14, v22);
  result = sub_1001ACFCC(v25);
  v16 = *v13;
  v17 = *(v13 + 16);
  v18 = *(v13 + 32);
  v19 = *(v13 + 48);
  v20 = *(v13 + 64);
  v21 = *(v13 + 72) | (*(v13 + 74) << 16);
LABEL_7:
  *a1 = v16;
  *(a1 + 16) = v17;
  *(a1 + 32) = v18;
  *(a1 + 48) = v19;
  *(a1 + 64) = v20;
  *(a1 + 72) = v21;
  *(a1 + 74) = BYTE2(v21);
  return result;
}

uint64_t ConnectionState.anyMailboxSelectionIsInProgress.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ConnectionState(0);
  v3 = __chkstk_darwin(v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1001CDD1C(v1, v5, v3, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    memcpy(v13, v5, 0x162uLL);
    v6 = *(v5 + 21);
    v14[8] = *(v5 + 20);
    v14[9] = v6;
    v15 = *(v5 + 176);
    v7 = *(v5 + 17);
    v14[4] = *(v5 + 16);
    v14[5] = v7;
    v8 = *(v5 + 19);
    v14[6] = *(v5 + 18);
    v14[7] = v8;
    v9 = *(v5 + 13);
    v14[0] = *(v5 + 12);
    v14[1] = v9;
    v10 = *(v5 + 15);
    v14[2] = *(v5 + 14);
    v14[3] = v10;
    if (sub_1001ACFC0(v14) == 1)
    {
      sub_1001AD074(v14);
      sub_1001ACFCC(v13);
      return 1;
    }

    sub_1001ACFCC(v13);
  }

  else
  {
    sub_1001CDD84(v5, type metadata accessor for ConnectionState);
  }

  return 0;
}

uint64_t ConnectionState.isReadyForCommandsWithoutMailboxSelection.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ConnectionState(0);
  v3 = __chkstk_darwin(v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1001CDD1C(v1, v5, v3, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    memcpy(v15, v5, 0x162uLL);
    v6 = *(v5 + 21);
    v16[8] = *(v5 + 20);
    v16[9] = v6;
    v17 = *(v5 + 176);
    v7 = *(v5 + 17);
    v16[4] = *(v5 + 16);
    v16[5] = v7;
    v8 = *(v5 + 19);
    v16[6] = *(v5 + 18);
    v16[7] = v8;
    v9 = *(v5 + 13);
    v16[0] = *(v5 + 12);
    v16[1] = v9;
    v10 = *(v5 + 15);
    v16[2] = *(v5 + 14);
    v16[3] = v10;
    v11 = sub_1001ACFC0(v16);
    sub_1001AD074(v16);
    sub_1001ACFCC(v15);
    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = -1;
    }
  }

  else
  {
    sub_1001CDD84(v5, type metadata accessor for ConnectionState);
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_1001C78D4(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ConnectionState(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001CDD1C(v2, v7, v5, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    return sub_1001CDD84(v7, type metadata accessor for ConnectionState);
  }

  memcpy(v54, v7, sizeof(v54));
  v8 = *(v7 + 19);
  v9 = *(v7 + 21);
  v49 = *(v7 + 20);
  v50 = v9;
  v10 = *(v7 + 15);
  v11 = *(v7 + 17);
  v45 = *(v7 + 16);
  v46 = v11;
  v12 = *(v7 + 17);
  v13 = *(v7 + 19);
  v47 = *(v7 + 18);
  v48 = v13;
  v14 = *(v7 + 13);
  v41 = *(v7 + 12);
  v42 = v14;
  v15 = *(v7 + 15);
  v17 = *(v7 + 12);
  v16 = *(v7 + 13);
  v43 = *(v7 + 14);
  v44 = v15;
  v18 = *(v7 + 21);
  v52[8] = v49;
  v52[9] = v18;
  v52[4] = v45;
  v52[5] = v12;
  v52[6] = v47;
  v52[7] = v8;
  v52[0] = v17;
  v52[1] = v16;
  v51 = *(v7 + 176);
  v53 = *(v7 + 176);
  v52[2] = v43;
  v52[3] = v10;
  if (sub_1001ACFC0(v52) == 2)
  {
    v19 = sub_1001AD074(v52);
    v26[8] = v49;
    v26[9] = v50;
    v27 = v51;
    v26[4] = v45;
    v26[5] = v46;
    v26[6] = v47;
    v26[7] = v48;
    v26[0] = v41;
    v26[1] = v42;
    v26[2] = v43;
    v26[3] = v44;
    v20 = sub_1001AD074(v26);
    sub_1000CB914(v20, v36);
    sub_1001CDD84(v2, type metadata accessor for ConnectionState);
    v21 = *v19;
    v38 = v19[1];
    v22 = v19[3];
    v39 = v19[2];
    v40[0] = v22;
    *(v40 + 11) = *(v19 + 59);
    v37 = v21;
    sub_100209A64(a1);
    v30 = v39;
    v31[0] = v40[0];
    *(v31 + 11) = *(v40 + 11);
    v28 = v37;
    v29 = v38;
    sub_1001CD750(&v28);
    v33[8] = *&v54[320];
    v33[9] = *&v54[336];
    v34 = *&v54[352];
    v33[4] = *&v54[256];
    v33[5] = *&v54[272];
    v33[6] = *&v54[288];
    v33[7] = *&v54[304];
    v33[0] = *&v54[192];
    v33[1] = *&v54[208];
    v33[2] = *&v54[224];
    v33[3] = *&v54[240];
    sub_1001AD020(v33);
    *&v54[320] = v31[5];
    *&v54[336] = v31[6];
    *&v54[352] = v32;
    *&v54[256] = v31[1];
    *&v54[272] = v31[2];
    *&v54[304] = v31[4];
    *&v54[288] = v31[3];
    *&v54[192] = v28;
    *&v54[208] = v29;
    *&v54[240] = v31[0];
    *&v54[224] = v30;
    memcpy(v35, v54, 0x162uLL);
    memcpy(v2, v54, 0x162uLL);
    swift_storeEnumTagMultiPayload();
    memcpy(v36, v54, 0x162uLL);
    sub_1001CD824(v35, &v25);
  }

  else
  {
    memcpy(v36, v54, 0x162uLL);
  }

  return sub_1001ACFCC(v36);
}

double sub_1001C7C44@<D0>(void (*a1)(_OWORD *__return_ptr)@<X0>, _OWORD *a2@<X8>)
{
  a1(v5);
  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  result = *&v6;
  a2[2] = v6;
  return result;
}

uint64_t sub_1001C7C8C(void (*a1)(unint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, void *a4, __int128 *a5)
{
  v6 = v5;
  v167 = a5;
  v164 = a3;
  v165 = a4;
  v157 = a2;
  v158 = a1;
  v7 = _s6LoggerVMa(0);
  v8 = *(v7 - 8);
  v162 = v7;
  v163 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v152 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v152 - v12;
  __chkstk_darwin(v14);
  v16 = &v152 - v15;
  __chkstk_darwin(v17);
  v154 = &v152 - v18;
  __chkstk_darwin(v19);
  v155 = &v152 - v20;
  __chkstk_darwin(v21);
  v159 = &v152 - v22;
  __chkstk_darwin(v23);
  v160 = &v152 - v24;
  __chkstk_darwin(v25);
  v156 = &v152 - v26;
  __chkstk_darwin(v27);
  v161 = &v152 - v28;
  v29 = type metadata accessor for ConnectionState(0);
  __chkstk_darwin(v29);
  v31 = &v152 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for UnauthenticatedStateWithTasks(0);
  v33 = __chkstk_darwin(v32);
  v35 = &v152 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001CDD1C(v6, v31, v33, type metadata accessor for ConnectionState);
  v166 = v29;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_1001CDD84(v31, type metadata accessor for ConnectionState);
  }

  v152 = v16;
  v36 = v6;
  v37 = &v242;
  v153 = v36;
  sub_1001CDD84(v36, type metadata accessor for ConnectionState);
  sub_1001CDC18(v31, v35, type metadata accessor for UnauthenticatedStateWithTasks);
  sub_100191724(&v225);
  v222 = v233;
  v223 = v234;
  v224[0] = v235[0];
  *(v224 + 9) = *(v235 + 9);
  v218 = v229;
  v219 = v230;
  v220 = v231;
  v221 = v232;
  v214 = v225;
  v215 = v226;
  v216 = v227;
  v217 = v228;
  v250 = v233;
  v251 = v234;
  v252[0] = v235[0];
  *(v252 + 9) = *(v235 + 9);
  v246 = v229;
  v247 = v230;
  v248 = v231;
  v249 = v232;
  v242 = v225;
  v243 = v226;
  v244 = v227;
  v245 = v228;
  v38 = v35;
  if (sub_1001CD904(&v242) != 1)
  {
    v253[8] = v250;
    v253[9] = v251;
    v254[0] = v252[0];
    *(v254 + 9) = *(v252 + 9);
    v253[4] = v246;
    v253[5] = v247;
    v253[6] = v248;
    v253[7] = v249;
    v253[0] = v242;
    v253[1] = v243;
    v253[2] = v244;
    v253[3] = v245;
    if (sub_1001CDA90(v253) == 1)
    {
      UInt32.init(_:)(v253);
      v39 = &v214;
      goto LABEL_11;
    }

    UInt32.init(_:)(v253);
  }

  if (*(*&v35[*(v32 + 28)] + 16))
  {
    sub_100025F40(&v225, &qword_1005D3FE0, &qword_1004DF4D0);
LABEL_10:
    v42 = v167;
    sub_1001CDD1C(v167, v10, v41, _s6LoggerVMa);
    v43 = (*(v163 + 80) + 16) & ~*(v163 + 80);
    v44 = (v9 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
    v45 = swift_allocObject();
    sub_1001CDC18(v10, v45 + v43, _s6LoggerVMa);
    v46 = (v45 + v44);
    v47 = v165;
    *v46 = v164;
    v46[1] = v47;
    sub_10022161C(v42, sub_1001CD9F0, v45);
    sub_1001CDC18(v35, v153, type metadata accessor for UnauthenticatedStateWithTasks);
    swift_storeEnumTagMultiPayload();
  }

  v240[8] = v233;
  v240[9] = v234;
  v241[0] = v235[0];
  *(v241 + 9) = *(v235 + 9);
  v240[4] = v229;
  v240[5] = v230;
  v240[6] = v231;
  v240[7] = v232;
  v240[0] = v225;
  v240[1] = v226;
  v240[2] = v227;
  v240[3] = v228;
  v39 = v240;
  if (sub_1001CD904(v240) == 1)
  {
    goto LABEL_10;
  }

LABEL_11:
  v48 = v39[9];
  v211 = v39[8];
  v212 = v48;
  v213[0] = v39[10];
  *(v213 + 9) = *(v39 + 169);
  v49 = v39[5];
  v207 = v39[4];
  v208 = v49;
  v50 = v39[7];
  v209 = v39[6];
  v210 = v50;
  v51 = v39[1];
  v203 = *v39;
  v204 = v51;
  v52 = v39[3];
  v205 = v39[2];
  v206 = v52;
  v201[8] = v211;
  v201[9] = v212;
  v202[0] = v213[0];
  *(v202 + 9) = *(v213 + 9);
  v201[4] = v207;
  v201[5] = v208;
  v201[6] = v209;
  v201[7] = v210;
  v201[0] = v203;
  v201[1] = v204;
  v201[2] = v205;
  v201[3] = v52;
  if (sub_1001CDA90(v201) == 1)
  {
    v53 = UInt32.init(_:)(v201);
    v37 = *v53;
    v54 = v53[1];
    v55 = v53[2];
    v56 = v167;
    v57 = v152;
    sub_1001CDD1C(v167, v152, v58, _s6LoggerVMa);
    sub_1001CDD1C(v56, v13, v59, _s6LoggerVMa);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v198 = v222;
    v199 = v223;
    v200[0] = v224[0];
    *(v200 + 9) = *(v224 + 9);
    v194 = v218;
    v195 = v219;
    v196 = v220;
    v197 = v221;
    v190 = v214;
    v191 = v215;
    v192 = v216;
    v193 = v217;
    sub_10000E268(&v190, &v179, &qword_1005D3FE8, &qword_1004DF4D8);
    v39 = sub_1004A4A54();
    v60 = sub_1004A6014();
    sub_100025F40(&v225, &qword_1005D3FE0, &qword_1004DF4D0);
    if (os_log_type_enabled(v39, v60))
    {
      v164 = v54;
      v165 = v35;
      v167 = v37;
      v61 = swift_slowAlloc();
      v163 = swift_slowAlloc();
      *&v179 = v163;
      *v61 = 68158466;
      *(v61 + 4) = 2;
      *(v61 + 8) = 256;
      v62 = v55;
      v63 = v162;
      v64 = v13[*(v162 + 20)];
      sub_1001CDD84(v13, _s6LoggerVMa);
      *(v61 + 10) = v64;
      *(v61 + 11) = 2082;
      v65 = *(v63 + 20);
      v55 = v62;
      v66 = *(v57 + v65 + 4);
      sub_1001CDD84(v57, _s6LoggerVMa);
      v67 = ConnectionID.debugDescription.getter(v66);
      v69 = sub_10015BA6C(v67, v68, &v179);

      *(v61 + 13) = v69;
      *(v61 + 21) = 2080;
      v70 = 0xEA00000000006174;
      v71 = 0x6F7571207265766FLL;
      if (v62 > 1)
      {
        if (v62 == 2)
        {
          v70 = 0xE500000000000000;
          v71 = 0x6B63757473;
        }

        else if (v62 == 3)
        {
          v70 = 0xE500000000000000;
          v71 = 0x726568746FLL;
        }
      }

      else if (v62)
      {
        if (v62 == 1)
        {
          v70 = 0x80000001004AB130;
          v71 = 0xD000000000000015;
        }
      }

      else
      {
        v70 = 0xEF736C6169746E65;
        v71 = 0x6465726320646162;
      }

      v131 = sub_10015BA6C(v71, v70, &v179);

      *(v61 + 23) = v131;
      _os_log_impl(&_mh_execute_header, v39, v60, "[%.*hhx-%{public}s] Authentication failed: %s", v61, 0x1Fu);
      swift_arrayDestroy();

      sub_1001CDD84(v165, type metadata accessor for UnauthenticatedStateWithTasks);
      v74 = v153;
      v37 = v167;
      v54 = v164;
      goto LABEL_55;
    }

LABEL_22:
    sub_1001CDD84(v13, _s6LoggerVMa);

    sub_1001CDD84(v57, _s6LoggerVMa);
    sub_1001CDD84(v35, type metadata accessor for UnauthenticatedStateWithTasks);
    v74 = v153;
LABEL_55:
    *v74 = v37;
    v74[1] = v54;
    v74[2] = v55;
    return swift_storeEnumTagMultiPayload();
  }

  v57 = UInt32.init(_:)(v201);
  result = static MonotonicTime.now()();
  v72 = *(v35 + 1);
  v73 = result - v72;
  if (result < v72)
  {
    v13 = v160;
    v54 = v161;
    v55 = v159;
    if (__OFSUB__(v72, result))
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v73 = result - v72;
    if (__OFSUB__(0, v72 - result))
    {
      __break(1u);
      goto LABEL_22;
    }

LABEL_24:
    v75 = v73 / 1000000000.0;
    if (COERCE__INT64(fabs(v75)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v75 > -9.22337204e18)
    {
      if (v75 < 9.22337204e18)
      {
        v76 = v75;
        v197 = *(v57 + 120);
        v198 = *(v57 + 136);
        v199 = *(v57 + 152);
        v200[0] = *(v57 + 168);
        v193 = *(v57 + 56);
        v194 = *(v57 + 72);
        v195 = *(v57 + 88);
        v196 = *(v57 + 104);
        v190 = *(v57 + 8);
        v191 = *(v57 + 24);
        v192 = *(v57 + 40);
        v77 = ServerID.logDescription.getter(v192);
        if (v78)
        {
          v80 = v78;
          v165 = v77;
          v81 = v167;
          sub_1001CDD1C(v167, v54, v79, _s6LoggerVMa);
          v82 = v156;
          sub_1001CDD1C(v81, v156, v83, _s6LoggerVMa);
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();

          v84 = sub_1004A4A54();
          v85 = sub_1004A6034();

          if (os_log_type_enabled(v84, v85))
          {
            v86 = v54;
            v87 = swift_slowAlloc();
            v163 = swift_slowAlloc();
            *&v179 = v163;
            *v87 = 68158722;
            *(v87 + 4) = 2;
            *(v87 + 8) = 256;
            v164 = v76;
            v88 = v162;
            v89 = v82;
            v90 = *(v82 + *(v162 + 20));
            LODWORD(v161) = v85;
            sub_1001CDD84(v89, _s6LoggerVMa);
            *(v87 + 10) = v90;
            *(v87 + 11) = 2082;
            v91 = *(v86 + *(v88 + 20) + 4);
            sub_1001CDD84(v86, _s6LoggerVMa);
            v92 = ConnectionID.debugDescription.getter(v91);
            v94 = v38;
            v95 = sub_10015BA6C(v92, v93, &v179);

            *(v87 + 13) = v95;
            v38 = v94;
            *(v87 + 21) = 2082;
            v96 = sub_10015BA6C(v165, v80, &v179);

            *(v87 + 23) = v96;
            *(v87 + 31) = 2048;
            *(v87 + 33) = v164;
            _os_log_impl(&_mh_execute_header, v84, v161, "[%.*hhx-%{public}s] Authentication completed with server %{public}s (took %ld s)", v87, 0x29u);
            swift_arrayDestroy();

LABEL_32:

            goto LABEL_39;
          }

          sub_1001CDD84(v82, _s6LoggerVMa);

          v110 = v54;
        }

        else
        {
          v97 = v167;
          sub_1001CDD1C(v167, v13, v79, _s6LoggerVMa);
          sub_1001CDD1C(v97, v55, v98, _s6LoggerVMa);
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          v84 = sub_1004A4A54();
          v99 = sub_1004A6034();
          if (os_log_type_enabled(v84, v99))
          {
            v100 = swift_slowAlloc();
            v101 = swift_slowAlloc();
            v165 = v38;
            v102 = v101;
            *&v179 = v101;
            *v100 = 68158466;
            *(v100 + 4) = 2;
            *(v100 + 8) = 256;
            v164 = v76;
            v103 = v162;
            v104 = *(v55 + *(v162 + 20));
            sub_1001CDD84(v55, _s6LoggerVMa);
            *(v100 + 10) = v104;
            *(v100 + 11) = 2082;
            v105 = *&v13[*(v103 + 20) + 4];
            sub_1001CDD84(v13, _s6LoggerVMa);
            v106 = ConnectionID.debugDescription.getter(v105);
            v108 = sub_10015BA6C(v106, v107, &v179);

            *(v100 + 13) = v108;
            *(v100 + 21) = 2048;
            *(v100 + 23) = v164;
            _os_log_impl(&_mh_execute_header, v84, v99, "[%.*hhx-%{public}s] Authentication completed (took %ld s).", v100, 0x1Fu);
            sub_1000197E0(v102);
            v38 = v165;

            goto LABEL_32;
          }

          sub_1001CDD84(v55, _s6LoggerVMa);

          v110 = v13;
        }

        v109 = sub_1001CDD84(v110, _s6LoggerVMa);
LABEL_39:
        v158(&v236, v109);
        v255 = v238;
        v111 = *(&v237 + 1);
        v256 = v239;
        v112 = v236;
        v113 = v237;
        if (v239 == 1)
        {
          sub_1001CDB04(v236, v237, *(&v237 + 1));
LABEL_41:

          v115 = sub_1001CAFCC(v114);

          v116 = *v38;
          sub_10010E800(v57 + 8, &v179);

          sub_1001CDD84(v38, type metadata accessor for UnauthenticatedStateWithTasks);
          sub_100025F40(&v225, &qword_1005D3FE0, &qword_1004DF4D0);
          v168 = 0u;
          v169 = 0u;
          *&v170 = 0;
          sub_1001CD6D8(&v168);
          v186 = *(v57 + 120);
          v117 = v186;
          v182 = *(v57 + 56);
          v118 = v182;
          v187 = *(v57 + 136);
          v188 = *(v57 + 152);
          v189 = *(v57 + 168);
          v183 = *(v57 + 72);
          v184 = *(v57 + 88);
          v185 = *(v57 + 104);
          v179 = *(v57 + 8);
          v180 = *(v57 + 24);
          v181 = *(v57 + 40);
          v119 = v153;
          *v153 = v115;
          *(v119 + 7) = v118;
          *(v119 + 15) = v117;
          v120 = v180;
          *(v119 + 5) = v181;
          v121 = v179;
          *(v119 + 3) = v120;
          *(v119 + 1) = v121;
          v122 = v183;
          v123 = v184;
          *(v119 + 13) = v185;
          *(v119 + 11) = v123;
          *(v119 + 9) = v122;
          v124 = v188;
          *(v119 + 21) = v189;
          v125 = v187;
          *(v119 + 19) = v124;
          *(v119 + 17) = v125;
          v119[23] = v116;
          v126 = v177;
          *(v119 + 20) = v176;
          *(v119 + 21) = v126;
          *(v119 + 176) = v178;
          v127 = v173;
          *(v119 + 16) = v172;
          *(v119 + 17) = v127;
          v128 = v175;
          *(v119 + 18) = v174;
          *(v119 + 19) = v128;
          v129 = v169;
          *(v119 + 12) = v168;
          *(v119 + 13) = v129;
          v130 = v171;
          *(v119 + 14) = v170;
          *(v119 + 15) = v130;
          return swift_storeEnumTagMultiPayload();
        }

        if (v236 >> 62 == 1)
        {
          if (!v239)
          {
            if ((v255 == 1 || v236 != 771) && v236 != 772)
            {
              goto LABEL_60;
            }

LABEL_59:
            sub_1001CDB04(v112, v113, v111);
            sub_1001CDB14(&v255);
            goto LABEL_41;
          }

          if (v255 == 1)
          {
            if (v236 != 772)
            {
              goto LABEL_60;
            }
          }

          else if (v236 - 773 < 0xFFFFFFFE)
          {
            goto LABEL_60;
          }

          if (*(&v237 + 1) && (__PAIR128__(v239, *(&v255 + 1)) == v237 || (sub_1004A6D34() & 1) != 0))
          {
            goto LABEL_59;
          }
        }

LABEL_60:
        v165 = v38;
        sub_100025F40(&v225, &qword_1005D3FE0, &qword_1004DF4D0);
        v132 = v167;
        v133 = v155;
        sub_1001CDD1C(v167, v155, v134, _s6LoggerVMa);
        v135 = v154;
        sub_1001CDD1C(v132, v154, v136, _s6LoggerVMa);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        sub_1001CDA98(v112, v113, v111);
        sub_1001CDAA8(&v255, &v179);
        v137 = sub_1004A4A54();
        v138 = sub_1004A6014();
        sub_1001CDB04(v112, v113, v111);
        sub_1001CDB14(&v255);
        if (os_log_type_enabled(v137, v138))
        {
          v139 = swift_slowAlloc();
          v167 = swift_slowAlloc();
          *&v179 = v167;
          *v139 = 68158466;
          *(v139 + 4) = 2;
          *(v139 + 8) = 256;
          v140 = v162;
          v141 = *(v162 + 20);
          LODWORD(v164) = v138;
          v142 = v135;
          v143 = *(v135 + v141);
          sub_1001CDD84(v142, _s6LoggerVMa);
          *(v139 + 10) = v143;
          *(v139 + 11) = 2082;
          v144 = *(v133 + *(v140 + 20) + 4);
          sub_1001CDD84(v133, _s6LoggerVMa);
          v145 = ConnectionID.debugDescription.getter(v144);
          v147 = sub_10015BA6C(v145, v146, &v179);

          *(v139 + 13) = v147;
          *(v139 + 21) = 2082;
          sub_1001CDB14(&v255);
          v148 = sub_10021BCB4(v112);
          v150 = v149;
          sub_1001CDB04(v112, v113, v111);
          v151 = sub_10015BA6C(v148, v150, &v179);

          *(v139 + 23) = v151;
          _os_log_impl(&_mh_execute_header, v137, v164, "[%.*hhx-%{public}s] Did authenticate, but connection (%{public}s) does not fulfil TLS requirements.", v139, 0x1Fu);
          swift_arrayDestroy();
        }

        else
        {
          sub_1001CDD84(v135, _s6LoggerVMa);
          sub_1001CDB04(v112, v113, v111);
          sub_1001CDB14(&v255);

          sub_1001CDD84(v133, _s6LoggerVMa);
        }

        sub_1001CDD84(v165, type metadata accessor for UnauthenticatedStateWithTasks);
        return swift_storeEnumTagMultiPayload();
      }

      goto LABEL_67;
    }

    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v13 = v160;
  v54 = v161;
  v55 = v159;
  if (!__OFSUB__(result, v72))
  {
    goto LABEL_24;
  }

LABEL_69:
  __break(1u);
  return result;
}

uint64_t sub_1001C9094(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v34 = a4;
  v7 = type metadata accessor for ClientCommand(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s6LoggerVMa(0);
  __chkstk_darwin(v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v32 - v15;
  sub_1001CDD1C(a2, &v32 - v15, v14, _s6LoggerVMa);
  sub_1001CDD1C(a2, v12, v17, _s6LoggerVMa);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  sub_1001CDBBC(a1, v35);
  v18 = sub_1004A4A54();
  v19 = sub_1004A5FF4();
  sub_1001CD8B0(a1);
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v33 = a3;
    v21 = v20;
    v32 = swift_slowAlloc();
    v35[0] = v32;
    *v21 = 68158466;
    *(v21 + 4) = 2;
    *(v21 + 8) = 256;
    v22 = v12[*(v10 + 20)];
    sub_1001CDD84(v12, _s6LoggerVMa);
    *(v21 + 10) = v22;
    *(v21 + 11) = 2082;
    v23 = *&v16[*(v10 + 20) + 4];
    sub_1001CDD84(v16, _s6LoggerVMa);
    v24 = ConnectionID.debugDescription.getter(v23);
    v26 = sub_10015BA6C(v24, v25, v35);

    *(v21 + 13) = v26;
    *(v21 + 21) = 2082;
    v27 = sub_10020F894();
    v29 = sub_10015BA6C(v27, v28, v35);

    *(v21 + 23) = v29;
    _os_log_impl(&_mh_execute_header, v18, v19, "[%.*hhx-%{public}s] Authentication is sending %{public}s.", v21, 0x1Fu);
    swift_arrayDestroy();

    a3 = v33;
  }

  else
  {
    sub_1001CDD84(v12, _s6LoggerVMa);

    sub_1001CDD84(v16, _s6LoggerVMa);
  }

  sub_1001CDBBC(a1, v35);
  sub_1001C93D8(a1, v9);
  v30 = a3(v9);
  sub_1001CDD84(v9, type metadata accessor for ClientCommand);
  return v30;
}

uint64_t sub_1001C93D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = *(a1 + 64);
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      *a2 = v4;
      type metadata accessor for ClientCommand(0);
    }

    else
    {
      v11 = a1[5];
      v10 = a1[6];
      v12 = a1[7];
      if (v8 == 4)
      {
        *a2 = v4;
        *(a2 + 8) = v3;
        *(a2 + 16) = v5;
        *(a2 + 24) = v6;
        *(a2 + 32) = v7;
        *(a2 + 40) = v11;
        *(a2 + 48) = v10;
        *(a2 + 56) = v12;
      }

      type metadata accessor for ClientCommand(0);
    }
  }

  else if (*(a1 + 64))
  {
    if (v8 != 1)
    {
      v15 = a1[1];
      v16 = v4;
      v17 = v5;
      sub_10000E268(&v16, &v14, &qword_1005D3FC8, &qword_1004DF4B8);
      sub_10000E268(&v15, &v14, &qword_1005D3FD0, &qword_1004DF4C0);
      sub_10000E268(&v17, &v14, &qword_1005D3FD8, &qword_1004DF4C8);
      sub_1001CD8B0(a1);
      *a2 = v4;
      *(a2 + 8) = v3;
      *(a2 + 16) = v5;
      type metadata accessor for ClientCommand(0);
      return swift_storeEnumTagMultiPayload();
    }

    sub_1001CD8B0(a1);
    *a2 = v4;
    *(a2 + 8) = v3;
    *(a2 + 16) = v5;
    *(a2 + 24) = v6;
    *(a2 + 38) = BYTE6(v7);
    *(a2 + 36) = WORD2(v7);
    *(a2 + 32) = v7;
    type metadata accessor for ClientCommand(0);
  }

  else
  {

    sub_1001CD8B0(a1);
    *a2 = v4;
    *(a2 + 8) = v3;
    *(a2 + 16) = v5;
    *(a2 + 24) = v6;
    type metadata accessor for ClientCommand(0);
  }

  return swift_storeEnumTagMultiPayload();
}

void *sub_1001C964C()
{
  v1 = v0;
  v2 = type metadata accessor for ConnectionState(0);
  v3 = __chkstk_darwin(v2);
  v5 = &v15[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001CDD1C(v1, v5, v3, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    memcpy(v15, v5, 0x162uLL);
    v6 = v15[0];
    v7 = Capability.condStore.unsafeMutableAddressor();
    v8 = *v7;
    v9 = v7[1];
    v10 = v7[2];
    v11 = *(v7 + 24);

    LOBYTE(v6) = sub_100012A38(v8, v9, v10, v11, v6);

    if (v6)
    {
      v12 = sub_1001CB9CC(&off_1005A3A38);
      sub_1001ACFCC(v15);
      return v12;
    }

    sub_1001ACFCC(v15);
  }

  else
  {
    sub_1001CDD84(v5, type metadata accessor for ConnectionState);
  }

  return _swiftEmptySetSingleton;
}

void sub_1001C97B4(__int128 *a1, uint64_t a2)
{
  v119 = a2;
  v118 = _s6LoggerVMa(0);
  __chkstk_darwin(v118);
  v4 = &v112 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v112 - v6;
  __chkstk_darwin(v8);
  v10 = &v112 - v9;
  __chkstk_darwin(v11);
  v13 = &v112 - v12;
  v14 = a1[7];
  v15 = a1[9];
  v156 = a1[8];
  v157 = v15;
  v16 = a1[3];
  v17 = a1[5];
  v152 = a1[4];
  v153 = v17;
  v18 = a1[5];
  v19 = a1[7];
  v154 = a1[6];
  v155 = v19;
  v20 = a1[1];
  v148 = *a1;
  v149 = v20;
  v21 = a1[3];
  v23 = *a1;
  v22 = a1[1];
  v150 = a1[2];
  v151 = v21;
  v24 = a1[9];
  v159[8] = v156;
  v159[9] = v24;
  v159[4] = v152;
  v159[5] = v18;
  v159[6] = v154;
  v159[7] = v14;
  v159[0] = v23;
  v159[1] = v22;
  v158 = *(a1 + 80);
  v160 = *(a1 + 80);
  v159[2] = v150;
  v159[3] = v16;
  if (sub_1001ACFC0(v159) == 1)
  {
    v25 = sub_1001AD074(v159);
    v26 = v25;
    v28 = (v25 + 16);
    v27 = *(v25 + 16);
    v30 = *(v25 + 24);
    v29 = *(v25 + 32);
    v31 = *(v25 + 40);
    v32 = *(v25 + 90);
    v33 = v32 >> 5;
    if (v33 > 2)
    {
      if (v33 != 3)
      {
        return;
      }

      v115 = *(v25 + 16);
      v116 = v29;
      v117 = v30;
      v54 = a1[9];
      v145 = a1[8];
      v146 = v54;
      v147 = *(a1 + 80);
      v55 = a1[5];
      v141 = a1[4];
      v142 = v55;
      v56 = a1[7];
      v143 = a1[6];
      v144 = v56;
      v57 = a1[1];
      v137 = *a1;
      v138 = v57;
      v58 = a1[3];
      v139 = a1[2];
      v140 = v58;
      sub_1001ADB30(&v148, &v126);
      sub_1001CD67C(v28, &v126);
      sub_1001AD020(&v137);
      if (v31 == 0xFF)
      {
        v60 = v119;
        sub_1001CDD1C(v119, v7, v59, _s6LoggerVMa);
        sub_1001CDD1C(v60, v4, v61, _s6LoggerVMa);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v134 = v156;
        v135 = v157;
        v136 = v158;
        v130 = v152;
        v131 = v153;
        v132 = v154;
        v133 = v155;
        v126 = v148;
        v127 = v149;
        v128 = v150;
        v129 = v151;
        v62 = sub_1001AD074(&v126);
        sub_1001AD084(v62, &v121);
        v63 = sub_1004A4A54();
        v64 = sub_1004A6014();
        sub_1001AD020(&v148);
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          LODWORD(v117) = v64;
          v66 = v65;
          v119 = swift_slowAlloc();
          v120 = v119;
          *v66 = 68158723;
          *(v66 + 4) = 2;
          *(v66 + 8) = 256;
          v116 = v63;
          v67 = v118;
          v68 = v4[*(v118 + 20)];
          sub_1001CDD84(v4, _s6LoggerVMa);
          *(v66 + 10) = v68;
          *(v66 + 11) = 2082;
          v69 = *&v7[*(v67 + 20) + 4];
          sub_1001CDD84(v7, _s6LoggerVMa);
          v70 = ConnectionID.debugDescription.getter(v69);
          v72 = sub_10015BA6C(v70, v71, &v120);

          *(v66 + 13) = v72;
          *(v66 + 21) = 2160;
          *(v66 + 23) = 0x786F626C69616DLL;
          *(v66 + 31) = 2085;
          v73 = *(v26 + 8);
          *&v121 = *v26;
          DWORD2(v121) = v73;

          v74 = sub_1004A5824();
          v76 = sub_10015BA6C(v74, v75, &v120);

          *(v66 + 33) = v76;
          v77 = v116;
          _os_log_impl(&_mh_execute_header, v116, v117, "[%.*hhx-%{public}s] Unable to select mailbox '%{sensitive,mask.mailbox}s' because attributes were missing.", v66, 0x29u);
          swift_arrayDestroy();
        }

        else
        {
          sub_1001CDD84(v4, _s6LoggerVMa);

          sub_1001CDD84(v7, _s6LoggerVMa);
        }

        v100 = *v26;
        v101 = *(v26 + 8);

        sub_1001AD020(&v148);
        *&v121 = v100;
        *(&v121 + 1) = v101;
        *&v123 = 0;
        v122 = 0uLL;
        sub_1001CD6D8(&v121);
        v102 = v124[6];
        a1[8] = v124[5];
        a1[9] = v102;
        *(a1 + 80) = v125;
        v103 = v124[2];
        a1[4] = v124[1];
        a1[5] = v103;
        v104 = v124[4];
        a1[6] = v124[3];
        a1[7] = v104;
        v105 = v122;
        *a1 = v121;
        a1[1] = v105;
        v53 = v123;
        v52 = v124[0];
      }

      else
      {
        v78 = v119;
        sub_1001CDD1C(v119, v13, v59, _s6LoggerVMa);
        sub_1001CDD1C(v78, v10, v79, _s6LoggerVMa);
        sub_1001CD73C(*(v26 + 16), *(v26 + 24), *(v26 + 32), *(v26 + 40));
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        sub_1001ADB30(&v148, &v126);
        sub_1001CD67C(v28, &v126);
        v80 = sub_1004A4A54();
        v81 = sub_1004A6014();
        sub_1001AD020(&v148);
        sub_1001CD5DC(v28);
        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          v119 = swift_slowAlloc();
          *&v121 = v119;
          *v82 = 68158979;
          *(v82 + 4) = 2;
          *(v82 + 8) = 256;
          v114 = v80;
          v83 = v118;
          v112 = v10[*(v118 + 20)];
          v113 = v81;
          sub_1001CDD84(v10, _s6LoggerVMa);
          *(v82 + 10) = v112;
          *(v82 + 11) = 2082;
          v84 = *&v13[*(v83 + 20) + 4];
          sub_1001CDD84(v13, _s6LoggerVMa);
          v85 = ConnectionID.debugDescription.getter(v84);
          v87 = sub_10015BA6C(v85, v86, &v121);

          *(v82 + 13) = v87;
          *(v82 + 21) = 2160;
          *(v82 + 23) = 0x786F626C69616DLL;
          *(v82 + 31) = 2085;
          v88 = *(v26 + 8);
          *&v126 = *v26;
          DWORD2(v126) = v88;

          v89 = sub_1004A5824();
          v91 = sub_10015BA6C(v89, v90, &v121);

          *(v82 + 33) = v91;
          *(v82 + 41) = 2082;
          v92 = v115;
          sub_1000110B0(v115);
          v93 = v116;

          v94 = ResponseText.debugDescription.getter(v92, v117, v93);
          v96 = v95;
          sub_10001114C(v92);

          v97 = sub_10015BA6C(v94, v96, &v121);

          *(v82 + 43) = v97;
          v98 = v114;
          _os_log_impl(&_mh_execute_header, v114, v113, "[%.*hhx-%{public}s] Unable to select mailbox '%{sensitive,mask.mailbox}s': %{public}s", v82, 0x33u);
          swift_arrayDestroy();
          v99 = v117;

          sub_1001CD5DC(v28);
        }

        else
        {
          sub_1001CDD84(v10, _s6LoggerVMa);

          sub_1001CD5DC(v28);
          sub_1001CDD84(v13, _s6LoggerVMa);
          v93 = v116;
          v99 = v117;
          v92 = v115;
        }

        v106 = *v26;
        v107 = *(v26 + 8);

        sub_1000110B0(v92);

        sub_1001CD5DC(v28);
        sub_1001AD020(&v148);
        *&v126 = v106;
        *(&v126 + 1) = v107;
        *&v127 = v92;
        *(&v127 + 1) = v99;
        *&v128 = v93;
        sub_1001CD6D8(&v126);
        v108 = v135;
        a1[8] = v134;
        a1[9] = v108;
        *(a1 + 80) = v136;
        v109 = v131;
        a1[4] = v130;
        a1[5] = v109;
        v110 = v133;
        a1[6] = v132;
        a1[7] = v110;
        v111 = v127;
        *a1 = v126;
        a1[1] = v111;
        v53 = v128;
        v52 = v129;
      }
    }

    else
    {
      if (v33 < 2)
      {
        return;
      }

      v119 = *(v25 + 48);
      v34 = *(v25 + 64);
      v118 = *(v25 + 56);
      v35 = *(v25 + 72);
      v117 = *(v25 + 80);
      v36 = *(v25 + 88) | (v32 << 16);
      v37 = a1[5];
      v130 = a1[4];
      v131 = v37;
      v136 = *(a1 + 80);
      v38 = a1[9];
      v134 = a1[8];
      v135 = v38;
      v39 = a1[7];
      v132 = a1[6];
      v133 = v39;
      v40 = a1[3];
      v128 = a1[2];
      v129 = v40;
      v41 = a1[1];
      v126 = *a1;
      v127 = v41;
      v43 = *(v25 + 48);
      v42 = *(v25 + 64);
      v44 = *(v25 + 32);
      *(v124 + 11) = *(v25 + 75);
      v122 = v44;
      v123 = v43;
      v124[0] = v42;
      v121 = *v28;
      BYTE10(v124[1]) &= 0x1Fu;
      v45 = v29;
      v46 = v27;
      v47 = v30;
      sub_1000CB914(&v121, &v137);
      sub_1001AD020(&v126);
      *&v137 = v46;
      *(&v137 + 1) = v47;
      *&v138 = v45;
      *(&v138 + 1) = v31;
      *&v139 = v119;
      *(&v139 + 1) = v118;
      *&v140 = v34;
      *(&v140 + 1) = v35;
      *&v141 = v117;
      BYTE10(v141) = BYTE2(v36) & 0x1F;
      WORD4(v141) = v36;
      sub_1001CD750(&v137);
      v48 = v146;
      a1[8] = v145;
      a1[9] = v48;
      *(a1 + 80) = v147;
      v49 = v142;
      a1[4] = v141;
      a1[5] = v49;
      v50 = v144;
      a1[6] = v143;
      a1[7] = v50;
      v51 = v138;
      *a1 = v137;
      a1[1] = v51;
      v53 = v139;
      v52 = v140;
    }

    a1[2] = v53;
    a1[3] = v52;
  }
}

uint64_t _s15IMAP2Connection23MailboxSelectionFailureV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t result, uint64_t *a2)
{
  if ((*(result + 8) | (*(result + 8) << 32)) != (*(a2 + 2) | (*(a2 + 2) << 32)))
  {
    return 0;
  }

  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_11:
    v8 = a2[4];
    if (*(result + 32))
    {
      if (v8)
      {
        v9 = *(result + 16);
        v10 = *(result + 24);
        v11 = a2[2];
        sub_1000110B0(v11);

        v12 = static ResponseText.__derived_struct_equals(_:_:)(v9, v10);
        sub_10001114C(v11);

        if (v12)
        {
          return 1;
        }
      }
    }

    else if (!v8)
    {
      return 1;
    }

    return 0;
  }

  v6 = (v2 + 32);
  v7 = (v3 + 32);
  while (v4)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    ++v6;
    ++v7;
    if (!--v4)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001CA1E0(uint64_t a1, __int128 *a2)
{
  v4 = a2[9];
  v99 = a2[8];
  v100 = v4;
  v101 = *(a2 + 80);
  v5 = a2[5];
  v95 = a2[4];
  v96 = v5;
  v6 = a2[7];
  v97 = a2[6];
  v98 = v6;
  v7 = a2[1];
  v91 = *a2;
  v92 = v7;
  v8 = a2[3];
  v93 = a2[2];
  v94 = v8;
  v9 = *(a1 + 144);
  v73[8] = *(a1 + 128);
  v73[9] = v9;
  v74 = *(a1 + 160);
  v10 = *(a1 + 80);
  v73[4] = *(a1 + 64);
  v73[5] = v10;
  v11 = *(a1 + 112);
  v73[6] = *(a1 + 96);
  v73[7] = v11;
  v12 = *(a1 + 16);
  v73[0] = *a1;
  v73[1] = v12;
  v13 = *(a1 + 48);
  v73[2] = *(a1 + 32);
  v73[3] = v13;
  v14 = sub_1001ACFC0(v73);
  v15 = sub_1001AD074(v73);
  if (!v14)
  {
    v24 = *v15;
    v23 = *(v15 + 8);
    v26 = *(v15 + 16);
    v25 = *(v15 + 24);
    v27 = *(v15 + 32);
    v28 = a2[9];
    v83 = a2[8];
    v84 = v28;
    v85 = *(a2 + 80);
    v29 = a2[5];
    v79 = a2[4];
    v80 = v29;
    v30 = a2[7];
    v81 = a2[6];
    v82 = v30;
    v31 = a2[1];
    v75 = *a2;
    v76 = v31;
    v32 = a2[3];
    v77 = a2[2];
    v78 = v32;
    if (sub_1001ACFC0(&v75))
    {
      goto LABEL_14;
    }

    v33 = sub_1001AD074(&v75);
    v34 = *v33;
    v35 = v33[1];
    v37 = v33[2];
    v36 = v33[3];
    v38 = v33[4];
    if (v24)
    {
      if (v34)
      {
        *&v53 = *v33;
        DWORD2(v53) = v35;
        *&v54 = v37;
        *(&v54 + 1) = v36;
        *&v55 = v38;
        v86 = v24;
        v87 = v23;
        v88 = v26;
        v89 = v25;
        v90 = v27;
        v39 = v38;
        v40 = v36;
        sub_1001ADB30(a2, &v63);
        sub_1001ADB30(a1, &v63);
        v41 = _s15IMAP2Connection23MailboxSelectionFailureV23__derived_struct_equalsySbAC_ACtFZ_0(&v86, &v53);

        sub_10010E7C0(v37, v40, v39);
        sub_1001AD020(a1);
        if (v41)
        {
          v22 = 1;
          return v22 & 1;
        }

LABEL_14:
        v22 = 0;
        return v22 & 1;
      }
    }

    else if (!v34)
    {
      v70 = v99;
      v71 = v100;
      v72 = v101;
      *&v66[16] = v95;
      v67 = v96;
      v68 = v97;
      v69 = v98;
      v63 = v91;
      v64 = v92;
      v65 = v93;
      *v66 = v94;
      v51 = sub_1001AD074(&v63);
      sub_1001ADA78(*v51, v51[1], v51[2], v51[3], v51[4]);
      v22 = 1;
      return v22 & 1;
    }

    v48 = a2;
    v52 = v38;
    v49 = v36;
    sub_1001ADB30(v48, &v63);
    sub_1001ADB30(a1, &v63);
    sub_1001CC830(v24, v23, v26, v25, v27);
    sub_1001CC830(v34, v35, v37, v49, v52);
    goto LABEL_14;
  }

  if (v14 != 1)
  {
    v64 = *(v15 + 16);
    v65 = *(v15 + 32);
    *v66 = *(v15 + 48);
    *&v66[11] = *(v15 + 59);
    v63 = *v15;
    v42 = a2[9];
    v83 = a2[8];
    v84 = v42;
    v85 = *(a2 + 80);
    v43 = a2[5];
    v79 = a2[4];
    v80 = v43;
    v44 = a2[7];
    v81 = a2[6];
    v82 = v44;
    v45 = a2[1];
    v75 = *a2;
    v76 = v45;
    v46 = a2[3];
    v77 = a2[2];
    v78 = v46;
    if (sub_1001ACFC0(&v75) == 2)
    {
      v47 = sub_1001AD074(&v75);
      v54 = v47[1];
      v55 = v47[2];
      *v56 = v47[3];
      *&v56[11] = *(v47 + 59);
      v53 = *v47;
      v22 = _s15IMAP2Connection15SelectedMailboxV23__derived_struct_equalsySbAC_ACtFZ_0(&v63, &v53);
      return v22 & 1;
    }

    goto LABEL_14;
  }

  v82 = *(v15 + 112);
  v83 = *(v15 + 128);
  v84 = *(v15 + 144);
  v85 = *(v15 + 160);
  v78 = *(v15 + 48);
  v79 = *(v15 + 64);
  v80 = *(v15 + 80);
  v81 = *(v15 + 96);
  v75 = *v15;
  v76 = *(v15 + 16);
  v77 = *(v15 + 32);
  v16 = a2[1];
  v53 = *a2;
  v54 = v16;
  v17 = a2[5];
  *&v56[16] = a2[4];
  v57 = v17;
  v18 = a2[3];
  v55 = a2[2];
  *v56 = v18;
  v62 = *(a2 + 80);
  v19 = a2[9];
  v60 = a2[8];
  v61 = v19;
  v20 = a2[7];
  v58 = a2[6];
  v59 = v20;
  if (sub_1001ACFC0(&v53) != 1)
  {
    goto LABEL_14;
  }

  v21 = sub_1001AD074(&v53);
  v69 = *(v21 + 112);
  v70 = *(v21 + 128);
  v71 = *(v21 + 144);
  v72 = *(v21 + 160);
  *v66 = *(v21 + 48);
  *&v66[16] = *(v21 + 64);
  v67 = *(v21 + 80);
  v68 = *(v21 + 96);
  v63 = *v21;
  v64 = *(v21 + 16);
  v65 = *(v21 + 32);
  v22 = sub_1001E9D78(&v75, &v63);
  return v22 & 1;
}

uint64_t _s15IMAP2Connection0B5StateO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnauthenticatedStateWithTasks(0);
  __chkstk_darwin(v4 - 8);
  v50 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004A4E34();
  v51 = *(v6 - 8);
  v52 = v6;
  __chkstk_darwin(v6);
  v49 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ConnectionState(0);
  __chkstk_darwin(v8);
  v10 = (&v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v13 = &v49 - v12;
  __chkstk_darwin(v14);
  v16 = &v49 - v15;
  __chkstk_darwin(v17);
  v19 = &v49 - v18;
  v20 = sub_10000C9C0(&qword_1005D35F0, &unk_1004DF4F0);
  v21 = __chkstk_darwin(v20 - 8);
  v24 = (&v49 + *(v23 + 56) - v22);
  v25 = a1;
  v26 = &v49 - v22;
  sub_1001CDD1C(v25, &v49 - v22, v21, type metadata accessor for ConnectionState);
  sub_1001CDD1C(a2, v24, v27, type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          goto LABEL_25;
        }
      }

      else if (swift_getEnumCaseMultiPayload() == 5)
      {
        goto LABEL_25;
      }

LABEL_29:
      sub_100025F40(v26, &qword_1005D35F0, &unk_1004DF4F0);
LABEL_30:
      v31 = 0;
      return v31 & 1;
    }

    sub_1001CDD1C(v26, v10, v29, type metadata accessor for ConnectionState);
    v33 = *v10;
    v32 = v10[1];
    v34 = v10[2];
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      sub_100191E44(v33, v32, v34);
      goto LABEL_29;
    }

    v35 = *v24;
    v36 = v24[1];
    v37 = v24[2];
    if (v34 > 1)
    {
      if (v34 == 2)
      {
        if (v37 == 2)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (v34 != 3)
        {
          goto LABEL_39;
        }

        if (v37 == 3)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      if (v34)
      {
        if (v34 == 1)
        {
          if (v37 == 1)
          {
            goto LABEL_25;
          }

          goto LABEL_44;
        }

LABEL_39:
        if (v37 >= 4)
        {
          v45 = *v24;
          v46 = v24[1];
          v47 = v24[2];
          v48 = static ResponseText.__derived_struct_equals(_:_:)(v33, v32);
          sub_100191E44(v45, v46, v47);
          sub_100191E44(v33, v32, v34);
          if ((v48 & 1) == 0)
          {
            goto LABEL_45;
          }

          goto LABEL_25;
        }

        sub_100191E44(v35, v36, v37);
        v35 = v33;
        v36 = v32;
        v37 = v34;
        goto LABEL_44;
      }

      if (!v37)
      {
        goto LABEL_25;
      }
    }

LABEL_44:
    sub_100191E44(v35, v36, v37);
    goto LABEL_45;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1001CDD1C(v26, v19, v29, type metadata accessor for ConnectionState);
    if (!swift_getEnumCaseMultiPayload())
    {
      v40 = v51;
      v41 = v49;
      v42 = v24;
      v43 = v52;
      (*(v51 + 32))(v49, v42, v52);
      v31 = sub_1004A4E24();
      v44 = *(v40 + 8);
      v44(v41, v43);
      v44(v19, v43);
      goto LABEL_34;
    }

    (*(v51 + 8))(v19, v52);
    goto LABEL_29;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1001CDD1C(v26, v16, v29, type metadata accessor for ConnectionState);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v30 = v50;
      sub_1001CDC18(v24, v50, type metadata accessor for UnauthenticatedStateWithTasks);
      v31 = _s15IMAP2Connection29UnauthenticatedStateWithTasksV2eeoiySbAC_ACtFZ_0(v16, v30);
      sub_1001CDD84(v30, type metadata accessor for UnauthenticatedStateWithTasks);
      sub_1001CDD84(v16, type metadata accessor for UnauthenticatedStateWithTasks);
LABEL_34:
      sub_1001CDD84(v26, type metadata accessor for ConnectionState);
      return v31 & 1;
    }

    sub_1001CDD84(v16, type metadata accessor for UnauthenticatedStateWithTasks);
    goto LABEL_29;
  }

  sub_1001CDD1C(v26, v13, v29, type metadata accessor for ConnectionState);
  memcpy(v54, v13, sizeof(v54));
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1001ACFCC(v54);
    goto LABEL_29;
  }

  memcpy(v53, v24, sizeof(v53));
  if ((sub_1001B00A0(*v54, *v53) & 1) == 0 || (v59[8] = *&v54[136], v59[9] = *&v54[152], v59[10] = *&v54[168], v59[4] = *&v54[72], v59[5] = *&v54[88], v59[7] = *&v54[120], v59[6] = *&v54[104], v59[0] = *&v54[8], v59[1] = *&v54[24], v59[3] = *&v54[56], v59[2] = *&v54[40], v60[8] = *&v53[136], v60[9] = *&v53[152], v60[10] = *&v53[168], v60[4] = *&v53[72], v60[5] = *&v53[88], v60[7] = *&v53[120], v60[6] = *&v53[104], v60[0] = *&v53[8], v60[1] = *&v53[24], v60[3] = *&v53[56], v60[2] = *&v53[40], (static ServerID.__derived_struct_equals(_:_:)(v59, v60) & 1) == 0) || (sub_1001B02D8(*&v54[184], *&v53[184]) & 1) == 0)
  {
    sub_1001ACFCC(v53);
    sub_1001ACFCC(v54);
LABEL_45:
    sub_1001CDD84(v26, type metadata accessor for ConnectionState);
    goto LABEL_30;
  }

  v55[8] = *&v54[320];
  v55[9] = *&v54[336];
  v56 = *&v54[352];
  v55[4] = *&v54[256];
  v55[5] = *&v54[272];
  v55[6] = *&v54[288];
  v55[7] = *&v54[304];
  v55[0] = *&v54[192];
  v55[1] = *&v54[208];
  v55[2] = *&v54[224];
  v55[3] = *&v54[240];
  v57[8] = *&v53[320];
  v57[9] = *&v53[336];
  v58 = *&v53[352];
  v57[4] = *&v53[256];
  v57[5] = *&v53[272];
  v57[7] = *&v53[304];
  v57[6] = *&v53[288];
  v57[0] = *&v53[192];
  v57[1] = *&v53[208];
  v57[2] = *&v53[224];
  v57[3] = *&v53[240];
  v38 = sub_1001CA1E0(v55, v57);
  sub_1001ACFCC(v53);
  sub_1001ACFCC(v54);
  if ((v38 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_25:
  sub_1001CDD84(v26, type metadata accessor for ConnectionState);
  v31 = 1;
  return v31 & 1;
}

uint64_t type metadata accessor for ConnectionState(uint64_t a1)
{
  result = qword_1005D3F70;
  if (!qword_1005D3F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Int sub_1001CADD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C9C0(&qword_1005D3FC0, &qword_1004DF4B0);
    v3 = sub_1004A66B4();
    v4 = 0;
    v5 = v3 + 56;
    v28 = v1;
    v29 = a1 + 32;
    v27 = v3;
    while (1)
    {
      v30 = v4;
      v6 = (v29 + 32 * v4);
      v8 = *v6;
      v7 = v6[1];
      v9 = v6[2];
      v10 = *(v6 + 24);
      sub_1004A6E94();

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      if (v10 == 1)
      {
        sub_1004A6EC4(0);
      }

      else
      {
        sub_1004A6EC4(1u);
        sub_1004A6EF4(v9 >> 14);
      }

      result = sub_1004A6F14();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        do
        {
          v18 = v17 + 32 * v13;
          result = *v18;
          v19 = *(v18 + 16);
          v20 = *(v18 + 24);
          v21 = *v18 == v8 && *(v18 + 8) == v7;
          if (v21 || (result = sub_1004A6D34(), (result & 1) != 0))
          {
            if (v20)
            {
              if (v10)
              {
                goto LABEL_3;
              }
            }

            else
            {
              if (((v19 ^ v9) & 0xFFFFFFFFFFFFC000) != 0)
              {
                v22 = 1;
              }

              else
              {
                v22 = v10;
              }

              if ((v22 & 1) == 0)
              {
LABEL_3:

                v3 = v27;
                v1 = v28;
                goto LABEL_4;
              }
            }
          }

          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
        }

        while ((v15 & (1 << v13)) != 0);
        v3 = v27;
        v1 = v28;
        v17 = *(v27 + 48);
      }

      *(v5 + 8 * v14) = v15 | v16;
      v23 = v17 + 32 * v13;
      *v23 = v8;
      *(v23 + 8) = v7;
      *(v23 + 16) = v9;
      *(v23 + 24) = v10;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        break;
      }

      *(v3 + 16) = v26;
LABEL_4:
      v4 = v30 + 1;
      if (v30 + 1 == v1)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return _swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_1001CAFCC(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1001CDB68();
  result = sub_1004A5D64();
  v10 = result;
  if (v2)
  {
    v4 = (a1 + 56);
    do
    {
      v5 = *v4;
      v7 = *(v4 - 2);
      v6 = *(v4 - 1);
      v8 = *(v4 - 3);

      sub_100201734(v9, v8, v7, v6, v5);

      v4 += 32;
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_1001CB07C(const __CFString *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = _s6LoggerVMa(0);
  __chkstk_darwin(v8);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v71 - v12;
  v78 = type metadata accessor for ClientCommand(0);
  __chkstk_darwin(v78);
  v79 = (&v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for ConnectionState(0);
  v16 = __chkstk_darwin(v15);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001CDD1C(a3, v18, v16, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    return sub_1001CDD84(v18, type metadata accessor for ConnectionState);
  }

  v75 = a3;
  v76 = a4;
  v72 = a2;
  v73 = v10;
  v71 = v8;
  v74 = v13;
  v77 = a1;
  v19 = *v18;
  v20 = *(v18 + 120);
  v21 = *(v18 + 152);
  v117 = *(v18 + 136);
  v118 = v21;
  v119 = *(v18 + 168);
  v22 = *(v18 + 56);
  v23 = *(v18 + 88);
  v113 = *(v18 + 72);
  v114 = v23;
  v115 = *(v18 + 104);
  v116 = v20;
  v24 = *(v18 + 24);
  v109 = *(v18 + 8);
  v110 = v24;
  v111 = *(v18 + 40);
  v112 = v22;
  v25 = *(v18 + 23);
  v26 = *(v18 + 21);
  v106 = *(v18 + 20);
  v107 = v26;
  v108 = *(v18 + 176);
  v27 = *(v18 + 17);
  v102 = *(v18 + 16);
  v103 = v27;
  v28 = *(v18 + 19);
  v104 = *(v18 + 18);
  v105 = v28;
  v29 = *(v18 + 13);
  v98 = *(v18 + 12);
  v99 = v29;
  v30 = *(v18 + 15);
  v100 = *(v18 + 14);
  v101 = v30;

  v31 = Capability.id.unsafeMutableAddressor();
  v32 = *v31;
  v33 = v31[1];
  v34 = v31[2];
  v35 = *(v31 + 24);

  LOBYTE(v32) = sub_100012A38(v32, v33, v34, v35, v19);
  v36 = v19;

  if ((v32 & 1) != 0 && (v37 = v77, (sub_1001B02D8(v25, v77) & 1) == 0))
  {
    v40 = v75;
    sub_1001CDD84(v75, type metadata accessor for ConnectionState);

    *&v97[120] = v116;
    *&v97[136] = v117;
    *&v97[152] = v118;
    *&v97[168] = v119;
    *&v97[56] = v112;
    *&v97[72] = v113;
    *&v97[88] = v114;
    *&v97[104] = v115;
    *&v97[8] = v109;
    *&v97[24] = v110;
    *&v97[40] = v111;
    *v97 = v19;
    *&v97[184] = v37;
    *&v97[320] = v106;
    *&v97[336] = v107;
    *&v97[352] = v108;
    *&v97[256] = v102;
    *&v97[272] = v103;
    *&v97[304] = v105;
    *&v97[288] = v104;
    *&v97[192] = v98;
    *&v97[208] = v99;
    *&v97[240] = v101;
    *&v97[224] = v100;
    memcpy(v40, v97, 0x162uLL);
    swift_storeEnumTagMultiPayload();

    sub_1001CD824(v97, v80);
    sub_1001E7A04(v37, v120);
    *(v80 + 7) = v120[0];
    *(&v80[2] + 7) = v120[1];
    *(&v80[4] + 7) = v120[2];
    *(&v80[6] + 7) = v120[3];
    *(&v80[8] + 7) = v121;
    v92 = 3;
    *&v93[16] = *&v80[2];
    *&v93[32] = *&v80[4];
    *&v93[48] = *&v80[6];
    *&v93[63] = *(&v80[7] + 7);
    *v93 = *v80;
    v95 = 0;
    v94 = 0;
    v96 = 0;
    v126 = v121;
    v124 = *&v93[39];
    v125 = *&v93[55];
    v122 = *&v93[7];
    v123 = *&v93[23];
    v41 = sub_1001E5658(*&v93[7]);
    v43 = v42;
    v45 = v44;
    sub_1001CD85C(&v92);
    v46 = v79;
    *v79 = v41;
    *(v46 + 8) = v43;
    *(v46 + 16) = v45;
    swift_storeEnumTagMultiPayload();

    v78 = CommandConnection.send(_:)(v46);
    v48 = v47;
    CommandConnection.flush()();
    sub_1001CDD84(v46, type metadata accessor for ClientCommand);
    if (v48)
    {
    }

    else
    {
      v75 = v45;
      v76 = v43;
      v79 = v41;
      v50 = v72;
      v51 = v74;
      sub_1001CDD1C(v72, v74, v49, _s6LoggerVMa);
      v52 = v73;
      sub_1001CDD1C(v50, v73, v53, _s6LoggerVMa);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();

      v54 = sub_1004A4A54();
      v55 = sub_1004A6034();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v72 = v36;
        v57 = v56;
        v80[0] = swift_slowAlloc();
        *v57 = 68158722;
        *(v57 + 4) = 2;
        *(v57 + 8) = 256;
        v58 = v71;
        v59 = *(v52 + *(v71 + 20));
        sub_1001CDD84(v52, _s6LoggerVMa);
        *(v57 + 10) = v59;
        *(v57 + 11) = 2082;
        v60 = *(v51 + *(v58 + 20) + 4);
        sub_1001CDD84(v51, _s6LoggerVMa);
        v61 = ConnectionID.debugDescription.getter(v60);
        v63 = sub_10015BA6C(v61, v62, v80);

        *(v57 + 13) = v63;
        *(v57 + 21) = 2080;
        v64 = sub_1001E7B4C(v77);
        if (v65)
        {
          v66 = v65;
        }

        else
        {
          v64 = 4999502;
          v66 = 0xE300000000000000;
        }

        v67 = sub_10015BA6C(v64, v66, v80);

        *(v57 + 23) = v67;
        *(v57 + 31) = 2082;
        v37 = v77;
        v68 = Tag.debugDescription.getter(v78 & 0xFFFFFFFF000000FFLL);
        v70 = sub_10015BA6C(v68, v69, v80);

        *(v57 + 33) = v70;
        _os_log_impl(&_mh_execute_header, v54, v55, "[%.*hhx-%{public}s] Sending connection traits %s as %{public}s", v57, 0x29u);
        swift_arrayDestroy();

        v36 = v72;
      }

      else
      {
        sub_1001CDD84(v52, _s6LoggerVMa);

        sub_1001CDD84(v51, _s6LoggerVMa);
      }
    }

    *&v80[15] = v116;
    *&v80[17] = v117;
    *&v80[19] = v118;
    *&v80[21] = v119;
    *&v80[7] = v112;
    *&v80[9] = v113;
    *&v80[11] = v114;
    *&v80[13] = v115;
    *&v80[1] = v109;
    *&v80[3] = v110;
    v80[0] = v36;
    *&v80[5] = v111;
    v80[23] = v37;
    v89 = v106;
    v90 = v107;
    v91 = v108;
    v85 = v102;
    v86 = v103;
    v88 = v105;
    v87 = v104;
    v81 = v98;
    v82 = v99;
    v84 = v101;
    v83 = v100;
    v39 = v80;
  }

  else
  {
    *&v97[120] = v116;
    *&v97[136] = v117;
    *&v97[152] = v118;
    *&v97[168] = v119;
    *&v97[56] = v112;
    *&v97[72] = v113;
    *&v97[88] = v114;
    *&v97[104] = v115;
    *&v97[8] = v109;
    *&v97[24] = v110;
    *&v97[40] = v111;
    *v97 = v19;
    *&v97[184] = v25;
    *&v97[320] = v106;
    *&v97[336] = v107;
    *&v97[352] = v108;
    *&v97[256] = v102;
    *&v97[272] = v103;
    *&v97[304] = v105;
    *&v97[288] = v104;
    *&v97[192] = v98;
    *&v97[208] = v99;
    *&v97[240] = v101;
    *&v97[224] = v100;
    v39 = v97;
  }

  return sub_1001ACFCC(v39);
}