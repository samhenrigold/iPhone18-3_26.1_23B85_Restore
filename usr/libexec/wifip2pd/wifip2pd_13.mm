uint64_t IO80211Driver<>.start(configuration:)(uint64_t a1)
{
  __chkstk_darwin();
  v67 = v3;
  v68 = v1;
  v65 = v5;
  v66 = v4;
  v7 = v6;
  v8 = type metadata accessor for Logger();
  v63 = *(v8 - 8);
  v64 = v8;
  __chkstk_darwin();
  v62 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for SHA256Digest();
  v10 = *(v61 - 8);
  __chkstk_darwin();
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for SHA256();
  v13 = *(v60 - 8);
  __chkstk_darwin();
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v70, 0x86CuLL);
  LOBYTE(v70[0]) = *v7;
  BYTE2(v70[0]) = *(v7 + 24);
  v16 = *(v7 + 25);
  *(&v70[5] + 1) = *(v7 + 29);
  v17 = *(v7 + 3);
  *(&v70[2] + 3) = *(v7 + 1);
  *(&v70[3] + 1) = vzip1_s32(v17, v16);
  HIBYTE(v70[0]) = *(v7 + 7);
  SHA256.init()();
  v18 = String.lowercased()();

  sub_1001F93A4(v18._countAndFlagsBits, v18._object, v15);

  SHA256.finalize()();
  SHA256Digest.withUnsafeBytes<A>(_:)();
  (*(v10 + 8))(v12, v61);
  v19 = v71[0];
  v20 = v71[1];
  (*(v13 + 8))(v15, v60);
  v71[0] = v19;
  v71[1] = v20;
  v21 = sub_1000BA0A4();
  DataProtocol.copyBytes(to:)();
  sub_1000124C8(v71[0], v71[1]);
  v22 = *(v7 + 32);
  v60 = v21;
  if (!v22)
  {
    goto LABEL_4;
  }

  if (v22 == 1)
  {
    v22 = 5;
LABEL_4:
    v70[531] = v22;
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v24 = v23 & 1;
    goto LABEL_6;
  }

  v70[531] = 5;

  v24 = 1;
LABEL_6:
  LOBYTE(v70[530]) = v24;
  v25 = NANGenericServiceProtocol.packetData(for:)(3, *(v7 + 40));
  if (v26 >> 60 == 15)
  {
    v27 = 0;
  }

  else
  {
    v27 = v25;
  }

  if (v26 >> 60 == 15)
  {
    v28 = 0xC000000000000000;
  }

  else
  {
    v28 = v26;
  }

  v29 = sub_100033AA8(_swiftEmptyArrayStorage);
  v30 = type metadata accessor for BinaryEncoder();
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_100480A90;
  *(v31 + 32) = v29;
  v71[3] = v30;
  v71[4] = sub_10011AB40(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
  v71[0] = v31;

  NANServiceInfo.encode(to:)(v71, 2, v27, v28);
  if (v2)
  {

    sub_1000124C8(v27, v28);

    sub_100002A00(v71);
  }

  else
  {
    sub_1000124C8(v27, v28);
    sub_100002A00(v71);
    swift_beginAccess();
    v32 = *(v31 + 16);
    v33 = *(v31 + 24);
    sub_10000AB0C(v32, v33);

    sub_10011A030(v32, v33, v69);
    memcpy(&v70[6], v69, 0x802uLL);
  }

  v61 = 0;
  v34 = *(v7 + 96);
  if (v34 == 1)
  {
    BYTE2(v70[518]) = 0;
    v35 = v62;
  }

  else
  {
    v36 = *(v7 + 48);
    v37 = *(v7 + 56);
    v39 = *(v7 + 64);
    v38 = *(v7 + 72);
    v41 = *(v7 + 80);
    v40 = *(v7 + 88);
    BYTE2(v70[518]) = v36 + 1;
    v71[0] = v37;
    v71[1] = v39;
    v58 = v38;
    v59 = v40;
    sub_10011A208(v36, v37, v39, v38, v41, v40, v34);
    sub_10000AB0C(v37, v39);
    DataProtocol.copyBytes(to:)();
    sub_1000124C8(v71[0], v71[1]);
    if (v41 >> 60 == 15)
    {
      sub_10011A270(v36, v37, v39, v58, v41, v59, v34);
    }

    else
    {
      v57 = v36;
      v42 = v58;
      v71[0] = v58;
      v71[1] = v41;
      sub_10000AB0C(v58, v41);
      DataProtocol.copyBytes(to:)();
      sub_10011A270(v57, v37, v39, v42, v41, v59, v34);
      sub_1000124C8(v71[0], v71[1]);
    }

    v43 = *(v7 + 165);
    v44 = v43 != 2 && (v43 & 1) != 0;
    v35 = v62;
    LOBYTE(v70[538]) = v44;
  }

  Logger.init(subsystem:category:)();
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v71[0] = v48;
    *v47 = 136315138;
    *(v47 + 4) = sub_100002320(0xD000000000000015, 0x80000001004B92D0, v71);
    _os_log_impl(&_mh_execute_header, v45, v46, "nan_send: %s  APPLE80211_IOC_NAN_DP_REQ", v47, 0xCu);
    sub_100002A00(v48);
  }

  (*(v63 + 8))(v35, v64);
  memcpy(v71, v70, 0x86CuLL);
  type metadata accessor for apple80211_nan_dp_request(0);
  v50 = v49;
  v51 = *(v66 + 8);
  v52 = *(v65 + 16);
  v53 = v67;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(315, v71, v53, v50, v51, v52, AssociatedConformanceWitness);
}

uint64_t BroadcomDriver<>.update(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 200))(a1, a2, a4);
}

{
  return (*(a4 + 208))(a1, a2, a4);
}

{
  return (*(a4 + 216))(a1, a2, a4);
}

double sub_100100018(int a1, uint64_t a2)
{
  v4 = v2;
  LODWORD(v6) = a1;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v23, 0, 7);
  v21 = 0;
  v22 = 0;
  Logger.init(subsystem:category:)();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v20 = v3;
    v14 = v13;
    v15 = swift_slowAlloc();
    HIDWORD(v19) = v6;
    v6 = v15;
    v24 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_100002320(0xD000000000000027, 0x80000001004B92F0, &v24);
    _os_log_impl(&_mh_execute_header, v11, v12, "nan_send: %s  APPLE80211_IOC_NAN_DP_END", v14, 0xCu);
    sub_100002A00(v6);
    LOBYTE(v6) = BYTE4(v19);
  }

  (*(v8 + 8))(v10, v7);
  LOBYTE(v24) = v6;
  *(&v24 + 1) = v23[0];
  HIDWORD(v24) = *(v23 + 3);
  v25 = a2;
  v26 = BYTE2(a2);
  v27 = BYTE3(a2);
  v28 = BYTE4(a2);
  v29 = BYTE5(a2);
  v30 = v21;
  v31 = v22;
  v16 = *(v4 + 16);
  v17 = *(v4 + 24);

  AppleDevice.setRequest(requestType:data:on:)(0x13EuLL, &v24, &v32, 0, v16, v17);

  return result;
}

uint64_t IO80211Driver<>.terminate(datapathID:initiatorAddress:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a5;
  v29 = a4;
  v27 = a1;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v40, 0, 7);
  v38 = 0;
  v39 = 0;
  Logger.init(subsystem:category:)();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v26 = v5;
    v15 = v14;
    v16 = swift_slowAlloc();
    v25 = a3;
    v17 = v16;
    v30 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_100002320(0xD000000000000027, 0x80000001004B92F0, &v30);
    _os_log_impl(&_mh_execute_header, v12, v13, "nan_send: %s  APPLE80211_IOC_NAN_DP_END", v15, 0xCu);
    sub_100002A00(v17);
    a3 = v25;
  }

  (*(v9 + 8))(v11, v8);
  LOBYTE(v30) = v27;
  *(&v30 + 1) = v40[0];
  HIDWORD(v30) = *(v40 + 3);
  v31 = a2;
  v32 = BYTE2(a2);
  v33 = BYTE3(a2);
  v34 = BYTE4(a2);
  v35 = BYTE5(a2);
  v36 = v38;
  v37 = v39;
  type metadata accessor for apple80211_nan_dp_terminate(0);
  v19 = v18;
  v20 = *(v29 + 8);
  v21 = *(v28 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(318, &v30, a3, v19, v20, v21, AssociatedConformanceWitness);
}

double sub_1001005E4(int a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v17 = a1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100002320(0xD000000000000017, 0x80000001004B9320, &v18);
    _os_log_impl(&_mh_execute_header, v8, v9, "nan_send: %s  APPLE80211_IOC_NAN_CANCEL_SUBSCRIBE", v11, 0xCu);
    sub_100002A00(v12);

    LOBYTE(a1) = v17;
  }

  (*(v5 + 8))(v7, v4);
  LOBYTE(v18) = a1;
  v13 = *(v2 + 16);
  v14 = *(v2 + 24);

  AppleDevice.setRequest(requestType:data:on:)(0x132uLL, &v18, &v18 + 1, 0, v13, v14);

  return result;
}

uint64_t IO80211Driver<>.terminate(subscribeID:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v25 = a3;
  v27 = a1;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v24[0] = a4;
    v15 = v14;
    v16 = swift_slowAlloc();
    v24[1] = v5;
    v17 = v16;
    v26 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_100002320(0xD000000000000017, 0x80000001004B9320, &v26);
    _os_log_impl(&_mh_execute_header, v12, v13, "nan_send: %s  APPLE80211_IOC_NAN_CANCEL_SUBSCRIBE", v15, 0xCu);
    sub_100002A00(v17);

    a4 = v24[0];
  }

  (*(v9 + 8))(v11, v8);
  v28 = v27;
  type metadata accessor for apple80211_nan_cancel_subscribe_data(0);
  v19 = v18;
  v20 = *(v25 + 8);
  v21 = *(a4 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(306, &v28, a2, v19, v20, v21, AssociatedConformanceWitness);
}

double sub_100100AF4(int a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v17 = a1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100002320(0xD000000000000015, 0x80000001004B9340, &v18);
    _os_log_impl(&_mh_execute_header, v8, v9, "nan_send: %s  APPLE80211_IOC_NAN_CANCEL_PUBLISH", v11, 0xCu);
    sub_100002A00(v12);

    LOBYTE(a1) = v17;
  }

  (*(v5 + 8))(v7, v4);
  LOBYTE(v18) = a1;
  v13 = *(v2 + 16);
  v14 = *(v2 + 24);

  AppleDevice.setRequest(requestType:data:on:)(0x12DuLL, &v18, &v18 + 1, 0, v13, v14);

  return result;
}

uint64_t IO80211Driver<>.terminate(publishID:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v25 = a3;
  v27 = a1;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v24[0] = a4;
    v15 = v14;
    v16 = swift_slowAlloc();
    v24[1] = v5;
    v17 = v16;
    v26 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_100002320(0xD000000000000015, 0x80000001004B9340, &v26);
    _os_log_impl(&_mh_execute_header, v12, v13, "nan_send: %s  APPLE80211_IOC_NAN_CANCEL_PUBLISH", v15, 0xCu);
    sub_100002A00(v17);

    a4 = v24[0];
  }

  (*(v9 + 8))(v11, v8);
  v28 = v27;
  type metadata accessor for apple80211_nan_cancel_publish_data(0);
  v19 = v18;
  v20 = *(v25 + 8);
  v21 = *(a4 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(301, &v28, a2, v19, v20, v21, AssociatedConformanceWitness);
}

void sub_100101008(uint64_t a1)
{
  __chkstk_darwin();
  v57 = v2;
  v56 = v1;
  v54 = v3;
  v55 = v4;
  v6 = v5;
  v52 = v7;
  v53 = v8;
  v10 = v9;
  v51 = v11;
  sub_10005DC58(&unk_100595C50, &unk_1004AFD20);
  __chkstk_darwin();
  v48 = &v45 - v12;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v47 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v45 - v16;
  v45 = &unk_1004B4EC0;
  Logger.init(subsystem:category:)();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  v20 = os_log_type_enabled(v18, v19);
  v49 = v14;
  v50 = v13;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = v6;
    v23 = v10;
    v24 = swift_slowAlloc();
    v64 = v24;
    *v21 = 136315138;
    *(v21 + 4) = sub_100002320(0xD000000000000028, 0x80000001004B9360, &v64);
    _os_log_impl(&_mh_execute_header, v18, v19, "nan_send: %s __LINE__ APPLE80211_IOC_NAN_FOLLOW_UP_TRANSMIT", v21, 0xCu);
    sub_100002A00(v24);
    v10 = v23;
    v6 = v22;
    v13 = v50;

    v46 = *(v49 + 8);
  }

  else
  {

    v46 = *(v14 + 8);
  }

  v46(v17, v13);
  memset(v63, 0, sizeof(v63));
  v25 = type metadata accessor for NANIdentityKey(0);
  v26 = *(*(v25 - 8) + 48);
  v27 = v57;
  if (v26(v57, 1, v25) == 1)
  {
LABEL_9:
    v40 = v51;
    sub_10000AB0C(v51, v10);
    sub_10011A030(v40, v10, v60);
    v42 = v52;
    v41 = v53;
    sub_10000AB0C(v52, v53);
    sub_10011A4D0(v42, v41, v59);
    swift_beginAccess();
    memcpy(&v62[2], v63, 0x110uLL);
    LOBYTE(v64) = v54;
    BYTE1(v64) = v55;
    WORD1(v64) = 0;
    WORD2(v64) = v6;
    BYTE6(v64) = BYTE2(v6);
    HIBYTE(v64) = BYTE3(v6);
    v65[0] = BYTE4(v6);
    v65[1] = BYTE5(v6);
    memcpy(&v65[2], v60, 0x802uLL);
    memcpy(v66, v59, sizeof(v66));
    memcpy(v67, v62, sizeof(v67));
    v43 = *(v56 + 16);
    v44 = *(v56 + 24);

    AppleDevice.setRequest(requestType:data:on:)(0x133uLL, &v64, v68, 0, v43, v44);

    return;
  }

  v63[0] = 1;
  v28 = v48;
  sub_100012400(v27, v48, &unk_100595C50, &unk_1004AFD20);
  if (v26(v28, 1, v25) != 1)
  {
    v29 = v58;
    SymmetricKey.withUnsafeBytes<A>(_:)();
    v58 = v29;
    v30 = v64;
    v31 = *v65;
    sub_10003B8D4(v28, type metadata accessor for NANIdentityKey);
    sub_10011A2D8(v30, v31, 0, v61);
    memcpy(&v63[1], v61, 0x102uLL);
    v32 = v47;
    Logger.init(subsystem:category:)();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      LODWORD(v57) = v61[257];
      v35 = v6;
      v36 = v10;
      v37 = v61[0];
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v64 = v39;
      *v38 = 136315650;
      *(v38 + 4) = sub_100002320(0xD000000000000028, 0x80000001004B9360, &v64);
      *(v38 + 12) = 256;
      *(v38 + 14) = v37;
      v10 = v36;
      v6 = v35;
      *(v38 + 15) = 256;
      *(v38 + 17) = v57;
      _os_log_impl(&_mh_execute_header, v33, v34, "send: %s skda_info: nik: length: %hhu cipher_version: %hhu", v38, 0x12u);
      sub_100002A00(v39);
    }

    v46(v32, v50);
    goto LABEL_9;
  }

  sub_100016290(v28, &unk_100595C50, &unk_1004AFD20);
  __break(1u);
}

uint64_t IO80211Driver<>.transmit(followUp:with:for:to:with:nik:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11)
{
  __chkstk_darwin();
  v74 = v11;
  v75 = v12;
  v71 = v13;
  v72 = v14;
  v73 = v15;
  v69 = v16;
  v70 = v17;
  v67 = v18;
  v68 = v19;
  sub_10005DC58(&unk_100595C50, &unk_1004AFD20);
  __chkstk_darwin();
  v21 = v64 - v20;
  v22 = type metadata accessor for Logger();
  v23 = *(v22 - 8);
  __chkstk_darwin();
  v66 = v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v26 = v64 - v25;
  v64[1] = &unk_1004B4EC0;
  Logger.init(subsystem:category:)();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  v29 = os_log_type_enabled(v27, v28);
  v65 = v22;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = v23;
    v32 = v22;
    v33 = swift_slowAlloc();
    v76 = v33;
    *v30 = 136315138;
    *(v30 + 4) = sub_100002320(0xD000000000000028, 0x80000001004B9360, &v76);
    _os_log_impl(&_mh_execute_header, v27, v28, "nan_send: %s __LINE__ APPLE80211_IOC_NAN_FOLLOW_UP_TRANSMIT", v30, 0xCu);
    sub_100002A00(v33);

    v34 = *(v31 + 8);
    v34(v26, v32);
  }

  else
  {

    v34 = *(v23 + 8);
    v34(v26, v22);
  }

  memset(v83, 0, sizeof(v83));
  v35 = type metadata accessor for NANIdentityKey(0);
  v36 = *(*(v35 - 8) + 48);
  v37 = v75;
  if (v36(v75, 1, v35) == 1)
  {
LABEL_10:
    v75 = a11;
    v49 = v73;
    v65 = v73 >> 40;
    v50 = HIDWORD(v73);
    v66 = a10;
    v51 = v73 >> 24;
    v52 = v73 >> 16;
    v53 = v73 >> 8;
    v55 = v67;
    v54 = v68;
    sub_10000AB0C(v67, v68);
    sub_10011A030(v55, v54, v82);
    v57 = v69;
    v56 = v70;
    sub_10000AB0C(v69, v70);
    sub_10011A4D0(v57, v56, v81);
    swift_beginAccess();
    memcpy(&v80[2], v83, 0x110uLL);
    LOBYTE(v76) = v71;
    BYTE1(v76) = v72;
    WORD1(v76) = 0;
    BYTE4(v76) = v49;
    BYTE5(v76) = v53;
    BYTE6(v76) = v52;
    HIBYTE(v76) = v51;
    v77[0] = v50;
    v77[1] = v65;
    memcpy(&v77[2], v82, 0x802uLL);
    memcpy(v78, v81, sizeof(v78));
    memcpy(v79, v80, sizeof(v79));
    type metadata accessor for apple80211_nan_follow_up_transmit_data(0);
    v59 = v58;
    v60 = *(v66 + 1);
    v61 = *(v75 + 16);
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    return sub_100110D80(307, &v76, a9, v59, v60, v61, AssociatedConformanceWitness);
  }

  v83[0] = 1;
  sub_100012400(v37, v21, &unk_100595C50, &unk_1004AFD20);
  if (v36(v21, 1, v35) != 1)
  {
    v38 = v85;
    SymmetricKey.withUnsafeBytes<A>(_:)();
    v85 = v38;
    v39 = v76;
    v40 = *v77;
    sub_10003B8D4(v21, type metadata accessor for NANIdentityKey);
    sub_10011A2D8(v39, v40, 0, v84);
    memcpy(&v83[1], v84, 0x102uLL);
    v41 = v66;
    Logger.init(subsystem:category:)();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = v84[257];
      v45 = v84[0];
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v76 = v47;
      *v46 = 136315650;
      *(v46 + 4) = sub_100002320(0xD000000000000028, 0x80000001004B9360, &v76);
      *(v46 + 12) = 256;
      *(v46 + 14) = v45;
      *(v46 + 15) = 256;
      *(v46 + 17) = v44;
      _os_log_impl(&_mh_execute_header, v42, v43, "send: %s skda_info: nik: length: %hhu cipher_version: %hhu", v46, 0x12u);
      sub_100002A00(v47);

      v48 = v66;
    }

    else
    {

      v48 = v41;
    }

    v34(v48, v65);
    goto LABEL_10;
  }

  result = sub_100016290(v21, &unk_100595C50, &unk_1004AFD20);
  __break(1u);
  return result;
}

uint64_t sub_100101DF0(unsigned __int8 *a1, unint64_t a2, unint64_t a3, unint64_t a4, int a5, unint64_t a6, unint64_t a7, unint64_t a8)
{
  v106 = a8;
  v104 = a5;
  v10 = a4;
  v11 = a3;
  v12 = a2;
  v105 = a1;
  v111 = a2 >> 8;
  v113 = a2 >> 16;
  v115 = (a2 >> 24);
  v117 = HIDWORD(a2);
  v119 = a2 >> 40;
  v13 = a3 >> 8;
  v14 = a3 >> 16;
  v15 = a3 >> 24;
  v108 = HIDWORD(a3);
  v109 = a3 >> 40;
  v110 = a4 >> 8;
  v112 = a4 >> 16;
  v114 = a4 >> 24;
  v116 = HIDWORD(a4);
  v118 = a4 >> 40;
  v16 = type metadata accessor for Logger();
  v102 = *(v16 - 8);
  v103 = v16;
  __chkstk_darwin();
  v99 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v98 = &v97 - v18;
  __chkstk_darwin();
  v100 = &v97 - v19;
  bzero(v120, 0x3E9uLL);
  LOBYTE(v120[1]) = v11;
  BYTE1(v120[1]) = v13;
  BYTE2(v120[1]) = v14;
  BYTE3(v120[1]) = v15;
  BYTE4(v120[1]) = v108;
  BYTE5(v120[1]) = v109;
  BYTE6(v120[1]) = v12;
  HIBYTE(v120[1]) = v111;
  LOBYTE(v120[2]) = v113;
  BYTE1(v120[2]) = v115;
  BYTE2(v120[2]) = v117;
  BYTE3(v120[2]) = v119;
  BYTE4(v120[2]) = v10;
  BYTE5(v120[2]) = v110;
  BYTE6(v120[2]) = v112;
  HIBYTE(v120[2]) = v114;
  LOBYTE(v120[3]) = v116;
  BYTE1(v120[3]) = v118;
  v118 = a7;
  v119 = a6;
  v20 = a7 - a6;
  if (a7 < a6)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v21 = _swiftEmptyArrayStorage;
  if (v20 >= 0x80)
  {
    v30 = v20 >> 7;
    *v121 = _swiftEmptyArrayStorage;
    sub_10002D838(0, v20 >> 7, 0);
    v21 = *v121;
    v31 = v119;
    v32 = v119 >> 7;
    v33 = v106;
    v34 = HIBYTE(v106);
    v35 = HIWORD(v106);
    v36 = v106 >> 40;
    v37 = HIDWORD(v106);
    v38 = v106 >> 24;
    v39 = *(*v121 + 16);
    v40 = v106 >> 16;
    v41 = v106 >> 8;
    while (1)
    {
      v123[0] = v33;
      v123[1] = v41;
      v123[2] = v40;
      v123[3] = v38;
      v123[4] = v37;
      v123[5] = v36;
      v123[6] = v35;
      v123[7] = v34;
      v42 = v123[v32];
      v43 = v21[3];
      *v121 = v21;
      if (v39 >= v43 >> 1)
      {
        v116 = v35;
        v117 = v34;
        v114 = v37;
        v115 = v36;
        v112 = v40;
        v113 = v38;
        sub_10002D838((v43 > 1), v39 + 1, 1);
        v40 = v112;
        v38 = v113;
        v37 = v114;
        v36 = v115;
        v35 = v116;
        v34 = v117;
        v33 = v106;
        v21 = *v121;
      }

      v21[2] = v39 + 1;
      *(v21 + v39 + 32) = v42;
      if (v31 >= 0xFFFFFFFFFFFFFF80)
      {
        break;
      }

      v31 += 128;
      ++v32;
      ++v39;
      if (!--v30)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
    goto LABEL_45;
  }

LABEL_3:
  v22 = sub_10002D874(v21);
  v24 = v23;

  v25 = v107;
  v26 = sub_1002AB53C(v22, v24);
  if (v25)
  {
    v27 = v22;
    v28 = v24;
    return sub_1000124C8(v27, v28);
  }

  v44 = v26;
  sub_1000124C8(v22, v24);
  v120[0] = v44;
  BYTE2(v120[3]) = v104;
  *(&v120[3] + 3) = 3000;
  v45 = *(v105 + 1);
  v116 = *(v105 + 2);
  v117 = v45;
  v46 = v105[32];
  if (v46 == 1)
  {
    v52 = *v105;
    *(&v120[3] + 5) = 1;
    v53 = v105[24];
    sub_10011A69C(v105, v121);
    v54 = sub_100033AA8(_swiftEmptyArrayStorage);
    v55 = type metadata accessor for BinaryEncoder();
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_100480A90;
    *(v56 + 32) = v54;
    *&v121[24] = v55;
    *&v121[32] = sub_10011AB40(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
    *v121 = v56;

    IEEE80211Frame.Management.Authentication.encode(to:)(v121, v52, v117, v116, v53);
    sub_100002A00(v121);
    swift_beginAccess();
    v68 = *(v56 + 16);
    v67 = *(v56 + 24);
    sub_10000AB0C(v68, v67);

    v115 = &unk_1004B4EC0;
    v69 = v98;
    Logger.init(subsystem:category:)();
    sub_10000AB0C(v68, v67);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();
    v117 = v68;
    sub_1000124C8(v68, v67);
    v72 = os_log_type_enabled(v70, v71);
    v116 = v67;
    if (v72)
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *v121 = v74;
      *v73 = 136315138;
      v75 = Data.hexString.getter(v117, v67);
      v77 = v71;
      v78 = sub_100002320(v75, v76, v121);

      *(v73 + 4) = v78;
      _os_log_impl(&_mh_execute_header, v70, v77, "Auth: %s", v73, 0xCu);
      sub_100002A00(v74);
    }

    v79 = *(v102 + 8);
    v79(v69, v103);
    v80 = v99;
    Logger.init(subsystem:category:)();
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v115 = v79;
      v84 = v83;
      *v121 = swift_slowAlloc();
      *v84 = 136315394;
      *(v84 + 4) = sub_100002320(0xD000000000000031, 0x80000001004B9390, v121);
      *(v84 + 12) = 2080;
      v85 = TimeBitmap.description.getter(v119, v118, v106);
      v87 = sub_100002320(v85, v86, v121);

      *(v84 + 14) = v87;
      _os_log_impl(&_mh_execute_header, v81, v82, "nan_send: %s  AUTH APPLE80211_IOC_NAN_OOB_AF_TX (Slots: %s)", v84, 0x16u);
      swift_arrayDestroy();

      sub_10011A6F8(v105);

      v115(v99, v103);
    }

    else
    {
      sub_10011A6F8(v105);

      v79(v80, v103);
    }

    v58 = v116;
LABEL_26:
    v88 = v58 >> 62;
    if ((v58 >> 62) > 1)
    {
      if (v88 == 2)
      {
        v89 = *(v117 + 16);
        v91 = *(v117 + 24);
        if (__OFSUB__(v91, v89))
        {
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
        }

        if (v91 - v89 >= 960)
        {
          v90 = 960;
        }

        else
        {
          v90 = v91 - v89;
        }
      }

      else
      {
        v90 = 0;
        v91 = 0;
        v89 = 0;
      }
    }

    else if (v88)
    {
      v92 = HIDWORD(v117) - v117;
      if (__OFSUB__(HIDWORD(v117), v117))
      {
        goto LABEL_50;
      }

      if (v92 >= 960)
      {
        v92 = 960;
      }

      v90 = v92;
      v89 = v117;
      v91 = v117 >> 32;
    }

    else
    {
      v89 = 0;
      v90 = BYTE6(v58);
      v91 = BYTE6(v58);
    }

    if (v91 >= v89 && v90 >= v89)
    {
      *v121 = Data._Representation.subscript.getter();
      *&v121[8] = v93;
      sub_1000BA0A4();
      v94 = DataProtocol.copyBytes(to:)();
      sub_1000124C8(*v121, *&v121[8]);
      if ((v94 & 0x8000000000000000) == 0)
      {
        if (!(v94 >> 16))
        {
          *(&v120[4] + 7) = v94;
          memcpy(v121, v120, sizeof(v121));
          v95 = *(v101 + 16);
          v96 = *(v101 + 24);

          AppleDevice.setRequest(requestType:data:on:)(0x16EuLL, v121, v122, 0, v95, v96);

          v27 = v117;
          v28 = v58;
          return sub_1000124C8(v27, v28);
        }

        goto LABEL_48;
      }

LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v46 == 2)
  {
    v47 = *(v105 + 3);
    *(&v120[3] + 5) = 0;
    v48 = *v105;
    *(&v120[4] + 1) = v48 == 4;
    v49 = sub_100033AA8(_swiftEmptyArrayStorage);
    v50 = type metadata accessor for BinaryEncoder();
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_100480A90;
    *(v51 + 32) = v49;
    *&v121[24] = v50;
    *&v121[32] = sub_10011AB40(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
    *v121 = v51;

    IEEE80211Frame.Management.ActionFrame.encode(to:)(v121, v48, v117, v116, v47);
    sub_100002A00(v121);
    swift_beginAccess();
    v58 = *(v51 + 24);
    v117 = *(v51 + 16);
    sub_10000AB0C(v117, v58);

    v59 = v100;
    Logger.init(subsystem:category:)();
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v116 = v58;
      *v121 = v63;
      *v62 = 136315394;
      *(v62 + 4) = sub_100002320(0xD000000000000031, 0x80000001004B9390, v121);
      *(v62 + 12) = 2080;
      v64 = TimeBitmap.description.getter(v119, v118, v106);
      v66 = sub_100002320(v64, v65, v121);

      *(v62 + 14) = v66;
      _os_log_impl(&_mh_execute_header, v60, v61, "nan_send: %s  ACTION APPLE80211_IOC_NAN_OOB_AF_TX (Slots: %s)", v62, 0x16u);
      swift_arrayDestroy();
      v58 = v116;

      (*(v102 + 8))(v100, v103);
    }

    else
    {

      (*(v102 + 8))(v59, v103);
    }

    goto LABEL_26;
  }

  sub_10000B02C();
  swift_allocError();
  *v57 = xmmword_1004817E0;
  *(v57 + 16) = 0;
  return swift_willThrow();
}

uint64_t IO80211Driver<>.transmit(outOfBoundFrame:from:to:on:mapID:using:)(unsigned __int8 *a1, unint64_t a2, unint64_t a3, unint64_t a4, int a5, unint64_t a6, unint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v110 = a8;
  v108 = a5;
  v13 = a4;
  v14 = a3;
  v15 = a2;
  v109 = a1;
  v115 = a2 >> 8;
  v117 = a2 >> 16;
  v119 = (a2 >> 24);
  v121 = HIDWORD(a2);
  v123 = a2 >> 40;
  v16 = a3 >> 8;
  v17 = a3 >> 16;
  v18 = a3 >> 24;
  v112 = HIDWORD(a3);
  v113 = a3 >> 40;
  v114 = a4 >> 8;
  v116 = a4 >> 16;
  v118 = a4 >> 24;
  v120 = HIDWORD(a4);
  v122 = a4 >> 40;
  v19 = type metadata accessor for Logger();
  v106 = *(v19 - 8);
  v107 = v19;
  __chkstk_darwin();
  v104 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v103 = &v102 - v21;
  __chkstk_darwin();
  v105 = &v102 - v22;
  bzero(v124, 0x3E9uLL);
  LOBYTE(v124[1]) = v14;
  BYTE1(v124[1]) = v16;
  BYTE2(v124[1]) = v17;
  BYTE3(v124[1]) = v18;
  BYTE4(v124[1]) = v112;
  BYTE5(v124[1]) = v113;
  BYTE6(v124[1]) = v15;
  HIBYTE(v124[1]) = v115;
  LOBYTE(v124[2]) = v117;
  BYTE1(v124[2]) = v119;
  BYTE2(v124[2]) = v121;
  BYTE3(v124[2]) = v123;
  BYTE4(v124[2]) = v13;
  BYTE5(v124[2]) = v114;
  BYTE6(v124[2]) = v116;
  HIBYTE(v124[2]) = v118;
  LOBYTE(v124[3]) = v120;
  BYTE1(v124[3]) = v122;
  v122 = a7;
  v123 = a6;
  v23 = a7 - a6;
  if (a7 < a6)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v24 = _swiftEmptyArrayStorage;
  if (v23 >= 0x80)
  {
    v31 = v23 >> 7;
    v125[0] = _swiftEmptyArrayStorage;
    sub_10002D838(0, v23 >> 7, 0);
    v24 = v125[0];
    v32 = v123;
    v33 = v123 >> 7;
    v34 = v110;
    v35 = HIBYTE(v110);
    v36 = HIWORD(v110);
    v37 = v110 >> 40;
    v38 = HIDWORD(v110);
    v39 = v110 >> 24;
    v40 = *(v125[0] + 16);
    v41 = v110 >> 16;
    v42 = v110 >> 8;
    while (1)
    {
      v126[0] = v34;
      v126[1] = v42;
      v126[2] = v41;
      v126[3] = v39;
      v126[4] = v38;
      v126[5] = v37;
      v126[6] = v36;
      v126[7] = v35;
      v43 = v126[v33];
      v44 = v24[3];
      v125[0] = v24;
      if (v40 >= v44 >> 1)
      {
        v120 = v36;
        v121 = v35;
        v118 = v38;
        v119 = v37;
        v116 = v41;
        v117 = v39;
        sub_10002D838((v44 > 1), v40 + 1, 1);
        v41 = v116;
        v39 = v117;
        v38 = v118;
        v37 = v119;
        v36 = v120;
        v35 = v121;
        v34 = v110;
        v24 = v125[0];
      }

      v24[2] = v40 + 1;
      *(v24 + v40 + 32) = v43;
      if (v32 >= 0xFFFFFFFFFFFFFF80)
      {
        break;
      }

      v32 += 128;
      ++v33;
      ++v40;
      if (!--v31)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
    goto LABEL_45;
  }

LABEL_3:
  v25 = sub_10002D874(v24);
  v27 = v26;

  v28 = v111;
  v29 = sub_1002AB53C(v25, v27);
  result = sub_1000124C8(v25, v27);
  if (!v28)
  {
    v124[0] = v29;
    BYTE2(v124[3]) = v108;
    *(&v124[3] + 3) = 3000;
    v45 = v109;
    v46 = *(v109 + 1);
    v120 = *(v109 + 2);
    v121 = v46;
    v47 = v109[32];
    if (v47 == 1)
    {
      v53 = *v109;
      *(&v124[3] + 5) = 1;
      v54 = v109[24];
      sub_10011A69C(v109, v125);
      v55 = sub_100033AA8(_swiftEmptyArrayStorage);
      v56 = type metadata accessor for BinaryEncoder();
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_100480A90;
      *(v57 + 32) = v55;
      v125[3] = v56;
      v125[4] = sub_10011AB40(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v125[0] = v57;

      IEEE80211Frame.Management.Authentication.encode(to:)(v125, v53, v121, v120, v54);
      sub_100002A00(v125);
      swift_beginAccess();
      v67 = *(v57 + 16);
      v68 = *(v57 + 24);
      sub_10000AB0C(v67, v68);

      v119 = &unk_1004B4EC0;
      v69 = v103;
      Logger.init(subsystem:category:)();
      sub_10000AB0C(v67, v68);
      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.error.getter();
      sub_1000124C8(v67, v68);
      v72 = os_log_type_enabled(v70, v71);
      v120 = v67;
      v121 = v68;
      if (v72)
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        LODWORD(v118) = v71;
        v75 = v74;
        v125[0] = v74;
        *v73 = 136315138;
        v76 = Data.hexString.getter(v67, v68);
        v78 = v69;
        v79 = sub_100002320(v76, v77, v125);

        *(v73 + 4) = v79;
        _os_log_impl(&_mh_execute_header, v70, v118, "Auth: %s", v73, 0xCu);
        sub_100002A00(v75);

        v80 = *(v106 + 8);
        v80(v78, v107);
      }

      else
      {

        v80 = *(v106 + 8);
        v80(v69, v107);
      }

      v81 = v104;
      Logger.init(subsystem:category:)();
      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v125[0] = swift_slowAlloc();
        *v84 = 136315394;
        *(v84 + 4) = sub_100002320(0xD000000000000031, 0x80000001004B9390, v125);
        *(v84 + 12) = 2080;
        v85 = TimeBitmap.description.getter(v123, v122, v110);
        v87 = sub_100002320(v85, v86, v125);

        *(v84 + 14) = v87;
        _os_log_impl(&_mh_execute_header, v82, v83, "nan_send: %s  AUTH APPLE80211_IOC_NAN_OOB_AF_TX (Slots: %s)", v84, 0x16u);
        swift_arrayDestroy();

        sub_10011A6F8(v109);

        v88 = v104;
      }

      else
      {
        sub_10011A6F8(v45);

        v88 = v81;
      }

      v80(v88, v107);
      v59 = v120;
    }

    else
    {
      if (v47 != 2)
      {
        sub_10000B02C();
        swift_allocError();
        *v58 = xmmword_1004817E0;
        *(v58 + 16) = 0;
        return swift_willThrow();
      }

      v48 = *(v109 + 3);
      *(&v124[3] + 5) = 0;
      v49 = *v109;
      *(&v124[4] + 1) = v49 == 4;
      v50 = sub_100033AA8(_swiftEmptyArrayStorage);
      v51 = type metadata accessor for BinaryEncoder();
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_100480A90;
      *(v52 + 32) = v50;
      v125[3] = v51;
      v125[4] = sub_10011AB40(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v125[0] = v52;

      IEEE80211Frame.Management.ActionFrame.encode(to:)(v125, v49, v121, v120, v48);
      sub_100002A00(v125);
      swift_beginAccess();
      v59 = *(v52 + 16);
      v121 = *(v52 + 24);
      sub_10000AB0C(v59, v121);

      v60 = v105;
      Logger.init(subsystem:category:)();
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v125[0] = swift_slowAlloc();
        *v63 = 136315394;
        *(v63 + 4) = sub_100002320(0xD000000000000031, 0x80000001004B9390, v125);
        *(v63 + 12) = 2080;
        v64 = TimeBitmap.description.getter(v123, v122, v110);
        v66 = sub_100002320(v64, v65, v125);

        *(v63 + 14) = v66;
        _os_log_impl(&_mh_execute_header, v61, v62, "nan_send: %s  ACTION APPLE80211_IOC_NAN_OOB_AF_TX (Slots: %s)", v63, 0x16u);
        swift_arrayDestroy();

        (*(v106 + 8))(v105, v107);
      }

      else
      {

        (*(v106 + 8))(v60, v107);
      }
    }

    v89 = v121;
    v90 = v121 >> 62;
    if ((v121 >> 62) > 1)
    {
      if (v90 == 2)
      {
        v91 = *(v59 + 16);
        v93 = *(v59 + 24);
        if (__OFSUB__(v93, v91))
        {
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
        }

        if (v93 - v91 >= 960)
        {
          v92 = 960;
        }

        else
        {
          v92 = v93 - v91;
        }
      }

      else
      {
        v92 = 0;
        v93 = 0;
        v91 = 0;
      }
    }

    else if (v90)
    {
      v94 = HIDWORD(v59) - v59;
      if (__OFSUB__(HIDWORD(v59), v59))
      {
        goto LABEL_50;
      }

      if (v94 >= 960)
      {
        v94 = 960;
      }

      v92 = v94;
      v91 = v59;
      v93 = v59 >> 32;
    }

    else
    {
      v91 = 0;
      v92 = BYTE6(v121);
      v93 = BYTE6(v121);
    }

    if (v93 >= v91 && v92 >= v91)
    {
      v125[0] = Data._Representation.subscript.getter();
      v125[1] = v95;
      sub_1000BA0A4();
      v96 = DataProtocol.copyBytes(to:)();
      sub_1000124C8(v125[0], v125[1]);
      if ((v96 & 0x8000000000000000) == 0)
      {
        if (!(v96 >> 16))
        {
          *(&v124[4] + 7) = v96;
          memcpy(v125, v124, 0x3E9uLL);
          type metadata accessor for apple80211_nan_oob_act_frm_data(0);
          v98 = v97;
          v99 = *(a10 + 8);
          v100 = *(a11 + 16);
          swift_getAssociatedTypeWitness();
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          sub_100110D80(366, v125, a9, v98, v99, v100, AssociatedConformanceWitness);
          return sub_1000124C8(v59, v89);
        }

        goto LABEL_48;
      }

LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  return result;
}

double sub_100103658(uint64_t a1)
{
  __chkstk_darwin();
  v36 = v2;
  v40 = v1;
  v4 = v3;
  v5 = type metadata accessor for Logger();
  v38 = *(v5 - 8);
  v39 = v5;
  __chkstk_darwin();
  v37 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for SHA256Digest();
  v7 = *(v35 - 8);
  __chkstk_darwin();
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SHA256();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v41 + 4, 0x87CuLL);
  LOBYTE(v41[0]) = *v4;
  BYTE1(v41[0]) = *(v4 + 74);
  WORD1(v41[0]) = *(v4 + 1);
  SHA256.init()();
  v14 = String.lowercased()();

  v15 = v36;
  sub_1001F93A4(v14._countAndFlagsBits, v14._object, v13);

  SHA256.finalize()();
  SHA256Digest.withUnsafeBytes<A>(_:)();
  v36 = v15;
  (*(v7 + 8))(v9, v35);
  v16 = v42[0];
  v17 = v42[1];
  (*(v11 + 8))(v13, v10);
  v42[0] = v16;
  v42[1] = v17;
  v35 = sub_1000BA0A4();
  DataProtocol.copyBytes(to:)();
  sub_1000124C8(v42[0], v42[1]);
  v18 = *(v4 + 8);
  v19 = *(v4 + 50);
  WORD2(v18) = *(v4 + 12);
  WORD3(v18) = *(v4 + 2);
  DWORD2(v18) = *(v4 + 4);
  HIDWORD(v18) = *(v4 + 46);
  *(&v41[1] + 2) = v18;
  WORD1(v41[3]) = v19;
  HIDWORD(v41[262]) = 0;
  LOWORD(v41[263]) = 0;
  LODWORD(v41[265]) = 0;
  v41[261] = 0;
  LOBYTE(v41[262]) = 0;
  *(&v41[263] + 4) = 0;
  BYTE4(v41[264]) = 0;
  bzero(&v41[3] + 4, 0x80AuLL);
  v20 = *(v4 + 128);
  if (v20 == 1)
  {
    BYTE4(v41[265]) = 0;
  }

  else
  {
    v21 = *(v4 + 80);
    v22 = *(v4 + 88);
    v23 = *(v4 + 96);
    v24 = *(v4 + 104);
    v25 = *(v4 + 112);
    v26 = *(v4 + 120);
    BYTE4(v41[265]) = v21 + 1;
    v42[0] = v22;
    v42[1] = v23;
    sub_10011A208(v21, v22, v23, v24, v25, v26, v20);
    sub_10000AB0C(v22, v23);
    DataProtocol.copyBytes(to:)();
    sub_1000124C8(v42[0], v42[1]);
    if (v25 >> 60 == 15)
    {
      sub_10011A270(v21, v22, v23, v24, v25, v26, v20);
    }

    else
    {
      v42[0] = v24;
      v42[1] = v25;
      sub_10000AB0C(v24, v25);
      DataProtocol.copyBytes(to:)();
      sub_10011A270(v21, v22, v23, v24, v25, v26, v20);
      sub_1000124C8(v42[0], v42[1]);
    }
  }

  v27 = v37;
  Logger.init(subsystem:category:)();
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v42[0] = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_100002320(0xD000000000000017, 0x80000001004B93D0, v42);
    _os_log_impl(&_mh_execute_header, v28, v29, "nan_send: %s  APPLE80211_IOC_NAN_DP_RESP", v30, 0xCu);
    sub_100002A00(v31);
  }

  (*(v38 + 8))(v27, v39);
  memcpy(v42, v41, sizeof(v42));
  v32 = *(v40 + 16);
  v33 = *(v40 + 24);

  AppleDevice.setRequest(requestType:data:on:)(0x13CuLL, v42, &v43, 0, v32, v33);

  return result;
}

uint64_t IO80211Driver<>.send(datapathResponse:)(uint64_t a1)
{
  __chkstk_darwin();
  v48 = v3;
  v49 = v1;
  v46 = v5;
  v47 = v4;
  v7 = v6;
  v8 = type metadata accessor for Logger();
  v44 = *(v8 - 8);
  v45 = v8;
  __chkstk_darwin();
  v43 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for SHA256Digest();
  v10 = *(v41 - 8);
  __chkstk_darwin();
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for SHA256();
  v13 = *(v40 - 8);
  __chkstk_darwin();
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v50 + 4, 0x87CuLL);
  LOBYTE(v50[0]) = *v7;
  BYTE1(v50[0]) = *(v7 + 74);
  WORD1(v50[0]) = *(v7 + 1);
  SHA256.init()();
  v16 = String.lowercased()();

  sub_1001F93A4(v16._countAndFlagsBits, v16._object, v15);

  SHA256.finalize()();
  SHA256Digest.withUnsafeBytes<A>(_:)();
  v42 = v2;
  (*(v10 + 8))(v12, v41);
  v17 = v51[0];
  v18 = v51[1];
  (*(v13 + 8))(v15, v40);
  v51[0] = v17;
  v51[1] = v18;
  v41 = sub_1000BA0A4();
  DataProtocol.copyBytes(to:)();
  sub_1000124C8(v51[0], v51[1]);
  v19 = *(v7 + 8);
  v20 = *(v7 + 50);
  WORD2(v19) = *(v7 + 12);
  WORD3(v19) = *(v7 + 2);
  DWORD2(v19) = *(v7 + 4);
  HIDWORD(v19) = *(v7 + 46);
  *(&v50[1] + 2) = v19;
  WORD1(v50[3]) = v20;
  HIDWORD(v50[262]) = 0;
  LOWORD(v50[263]) = 0;
  LODWORD(v50[265]) = 0;
  v50[261] = 0;
  LOBYTE(v50[262]) = 0;
  *(&v50[263] + 4) = 0;
  BYTE4(v50[264]) = 0;
  bzero(&v50[3] + 4, 0x80AuLL);
  v21 = *(v7 + 128);
  if (v21 == 1)
  {
    BYTE4(v50[265]) = 0;
  }

  else
  {
    v23 = *(v7 + 80);
    v22 = *(v7 + 88);
    v25 = *(v7 + 96);
    v24 = *(v7 + 104);
    v27 = *(v7 + 112);
    v26 = *(v7 + 120);
    BYTE4(v50[265]) = v23 + 1;
    v51[0] = v22;
    v51[1] = v25;
    sub_10011A208(v23, v22, v25, v24, v27, v26, v21);
    sub_10000AB0C(v22, v25);
    DataProtocol.copyBytes(to:)();
    sub_1000124C8(v51[0], v51[1]);
    if (v27 >> 60 == 15)
    {
      sub_10011A270(v23, v22, v25, v24, v27, v26, v21);
    }

    else
    {
      v51[0] = v24;
      v51[1] = v27;
      sub_10000AB0C(v24, v27);
      DataProtocol.copyBytes(to:)();
      sub_10011A270(v23, v22, v25, v24, v27, v26, v21);
      sub_1000124C8(v51[0], v51[1]);
    }
  }

  v28 = v43;
  Logger.init(subsystem:category:)();
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v51[0] = v32;
    *v31 = 136315138;
    *(v31 + 4) = sub_100002320(0xD000000000000017, 0x80000001004B93D0, v51);
    _os_log_impl(&_mh_execute_header, v29, v30, "nan_send: %s  APPLE80211_IOC_NAN_DP_RESP", v31, 0xCu);
    sub_100002A00(v32);
  }

  (*(v44 + 8))(v28, v45);
  memcpy(v51, v50, sizeof(v51));
  type metadata accessor for apple80211_nan_dp_response(0);
  v34 = v33;
  v35 = *(v47 + 8);
  v36 = *(v46 + 16);
  v37 = v48;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(316, v51, v37, v34, v35, v36, AssociatedConformanceWitness);
}

double sub_100104304(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v17[1] = v2;
    v12 = v11;
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_100002320(0xD00000000000001BLL, 0x80000001004B93F0, &v18);
    _os_log_impl(&_mh_execute_header, v9, v10, "nan_send: %s  APPLE80211_IOC_NAN_DP_CONF", v12, 0xCu);
    sub_100002A00(v13);
  }

  (*(v6 + 8))(v8, v5);
  LOBYTE(v18) = a1;
  BYTE1(v18) = HIBYTE(a1);
  BYTE2(v18) = BYTE1(a1);
  BYTE3(v18) = BYTE2(a1);
  BYTE4(v18) = BYTE3(a1);
  BYTE5(v18) = BYTE4(a1);
  BYTE6(v18) = BYTE5(a1);
  HIBYTE(v18) = BYTE6(a1);
  v14 = *(v3 + 16);
  v15 = *(v3 + 24);

  AppleDevice.setRequest(requestType:data:on:)(0x13FuLL, &v18, &v19, 0, v14, v15);

  return result;
}

uint64_t IO80211Driver<>.send(datapathConfirmation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v26 = a3;
  v27 = a2;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25[0] = a4;
    v15 = v14;
    v16 = swift_slowAlloc();
    v25[1] = v5;
    v17 = v16;
    v28 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_100002320(0xD00000000000001BLL, 0x80000001004B93F0, &v28);
    _os_log_impl(&_mh_execute_header, v12, v13, "nan_send: %s  APPLE80211_IOC_NAN_DP_CONF", v15, 0xCu);
    sub_100002A00(v17);

    a4 = v25[0];
  }

  (*(v9 + 8))(v11, v8);
  LOBYTE(v28) = a1;
  BYTE1(v28) = HIBYTE(a1);
  BYTE2(v28) = BYTE1(a1);
  BYTE3(v28) = BYTE2(a1);
  BYTE4(v28) = BYTE3(a1);
  BYTE5(v28) = BYTE4(a1);
  BYTE6(v28) = BYTE5(a1);
  HIBYTE(v28) = BYTE6(a1);
  type metadata accessor for apple80211_nan_dp_confirm(0);
  v19 = v18;
  v20 = v27;
  v21 = *(v26 + 8);
  v22 = *(a4 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(319, &v28, v20, v19, v21, v22, AssociatedConformanceWitness);
}

double sub_100104878(uint64_t a1, int a2, unint64_t a3)
{
  LODWORD(v29) = a2;
  v4 = a3 >> 8;
  v5 = a3 >> 16;
  v6 = a3 >> 24;
  v7 = HIDWORD(a3);
  v8 = a3 >> 40;
  v9 = type metadata accessor for Logger();
  v26 = *(v9 - 8);
  v27 = v9;
  __chkstk_darwin();
  v31 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(&v32[7], 0, 237);
  v32[0] = a3;
  v32[1] = v4;
  v32[2] = v5;
  v32[3] = v6;
  v32[4] = v7;
  v32[5] = v8;
  v11 = v29 + 1;
  v32[6] = v29 + 1;
  v12 = v30;
  SymmetricKey.withUnsafeBytes<A>(_:)();
  SymmetricKey.bitCount.getter();
  sub_1000BA0A4();
  v13 = DataProtocol.copyBytes(to:count:)();
  sub_1000124C8(*&v33[0], *(&v33[0] + 1));
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
  }

  if (v13 > 0xFF)
  {
    goto LABEL_8;
  }

  LODWORD(v30) = v11;
  v32[7] = v13;
  v14 = v31;
  Logger.init(subsystem:category:)();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = v12;
    v18 = v17;
    *&v33[0] = swift_slowAlloc();
    *v18 = 136315906;
    *(v18 + 4) = sub_100002320(0xD000000000000030, 0x80000001004B9410, v33);
    *(v18 + 12) = 256;
    *(v18 + 14) = v13;
    *(v18 + 15) = 256;
    *(v18 + 17) = v30;
    *(v18 + 18) = 2080;
    v19 = WiFiAddress.description.getter(a3 & 0xFFFFFFFFFFFFLL);
    v21 = sub_100002320(v19, v20, v33);

    *(v18 + 20) = v21;
    _os_log_impl(&_mh_execute_header, v15, v16, "nan_send: %s add APPLE80211_IOC_NAN_PAIRING_KEYS: NM_TK with length: %hhu cipher_version: %hhu for %s", v18, 0x1Cu);
    swift_arrayDestroy();

    (*(v26 + 8))(v31, v27);
  }

  else
  {

    (*(v26 + 8))(v14, v27);
  }

  swift_beginAccess();
  v33[12] = *&v32[192];
  v33[13] = *&v32[208];
  v33[14] = *&v32[224];
  v34 = *&v32[240];
  v33[8] = *&v32[128];
  v33[9] = *&v32[144];
  v33[10] = *&v32[160];
  v33[11] = *&v32[176];
  v33[4] = *&v32[64];
  v33[5] = *&v32[80];
  v33[6] = *&v32[96];
  v33[7] = *&v32[112];
  v33[0] = *v32;
  v33[1] = *&v32[16];
  v33[2] = *&v32[32];
  v33[3] = *&v32[48];
  v22 = *(v28 + 16);
  v23 = *(v28 + 24);

  AppleDevice.setRequest(requestType:data:on:)(0x22FuLL, v33, &v35, 0, v22, v23);

  return result;
}

uint64_t IO80211Driver<>.addPairingKey(managementTransientKey:using:for:)(uint64_t a1, int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a4;
  v34 = a6;
  v35 = a5;
  LODWORD(v37) = a2;
  v7 = a3 >> 8;
  v8 = a3 >> 16;
  v9 = a3 >> 24;
  v10 = HIDWORD(a3);
  v11 = a3 >> 40;
  v12 = type metadata accessor for Logger();
  v32 = *(v12 - 8);
  v33 = v12;
  __chkstk_darwin();
  v39 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(&v40[7], 0, 237);
  v40[0] = a3;
  v40[1] = v7;
  v40[2] = v8;
  v40[3] = v9;
  v40[4] = v10;
  v40[5] = v11;
  v14 = v37 + 1;
  v40[6] = v37 + 1;
  v15 = v38;
  SymmetricKey.withUnsafeBytes<A>(_:)();
  SymmetricKey.bitCount.getter();
  sub_1000BA0A4();
  v16 = DataProtocol.copyBytes(to:count:)();
  sub_1000124C8(*&v41[0], *(&v41[0] + 1));
  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
  }

  if (v16 > 0xFF)
  {
    goto LABEL_8;
  }

  LODWORD(v38) = v14;
  v40[7] = v16;
  v17 = v39;
  Logger.init(subsystem:category:)();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v37 = v15;
    v21 = v20;
    *&v41[0] = swift_slowAlloc();
    *v21 = 136315906;
    *(v21 + 4) = sub_100002320(0xD000000000000030, 0x80000001004B9410, v41);
    *(v21 + 12) = 256;
    *(v21 + 14) = v16;
    *(v21 + 15) = 256;
    *(v21 + 17) = v38;
    *(v21 + 18) = 2080;
    v22 = WiFiAddress.description.getter(a3 & 0xFFFFFFFFFFFFLL);
    v24 = sub_100002320(v22, v23, v41);

    *(v21 + 20) = v24;
    _os_log_impl(&_mh_execute_header, v18, v19, "nan_send: %s add APPLE80211_IOC_NAN_PAIRING_KEYS: NM_TK with length: %hhu cipher_version: %hhu for %s", v21, 0x1Cu);
    swift_arrayDestroy();

    (*(v32 + 8))(v39, v33);
  }

  else
  {

    (*(v32 + 8))(v17, v33);
  }

  swift_beginAccess();
  v41[12] = *&v40[192];
  v41[13] = *&v40[208];
  v41[14] = *&v40[224];
  v42 = *&v40[240];
  v41[8] = *&v40[128];
  v41[9] = *&v40[144];
  v41[10] = *&v40[160];
  v41[11] = *&v40[176];
  v41[4] = *&v40[64];
  v41[5] = *&v40[80];
  v41[6] = *&v40[96];
  v41[7] = *&v40[112];
  v41[0] = *v40;
  v41[1] = *&v40[16];
  v41[2] = *&v40[32];
  v41[3] = *&v40[48];
  type metadata accessor for apple80211_nan_encryption_keys(0);
  v26 = v25;
  v27 = *(v35 + 8);
  v28 = *(v34 + 16);
  v29 = v36;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(559, v41, v29, v26, v27, v28, AssociatedConformanceWitness);
}

double sub_1001051D4(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v24 = *(v6 - 8);
  v25 = v6;
  __chkstk_darwin();
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = 0u;
  memset(v54, 0, 29);
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  Logger.init(subsystem:category:)();
  v23 = v8;
  v9 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v22))
  {
    v10 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v26 = v21;
    *v10 = 136315394;
    *(v10 + 4) = sub_100002320(0xD00000000000001DLL, 0x80000001004B9450, v26);
    *(v10 + 12) = 2080;
    v11 = WiFiAddress.description.getter(a2 & 0xFFFFFFFFFFFFLL);
    v13 = sub_100002320(v11, v12, v26);
    v20 = v9;
    v14 = v13;

    *(v10 + 14) = v14;
    v15 = v20;
    _os_log_impl(&_mh_execute_header, v20, v22, "nan_send: %s  remove APPLE80211_IOC_NAN_PAIRING_KEYS for %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  (*(v24 + 8))(v23, v25);
  v37 = v52;
  v38 = v53;
  *v39 = v54[0];
  *&v39[13] = *(v54 + 13);
  v33 = v48;
  v34 = v49;
  v35 = v50;
  v36 = v51;
  v29 = v44;
  v30 = v45;
  v31 = v46;
  v32 = v47;
  *&v26[7] = v41;
  v27 = v42;
  *v26 = a2;
  v26[2] = BYTE2(a2);
  v26[3] = BYTE3(a2);
  v26[4] = BYTE4(a2);
  v26[5] = BYTE5(a2);
  v26[6] = a1 + 1;
  v28 = v43;
  v16 = *(v3 + 16);
  v17 = *(v3 + 24);

  AppleDevice.setRequest(requestType:data:on:)(0x22FuLL, v26, &v40, 0, v16, v17);

  return result;
}

uint64_t IO80211Driver<>.removePairingKeys(using:for:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v62 = a4;
  v33 = a1;
  v10 = type metadata accessor for Logger();
  v31 = *(v10 - 8);
  v32 = v10;
  __chkstk_darwin();
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = 0u;
  memset(v61, 0, 29);
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  Logger.init(subsystem:category:)();
  v13 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();
  v30 = v13;
  if (os_log_type_enabled(v13, v29))
  {
    v14 = swift_slowAlloc();
    v28 = v6;
    v15 = v14;
    v26 = swift_slowAlloc();
    *v34 = v26;
    *v15 = 136315394;
    *(v15 + 4) = sub_100002320(0xD00000000000001DLL, 0x80000001004B9450, v34);
    *(v15 + 12) = 2080;
    v16 = WiFiAddress.description.getter(a2 & 0xFFFFFFFFFFFFLL);
    v27 = a2;
    v18 = sub_100002320(v16, v17, v34);
    a2 = v27;

    *(v15 + 14) = v18;
    v19 = v30;
    _os_log_impl(&_mh_execute_header, v30, v29, "nan_send: %s  remove APPLE80211_IOC_NAN_PAIRING_KEYS for %s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  (*(v31 + 8))(v12, v32);
  v45 = v59;
  v46 = v60;
  v47[0] = v61[0];
  *(v47 + 13) = *(v61 + 13);
  v41 = v55;
  v42 = v56;
  v43 = v57;
  v44 = v58;
  v37 = v51;
  v38 = v52;
  v39 = v53;
  v40 = v54;
  *&v34[7] = v48;
  v35 = v49;
  *v34 = a2;
  v34[2] = BYTE2(a2);
  v34[3] = BYTE3(a2);
  v34[4] = BYTE4(a2);
  v34[5] = BYTE5(a2);
  v34[6] = v33 + 1;
  v36 = v50;
  type metadata accessor for apple80211_nan_encryption_keys(0);
  v21 = v20;
  v22 = *(v62 + 8);
  v23 = *(a5 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(559, v34, a3, v21, v22, v23, AssociatedConformanceWitness);
}

double sub_100105920(uint64_t a1, int a2, unint64_t a3)
{
  LODWORD(v29) = a2;
  v4 = a3 >> 8;
  v5 = a3 >> 16;
  v6 = a3 >> 24;
  v7 = HIDWORD(a3);
  v8 = a3 >> 40;
  v9 = type metadata accessor for Logger();
  v26 = *(v9 - 8);
  v27 = v9;
  __chkstk_darwin();
  v31 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(&v32[6], 0, 238);
  v32[0] = a3;
  v32[1] = v4;
  v32[2] = v5;
  v32[3] = v6;
  v32[4] = v7;
  v32[5] = v8;
  v11 = v29 + 1;
  v32[40] = v29 + 1;
  v12 = v30;
  SymmetricKey.withUnsafeBytes<A>(_:)();
  SymmetricKey.bitCount.getter();
  sub_1000BA0A4();
  v13 = DataProtocol.copyBytes(to:count:)();
  sub_1000124C8(*&v33[0], *(&v33[0] + 1));
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
  }

  if (v13 > 0xFF)
  {
    goto LABEL_8;
  }

  LODWORD(v30) = v11;
  v32[41] = v13;
  v14 = v31;
  Logger.init(subsystem:category:)();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = v12;
    v18 = v17;
    *&v33[0] = swift_slowAlloc();
    *v18 = 136315906;
    *(v18 + 4) = sub_100002320(0xD00000000000002ALL, 0x80000001004B9470, v33);
    *(v18 + 12) = 256;
    *(v18 + 14) = v13;
    *(v18 + 15) = 256;
    *(v18 + 17) = v30;
    *(v18 + 18) = 2080;
    v19 = WiFiAddress.description.getter(a3 & 0xFFFFFFFFFFFFLL);
    v21 = sub_100002320(v19, v20, v33);

    *(v18 + 20) = v21;
    _os_log_impl(&_mh_execute_header, v15, v16, "nan_send: %s add APPLE80211_IOC_NAN_PAIRING_KEYS: NM_KEK with length: %hhu cipher_version: %hhu for %s", v18, 0x1Cu);
    swift_arrayDestroy();

    (*(v26 + 8))(v31, v27);
  }

  else
  {

    (*(v26 + 8))(v14, v27);
  }

  swift_beginAccess();
  v33[12] = *&v32[192];
  v33[13] = *&v32[208];
  v33[14] = *&v32[224];
  v34 = *&v32[240];
  v33[8] = *&v32[128];
  v33[9] = *&v32[144];
  v33[10] = *&v32[160];
  v33[11] = *&v32[176];
  v33[4] = *&v32[64];
  v33[5] = *&v32[80];
  v33[6] = *&v32[96];
  v33[7] = *&v32[112];
  v33[0] = *v32;
  v33[1] = *&v32[16];
  v33[2] = *&v32[32];
  v33[3] = *&v32[48];
  v22 = *(v28 + 16);
  v23 = *(v28 + 24);

  AppleDevice.setRequest(requestType:data:on:)(0x22FuLL, v33, &v35, 0, v22, v23);

  return result;
}

uint64_t IO80211Driver<>.addPairingKEK(keyEncryptionKey:using:for:)(uint64_t a1, int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a4;
  v34 = a6;
  v35 = a5;
  LODWORD(v37) = a2;
  v7 = a3 >> 8;
  v8 = a3 >> 16;
  v9 = a3 >> 24;
  v10 = HIDWORD(a3);
  v11 = a3 >> 40;
  v12 = type metadata accessor for Logger();
  v32 = *(v12 - 8);
  v33 = v12;
  __chkstk_darwin();
  v39 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(&v40[6], 0, 238);
  v40[0] = a3;
  v40[1] = v7;
  v40[2] = v8;
  v40[3] = v9;
  v40[4] = v10;
  v40[5] = v11;
  v14 = v37 + 1;
  v40[40] = v37 + 1;
  v15 = v38;
  SymmetricKey.withUnsafeBytes<A>(_:)();
  SymmetricKey.bitCount.getter();
  sub_1000BA0A4();
  v16 = DataProtocol.copyBytes(to:count:)();
  sub_1000124C8(*&v41[0], *(&v41[0] + 1));
  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
  }

  if (v16 > 0xFF)
  {
    goto LABEL_8;
  }

  LODWORD(v38) = v14;
  v40[41] = v16;
  v17 = v39;
  Logger.init(subsystem:category:)();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v37 = v15;
    v21 = v20;
    *&v41[0] = swift_slowAlloc();
    *v21 = 136315906;
    *(v21 + 4) = sub_100002320(0xD00000000000002ALL, 0x80000001004B9470, v41);
    *(v21 + 12) = 256;
    *(v21 + 14) = v16;
    *(v21 + 15) = 256;
    *(v21 + 17) = v38;
    *(v21 + 18) = 2080;
    v22 = WiFiAddress.description.getter(a3 & 0xFFFFFFFFFFFFLL);
    v24 = sub_100002320(v22, v23, v41);

    *(v21 + 20) = v24;
    _os_log_impl(&_mh_execute_header, v18, v19, "nan_send: %s add APPLE80211_IOC_NAN_PAIRING_KEYS: NM_KEK with length: %hhu cipher_version: %hhu for %s", v21, 0x1Cu);
    swift_arrayDestroy();

    (*(v32 + 8))(v39, v33);
  }

  else
  {

    (*(v32 + 8))(v17, v33);
  }

  swift_beginAccess();
  v41[12] = *&v40[192];
  v41[13] = *&v40[208];
  v41[14] = *&v40[224];
  v42 = *&v40[240];
  v41[8] = *&v40[128];
  v41[9] = *&v40[144];
  v41[10] = *&v40[160];
  v41[11] = *&v40[176];
  v41[4] = *&v40[64];
  v41[5] = *&v40[80];
  v41[6] = *&v40[96];
  v41[7] = *&v40[112];
  v41[0] = *v40;
  v41[1] = *&v40[16];
  v41[2] = *&v40[32];
  v41[3] = *&v40[48];
  type metadata accessor for apple80211_nan_encryption_keys(0);
  v26 = v25;
  v27 = *(v35 + 8);
  v28 = *(v34 + 16);
  v29 = v36;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(559, v41, v29, v26, v27, v28, AssociatedConformanceWitness);
}

double sub_10010627C(uint64_t a1, int a2, unint64_t a3)
{
  LODWORD(v29) = a2;
  v4 = a3 >> 8;
  v5 = a3 >> 16;
  v6 = a3 >> 24;
  v7 = HIDWORD(a3);
  v8 = a3 >> 40;
  v9 = type metadata accessor for Logger();
  v26 = *(v9 - 8);
  v27 = v9;
  __chkstk_darwin();
  v31 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(&v32[6], 0, 238);
  v32[0] = a3;
  v32[1] = v4;
  v32[2] = v5;
  v32[3] = v6;
  v32[4] = v7;
  v32[5] = v8;
  v11 = v29 + 1;
  v32[74] = v29 + 1;
  v12 = v30;
  SymmetricKey.withUnsafeBytes<A>(_:)();
  SymmetricKey.bitCount.getter();
  sub_1000BA0A4();
  v13 = DataProtocol.copyBytes(to:count:)();
  sub_1000124C8(*&v33[0], *(&v33[0] + 1));
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
  }

  if (v13 > 0xFF)
  {
    goto LABEL_8;
  }

  LODWORD(v30) = v11;
  v32[75] = v13;
  v14 = v31;
  Logger.init(subsystem:category:)();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = v12;
    v18 = v17;
    *&v33[0] = swift_slowAlloc();
    *v18 = 136315906;
    *(v18 + 4) = sub_100002320(0xD00000000000002CLL, 0x80000001004B94A0, v33);
    *(v18 + 12) = 256;
    *(v18 + 14) = v13;
    *(v18 + 15) = 256;
    *(v18 + 17) = v30;
    *(v18 + 18) = 2080;
    v19 = WiFiAddress.description.getter(a3 & 0xFFFFFFFFFFFFLL);
    v21 = sub_100002320(v19, v20, v33);

    *(v18 + 20) = v21;
    _os_log_impl(&_mh_execute_header, v15, v16, "nan_send: %s add APPLE80211_IOC_NAN_PAIRING_KEYS: NM_KCK with length: %hhu cipher_version: %hhu for %s", v18, 0x1Cu);
    swift_arrayDestroy();

    (*(v26 + 8))(v31, v27);
  }

  else
  {

    (*(v26 + 8))(v14, v27);
  }

  swift_beginAccess();
  v33[12] = *&v32[192];
  v33[13] = *&v32[208];
  v33[14] = *&v32[224];
  v34 = *&v32[240];
  v33[8] = *&v32[128];
  v33[9] = *&v32[144];
  v33[10] = *&v32[160];
  v33[11] = *&v32[176];
  v33[4] = *&v32[64];
  v33[5] = *&v32[80];
  v33[6] = *&v32[96];
  v33[7] = *&v32[112];
  v33[0] = *v32;
  v33[1] = *&v32[16];
  v33[2] = *&v32[32];
  v33[3] = *&v32[48];
  v22 = *(v28 + 16);
  v23 = *(v28 + 24);

  AppleDevice.setRequest(requestType:data:on:)(0x22FuLL, v33, &v35, 0, v22, v23);

  return result;
}

uint64_t IO80211Driver<>.addPairingKCK(keyConfirmationKey:using:for:)(uint64_t a1, int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a4;
  v34 = a6;
  v35 = a5;
  LODWORD(v37) = a2;
  v7 = a3 >> 8;
  v8 = a3 >> 16;
  v9 = a3 >> 24;
  v10 = HIDWORD(a3);
  v11 = a3 >> 40;
  v12 = type metadata accessor for Logger();
  v32 = *(v12 - 8);
  v33 = v12;
  __chkstk_darwin();
  v39 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(&v40[6], 0, 238);
  v40[0] = a3;
  v40[1] = v7;
  v40[2] = v8;
  v40[3] = v9;
  v40[4] = v10;
  v40[5] = v11;
  v14 = v37 + 1;
  v40[74] = v37 + 1;
  v15 = v38;
  SymmetricKey.withUnsafeBytes<A>(_:)();
  SymmetricKey.bitCount.getter();
  sub_1000BA0A4();
  v16 = DataProtocol.copyBytes(to:count:)();
  sub_1000124C8(*&v41[0], *(&v41[0] + 1));
  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
  }

  if (v16 > 0xFF)
  {
    goto LABEL_8;
  }

  LODWORD(v38) = v14;
  v40[75] = v16;
  v17 = v39;
  Logger.init(subsystem:category:)();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v37 = v15;
    v21 = v20;
    *&v41[0] = swift_slowAlloc();
    *v21 = 136315906;
    *(v21 + 4) = sub_100002320(0xD00000000000002CLL, 0x80000001004B94A0, v41);
    *(v21 + 12) = 256;
    *(v21 + 14) = v16;
    *(v21 + 15) = 256;
    *(v21 + 17) = v38;
    *(v21 + 18) = 2080;
    v22 = WiFiAddress.description.getter(a3 & 0xFFFFFFFFFFFFLL);
    v24 = sub_100002320(v22, v23, v41);

    *(v21 + 20) = v24;
    _os_log_impl(&_mh_execute_header, v18, v19, "nan_send: %s add APPLE80211_IOC_NAN_PAIRING_KEYS: NM_KCK with length: %hhu cipher_version: %hhu for %s", v21, 0x1Cu);
    swift_arrayDestroy();

    (*(v32 + 8))(v39, v33);
  }

  else
  {

    (*(v32 + 8))(v17, v33);
  }

  swift_beginAccess();
  v41[12] = *&v40[192];
  v41[13] = *&v40[208];
  v41[14] = *&v40[224];
  v42 = *&v40[240];
  v41[8] = *&v40[128];
  v41[9] = *&v40[144];
  v41[10] = *&v40[160];
  v41[11] = *&v40[176];
  v41[4] = *&v40[64];
  v41[5] = *&v40[80];
  v41[6] = *&v40[96];
  v41[7] = *&v40[112];
  v41[0] = *v40;
  v41[1] = *&v40[16];
  v41[2] = *&v40[32];
  v41[3] = *&v40[48];
  type metadata accessor for apple80211_nan_encryption_keys(0);
  v26 = v25;
  v27 = *(v35 + 8);
  v28 = *(v34 + 16);
  v29 = v36;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(559, v41, v29, v26, v27, v28, AssociatedConformanceWitness);
}

double sub_100106BDC(uint64_t a1, int a2, unint64_t a3)
{
  v28 = a2;
  v4 = a3 >> 8;
  v5 = a3 >> 16;
  v6 = a3 >> 24;
  v7 = HIDWORD(a3);
  v8 = a3 >> 40;
  v9 = type metadata accessor for Logger();
  v25 = *(v9 - 8);
  v26 = v9;
  __chkstk_darwin();
  v24 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(&v30[6], 0, 238);
  v30[0] = a3;
  v30[1] = v4;
  v30[2] = v5;
  v30[3] = v6;
  v30[4] = v7;
  v30[5] = v8;
  v30[142] = v28 & 1;
  v11 = v29;
  SymmetricKey.withUnsafeBytes<A>(_:)();
  SymmetricKey.bitCount.getter();
  sub_1000BA0A4();
  v12 = DataProtocol.copyBytes(to:count:)();
  sub_1000124C8(*&v31[0], *(&v31[0] + 1));
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }

  if (v12 > 0xFF)
  {
    goto LABEL_7;
  }

  v29 = v11;
  v30[143] = v12;
  v13 = v24;
  Logger.init(subsystem:category:)();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *&v31[0] = swift_slowAlloc();
    *v16 = 136315394;
    *(v16 + 4) = sub_100002320(0xD000000000000025, 0x80000001004B94D0, v31);
    *(v16 + 12) = 2080;
    v17 = WiFiAddress.description.getter(a3 & 0xFFFFFFFFFFFFLL);
    v19 = sub_100002320(v17, v18, v31);

    *(v16 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v14, v15, "nan_send: %s  add APPLE80211_IOC_NAN_PAIRING_KEYS: IGTK for %s", v16, 0x16u);
    swift_arrayDestroy();
  }

  (*(v25 + 8))(v13, v26);
  v31[12] = *&v30[192];
  v31[13] = *&v30[208];
  v31[14] = *&v30[224];
  v32 = *&v30[240];
  v31[8] = *&v30[128];
  v31[9] = *&v30[144];
  v31[10] = *&v30[160];
  v31[11] = *&v30[176];
  v31[4] = *&v30[64];
  v31[5] = *&v30[80];
  v31[6] = *&v30[96];
  v31[7] = *&v30[112];
  v31[0] = *v30;
  v31[1] = *&v30[16];
  v31[2] = *&v30[32];
  v31[3] = *&v30[48];
  v20 = *(v27 + 16);
  v21 = *(v27 + 24);

  AppleDevice.setRequest(requestType:data:on:)(0x22FuLL, v31, &v33, 0, v20, v21);

  return result;
}

uint64_t IO80211Driver<>.addIGTKKey(iGTK:iGTKCipherSuite:for:)(uint64_t a1, int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a4;
  v33 = a6;
  v34 = a5;
  v36 = a2;
  v7 = a3 >> 8;
  v8 = a3 >> 16;
  v9 = a3 >> 24;
  v10 = HIDWORD(a3);
  v11 = a3 >> 40;
  v12 = type metadata accessor for Logger();
  v31 = *(v12 - 8);
  v32 = v12;
  __chkstk_darwin();
  v30 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(&v38[6], 0, 238);
  v38[0] = a3;
  v38[1] = v7;
  v38[2] = v8;
  v38[3] = v9;
  v38[4] = v10;
  v38[5] = v11;
  v38[142] = v36 & 1;
  v14 = v37;
  SymmetricKey.withUnsafeBytes<A>(_:)();
  SymmetricKey.bitCount.getter();
  sub_1000BA0A4();
  v15 = DataProtocol.copyBytes(to:count:)();
  sub_1000124C8(*&v39[0], *(&v39[0] + 1));
  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }

  if (v15 > 0xFF)
  {
    goto LABEL_7;
  }

  v37 = v14;
  v38[143] = v15;
  v16 = v30;
  Logger.init(subsystem:category:)();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *&v39[0] = swift_slowAlloc();
    *v19 = 136315394;
    *(v19 + 4) = sub_100002320(0xD000000000000025, 0x80000001004B94D0, v39);
    *(v19 + 12) = 2080;
    v20 = WiFiAddress.description.getter(a3 & 0xFFFFFFFFFFFFLL);
    v22 = sub_100002320(v20, v21, v39);

    *(v19 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v17, v18, "nan_send: %s  add APPLE80211_IOC_NAN_PAIRING_KEYS: IGTK for %s", v19, 0x16u);
    swift_arrayDestroy();
  }

  (*(v31 + 8))(v16, v32);
  v39[12] = *&v38[192];
  v39[13] = *&v38[208];
  v39[14] = *&v38[224];
  v40 = *&v38[240];
  v39[8] = *&v38[128];
  v39[9] = *&v38[144];
  v39[10] = *&v38[160];
  v39[11] = *&v38[176];
  v39[4] = *&v38[64];
  v39[5] = *&v38[80];
  v39[6] = *&v38[96];
  v39[7] = *&v38[112];
  v39[0] = *v38;
  v39[1] = *&v38[16];
  v39[2] = *&v38[32];
  v39[3] = *&v38[48];
  type metadata accessor for apple80211_nan_encryption_keys(0);
  v24 = v23;
  v25 = *(v34 + 8);
  v26 = *(v33 + 16);
  v27 = v35;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(559, v39, v27, v24, v25, v26, AssociatedConformanceWitness);
}

double sub_1001074A4(uint64_t a1, int a2, unint64_t a3)
{
  v28 = a2;
  v4 = a3 >> 8;
  v5 = a3 >> 16;
  v6 = a3 >> 24;
  v7 = HIDWORD(a3);
  v8 = a3 >> 40;
  v9 = type metadata accessor for Logger();
  v25 = *(v9 - 8);
  v26 = v9;
  __chkstk_darwin();
  v24 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(&v30[6], 0, 238);
  v30[0] = a3;
  v30[1] = v4;
  v30[2] = v5;
  v30[3] = v6;
  v30[4] = v7;
  v30[5] = v8;
  v30[176] = v28 & 1;
  v11 = v29;
  SymmetricKey.withUnsafeBytes<A>(_:)();
  SymmetricKey.bitCount.getter();
  sub_1000BA0A4();
  v12 = DataProtocol.copyBytes(to:count:)();
  sub_1000124C8(*&v31[0], *(&v31[0] + 1));
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }

  if (v12 > 0xFF)
  {
    goto LABEL_7;
  }

  v29 = v11;
  v30[177] = v12;
  v13 = v24;
  Logger.init(subsystem:category:)();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *&v31[0] = swift_slowAlloc();
    *v16 = 136315394;
    *(v16 + 4) = sub_100002320(0xD000000000000028, 0x80000001004B9500, v31);
    *(v16 + 12) = 2080;
    v17 = WiFiAddress.description.getter(a3 & 0xFFFFFFFFFFFFLL);
    v19 = sub_100002320(v17, v18, v31);

    *(v16 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v14, v15, "nan_send: %s  add APPLE80211_IOC_NAN_PAIRING_KEYS: BIGTK for %s", v16, 0x16u);
    swift_arrayDestroy();
  }

  (*(v25 + 8))(v13, v26);
  v31[12] = *&v30[192];
  v31[13] = *&v30[208];
  v31[14] = *&v30[224];
  v32 = *&v30[240];
  v31[8] = *&v30[128];
  v31[9] = *&v30[144];
  v31[10] = *&v30[160];
  v31[11] = *&v30[176];
  v31[4] = *&v30[64];
  v31[5] = *&v30[80];
  v31[6] = *&v30[96];
  v31[7] = *&v30[112];
  v31[0] = *v30;
  v31[1] = *&v30[16];
  v31[2] = *&v30[32];
  v31[3] = *&v30[48];
  v20 = *(v27 + 16);
  v21 = *(v27 + 24);

  AppleDevice.setRequest(requestType:data:on:)(0x22FuLL, v31, &v33, 0, v20, v21);

  return result;
}

uint64_t IO80211Driver<>.addBIGTKKey(bIGTK:bIGTKCipherSuite:for:)(uint64_t a1, int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a4;
  v33 = a6;
  v34 = a5;
  v36 = a2;
  v7 = a3 >> 8;
  v8 = a3 >> 16;
  v9 = a3 >> 24;
  v10 = HIDWORD(a3);
  v11 = a3 >> 40;
  v12 = type metadata accessor for Logger();
  v31 = *(v12 - 8);
  v32 = v12;
  __chkstk_darwin();
  v30 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(&v38[6], 0, 238);
  v38[0] = a3;
  v38[1] = v7;
  v38[2] = v8;
  v38[3] = v9;
  v38[4] = v10;
  v38[5] = v11;
  v38[176] = v36 & 1;
  v14 = v37;
  SymmetricKey.withUnsafeBytes<A>(_:)();
  SymmetricKey.bitCount.getter();
  sub_1000BA0A4();
  v15 = DataProtocol.copyBytes(to:count:)();
  sub_1000124C8(*&v39[0], *(&v39[0] + 1));
  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }

  if (v15 > 0xFF)
  {
    goto LABEL_7;
  }

  v37 = v14;
  v38[177] = v15;
  v16 = v30;
  Logger.init(subsystem:category:)();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *&v39[0] = swift_slowAlloc();
    *v19 = 136315394;
    *(v19 + 4) = sub_100002320(0xD000000000000028, 0x80000001004B9500, v39);
    *(v19 + 12) = 2080;
    v20 = WiFiAddress.description.getter(a3 & 0xFFFFFFFFFFFFLL);
    v22 = sub_100002320(v20, v21, v39);

    *(v19 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v17, v18, "nan_send: %s  add APPLE80211_IOC_NAN_PAIRING_KEYS: BIGTK for %s", v19, 0x16u);
    swift_arrayDestroy();
  }

  (*(v31 + 8))(v16, v32);
  v39[12] = *&v38[192];
  v39[13] = *&v38[208];
  v39[14] = *&v38[224];
  v40 = *&v38[240];
  v39[8] = *&v38[128];
  v39[9] = *&v38[144];
  v39[10] = *&v38[160];
  v39[11] = *&v38[176];
  v39[4] = *&v38[64];
  v39[5] = *&v38[80];
  v39[6] = *&v38[96];
  v39[7] = *&v38[112];
  v39[0] = *v38;
  v39[1] = *&v38[16];
  v39[2] = *&v38[32];
  v39[3] = *&v38[48];
  type metadata accessor for apple80211_nan_encryption_keys(0);
  v24 = v23;
  v25 = *(v34 + 8);
  v26 = *(v33 + 16);
  v27 = v35;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(559, v39, v27, v24, v25, v26, AssociatedConformanceWitness);
}

double sub_100107D68(uint64_t a1, int a2, unint64_t a3)
{
  v28 = a2;
  v4 = a3 >> 8;
  v5 = a3 >> 16;
  v6 = a3 >> 24;
  v7 = HIDWORD(a3);
  v8 = a3 >> 40;
  v9 = type metadata accessor for Logger();
  v25 = *(v9 - 8);
  v26 = v9;
  __chkstk_darwin();
  v24 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(&v30[6], 0, 238);
  v30[0] = a3;
  v30[1] = v4;
  v30[2] = v5;
  v30[3] = v6;
  v30[4] = v7;
  v30[5] = v8;
  v30[210] = v28 + 1;
  v11 = v29;
  SymmetricKey.withUnsafeBytes<A>(_:)();
  SymmetricKey.bitCount.getter();
  sub_1000BA0A4();
  v12 = DataProtocol.copyBytes(to:count:)();
  sub_1000124C8(*&v31[0], *(&v31[0] + 1));
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }

  if (v12 > 0xFF)
  {
    goto LABEL_7;
  }

  v29 = v11;
  v30[211] = v12;
  v13 = v24;
  Logger.init(subsystem:category:)();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *&v31[0] = swift_slowAlloc();
    *v16 = 136315394;
    *(v16 + 4) = sub_100002320(0xD000000000000022, 0x80000001004B9530, v31);
    *(v16 + 12) = 2080;
    v17 = WiFiAddress.description.getter(a3 & 0xFFFFFFFFFFFFLL);
    v19 = sub_100002320(v17, v18, v31);

    *(v16 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v14, v15, "nan_send: %s  add APPLE80211_IOC_NAN_PAIRING_KEYS: GTK for %s", v16, 0x16u);
    swift_arrayDestroy();
  }

  (*(v25 + 8))(v13, v26);
  v31[12] = *&v30[192];
  v31[13] = *&v30[208];
  v31[14] = *&v30[224];
  v32 = *&v30[240];
  v31[8] = *&v30[128];
  v31[9] = *&v30[144];
  v31[10] = *&v30[160];
  v31[11] = *&v30[176];
  v31[4] = *&v30[64];
  v31[5] = *&v30[80];
  v31[6] = *&v30[96];
  v31[7] = *&v30[112];
  v31[0] = *v30;
  v31[1] = *&v30[16];
  v31[2] = *&v30[32];
  v31[3] = *&v30[48];
  v20 = *(v27 + 16);
  v21 = *(v27 + 24);

  AppleDevice.setRequest(requestType:data:on:)(0x22FuLL, v31, &v33, 0, v20, v21);

  return result;
}

uint64_t IO80211Driver<>.addGTKKey(gtk:gtkCipherSuite:for:)(uint64_t a1, int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a4;
  v33 = a6;
  v34 = a5;
  v36 = a2;
  v7 = a3 >> 8;
  v8 = a3 >> 16;
  v9 = a3 >> 24;
  v10 = HIDWORD(a3);
  v11 = a3 >> 40;
  v12 = type metadata accessor for Logger();
  v31 = *(v12 - 8);
  v32 = v12;
  __chkstk_darwin();
  v30 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(&v38[6], 0, 238);
  v38[0] = a3;
  v38[1] = v7;
  v38[2] = v8;
  v38[3] = v9;
  v38[4] = v10;
  v38[5] = v11;
  v38[210] = v36 + 1;
  v14 = v37;
  SymmetricKey.withUnsafeBytes<A>(_:)();
  SymmetricKey.bitCount.getter();
  sub_1000BA0A4();
  v15 = DataProtocol.copyBytes(to:count:)();
  sub_1000124C8(*&v39[0], *(&v39[0] + 1));
  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }

  if (v15 > 0xFF)
  {
    goto LABEL_7;
  }

  v37 = v14;
  v38[211] = v15;
  v16 = v30;
  Logger.init(subsystem:category:)();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *&v39[0] = swift_slowAlloc();
    *v19 = 136315394;
    *(v19 + 4) = sub_100002320(0xD000000000000022, 0x80000001004B9530, v39);
    *(v19 + 12) = 2080;
    v20 = WiFiAddress.description.getter(a3 & 0xFFFFFFFFFFFFLL);
    v22 = sub_100002320(v20, v21, v39);

    *(v19 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v17, v18, "nan_send: %s  add APPLE80211_IOC_NAN_PAIRING_KEYS: GTK for %s", v19, 0x16u);
    swift_arrayDestroy();
  }

  (*(v31 + 8))(v16, v32);
  v39[12] = *&v38[192];
  v39[13] = *&v38[208];
  v39[14] = *&v38[224];
  v40 = *&v38[240];
  v39[8] = *&v38[128];
  v39[9] = *&v38[144];
  v39[10] = *&v38[160];
  v39[11] = *&v38[176];
  v39[4] = *&v38[64];
  v39[5] = *&v38[80];
  v39[6] = *&v38[96];
  v39[7] = *&v38[112];
  v39[0] = *v38;
  v39[1] = *&v38[16];
  v39[2] = *&v38[32];
  v39[3] = *&v38[48];
  type metadata accessor for apple80211_nan_encryption_keys(0);
  v24 = v23;
  v25 = *(v34 + 8);
  v26 = *(v33 + 16);
  v27 = v35;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(559, v39, v27, v24, v25, v26, AssociatedConformanceWitness);
}

void sub_10010862C(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 8;
  v3 = a1 >> 16;
  v4 = a1 >> 24;
  v5 = HIDWORD(a1);
  v6 = a1 >> 40;
  v7 = type metadata accessor for Logger();
  v36 = *(v7 - 8);
  __chkstk_darwin();
  v33 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v30 - v9;
  v40 = 0;
  v39[0] = v1;
  v39[1] = v2;
  v34 = v3;
  v35 = v4;
  v39[2] = v3;
  v39[3] = v4;
  v39[4] = v5;
  v39[5] = v6;
  v32 = &unk_1004B4EC0;
  Logger.init(subsystem:category:)();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = v7;
    v14 = v13;
    v15 = swift_slowAlloc();
    v42[0] = v15;
    *v14 = 136315138;
    v41[0] = v1;
    v41[1] = v2;
    v41[2] = v34;
    v41[3] = v35;
    v41[4] = v5;
    v41[5] = v6;
    type metadata accessor for ether_addr(0);
    v16 = String.init<A>(describing:)();
    v18 = sub_100002320(v16, v17, v42);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "getMatchingSlotCount %s", v14, 0xCu);
    sub_100002A00(v15);

    v7 = v31;
  }

  v19 = *(v36 + 8);
  v19(v10, v7);
  v20 = *(v37 + 16);
  v21 = *(v37 + 24);

  v22 = v20;
  v23 = v38;
  AppleDevice.getRequest(requestType:data:on:)(0x239uLL, v39, v41, 0, v22, v21);

  if (!v23)
  {
    v24 = v7;
    v25 = v33;
    Logger.init(subsystem:category:)();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v42[0] = v29;
      *v28 = 136315394;
      *(v28 + 4) = sub_100002320(0xD00000000000001BLL, 0x80000001004B9560, v42);
      *(v28 + 12) = 1024;
      swift_beginAccess();
      *(v28 + 14) = v40;
      _os_log_impl(&_mh_execute_header, v26, v27, " %s  valid matching slots count %u", v28, 0x12u);
      sub_100002A00(v29);
    }

    v19(v25, v24);
    swift_beginAccess();
  }
}

uint64_t IO80211Driver<>.getMatchingSlotCount(peer:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a4;
  v36 = a3;
  v34 = a2;
  v4 = a1;
  v5 = a1 >> 8;
  v6 = a1 >> 16;
  v7 = a1 >> 24;
  v8 = HIDWORD(a1);
  v9 = a1 >> 40;
  v40 = type metadata accessor for Logger();
  v10 = *(v40 - 8);
  __chkstk_darwin();
  v39 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = v31 - v12;
  v42 = 0;
  v41[0] = v4;
  v41[1] = v5;
  v32 = v6;
  v33 = v7;
  v41[2] = v6;
  v41[3] = v7;
  v41[4] = v8;
  v41[5] = v9;
  v31[1] = &unk_1004B4EC0;
  Logger.init(subsystem:category:)();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v31[0] = v10;
    v17 = v16;
    v18 = swift_slowAlloc();
    v44[0] = v18;
    *v17 = 136315138;
    v43[0] = v4;
    v43[1] = v5;
    v43[2] = v32;
    v43[3] = v33;
    v43[4] = v8;
    v43[5] = v9;
    type metadata accessor for ether_addr(0);
    v19 = String.init<A>(describing:)();
    v21 = sub_100002320(v19, v20, v44);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "getMatchingSlotCount %s", v17, 0xCu);
    sub_100002A00(v18);

    v22 = v31[0];
  }

  else
  {

    v22 = v10;
  }

  v23 = *(v22 + 8);
  v23(v13, v40);
  v24 = v38;
  result = sub_100114390(v41, v43, v35, v34, v36, v37, v44, 569);
  v26 = v39;
  if (!v24)
  {
    Logger.init(subsystem:category:)();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v44[0] = v30;
      *v29 = 136315394;
      *(v29 + 4) = sub_100002320(0xD00000000000001BLL, 0x80000001004B9560, v44);
      *(v29 + 12) = 1024;
      swift_beginAccess();
      *(v29 + 14) = v42;
      _os_log_impl(&_mh_execute_header, v27, v28, " %s  valid matching slots count %u", v29, 0x12u);
      sub_100002A00(v30);
    }

    v23(v26, v40);
    swift_beginAccess();
    return v42;
  }

  return result;
}

void sub_100108ED0(uint64_t a1)
{
  v8 = 0;
  v4 = a1;
  v5 = BYTE2(a1);
  v6 = BYTE3(a1);
  v7 = BYTE4(a1);
  BYTE1(v7) = BYTE5(a1);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  AppleDevice.getRequest(requestType:data:on:)(0x237uLL, &v4, &v9, 0, v2, v3);
}

uint64_t IO80211Driver<>.getChannelSeqMismatchCount(peer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = 0;
  v9 = a1;
  v10 = BYTE2(a1);
  v11 = BYTE3(a1);
  v12 = BYTE4(a1);
  BYTE1(v12) = BYTE5(a1);
  result = sub_100114390(&v9, &v14, v4, a2, a3, a4, &v8, 567);
  if (!v5)
  {
    return a1 & 0xFFFFFFFFFFFFLL;
  }

  return result;
}

void sub_1001090B0(uint64_t a1)
{
  __chkstk_darwin();
  v3 = v1;
  v5 = v4;
  bzero(__src, 0xA10uLL);
  v6 = *(v5 + 16);
  LOBYTE(v7) = 2;
  if (v6 < 2)
  {
    v7 = *(v5 + 16);
  }

  __src[6] = v7;
  if (!v6)
  {
LABEL_15:
    v24 = swift_slowAlloc();
    *v24 = 0;
    v24[1] = 0;
    v26 = *(v3 + 16);
    v25 = *(v3 + 24);

    AppleDevice.getRequest(requestType:data:on:)(0x185uLL, v24, (v24 + 2), 0, v26, v25);
    if (v2)
    {
    }

    else
    {

      v28 = v24[1];

      if ((v28 & 0x80) != 0)
      {
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&_mh_execute_header, v29, v30, "IO80211Driver update(APPLE80211_IOC_NAN_COMMITTED_AVAILABILITY)", v31, 2u);
        }

        memcpy(__dst, __src, sizeof(__dst));

        AppleDevice.setRequest(requestType:data:on:)(0x141uLL, __dst, __src, 0, v26, v25);
      }
    }

    return;
  }

  v8 = 0;
  v34 = v5 + 32;
  v9 = &__src[12];
  v32 = v6;
  v33 = v3;
  while (1)
  {
    if (v8 >= 2)
    {
      goto LABEL_6;
    }

    v10 = *(v34 + 16 * v8 + 8);
    v11 = *(v10 + 16);
    if (v11 > 0xFF)
    {
      __break(1u);
    }

    v12 = &__src[1284 * v8 + 8];
    v12[1] = v11;
    v12[2] = v8;
    swift_bridgeObjectRetain_n();
    if (v11)
    {
      break;
    }

LABEL_5:
    swift_bridgeObjectRelease_n();
    v6 = v32;
    v3 = v33;
LABEL_6:
    ++v8;
    v9 += 1284;
    if (v8 == v6)
    {
      goto LABEL_15;
    }
  }

  v13 = (v10 + 80);
  v14 = v9;
  while (1)
  {
    v15 = *(v13 - 5);
    v16 = *(v13 - 4);
    v17 = *(v13 - 3);
    v18 = *(v13 - 1);
    v19 = *(v13 - 16);
    v20 = *(v13 - 24);
    __dst[0] = *v13;
    v38 = v20;
    v39 = v15;
    v40 = v16;
    v42 = v19;
    v41 = v17;
    v43 = v18;
    v21 = v20 & 7;
    v44 = __dst[0];
    sub_10005D4F4(v15, v16, v17);

    if (v21 != 1)
    {

      sub_10000B02C();
      swift_allocError();
      *v27 = xmmword_100481860;
      *(v27 + 16) = 0;
      swift_willThrow();
      goto LABEL_19;
    }

    sub_1001139B4(v37);
    if (v2)
    {
      break;
    }

    v22 = v37[3];
    v14[2] = v37[2];
    v14[3] = v22;
    v14[4] = v37[4];
    v23 = v37[1];
    *v14 = v37[0];
    v14[1] = v23;
    v14 += 5;
    sub_10011A74C(&v38);
    v13 += 56;
    if (!--v11)
    {
      goto LABEL_5;
    }
  }

LABEL_19:
  sub_10011A74C(&v38);
}

uint64_t IO80211Driver<>.update(availability:)(uint64_t a1)
{
  __chkstk_darwin();
  v43 = v3;
  v44 = v1;
  v45 = v4;
  v46 = v5;
  v7 = v6;
  v8 = type metadata accessor for Logger();
  v39 = *(v8 - 8);
  v40 = v8;
  __chkstk_darwin();
  v42 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v51, 0xA10uLL);
  v10 = *(v7 + 16);
  LOBYTE(v11) = 2;
  if (v10 < 2)
  {
    v11 = *(v7 + 16);
  }

  v51[6] = v11;
  if (!v10)
  {
LABEL_15:
    v28 = v45;
    result = (*(v46 + 520))(v45);
    if ((result & 0x80) != 0)
    {
      v30 = *(v43 + 8);
      (*(*(v30 + 8) + 8))(v28);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "IO80211Driver update(APPLE80211_IOC_NAN_COMMITTED_AVAILABILITY)", v33, 2u);
        v28 = v45;
      }

      (*(v39 + 8))(v42, v40);
      memcpy(v50, v51, sizeof(v50));
      type metadata accessor for apple80211_nan_committed_availability(0);
      v35 = v34;
      v36 = *(v46 + 16);
      swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      return sub_100110D80(321, v50, v28, v35, v30, v36, AssociatedConformanceWitness);
    }

    return result;
  }

  v12 = 0;
  v47 = &v51[8];
  v48 = v7 + 32;
  v13 = &v51[12];
  v41 = v10;
  while (1)
  {
    if (v12 > 1)
    {
      goto LABEL_6;
    }

    v14 = *(v48 + 16 * v12 + 8);
    v15 = *(v14 + 16);
    if (v15 > 0xFF)
    {
      __break(1u);
    }

    v16 = &v47[1284 * v12];
    v16[1] = v15;
    v16[2] = v12;
    swift_bridgeObjectRetain_n();
    v49 = v14;
    if (v15)
    {
      break;
    }

LABEL_5:
    swift_bridgeObjectRelease_n();
    v10 = v41;
LABEL_6:
    ++v12;
    v13 += 1284;
    if (v12 == v10)
    {
      goto LABEL_15;
    }
  }

  v17 = (v14 + 80);
  v18 = v13;
  while (1)
  {
    v19 = *(v17 - 5);
    v20 = *(v17 - 4);
    v21 = *(v17 - 3);
    v22 = *(v17 - 1);
    v23 = *(v17 - 16);
    v24 = *(v17 - 24);
    v50[0] = *v17;
    v53 = v24;
    v54 = v19;
    v55 = v20;
    v57 = v23;
    v56 = v21;
    v58 = v22;
    v25 = v24 & 7;
    v59 = v50[0];
    sub_10005D4F4(v19, v20, v21);

    if (v25 != 1)
    {

      sub_10000B02C();
      swift_allocError();
      *v38 = xmmword_100481860;
      *(v38 + 16) = 0;
      swift_willThrow();
      goto LABEL_21;
    }

    sub_1001139B4(v52);
    if (v2)
    {
      break;
    }

    v26 = v52[3];
    v18[2] = v52[2];
    v18[3] = v26;
    v18[4] = v52[4];
    v27 = v52[1];
    *v18 = v52[0];
    v18[1] = v27;
    v18 += 5;
    sub_10011A74C(&v53);
    v17 += 56;
    if (!--v15)
    {
      goto LABEL_5;
    }
  }

LABEL_21:
  sub_10011A74C(&v53);
}

void sub_1001098F8(uint64_t a1)
{
  __chkstk_darwin();
  v3 = v1;
  v5 = v4;
  bzero(v34, 0xA16uLL);
  v6 = *(v5 + 16);
  LOBYTE(v7) = 2;
  if (v6 < 2)
  {
    v7 = *(v5 + 16);
  }

  LOBYTE(v34[0]) = v7;
  if (v6)
  {
    v8 = 0;
    v32 = v5 + 32;
    v30 = v6;
    v31 = v3;
    do
    {
      if (v8 < 2)
      {
        v9 = v32 + 16 * v8;
        v10 = *(v9 + 8);
        v11 = *(v9 + 2);
        bzero(__src, 0x50AuLL);
        v12 = sub_1000E5540(0, 4uLL, v11);
        if (v2)
        {

          swift_unexpectedError();
          __break(1u);
          return;
        }

        __src[0] = v12 & 0xF;
        v13 = *(v10 + 16);
        if (v13)
        {
          swift_bridgeObjectRetain_n();
          v14 = 0;
          v15 = 0;
          v16 = 32;
          do
          {
            if (v15 >= *(v10 + 16))
            {
              __break(1u);
            }

            v17 = *(v10 + v16);
            v18 = *(v10 + v16 + 16);
            v19 = *(v10 + v16 + 32);
            v39 = *(v10 + v16 + 48);
            v38[1] = v18;
            v38[2] = v19;
            v38[0] = v17;
            if (v14 <= 0xF)
            {
              sub_10011A7A0(v38, __dst);
              sub_1001139B4(v35);
              sub_10011A74C(v38);
              v20 = &__src[80 * v14 + 10];
              v21 = v35[3];
              v20[2] = v35[2];
              v20[3] = v21;
              v20[4] = v35[4];
              v22 = v35[1];
              *v20 = v35[0];
              v20[1] = v22;
              ++v14;
            }

            ++v15;
            v16 += 56;
          }

          while (v13 != v15);
          __src[8] = v14;
          swift_bridgeObjectRelease_n();
          v6 = v30;
          v3 = v31;
        }

        memcpy(&v34[645 * v8 + 1], __src, 0x50AuLL);
      }

      ++v8;
    }

    while (v8 != v6);
  }

  v23 = swift_slowAlloc();
  *v23 = 0;
  v23[1] = 0;
  v25 = *(v3 + 16);
  v24 = *(v3 + 24);

  AppleDevice.getRequest(requestType:data:on:)(0x185uLL, v23, (v23 + 2), 0, v25, v24);
  if (v2)
  {
  }

  else
  {

    v26 = v23[1];

    if ((v26 & 0x80) != 0)
    {
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "IO80211Driver update(potentialAvailability)", v29, 2u);
      }

      memcpy(__dst, v34, sizeof(__dst));

      AppleDevice.setRequest(requestType:data:on:)(0x142uLL, __dst, &v37, 0, v25, v24);
    }
  }
}

uint64_t IO80211Driver<>.update(potentialAvailability:)(uint64_t a1)
{
  __chkstk_darwin();
  v42 = v3;
  v43 = v1;
  v46 = v4;
  v41 = v5;
  v7 = v6;
  v8 = type metadata accessor for Logger();
  v38 = *(v8 - 8);
  v39 = v8;
  __chkstk_darwin();
  v40 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v51, 0xA16uLL);
  v10 = *(v7 + 16);
  LOBYTE(v11) = 2;
  if (v10 < 2)
  {
    v11 = *(v7 + 16);
  }

  v51[0] = v11;
  if (!v10)
  {
LABEL_16:
    v28 = v42;
    result = (*(v46 + 520))(v42);
    if ((result & 0x80) != 0)
    {
      v30 = *(v41 + 8);
      (*(*(v30 + 8) + 8))(v28);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "IO80211Driver update(potentialAvailability)", v33, 2u);
      }

      (*(v38 + 8))(v40, v39);
      memcpy(v49, v51, 0xA16uLL);
      type metadata accessor for apple80211_nan_potential_availability(0);
      v35 = v34;
      v36 = *(v46 + 16);
      swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      return sub_100110D80(322, v49, v28, v35, v30, v36, AssociatedConformanceWitness);
    }

    return result;
  }

  v12 = 0;
  v13 = v7 + 32;
  v55 = &v50[10];
  v48 = &v51[2];
  v44 = v7 + 32;
  v45 = v10;
  while (1)
  {
    if (v12 > 1)
    {
      goto LABEL_7;
    }

    v14 = v13 + 16 * v12;
    v15 = *(v14 + 8);
    v16 = *(v14 + 2);
    bzero(v50, 0x50AuLL);
    v17 = sub_1000E5540(0, 4uLL, v16);
    if (v2)
    {
      goto LABEL_22;
    }

    v50[0] = v17 & 0xF;
    v18 = *(v15 + 16);
    if (v18)
    {
      break;
    }

LABEL_6:
    memcpy(&v48[1290 * v12], v50, 0x50AuLL);
LABEL_7:
    if (++v12 == v10)
    {
      goto LABEL_16;
    }
  }

  v47 = v12;
  swift_bridgeObjectRetain_n();
  v19 = 0;
  v20 = 0;
  v21 = 32;
  while (v20 < *(v15 + 16))
  {
    v22 = *(v15 + v21);
    v23 = *(v15 + v21 + 16);
    v24 = *(v15 + v21 + 32);
    v54 = *(v15 + v21 + 48);
    v53[1] = v23;
    v53[2] = v24;
    v53[0] = v22;
    if (v19 <= 0xF)
    {
      sub_10011A7A0(v53, v49);
      sub_1001139B4(v52);
      sub_10011A74C(v53);
      v25 = &v55[80 * v19];
      v26 = v52[3];
      v25[2] = v52[2];
      v25[3] = v26;
      v25[4] = v52[4];
      v27 = v52[1];
      *v25 = v52[0];
      v25[1] = v27;
      ++v19;
    }

    ++v20;
    v21 += 56;
    if (v18 == v20)
    {
      v50[8] = v19;
      swift_bridgeObjectRelease_n();
      v13 = v44;
      v10 = v45;
      v12 = v47;
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_22:

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

double sub_10010A1E0(uint64_t a1, void *a2)
{
  v4 = v2;
  v7 = *(type metadata accessor for Logger() - 8);
  __chkstk_darwin();
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  if (a2)
  {
    v11 = a2[2];
    if (v11 <= 0xFF)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  LOBYTE(v11) = 0;
LABEL_5:
  v25 = v8;
  LOBYTE(v26) = v11;
  sub_1001141BC(&v26 + 2, v36, a1, a2);
  Logger.init(subsystem:category:)();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v23[1] = v3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v24 = a1;
    v17 = v4;
    v18 = v16;
    v37 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_100002320(0xD00000000000002CLL, 0x80000001004B9580, &v37);
    _os_log_impl(&_mh_execute_header, v12, v13, "nan_send: %s  APPLE80211_IOC_NAN_FAST_DISCOVERY", v15, 0xCu);
    sub_100002A00(v18);
    v4 = v17;
    a1 = v24;
  }

  (*(v7 + 8))(v10, v25);
  if (a2)
  {
    v19 = a1;
  }

  else
  {
    v19 = 0;
  }

  if (HIDWORD(v19))
  {
    __break(1u);
  }

  v44 = v32;
  v45 = v33;
  v46 = v34;
  v40 = v28;
  v41 = v29;
  v42 = v30;
  v43 = v31;
  v38 = v26;
  v47 = v35;
  v39 = v27;
  LOBYTE(v37) = a2 != 0;
  HIDWORD(v37) = v19;
  v48 = 0;
  v20 = *(v4 + 16);
  v21 = *(v4 + 24);

  AppleDevice.setRequest(requestType:data:on:)(0x14DuLL, &v37, v49, 0, v20, v21);

  return result;
}

uint64_t IO80211Driver<>.update(discoveryBeaconTransmissionSchedule:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v34 = a5;
  v35 = a1;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  if (a2)
  {
    v15 = a2[2];
    if (v15 <= 0xFF)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  LOBYTE(v15) = 0;
LABEL_5:
  v33 = a4;
  LOBYTE(v36) = v15;
  sub_1001141BC(&v36 + 2, v46, v35, a2);
  v31[1] = v6;
  Logger.init(subsystem:category:)();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  v18 = os_log_type_enabled(v16, v17);
  v32 = a3;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v31[0] = v7;
    v20 = v19;
    v21 = swift_slowAlloc();
    v47 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_100002320(0xD00000000000002CLL, 0x80000001004B9580, &v47);
    _os_log_impl(&_mh_execute_header, v16, v17, "nan_send: %s  APPLE80211_IOC_NAN_FAST_DISCOVERY", v20, 0xCu);
    sub_100002A00(v21);
  }

  (*(v12 + 8))(v14, v11);
  v22 = v33;
  v23 = v35;
  if (!a2)
  {
    v23 = 0;
  }

  if (HIDWORD(v23))
  {
    __break(1u);
  }

  v54 = v42;
  v55 = v43;
  v56 = v44;
  v50 = v38;
  v51 = v39;
  v52 = v40;
  v53 = v41;
  v48 = v36;
  v57 = v45;
  v49 = v37;
  LOBYTE(v47) = a2 != 0;
  HIDWORD(v47) = v23;
  v58 = 0;
  type metadata accessor for apple80211_nan_forced_disc_beacon_transmission(0);
  v25 = v24;
  v26 = *(v22 + 8);
  v27 = *(v34 + 16);
  v28 = v32;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(333, &v47, v28, v25, v26, v27, AssociatedConformanceWitness);
}

double sub_10010A8B8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22 = v3;
    v14 = v13;
    v15 = swift_slowAlloc();
    v21 = a1;
    v16 = v15;
    v23 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_100002320(0xD000000000000017, 0x80000001004B95B0, &v23);
    _os_log_impl(&_mh_execute_header, v11, v12, "nan_send: %s  APPLE80211_IOC_NAN_DP_LINK_STATUS", v14, 0xCu);
    sub_100002A00(v16);
    a1 = v21;
  }

  (*(v8 + 8))(v10, v7);
  LOWORD(v23) = a2;
  BYTE2(v23) = BYTE2(a2);
  BYTE3(v23) = BYTE3(a2);
  BYTE4(v23) = BYTE4(a2);
  BYTE5(v23) = BYTE5(a2);
  BYTE6(v23) = BYTE6(a2);
  v24 = a1 != 0;
  v17 = *(v4 + 16);
  v18 = *(v4 + 24);

  AppleDevice.setRequest(requestType:data:on:)(0x181uLL, &v23, &v25, 0, v17, v18);

  return result;
}

uint64_t IO80211Driver<>.update(linkStatus:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a1;
  v26 = a5;
  v29 = a4;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v24[1] = v5;
    v15 = v14;
    v16 = swift_slowAlloc();
    v24[0] = a3;
    v17 = v16;
    v27 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_100002320(0xD000000000000017, 0x80000001004B95B0, &v27);
    _os_log_impl(&_mh_execute_header, v12, v13, "nan_send: %s  APPLE80211_IOC_NAN_DP_LINK_STATUS", v15, 0xCu);
    sub_100002A00(v17);
    a3 = v24[0];
  }

  (*(v9 + 8))(v11, v8);
  LOWORD(v27) = a2;
  BYTE2(v27) = BYTE2(a2);
  BYTE3(v27) = BYTE3(a2);
  BYTE4(v27) = BYTE4(a2);
  BYTE5(v27) = BYTE5(a2);
  BYTE6(v27) = BYTE6(a2);
  v28 = v25 != 0;
  type metadata accessor for apple80211_nan_dp_link_status(0);
  v19 = v18;
  v20 = *(v29 + 8);
  v21 = *(v26 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(385, &v27, a3, v19, v20, v21, AssociatedConformanceWitness);
}

double sub_10010AE48(int a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v17 = a1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100002320(0xD00000000000001DLL, 0x80000001004B95D0, &v18);
    _os_log_impl(&_mh_execute_header, v8, v9, "nan_send: %s  APPLE80211_IOC_NAN_RESTRICT_POWER_SAVE", v11, 0xCu);
    sub_100002A00(v12);

    LOBYTE(a1) = v17;
  }

  (*(v5 + 8))(v7, v4);
  LOBYTE(v18) = a1 & 1;
  HIDWORD(v18) = 1;
  v13 = *(v2 + 16);
  v14 = *(v2 + 24);

  AppleDevice.setRequest(requestType:data:on:)(0x18EuLL, &v18, &v19, 0, v13, v14);

  return result;
}

uint64_t IO80211Driver<>.update(powerSaveRestriction:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v26 = a3;
  v25 = a1;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v24[0] = a4;
    v15 = v14;
    v16 = swift_slowAlloc();
    v24[1] = v5;
    v17 = v16;
    v27 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_100002320(0xD00000000000001DLL, 0x80000001004B95D0, &v27);
    _os_log_impl(&_mh_execute_header, v12, v13, "nan_send: %s  APPLE80211_IOC_NAN_RESTRICT_POWER_SAVE", v15, 0xCu);
    sub_100002A00(v17);

    a4 = v24[0];
  }

  (*(v9 + 8))(v11, v8);
  LOBYTE(v27) = v25 & 1;
  HIDWORD(v27) = 1;
  type metadata accessor for apple80211_nan_ps_restriction(0);
  v19 = v18;
  v20 = *(v26 + 8);
  v21 = *(a4 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(398, &v27, a2, v19, v20, v21, AssociatedConformanceWitness);
}

double sub_10010B378(int a1)
{
  v3 = v1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v19 = v2;
    v12 = v11;
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_100002320(0xD000000000000020, 0x80000001004B95F0, &v20);
    _os_log_impl(&_mh_execute_header, v9, v10, "nan_send: %s  APPLE80211_IOC_NAN_INFRA_STATUS", v12, 0xCu);
    sub_100002A00(v13);
  }

  (*(v6 + 8))(v8, v5);
  if ((a1 & 0x100) != 0)
  {
    v14 = 0;
  }

  else
  {
    v14 = a1;
  }

  if ((a1 & 0x100) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  LOBYTE(v20) = BYTE2(a1) & 1;
  HIDWORD(v20) = v15;
  v21 = v14;
  v16 = *(v3 + 16);
  v17 = *(v3 + 24);

  AppleDevice.setRequest(requestType:data:on:)(0x190uLL, &v20, &v22, 0, v16, v17);

  return result;
}

uint64_t IO80211Driver<>.update(internetSharingActivity:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v27 = a4;
    v15 = v14;
    v16 = swift_slowAlloc();
    v28 = v4;
    v17 = v16;
    v30 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_100002320(0xD000000000000020, 0x80000001004B95F0, &v30);
    _os_log_impl(&_mh_execute_header, v12, v13, "nan_send: %s  APPLE80211_IOC_NAN_INFRA_STATUS", v15, 0xCu);
    sub_100002A00(v17);

    a4 = v27;
  }

  (*(v9 + 8))(v11, v8);
  if ((a1 & 0x100) != 0)
  {
    v18 = 0;
  }

  else
  {
    v18 = a1;
  }

  LOBYTE(v30) = BYTE2(a1) & 1;
  if ((a1 & 0x100) != 0)
  {
    v19 = 2;
  }

  else
  {
    v19 = 1;
  }

  HIDWORD(v30) = v19;
  v31 = v18;
  type metadata accessor for apple80211_nan_ir_status(0);
  v21 = v20;
  v22 = *(v29 + 8);
  v23 = *(a4 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(400, &v30, a2, v21, v22, v23, AssociatedConformanceWitness);
}

uint64_t sub_10010B8B8()
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  AppleDevice.getRequest(requestType:data:on:)(0x22CuLL, &v4, &v7, 0, v1, v2);

  return HIDWORD(v5);
}

uint64_t IO80211Driver<>.linkConditionStatistics.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  sub_100114390(&v6, &v9, v3, a1, a2, a3, &v5, 556);
  return HIDWORD(v7);
}

double sub_10010BA58(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if ((a3 & 0xFF00000000) == 0x300000000)
  {
    LODWORD(v7) = 0;
    v8 = 0;
    LODWORD(v9) = 1;
  }

  else
  {
    v9 = Channel.apple80211Channel.getter(a3 & 0xFFFFFFFFFFFFLL);
    v7 = HIDWORD(v9);
  }

  v13[0] = xmmword_100486AB0;
  v13[1] = xmmword_100486AC0;
  v14 = 1;
  v15 = a1;
  v16 = BYTE2(a1);
  v17 = BYTE3(a1);
  v18 = BYTE4(a1);
  v19 = BYTE5(a1);
  v10 = a4 >> 8;
  if ((a4 & 0x10000) != 0)
  {
    LOBYTE(v10) = 0;
    v11 = 0;
  }

  else
  {
    v11 = a4;
  }

  v20 = a2;
  v21 = BYTE2(a2);
  v22 = BYTE3(a2);
  v23 = BYTE4(a2);
  v24 = BYTE5(a2);
  v25 = v9;
  v26 = v7;
  v27 = v8;
  v28 = v11;
  v29 = v10;
  v30 = 0;
  return sub_10011082C(0x229uLL, v13);
}

uint64_t IO80211Driver<>.update(multicastAddress:responderAddress:channelInfo:countryCode:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((a3 & 0xFF00000000) == 0x300000000)
  {
    LODWORD(v13) = 0;
    v14 = 0;
    LODWORD(v15) = 1;
  }

  else
  {
    v15 = Channel.apple80211Channel.getter(a3 & 0xFFFFFFFFFFFFLL);
    v13 = HIDWORD(v15);
  }

  v24[0] = xmmword_100486AB0;
  v24[1] = xmmword_100486AC0;
  v25 = 1;
  v26 = a1;
  v27 = BYTE2(a1);
  v28 = BYTE3(a1);
  v29 = BYTE4(a1);
  v30 = BYTE5(a1);
  v16 = a4 >> 8;
  if ((a4 & 0x10000) != 0)
  {
    LOBYTE(v16) = 0;
    v17 = 0;
  }

  else
  {
    v17 = a4;
  }

  v31 = a2;
  v32 = BYTE2(a2);
  v33 = BYTE3(a2);
  v34 = BYTE4(a2);
  v35 = BYTE5(a2);
  v36 = v15;
  v37 = v13;
  v38 = v14;
  v39 = v17;
  v40 = v16;
  v41 = 0;
  type metadata accessor for apple80211_nan_create_gcr_session(0);
  v19 = v18;
  v20 = *(a6 + 8);
  v21 = *(a7 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(553, v24, a5, v19, v20, v21, AssociatedConformanceWitness);
}

double sub_10010BD04(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if ((a3 & 0xFF00000000) == 0x300000000)
  {
    LODWORD(v7) = 0;
    v8 = 0;
    LODWORD(v9) = 1;
  }

  else
  {
    v9 = Channel.apple80211Channel.getter(a3 & 0xFFFFFFFFFFFFLL);
    v7 = HIDWORD(v9);
  }

  v13 = xmmword_100486AB0;
  v14 = 0x4000000001;
  v15 = 2;
  v16 = a1;
  v17 = BYTE2(a1);
  v18 = BYTE3(a1);
  v19 = BYTE4(a1);
  v20 = BYTE5(a1);
  v10 = a4 >> 8;
  if ((a4 & 0x10000) != 0)
  {
    LOBYTE(v10) = 0;
    v11 = 0;
  }

  else
  {
    v11 = a4;
  }

  v21 = a2;
  v22 = BYTE2(a2);
  v23 = BYTE3(a2);
  v24 = BYTE4(a2);
  v25 = BYTE5(a2);
  v26 = v9;
  v27 = v7;
  v28 = v8;
  v29 = v11;
  v30 = v10;
  v31 = 0;
  return sub_1001108F4(0x22AuLL, &v13);
}

uint64_t IO80211Driver<>.update(multicastAddress:transmitterAddress:channelInfo:countryCode:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((a3 & 0xFF00000000) == 0x300000000)
  {
    LODWORD(v13) = 0;
    v14 = 0;
    LODWORD(v15) = 1;
  }

  else
  {
    v15 = Channel.apple80211Channel.getter(a3 & 0xFFFFFFFFFFFFLL);
    v13 = HIDWORD(v15);
  }

  v24 = xmmword_100486AB0;
  v25 = 0x4000000001;
  v26 = 2;
  v27 = a1;
  v28 = BYTE2(a1);
  v29 = BYTE3(a1);
  v30 = BYTE4(a1);
  v31 = BYTE5(a1);
  v16 = a4 >> 8;
  if ((a4 & 0x10000) != 0)
  {
    LOBYTE(v16) = 0;
    v17 = 0;
  }

  else
  {
    v17 = a4;
  }

  v32 = a2;
  v33 = BYTE2(a2);
  v34 = BYTE3(a2);
  v35 = BYTE4(a2);
  v36 = BYTE5(a2);
  v37 = v15;
  v38 = v13;
  v39 = v14;
  v40 = v17;
  v41 = v16;
  v42 = 0;
  type metadata accessor for apple80211_nan_join_gcr_session(0);
  v19 = v18;
  v20 = *(a6 + 8);
  v21 = *(a7 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(554, &v24, a5, v19, v20, v21, AssociatedConformanceWitness);
}

double sub_10010BFB8(uint64_t a1, uint64_t a2)
{
  v3 = xmmword_100486AB0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = a1;
  v8 = BYTE2(a1);
  v9 = BYTE3(a1);
  v10 = BYTE4(a1);
  v11 = BYTE5(a1);
  v12 = a2;
  v13 = BYTE2(a2);
  v14 = BYTE3(a2);
  v15 = BYTE4(a2);
  v16 = BYTE5(a2);
  v17 = 1;
  memset(v18, 0, sizeof(v18));
  return sub_10011082C(0x229uLL, &v3);
}

uint64_t IO80211Driver<>.terminate(multicastAddress:responderAddress:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = xmmword_100486AB0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = a1;
  v19 = BYTE2(a1);
  v20 = BYTE3(a1);
  v21 = BYTE4(a1);
  v22 = BYTE5(a1);
  v23 = a2;
  v24 = BYTE2(a2);
  v25 = BYTE3(a2);
  v26 = BYTE4(a2);
  v27 = BYTE5(a2);
  v28 = 1;
  type metadata accessor for apple80211_nan_create_gcr_session(0);
  v9 = v8;
  memset(v29, 0, sizeof(v29));
  v10 = *(a4 + 8);
  v11 = *(a5 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(553, &v14, a3, v9, v10, v11, AssociatedConformanceWitness);
}

double sub_10010C19C(uint64_t a1, uint64_t a2)
{
  v3 = xmmword_100486AB0;
  v4 = 0;
  v5 = 0;
  v6 = a1;
  v7 = BYTE2(a1);
  v8 = BYTE3(a1);
  v9 = BYTE4(a1);
  v10 = BYTE5(a1);
  v11 = a2;
  v12 = BYTE2(a2);
  v13 = BYTE3(a2);
  v14 = BYTE4(a2);
  v15 = BYTE5(a2);
  v16 = 1;
  v17[0] = 0;
  *(v17 + 7) = 0;
  return sub_1001108F4(0x22AuLL, &v3);
}

uint64_t IO80211Driver<>.terminate(multicastAddress:transmitterAddress:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = xmmword_100486AB0;
  v15 = 0;
  v16 = 0;
  v17 = a1;
  v18 = BYTE2(a1);
  v19 = BYTE3(a1);
  v20 = BYTE4(a1);
  v21 = BYTE5(a1);
  v22 = a2;
  v23 = BYTE2(a2);
  v24 = BYTE3(a2);
  v25 = BYTE4(a2);
  v26 = BYTE5(a2);
  v27 = 1;
  type metadata accessor for apple80211_nan_join_gcr_session(0);
  v9 = v8;
  v28[0] = 0;
  *(v28 + 7) = 0;
  v10 = *(a4 + 8);
  v11 = *(a5 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(554, &v14, a3, v9, v10, v11, AssociatedConformanceWitness);
}

uint64_t IO80211Driver<>.update(multicastRateInformation:)(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = 0;
  v13[1] = a1;
  v14 = xmmword_100486AD0;
  type metadata accessor for apple80211_nan_gcr_rate(0);
  v8 = v7;
  v9 = *(a3 + 8);
  v10 = *(a4 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(555, v13, a2, v8, v9, v10, AssociatedConformanceWitness);
}

uint64_t IO80211Driver<>.removeMulticastPeer(peerAddress:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = 0;
  v14 = a1;
  v15 = BYTE2(a1);
  v16 = BYTE3(a1);
  v17 = BYTE4(a1);
  v18 = BYTE5(a1);
  type metadata accessor for apple80211_nan_remove_multicast_peer(0);
  v8 = v7;
  v9 = *(a3 + 8);
  v10 = *(a4 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(583, &v13, a2, v8, v9, v10, AssociatedConformanceWitness);
}

id sub_10010C5C4(unint64_t a1)
{
  v3 = a1 >> 8;
  v4 = a1 >> 16;
  v5 = a1 >> 24;
  v6 = HIDWORD(a1);
  v7 = a1 >> 40;
  type metadata accessor for String.Encoding();
  __chkstk_darwin();
  bzero(v79, 0x4E0uLL);
  v79[0] = a1;
  v79[1] = v3;
  v79[2] = v4;
  v79[3] = v5;
  v79[4] = v6;
  v79[5] = v7;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);

  AppleDevice.getRequest(requestType:data:on:)(0x16CuLL, v79, v169, 0, v8, v9);

  if (!v56)
  {
    v10 = [objc_allocWithZone(WiFiMACAddress) initWithAddress:a1 & 0xFFFFFFFFFFFFLL];
    v11.super.super.isa = UInt8._bridgeToObjectiveC()().super.super.isa;
    v58 = v83;
    v59 = v84;
    v60 = v85;
    v61 = v86;
    v62 = v87;
    v63 = v88;
    v64 = v89;
    v65 = v90;
    v66 = v91;
    v68 = v93;
    v67 = v92;
    v69 = v94;
    v70 = v95;
    v72 = v97;
    v71 = v96;
    v73 = v98;
    v74 = v99;
    v76 = v101;
    v75 = v100;
    v77 = v102;
    sub_100114504(&v58, &v78, &v57);
    v58 = v103;
    v59 = v104;
    v60 = v105;
    v61 = v106;
    v62 = v107;
    v63 = v108;
    v64 = v109;
    v65 = v110;
    sub_100114504(&v58, &v66, &v57);
    v12.super.super.isa = UInt8._bridgeToObjectiveC()().super.super.isa;
    v13.super.super.isa = UInt8._bridgeToObjectiveC()().super.super.isa;
    v28.super.super.isa = UInt8._bridgeToObjectiveC()().super.super.isa;
    v30.super.super.isa = UInt32._bridgeToObjectiveC()().super.super.isa;
    v55.super.super.isa = UInt32._bridgeToObjectiveC()().super.super.isa;
    v54.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
    v53.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
    v52.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
    v51.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
    v50.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
    v49.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
    sub_100018AB4(0, &qword_1005974C0, NSNumber_ptr);
    v14.super.super.isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
    v48.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
    v47.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
    v46.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
    v45.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
    v15.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
    if (__CFADD__(v80, v81))
    {
      __break(1u);
    }

    isa = v15.super.super.isa;
    v44 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v42 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v41 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v40 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v39 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v38 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v37 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v36 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v35 = UInt32._bridgeToObjectiveC()().super.super.isa;
    v34 = UInt32._bridgeToObjectiveC()().super.super.isa;
    v33 = UInt32._bridgeToObjectiveC()().super.super.isa;
    v32 = UInt32._bridgeToObjectiveC()().super.super.isa;
    v31 = UInt32._bridgeToObjectiveC()().super.super.isa;
    v27 = v10;
    v16 = v82;
    sub_10005DC58(&qword_10058B3C0, &qword_100481920);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_100483520;
    *(v17 + 32) = v16;
    *&v58 = v17;
    static String.Encoding.utf8.getter();
    sub_10005DC58(&qword_10058D358, &unk_100486960);
    sub_10000CADC(&qword_10058D470, &qword_10058D358, &unk_100486960, &protocol conformance descriptor for [A]);
    String.init<A>(bytes:encoding:)();

    v58 = v159;
    v59 = v160;
    v60 = v161;
    v61 = v162;
    v62 = v163;
    v63 = v164;
    v64 = v165;
    v65 = v166;
    v66 = v167;
    v67 = v168;
    sub_100114504(&v58, &v68, &v57);
    v58 = v131;
    v59 = v132;
    v60 = v133;
    v61 = v134;
    v62 = v135;
    v63 = v136;
    v64 = v137;
    v65 = v138;
    v66 = v139;
    v68 = v141;
    v67 = v140;
    v69 = v142;
    v70 = v143;
    v72 = v145;
    v71 = v144;
    v73 = v146;
    v74 = v147;
    v76 = v149;
    v75 = v148;
    v77 = v150;
    sub_100114504(&v58, &v78, &v57);
    v58 = v111;
    v59 = v112;
    v60 = v113;
    v61 = v114;
    v62 = v115;
    v63 = v116;
    v64 = v117;
    v65 = v118;
    v66 = v119;
    v68 = v121;
    v67 = v120;
    v69 = v122;
    v70 = v123;
    v72 = v125;
    v71 = v124;
    v73 = v126;
    v74 = v127;
    v76 = v129;
    v75 = v128;
    v77 = v130;
    sub_100114504(&v58, &v78, &v57);
    v58 = v151;
    v59 = v152;
    v60 = v153;
    v61 = v154;
    v62 = v155;
    v63 = v156;
    v64 = v157;
    v65 = v158;
    sub_100114504(&v58, &v66, &v57);
    v22 = objc_allocWithZone(WiFiAwareDataSessionStatisticsReport);
    sub_100018AB4(0, &qword_10058D480, WiFiAwareDataSessionStatisticsHistogramBin_ptr);
    v21 = Array._bridgeToObjectiveC()().super.isa;

    v20 = Array._bridgeToObjectiveC()().super.isa;

    v23 = String._bridgeToObjectiveC()();

    v24 = Array._bridgeToObjectiveC()().super.isa;

    v25 = Array._bridgeToObjectiveC()().super.isa;

    v26 = Array._bridgeToObjectiveC()().super.isa;

    v29 = Array._bridgeToObjectiveC()().super.isa;

    LOBYTE(v19) = 0;
    v56 = [v22 initWithPeerAddress:v27 infrastructureChannel:v11.super.super.isa txCCAHistogram:v21 rxRSSIHistogram:v20 preferred2GChannelsCount:v12.super.super.isa preferred5GChannelsCount:v13.super.super.isa dfsChannelsCount:v28.super.super.isa csaCount:v30.super.super.isa quietIECount:v55.super.super.isa txErrorCount:v54.super.super.isa packetsOn2GCount:v53.super.super.isa packetsNAVOn2GCount:v52.super.super.isa packetsHOFOn2GCount:v51.super.super.isa packetsOn5GCount:v50.super.super.isa packetsOverridenOn5GCount:v49.super.super.isa infraRelayOperationStatus:v19 infraRelayRequestersCount:v14.super.super.isa txExpiredCount:v48.super.super.isa txNoACKCount:v47.super.super.isa txFailedCount:v46.super.super.isa txNoResourcesCount:v45.super.super.isa txIOErrorCount:isa txMemoryErrorCount:v44 txChipModeErrorCount:v42 txNoRemotePeerCount:v41 txInternalErrorCount:v40 txDroppedCount:v39 txFirmwareFreePacketCount:v38 txMaxRetriesCount:v37 txForceLifetimeExpiredCount:v36 channelSequenceMismatchOn5GCount:v35 channelSequenceMismatchOn2GCount:v34 infraScanCount:v33 infraAssocCount:v32 infraDisassocCount:v31 countryCode:v23 txConsecutiveErrorsHistogram:v24 rxFWDelayHistogram:v25 rxIPCDelayHistogram:v26 txPacketExpiryHistogram:v29];
  }

  return v56;
}

id IO80211Driver<>.generateStatisticsReport(for:)(unint64_t a1, objc_class *a2, objc_class *a3, objc_class *a4)
{
  v91 = a2;
  v92 = a3;
  v6 = a1 >> 8;
  v7 = a1 >> 16;
  v8 = a1 >> 24;
  v9 = HIDWORD(a1);
  v10 = a1 >> 40;
  type metadata accessor for String.Encoding();
  __chkstk_darwin();
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v116, 0x4E0uLL);
  v116[0] = a1;
  v116[1] = v6;
  v116[2] = v7;
  v116[3] = v8;
  v116[4] = v9;
  v13 = v91;
  v116[5] = v10;
  v14 = v93;
  v15 = v94;
  v93 = a4;
  sub_100114390(v116, v206, v14, v91, v92, a4, &v95, 364);
  if (!v15)
  {
    v58 = v12;
    v64 = 0;
    v16 = [objc_allocWithZone(WiFiMACAddress) initWithAddress:a1 & 0xFFFFFFFFFFFFLL];
    v17.super.super.isa = UInt8._bridgeToObjectiveC()().super.super.isa;
    v96 = v120;
    v97 = v121;
    v98 = v122;
    v99 = v123;
    v100 = v124;
    v101 = v125;
    v102 = v126;
    v103 = v127;
    v104 = v128;
    v106 = v130;
    v105 = v129;
    v107 = v131;
    v108 = v132;
    v110 = v134;
    v109 = v133;
    v111 = v135;
    v112 = v136;
    v114 = v138;
    v113 = v137;
    v115 = v139;
    v60 = sub_10005DC58(&qword_10058D460, &qword_100486EB0);
    v94 = sub_100114478(&v96, v13, v60);
    v96 = v140;
    v97 = v141;
    v98 = v142;
    v99 = v143;
    v100 = v144;
    v101 = v145;
    v102 = v146;
    v103 = v147;
    v59 = sub_10005DC58(&qword_10058D468, &unk_100486EB8);
    v61 = sub_100114478(&v96, v13, v59);
    v18.super.super.isa = UInt8._bridgeToObjectiveC()().super.super.isa;
    isa = UInt8._bridgeToObjectiveC()().super.super.isa;
    v63 = UInt8._bridgeToObjectiveC()().super.super.isa;
    v62 = UInt32._bridgeToObjectiveC()().super.super.isa;
    v90 = UInt32._bridgeToObjectiveC()().super.super.isa;
    v89 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v88 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v87 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v86 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v85 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v84 = UInt64._bridgeToObjectiveC()().super.super.isa;
    sub_100018AB4(0, &qword_1005974C0, NSNumber_ptr);
    v19.super.super.isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
    v83 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v82 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v81 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v80 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v20.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
    if (__CFADD__(v117, v118))
    {
      __break(1u);
    }

    v78 = v20.super.super.isa;
    v79 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v77 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v76 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v75 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v74 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v73 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v72 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v71 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v70 = UInt32._bridgeToObjectiveC()().super.super.isa;
    v69 = UInt32._bridgeToObjectiveC()().super.super.isa;
    v68 = UInt32._bridgeToObjectiveC()().super.super.isa;
    v67 = UInt32._bridgeToObjectiveC()().super.super.isa;
    v66 = UInt32._bridgeToObjectiveC()().super.super.isa;
    v56 = v16;
    v21 = v119;
    sub_10005DC58(&qword_10058B3C0, &qword_100481920);
    v22 = swift_allocObject();
    v65 = v19.super.super.isa;
    *(v22 + 16) = xmmword_100483520;
    *(v22 + 32) = v21;
    *&v96 = v22;
    static String.Encoding.utf8.getter();
    v54 = v17.super.super.isa;
    v55 = v18.super.super.isa;
    sub_10005DC58(&qword_10058D358, &unk_100486960);
    sub_10000CADC(&qword_10058D470, &qword_10058D358, &unk_100486960, &protocol conformance descriptor for [A]);
    v23 = String.init<A>(bytes:encoding:)();
    v25 = v24;

    if (v25)
    {
      v26 = v23;
    }

    else
    {
      v26 = 0;
    }

    v58 = v26;
    v27 = 0xE000000000000000;
    if (v25)
    {
      v27 = v25;
    }

    v53 = v27;
    v96 = v196;
    v97 = v197;
    v98 = v198;
    v99 = v199;
    v100 = v200;
    v101 = v201;
    v102 = v202;
    v103 = v203;
    v104 = v204;
    v105 = v205;
    v28 = sub_10005DC58(&qword_10058D478, &qword_100486EC8);
    sub_100114478(&v96, v13, v28);
    v96 = v168;
    v97 = v169;
    v98 = v170;
    v99 = v171;
    v100 = v172;
    v101 = v173;
    v102 = v174;
    v103 = v175;
    v104 = v176;
    v106 = v178;
    v105 = v177;
    v107 = v179;
    v108 = v180;
    v110 = v182;
    v109 = v181;
    v111 = v183;
    v112 = v184;
    v114 = v186;
    v113 = v185;
    v115 = v187;
    v29 = v60;
    sub_100114478(&v96, v13, v60);
    v96 = v148;
    v97 = v149;
    v98 = v150;
    v99 = v151;
    v100 = v152;
    v101 = v153;
    v102 = v154;
    v103 = v155;
    v104 = v156;
    v106 = v158;
    v105 = v157;
    v107 = v159;
    v108 = v160;
    v110 = v162;
    v109 = v161;
    v111 = v163;
    v112 = v164;
    v114 = v166;
    v113 = v165;
    v115 = v167;
    sub_100114478(&v96, v13, v29);
    v96 = v188;
    v97 = v189;
    v98 = v190;
    v99 = v191;
    v100 = v192;
    v101 = v193;
    v102 = v194;
    v103 = v195;
    sub_100114478(&v96, v13, v59);
    v59 = objc_allocWithZone(WiFiAwareDataSessionStatisticsReport);
    sub_100018AB4(0, &qword_10058D480, WiFiAwareDataSessionStatisticsHistogramBin_ptr);
    v52 = Array._bridgeToObjectiveC()().super.isa;

    v51 = Array._bridgeToObjectiveC()().super.isa;

    v30 = String._bridgeToObjectiveC()();
    v60 = v30;

    v31 = Array._bridgeToObjectiveC()().super.isa;
    v61 = v31;

    v32 = Array._bridgeToObjectiveC()().super.isa;
    v91 = v32;

    v33 = Array._bridgeToObjectiveC()().super.isa;
    v92 = v33;

    v34 = Array._bridgeToObjectiveC()().super.isa;
    v93 = v34;

    v48 = v33;
    v49 = v34;
    v46 = v31;
    v47 = v32;
    v45 = v30;
    LOBYTE(v44) = 0;
    v35 = v62;
    v36 = v63;
    v37 = v55;
    v38 = v56;
    v39 = v54;
    v41 = v51;
    v40 = v52;
    v42 = isa;
    v94 = [v59 initWithPeerAddress:v56 infrastructureChannel:v54 txCCAHistogram:v52 rxRSSIHistogram:v51 preferred2GChannelsCount:v55 preferred5GChannelsCount:isa dfsChannelsCount:v63 csaCount:v62 quietIECount:v90 txErrorCount:v89 packetsOn2GCount:v88 packetsNAVOn2GCount:v87 packetsHOFOn2GCount:v86 packetsOn5GCount:v85 packetsOverridenOn5GCount:v84 infraRelayOperationStatus:v44 infraRelayRequestersCount:v65 txExpiredCount:v83 txNoACKCount:v82 txFailedCount:v81 txNoResourcesCount:v80 txIOErrorCount:v78 txMemoryErrorCount:v79 txChipModeErrorCount:v77 txNoRemotePeerCount:v76 txInternalErrorCount:v75 txDroppedCount:v74 txFirmwareFreePacketCount:v73 txMaxRetriesCount:v72 txForceLifetimeExpiredCount:v71 channelSequenceMismatchOn5GCount:v70 channelSequenceMismatchOn2GCount:v69 infraScanCount:v68 infraAssocCount:v67 infraDisassocCount:v66 countryCode:v45 txConsecutiveErrorsHistogram:v46 rxFWDelayHistogram:v47 rxIPCDelayHistogram:v48 txPacketExpiryHistogram:v49];
  }

  return v94;
}

__n128 BroadcomDriver<>.getInfraStats()@<Q0>(uint64_t a1@<X8>)
{
  if (qword_10058AB30 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = xmmword_10059B6F8;
  *(a1 + 64) = xmmword_10059B6E8;
  *(a1 + 80) = v1;
  *(a1 + 96) = xmmword_10059B708;
  v2 = xmmword_10059B6B8;
  *a1 = static InfraStatistics.none;
  *(a1 + 16) = v2;
  result = xmmword_10059B6D8;
  *(a1 + 32) = xmmword_10059B6C8;
  *(a1 + 48) = result;
  return result;
}

void sub_10010DCE0(uint64_t a1)
{
  type metadata accessor for Logger();
  __chkstk_darwin();
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v41 = v8;
    v42 = v6;
    v43 = v5;
    v44 = v1;
    v45 = v2;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v40 = v9;
    if (v9 >= 8)
    {
      v10 = 8;
    }

    else
    {
      v10 = v9;
    }

    BYTE4(v46) = v10;
    *&v50[0] = _swiftEmptyArrayStorage;

    sub_1000C0664(0, v10, 0);
    v11 = 0;
    v12 = *&v50[0];
    v13 = *(*&v50[0] + 16);
    v14 = 7 * v13;
    v15 = 7 * v10;
    do
    {
      v3.i32[0] = *(a1 + v11 + 32);
      v16 = *(a1 + v11 + 36);
      v17 = *(a1 + v11 + 37);
      v18 = *(a1 + v11 + 38);
      *&v50[0] = v12;
      v19 = *(v12 + 24);
      if (v13++ >= v19 >> 1)
      {
        sub_1000C0664((v19 > 1), v13, 1);
        v12 = *&v50[0];
      }

      v21 = vmovl_u8(v3).u64[0];
      *(v12 + 16) = v13;
      v22 = v12 + v14 + v11;
      *(v22 + 32) = vuzp1_s8(v21, v21).u32[0];
      *(v22 + 36) = v16;
      *(v22 + 37) = v17;
      *(v22 + 38) = v18;
      v11 += 7;
    }

    while (v15 != v11);
    v23 = 0;
    do
    {
      v24 = *(v12 + v23 + 36);
      v25 = *(v12 + v23 + 38);
      v26 = &v46 + v23;
      *(v26 + 5) = *(v12 + v23 + 32);
      *(v26 + 9) = v24;
      v26[11] = v25;
      v23 += 7;
      --v13;
    }

    while (v13);

    v27 = v41;
    Logger.init(subsystem:category:)();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    v30 = os_log_type_enabled(v28, v29);
    v31 = v44;
    if (v30)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&v50[0] = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_100002320(0xD000000000000027, 0x80000001004B9620, v50);
      _os_log_impl(&_mh_execute_header, v28, v29, "nan_send: %s  APPLE80211_IOC_NAN_DATA_PATH_KEEP_ALIVE_IDENTIFIER", v32, 0xCu);
      sub_100002A00(v33);
    }

    (*(v42 + 8))(v27, v43);
    v50[0] = v46;
    v50[1] = v47;
    v50[2] = v48;
    v50[3] = v49;
    v34 = *(v31 + 16);
    v35 = *(v31 + 24);

    v36 = v34;
    v37 = v45;
    AppleDevice.setRequest(requestType:data:on:)(0x16FuLL, v50, &v51, 0, v36, v35);
    if (v37)
    {
    }

    else
    {

      if (v40 <= 8)
      {
      }

      else
      {
        sub_100118368(a1, a1 + 32, 8, (2 * v40) | 1);
        v39 = v38;

        sub_10010DCE0(v39);
      }
    }
  }
}

void IO80211Driver<>.received(keepAliveDatapathIdentifiers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Logger();
  __chkstk_darwin();
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 16);
  if (v15)
  {
    v51 = v14;
    v52 = v12;
    v53 = v11;
    v54 = a3;
    v55 = a2;
    v56 = v4;
    v57 = a4;
    v58 = v5;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v50 = v15;
    if (v15 >= 8)
    {
      v16 = 8;
    }

    else
    {
      v16 = v15;
    }

    BYTE4(v59) = v16;
    *&v63[0] = _swiftEmptyArrayStorage;

    sub_1000C0664(0, v16, 0);
    v17 = 0;
    v18 = *&v63[0];
    v19 = *(*&v63[0] + 16);
    v20 = 7 * v19;
    v21 = 7 * v16;
    do
    {
      v6.i32[0] = *(a1 + v17 + 32);
      v22 = *(a1 + v17 + 36);
      v23 = *(a1 + v17 + 37);
      v24 = *(a1 + v17 + 38);
      *&v63[0] = v18;
      v25 = *(v18 + 24);
      if (v19++ >= v25 >> 1)
      {
        sub_1000C0664((v25 > 1), v19, 1);
        v18 = *&v63[0];
      }

      v27 = vmovl_u8(v6).u64[0];
      *(v18 + 16) = v19;
      v28 = v18 + v20 + v17;
      *(v28 + 32) = vuzp1_s8(v27, v27).u32[0];
      *(v28 + 36) = v22;
      *(v28 + 37) = v23;
      *(v28 + 38) = v24;
      v17 += 7;
    }

    while (v21 != v17);
    v29 = 0;
    do
    {
      v30 = *(v18 + v29 + 36);
      v31 = *(v18 + v29 + 38);
      v32 = &v59 + v29;
      *(v32 + 5) = *(v18 + v29 + 32);
      *(v32 + 9) = v30;
      v32[11] = v31;
      v29 += 7;
      --v19;
    }

    while (v19);

    v33 = v51;
    Logger.init(subsystem:category:)();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    v36 = os_log_type_enabled(v34, v35);
    v37 = v57;
    if (v36)
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *&v63[0] = v39;
      *v38 = 136315138;
      *(v38 + 4) = sub_100002320(0xD000000000000027, 0x80000001004B9620, v63);
      _os_log_impl(&_mh_execute_header, v34, v35, "nan_send: %s  APPLE80211_IOC_NAN_DATA_PATH_KEEP_ALIVE_IDENTIFIER", v38, 0xCu);
      sub_100002A00(v39);
    }

    (*(v52 + 8))(v33, v53);
    v40 = v55;
    v63[0] = v59;
    v63[1] = v60;
    v63[2] = v61;
    v63[3] = v62;
    type metadata accessor for apple80211_nan_keep_alive_dp_identifer(0);
    v42 = v41;
    v43 = *(v54 + 8);
    v44 = *(v37 + 16);
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v46 = v58;
    sub_100110D80(367, v63, v40, v42, v43, v44, AssociatedConformanceWitness);
    if (v46 || v50 < 9)
    {
    }

    else
    {
      sub_100118368(a1, a1 + 32, 8, (2 * v50) | 1);
      v48 = v47;

      (*(v37 + 504))(v48, v40, v37);
    }
  }
}

uint64_t sub_10010E684@<X0>(uint64_t *a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  v10 = swift_allocObject();
  result = AppleIO80211Driver.init(device:role:name:)(v9, a2, a3, a4);
  *a5 = v10;
  return result;
}

void sub_10010E700(uint64_t *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = v3[6];
  v5 = v3[7];
  v6 = v3[8];
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  sub_100119ED4(v4, v5, v6);
}

uint64_t sub_10010E754(__n128 *a1)
{
  v8 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = *v1;
  swift_beginAccess();
  v4 = v3[6];
  v5 = v3[7];
  v6 = v3[8];
  *(v3 + 3) = v8;
  v3[8] = v2;
  return sub_100119F14(v4, v5, v6);
}

void sub_10010E82C(uint64_t a1)
{
  if (*(a1 + 32) == 4)
  {
    v15 = 0uLL;
    v16 = 0;
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    KeyPath = swift_getKeyPath();

    sub_10000F344(v3, v4, &v15, KeyPath, 0x10uLL);

    v13 = v15;
    v14 = v16;
    v6 = *(v1 + 16);
    v7 = *(v1 + 24);

    v8 = &v15;
    v9 = 293;
  }

  else
  {
    if (!*(a1 + 32))
    {
      sub_10000B02C();
      swift_allocError();
      *v2 = xmmword_1004817E0;
      *(v2 + 16) = 0;
      swift_willThrow();
      return;
    }

    v17 = 0uLL;
    v18 = 0;
    v10 = *(a1 + 16);
    v11 = *(a1 + 24);
    v12 = swift_getKeyPath();

    sub_10000F344(v10, v11, &v17, v12, 0x10uLL);

    v13 = v17;
    LODWORD(v14) = v18;
    v6 = *(v1 + 16);
    v7 = *(v1 + 24);

    v8 = &v14 + 4;
    v9 = 95;
  }

  AppleDevice.setRequest(requestType:data:on:)(v9, &v13, v8, 0, v6, v7);
}

uint64_t DeviceDriver<>.destroyInterface(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(a4 + 32))(a2, a4);
  if (v9 == 4)
  {
    v26 = 0uLL;
    v27 = 0;
    v12 = (*(a4 + 40))(a2, a4);
    v14 = v13;
    KeyPath = swift_getKeyPath();

    sub_10000F344(v12, v14, &v26, KeyPath, 0x10uLL);

    v24 = v26;
    v25 = v27;
    type metadata accessor for apple80211_companion_skywalk_if_create(0);
    v17 = v16;
    v18 = 293;
  }

  else
  {
    if (!v9)
    {
      sub_10000B02C();
      swift_allocError();
      *v10 = xmmword_1004817E0;
      *(v10 + 16) = 0;
      return swift_willThrow();
    }

    v28 = 0uLL;
    v29 = 0;
    v19 = (*(a4 + 40))(a2, a4);
    v21 = v20;
    v22 = swift_getKeyPath();

    sub_10000F344(v19, v21, &v28, v22, 0x10uLL);

    v24 = v28;
    LODWORD(v25) = v29;
    type metadata accessor for apple80211_virt_if_delete_data(0);
    v17 = v23;
    v18 = 95;
  }

  return sub_100110D80(v18, &v24, a2, v17, a3, a4, a5);
}

uint64_t sub_10010EC60()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t sub_10010EC94(uint64_t a1, uint64_t a2)
{

  return sub_100115B90(a1);
}

char *DeviceDriver<>.supportedChannels.getter(uint64_t a1)
{
  __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  type metadata accessor for apple80211_channels_info(0);
  sub_100110570(207, v9, 0, 0, v8, v9, v6, v4, v2);
  memcpy(v13, __src, sizeof(v13));
  memcpy(__src, v13, sizeof(__src));
  sub_100110F38(__src, v13, v4, &v11);
  return v11;
}

uint64_t IO80211Driver<>.postPeerPresence(macAddress:ipv6Address:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v37 = a5;
  v35 = a3;
  v36 = a4;
  v34 = a2;
  v45 = a1;
  v32[1] = a8;
  v12 = *(a8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = __chkstk_darwin();
  v17 = v32 - v16;
  (*(v12 + 56))(a6, v12, v15);
  v18 = *(a7 + 8);
  v19 = *(v18 + 40);
  v33 = v9;
  v20 = v19(a6, v18);
  v21 = v38;
  (*(a9 + 24))(v45 & 0xFFFFFFFFFFFFLL, v34, v35, v36, v37, v20, v22, 1, AssociatedTypeWitness, a9);
  if (v21)
  {
    (*(v14 + 8))(v17, AssociatedTypeWitness);
  }

  v38 = 0;
  (*(v14 + 8))(v17, AssociatedTypeWitness);

  v24 = (*(v18 + 32))(a6, v18);
  v25 = v18;
  if (v24 <= 1)
  {
    v26 = v12;
    if (v24)
    {

      v27 = v45;
      goto LABEL_9;
    }
  }

  else
  {
    v26 = v12;
  }

  v27 = v45;
  v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v28)
  {
LABEL_9:
    v39 = 1;
    v40 = v27;
    v41 = BYTE2(v27);
    v42 = BYTE3(v27);
    v43 = BYTE4(v27);
    v44 = BYTE5(v27);
    type metadata accessor for apple80211_awdl_ppp_done(0);
    v30 = v29;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    return sub_100110D80(415, &v39, a6, v30, v26, v25, AssociatedConformanceWitness);
  }

  return result;
}

uint64_t sub_10010F1F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v5[4] = 0x3D67736D2D2069;
  v5[5] = 0xE700000000000000;
  String.append(_:)(*&a1);
  v5[2] = &v6;
  sub_1000ED5E8(a3, v5, 0x3D67736D2D2069, 0xE700000000000000);
}

uint64_t DeviceDriver<>.triggerCoreCapture(reason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = 0x3D67736D2D2069;
  v15 = 0xE700000000000000;
  String.append(_:)(*&a1);
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v13 = v6;
  sub_1000ED5E8(sub_10011A7FC, v12, 0x3D67736D2D2069, 0xE700000000000000);
}

void *sub_10010F330(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v4[2] = &v5;
  return sub_1000ED5E8(sub_10011AFFC, v4, a1, a2);
}

void *DeviceDriver<>.triggerWiFiChipReset(reason:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = a5;
  v7[5] = a6;
  return sub_1000ED5E8(sub_10011A82C, v7, a1, a2);
}

uint64_t sub_10010F3D4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7CoreP2P18AppleIO80211Driver_logger;
  v5 = type metadata accessor for Logger();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t AppleIO80211Driver.description.getter()
{
  _StringGuts.grow(_:)(21);

  strcpy(v14, "IO80211Driver[");
  HIBYTE(v14[1]) = -18;
  v1 = 0xEE00657275746375;
  v2 = 0x7274736172666E49;
  v3 = *(v0 + 32);
  v4 = 0xE300000000000000;
  v5 = 5128526;
  v6 = 0xE800000000000000;
  v7 = 0x61746144204E414ELL;
  if (v3 != 3)
  {
    v7 = 0x6574614C20776F4CLL;
    v6 = 0xEB0000000079636ELL;
  }

  if (v3 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  if (*(v0 + 32))
  {
    v2 = 1279547201;
    v1 = 0xE400000000000000;
  }

  if (*(v0 + 32) <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v5;
  }

  if (*(v0 + 32) <= 1u)
  {
    v9 = v1;
  }

  else
  {
    v9 = v4;
  }

  v10 = v9;
  String.append(_:)(*&v8);

  v11._countAndFlagsBits = 8250;
  v11._object = 0xE200000000000000;
  String.append(_:)(v11);
  String.append(_:)(*(v0 + 16));
  v12._countAndFlagsBits = 93;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  return v14[0];
}

uint64_t sub_10010F5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v27 = a2;
  v28 = a3;
  v26 = a1;
  v29 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = __chkstk_darwin();
  v17 = &v24 - v16;
  if (a5)
  {
    v18 = a5;
    v19 = a4;
  }

  else
  {
    v19 = (*(a8 + 40))(a6, a8, v15);
    v18 = v20;
  }

  v21 = *(a7 + 56);

  v21(a6, a7);
  v22 = AssociatedTypeWitness;
  (*(v29 + 24))(v26, v27, v28, 0, v19, v18, AssociatedTypeWitness);
  (*(v14 + 8))(v17, v22);
}

uint64_t sub_10010F778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a2;
  v21 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = __chkstk_darwin();
  v16 = &v20 - v15;
  (*(a5 + 56))(a4, a5, v14);
  v17 = (*(a6 + 40))(a4, a6);
  (*(a7 + 32))(a1, v20, v21, 0, v17, v18, AssociatedTypeWitness, a7);
  (*(v13 + 8))(v16, AssociatedTypeWitness);
}

uint64_t sub_10010F904(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v9 = swift_slowAlloc();
  *v9 = 0;
  *(v9 + 8) = 0;
  if (a3)
  {
    v10 = a3;
  }

  else
  {
    a2 = *(v3 + 16);
    v10 = *(v3 + 24);
  }

  AppleDevice.getRequest(requestType:data:on:)(a1, v9, v9 + 12, 0, a2, v10);

  if (!v4)
  {
    v5 = *v9;
  }

  return v5;
}

uint64_t sub_10010FA00(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v9 = swift_slowAlloc();
  v9[1] = 0;
  v9[2] = 0;
  *v9 = 0;
  if (a3)
  {
    v10 = a3;
  }

  else
  {
    a2 = *(v3 + 16);
    v10 = *(v3 + 24);
  }

  AppleDevice.getRequest(requestType:data:on:)(a1, v9, (v9 + 3), 0, a2, v10);

  if (!v4)
  {
    v5 = *v9;
  }

  return v5;
}

uint64_t sub_10010FB04(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v9 = swift_slowAlloc();
  *v9 = 0;
  *(v9 + 8) = 0;
  if (a3)
  {
    v10 = a3;
  }

  else
  {
    a2 = *(v3 + 16);
    v10 = *(v3 + 24);
  }

  AppleDevice.getRequest(requestType:data:on:)(a1, v9, v9 + 12, 0, a2, v10);

  if (!v4)
  {
    v5 = *v9;
  }

  return v5;
}

uint64_t sub_10010FC00(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v9 = swift_slowAlloc();
  *v9 = 0;
  if (a3)
  {
    v10 = a3;
  }

  else
  {
    a2 = *(v3 + 16);
    v10 = *(v3 + 24);
  }

  AppleDevice.getRequest(requestType:data:on:)(a1, v9, (v9 + 1), 0, a2, v10);

  if (!v4)
  {
    v5 = *v9;
  }

  return v5;
}

uint64_t sub_10010FCE0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v10 = swift_slowAlloc();
  bzero(v10, 0xE88uLL);
  if (a3)
  {
    v11 = a3;
  }

  else
  {
    a2 = *(v4 + 16);
    v11 = *(v4 + 24);
  }

  AppleDevice.getRequest(requestType:data:on:)(a1, v10, v10 + 3720, 0, a2, v11);

  if (!v5)
  {
    memcpy(a4, v10, 0xE88uLL);
  }
}

uint64_t sub_10010FDD4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v10 = swift_slowAlloc();
  bzero(v10, 0xFB8uLL);
  if (a3)
  {
    v11 = a3;
  }

  else
  {
    a2 = *(v4 + 16);
    v11 = *(v4 + 24);
  }

  AppleDevice.getRequest(requestType:data:on:)(a1, v10, v10 + 4024, 0, a2, v11);

  if (!v5)
  {
    memcpy(a4, v10, 0xFB8uLL);
  }
}

uint64_t sub_10010FEC8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_slowAlloc();
  *v8 = 0;
  if (a3)
  {
    v9 = a3;
  }

  else
  {
    a2 = *(v3 + 16);
    v9 = *(v3 + 24);
  }

  AppleDevice.getRequest(requestType:data:on:)(a1, v8, (v8 + 8), 0, a2, v9);

  if (v4)
  {
  }

  v11 = *v8;
  v12 = *(v8 + 1);

  return v11 | (v12 << 32);
}

uint64_t sub_10010FFC0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = swift_slowAlloc();
  *v10 = 0;
  *(v10 + 8) = 0;
  if (a3)
  {
    v11 = a3;
  }

  else
  {
    a2 = *(v4 + 16);
    v11 = *(v4 + 24);
  }

  AppleDevice.getRequest(requestType:data:on:)(a1, v10, v10 + 12, 0, a2, v11);

  if (!v5)
  {
    *a4 = *v10;
    *(a4 + 8) = *(v10 + 8);
  }
}

uint64_t sub_1001100B4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v9 = swift_slowAlloc();
  *v9 = 0;
  if (a3)
  {
    v10 = a3;
  }

  else
  {
    a2 = *(v3 + 16);
    v10 = *(v3 + 24);
  }

  AppleDevice.getRequest(requestType:data:on:)(a1, v9, (v9 + 1), 0, a2, v10);

  if (!v4)
  {
    v5 = *v9;
  }

  return v5;
}

uint64_t sub_1001101A8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v9 = swift_slowAlloc();
  *v9 = 0;
  if (a3)
  {
    v10 = a3;
  }

  else
  {
    a2 = *(v3 + 16);
    v10 = *(v3 + 24);
  }

  AppleDevice.getRequest(requestType:data:on:)(a1, v9, (v9 + 1), 0, a2, v10);

  if (!v4)
  {
    v5 = *v9;
  }

  return v5;
}

uint64_t sub_100110288(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v9 = swift_slowAlloc();
  *v9 = 0;
  v9[1] = 0;
  if (a3)
  {
    v10 = a3;
  }

  else
  {
    a2 = *(v3 + 16);
    v10 = *(v3 + 24);
  }

  AppleDevice.getRequest(requestType:data:on:)(a1, v9, (v9 + 2), 0, a2, v10);

  if (!v4)
  {
    v5 = *v9;
  }

  return v5;
}

uint64_t sub_100110380(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_slowAlloc();
  *v8 = 0;
  *(v8 + 2) = 0;
  if (a3)
  {
    v9 = a3;
  }

  else
  {
    a2 = *(v3 + 16);
    v9 = *(v3 + 24);
  }

  AppleDevice.getRequest(requestType:data:on:)(a1, v8, v8 + 3, 0, a2, v9);

  if (v4)
  {
  }

  v11 = *(v8 + 2);
  v12 = *v8;

  return v12 | (v11 << 16);
}

uint64_t sub_100110478@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v10 = swift_slowAlloc();
  bzero(v10, 0x2720uLL);
  if (a3)
  {
    v11 = a3;
  }

  else
  {
    a2 = *(v4 + 16);
    v11 = *(v4 + 24);
  }

  AppleDevice.getRequest(requestType:data:on:)(a1, v10, v10 + 10016, 0, a2, v11);

  if (!v5)
  {
    memcpy(a4, v10, 0x2720uLL);
  }
}

uint64_t sub_100110570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = *(*(a6 - 8) + 64);
  v16 = swift_slowAlloc();
  v17 = v16;
  if (v15)
  {
    bzero(v16, v15);
  }

  sub_10010F5C4(a1, v17, v17 + v15, a3, a4, a5, a7, a8, a9);
  if (!v19)
  {
    UnsafeMutableRawBufferPointer.load<A>(fromByteOffset:as:)();
  }
}

double sub_1001106AC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[0] = a2;
  v8[1] = a3;
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);

  AppleDevice.setRequest(requestType:data:on:)(a1, v8, &v9, 0, v5, v6);

  return result;
}

double sub_100110768(unint64_t a1, uint64_t a2)
{
  v7 = a2;
  v8 = BYTE4(a2);
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);

  AppleDevice.setRequest(requestType:data:on:)(a1, &v7, &v9, 0, v4, v5);

  return result;
}

double sub_10011082C(unint64_t a1, _OWORD *a2)
{
  v4 = a2[1];
  v9[0] = *a2;
  v9[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);

  AppleDevice.setRequest(requestType:data:on:)(a1, v9, &v10, 0, v6, v7);

  return result;
}

double sub_1001108F4(unint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v4;
  v8[2] = *(a2 + 32);
  v9 = *(a2 + 48);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);

  AppleDevice.setRequest(requestType:data:on:)(a1, v8, &v10, 0, v5, v6);

  return result;
}

double sub_1001109C4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[0] = a2;
  v9[1] = a3;
  v9[2] = a4;
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);

  AppleDevice.setRequest(requestType:data:on:)(a1, v9, &v10, 0, v6, v7);

  return result;
}

double sub_100110A84(unint64_t a1, uint64_t a2, __int16 a3)
{
  v8 = a2;
  v9 = a3;
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);

  AppleDevice.setRequest(requestType:data:on:)(a1, &v8, &v10, 0, v5, v6);

  return result;
}

double sub_100110B44(unint64_t a1, uint64_t a2)
{
  v7 = a2;
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);

  AppleDevice.setRequest(requestType:data:on:)(a1, &v7, &v8, 0, v4, v5);

  return result;
}

double sub_100110C00(unint64_t a1, int a2, uint64_t a3)
{
  v8 = a2;
  v9 = a3;
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);

  AppleDevice.setRequest(requestType:data:on:)(a1, &v8, &v10, 0, v5, v6);

  return result;
}

double sub_100110CC0(unint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v9[0] = a2;
  v9[1] = a3;
  v10 = a4;
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);

  AppleDevice.setRequest(requestType:data:on:)(a1, v9, &v11, 0, v6, v7);

  return result;
}

uint64_t sub_100110D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a4 - 8);
  v15 = __chkstk_darwin();
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, v15);
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v27 = a7;
  v28 = v7;
  v29 = a1;
  v18 = sub_10005DC58(&qword_10058C830, &qword_1004821F0);
  sub_10029F448(v17, sub_10011AED0, v22, a4, v18, &type metadata for () + 8, &protocol self-conformance witness table for Error, &v21);
  return (*(v14 + 8))(v17, a4);
}

char *sub_100110F38@<X0>(char *result@<X0>, uint64_t a2@<X1>, uint64_t a5@<X4>, char **a7@<X8>)
{
  v7 = *(a2 + 12);
  if (*(a2 + 12))
  {
    v9 = result;
    v10 = 0;
    v11 = _swiftEmptyArrayStorage;
    v19 = result;
    v18 = *(a2 + 12);
    do
    {
      v22 = v10;
      result = sub_1001110B4(&v22, v9, &v20);
      v13 = v20 | (v21 << 32);
      if ((v13 & 0xFF00000000) != 0x300000000)
      {
        v14 = a5;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100011C2C(0, *(v11 + 2) + 1, 1, v11);
          v11 = result;
        }

        v16 = *(v11 + 2);
        v15 = *(v11 + 3);
        if (v16 >= v15 >> 1)
        {
          result = sub_100011C2C((v15 > 1), v16 + 1, 1, v11);
          v11 = result;
        }

        *(v11 + 2) = v16 + 1;
        v12 = &v11[8 * v16];
        *(v12 + 8) = v13;
        v12[36] = BYTE4(v13);
        v12[37] = BYTE5(v13);
        a5 = v14;
        v9 = v19;
        v7 = v18;
      }

      ++v10;
    }

    while (v10 != v7);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  *a7 = v11;
  return result;
}

unint64_t sub_1001110B4@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  result = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  if (v7)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = *(&type metadata for UInt8 - 1);
  v9 = *(v8 + 16);
  v10 = *(v8 + 72) * v5;
  v9(&v22, a2 + result + v10);

  v18 = v22;
  swift_getKeyPath();
  result = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  if (v11)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  (v9)(&v21, a2 + result + v10, &type metadata for UInt8);

  v12 = v21;
  swift_getKeyPath();
  result = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  if (v13)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  (v9)(&v20, a2 + result + v10, &type metadata for UInt8);

  v14 = v20;
  swift_getKeyPath();
  result = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  if (v15)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  if (v14)
  {
    v16 = ((v12 != 0) << 8) | 4;
  }

  else
  {
    v16 = (v12 != 0) << 8;
  }

  (v9)(&v19, a2 + result + v10, &type metadata for UInt8);

  if (v19)
  {
    v17 = v16 | 0x400;
  }

  else
  {
    v17 = v16;
  }

  result = sub_100032064(v18, v17);
  *a3 = result;
  *(a3 + 4) = WORD2(result);
  return result;
}

void sub_10011128C(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t *), unint64_t a4)
{
  v10 = 0;
  v6 = a3(a1, &v10);
  v7 = v10;
  v8 = a2[2];
  v9 = a2[3];

  AppleDevice.setRequest(requestType:data:on:)(a4, v6, v6 + v7, 0, v8, v9);

  free(v6);
}

void sub_100111374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t *), uint64_t a8)
{
  v14 = 0;
  v13 = a7(a1, &v14);
  sub_10010F778(a8, v13, v13 + v14, a3, a4, a5, a6);
  free(v13);
}

uint64_t DeviceDriver<>.userspaceP2POptions.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for apple80211_userspace_p2p_options_t(0);
  sub_100110570(389, v8, 0, 0, a1, v8, a2, *(a3 + 16), a4);
  return v10;
}

uint64_t DeviceDriver<>.update(userspaceP2POptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a1;
  v11 = 1;
  type metadata accessor for apple80211_userspace_p2p_options_t(0);
  return sub_100110D80(389, &v11, a2, v9, a3, *(a4 + 16), a5);
}

uint64_t sub_100111558(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *a2;
  if (a2[8])
  {
    v13 = 0;
    v14 = 0;
    *(&v16 + 1) = a2[3];
    *&v16 = *(a2 + 1);
    v15 = v16 >> 32;
    v17 = v12 | (v16 << 32);
    v18 = 28;
    v19 = 30;
    LODWORD(v12) = 0;
  }

  else
  {
    v19 = 0;
    v18 = 0;
    v17 = 0;
    v15 = 0;
    v14 = 16;
    v13 = 2;
  }

  v22 = 1;
  v23 = a1;
  v24 = BYTE2(a1);
  v25 = BYTE3(a1);
  v26 = BYTE4(a1);
  v27 = BYTE5(a1);
  v28 = 0;
  v29 = v14;
  v30 = v13;
  v31 = 0;
  v32 = v12;
  v33 = 0;
  v34 = v18;
  v35 = v19;
  v36 = 0;
  v37 = 0;
  v38 = v17;
  v39 = v15;
  v40 = 0;
  type metadata accessor for apple80211_infra_peer_address_data(0);
  return sub_100110D80(a3, &v22, a4, v20, a5, *(a6 + 16), a7);
}

uint64_t sub_100111684(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v8 = HIDWORD(a3);
  v9 = a4;
  v10 = a5;
  v11 = a6;
  if (((1 << (a2 & 7)) & ~*(&v8 + (a2 >> 3))) == 0)
  {
    swift_beginAccess();
    return sub_10029F424();
  }

  return result;
}

uint64_t sub_100111708@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, int64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X5>, uint64_t a6@<X7>, char *a7@<X8>, uint64_t a8)
{
  v84 = a6;
  v98 = a3;
  v95 = a8;
  v11 = *a1;
  v12 = *a2;
  v88 = a2;
  v13 = v12;
  v14 = type metadata accessor for Optional();
  v82 = *(v14 - 8);
  v83 = v14;
  __chkstk_darwin();
  v85 = &v78 - v15;
  v86 = *(a5 - 1);
  __chkstk_darwin();
  v81 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = class metadata base offset for KeyPath;
  v18 = *(v13 + class metadata base offset for KeyPath + 8);
  v19 = type metadata accessor for Optional();
  v90 = *(v19 - 8);
  v91 = v19;
  __chkstk_darwin();
  v94 = &v78 - v20;
  v93 = *(v18 - 8);
  __chkstk_darwin();
  v89 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v92 = &v78 - v22;
  v23 = *(v11 + v17);
  type metadata accessor for Optional();
  __chkstk_darwin();
  v25 = &v78 - v24;
  v97 = *(v23 - 8);
  v26 = *(v97 + 64);
  __chkstk_darwin();
  v96 = &v78 - v27;
  result = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  if ((v29 & 1) == 0)
  {
    v87 = a5;
    v30 = 0;
    v31 = a4 >> 62;
    if ((a4 >> 62) > 1)
    {
      v32 = v98;
      if (v31 == 2)
      {
        v30 = *(v98 + 16);
      }
    }

    else
    {
      v32 = v98;
      if (v31)
      {
        v30 = v98;
      }
    }

    v33 = v30 + v26;
    if (__OFADD__(v30, v26))
    {
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    if (v31 > 1)
    {
      if (v31 == 2)
      {
        if (v33 >= *(v32 + 24))
        {
          goto LABEL_20;
        }

        goto LABEL_16;
      }

      if (v33 < 0)
      {
LABEL_65:
        __break(1u);
        return result;
      }
    }

    else
    {
      if (!v31)
      {
        if (v33 >= BYTE6(a4))
        {
          goto LABEL_20;
        }

LABEL_16:
        if (v31)
        {
          if (v31 == 2)
          {
            v34 = *(v32 + 16);
          }

          else
          {
            v34 = v32;
          }
        }

        else
        {
          v34 = 0;
        }

        if (v33 < v34)
        {
          goto LABEL_65;
        }

        v80 = a7;
        v79 = result;
        v37 = Data._Representation.subscript.getter();
        v39 = v38;
        Data.load<A>(as:)(v37, v38, v23, v25);
        sub_1000124C8(v37, v39);
        v40 = v97;
        (*(v97 + 56))(v25, 0, 1, v23);
        v41 = v96;
        v78 = *(v40 + 32);
        v78(v96, v25, v23);
        if (v31)
        {
          v42 = v94;
          v43 = a4;
          v44 = v98;
          if (v31 == 2)
          {
            v45 = *(v98 + 16);
            result = v45 + v79;
            v46 = v80;
            if (__OFADD__(v45, v79))
            {
LABEL_62:
              __break(1u);
              goto LABEL_63;
            }

            if (result >= *(v98 + 24))
            {
              goto LABEL_37;
            }

LABEL_32:
            if (v31)
            {
              if (v31 != 2)
              {
                v52 = v92;
                v48 = v44;
                v47 = v44 >> 32;
                goto LABEL_41;
              }

              v48 = *(v44 + 16);
              v47 = *(v44 + 24);
            }

            else
            {
              v48 = 0;
              v47 = BYTE6(v43);
            }

            v52 = v92;
LABEL_41:
            if (v47 >= result && v47 >= v48)
            {
              result = Data._Representation.subscript.getter();
              v54 = v53 >> 62;
              v98 = v53;
              v95 = result;
              if ((v53 >> 62) > 1)
              {
                if (v54 != 2)
                {
                  v55 = 0;
                  goto LABEL_53;
                }

                v57 = *(result + 16);
                v56 = *(result + 24);
                v58 = __OFSUB__(v56, v57);
                v55 = v56 - v57;
                if (!v58)
                {
                  goto LABEL_53;
                }

                __break(1u);
              }

              else if (!v54)
              {
                v55 = BYTE6(v53);
LABEL_53:
                v99[0] = v55;
                sub_100086E78();
                dispatch thunk of Numeric.init<A>(exactly:)();
                v59 = v93;
                if ((*(v93 + 48))(v42, 1, v18) == 1)
                {
                  (*(v97 + 8))(v96, v23);
                  sub_1000124C8(v95, v98);
                  (*(v90 + 8))(v42, v91);
                  v60 = v80;
                }

                else
                {
                  (*(v59 + 32))(v52, v42, v18);
                  v61 = v89;
                  v62 = v96;
                  swift_getAtKeyPath();
                  v63 = dispatch thunk of static Equatable.== infix(_:_:)();
                  v64 = v61;
                  v65 = *(v59 + 8);
                  v65(v64, v18);
                  v66 = v59 + 8;
                  v60 = v80;
                  if (v63)
                  {
                    v93 = v66;
                    v94 = v65;
                    type metadata accessor for BinaryDecoder();
                    v67 = v85;
                    v68 = v87;
                    v69 = v95;
                    v70 = v98;
                    v71 = static BinaryDecoder.decode<A>(_:data:)(v87, v95, v98, v87);
                    (v94)(v92, v18, v71);
                    sub_1000124C8(v69, v70);
                    v72 = v86;
                    (*(v86 + 56))(v67, 0, 1, v68);
                    v73 = *(v72 + 32);
                    v74 = v81;
                    v73(v81, v67, v68);
                    v75 = v68;
                    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
                    v77 = *(TupleTypeMetadata2 + 48);
                    v78(v60, v96, v23);
                    v73(&v60[v77], v74, v75);
                    return (*(*(TupleTypeMetadata2 - 8) + 56))(v60, 0, 1, TupleTypeMetadata2);
                  }

                  sub_1000124C8(v95, v98);
                  v65(v52, v18);
                  (*(v97 + 8))(v62, v23);
                }

                v49 = swift_getTupleTypeMetadata2();
                v50 = *(*(v49 - 8) + 56);
                v51 = v60;
                return v50(v51, 1, 1, v49);
              }

              LODWORD(v55) = HIDWORD(result) - result;
              if (!__OFSUB__(HIDWORD(result), result))
              {
                v55 = v55;
                goto LABEL_53;
              }

              goto LABEL_64;
            }

            goto LABEL_61;
          }

          result = v79 + v98;
          v46 = v80;
          if (__OFADD__(v79, v98))
          {
LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
            goto LABEL_65;
          }

          if (result < v98 >> 32)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v43 = a4;
          result = v79;
          v46 = v80;
          v42 = v94;
          v44 = v98;
          if (v79 < BYTE6(a4))
          {
            goto LABEL_32;
          }
        }

LABEL_37:
        (*(v40 + 8))(v41, v23, v44, v43);
        v49 = swift_getTupleTypeMetadata2();
        v50 = *(*(v49 - 8) + 56);
        v51 = v46;
        return v50(v51, 1, 1, v49);
      }

      if (v33 < v32 >> 32)
      {
        goto LABEL_16;
      }
    }
  }

LABEL_20:
  v35 = swift_getTupleTypeMetadata2();
  v36 = *(*(v35 - 8) + 56);

  return v36(a7, 1, 1, v35);
}

void sub_100112214(uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X4>, unint64_t a5@<X8>)
{
  v7 = *(a4 - 8);
  v8 = *(v7 + 64);
  v9 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v9 == 2)
    {
      v11 = *(a2 + 16);
      v10 = *(a2 + 24);
      v12 = __OFSUB__(v10, v11);
      v13 = v10 - v11;
      if (v12)
      {
        __break(1u);
        goto LABEL_18;
      }

      if (v8 == v13)
      {
        goto LABEL_8;
      }
    }

    else if (!v8)
    {
      goto LABEL_8;
    }

LABEL_13:
    v14 = 1;
    goto LABEL_14;
  }

  if (v9)
  {
    if (!__OFSUB__(HIDWORD(a2), a2))
    {
      if (v8 != HIDWORD(a2) - a2)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

LABEL_18:
    __break(1u);
    return;
  }

  if (v8 != BYTE6(a3))
  {
    goto LABEL_13;
  }

LABEL_8:
  v16 = *(a4 - 8);
  Data.load<A>(as:)(a2, a3, a4, a5);
  v14 = 0;
  v7 = v16;
LABEL_14:
  v15 = *(v7 + 56);

  v15(a5, v14, 1, a4);
}

uint64_t sub_100112350(unint64_t a1)
{
  v1 = HIDWORD(a1) == 1;
  if (a1 == 2)
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  if (a1 != 3)
  {
    v1 = v2;
  }

  if (a1 == 1)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_100112384(uint64_t a1, unsigned __int16 a2, uint64_t a3)
{
  v3 = 512;
  if (HIBYTE(a2) < 3u)
  {
    v3 = a2 & 0xFF00;
  }

  v4 = v3 & 0xFFFFFFFFFFFFFF00 | a2 | (a3 << 16);

  return v4;
}

unint64_t sub_10011243C(unsigned __int16 a1, unint64_t a2)
{
  if (BYTE6(a2) == 24)
  {
    v2 = a1;
    v3 = a2;
    _s7CoreP2P21NANActionFrameSubtypeO8rawValueACSgs5UInt8V_tcfC_0(HIBYTE(a2));
    a2 = v3;
    a1 = v2;
  }

  return a1 | (a2 << 16);
}

uint64_t sub_100112578(unint64_t a1, __int16 a2)
{
  LOWORD(v6) = HIWORD(a1);
  HIWORD(v6) = a2;
  v2 = (a1 >> 16) - 1;
  if (v2 >= 5)
  {
    v3 = 327680;
  }

  else
  {
    v3 = v2 << 16;
  }

  if ((v6 - 1) >= 3)
  {
    v4 = 50331648;
  }

  else
  {
    v4 = (v6 - 1) << 24;
  }

  return v3 & 0xFFFF0000 | a1 | v4;
}

int32x2_t sub_1001125C0@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 35);
  if (v3 < 0x3C1)
  {
    v4 = *(v1 + 31);
    if (v4)
    {
LABEL_3:
      if (v4 == 1)
      {
        memcpy(__dst, (v1 + 37), sizeof(__dst));
        v5 = sub_1002AAFAC(__dst, v3);
        v7 = v6;
        v8 = sub_100033AA8(_swiftEmptyArrayStorage);
        v9 = type metadata accessor for BinaryDecoder();
        v10 = swift_allocObject();
        v11 = 0;
        v10[5] = &_swiftEmptyDictionarySingleton;
        v10[2] = v5;
        v10[3] = v7;
        v12 = v7 >> 62;
        if ((v7 >> 62) > 1)
        {
          if (v12 == 2)
          {
            v11 = *(v5 + 16);
          }
        }

        else if (v12)
        {
          v11 = v5;
        }

        v10[4] = v11;
        swift_beginAccess();
        v10[5] = v8;
        v38 = v9;
        v39 = sub_10011AB40(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
        v37[0] = v10;
        sub_10000AB0C(v5, v7);

        v25 = sub_1001F5414(v37);
        v21 = v29;
        v22 = v30;
        LOBYTE(v23) = v31;

        sub_1000124C8(v5, v7);
        v23 = v23;
        v24 = 1;
      }

      else
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 3;
        v25 = 12;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v4 = *(v1 + 31);
    v3 = 960;
    if (v4)
    {
      goto LABEL_3;
    }
  }

  memcpy(__dst, (v1 + 37), sizeof(__dst));
  v13 = sub_1002AAFAC(__dst, v3);
  v15 = v14;
  v16 = sub_100033AA8(_swiftEmptyArrayStorage);
  v17 = type metadata accessor for BinaryDecoder();
  v18 = swift_allocObject();
  v19 = 0;
  v18[5] = &_swiftEmptyDictionarySingleton;
  v18[2] = v13;
  v18[3] = v15;
  v20 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    if (v20 == 2)
    {
      v19 = *(v13 + 16);
    }
  }

  else if (v20)
  {
    v19 = v13;
  }

  v18[4] = v19;
  swift_beginAccess();
  v18[5] = v16;
  v38 = v17;
  v39 = sub_10011AB40(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
  v37[0] = v18;
  sub_10000AB0C(v13, v15);

  LOBYTE(v25) = sub_10003132C(v37);
  v21 = v26;
  v22 = v27;
  v23 = v28;

  sub_1000124C8(v13, v15);
  v25 = v25;
  v24 = 2;
LABEL_18:
  v33 = *v1;
  v32 = *(v1 + 8);
  v34 = *(v1 + 4);
  *a1 = *(v1 + 6);
  result = vzip1_s32(v32, v33);
  *(a1 + 2) = result;
  *(a1 + 10) = v34;
  *(a1 + 16) = v25;
  *(a1 + 24) = v21;
  *(a1 + 32) = v22;
  *(a1 + 40) = v23;
  *(a1 + 48) = v24;
  return result;
}

CoreP2P::Channel::Band_optional __swiftcall Channel.Band.init(apple80211:)(__C::apple80211_channel_band apple80211)
{
  if (apple80211.rawValue >= 4)
  {
    return 3;
  }

  else
  {
    return (0x2010003u >> (8 * LOBYTE(apple80211.rawValue)));
  }
}

uint64_t sub_10011298C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10005DC58(&qword_10058D6A8, &qword_100487310);
  __chkstk_darwin();
  v5 = &v55 - v4;
  v6 = type metadata accessor for AWDLStatistics.LowLatencyStatistics.Configuration(0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 152);
  v11 = *(a1 + 184);
  v86[10] = *(a1 + 168);
  v86[11] = v11;
  v87 = *(a1 + 200);
  v12 = *(a1 + 88);
  v13 = *(a1 + 120);
  v86[6] = *(a1 + 104);
  v86[7] = v13;
  v14 = *(a1 + 136);
  v86[9] = v10;
  v86[8] = v14;
  v15 = *(a1 + 24);
  v16 = *(a1 + 56);
  v86[2] = *(a1 + 40);
  v86[3] = v16;
  v17 = *(a1 + 72);
  v86[5] = v12;
  v86[4] = v17;
  v18 = *(a1 + 8);
  v86[1] = v15;
  v86[0] = v18;
  sub_100114F34(v86, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100016290(v5, &qword_10058D6A8, &qword_100487310);
LABEL_5:
    v35 = type metadata accessor for AWDLStatistics.LowLatencyStatistics(0);
    return (*(*(v35 - 8) + 56))(a2, 1, 1, v35);
  }

  sub_100038FEC(v5, v9, type metadata accessor for AWDLStatistics.LowLatencyStatistics.Configuration);
  v19 = *(a1 + 208);
  v20 = *(a1 + 224);
  v73 = *(a1 + 232);
  v74 = v20;
  v21 = *(a1 + 240);
  v22 = *(a1 + 248);
  v23 = *(a1 + 256);
  v24 = *(a1 + 264);
  v25 = *(a1 + 272);
  v26 = *(a1 + 280);
  v27 = *(a1 + 296);
  v71 = *(a1 + 288);
  v72 = v25;
  v28 = *(a1 + 312);
  v69 = *(a1 + 304);
  v70 = v27;
  v29 = *(a1 + 328);
  v67 = *(a1 + 320);
  v68 = v28;
  v30 = *(a1 + 344);
  v65 = *(a1 + 336);
  v66 = v29;
  v31 = *(a1 + 360);
  v63 = *(a1 + 352);
  v64 = v30;
  v32 = *(a1 + 376);
  v61 = *(a1 + 368);
  v62 = v31;
  v33 = *(a1 + 392);
  v59 = *(a1 + 384);
  v60 = v32;
  v34 = *(a1 + 408);
  v57 = *(a1 + 400);
  v58 = v33;
  v55 = *(a1 + 416);
  v56 = v34;
  memcpy(v85, (a1 + 424), sizeof(v85));
  sub_100118450(v85, v84);
  if (sub_10011AF1C(v84) == 1)
  {
    sub_10003B8D4(v9, type metadata accessor for AWDLStatistics.LowLatencyStatistics.Configuration);
    goto LABEL_5;
  }

  v81 = v84[6];
  v82 = v84[7];
  v83 = v84[8];
  v77 = v84[2];
  v78 = v84[3];
  v79 = v84[4];
  v80 = v84[5];
  v75 = v84[0];
  v76 = v84[1];
  sub_100038FEC(v9, a2, type metadata accessor for AWDLStatistics.LowLatencyStatistics.Configuration);
  v37 = type metadata accessor for AWDLStatistics.LowLatencyStatistics(0);
  v38 = a2 + *(v37 + 20);
  v39 = v76;
  *(v38 + 216) = v75;
  v40 = v83;
  *(v38 + 328) = v82;
  *(v38 + 344) = v40;
  v41 = v81;
  *(v38 + 296) = v80;
  *(v38 + 312) = v41;
  v42 = v79;
  v43 = v77;
  *(v38 + 264) = v78;
  *(v38 + 280) = v42;
  *(v38 + 248) = v43;
  *v38 = v19;
  *(v38 + 8) = v26;
  v44 = v73;
  *(v38 + 16) = v74;
  *(v38 + 24) = v44;
  *(v38 + 32) = v21;
  *(v38 + 40) = v22;
  *(v38 + 48) = v23;
  *(v38 + 56) = v24;
  v45 = v71;
  *(v38 + 64) = v72;
  *(v38 + 72) = v26;
  v46 = v69;
  v47 = v70;
  *(v38 + 80) = v45;
  *(v38 + 88) = v47;
  *(v38 + 96) = v46;
  v48 = v67;
  *(v38 + 104) = v68;
  *(v38 + 112) = v48;
  v49 = v65;
  *(v38 + 120) = v66;
  *(v38 + 128) = v49;
  v50 = v63;
  *(v38 + 136) = v64;
  *(v38 + 144) = v50;
  v51 = v61;
  *(v38 + 152) = v62;
  *(v38 + 160) = v51;
  v52 = v59;
  *(v38 + 168) = v60;
  *(v38 + 176) = v52;
  v53 = v57;
  *(v38 + 184) = v58;
  *(v38 + 192) = v53;
  v54 = v55;
  *(v38 + 200) = v56;
  *(v38 + 208) = v54;
  *(v38 + 232) = v39;
  return (*(*(v37 - 8) + 56))(a2, 0, 1, v37);
}

uint64_t sub_100112D70@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin();
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 16);
  if (v8 < 0)
  {
    Logger.init(subsystem:category:)();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 67109120;
      *(v15 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v13, v14, "Received negative chain_rssi_present (%d) in AWDL Action Frame header.", v15, 8u);
    }

    (*(v4 + 8))(v7, v3);
    v16 = type metadata accessor for AWDLActionFrame.Header(0);
    return (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
  }

  else
  {
    v9 = *v1;
    v5.n128_u32[0] = *(v1 + 2);
    v32 = vmovl_u8(v5.n128_u64[0]);
    v10 = sub_100032064(*(v1 + 4), *(v1 + 5));
    v33 = v8;
    if ((v10 & 0xFF00000000) == 0x300000000)
    {
      if (qword_10058AA90 != -1)
      {
        swift_once();
      }

      v11 = static Channel.awdlSocial2GHz;
      v31 = byte_10059B61C;
      v12 = byte_10059B61D;
    }

    else
    {
      v11 = v10;
      v31 = HIDWORD(v10);
      v12 = v10 >> 40;
    }

    v30 = v12;
    v18 = *(v1 + 6);
    v19 = type metadata accessor for AWDLActionFrame.Header(0);
    v20 = v19[8];
    *(a1 + v20) = *(v1 + 7);
    v21 = enum case for DispatchTimeInterval.milliseconds(_:);
    v22 = type metadata accessor for DispatchTimeInterval();
    v23 = *(*(v22 - 8) + 104);
    v23(a1 + v20, v21, v22);
    v24 = v19[9];
    *(a1 + v24) = *(v1 + 8);
    v23(a1 + v24, v21, v22);
    LODWORD(v21) = *(v1 + 9);
    LODWORD(v22) = *(v1 + 10);
    LODWORD(v20) = *(v1 + 12);
    v25 = *(v1 + 11);
    v26 = v1[7];
    sub_10005DC58(&qword_10058D6B0, &qword_100487318);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_100486AE0;
    *(v27 + 32) = *(v1 + 17);
    *a1 = v9;
    *(a1 + 8) = vuzp1_s8(*v32.i8, *v32.i8).u32[0];
    *(a1 + 12) = v11;
    v28 = v30;
    *(a1 + 16) = v31;
    *(a1 + 17) = v28;
    *(a1 + 20) = v18;
    *(a1 + v19[10]) = v21;
    *(a1 + v19[11]) = v22;
    *(a1 + v19[12]) = v25;
    *(a1 + v19[13]) = v20;
    *(a1 + v19[14]) = v26;
    *(a1 + v19[15]) = v33;
    *(a1 + v19[16]) = v27;
    v29 = *(*(v19 - 1) + 56);

    return v29(a1, 0, 1, v19);
  }
}

unint64_t sub_100113168()
{
  v1 = v0;
  memcpy(__dst, v0, sizeof(__dst));
  v13 = _swiftEmptyArrayStorage;
  sub_1000C0604(0, 10, 0);
  v2 = 0;
  v3 = _swiftEmptyArrayStorage;
  while (1)
  {
    v4 = *&__dst[v2 + 16];
    v10 = *&__dst[v2];
    v11[0] = v4;
    *(v11 + 12) = *&__dst[v2 + 28];
    sub_100114808(&v10, v12);
    v13 = v3;
    v6 = v3[2];
    v5 = v3[3];
    if (v6 >= v5 >> 1)
    {
      sub_1000C0604((v5 > 1), v6 + 1, 1);
      v3 = v13;
    }

    v3[2] = v6 + 1;
    v7 = v3 + 14 * v6;
    v8 = *&v12[6];
    *(v7 + 4) = *v12;
    *(v7 + 38) = v8;
    if (v2 == 396)
    {
      break;
    }

    v2 += 44;
  }

  return v1[115] | (*(v1 + 464) << 32) | (*(v1 + 465) << 40);
}

__n128 sub_100113290@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a1;
  v6 = a1 & 0xFFFF0000;
  if ((a1 & 0xFFFF0000) != 0)
  {
    v22 = a2;
    v23 = a3;
    v7 = sub_10004F3B0(&v22, v24);
    v9 = v8;
    v13 = sub_1002A58C4(v7, v8);
    v15 = v14;
    sub_1000124C8(v7, v9);
  }

  else
  {
    LOBYTE(v22) = BYTE4(a1);
    BYTE1(v22) = BYTE5(a1);
    BYTE2(v22) = BYTE6(a1);
    BYTE3(v22) = HIBYTE(a1);
    v10 = sub_10004F3B0(&v22, &v22 + 4);
    v12 = v11;
    v16 = sub_10003462C(v10, v11);
    sub_1000124C8(v10, v12);
    v15 = 0;
    v13 = v16;
  }

  v22 = v13;
  v23 = v15;
  v24[0] = 0;
  v24[1] = 0;
  v25 = v6 != 0;
  sub_1000E5728(&v22, v20);
  v17 = v21;
  sub_10011AF34(v13, v15, 0, 0, v6 != 0);
  result = v20[0];
  v19 = v20[1];
  *a4 = v4;
  *(a4 + 24) = v19;
  *(a4 + 8) = result;
  *(a4 + 40) = v17;
  return result;
}

void sub_100113440(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = 0;
  v4 = sub_1004771E4(a1, a2, &v8);
  v5 = v8;
  v6 = a3[2];
  v7 = a3[3];

  AppleDevice.setRequest(requestType:data:on:)(0xA2uLL, v4, v4 + v5, 0, v6, v7);

  free(v4);
}

void sub_100113518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = 0;
  v9 = sub_1004771E4(a1, a2, &v14);
  v10 = v14;
  v11 = *(a6 + 8);
  v12 = *(a5 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_10010F778(162, v9, v9 + v10, a4, v11, v12, AssociatedConformanceWitness);
  free(v9);
}

uint64_t sub_100113628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = *(a6 + 8);
  v13 = *(a5 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_10010F778(120, a1, a2, a4, v12, v13, AssociatedConformanceWitness);
  if (v7)
  {
    *a7 = v7;
  }

  return result;
}

uint64_t sub_1001136FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAtKeyPath();
  v6 = *(a5 + 16);
  if (v6 >= 0x10)
  {
    v7 = 16;
  }

  else
  {
    v7 = *(a5 + 16);
  }

  v8 = swift_modifyAtWritableKeyPath();
  v9 = v8;
  v11 = v10;
  if (v6)
  {
    v29 = v8;
    v12 = (a5 + 32);
    sub_1000C0644(0, v7, 0);
    v13 = v7;
    while (1)
    {
      v14 = *v12;
      v15 = *(v12 + 1);
      v16 = v15 >> 62;
      if ((v15 >> 62) <= 1)
      {
        break;
      }

      if (v16 == 2)
      {
        v18 = *(v14 + 16);
        v19 = *(v14 + 24);
        v20 = __OFSUB__(v19, v18);
        v17 = v19 - v18;
        if (v20)
        {
          goto LABEL_30;
        }

        goto LABEL_15;
      }

LABEL_16:
      sub_1000BA0A4();
      v21 = DataProtocol.copyBytes(to:)();
      if ((v21 & 0x8000000000000000) != 0)
      {
        goto LABEL_27;
      }

      if (v21 >> 16)
      {
        goto LABEL_28;
      }

      v31 = v21;
      v23 = _swiftEmptyArrayStorage[2];
      v22 = _swiftEmptyArrayStorage[3];
      if (v23 >= v22 >> 1)
      {
        sub_1000C0644((v22 > 1), v23 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v23 + 1;
      v24 = _swiftEmptyArrayStorage + 34 * v23;
      *(v24 + 32) = v31;
      *(v24 + 2) = 0u;
      *(v24 + 3) = 0u;
      ++v12;
      if (!--v13)
      {
        v9 = v29;
        goto LABEL_22;
      }
    }

    if (v16)
    {
      LODWORD(v17) = DWORD1(v14) - v14;
      if (__OFSUB__(DWORD1(v14), v14))
      {
        goto LABEL_29;
      }

      v17 = v17;
    }

    else
    {
      v17 = BYTE6(v15);
    }

LABEL_15:
    if (v17 > 32)
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }

    goto LABEL_16;
  }

LABEL_22:
  v25 = _swiftEmptyArrayStorage[2];
  if (v25)
  {
    v26 = &_swiftEmptyArrayStorage[4];
    do
    {
      v27 = *v26;
      v30 = *(v26 + 1);
      *(v11 + 32) = *(v26 + 16);
      *v11 = v27;
      *(v11 + 16) = v30;
      v11 += 34;
      v26 = (v26 + 34);
      --v25;
    }

    while (v25);
  }

  v9(v32, 0);
  return swift_setAtWritableKeyPath();
}

uint64_t sub_1001139B4@<X0>(uint64_t a1@<X8>)
{
  v7 = *v1;
  v8 = sub_1000D3CF8(3, 2uLL, *v1, a1);
  if (v2)
  {
    swift_unexpectedError();
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v10 = v8;
  v11 = sub_1000E5558(5, 2uLL, v7, v9);
  v13 = 0.0;
  if (v11 < 5)
  {
    v13 = v11 * 0.2 * 5.0;
    if (COERCE__INT64(fabs(v13)) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_23:
      __break(1u);
LABEL_24:
      swift_once();
      goto LABEL_10;
    }

    if (v13 <= -1.0)
    {
      __break(1u);
    }

    else
    {
      v12 = 0x4070000000000000;
      if (v13 < 256.0)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_6:
  v14 = sub_1000E5558(8, 4uLL, v7, v12);
  v3 = v14;
  if ((v14 & 0x8000000000000000) != 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v14 > 0xFF)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v30 = v10;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v10 = *(v1 + 24);
  v34 = a1;
  if (v10 >> 60 != 15)
  {
    v15 = v4;
    v17 = v5;
    v19 = v10;
    goto LABEL_12;
  }

  if (qword_10058A7E0 != -1)
  {
    goto LABEL_24;
  }

LABEL_10:
  v15 = TimeBitmap.nanBitmap.getter(static TimeBitmap.zero, *(&static TimeBitmap.zero + 1), qword_10059B370);
  v17 = v16;
  v19 = v18;
LABEL_12:
  sub_10005D4F4(v4, v5, v10);
  sub_100113EC8(v15, v17, v19, v31);
  result = sub_1000124C8(v17, v19);
  *&v33[17] = v31[1];
  *&v33[33] = v31[2];
  *&v33[49] = *v32;
  *&v33[63] = *&v32[14];
  *&v33[1] = v31[0];
  if ((*(v1 + 48) & 1) != 0 && (v21 = *(v1 + 40), *(v21 + 16)))
  {
    v22 = *(v21 + 32);
    v23 = *(v21 + 34);
    v24 = *(v21 + 36);
    if (*(v21 + 40))
    {
      v25 = 0;
    }

    else
    {
      v25 = *(v21 + 38);
    }

    v27 = v34;
    v28 = *v33;
    *(v34 + 19) = *&v33[16];
    v29 = *&v33[48];
    *(v27 + 35) = *&v33[32];
    *(v27 + 51) = v29;
    *v27 = v30;
    *(v27 + 1) = v13;
    *(v27 + 2) = v3;
    *(v27 + 66) = *&v33[63];
    *(v27 + 3) = v28;
    *(v27 + 74) = v22;
    *(v27 + 75) = v24;
    *(v27 + 76) = v23;
    *(v27 + 78) = v25;
  }

  else
  {
    sub_10000B02C();
    swift_allocError();
    *v26 = xmmword_100481860;
    *(v26 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100113CAC(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  if (v5)
  {
    v7 = a3;
    v8 = result;
    v30 = HIDWORD(a3);
    v31 = a3 >> 40;
    v36 = v4;
    v10 = *(a4 + 48);
    v9 = *(a4 + 56);
    v29 = v5;
    v11 = a3 >> 24;
    v12 = a3 >> 16;
    v28 = *(a4 + 32);
    v13 = *(a4 + 40);
    v14 = a3 >> 8;
    sub_10000AB0C(v10, v9);
    sub_10000AB0C(v10, v9);
    sub_100113EC8(v13, v10, v9, &v32);
    sub_1000124C8(v10, v9);
    v15 = v32;
    *(v8 + 24) = v33;
    v16 = *v35;
    *(v8 + 40) = v34;
    *(v8 + 56) = v16;
    *v8 = v7;
    v27 = v14;
    *(v8 + 1) = v14;
    *(v8 + 2) = v12;
    *(v8 + 3) = v11;
    *(v8 + 4) = v30;
    *(v8 + 5) = v31;
    *(v8 + 6) = v28;
    *(v8 + 7) = 1;
    *(v8 + 70) = *&v35[14];
    *(v8 + 8) = v15;
    result = sub_1000124C8(v10, v9);
    if (v29 != 1)
    {
      v18 = *(a4 + 80);
      v17 = *(a4 + 88);
      v19 = *(a4 + 64);
      v20 = *(a4 + 72);
      sub_10000AB0C(v18, v17);
      sub_10000AB0C(v18, v17);
      sub_100113EC8(v20, v18, v17, &v32);
      sub_1000124C8(v18, v17);
      v21 = v32;
      *(v8 + 102) = v33;
      v22 = *v35;
      *(v8 + 118) = v34;
      *(v8 + 134) = v22;
      *(v8 + 78) = v7;
      *(v8 + 79) = v27;
      *(v8 + 80) = v12;
      *(v8 + 81) = v11;
      *(v8 + 82) = v30;
      *(v8 + 83) = v31;
      *(v8 + 84) = v19;
      *(v8 + 85) = 1;
      *(v8 + 148) = *&v35[14];
      *(v8 + 86) = v21;
      result = sub_1000124C8(v18, v17);
      v23 = v29 - 2;
      if (v29 != 2)
      {
        v24 = (a4 + 120);
        do
        {
          v26 = *(v24 - 1);
          v25 = *v24;
          sub_10000AB0C(v26, *v24);
          result = sub_1000124C8(v26, v25);
          v24 += 4;
          --v23;
        }

        while (v23);
      }
    }
  }

  return result;
}

__n128 sub_100113EC8@<Q0>(__int16 a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  memset(&v26[2], 0, 68);
  v8 = sub_10002F214(6, 9uLL, a1, __stack_chk_guard);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v8 >> 16)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  *v26 = v8;
  v9 = sub_10002F09C(3, 3uLL, a1);
  v10 = a3 >> 62;
  v11 = _s7CoreP2P11NANTimeUnitV14SchedulePeriodO8rawValueAESgs5UInt8V_tcfC_0(v9);
  if (v11 == 8)
  {
    v26[2] = 0;
  }

  else
  {
    v26[2] = v11;
  }

  v12 = sub_10002F09C(0, 3uLL, a1);
  v13 = _s7CoreP2P27IEEE80211InformationElementO43PreAssociationSecurityNegotiationParametersV17WrappedDataFormatO8rawValueAGSgs5UInt8V_tcfC_0(v12);
  if (v13 == 4)
  {
    v26[3] = 0;
    if (v10 <= 1)
    {
      if (!v10)
      {
LABEL_8:
        v14 = BYTE6(a3);
        goto LABEL_17;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v26[3] = v13;
    if (v10 <= 1)
    {
      if (!v10)
      {
        goto LABEL_8;
      }

LABEL_12:
      LODWORD(v14) = HIDWORD(a2) - a2;
      if (__OFSUB__(HIDWORD(a2), a2))
      {
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
      }

      v14 = v14;
      goto LABEL_16;
    }
  }

  if (v10 != 2)
  {
    v26[4] = 0;
    v19 = sub_10004AF78(0, 0, a2, a3);
    v20 = 0;
    goto LABEL_29;
  }

  v16 = *(a2 + 16);
  v15 = *(a2 + 24);
  v17 = __OFSUB__(v15, v16);
  v14 = v15 - v16;
  if (v17)
  {
    goto LABEL_36;
  }

LABEL_16:
  if ((v14 & 0x8000000000000000) != 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_17:
  if (v14 >= 0x40)
  {
    v18 = 64;
  }

  else
  {
    v18 = v14;
  }

  v26[4] = v18;
  if (v10 > 1)
  {
    v19 = sub_10004AF78(*(a2 + 16), v18, a2, a3);
    v20 = *(a2 + 16);
    if (*(a2 + 24) < v20)
    {
      goto LABEL_34;
    }
  }

  else if (v10)
  {
    v19 = sub_10004AF78(a2, v18, a2, a3);
    v20 = a2;
    if (a2 >> 32 < a2)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v19 = sub_10004AF78(0, v18, a2, a3);
    v20 = 0;
  }

LABEL_29:
  if (v19 < v20)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v21 = Data._Representation.subscript.getter();
  v23 = v22;
  sub_1000A1CDC(v21, v22, &v26[5], &v26[69]);
  sub_1000124C8(v21, v23);
  v24 = *&v26[48];
  *(a4 + 32) = *&v26[32];
  *(a4 + 48) = v24;
  *(a4 + 62) = *&v26[62];
  result = *&v26[16];
  *a4 = *v26;
  *(a4 + 16) = result;
  return result;
}

uint64_t sub_1001141BC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  v6 = v5[2];

  v20 = v6;
  if (!v6)
  {
  }

  v8 = 0;
  v9 = a1 + 1;
  v10 = v5 + 7;
  while (v8 < v5[2])
  {
    ++v8;
    v12 = *(v10 - 1);
    v11 = *v10;
    v13 = *(v10 - 24);
    v14 = *(v10 - 8);
    sub_10000AB0C(v12, *v10);
    sub_10000AB0C(v12, v11);
    sub_100113EC8(v14, v12, v11, v17);
    sub_1000124C8(v12, v11);
    *&v19[33] = v17[2];
    *&v19[49] = *v18;
    *&v19[63] = *&v18[14];
    *&v19[1] = v17[0];
    *&v19[17] = v17[1];
    *(v9 - 1) = v13;
    v15 = *&v19[48];
    *(v9 + 32) = *&v19[32];
    *(v9 + 48) = v15;
    *(v9 + 63) = *&v19[63];
    v16 = *&v19[16];
    *v9 = *v19;
    *(v9 + 16) = v16;
    result = sub_1000124C8(v12, v11);
    v9 += 72;
    v10 += 4;
    if (v20 == v8)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100114390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v13 = *(a5 + 8);
  v14 = *(a6 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_10010F5C4(a8, a1, a2, 0, 0, a4, v13, v14, AssociatedConformanceWitness);
  if (v8)
  {
    *a7 = v8;
  }

  return result;
}

uint64_t sub_100114478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10005DC58(&qword_10058D648, &qword_100487280);
  sub_100289004(a1, sub_100114504, 0, a3, &type metadata for Never, v5, &protocol witness table for Never, v6);
  return v8;
}

uint64_t sub_100114504@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_7;
  }

  v3 = a2 - result;
  if ((a2 - result + 23) < 0x2F)
  {
    goto LABEL_7;
  }

  v4 = result;
  v5 = a3;
  v6 = v3 / 24;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v3 >= -23)
  {
    v7 = (v4 + 16);
    do
    {
      v8 = *(v7 - 2);
      v9 = *(v7 - 1);
      v10 = *v7;
      v7 += 3;
      [objc_allocWithZone(WiFiAwareDataSessionStatisticsHistogramBin) initWithBinStart:v8 binEnd:v9 value:v10];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      --v6;
    }

    while (v6);
    a3 = v5;
LABEL_7:
    *a3 = _swiftEmptyArrayStorage;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_10011463C(unsigned int a1)
{
  if (a1 > 0x16)
  {
    return 3;
  }

  else
  {
    return qword_100487580[a1];
  }
}

uint64_t sub_10011465C(unsigned int a1)
{
  if (a1 > 0x16)
  {
    return 46;
  }

  else
  {
    return byte_100487638[a1];
  }
}

uint64_t sub_10011478C(unint64_t a1)
{
  if ((BYTE5(a1) - 2) >= 5u)
  {
    if ((a1 >> 40))
    {
      v1 = 516;
    }

    else
    {
      v1 = 4;
    }
  }

  else
  {
    v1 = dword_10048765C[(BYTE5(a1) - 2)];
  }

  v2 = dword_100487650[(a1 << 24) >> 56] | v1;
  if (Channel.isDFS.getter(a1))
  {
    return v2 | 0x100;
  }

  else
  {
    return v2;
  }
}

int8x8_t sub_100114808@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2.i32[0] = *a1;
  v4 = *(a1 + 4);
  v38 = *(a1 + 5);
  v5 = *(a1 + 8);
  v7 = *(a1 + 20);
  v6 = *(a1 + 24);
  v8 = *(a1 + 28);
  v9 = *(a1 + 36);
  v35 = *(a1 + 32);
  v36 = *(a1 + 40);
  if (v5)
  {
    v16 = *(a1 + 24);
    v6 = *(a1 + 28);
    v8 = *(a1 + 36);
    v17 = *(a1 + 4);
    v18 = *(a1 + 16);
    v19 = _s7CoreP2P15IEEE80211StatusO8rawValueACSgs6UInt16V_tcfC_0(*(a1 + 12) & 0x1FF);
    if (v19 == 55)
    {
      v20 = 1;
    }

    else
    {
      v20 = v19;
    }

    v4 = v17;
    LOWORD(v9) = v8;
    LOWORD(v8) = v6;
    LOWORD(v6) = v16;
    v21 = v20;
    v22 = _s7CoreP2P15IEEE80211ReasonO8rawValueACSgs6UInt16V_tcfC_0(v18 & 0x1FF);
    if (v22 == 34)
    {
      v23 = 1;
    }

    else
    {
      v23 = v22;
    }

    v10 = v21 | (v23 << 8);
    if ((v5 & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_17:
    v15 = 8704;
    goto LABEL_18;
  }

  v10 = 8704;
  if ((v5 & 2) == 0)
  {
    goto LABEL_17;
  }

LABEL_3:
  v11 = _s7CoreP2P15IEEE80211StatusO8rawValueACSgs6UInt16V_tcfC_0(v7 & 0x1FF);
  if (v11 == 55)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  v13 = _s7CoreP2P15IEEE80211ReasonO8rawValueACSgs6UInt16V_tcfC_0(v6 & 0x1FF);
  if (v13 == 34)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13;
  }

  v15 = v12 | (v14 << 8);
LABEL_18:
  v37 = vmovl_u8(v2).u64[0];
  if ((v5 & 4) != 0)
  {
    v30 = _s7CoreP2P15IEEE80211StatusO8rawValueACSgs6UInt16V_tcfC_0(v8 & 0x1FF);
    if (v30 == 55)
    {
      v31 = 1;
    }

    else
    {
      v31 = v30;
    }

    v32 = _s7CoreP2P15IEEE80211ReasonO8rawValueACSgs6UInt16V_tcfC_0(v35 & 0x1FF);
    if (v32 == 34)
    {
      v33 = 1;
    }

    else
    {
      v33 = v32;
    }

    v24 = v31 | (v33 << 8);
    if ((v5 & 8) != 0)
    {
      goto LABEL_20;
    }

LABEL_34:
    v29 = 8704;
    goto LABEL_35;
  }

  v24 = 8704;
  if ((v5 & 8) == 0)
  {
    goto LABEL_34;
  }

LABEL_20:
  v25 = _s7CoreP2P15IEEE80211StatusO8rawValueACSgs6UInt16V_tcfC_0(v9 & 0x1FF);
  if (v25 == 55)
  {
    v26 = 1;
  }

  else
  {
    v26 = v25;
  }

  v27 = _s7CoreP2P15IEEE80211ReasonO8rawValueACSgs6UInt16V_tcfC_0(v36 & 0x1FF);
  if (v27 == 34)
  {
    v28 = 1;
  }

  else
  {
    v28 = v27;
  }

  v29 = v26 | (v28 << 8);
LABEL_35:
  result = vuzp1_s8(v37, v37);
  *a2 = result.i32[0];
  *(a2 + 4) = v4;
  *(a2 + 5) = v38;
  *(a2 + 6) = v10;
  *(a2 + 8) = v15;
  *(a2 + 10) = v24;
  *(a2 + 12) = v29;
  return result;
}

unint64_t WiFiNetwork.createRecord()(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = a3;
  v8 = a3 >> 8;
  v9 = a3 >> 16;
  v10 = a3 >> 24;
  v20 = HIDWORD(a3);
  v21 = a3 >> 40;
  sub_10005DC58(qword_10058C850, &unk_100486F10);
  inited = swift_initStackObject();
  *(inited + 32) = 0x5254535F44495353;
  *(inited + 16) = xmmword_100486AF0;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 1145656147;
  *(inited + 88) = 0xE400000000000000;
  swift_bridgeObjectRetain_n();
  *(inited + 96) = sub_10016FD40(a1, a2);
  *(inited + 104) = v12;
  *(inited + 120) = &type metadata for Data;
  *(inited + 128) = 0x4449535342;
  *(inited + 136) = 0xE500000000000000;
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1004817D0;
  *(v13 + 32) = v5;
  *(v13 + 33) = v8;
  *(v13 + 34) = v9;
  *(v13 + 35) = v10;
  *(v13 + 36) = v20;
  *(v13 + 37) = v21;
  v14 = sub_10002D874(v13);
  v16 = v15;

  *(inited + 144) = v14;
  *(inited + 152) = v16;
  *(inited + 168) = &type metadata for Data;
  *(inited + 176) = 0x4C454E4E414843;
  *(inited + 184) = 0xE700000000000000;
  *(inited + 192) = a4;
  *(inited + 216) = &type metadata for UInt32;
  strcpy((inited + 224), "CHANNEL_FLAGS");
  *(inited + 238) = -4864;
  v17 = sub_10011478C(a4 & 0xFFFFFFFFFFFFLL);
  *(inited + 264) = &type metadata for UInt32;
  *(inited + 240) = v17;
  v18 = sub_1000827F8(inited);
  swift_setDeallocating();
  sub_10005DC58(&qword_10058BB40, &unk_100480E70);
  swift_arrayDestroy();
  return v18;
}

uint64_t sub_100114BE4@<X0>(uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v7 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v7 == 2)
    {
      result = *(a3 + 16);
      v9 = *(a3 + 24);
    }

    else
    {
      v9 = 0;
      result = 0;
    }
  }

  else
  {
    v8 = v7 == 0;
    if (v7)
    {
      v9 = a3 >> 32;
    }

    else
    {
      v9 = BYTE6(a4);
    }

    if (v8)
    {
      result = 0;
    }

    else
    {
      result = a3;
    }
  }

  if (v9 < result || result > a5)
  {
    __break(1u);
  }

  else
  {
    v13 = Data._Representation.subscript.getter();
    v14 = v11;
    sub_1000BA0A4();
    v12 = DataProtocol.copyBytes(to:)();
    result = sub_1000124C8(v13, v14);
    *a6 = v12;
  }

  return result;
}

uint64_t AWDLActionFrame.Header.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10005DC58(&qword_10058C7E0, &unk_100486B30);
  __chkstk_darwin();
  v6 = v15 - v5;
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (!v2)
  {
    v7 = v18;
    v8 = v19;
    sub_100031694(v17, v18);
    v9 = UnkeyedDecodingContainer.decodeData(with:)(72, v7, v8);
    v11 = v9;
    v12 = v10;
    sub_100030E20(v9, v10, v15);
    sub_1000124C8(v11, v12);
    v22 = v15[2];
    v23 = v15[3];
    v24 = v16;
    v20 = v15[0];
    v21 = v15[1];
    sub_100112D70(v6);
    v13 = type metadata accessor for AWDLActionFrame.Header(0);
    if ((*(*(v13 - 8) + 48))(v6, 1, v13) == 1)
    {
      sub_100016290(v6, &qword_10058C7E0, &unk_100486B30);
      type metadata accessor for DecodingError();
      swift_allocError();
      static DecodingError.dataCorruptedError(in:debugDescription:)();
      swift_willThrow();
    }

    else
    {
      sub_100038FEC(v6, a2, type metadata accessor for AWDLActionFrame.Header);
    }

    sub_100002A00(v17);
  }

  return sub_100002A00(a1);
}

unint64_t sub_100114EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10003B238(*(a1 + 4));
  *a2 = result;
  *(a2 + 4) = WORD2(result);
  return result;
}

uint64_t sub_100114F34@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AWDLStatistics.LowLatencyStatistics.Configuration(0);
  v5 = *(v4 - 1);
  __chkstk_darwin();
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v66 = a1[8];
  LODWORD(v6) = a1[9];
  v64 = v8;
  v65 = v6;
  v9 = *(a1 + 3);
  v67 = *(a1 + 4);
  v68 = v9;
  v10 = *(a1 + 5);
  v11 = sub_100032064(*(a1 + 7), *(a1 + 8));
  v12 = sub_100032064(*(a1 + 10), *(a1 + 11));
  v13 = sub_100032064(*(a1 + 13), *(a1 + 14));
  result = sub_100032064(*(a1 + 16), *(a1 + 17));
  v15 = *(a1 + 13);
  if (v15 < 0)
  {
    __break(1u);
  }

  else
  {
    v16 = result;
    v62 = a1[96];
    v61 = *(a1 + 23);
    v60 = *(a1 + 22);
    v63 = a2;
    v17 = v4[20];
    *&v7[v17] = v15;
    v44 = v10;
    v18 = enum case for DispatchTimeInterval.seconds(_:);
    v19 = type metadata accessor for DispatchTimeInterval();
    v20 = *(*(v19 - 8) + 104);
    v21 = *(a1 + 72);
    *&v22 = v21;
    *(&v22 + 1) = DWORD1(v21);
    v57 = v22;
    *&v22 = DWORD2(v21);
    *(&v22 + 1) = HIDWORD(v21);
    v54 = v22;
    v20(&v7[v17], v18, v19);
    v23 = *(a1 + 28);
    v24 = *(a1 + 29);
    v52 = *(a1 + 30);
    v51 = *(a1 + 31);
    v50 = *(a1 + 32);
    v49 = *(a1 + 33);
    v48 = *(a1 + 34);
    v47 = *(a1 + 35);
    v46 = *(a1 + 36);
    v53 = a1[148];
    v25 = a1[150];
    v55 = a1[149];
    v56 = v25;
    v26 = a1[152];
    v58 = a1[151];
    v59 = v26;
    v27 = *(a1 + 77) | (*(a1 + 39) << 16);
    v45 = a1[153];
    v28 = WiFiAddress.description.getter(v27);
    *v7 = v64;
    v29 = a1[160];
    v30 = v65;
    v7[1] = v66;
    v7[2] = v30;
    v32 = *(a1 + 41);
    v31 = *(a1 + 42);
    v33 = v67;
    *(v7 + 1) = v68;
    *(v7 + 2) = v33;
    v35 = *(a1 + 43);
    v34 = *(a1 + 44);
    v36 = *(a1 + 24);
    v37 = *(a1 + 23);
    *(v7 + 3) = v44;
    *(v7 + 18) = WORD2(v11);
    *(v7 + 8) = v11;
    *(v7 + 22) = WORD2(v12);
    *(v7 + 10) = v12;
    *(v7 + 26) = WORD2(v13);
    *(v7 + 12) = v13;
    *(v7 + 30) = WORD2(v16);
    *(v7 + 14) = v16;
    v38 = v54;
    *(v7 + 4) = v57;
    *(v7 + 5) = v38;
    v39 = v61;
    *(v7 + 12) = v60;
    *(v7 + 13) = v39;
    v7[112] = v62;
    *&v7[v4[21]] = v23;
    *&v7[v4[22]] = v24;
    *&v7[v4[23]] = v52;
    *&v7[v4[24]] = v51;
    *&v7[v4[25]] = v50;
    *&v7[v4[26]] = v49;
    *&v7[v4[27]] = v48;
    *&v7[v4[28]] = v47;
    *&v7[v4[29]] = v46;
    v7[v4[30]] = v53;
    v7[v4[31]] = v55;
    v7[v4[32]] = v56;
    v7[v4[33]] = v58;
    v7[v4[34]] = v59;
    v7[v4[35]] = v45;
    v40 = &v7[v4[36]];
    *v40 = v28;
    v40[1] = v41;
    v7[v4[37]] = v29;
    *&v7[v4[38]] = v32;
    *&v7[v4[39]] = v31;
    *&v7[v4[40]] = v35;
    *&v7[v4[41]] = v34;
    *&v7[v4[42]] = v37;
    *&v7[v4[43]] = v36;
    v42 = v63;
    sub_100038FEC(v7, v63, type metadata accessor for AWDLStatistics.LowLatencyStatistics.Configuration);
    return (*(v5 + 56))(v42, 0, 1, v4);
  }

  return result;
}

void *sub_100115324(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 64);
  v3 = *(a1 + 88);
  v4 = *(a1 + 112);
  v5 = *(a1 + 136);
  v6 = *(a1 + 160);
  v7 = *(a1 + 184);
  v8 = *(a1 + 208);
  v9 = *(a1 + 232);
  v17 = *(a1 + 16);
  v18 = *(a1 + 24);
  v19 = v1;
  v20 = *(a1 + 48);
  v21 = v2;
  v22 = *(a1 + 72);
  v23 = v3;
  v24 = *(a1 + 96);
  v26 = *(a1 + 120);
  v25 = v4;
  v27 = v5;
  v28 = *(a1 + 144);
  v30 = *(a1 + 168);
  v29 = v6;
  v31 = v7;
  v32 = *(a1 + 192);
  v34 = *(a1 + 216);
  v33 = v8;
  v35 = v9;
  sub_1000C05E4(0, 10, 0);
  result = _swiftEmptyArrayStorage;
  v11 = _swiftEmptyArrayStorage[2];
  for (i = 16; i != 256; i += 24)
  {
    v13 = *&v16[i];
    v15 = result;
    v14 = result[3];
    if (v11 >= v14 >> 1)
    {
      sub_1000C05E4((v14 > 1), v11 + 1, 1);
      result = v15;
    }

    result[2] = v11 + 1;
    result[v11++ + 4] = v13;
  }

  return result;
}

void *sub_1001154AC(void *a1)
{
  v1 = a1[2];
  v2 = a1[5];
  v3 = a1[8];
  v4 = a1[11];
  v5 = a1[14];
  v6 = a1[17];
  sub_1000C05E4(0, 6, 0);
  result = _swiftEmptyArrayStorage;
  v9 = _swiftEmptyArrayStorage[2];
  v8 = _swiftEmptyArrayStorage[3];
  v10 = v8 >> 1;
  v11 = v9 + 1;
  if (v8 >> 1 <= v9)
  {
    sub_1000C05E4((v8 > 1), v9 + 1, 1);
    result = _swiftEmptyArrayStorage;
    v8 = _swiftEmptyArrayStorage[3];
    v10 = v8 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v11;
  _swiftEmptyArrayStorage[v9 + 4] = v1;
  v12 = v9 + 2;
  if (v10 <= v11)
  {
    sub_1000C05E4((v8 > 1), v12, 1);
    result = _swiftEmptyArrayStorage;
  }

  _swiftEmptyArrayStorage[2] = v12;
  _swiftEmptyArrayStorage[v11 + 4] = v2;
  v14 = _swiftEmptyArrayStorage[2];
  v13 = _swiftEmptyArrayStorage[3];
  v15 = v13 >> 1;
  v16 = v14 + 1;
  if (v13 >> 1 <= v14)
  {
    sub_1000C05E4((v13 > 1), v14 + 1, 1);
    result = _swiftEmptyArrayStorage;
    v13 = _swiftEmptyArrayStorage[3];
    v15 = v13 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v16;
  _swiftEmptyArrayStorage[v14 + 4] = v3;
  v17 = v14 + 2;
  if (v15 <= v16)
  {
    sub_1000C05E4((v13 > 1), v17, 1);
    result = _swiftEmptyArrayStorage;
  }

  _swiftEmptyArrayStorage[2] = v17;
  _swiftEmptyArrayStorage[v16 + 4] = v4;
  v19 = _swiftEmptyArrayStorage[2];
  v18 = _swiftEmptyArrayStorage[3];
  v20 = v18 >> 1;
  v21 = v19 + 1;
  if (v18 >> 1 <= v19)
  {
    sub_1000C05E4((v18 > 1), v19 + 1, 1);
    result = _swiftEmptyArrayStorage;
    v18 = _swiftEmptyArrayStorage[3];
    v20 = v18 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v21;
  _swiftEmptyArrayStorage[v19 + 4] = v5;
  v22 = v19 + 2;
  if (v20 <= v21)
  {
    sub_1000C05E4((v18 > 1), v22, 1);
    result = _swiftEmptyArrayStorage;
  }

  _swiftEmptyArrayStorage[2] = v22;
  _swiftEmptyArrayStorage[v21 + 4] = v6;
  return result;
}

void *sub_1001156EC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 64);
  v3 = *(a1 + 88);
  v4 = *(a1 + 112);
  v5 = *(a1 + 136);
  v6 = *(a1 + 160);
  v7 = *(a1 + 184);
  v8 = *(a1 + 208);
  v16 = *(a1 + 16);
  v17 = *(a1 + 24);
  v18 = v1;
  v19 = *(a1 + 48);
  v20 = v2;
  v21 = *(a1 + 72);
  v22 = v3;
  v23 = *(a1 + 96);
  v25 = *(a1 + 120);
  v24 = v4;
  v26 = v5;
  v27 = *(a1 + 144);
  v29 = *(a1 + 168);
  v28 = v6;
  v30 = v7;
  v31 = *(a1 + 192);
  v32 = v8;
  sub_1000C05E4(0, 9, 0);
  result = _swiftEmptyArrayStorage;
  v10 = _swiftEmptyArrayStorage[2];
  for (i = 16; i != 232; i += 24)
  {
    v12 = *&v15[i];
    v14 = result;
    v13 = result[3];
    if (v10 >= v13 >> 1)
    {
      sub_1000C05E4((v13 > 1), v10 + 1, 1);
      result = v14;
    }

    result[2] = v10 + 1;
    result[v10++ + 4] = v12;
  }

  return result;
}

void *sub_100115864(void *a1)
{
  v1 = a1[2];
  v2 = a1[5];
  v3 = a1[8];
  v4 = a1[11];
  sub_1000C05E4(0, 4, 0);
  result = _swiftEmptyArrayStorage;
  v7 = _swiftEmptyArrayStorage[2];
  v6 = _swiftEmptyArrayStorage[3];
  v8 = v6 >> 1;
  v9 = v7 + 1;
  if (v6 >> 1 <= v7)
  {
    sub_1000C05E4((v6 > 1), v7 + 1, 1);
    result = _swiftEmptyArrayStorage;
    v6 = _swiftEmptyArrayStorage[3];
    v8 = v6 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v9;
  _swiftEmptyArrayStorage[v7 + 4] = v1;
  v10 = v7 + 2;
  if (v8 <= v9)
  {
    sub_1000C05E4((v6 > 1), v10, 1);
    result = _swiftEmptyArrayStorage;
  }

  _swiftEmptyArrayStorage[2] = v10;
  _swiftEmptyArrayStorage[v9 + 4] = v2;
  v12 = _swiftEmptyArrayStorage[2];
  v11 = _swiftEmptyArrayStorage[3];
  v13 = v11 >> 1;
  v14 = v12 + 1;
  if (v11 >> 1 <= v12)
  {
    sub_1000C05E4((v11 > 1), v12 + 1, 1);
    result = _swiftEmptyArrayStorage;
    v11 = _swiftEmptyArrayStorage[3];
    v13 = v11 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v14;
  _swiftEmptyArrayStorage[v12 + 4] = v3;
  v15 = v12 + 2;
  if (v13 <= v14)
  {
    sub_1000C05E4((v11 > 1), v15, 1);
    result = _swiftEmptyArrayStorage;
  }

  _swiftEmptyArrayStorage[2] = v15;
  _swiftEmptyArrayStorage[v14 + 4] = v4;
  return result;
}

uint64_t sub_100115A0C()
{
  if (*(*v0 + 32) == 4)
  {
    if (qword_10058A898 != -1)
    {
      swift_once();
    }

    return static CountryCode.unknown;
  }

  else
  {
    return sub_100110380(0x33uLL, 0, 0);
  }
}

void sub_100115AC4(char a1, uint64_t a2)
{
  v3 = 0x100000001;
  if ((a1 & 1) == 0)
  {
    v3 = 1;
  }

  if ((a2 & &_mh_execute_header) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  sub_1001106AC(0x22EuLL, v3, v4);
  if (v2)
  {
  }
}

double sub_100115B18()
{
  if (qword_10058A830 != -1)
  {
    swift_once();
  }

  if (static PreferenceDefaults.hasBattery)
  {
    v0 = 0x100000001;
  }

  else
  {
    v0 = 1;
  }

  return sub_100110B44(0x236uLL, v0);
}

uint64_t sub_100115B90(uint64_t a1)
{
  __chkstk_darwin();
  v2 = v1;
  sub_100110478(0xCFuLL, 0, 0, __src);
  memcpy(v5, __src, sizeof(v5));
  memcpy(__src, v5, sizeof(__src));
  return v2(__src, v5);
}

void *sub_100115CB0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v4[2] = &v5;
  return sub_1000ED5E8(sub_10011AAD0, v4, a1, a2);
}

void *sub_100115D00(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10005DC58(&qword_10058D660, &qword_1004872A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10005DC58(&qword_10058D668, &qword_1004872A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100115E34(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10005DC58(&qword_10058D670, &qword_1004872B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10005DC58(&qword_10058D678, &unk_1004872B8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100115F7C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_100595370, &qword_1004AF240);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001160AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_1005987A0, &unk_100487180);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 7);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[8 * v8 - v8])
    {
      memmove(v12, v13, 7 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 7 * v8);
  }

  return v10;
}

char *sub_1001161D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_10058D600, &qword_1004B0920);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[6 * v8])
    {
      memmove(v12, v13, 6 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 6 * v8);
  }

  return v10;
}

char *sub_10011630C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_10058D6B8, &unk_100487320);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = v8 << 6;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

void *sub_100116458(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10005DC58(a5, a6);
  v16 = *(sub_10005DC58(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_10005DC58(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_100116640(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_10058D6A0, &unk_100487300);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_100116744(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_10058D698, &qword_1004872F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10011686C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_10058D690, &qword_1004872F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}