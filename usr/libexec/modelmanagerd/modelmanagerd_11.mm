void *sub_10011A2E4(void *a1)
{
  v2 = sub_100065020(&qword_1001BB3F8, &qword_100171D50);
  sub_100002F04(v2);
  sub_100004B1C();
  __chkstk_darwin(v3);
  v5 = &v10 - v4;
  sub_100065020(&qword_1001BD0C8, &qword_1001739B0);
  v6 = Dictionary.init(dictionaryLiteral:)();
  sub_100065020(&qword_1001BD0D0, qword_1001739B8);
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *(v7 + 16) = v6;
  a1[2] = v7;
  a1[3] = sub_10011A448;
  a1[4] = 0;
  v8 = type metadata accessor for AuditToken();
  sub_100009BFC(v5, 1, 1, v8);
  sub_10011A448(v5, v11);
  sub_10000ECD8(v5, &qword_1001BB3F8, &qword_100171D50);
  sub_100004A04(v11, (a1 + 5));
  type metadata accessor for TelemetrySignposter(0);
  swift_allocObject();
  a1[10] = sub_1000E2800();
  return a1;
}

uint64_t sub_10011A448@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100065020(&qword_1001BB3F8, &qword_100171D50);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  sub_10002E90C(a1, &v11 - v5, &qword_1001BB3F8, &qword_100171D50);
  v7 = type metadata accessor for AuditToken();
  sub_10000C6C0(v6, 1, v7);
  sub_10000ECD8(v6, &qword_1001BB3F8, &qword_100171D50);
  type metadata accessor for EventReporter();
  swift_allocObject();
  v8 = EventReporter.init()();
  v9 = type metadata accessor for EventReporterWrapper();
  result = swift_allocObject();
  *(result + 16) = v8;
  a2[3] = v9;
  a2[4] = &off_1001B2530;
  *a2 = result;
  return result;
}

void sub_10011A558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unsigned int a24, unsigned int a25, unsigned __int8 a26, unsigned __int8 a27, unsigned __int8 a28, uint64_t a29)
{
  sub_1000055B0();
  v84 = v30;
  v85 = v31;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v78 = a29;
  v80 = a28;
  v81 = a27;
  v82 = a26;
  v44 = a24;
  v79 = a25;
  v45 = a22;
  v46 = a23;
  v83 = a21;
  if (sub_1000136A8())
  {
    v47 = sub_100065020(&qword_1001BD070, &qword_100173948);
    v67 = &v64;
    sub_100002F04(v47);
    sub_100004B1C();
    __chkstk_darwin(v48);
    v65 = &v64 - v49;
    v50 = sub_100003370((v29 + 40), *(v29 + 64));
    v66 = &v64;
    __chkstk_darwin(v50);
    v72 = v43;
    v73 = v41;
    *(&v64 - 14) = v43;
    *(&v64 - 13) = v41;
    v74 = v39;
    v75 = v37;
    *(&v64 - 12) = v39;
    *(&v64 - 11) = v37;
    v76 = v35;
    v77 = v33;
    v52 = v84;
    v51 = v85;
    *(&v64 - 10) = v35;
    *(&v64 - 9) = v52;
    v71 = v29;
    *(&v64 - 8) = v29;
    *(&v64 - 7) = v33;
    v57 = v51;
    v58 = a22;
    v59 = a23;
    v53 = v65;
    v60 = a24;
    v61 = v79;
    LOBYTE(v62) = v82 & 1;
    BYTE1(v62) = v81 & 1;
    BYTE2(v62) = v80 & 1;
    v63 = v83;
    sub_1000084CC();
    EventReporter.send(eventBuiltWithPresetsAnd:)();
    HIDWORD(v70) = a24;
    v68 = a22;
    v69 = a23;
    v54 = sub_1000128AC();
    sub_100005914(v53, v55, v56, v54);
    sub_10000ECD8(v53, &qword_1001BD070, &qword_100173948);
    v45 = v68;
    v35 = v76;
    v33 = v77;
    v39 = v74;
    v37 = v75;
    v43 = v72;
    v41 = v73;
    v44 = HIDWORD(v70);
    v46 = v69;
  }

  BYTE2(v62) = v80 & 1;
  BYTE1(v62) = v81 & 1;
  LOBYTE(v62) = v82 & 1;
  sub_1000E2A20(v43, v41, v39, v37, v35, v84, v33, v85, v83, v45, v46, __SPAIR64__(v79, v44), v62, v78, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, SHIDWORD(v73), v74, BYTE1(v74));
  sub_100002EEC();
}

uint64_t sub_10011A7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, int a12, int a13, unsigned __int8 a14, unsigned __int8 a15, unsigned __int8 a16, uint64_t a17)
{
  v32 = a7;
  v31 = a6;
  v30 = a5;
  v55 = a17;
  v36 = a15;
  v37 = a16;
  v34 = a13;
  v35 = a14;
  v33 = a12;
  v29 = a9;
  GenerativeFunctionsInstrumentationEvent.eventType.setter();
  v21 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers();
  __chkstk_darwin(v21);
  v45 = a2;
  v46 = a3;
  v47 = a4;
  v48 = v30;
  v49 = v31;
  v50 = v32;
  v51 = a8;
  v52 = a9;
  v53 = a10;
  v54 = a11;
  static Buildable.with(_:)();
  GenerativeFunctionsInstrumentationEvent.identifiers.setter();
  v22 = sub_100065020(&qword_1001BD090, &qword_100173970);
  __chkstk_darwin(v22 - 8);
  v24 = (&v29 - v23);
  type metadata accessor for GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest();
  v25 = swift_allocBox();
  v38 = v33;
  v39 = v34;
  v40 = v35;
  v41 = v36;
  v42 = v37;
  v43 = v55;
  v44 = a8;
  static Buildable.with(_:)();
  *v24 = v25;
  v26 = enum case for GenerativeFunctionsInstrumentationMetadata.mmExecuteRequest(_:);
  v27 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata();
  (*(*(v27 - 8) + 104))(v24, v26, v27);
  sub_100009BFC(v24, 0, 1, v27);
  return GenerativeFunctionsInstrumentationEvent.metadata.setter();
}

uint64_t sub_10011AA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v22[0] = a4;
  v22[1] = a6;
  v30 = a11;
  v25 = a12;
  v23 = a9;
  v24 = a10;
  v12 = sub_100065020(&qword_1001B9060, &unk_10016FCD0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  UUIDIdentifier.uuid.getter();
  v15 = type metadata accessor for UUID();
  sub_100009BFC(v22 - v14, 0, 1, v15);
  v16 = GenerativeFunctionsInstrumentationEvent.Identifiers.modelManagerRequestIdentifier.setter();
  __chkstk_darwin(v16);
  sub_100065020(&qword_1001B94F0, &unk_100172060);
  UUIDIdentifier.uuid.getter();
  sub_100009BFC(v22 - v14, 0, 1, v15);
  GenerativeFunctionsInstrumentationEvent.Identifiers.modelManagerSessionIdentifier.setter();

  GenerativeFunctionsInstrumentationEvent.Identifiers.clientRequestIdentifier.setter();

  GenerativeFunctionsInstrumentationEvent.Identifiers.useCaseIdentifier.setter();
  v17 = sub_100065020(&qword_1001BD088, &qword_100173968);
  __chkstk_darwin(v17 - 8);
  v19 = v22 - v18;
  v20 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.CatalogResourceIdentifierAndVersion();
  v26 = v23;
  v27 = v24;
  v28 = 0;
  v29 = 0;
  static Buildable.with(_:)();
  sub_100009BFC(v19, 0, 1, v20);
  GenerativeFunctionsInstrumentationEvent.Identifiers.catalogResourceIdentifier.setter();

  return GenerativeFunctionsInstrumentationEvent.Identifiers.inferenceProviderIdentifier.setter();
}

uint64_t sub_10011ACFC(uint64_t a1, int a2, int a3, char a4, char a5, char a6, uint64_t a7, uint64_t a8)
{
  GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.createdByPID.setter();
  GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.onBehalfOfPID.setter();
  v11 = sub_100065020(&qword_1001BD0C0, &unk_1001739A0);
  __chkstk_darwin(v11 - 8);
  v13 = &v17 - v12;
  v14 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.RequestType();
  v15 = &enum case for GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.RequestType.streaming(_:);
  if (a4)
  {
    v15 = &enum case for GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.RequestType.oneShot(_:);
  }

  (*(*(v14 - 8) + 104))(v13, *v15, v14);
  type metadata accessor for GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.RequestType();
  sub_100009BFC(v13, 0, 1, v14);
  GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.requestType.setter();
  GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.isFallbackRequest.setter();
  GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.isInference.setter();

  sub_100119DF4(a7, a8);
  return GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.assets.setter();
}

void sub_10011AE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int16 a21)
{
  sub_1000055B0();
  v64 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = HIBYTE(a21);
  if (sub_1000136A8())
  {
    v38 = sub_100065020(&qword_1001BD070, &qword_100173948);
    v54 = &v52;
    sub_100002F04(v38);
    sub_100004B1C();
    __chkstk_darwin(v39);
    v40 = v21;
    v41 = v24;
    v43 = &v52 - v42;
    v44 = *(v40 + 64);
    v56 = v40;
    v45 = sub_100003370((v40 + 40), v44);
    v53 = &v52;
    __chkstk_darwin(v45);
    v57 = v36;
    v58 = v34;
    *(&v52 - 10) = v36;
    *(&v52 - 9) = v34;
    v59 = v32;
    v60 = v30;
    *(&v52 - 8) = v32;
    *(&v52 - 7) = v30;
    v61 = v28;
    v62 = v26;
    *(&v52 - 6) = v28;
    *(&v52 - 5) = v26;
    v63 = v41;
    v46 = v64;
    *(&v52 - 4) = v41;
    *(&v52 - 3) = v46;
    LOWORD(v50) = a21 & 0x101;
    sub_1000084CC();
    EventReporter.send(eventBuiltWithPresetsAnd:)();
    HIDWORD(v55) = HIBYTE(a21);
    v47 = sub_1000128AC();
    sub_100005914(v43, v48, v49, v47);
    sub_10000ECD8(v43, &qword_1001BD070, &qword_100173948);
    v26 = v62;
    v24 = v63;
    v30 = v60;
    v28 = v61;
    v34 = v58;
    v32 = v59;
    v36 = v57;
    v37 = BYTE4(v55);
  }

  BYTE1(v50) = v37 & 1;
  LOBYTE(v50) = a21 & 1;
  sub_1000E30E0(v36, v34, v32, v30, v28, v26, v24, v64, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62);
  sub_100002EEC();
}

uint64_t sub_10011B060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, unsigned __int8 a11)
{
  v26 = a8;
  v25 = a7;
  v37 = a10;
  v38 = a11;
  GenerativeFunctionsInstrumentationEvent.eventType.setter();
  v16 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers();
  __chkstk_darwin(v16);
  v29 = a2;
  v30 = a3;
  v31 = a4;
  v32 = a5;
  v33 = a6;
  v34 = v25;
  v35 = v26;
  v36 = a9;
  static Buildable.with(_:)();
  GenerativeFunctionsInstrumentationEvent.identifiers.setter();
  v17 = sub_100065020(&qword_1001BD090, &qword_100173970);
  __chkstk_darwin(v17 - 8);
  v19 = (&v24 - v18);
  type metadata accessor for GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest();
  v20 = swift_allocBox();
  v27 = v37;
  v28 = v38;
  static Buildable.with(_:)();
  *v19 = v20;
  v21 = enum case for GenerativeFunctionsInstrumentationMetadata.mmExecuteRequest(_:);
  v22 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata();
  (*(*(v22 - 8) + 104))(v19, v21, v22);
  sub_100009BFC(v19, 0, 1, v22);
  return GenerativeFunctionsInstrumentationEvent.metadata.setter();
}

uint64_t sub_10011B2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15[2] = a6;
  v15[3] = a8;
  v15[0] = a3;
  v15[1] = a4;
  v9 = sub_100065020(&qword_1001B9060, &unk_10016FCD0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  UUIDIdentifier.uuid.getter();
  v12 = type metadata accessor for UUID();
  sub_100009BFC(v15 - v11, 0, 1, v12);
  v13 = GenerativeFunctionsInstrumentationEvent.Identifiers.modelManagerRequestIdentifier.setter();
  __chkstk_darwin(v13);
  sub_100065020(&qword_1001B94F0, &unk_100172060);
  UUIDIdentifier.uuid.getter();
  sub_100009BFC(v15 - v11, 0, 1, v12);
  GenerativeFunctionsInstrumentationEvent.Identifiers.modelManagerSessionIdentifier.setter();

  GenerativeFunctionsInstrumentationEvent.Identifiers.clientRequestIdentifier.setter();

  GenerativeFunctionsInstrumentationEvent.Identifiers.useCaseIdentifier.setter();

  return GenerativeFunctionsInstrumentationEvent.Identifiers.inferenceProviderIdentifier.setter();
}

uint64_t sub_10011B444(uint64_t a1, char a2, char a3)
{
  v4 = sub_100065020(&qword_1001BD0C0, &unk_1001739A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.RequestType();
  v8 = &enum case for GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.RequestType.streaming(_:);
  if (a2)
  {
    v8 = &enum case for GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.RequestType.oneShot(_:);
  }

  (*(*(v7 - 8) + 104))(v6, *v8, v7);
  type metadata accessor for GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.RequestType();
  sub_100009BFC(v6, 0, 1, v7);
  GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.requestType.setter();
  GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.isInference.setter();
  return GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.assets.setter();
}

void sub_10011B564()
{
  sub_1000055B0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if (sub_1000136A8())
  {
    v9 = sub_100065020(&qword_1001BD070, &qword_100173948);
    v18[0] = v18;
    sub_100002F04(v9);
    sub_100004B1C();
    __chkstk_darwin(v10);
    v12 = v18 - v11;
    v13 = sub_100003370((v0 + 40), *(v0 + 64));
    __chkstk_darwin(v13);
    sub_100009CB4();
    *(v14 - 32) = v8;
    *(v14 - 24) = v4;
    *(v14 - 16) = v2;
    *(v14 - 8) = v6;
    sub_1000084CC();
    EventReporter.send(eventBuiltWithPresetsAnd:)();
    v15 = type metadata accessor for GenerativeFunctionsInstrumentationEvent();
    sub_100005914(v12, v16, v17, v15);
    sub_10000ECD8(v12, &qword_1001BD070, &qword_100173948);
  }

  sub_1000E3650();
  sub_100002EEC();
}

uint64_t sub_10011B6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  GenerativeFunctionsInstrumentationEvent.eventType.setter();
  v9 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers();
  __chkstk_darwin(v9);
  v18 = a2;
  v19 = a3;
  v20 = a4;
  static Buildable.with(_:)();
  result = GenerativeFunctionsInstrumentationEvent.identifiers.setter();
  if (a5)
  {
    v11 = sub_100065020(&qword_1001BD080, &unk_100173958);
    __chkstk_darwin(v11 - 8);
    v13 = &v17[-v12];
    swift_getErrorValue();
    v14 = v21;
    v15 = v22;
    swift_errorRetain();
    sub_1000BA718(v14, v15, v13);
    v16 = type metadata accessor for GenerativeFunctionsInstrumentationError();
    sub_100009BFC(v13, 0, 1, v16);
    GenerativeFunctionsInstrumentationEvent.error.setter();
  }

  return result;
}

void sub_10011B888()
{
  sub_1000055B0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (sub_1000136A8())
  {
    v12 = sub_100065020(&qword_1001BD070, &qword_100173948);
    sub_100002F04(v12);
    sub_100004B1C();
    __chkstk_darwin(v13);
    sub_100003C70();
    v14 = sub_100003370((v1 + 40), *(v1 + 64));
    __chkstk_darwin(v14);
    sub_10000A328();
    *(v15 - 48) = v11;
    *(v15 - 40) = v9;
    *(v15 - 32) = v1;
    *(v15 - 24) = v7;
    *(v15 - 16) = v5;
    *(v15 - 8) = v3;
    sub_1000084CC();
    sub_1000030E4();
    if (v5)
    {
    }

    v16 = type metadata accessor for GenerativeFunctionsInstrumentationEvent();
    sub_10000A6F0(v16);
    sub_10000ECD8(v0, &qword_1001BD070, &qword_100173948);
  }

  sub_100002EEC();
}

uint64_t sub_10011B9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23[1] = a7;
  GenerativeFunctionsInstrumentationEvent.eventType.setter();
  v12 = sub_100065020(&qword_1001BD078, &qword_100173950);
  __chkstk_darwin(v12 - 8);
  v14 = v23 - v13;
  v15 = enum case for GenerativeFunctionsInstrumentationEvent.Subtype.fail(_:);
  v16 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Subtype();
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  sub_100009BFC(v14, 0, 1, v16);
  GenerativeFunctionsInstrumentationEvent.subtype.setter();
  v17 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers();
  __chkstk_darwin(v17);
  v23[4] = a2;
  v23[5] = a3;
  v23[6] = a4;
  v23[7] = a5;
  v23[8] = a6;
  static Buildable.with(_:)();
  GenerativeFunctionsInstrumentationEvent.identifiers.setter();
  v18 = sub_100065020(&qword_1001BD080, &unk_100173958);
  __chkstk_darwin(v18 - 8);
  v20 = (v23 - v19);
  swift_getErrorValue();
  sub_1000BA718(v23[10], v23[11], v20);
  v21 = type metadata accessor for GenerativeFunctionsInstrumentationError();
  sub_100009BFC(v20, 0, 1, v21);
  return GenerativeFunctionsInstrumentationEvent.error.setter();
}

uint64_t sub_10011BC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_100065020(&qword_1001B9060, &unk_10016FCD0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  UUIDIdentifier.uuid.getter();
  v11 = type metadata accessor for UUID();
  sub_100009BFC(&v18[-v10], 0, 1, v11);
  v12 = GenerativeFunctionsInstrumentationEvent.Identifiers.modelManagerRequestIdentifier.setter();
  __chkstk_darwin(v12);
  sub_100065020(&qword_1001B94F0, &unk_100172060);
  UUIDIdentifier.uuid.getter();
  sub_100009BFC(&v18[-v10], 0, 1, v11);
  GenerativeFunctionsInstrumentationEvent.Identifiers.modelManagerSessionIdentifier.setter();
  v13 = sub_100065020(&qword_1001BD088, &qword_100173968);
  __chkstk_darwin(v13 - 8);
  v15 = &v18[-v14];
  v16 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.CatalogResourceIdentifierAndVersion();
  v19 = a5;
  v20 = a6;
  v21 = 0;
  v22 = 0;
  static Buildable.with(_:)();
  sub_100009BFC(v15, 0, 1, v16);
  return GenerativeFunctionsInstrumentationEvent.Identifiers.catalogResourceIdentifier.setter();
}

void *sub_10011BE1C()
{

  sub_100003324((v0 + 40));

  return v0;
}

uint64_t sub_10011BE54()
{
  sub_10011BE1C();

  return _swift_deallocClassInstance(v0, 88, 7);
}

uint64_t sub_10011C138()
{
  sub_100002BAC();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for RemoteIPCRequest();
  v1[5] = v4;
  v1[6] = *(v4 - 8);
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_10011C1F8, 0, 0);
}

uint64_t sub_10011C1F8()
{
  sub_100002BAC();
  v1 = v0[4];
  TaskCancellingXPCReceivedMessage.decode()();
  v2 = *(v1 + 16);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_10011C2A0;
  v4 = v0[2];

  return sub_1000B1D1C(v4, v2);
}

uint64_t sub_10011C2A0()
{
  sub_100002BAC();
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_10011C41C;
  }

  else
  {
    v2 = sub_10011C3B0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10011C3B0()
{
  sub_100002BAC();
  v1 = sub_100005C38();
  v2(v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10011C41C()
{
  v1 = *(v0 + 16);
  v1[3] = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v1[4] = sub_10011C9EC(&qword_1001B9A10, &protocol conformance descriptor for <> IPCResult<A, B>);
  v1[5] = sub_1000052BC(&qword_1001B99F8);
  sub_10000366C(v1);
  swift_errorRetain();
  ModelManagerError.init(wrapping:)();
  swift_storeEnumTagMultiPayload();

  v2 = sub_100005C38();
  v3(v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10011C524@<X0>(uint64_t *a2@<X8>)
{
  a2[3] = sub_100065020(&qword_1001B99F0, &qword_100170530);
  a2[4] = sub_1000052BC(&qword_1001B99F8);
  v3 = sub_10000366C(a2);
  sub_100065020(&qword_1001B8F60, &unk_100171260);
  _print_unlocked<A, B>(_:_:)();
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = enum case for ModelManagerError.ipcError(_:);
  v5 = type metadata accessor for ModelManagerError();
  (*(*(v5 - 8) + 104))(v3, v4, v5);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10011C654()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10011CAD4;

  return sub_10011C138();
}

uint64_t sub_10011C700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_10011CAD4;

  return TaskCancellablePeerHandler.handleIncomingRequestWithReply(_:callback:)(a1, a2, a3, a4, a5);
}

uint64_t sub_10011C7C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10011CAD4;

  return TaskCancellablePeerHandler.handleIncomingRequest(_:)(a1, a2, a3);
}

uint64_t sub_10011C878(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000BCE90;

  return TaskCancellablePeerHandler.handleCancellation()(a1, a2);
}

uint64_t sub_10011C9A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10011C9EC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_10006A614(&qword_1001B99F0, &qword_100170530);
    sub_10011C9A4(&qword_1001B9A00, &type metadata accessor for ModelManagerError, &protocol conformance descriptor for ModelManagerError);
    sub_10011C9A4(&qword_1001B9A08, &type metadata accessor for ModelManagerError, &protocol conformance descriptor for ModelManagerError);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10011CAF8()
{
  sub_100002BAC();
  v1 = *(OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_purgeInactiveAssetsTask + v0[2]);
  v0[3] = v1;
  if (v1)
  {

    Task.cancel()();
    v2 = swift_task_alloc();
    v0[4] = v2;
    *v2 = v0;
    v2[1] = sub_10011CC00;

    return Task<>.value.getter(v2);
  }

  else
  {
    sub_100043D74();
    sub_100001F00();

    return v3();
  }
}

uint64_t sub_10011CC00()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100002C10();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10011CCF8()
{
  sub_100002BAC();

  sub_100043D74();
  sub_100001F00();

  return v0();
}

uint64_t sub_10011CD58()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BD218);
  sub_10000641C(v0, qword_1001BD218);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

BOOL sub_10011CDC8()
{
  v1 = type metadata accessor for Date();
  sub_100002BDC();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static Date.now.getter();
  v7 = sub_1000C1318();
  v12 = v0;
  v13 = v6;
  v8 = sub_10003DADC(sub_1001230F0, v11, v7);
  v9 = sub_10000E8DC(v8);

  (*(v3 + 8))(v6, v1);
  return v9 != 0;
}

uint64_t sub_10011CED4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + v3;
  swift_beginAccess();
  v8 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  __chkstk_darwin(v8);
  v9 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v9, &v7[v10], v4);
  swift_beginAccess();
  _s6PolicyVMa_0(0);
  static Date.+ infix(_:_:)();
  v11 = *(v5 + 8);
  v11(v9, v4);
  sub_10002B0EC();
  v12 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v11(v9, v4);
  if (v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = v7[*(v8 + 24)] ^ 1;
  }

  return v13 & 1;
}

uint64_t sub_10011D0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[20] = v5;
  v4[21] = *(v5 - 8);
  v4[22] = swift_task_alloc();
  v6 = type metadata accessor for ContinuousClock.Instant();
  v4[23] = v6;
  v4[24] = *(v6 - 8);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();

  return _swift_task_switch(sub_10011D214, 0, 0);
}

uint64_t sub_10011D214()
{
  sub_100003884();
  v1 = *(v0 + 152);
  type metadata accessor for _OSActivity();
  *(v0 + 216) = swift_initStackObject();
  *(v0 + 224) = sub_10001B160("Purge Inactive Assets", 21, 2);
  sub_100004BA0(v1 + 16, v0 + 56);
  v2 = type metadata accessor for Date();
  *(v0 + 232) = v2;
  sub_100002BDC();
  *(v0 + 240) = v3;
  *(v0 + 248) = *(v4 + 64);
  *(v0 + 256) = sub_100002C58();
  v5 = sub_100065020(&qword_1001BBA80, &qword_100172440);
  sub_100002F04(v5);
  *(v0 + 264) = sub_100002C58();
  Strong = swift_weakLoadStrong();
  *(v0 + 272) = Strong;
  if (Strong)
  {
    v7 = swift_task_alloc();
    *(v0 + 280) = v7;
    *v7 = v0;
    sub_100003100(v7);
    sub_100004CC8();

    return sub_10011E1E8();
  }

  else
  {
    sub_100003978();
    sub_100009BFC(v10, v11, v12, v2);
    sub_10002C278(*(v0 + 264), &qword_1001BBA80, &qword_100172440);

    *(v0 + 145) = 1;

    if (qword_1001B8A88 != -1)
    {
      sub_100011558(&qword_1001B8A88);
    }

    v13 = type metadata accessor for Logger();
    sub_10000641C(v13, qword_1001BD218);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (sub_100002F80(v15))
    {
      v16 = sub_100007648();
      sub_10000A240(v16);
      sub_100003DD0();
      _os_log_impl(v17, v18, v19, v20, v21, 2u);
      sub_100002F64();
    }

    sub_100004C24();
    v22 = swift_weakLoadStrong();
    *(v0 + 336) = v22;
    if (!v22)
    {
      sub_100005CE0();
      os_activity_scope_leave((v14 + 24));
      swift_endAccess();

      sub_100001F00();
      sub_100004CC8();

      __asm { BRAA            X1, X16 }
    }

    sub_100004CC8();

    return _swift_task_switch(v23, v24, v25);
  }
}

uint64_t sub_10011D544()
{
  sub_100001ED0();
  v2 = *v1;
  sub_100004B40();
  *v3 = v2;
  v4 = *v1;
  sub_100002B9C();
  *v5 = v4;
  *(v2 + 288) = v0;

  if (v0)
  {
    v6 = sub_10011DF70;
  }

  else
  {

    v6 = sub_10011D680;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10011D680()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 232);
  v3 = sub_10000205C();
  if (sub_10000C6C0(v3, v4, v2) == 1)
  {
    sub_10002C278(v1, &qword_1001BBA80, &qword_100172440);

    *(v0 + 145) = 1;

    if (qword_1001B8A88 != -1)
    {
      sub_100011558(&qword_1001B8A88);
    }

    v5 = type metadata accessor for Logger();
    sub_10000641C(v5, qword_1001BD218);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (sub_100002F80(v7))
    {
      v8 = sub_100007648();
      sub_10000A240(v8);
      sub_100003DD0();
      _os_log_impl(v9, v10, v11, v12, v13, 2u);
      sub_100002F64();
    }

    sub_100004C24();
    Strong = swift_weakLoadStrong();
    *(v0 + 336) = Strong;
    if (!Strong)
    {
      sub_100005CE0();
      os_activity_scope_leave((v6 + 24));
      swift_endAccess();

      sub_100001F00();
      sub_10000A7FC();

      __asm { BRAA            X1, X16 }
    }

    sub_10000A7FC();

    return _swift_task_switch(v15, v16, v17);
  }

  else
  {
    v19 = *(v0 + 240);
    v20 = *(v0 + 192);
    (*(v19 + 32))(*(v0 + 256), v1, v2);

    static ContinuousClock.Instant.now.getter();
    v21 = swift_task_alloc();
    static Date.now.getter();
    Date.timeIntervalSince(_:)();
    v22 = *(v19 + 8);
    *(v0 + 296) = v22;
    *(v0 + 304) = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v22(v21, v2);

    static Duration.seconds(_:)();
    ContinuousClock.Instant.advanced(by:)();
    *(v0 + 312) = *(v20 + 8);
    *(v0 + 320) = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v23 = sub_100003754();
    v24(v23);
    *(v0 + 128) = xmmword_1001723E0;
    *(v0 + 144) = 0;
    static Clock<>.continuous.getter();
    v25 = swift_task_alloc();
    *(v0 + 328) = v25;
    sub_10002C7C4(&qword_1001BBA88, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
    sub_1000060CC();
    *v25 = v26;
    v25[1] = sub_10011DA34;
    sub_10000A7FC();

    return static Task<>.sleep<A>(until:tolerance:clock:)();
  }
}

uint64_t sub_10011DA34()
{
  v2 = *v1;
  sub_100004B40();
  *v3 = v2;
  v4 = *v1;
  sub_100002B9C();
  *v5 = v4;

  if (v0)
  {
    v6 = v2[39];
    v7 = v2[22];
    v10 = v2 + 20;
    v8 = v2[20];
    v9 = v10[1];

    (*(v9 + 8))(v7, v8);
    v11 = sub_100003754();
    v6(v11);
  }

  else
  {
    v12 = v2[39];
    v13 = v2[26];
    v14 = v2[23];
    (*(v2[21] + 8))(v2[22], v2[20]);
    v12(v13, v14);
  }

  return _swift_task_switch(sub_10011DBE4, 0, 0);
}

uint64_t sub_10011DBE4()
{
  sub_100003884();
  v3 = sub_1000166C4(v2);
  v4 = sub_1000060A4();
  v1(v4);
  if ((v3 & 1) == 0)
  {

    v5 = type metadata accessor for Date();
    v0[29] = v5;
    sub_100002BDC();
    v0[30] = v6;
    v0[31] = *(v7 + 64);
    v0[32] = sub_100002C58();
    v8 = sub_100065020(&qword_1001BBA80, &qword_100172440);
    sub_100002F04(v8);
    v0[33] = sub_100002C58();
    Strong = swift_weakLoadStrong();
    v0[34] = Strong;
    if (Strong)
    {
      v10 = swift_task_alloc();
      v0[35] = v10;
      *v10 = v0;
      sub_100003100(v10);
      sub_100003E20();
      sub_100003D20();

      return sub_10011E1E8();
    }

    sub_100003978();
    sub_100009BFC(v13, v14, v15, v5);
    sub_10002C278(v0[33], &qword_1001BBA80, &qword_100172440);
  }

  sub_10000EC80();
  if (qword_1001B8A88 != -1)
  {
    sub_100011558(&qword_1001B8A88);
  }

  v16 = type metadata accessor for Logger();
  sub_10000641C(v16, qword_1001BD218);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (sub_100002F80(v18))
  {
    v19 = sub_100007648();
    sub_10000A240(v19);
    sub_100003DD0();
    _os_log_impl(v20, v21, v22, v23, v24, 2u);
    sub_100002F64();
  }

  sub_100004C24();
  v25 = swift_weakLoadStrong();
  v0[42] = v25;
  if (!v25)
  {
    sub_100005CE0();
    os_activity_scope_leave((v17 + 24));
    swift_endAccess();

    sub_100001F00();
    sub_100003D20();

    __asm { BRAA            X1, X16 }
  }

  sub_100003D20();

  return _swift_task_switch(v26, v27, v28);
}

uint64_t sub_10011DED4()
{
  sub_100002BAC();
  sub_100121D70(*(v0 + 145));

  return _swift_task_switch(sub_100042C44, 0, 0);
}

uint64_t sub_10011DF70()
{
  sub_100003884();

  *(v0 + 145) = 0;

  if (qword_1001B8A88 != -1)
  {
    sub_100011558(&qword_1001B8A88);
  }

  v1 = type metadata accessor for Logger();
  sub_10000641C(v1, qword_1001BD218);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (sub_100002F80(v3))
  {
    v4 = sub_100007648();
    sub_10000A240(v4);
    sub_100003DD0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    sub_100002F64();
  }

  sub_100004C24();
  Strong = swift_weakLoadStrong();
  *(v0 + 336) = Strong;
  if (!Strong)
  {
    sub_100005CE0();
    os_activity_scope_leave((v2 + 24));
    swift_endAccess();

    sub_100001F00();
    sub_100004CC8();

    __asm { BRAA            X1, X16 }
  }

  sub_100004CC8();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10011E138()
{
  sub_100001ED0();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10006F558;

  return sub_10011D0C0(v3, v4, v5, v6);
}

uint64_t sub_10011E1E8()
{
  sub_100002BAC();
  v1[31] = v2;
  v1[32] = v0;
  State = type metadata accessor for LoadState();
  v1[33] = State;
  v1[34] = *(State - 8);
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v4 = sub_100065020(&qword_1001BB3F8, &qword_100171D50);
  sub_100002F04(v4);
  v1[37] = sub_100002C58();
  v5 = sub_100002C10();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10011E2D4()
{
  sub_100008010();
  sub_1000134A0();
  if (qword_1001B8A88 != -1)
  {
    sub_100011558(&qword_1001B8A88);
  }

  v3 = type metadata accessor for Logger();
  *(v0 + 304) = sub_10000641C(v3, qword_1001BD218);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = &OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_policy;
  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 256);
    v8 = sub_100007698();
    *v8 = 134217984;
    v9 = v7 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_policy;
    sub_100004BA0(v9, v0 + 184);
    *(v8 + 4) = *(v9 + *(_s6PolicyVMa_0(0) + 24));
    sub_100003DD0();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    sub_100002F64();
  }

  v15 = *(v0 + 256);
  v16 = type metadata accessor for Date();
  *(v0 + 312) = v16;
  v17 = *(v16 - 8);
  *(v0 + 320) = v17;
  *(v0 + 328) = *(v17 + 64);
  *(v0 + 336) = swift_task_alloc();
  static Date.now.getter();
  *(v0 + 240) = &_swiftEmptySetSingleton;
  v18 = swift_task_alloc();
  v19 = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_policy;
  *(v0 + 344) = v18;
  *(v0 + 352) = v19;
  sub_100004BA0(v15 + v19, v0 + 16);
  *(v0 + 360) = _s6PolicyVMa_0(0);
  static Date.- infix(_:_:)();
  v20 = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assets;
  *(v0 + 368) = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assets;
  sub_100004BA0(&v20[v15], v0 + 40);
  v21 = *&v20[v15];

  sub_1000B55EC(v15, v21);
  v23 = v22;

  sub_10002B918(v23);
  v25 = v24;
  v26 = swift_task_alloc();
  *(v26 + 16) = v18;

  v27 = v25;
  v28 = 0;
  sub_100038E28(v27, v15, sub_10002B910, v26);

  sub_10002B524();
  v30 = v29;
  *(v0 + 376) = v29;

  if (!(v30 >> 62))
  {
    v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v31)
    {
      goto LABEL_7;
    }

LABEL_23:
    v30 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    v52 = sub_100002F80(v51);
    v26 = *(v0 + 376);
    if (v52)
    {
      v53 = sub_100007648();
      sub_100018D38(v53);
      sub_10000A4A4();
      _os_log_impl(v54, v55, v56, v57, &OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_policy, 2u);
      sub_100002BB8(&OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_policy);
LABEL_27:

      v30 = *(v0 + 256);
      if (sub_100019684())
      {
        v58 = _s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lFTu[1];

        v59 = swift_task_alloc();
        sub_100123144(v59);
        sub_100065020(&qword_1001BB430, &qword_100171E18);
        sub_1000060CC();
        *v58 = v60;
        sub_100003C80();
        sub_100002E2C(&type metadata for Never);
        sub_10000A9AC();

        return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v61, v62, v63);
      }

      sub_1000034E8();
      v64 = sub_100001F70();
      sub_1000B55EC(v64, v65);
      sub_100003170();

      sub_10010C604(v66);
      sub_10000879C();
      sub_100121E30(v67, v68, v69);
      goto LABEL_34;
    }

LABEL_26:

    goto LABEL_27;
  }

  v31 = _CocoaArrayWrapper.endIndex.getter();
  if (!v31)
  {
    goto LABEL_23;
  }

LABEL_7:
  *(v0 + 448) = enum case for LoadState.loaded(_:);
  *(v0 + 384) = v31 - 1;
  if (__OFSUB__(v31, 1))
  {
    __break(1u);
    goto LABEL_26;
  }

  sub_100019610();
  if (!v33)
  {
    v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_13:
    *(v0 + 392) = v28;
    sub_100012E68();
    if (v33 && (sub_10000C00C(), type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0), sub_10000CCA8(), (v37 & 1) == 0))
    {
      v47 = swift_task_alloc();
      v48 = sub_100018DE0(v47);
      *v48 = v49;
      sub_10000A710(v48);
      sub_100007A90();

      return sub_1000486EC();
    }

    else
    {
      sub_1000294E8();
      sub_100003978();
      sub_100009BFC(v38, v39, v40, v41);
      v42 = swift_task_alloc();
      v43 = sub_10000CD64(v42);
      *v43 = v44;
      sub_1000084D8(v43);
      sub_100007A90();

      return sub_10002BA5C();
    }
  }

  if (v32 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_100007900();
    if (!v36)
    {
      sub_100011174(v34, v35);
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_34:

  v70 = v219;
  if ((v219 & 0x8000000000000000) != 0 || (v219 & 0x4000000000000000) != 0)
  {
    goto LABEL_59;
  }

  if (!*(v219 + 16))
  {
LABEL_60:
    sub_1000486B8();
    Logger.logObject.getter();
    v190 = static os_log_type_t.default.getter();
    if (sub_100002F80(v190))
    {
      v191 = sub_100007648();
      sub_10000A240(v191);
      sub_100003DD0();
      _os_log_impl(v192, v193, v194, v195, v196, 2u);
      sub_100002F64();
    }

    sub_10000CFBC();
    v182 = v6[1];
    v197 = sub_1000060A4();
    (v182)(v197);
    sub_100003978();
    sub_100009BFC(v198, v199, v200, v28);
LABEL_63:
    v201 = sub_100005764();
    (v182)(v201);

    sub_100002F54();
    goto LABEL_64;
  }

LABEL_37:
  sub_10002CC90(v70);
  sub_100007984();
  sub_100019274();
  sub_10002D264(v71, v72, v73);
  sub_10000C208();
  v215 = *(v30 + 16);
  v216 = v30;
  if (!v215)
  {
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.default.getter();
    if (sub_100003A34(v93))
    {
      sub_100007698();
      sub_10000767C();
      sub_100010CCC();
      v94 = sub_10000E89C(4.8149e-34);
      sub_100002E08();
      sub_10002C7C4(v95, v96, &unk_1001720DC);

      sub_100018958(v97);
      v98 = sub_10001E6BC();
      sub_10000D598(v98, v99, v100, v101, v102, v103, v104, v105, v204, v207, v209, v211, v213, v214, 0, v216, v217, v218);
      sub_100014490();
      *(v28 + 4) = v94;
      sub_100018A84();
      _os_log_impl(v106, v107, v108, v109, v110, 0xCu);
      sub_100003324(&OBJC_IVAR____TtC13modelmanagerd13PolicyManager_allowList);
      sub_100012684();
      sub_100002F64();
    }

    sub_1000063F0();
    sub_10000528C();
    sub_10002C7C4(v111, v112, &protocol conformance descriptor for ModelManagerError);
    v113 = sub_100008194();
    sub_10002AB60(v113, v114);
    sub_1000038AC();
    (*(v115 + 104))();
    swift_willThrow();

    v116 = sub_100004C50();
    (v26)(v116);
LABEL_52:
    v163 = sub_100009CC4();
    (v26)(v163);

    sub_100001F00();
LABEL_64:
    sub_100007A90();

    __asm { BRAA            X1, X16 }
  }

  v70 = *(v0 + 320);
  v74 = sub_100065020(&qword_1001BBA80, &qword_100172440);
  sub_100002F04(v74);
  v204 = *(v75 + 64) + 15;
  v209 = swift_task_alloc();
  sub_100003978();
  sub_10000E73C(v76, v77, v78);
  v213 = v80;
  v214 = v79;

  v6 = 0;
  while (1)
  {
    v30 = v216;
    if (!v215)
    {

      goto LABEL_48;
    }

    if (!*(v216 + 16))
    {
      __break(1u);
LABEL_59:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_60;
      }

      goto LABEL_37;
    }

    sub_100003254();
    v1 = *(v0 + 312);
    v26 = *(v0 + 256) + v81;
    v28 = sub_100123150();
    sub_100007ED0();
    type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
    swift_task_alloc();
    sub_100123130();
    v82();

    sub_10002ABD4();
    v2 = *v214;
    (*v214)(v70, v1);

    sub_100011A58(v83, v84, v85, v86, v87, v88, v89, v90, v204, v207, v209, v211, v213, v214, v215, v216, v217, v218);
    sub_10001B250();
    if (v70)
    {
      break;
    }

    v91 = sub_10001996C();
    (v2)(v91);
  }

  v26 = v209;
  sub_10002C278(v209, &qword_1001BBA80, &qword_100172440);
  v125 = sub_10000F210();
  v126(v125);
  v117 = sub_100007D14();
LABEL_48:
  v127 = *(v0 + 312);
  v128 = sub_1000187B4(v117, v118, v119, v120, v121, v122, v123, v124, v204);
  sub_10002CC20(v209, v128);
  sub_100013B9C(v128);
  sub_10002C278(v128, &qword_1001BBA80, &qword_100172440);

  if (v127 == 1)
  {
    sub_10003F878(v129, v130, v131, v132, v133, v134, v135, v136, v205, v207, v209, v211);

    v137 = Logger.logObject.getter();
    static os_log_type_t.fault.getter();
    sub_1000089B8();

    if (sub_10000A098())
    {
      sub_100007698();
      sub_100003E34();
      sub_10000CC14();
      OBJC_IVAR____TtC13modelmanagerd13PolicyManager_allowList = 136315138;
      v138 = sub_1001196B4(v212, v216);
      sub_10000A3BC(v138, v139, v140, v141, v142, v143, v144, v145, v206, v208, v210, v212, v213, v214, v215, v216, v217, v218);
      sub_100026850();
      *algn_100170004 = v1;
      sub_100003920(&_mh_execute_header, v146, v147, "Remaining purge candidates %s generated task wake times in the past.  Ending inactive asset purge task");
      sub_100005AA4();
      sub_100012684();
    }

    sub_100036778();
    sub_10000528C();
    sub_10002C7C4(v148, v149, &protocol conformance descriptor for ModelManagerError);
    sub_10001376C();
    v150 = swift_allocError();
    sub_10002AB60(v150, v151);
    sub_100006098();
    (*(v152 + 104))();
    swift_willThrow();

    v153 = sub_1000128C4();
    v154 = (v26)(v153);
    v160 = sub_100018C84(v154, &qword_1001BBA80, &qword_100172440, v155, v156, v157, v158, v159, v206, v208, v210);
    sub_10002C278(v160, v161, v162);

    goto LABEL_52;
  }

  v164 = sub_100019540();
  sub_10002A138();
  v165();
  v166 = Logger.logObject.getter();
  v167 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v166, v167))
  {
    sub_1000302A8();

    v182 = *v214;
    (*v214)(v164, v128);
    v185 = sub_100001F70();
    (v182)(v185);

LABEL_57:
    sub_100005EF8();
    sub_1000125A4(v186, v187);
    v188 = sub_1000062B0();
    sub_10002CC20(v188, v189);
    sub_10002C278(v209, &qword_1001BBA80, &qword_100172440);

    goto LABEL_63;
  }

  v168 = sub_100007698();
  sub_100007F6C(v168, 3.852e-34);
  v170 = sub_100004BA0(v209, v169);
  v178 = sub_1000187B4(v170, v171, v172, v173, v174, v175, v176, v177, v205);
  sub_100045708(v178);
  v179 = sub_10000205C();
  v61 = sub_100040314(v179, v180);
  if (!v33)
  {
    v181 = sub_100123114();
    v182 = *v214;
    (*v214)(v164, v2);
    v183 = sub_1000037BC();
    (v182)(v183);

    *(v168 + 4) = v181;
    _os_log_impl(&_mh_execute_header, v166, v167, "Additional inactive assets need purging, next task wake in %f seconds", v168, 0xCu);
    sub_100012A9C();

    v184 = sub_100004CDC();
    (v182)(v184);
    goto LABEL_57;
  }

  __break(1u);
  return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v61, v62, v63);
}

uint64_t sub_10011EF58()
{
  sub_100001ED0();
  v2 = *v1;
  sub_100004B40();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 408) = v0;

  v5 = *(v2 + 256);
  if (v0)
  {

    v6 = sub_100121240;
  }

  else
  {
    v6 = sub_10011F084;
  }

  return _swift_task_switch(v6, v5, 0);
}

void sub_10011F084()
{
  sub_100008010();
  sub_1000134A0();
  sub_1000032F0();
  v7 = &OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
  v8 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
  sub_100004BA0(OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + v5, (v2 + 8));
  v9 = sub_1000316BC();
  v10(v9);
  v11 = sub_100045778();
  v12(v11);
  sub_10000A338();
  v15 = sub_10002C7C4(v13, v14, &protocol conformance descriptor for LoadState);
  sub_10000A9EC();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v16 = v3;
  sub_10000A9EC();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v17 = sub_100009BB0();
  v18 = v18 && v3 == v0;
  if (v18)
  {
    v29 = *v8;
    (*v8)(v15, v4);
    v30 = sub_1000071D0();
    (v29)(v30);

    goto LABEL_8;
  }

  sub_10003DDA0(v17);
  v19 = sub_100057878();
  (OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState)(v19);
  v20 = sub_1000071D0();
  (OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState)(v20);
  v7 = v1;

  if (v6)
  {
LABEL_8:
    sub_10001C168(v21, v22, v23, v24, v25, v26, v27, v28, v205, v208, v211, v213, v214, v215, v216, v217, v219, v221);
  }

  v31 = v2[48];
  if (!v31)
  {
    v16 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    v50 = sub_100002F80(v49);
    v3 = v2[47];
    if (v50)
    {
      v51 = sub_100007648();
      sub_100018D38(v51);
      sub_10000A4A4();
      _os_log_impl(v52, v53, v54, v55, v4, 2u);
      sub_100002BB8(v4);
      goto LABEL_29;
    }

LABEL_28:

LABEL_29:

    v16 = v2[32];
    if (sub_100019684())
    {
      v56 = _s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lFTu[1];

      v57 = swift_task_alloc();
      sub_100123144(v57);
      sub_100065020(&qword_1001BB430, &qword_100171E18);
      sub_1000060CC();
      *v56 = v58;
      sub_100003C80();
      sub_100002E2C(&type metadata for Never);
      sub_10000A9AC();

      goto _$s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF;
    }

    sub_1000034E8();
    v62 = sub_100001F70();
    sub_1000B55EC(v62, v63);
    sub_100003170();

    sub_10010C604(v64);
    sub_10000879C();
    v1 = v221;
    sub_100121E30(v65, v66, v67);
    if (v221)
    {

      sub_100007A90();

      return;
    }

    goto LABEL_39;
  }

  v2[48] = v31 - 1;
  if (__OFSUB__(v31, 1))
  {
    __break(1u);
    goto LABEL_28;
  }

  sub_100019610();
  if (!v18)
  {
    v1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_16:
    v2[49] = v1;
    sub_100012E68();
    if (v18 && (sub_10000C00C(), type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0), sub_10000CCA8(), (v36 & 1) == 0))
    {
      v45 = swift_task_alloc();
      v46 = sub_100018DE0(v45);
      *v46 = v47;
      sub_10000A710(v46);
      sub_100007A90();

      sub_1000486EC();
    }

    else
    {
      sub_1000294E8();
      sub_100003978();
      sub_100009BFC(v37, v38, v39, v40);
      v41 = swift_task_alloc();
      v42 = sub_10000CD64(v41);
      *v42 = v43;
      sub_1000084D8(v42);
      sub_100007A90();

      sub_10002BA5C();
    }

    return;
  }

  if (v32 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_100007900();
    if (!v35)
    {
      sub_100011174(v33, v34);
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_39:

  v69 = v222;
  if ((v222 & 0x8000000000000000) != 0 || (v222 & 0x4000000000000000) != 0)
  {
    goto LABEL_64;
  }

  if (!*(v222 + 16))
  {
LABEL_65:
    sub_1000486B8();
    Logger.logObject.getter();
    v191 = static os_log_type_t.default.getter();
    if (sub_100002F80(v191))
    {
      v192 = sub_100007648();
      sub_10000A240(v192);
      sub_100003DD0();
      _os_log_impl(v193, v194, v195, v196, v197, 2u);
      sub_100002F64();
    }

    sub_10000CFBC();
    v7 = *(v4 + 8);
    v198 = sub_1000060A4();
    v7(v198);
    sub_100003978();
    sub_100009BFC(v199, v200, v201, v1);
LABEL_68:
    v202 = sub_100005764();
    v7(v202);

    sub_100002F54();
    goto LABEL_69;
  }

LABEL_42:
  sub_10002CC90(v69);
  sub_100007984();
  sub_100019274();
  sub_10002D264(v70, v71, v72);
  sub_1000118AC();
  v218 = v16[2];
  v220 = v16;
  if (!v218)
  {
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.default.getter();
    if (sub_100003A34(v92))
    {
      sub_100007698();
      sub_10000767C();
      sub_100010CCC();
      v93 = sub_10000E89C(4.8149e-34);
      sub_100002E08();
      v96 = sub_10002C7C4(v94, v95, &unk_1001720DC);
      sub_100018C84(v96, v97, v98, v99, v100, v101, v102, v103, v205, v208, v211);

      sub_100018958(v104);
      v105 = sub_10001E6BC();
      sub_10000D598(v105, v106, v107, v108, v109, v110, v111, v112, v206, v209, v212, v213, v214, v215, v216, 0, v220, v221);
      sub_100014490();
      *(v1 + 4) = v93;
      sub_100018A84();
      _os_log_impl(v113, v114, v115, v116, v117, 0xCu);
      sub_100003324(v15);
      sub_100012684();
      sub_100002F64();
    }

    sub_1000063F0();
    sub_10000528C();
    sub_10002C7C4(v118, v119, &protocol conformance descriptor for ModelManagerError);
    v120 = sub_100008194();
    sub_10002AB60(v120, v121);
    sub_1000038AC();
    (*(v122 + 104))();
    swift_willThrow();

    v123 = sub_100004C50();
    v3(v123);
LABEL_57:
    v162 = sub_100009CC4();
    v3(v162);

    sub_100001F00();
LABEL_69:
    sub_100007A90();

    __asm { BRAA            X1, X16 }
  }

  v16 = v2[39];
  v69 = v2[40];
  v73 = sub_100065020(&qword_1001BBA80, &qword_100172440);
  sub_100002F04(v73);
  v208 = *(v74 + 64) + 15;
  v213 = swift_task_alloc();
  sub_100003978();
  sub_10000E73C(v75, v76, v77);
  v215 = v79;
  v216 = v78;

  v4 = 0;
  while (1)
  {
    v1 = v220;
    if (!v218)
    {

      goto LABEL_53;
    }

    if (!*(v220 + 16))
    {
      __break(1u);
LABEL_64:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_65;
      }

      goto LABEL_42;
    }

    v7 = v2[45];
    sub_100012E14();
    sub_1000464D8();
    sub_100007ED0();
    v15 = *(type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0) + 32);
    swift_task_alloc();
    sub_100018460();
    v80();

    sub_10002ABD4();
    v16 = v216;
    v81 = sub_10000C670();
    (v8)(v81);

    sub_100011A58(v82, v83, v84, v85, v86, v87, v88, v89, v205, v208, v211, v213, v214, v215, v216, v218, v220, v221);
    sub_10001B250();
    if (v69)
    {
      break;
    }

    v90 = sub_10001996C();
    (v8)(v90);
  }

  v138 = sub_10003F878(v132, &qword_1001BBA80, &qword_100172440, v133, v134, v135, v136, v137, v205, v208, v211, v213);
  sub_10002C278(v138, v139, v140);
  v141 = sub_10000F210();
  v142(v141);
  v124 = sub_100007D14();
LABEL_53:
  v143 = v2[39];
  v144 = sub_100005FA4(v124, v125, v126, v127, v128, v129, v130, v131, v205, v208);
  sub_10002CC20(v213, v144);
  sub_100013B9C(v144);
  sub_10002C278(v144, &qword_1001BBA80, &qword_100172440);

  if (v143 == 1)
  {
    v3 = v214;

    v145 = Logger.logObject.getter();
    static os_log_type_t.fault.getter();
    sub_1000089B8();

    if (sub_10000A098())
    {
      sub_100007698();
      sub_100003E34();
      sub_10000CC14();
      *v15 = 136315138;
      v146 = sub_1001196B4(v214, v220);
      sub_10000A3BC(v146, v147, v148, v149, v150, v151, v152, v153, v207, v210, v211, v213, v214, v215, v216, v218, v220, v221);
      sub_100026850();
      *(v15 + 4) = v7;
      sub_100003920(&_mh_execute_header, v154, v155, "Remaining purge candidates %s generated task wake times in the past.  Ending inactive asset purge task");
      sub_100005AA4();
      sub_100012684();
    }

    sub_100036778();
    sub_10000528C();
    sub_10002C7C4(v156, v157, &protocol conformance descriptor for ModelManagerError);
    sub_10001376C();
    v158 = swift_allocError();
    sub_10002AB60(v158, v159);
    sub_100006098();
    (*(v160 + 104))();
    swift_willThrow();

    v161 = sub_1000128C4();
    v3(v161);
    sub_10002C278(v213, &qword_1001BBA80, &qword_100172440);

    goto LABEL_57;
  }

  sub_100019540();
  sub_10002A138();
  v163();
  v164 = Logger.logObject.getter();
  v165 = static os_log_type_t.default.getter();
  if (!sub_10002660C(v165))
  {
    sub_1000302A8();

    v185 = sub_100011C18();
    v7(v185);
    v186 = sub_100001F70();
    v7(v186);

LABEL_62:
    sub_100005EF8();
    sub_1000125A4(v187, v188);
    v189 = sub_1000062B0();
    sub_10002CC20(v189, v190);
    sub_10002C278(v213, &qword_1001BBA80, &qword_100172440);

    goto LABEL_68;
  }

  v166 = sub_100007698();
  sub_100007F6C(v166, 3.852e-34);
  v168 = sub_100004BA0(v213, v167);
  v176 = sub_100005FA4(v168, v169, v170, v171, v172, v173, v174, v175, v207, v210);
  sub_100045708(v176);
  v177 = sub_10000205C();
  v59 = sub_100040314(v177, v178);
  if (!v18)
  {
    v179 = sub_100123114();
    v180 = sub_10000C768();
    v7(v180);
    v181 = sub_1000037BC();
    v7(v181);

    *(v166 + 4) = v179;
    sub_10000CEA8(&_mh_execute_header, v182, v183, "Additional inactive assets need purging, next task wake in %f seconds");
    sub_100012A9C();

    v184 = sub_100004CDC();
    v7(v184);
    goto LABEL_62;
  }

  __break(1u);
_$s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF:
  __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v59, v60, v61);
}

uint64_t sub_10011FB60()
{
  sub_100001ED0();
  v2 = *v1;
  sub_100004B40();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 424) = v0;

  v5 = *(v2 + 296);
  v6 = *(v2 + 256);
  if (v0)
  {

    sub_10002C278(v5, &qword_1001BB3F8, &qword_100171D50);
    v7 = sub_100123110;
  }

  else
  {
    sub_10002C278(v5, &qword_1001BB3F8, &qword_100171D50);
    v7 = sub_10011FCD0;
  }

  return _swift_task_switch(v7, v6, 0);
}

void sub_10011FCD0()
{
  sub_100008010();
  sub_1000134A0();
  sub_1000032F0();
  v7 = &OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
  v8 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
  sub_100004BA0(OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + v5, (v2 + 8));
  v9 = sub_1000316BC();
  v10(v9);
  v11 = sub_100045778();
  v12(v11);
  sub_10000A338();
  v15 = sub_10002C7C4(v13, v14, &protocol conformance descriptor for LoadState);
  sub_10000A9EC();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v16 = v3;
  sub_10000A9EC();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v17 = sub_100009BB0();
  v18 = v18 && v3 == v0;
  if (v18)
  {
    v29 = *v8;
    (*v8)(v15, v4);
    v30 = sub_1000071D0();
    (v29)(v30);

    goto LABEL_8;
  }

  sub_10003DDA0(v17);
  v19 = sub_100057878();
  (OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState)(v19);
  v20 = sub_1000071D0();
  (OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState)(v20);
  v7 = v1;

  if (v6)
  {
LABEL_8:
    sub_10001C168(v21, v22, v23, v24, v25, v26, v27, v28, v205, v208, v211, v213, v214, v215, v216, v217, v219, v221);
  }

  v31 = v2[48];
  if (!v31)
  {
    v16 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    v50 = sub_100002F80(v49);
    v3 = v2[47];
    if (v50)
    {
      v51 = sub_100007648();
      sub_100018D38(v51);
      sub_10000A4A4();
      _os_log_impl(v52, v53, v54, v55, v4, 2u);
      sub_100002BB8(v4);
      goto LABEL_29;
    }

LABEL_28:

LABEL_29:

    v16 = v2[32];
    if (sub_100019684())
    {
      v56 = _s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lFTu[1];

      v57 = swift_task_alloc();
      sub_100123144(v57);
      sub_100065020(&qword_1001BB430, &qword_100171E18);
      sub_1000060CC();
      *v56 = v58;
      sub_100003C80();
      sub_100002E2C(&type metadata for Never);
      sub_10000A9AC();

      goto _$s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF;
    }

    sub_1000034E8();
    v62 = sub_100001F70();
    sub_1000B55EC(v62, v63);
    sub_100003170();

    sub_10010C604(v64);
    sub_10000879C();
    v1 = v221;
    sub_100121E30(v65, v66, v67);
    if (v221)
    {

      sub_100007A90();

      return;
    }

    goto LABEL_39;
  }

  v2[48] = v31 - 1;
  if (__OFSUB__(v31, 1))
  {
    __break(1u);
    goto LABEL_28;
  }

  sub_100019610();
  if (!v18)
  {
    v1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_16:
    v2[49] = v1;
    sub_100012E68();
    if (v18 && (sub_10000C00C(), type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0), sub_10000CCA8(), (v36 & 1) == 0))
    {
      v45 = swift_task_alloc();
      v46 = sub_100018DE0(v45);
      *v46 = v47;
      sub_10000A710(v46);
      sub_100007A90();

      sub_1000486EC();
    }

    else
    {
      sub_1000294E8();
      sub_100003978();
      sub_100009BFC(v37, v38, v39, v40);
      v41 = swift_task_alloc();
      v42 = sub_10000CD64(v41);
      *v42 = v43;
      sub_1000084D8(v42);
      sub_100007A90();

      sub_10002BA5C();
    }

    return;
  }

  if (v32 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_100007900();
    if (!v35)
    {
      sub_100011174(v33, v34);
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_39:

  v69 = v222;
  if ((v222 & 0x8000000000000000) != 0 || (v222 & 0x4000000000000000) != 0)
  {
    goto LABEL_64;
  }

  if (!*(v222 + 16))
  {
LABEL_65:
    sub_1000486B8();
    Logger.logObject.getter();
    v191 = static os_log_type_t.default.getter();
    if (sub_100002F80(v191))
    {
      v192 = sub_100007648();
      sub_10000A240(v192);
      sub_100003DD0();
      _os_log_impl(v193, v194, v195, v196, v197, 2u);
      sub_100002F64();
    }

    sub_10000CFBC();
    v7 = *(v4 + 8);
    v198 = sub_1000060A4();
    v7(v198);
    sub_100003978();
    sub_100009BFC(v199, v200, v201, v1);
LABEL_68:
    v202 = sub_100005764();
    v7(v202);

    sub_100002F54();
    goto LABEL_69;
  }

LABEL_42:
  sub_10002CC90(v69);
  sub_100007984();
  sub_100019274();
  sub_10002D264(v70, v71, v72);
  sub_1000118AC();
  v218 = v16[2];
  v220 = v16;
  if (!v218)
  {
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.default.getter();
    if (sub_100003A34(v92))
    {
      sub_100007698();
      sub_10000767C();
      sub_100010CCC();
      v93 = sub_10000E89C(4.8149e-34);
      sub_100002E08();
      v96 = sub_10002C7C4(v94, v95, &unk_1001720DC);
      sub_100018C84(v96, v97, v98, v99, v100, v101, v102, v103, v205, v208, v211);

      sub_100018958(v104);
      v105 = sub_10001E6BC();
      sub_10000D598(v105, v106, v107, v108, v109, v110, v111, v112, v206, v209, v212, v213, v214, v215, v216, 0, v220, v221);
      sub_100014490();
      *(v1 + 4) = v93;
      sub_100018A84();
      _os_log_impl(v113, v114, v115, v116, v117, 0xCu);
      sub_100003324(v15);
      sub_100012684();
      sub_100002F64();
    }

    sub_1000063F0();
    sub_10000528C();
    sub_10002C7C4(v118, v119, &protocol conformance descriptor for ModelManagerError);
    v120 = sub_100008194();
    sub_10002AB60(v120, v121);
    sub_1000038AC();
    (*(v122 + 104))();
    swift_willThrow();

    v123 = sub_100004C50();
    v3(v123);
LABEL_57:
    v162 = sub_100009CC4();
    v3(v162);

    sub_100001F00();
LABEL_69:
    sub_100007A90();

    __asm { BRAA            X1, X16 }
  }

  v16 = v2[39];
  v69 = v2[40];
  v73 = sub_100065020(&qword_1001BBA80, &qword_100172440);
  sub_100002F04(v73);
  v208 = *(v74 + 64) + 15;
  v213 = swift_task_alloc();
  sub_100003978();
  sub_10000E73C(v75, v76, v77);
  v215 = v79;
  v216 = v78;

  v4 = 0;
  while (1)
  {
    v1 = v220;
    if (!v218)
    {

      goto LABEL_53;
    }

    if (!*(v220 + 16))
    {
      __break(1u);
LABEL_64:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_65;
      }

      goto LABEL_42;
    }

    v7 = v2[45];
    sub_100012E14();
    sub_1000464D8();
    sub_100007ED0();
    v15 = *(type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0) + 32);
    swift_task_alloc();
    sub_100018460();
    v80();

    sub_10002ABD4();
    v16 = v216;
    v81 = sub_10000C670();
    (v8)(v81);

    sub_100011A58(v82, v83, v84, v85, v86, v87, v88, v89, v205, v208, v211, v213, v214, v215, v216, v218, v220, v221);
    sub_10001B250();
    if (v69)
    {
      break;
    }

    v90 = sub_10001996C();
    (v8)(v90);
  }

  v138 = sub_10003F878(v132, &qword_1001BBA80, &qword_100172440, v133, v134, v135, v136, v137, v205, v208, v211, v213);
  sub_10002C278(v138, v139, v140);
  v141 = sub_10000F210();
  v142(v141);
  v124 = sub_100007D14();
LABEL_53:
  v143 = v2[39];
  v144 = sub_100005FA4(v124, v125, v126, v127, v128, v129, v130, v131, v205, v208);
  sub_10002CC20(v213, v144);
  sub_100013B9C(v144);
  sub_10002C278(v144, &qword_1001BBA80, &qword_100172440);

  if (v143 == 1)
  {
    v3 = v214;

    v145 = Logger.logObject.getter();
    static os_log_type_t.fault.getter();
    sub_1000089B8();

    if (sub_10000A098())
    {
      sub_100007698();
      sub_100003E34();
      sub_10000CC14();
      *v15 = 136315138;
      v146 = sub_1001196B4(v214, v220);
      sub_10000A3BC(v146, v147, v148, v149, v150, v151, v152, v153, v207, v210, v211, v213, v214, v215, v216, v218, v220, v221);
      sub_100026850();
      *(v15 + 4) = v7;
      sub_100003920(&_mh_execute_header, v154, v155, "Remaining purge candidates %s generated task wake times in the past.  Ending inactive asset purge task");
      sub_100005AA4();
      sub_100012684();
    }

    sub_100036778();
    sub_10000528C();
    sub_10002C7C4(v156, v157, &protocol conformance descriptor for ModelManagerError);
    sub_10001376C();
    v158 = swift_allocError();
    sub_10002AB60(v158, v159);
    sub_100006098();
    (*(v160 + 104))();
    swift_willThrow();

    v161 = sub_1000128C4();
    v3(v161);
    sub_10002C278(v213, &qword_1001BBA80, &qword_100172440);

    goto LABEL_57;
  }

  sub_100019540();
  sub_10002A138();
  v163();
  v164 = Logger.logObject.getter();
  v165 = static os_log_type_t.default.getter();
  if (!sub_10002660C(v165))
  {
    sub_1000302A8();

    v185 = sub_100011C18();
    v7(v185);
    v186 = sub_100001F70();
    v7(v186);

LABEL_62:
    sub_100005EF8();
    sub_1000125A4(v187, v188);
    v189 = sub_1000062B0();
    sub_10002CC20(v189, v190);
    sub_10002C278(v213, &qword_1001BBA80, &qword_100172440);

    goto LABEL_68;
  }

  v166 = sub_100007698();
  sub_100007F6C(v166, 3.852e-34);
  v168 = sub_100004BA0(v213, v167);
  v176 = sub_100005FA4(v168, v169, v170, v171, v172, v173, v174, v175, v207, v210);
  sub_100045708(v176);
  v177 = sub_10000205C();
  v59 = sub_100040314(v177, v178);
  if (!v18)
  {
    v179 = sub_100123114();
    v180 = sub_10000C768();
    v7(v180);
    v181 = sub_1000037BC();
    v7(v181);

    *(v166 + 4) = v179;
    sub_10000CEA8(&_mh_execute_header, v182, v183, "Additional inactive assets need purging, next task wake in %f seconds");
    sub_100012A9C();

    v184 = sub_100004CDC();
    v7(v184);
    goto LABEL_62;
  }

  __break(1u);
_$s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF:
  __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v59, v60, v61);
}

uint64_t sub_1001207AC()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;
  *(v3 + 440) = v0;

  if (!v0)
  {

    v8 = sub_100002C10();

    return _swift_task_switch(v8, v9, v10);
  }

  return result;
}

void sub_1001208AC()
{
  sub_1000134A0();
  v118 = v0;
  v2 = v0[55];
  sub_1000034E8();
  v3 = sub_100001F70();
  sub_1000B55EC(v3, v4);
  sub_100003170();

  sub_10010C604(v5);
  sub_10000879C();
  sub_100121E30(v6, v7, v8);
  if (v2)
  {

    sub_10000A9AC();

    return;
  }

  v10 = v117[0];
  if ((v117[0] & 0x8000000000000000) == 0 && (v117[0] & 0x4000000000000000) == 0)
  {
    if (*(v117[0] + 16))
    {
      goto LABEL_8;
    }

LABEL_31:
    sub_1000486B8();
    Logger.logObject.getter();
    v97 = static os_log_type_t.default.getter();
    if (sub_100002F80(v97))
    {
      v98 = sub_100007648();
      sub_10000A240(v98);
      sub_100003DD0();
      _os_log_impl(v99, v100, v101, v102, v103, 2u);
      sub_100002F64();
    }

    sub_10000CFBC();
    v88 = v1[1];
    v104 = sub_1000060A4();
    (v88)(v104);
    sub_100003978();
    sub_100009BFC(v105, v106, v107, v2);
LABEL_34:
    v108 = sub_100005764();
    (v88)(v108);

    sub_100002F54();
LABEL_35:
    sub_10000A9AC();

    v109();
    return;
  }

LABEL_30:
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_31;
  }

LABEL_8:
  sub_10002CC90(v10);
  sub_100007984();
  sub_100019274();
  v14 = sub_10002D264(v11, v12, v13);
  v16 = v15;

  v115 = *(v16 + 16);
  if (!v115)
  {
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (sub_100003A34(v29))
    {
      sub_100007698();
      v30 = sub_10000767C();
      v117[0] = v30;
      sub_10000E89C(4.8149e-34);
      sub_100002E08();
      sub_10002C7C4(v31, v32, &unk_1001720DC);

      v33 = Set.description.getter();
      v35 = v34;

      v36 = sub_100004A3C(v33, v35, v117);

      *(v2 + 4) = v36;
      sub_100018A84();
      _os_log_impl(v37, v38, v39, v40, v41, 0xCu);
      sub_100003324(v30);
      sub_100012A9C();
      sub_100002F64();
    }

    v42 = v0[42];
    v44 = v0[39];
    v43 = v0[40];
    type metadata accessor for ModelManagerError();
    sub_10000528C();
    sub_10002C7C4(v45, v46, &protocol conformance descriptor for ModelManagerError);
    v47 = sub_100008194();
    sub_10002AB60(v47, v48);
    sub_1000038AC();
    (*(v49 + 104))();
    swift_willThrow();

    v50 = *(v43 + 8);
    v50(v42, v44);
LABEL_23:
    v50(v0[43], v0[39]);

    sub_100001F00();
    goto LABEL_35;
  }

  v17 = v0[39];
  v2 = v0[40];
  v18 = sub_100065020(&qword_1001BBA80, &qword_100172440);
  sub_100002F04(v18);
  v112 = swift_task_alloc();
  sub_100003978();
  sub_100009BFC(v19, v20, v21, v17);
  v114 = (v2 + 16);
  v1 = (v2 + 8);
  v111 = v14;

  v22 = 0;
  v113 = (v2 + 8);
  while (1)
  {
    if (v115 == v22)
    {
      v51 = v111;

      v52 = v112;
      goto LABEL_19;
    }

    if (v22 >= *(v16 + 16))
    {
      __break(1u);
      goto LABEL_30;
    }

    sub_100003254();
    v23 = v0[39];
    v10 = v16;
    v24 = swift_task_alloc();
    sub_100007ED0();
    v25 = *(type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0) + 32);
    v26 = swift_task_alloc();
    (*v114)(v26, v16 + v25, v23);
    v1 = v113;

    static Date.+ infix(_:_:)();
    v27 = *v113;
    (*v113)(v26, v23);

    v2 = static Date.> infix(_:_:)();

    if (v2)
    {
      break;
    }

    ++v22;
    v27(v24, v0[39]);

    v16 = v10;
  }

  v53 = v0[39];
  v51 = v111;

  v16 = v10;

  v52 = v112;
  sub_10002C278(v112, &qword_1001BBA80, &qword_100172440);
  v54 = sub_1000062B0();
  v55(v54);
  sub_100009BFC(v112, 0, 1, v53);

LABEL_19:
  v56 = v0[39];
  v57 = swift_task_alloc();
  v58 = sub_1000060A4();
  sub_10002CC20(v58, v59);
  sub_100013B9C(v57);
  sub_10002C278(v57, &qword_1001BBA80, &qword_100172440);

  if (v56 == 1)
  {

    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.fault.getter();

    if (sub_10000A098())
    {
      v62 = sub_100007698();
      v63 = swift_slowAlloc();
      v117[0] = v63;
      *v62 = 136315138;
      v64 = sub_1001196B4(v51, v16);
      v66 = sub_100004A3C(v64, v65, v117);

      *(v62 + 4) = v66;
      _os_log_impl(&_mh_execute_header, v60, v61, "Remaining purge candidates %s generated task wake times in the past.  Ending inactive asset purge task", v62, 0xCu);
      sub_100003324(v63);
      v52 = v112;
      sub_100002BB8(v63);
      sub_100012A9C();
    }

    v67 = v0[42];
    v68 = v0[39];
    type metadata accessor for ModelManagerError();
    sub_10000528C();
    sub_10002C7C4(v69, v70, &protocol conformance descriptor for ModelManagerError);
    v71 = sub_100008194();
    sub_10002AB60(v71, v72);
    sub_1000038AC();
    (*(v73 + 104))();
    swift_willThrow();

    v50 = *v1;
    v50(v67, v68);
    sub_10002C278(v52, &qword_1001BBA80, &qword_100172440);

    goto LABEL_23;
  }

  v74 = v0[42];
  v75 = v0[39];
  v76 = sub_100002C58();
  (*v114)(v76, v74, v75);
  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v77, v78))
  {
    v90 = v0[42];
    v91 = v0[39];

    v88 = *v113;
    v92 = sub_100003754();
    (v88)(v92);
    v88(v90, v91);

    goto LABEL_28;
  }

  v79 = v0[39];
  v80 = sub_100007698();
  sub_100007F6C(v80, 3.852e-34);
  sub_100004BA0(v112, v81);
  v82 = swift_task_alloc();
  sub_10002CC20(v112, v82);
  v83 = sub_10000205C();
  if (sub_10000C6C0(v83, v84, v79) != 1)
  {
    v116 = v0[42];
    v85 = v0[39];
    Date.timeIntervalSince(_:)();
    v87 = v86;
    v88 = *v113;
    (*v113)(v76, v85);
    v89 = sub_1000037BC();
    (v88)(v89);

    *(v80 + 4) = v87;
    _os_log_impl(&_mh_execute_header, v77, v78, "Additional inactive assets need purging, next task wake in %f seconds", v80, 0xCu);
    sub_100002BB8(v80);

    v88(v116, v85);
LABEL_28:
    sub_100005EF8();
    sub_1000125A4(v93, v94);
    v95 = sub_1000062B0();
    sub_10002CC20(v95, v96);
    sub_10002C278(v112, &qword_1001BBA80, &qword_100172440);

    goto LABEL_34;
  }

  __break(1u);
}

uint64_t sub_100121240()
{
  sub_100008010();
  sub_1000134A0();
  v2 = *(v0 + 392);
  v3 = *(v0 + 448);
  v5 = *(v0 + 280);
  v4 = *(v0 + 288);
  v6 = *(v0 + 264);
  v7 = *(v0 + 272);
  v8 = &OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
  v9 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
  sub_100004BA0(OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + v2, v0 + 64);
  (*(v7 + 16))(v4, &v9[v2], v6);
  (*(v7 + 104))(v5, v3, v6);
  sub_10000A338();
  sub_10002C7C4(v10, v11, &protocol conformance descriptor for LoadState);
  sub_1000071D0();
  dispatch thunk of RawRepresentable.rawValue.getter();
  sub_1000071D0();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v12 = *(v0 + 208);
  v13 = *(v0 + 216);
  v15 = *(v0 + 280);
  v14 = *(v0 + 288);
  v16 = *(v0 + 264);
  v17 = (*(v0 + 272) + 8);
  v18 = v12 == *(v0 + 224) && v13 == *(v0 + 232);
  if (v18)
  {
    v19 = *v17;
    (*v17)(*(v0 + 280), *(v0 + 264));
    v29 = sub_100003754();
    (v19)(v29);

    goto LABEL_8;
  }

  v19 = sub_10003DDA0(v12);
  v1 = *v17;
  (*v17)(v15, v16);
  v20 = sub_100003754();
  v1(v20);

  if (v19)
  {
LABEL_8:
    sub_10001C168(v21, v22, v23, v24, v25, v26, v27, v28, v204, v207, v209, v211, v213, v214, v215, v217, v219, v221);
  }

  v30 = *(v0 + 384);
  if (!v30)
  {
    v13 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    if (sub_100002F80(v49))
    {
      v16 = sub_100007648();
      *v16 = 0;

      sub_10000A4A4();
      _os_log_impl(v50, v51, v52, v53, v16, 2u);
      sub_100002BB8(v16);
LABEL_29:

      v13 = *(v0 + 256);
      if (sub_100019684())
      {
        v54 = _s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lFTu[1];

        v55 = swift_task_alloc();
        sub_100123144(v55);
        sub_100065020(&qword_1001BB430, &qword_100171E18);
        sub_1000060CC();
        *v54 = v56;
        sub_100003C80();
        sub_100002E2C(&type metadata for Never);
        sub_10000A9AC();

        return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v57, v58, v59);
      }

      sub_1000034E8();
      v60 = sub_100001F70();
      sub_1000B55EC(v60, v61);
      sub_100003170();

      sub_10010C604(v62);
      sub_10000879C();
      v14 = 0;
      sub_100121E30(v63, v64, v65);
      goto LABEL_36;
    }

LABEL_28:

    goto LABEL_29;
  }

  *(v0 + 384) = v30 - 1;
  if (__OFSUB__(v30, 1))
  {
    __break(1u);
    goto LABEL_28;
  }

  sub_100019610();
  if (!v18)
  {
    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_16:
    *(v0 + 392) = v14;
    sub_100012E68();
    if (v18 && (sub_10000C00C(), type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0), sub_10000CCA8(), (v35 & 1) == 0))
    {
      v45 = swift_task_alloc();
      v46 = sub_100018DE0(v45);
      *v46 = v47;
      sub_10000A710(v46);
      sub_100007A90();

      return sub_1000486EC();
    }

    else
    {
      sub_1000294E8();
      sub_100003978();
      sub_100009BFC(v36, v37, v38, v39);
      v40 = swift_task_alloc();
      v41 = sub_10000CD64(v40);
      *v41 = v42;
      sub_1000084D8(v41);
      sub_100007A90();

      return sub_10002BA5C();
    }
  }

  if (v31 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_100007900();
    if (!v34)
    {
      sub_100011174(v32, v33);
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_36:

  v66 = v222;
  if ((v222 & 0x8000000000000000) != 0 || (v222 & 0x4000000000000000) != 0)
  {
    goto LABEL_61;
  }

  if (!*(v222 + 16))
  {
LABEL_62:
    sub_1000486B8();
    Logger.logObject.getter();
    v190 = static os_log_type_t.default.getter();
    if (sub_100002F80(v190))
    {
      v191 = sub_100007648();
      sub_10000A240(v191);
      sub_100003DD0();
      _os_log_impl(v192, v193, v194, v195, v196, 2u);
      sub_100002F64();
    }

    sub_10000CFBC();
    v8 = *(v15 + 8);
    v197 = sub_1000060A4();
    v8(v197);
    sub_100003978();
    sub_100009BFC(v198, v199, v200, v14);
LABEL_65:
    v201 = sub_100005764();
    v8(v201);

    sub_100002F54();
    goto LABEL_66;
  }

LABEL_39:
  sub_10002CC90(v66);
  sub_100007984();
  sub_100019274();
  sub_10002D264(v67, v68, v69);
  sub_10000C208();
  v216 = v13[2];
  v218 = v13;
  if (!v216)
  {
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.default.getter();
    if (sub_100003A34(v91))
    {
      sub_100007698();
      sub_10000767C();
      sub_100010CCC();
      v92 = sub_10000E89C(4.8149e-34);
      sub_100002E08();
      sub_10002C7C4(v93, v94, &unk_1001720DC);

      sub_100018958(v95);
      v96 = sub_10001E6BC();
      sub_10000D598(v96, v97, v98, v99, v100, v101, v102, v103, v204, v207, v209, v211, v213, v214, 0, v218, v219, v221);
      sub_100014490();
      *(v14 + 4) = v92;
      sub_100018A84();
      _os_log_impl(v104, v105, v106, v107, v108, 0xCu);
      sub_100003324(v19);
      sub_100012684();
      sub_100002F64();
    }

    sub_1000063F0();
    sub_10000528C();
    sub_10002C7C4(v109, v110, &protocol conformance descriptor for ModelManagerError);
    v111 = sub_100008194();
    sub_10002AB60(v111, v112);
    sub_1000038AC();
    (*(v113 + 104))();
    swift_willThrow();

    v114 = sub_100004C50();
    (v16)(v114);
LABEL_54:
    v161 = sub_100009CC4();
    (v16)(v161);

    sub_100001F00();
LABEL_66:
    sub_100007A90();

    __asm { BRAA            X1, X16 }
  }

  v66 = *(v0 + 320);
  v70 = sub_100065020(&qword_1001BBA80, &qword_100172440);
  sub_100002F04(v70);
  v204 = *(v71 + 64) + 15;
  v209 = swift_task_alloc();
  sub_100003978();
  sub_10000E73C(v72, v73, v74);
  v213 = v76;
  v214 = v75;

  v15 = 0;
  while (1)
  {
    v13 = v218;
    if (!v216)
    {

      goto LABEL_50;
    }

    if (!*(v218 + 16))
    {
      __break(1u);
LABEL_61:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_62;
      }

      goto LABEL_39;
    }

    v220 = *(v0 + 360);
    sub_100012E14();
    v19 = v78 + v77;
    v14 = sub_100123150();
    sub_100007ED0();
    type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
    swift_task_alloc();
    sub_100123130();
    v79();

    sub_10002ABD4();
    v80 = sub_10000C670();
    v1(v80);

    sub_100011A58(v81, v82, v83, v84, v85, v86, v87, v88, v204, v207, v209, v211, v213, v214, v216, v218, v220, v221);
    sub_10001B250();
    if (v66)
    {
      break;
    }

    v89 = sub_10001996C();
    v1(v89);
  }

  v16 = v209;
  sub_10002C278(v209, &qword_1001BBA80, &qword_100172440);
  v123 = sub_10000F210();
  v124(v123);
  v115 = sub_100007D14();
LABEL_50:
  v125 = *(v0 + 312);
  v126 = sub_1000187B4(v115, v116, v117, v118, v119, v120, v121, v122, v204);
  sub_10002CC20(v209, v126);
  sub_100013B9C(v126);
  sub_10002C278(v126, &qword_1001BBA80, &qword_100172440);

  if (v125 == 1)
  {
    sub_10003F878(v127, v128, v129, v130, v131, v132, v133, v134, v205, v207, v209, v211);

    v135 = Logger.logObject.getter();
    static os_log_type_t.fault.getter();
    sub_1000089B8();

    if (sub_10000A098())
    {
      sub_100007698();
      sub_100003E34();
      sub_10000CC14();
      *v19 = 136315138;
      v136 = sub_1001196B4(v212, v218);
      sub_10000A3BC(v136, v137, v138, v139, v140, v141, v142, v143, v206, v208, v210, v212, v213, v214, v216, v218, v219, v221);
      sub_100026850();
      *(v19 + 4) = &OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
      sub_100003920(&_mh_execute_header, v144, v145, "Remaining purge candidates %s generated task wake times in the past.  Ending inactive asset purge task");
      sub_100005AA4();
      sub_100012684();
    }

    sub_100036778();
    sub_10000528C();
    sub_10002C7C4(v146, v147, &protocol conformance descriptor for ModelManagerError);
    sub_10001376C();
    v148 = swift_allocError();
    sub_10002AB60(v148, v149);
    sub_100006098();
    (*(v150 + 104))();
    swift_willThrow();

    v151 = sub_1000128C4();
    v152 = (v16)(v151);
    v158 = sub_100018C84(v152, &qword_1001BBA80, &qword_100172440, v153, v154, v155, v156, v157, v206, v208, v210);
    sub_10002C278(v158, v159, v160);

    goto LABEL_54;
  }

  sub_100019540();
  sub_10002A138();
  v162();
  v163 = Logger.logObject.getter();
  v164 = static os_log_type_t.default.getter();
  if (!sub_10002660C(v164))
  {
    sub_1000302A8();

    v184 = sub_100011C18();
    (OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState)(v184);
    v185 = sub_100001F70();
    (OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState)(v185);

LABEL_59:
    sub_100005EF8();
    sub_1000125A4(v186, v187);
    v188 = sub_1000062B0();
    sub_10002CC20(v188, v189);
    sub_10002C278(v209, &qword_1001BBA80, &qword_100172440);

    goto LABEL_65;
  }

  v165 = sub_100007698();
  sub_100007F6C(v165, 3.852e-34);
  v167 = sub_100004BA0(v209, v166);
  v175 = sub_1000187B4(v167, v168, v169, v170, v171, v172, v173, v174, v205);
  sub_100045708(v175);
  v176 = sub_10000205C();
  v57 = sub_100040314(v176, v177);
  if (!v18)
  {
    v178 = sub_100123114();
    v179 = sub_10000C768();
    (OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState)(v179);
    v180 = sub_1000037BC();
    (OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState)(v180);

    *(v165 + 4) = v178;
    sub_10000CEA8(&_mh_execute_header, v181, v182, "Additional inactive assets need purging, next task wake in %f seconds");
    sub_100012A9C();

    v183 = sub_100004CDC();
    (OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState)(v183);
    goto LABEL_59;
  }

  __break(1u);
  return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v57, v58, v59);
}

void sub_100121D70(char a1)
{
  *(OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_purgeInactiveAssetsTask + v1) = 0;

  if (a1)
  {
    v3 = sub_1000C1318();
    v4 = sub_10000E8DC(v3);

    if (v4)
    {

      sub_100043D74();
    }
  }
}

uint64_t sub_100121E30(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v39 = a2;
  v6 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v30 - v10;
  v12 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_10014AFE0(v12);
    *a1 = v12;
  }

  v14 = *(v12 + 16);
  v32 = v12 + 32;
  v38[0] = (v12 + 32);
  v38[1] = v14;
  v15 = _minimumMergeRunLength(_:)(v14);
  if (v15 >= v14)
  {
    if (v14 >= 2)
    {
      v30[1] = a1;
      v30[2] = v3;
      v19 = -1;
      v20 = 1;
      v21 = v32;
      v31 = v14;
      do
      {
        v34 = v20;
        v35 = v19;
        v22 = *(v32 + 8 * v20);
        v33 = v21;
        v23 = v21;
        do
        {
          v24 = *v23;
          v25 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
          swift_beginAccess();
          sub_10001938C(v25 + v22, v11);
          v26 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
          swift_beginAccess();
          sub_10001938C(v26 + v24, v9);

          LOBYTE(v26) = v39(v11, v9);
          sub_1000193F0(v9);
          sub_1000193F0(v11);

          if ((v26 & 1) == 0)
          {
            break;
          }

          v27 = *v23;
          v22 = v23[1];
          *v23 = v22;
          v23[1] = v27;
          --v23;
        }

        while (!__CFADD__(v19++, 1));
        v20 = v34 + 1;
        v21 = v33 + 1;
        v19 = v35 - 1;
      }

      while (v34 + 1 != v31);
    }
  }

  else
  {
    v16 = v15;
    v17 = sub_100065B18(v14 >> 1);
    v37[0] = v18;
    v37[1] = v14 >> 1;
    sub_10012208C(v37, v36, v38, v16, v39, a3);
    *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  return specialized ContiguousArray._endMutation()();
}

void sub_10012208C(unint64_t *a1, uint64_t a2, char **a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v162 = a5;
  v145 = a1;
  v8 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v9 = __chkstk_darwin(v8 - 8);
  v161 = (&v143 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v160 = &v143 - v11;
  v150 = a3;
  v12 = a3[1];
  if (v12 >= 1)
  {
    v144 = a4;
    v13 = 0;
    v14 = _swiftEmptyArrayStorage;
    while (1)
    {
      v15 = v13;
      v16 = v13 + 1;
      if (v13 + 1 < v12)
      {
        v149 = v14;
        v17 = *&(*v150)[8 * v16];
        v18 = &(*v150)[8 * v13];
        i = (8 * v13);
        v20 = *v18;
        v19 = (v18 + 16);
        v21 = (v13 + 1);
        v14 = &OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
        v22 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
        v159 = v12;
        swift_beginAccess();
        v23 = v160;
        sub_10001938C(v22 + v17, v160);
        v24 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
        swift_beginAccess();
        v25 = v24 + v20;
        v16 = v21;
        v26 = v161;
        sub_10001938C(v25, v161);

        LODWORD(v158) = v162(v23, v26);
        sub_1000193F0(v26);
        sub_1000193F0(v23);

        v27 = v159;
        v156 = v15;
        v28 = v15 + 2;
        while (1)
        {
          v29 = v28;
          v30 = (v16 + 1);
          if (v30 >= v27)
          {
            break;
          }

          v32 = *(v19 - 1);
          v31 = *v19;
          v33 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
          swift_beginAccess();
          v14 = v30;
          v34 = v160;
          sub_10001938C(v33 + v31, v160);
          v35 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
          swift_beginAccess();
          v36 = v161;
          sub_10001938C(v35 + v32, v161);

          LODWORD(v35) = v162(v34, v36) & 1;
          sub_1000193F0(v36);
          v37 = v34;
          v16 = v14;
          sub_1000193F0(v37);

          ++v19;
          v28 = v29 + 1;
          v27 = v159;
          if ((v158 & 1) != v35)
          {
            goto LABEL_9;
          }
        }

        v16 = v27;
LABEL_9:
        if (v158)
        {
          v15 = v156;
          if (v16 < v156)
          {
            goto LABEL_153;
          }

          if (v156 >= v16)
          {
            v14 = v149;
          }

          else
          {
            if (v27 >= v29)
            {
              v38 = v29;
            }

            else
            {
              v38 = v27;
            }

            v39 = 8 * v38 - 8;
            v40 = v16;
            v41 = v156;
            v14 = v149;
            v42 = i;
            do
            {
              if (v41 != --v40)
              {
                v43 = *v150;
                if (!*v150)
                {
                  goto LABEL_159;
                }

                v44 = *&v42[v43];
                *&v42[v43] = *&v43[v39];
                *&v43[v39] = v44;
              }

              ++v41;
              v39 -= 8;
              v42 += 8;
            }

            while (v41 < v40);
          }
        }

        else
        {
          v14 = v149;
          v15 = v156;
        }
      }

      v45 = v150[1];
      if (v16 < v45)
      {
        if (__OFSUB__(v16, v15))
        {
          goto LABEL_152;
        }

        if (v16 - v15 < v144)
        {
          v46 = (v15 + v144);
          if (__OFADD__(v15, v144))
          {
            goto LABEL_154;
          }

          if (v46 >= v45)
          {
            v46 = v150[1];
          }

          if (v46 < v15)
          {
            goto LABEL_155;
          }

          if (v16 != v46)
          {
            v149 = v14;
            v14 = *v150;
            v47 = &(*v150)[8 * v16 - 8];
            v156 = v15;
            v48 = (v15 - v16);
            i = v46;
            do
            {
              v147 = v16;
              v49 = *&v14[8 * v16];
              v158 = v48;
              v159 = v47;
              do
              {
                v50 = *v47;
                v51 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
                swift_beginAccess();
                v52 = v160;
                sub_10001938C(v51 + v49, v160);
                v53 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
                swift_beginAccess();
                v54 = v161;
                sub_10001938C(v53 + v50, v161);

                LOBYTE(v53) = v162(v52, v54);
                sub_1000193F0(v54);
                sub_1000193F0(v52);

                if ((v53 & 1) == 0)
                {
                  break;
                }

                if (!v14)
                {
                  goto LABEL_156;
                }

                v55 = *v47;
                v49 = *(v47 + 1);
                *v47 = v49;
                *(v47 + 1) = v55;
                v47 -= 8;
                v104 = __CFADD__(v48++, 1);
              }

              while (!v104);
              v16 = v147 + 1;
              v47 = v159 + 8;
              v48 = v158 - 1;
            }

            while ((v147 + 1) != i);
            v16 = i;
            v14 = v149;
            v15 = v156;
          }
        }
      }

      if (v16 < v15)
      {
        goto LABEL_151;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v147 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10013FB2C();
        v14 = v133;
      }

      v57 = *(v14 + 2);
      v58 = v57 + 1;
      if (v57 >= *(v14 + 3) >> 1)
      {
        sub_10013FB2C();
        v14 = v134;
      }

      *(v14 + 2) = v58;
      v59 = v14 + 32;
      v60 = &v14[16 * v57 + 32];
      v61 = v147;
      *v60 = v15;
      *(v60 + 1) = v61;
      v159 = *v145;
      if (!v159)
      {
        goto LABEL_161;
      }

      if (v57)
      {
        break;
      }

LABEL_119:
      v12 = v150[1];
      v13 = v147;
      if (v147 >= v12)
      {
        goto LABEL_122;
      }
    }

    v149 = v14;
    v148 = v14 + 32;
    while (1)
    {
      v62 = v58 - 1;
      v63 = &v59[16 * v58 - 16];
      v64 = &v14[16 * v58];
      if (v58 >= 4)
      {
        break;
      }

      if (v58 == 3)
      {
        v65 = *(v14 + 4);
        v66 = *(v14 + 5);
        v75 = __OFSUB__(v66, v65);
        v67 = v66 - v65;
        v68 = v75;
LABEL_60:
        if (v68)
        {
          goto LABEL_139;
        }

        v80 = *v64;
        v79 = *(v64 + 1);
        v81 = __OFSUB__(v79, v80);
        v82 = v79 - v80;
        v83 = v81;
        if (v81)
        {
          goto LABEL_142;
        }

        v84 = *(v63 + 1);
        v85 = v84 - *v63;
        if (__OFSUB__(v84, *v63))
        {
          goto LABEL_145;
        }

        if (__OFADD__(v82, v85))
        {
          goto LABEL_146;
        }

        if (v82 + v85 >= v67)
        {
          if (v67 < v85)
          {
            v62 = v58 - 2;
          }

          goto LABEL_81;
        }

        goto LABEL_74;
      }

      v86 = *v64;
      v87 = *(v64 + 1);
      v75 = __OFSUB__(v87, v86);
      v82 = v87 - v86;
      v83 = v75;
LABEL_74:
      if (v83)
      {
        goto LABEL_141;
      }

      v89 = *v63;
      v88 = *(v63 + 1);
      v75 = __OFSUB__(v88, v89);
      v90 = v88 - v89;
      if (v75)
      {
        goto LABEL_144;
      }

      if (v90 < v82)
      {
        goto LABEL_119;
      }

LABEL_81:
      if (v62 - 1 >= v58)
      {
        __break(1u);
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
        goto LABEL_157;
      }

      v94 = *v150;
      if (!*v150)
      {
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
        return;
      }

      v152 = &v59[16 * v62 - 16];
      v95 = *v152;
      v155 = v62;
      v151 = &v59[16 * v62];
      v96 = &v94[8 * v95];
      v97 = 8 * *v151;
      v98 = &v94[v97];
      v99 = 8 * *(v151 + 1);
      v153 = *(v151 + 1);
      v100 = &v94[v99];
      v154 = v95;
      v101 = v97 - 8 * v95;
      v102 = v99 - v97;
      if (v101 >> 3 < (v99 - v97) >> 3)
      {
        v14 = v159;
        sub_100060E68(v96);
        v103 = &v14[v101];
        v158 = v100;
        for (i = &v14[v101]; ; v103 = i)
        {
          v104 = v14 >= v103 || v98 >= v100;
          if (v104)
          {
            v98 = v96;
            goto LABEL_109;
          }

          v105 = v96;
          v106 = v98;
          v107 = *v98;
          v108 = *v14;
          v109 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
          swift_beginAccess();
          v110 = v160;
          sub_10001938C(v109 + v107, v160);
          v111 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
          swift_beginAccess();
          v112 = v161;
          sub_10001938C(v111 + v108, v161);

          LOBYTE(v111) = v162(v110, v112);
          sub_1000193F0(v112);
          sub_1000193F0(v110);

          if ((v111 & 1) == 0)
          {
            break;
          }

          v113 = v106;
          v98 = v106 + 8;
          v114 = v105;
          if (v105 != v106)
          {
            goto LABEL_93;
          }

LABEL_94:
          v96 = v114 + 8;
          v100 = v158;
        }

        v113 = v14;
        v114 = v105;
        v115 = v105 == v14;
        v14 += 8;
        v98 = v106;
        if (v115)
        {
          goto LABEL_94;
        }

LABEL_93:
        *v114 = *v113;
        goto LABEL_94;
      }

      v116 = v159;
      sub_100060E68(v98);
      v103 = v116 + v102;
      v156 = v96;
LABEL_96:
      v117 = v98 - 8;
      v100 -= 8;
      v158 = v98;
      for (i = v98 - 8; v103 > v159 && v96 < v98; v117 = i)
      {
        v119 = *(v103 - 1);
        v120 = *v117;
        v121 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
        swift_beginAccess();
        v122 = v160;
        sub_10001938C(v121 + v119, v160);
        v123 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
        swift_beginAccess();
        v124 = v161;
        sub_10001938C(v123 + v120, v161);

        LOBYTE(v123) = v162(v122, v124);
        sub_1000193F0(v124);
        sub_1000193F0(v122);

        v125 = v100 + 8;
        if (v123)
        {
          v126 = i;
          v98 = i;
          v96 = v156;
          if (v125 != v158)
          {
            *v100 = *i;
            v98 = v126;
          }

          goto LABEL_96;
        }

        if (v103 != v125)
        {
          *v100 = *(v103 - 1);
        }

        v100 -= 8;
        v103 -= 8;
        v96 = v156;
        v98 = v158;
      }

      v14 = v159;
LABEL_109:
      v127 = (v103 - v14) / 8;
      if (v98 != v14 || v98 >= &v14[8 * v127])
      {
        memmove(v98, v14, 8 * v127);
      }

      v129 = v153;
      v130 = v155;
      if (v153 < v154)
      {
        goto LABEL_134;
      }

      v14 = v149;
      v131 = *(v149 + 2);
      if (v155 > v131)
      {
        goto LABEL_135;
      }

      v132 = v152;
      *v152 = v154;
      *(v132 + 1) = v129;
      if (v130 >= v131)
      {
        goto LABEL_136;
      }

      v58 = v131 - 1;
      sub_100147E04(v151 + 16, v131 - 1 - v130, v151);
      *(v14 + 2) = v131 - 1;
      v59 = v148;
      if (v131 <= 2)
      {
        goto LABEL_119;
      }
    }

    v69 = &v59[16 * v58];
    v70 = *(v69 - 8);
    v71 = *(v69 - 7);
    v75 = __OFSUB__(v71, v70);
    v72 = v71 - v70;
    if (v75)
    {
      goto LABEL_137;
    }

    v74 = *(v69 - 6);
    v73 = *(v69 - 5);
    v75 = __OFSUB__(v73, v74);
    v67 = v73 - v74;
    v68 = v75;
    if (v75)
    {
      goto LABEL_138;
    }

    v76 = *(v64 + 1);
    v77 = v76 - *v64;
    if (__OFSUB__(v76, *v64))
    {
      goto LABEL_140;
    }

    v75 = __OFADD__(v67, v77);
    v78 = v67 + v77;
    if (v75)
    {
      goto LABEL_143;
    }

    if (v78 >= v72)
    {
      v92 = *v63;
      v91 = *(v63 + 1);
      v75 = __OFSUB__(v91, v92);
      v93 = v91 - v92;
      if (v75)
      {
        goto LABEL_147;
      }

      if (v67 < v93)
      {
        v62 = v58 - 2;
      }

      goto LABEL_81;
    }

    goto LABEL_60;
  }

  v14 = _swiftEmptyArrayStorage;
LABEL_122:
  v161 = *v145;
  if (!v161)
  {
    goto LABEL_162;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_157:
    v14 = sub_100147DF0(v14);
  }

  v135 = v14 + 16;
  v136 = *(v14 + 2);
  while (v136 >= 2)
  {
    if (!*v150)
    {
      goto LABEL_160;
    }

    v137 = v14;
    v14 += 16 * v136;
    v138 = *v14;
    v139 = &v135[2 * v136];
    v140 = *(v139 + 1);
    v141 = v146;
    sub_100122CE4(&(*v150)[8 * *v14], &(*v150)[8 * *v139], &(*v150)[8 * v140], v161, v162);
    v146 = v141;
    if (v141)
    {
      break;
    }

    if (v140 < v138)
    {
      goto LABEL_148;
    }

    if (v136 - 2 >= *v135)
    {
      goto LABEL_149;
    }

    *v14 = v138;
    *(v14 + 1) = v140;
    v142 = *v135 - v136;
    if (*v135 < v136)
    {
      goto LABEL_150;
    }

    v136 = *v135 - 1;
    sub_100147E04(v139 + 16, v142, v139);
    *v135 = v136;
    v14 = v137;
  }
}

uint64_t sub_100122CE4(void *a1, void *a2, void *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v48 = a5;
  v9 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v10 = __chkstk_darwin(v9 - 8);
  v47 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v46 = &v41 - v12;
  v13 = a2 - a1;
  v14 = a3 - a2;
  if (v13 < v14)
  {
    sub_100060E68(a1);
    v15 = &a4[v13];
    v44 = v15;
    for (i = a3; ; a3 = i)
    {
      if (a4 >= v15 || a2 >= a3)
      {
        a2 = a1;
        goto LABEL_28;
      }

      v17 = *a2;
      v18 = *a4;
      v19 = a4;
      v20 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
      swift_beginAccess();
      v21 = v46;
      sub_10001938C(v20 + v17, v46);
      v22 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
      swift_beginAccess();
      v23 = v47;
      sub_10001938C(v22 + v18, v47);

      LOBYTE(v22) = v48(v21, v23);
      sub_1000193F0(v23);
      sub_1000193F0(v21);

      if ((v22 & 1) == 0)
      {
        break;
      }

      v24 = a2;
      v25 = a1 == a2++;
      a4 = v19;
      if (!v25)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++a1;
      v15 = v44;
    }

    v24 = v19;
    a4 = v19 + 1;
    if (a1 == v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    *a1 = *v24;
    goto LABEL_13;
  }

  sub_100060E68(a2);
  v15 = &a4[v14];
  v42 = a4;
  v43 = a1;
LABEL_15:
  v26 = a2 - 1;
  v27 = a3 - 1;
  v44 = a2 - 1;
  for (i = a2; v15 > a4 && a2 > a1; a2 = i)
  {
    v29 = v27;
    v30 = *(v15 - 1);
    v31 = *v26;
    v32 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    swift_beginAccess();
    v33 = v46;
    sub_10001938C(v32 + v30, v46);
    v34 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    swift_beginAccess();
    v35 = v47;
    sub_10001938C(v34 + v31, v47);

    LOBYTE(v34) = v48(v33, v35);
    sub_1000193F0(v35);
    sub_1000193F0(v33);

    a3 = v29;
    v36 = v29 + 1;
    if (v34)
    {
      v37 = v44;
      a2 = v44;
      a4 = v42;
      a1 = v43;
      if (v36 != i)
      {
        *v29 = *v44;
        a2 = v37;
      }

      goto LABEL_15;
    }

    if (v15 != v36)
    {
      *v29 = *(v15 - 1);
    }

    v27 = v29 - 1;
    --v15;
    a4 = v42;
    a1 = v43;
    v26 = v44;
  }

LABEL_28:
  v38 = v15 - a4;
  if (a2 != a4 || a2 >= &a4[v38])
  {
    memmove(a2, a4, 8 * v38);
  }

  return 1;
}

uint64_t sub_10012304C()
{
  sub_100001ED0();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006F558;
  sub_100019274();

  return sub_1000E65C8();
}

double sub_100123114()
{

  Date.timeIntervalSince(_:)();
  return result;
}

uint64_t sub_100123150()
{

  return swift_task_alloc();
}

uint64_t sub_100123170()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BD230);
  sub_10000641C(v0, qword_1001BD230);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001231E0(uint64_t a1, uint64_t a2)
{
  if (&_sendAneSignal)
  {
    if (qword_1001B8A90 != -1)
    {
      sub_1000052E0(&qword_1001B8A90);
    }

    v2 = type metadata accessor for Logger();
    sub_10000641C(v2, qword_1001BD230);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *(v5 + 4) = sub_100005DA0(4.8149e-34, v45, v6, v7, v8, v9, v10, v11, v12, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);
      sub_100011578(&_mh_execute_header, v13, v14, "Sending abort ANE session signal for %s");
      sub_100003324(v45);
      sub_100002BB8(v45);
      sub_100002BB8(v5);
    }

    sub_100065020(&qword_1001BD2E8, &unk_100173AF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10016FF40;
    *(inited + 32) = 0xD000000000000017;
    *(inited + 40) = 0x8000000100178050;
    v16 = String._bridgeToObjectiveC()();
    type metadata accessor for CFString(0);
    *(inited + 72) = v17;
    *(inited + 48) = v16;
    sub_1000087C0();
    Dictionary.init(dictionaryLiteral:)();
    v18 = String._bridgeToObjectiveC()();
    sub_1000087C0();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    sendAneSignal();
  }

  result = os_variant_has_internal_content();
  if (result)
  {
    if (qword_1001B8A90 != -1)
    {
      sub_1000052E0(&qword_1001B8A90);
    }

    v21 = type metadata accessor for Logger();
    sub_10000641C(v21, qword_1001BD230);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *(v24 + 4) = sub_100005DA0(4.8149e-34, v46, v25, v26, v27, v28, v29, v30, v31, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);
      sub_100011578(&_mh_execute_header, v32, v33, "Sending abort ANE session notification for %s");
      sub_100003324(v46);
      sub_100002BB8(v46);
      sub_100002BB8(v24);
    }

    return notify_post("ModelManagerAbort");
  }

  return result;
}

uint64_t sub_1001234E8()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BD2F0);
  sub_10000641C(v0, qword_1001BD2F0);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10012355C()
{
  type metadata accessor for OS_dispatch_source.MemoryPressureEvent();
  sub_100002BDC();
  v1 = v0;
  __chkstk_darwin(v2);
  sub_100002B8C();
  static OS_dispatch_source.MemoryPressureEvent.critical.getter();
  sub_100011598();
  sub_100015F9C(v3, v4, &protocol conformance descriptor for OS_dispatch_source.MemoryPressureEvent);
  sub_100002CBC();
  v5 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v6 = *(v1 + 8);
  v7 = sub_100002CBC();
  v6(v7);
  if (v5)
  {
    return 0;
  }

  static OS_dispatch_source.MemoryPressureEvent.warning.getter();
  sub_100002CBC();
  v9 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v10 = sub_100002CBC();
  v6(v10);
  v8 = 1;
  if ((v9 & 1) == 0)
  {
    static OS_dispatch_source.MemoryPressureEvent.normal.getter();
    sub_100002CBC();
    v11 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v12 = sub_100002CBC();
    v6(v12);
    if (v11)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return v8;
}

uint64_t sub_1001236BC(uint64_t a1)
{
  v64 = a1;
  v63 = type metadata accessor for DispatchWorkItemFlags();
  sub_100002BDC();
  v59 = v1;
  __chkstk_darwin(v2);
  sub_100002B8C();
  v58 = v4 - v3;
  v61 = type metadata accessor for DispatchQoS();
  sub_100002BDC();
  v57 = v5;
  __chkstk_darwin(v6);
  sub_100002B8C();
  v56 = v8 - v7;
  v62 = sub_100065020(&qword_1001BD318, &qword_100173B30);
  sub_100002BDC();
  v55 = v9;
  v60 = *(v10 + 64);
  __chkstk_darwin(v11);
  v54 = v49 - v12;
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  sub_100002BDC();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_100002B8C();
  v19 = v18 - v17;
  v20 = type metadata accessor for OS_dispatch_source.MemoryPressureEvent();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  sub_100002B8C();
  v24 = v23 - v22;
  v53 = sub_10000E2C0(0, &qword_1001BD320, OS_dispatch_source_ptr);
  sub_100065020(&qword_1001BD328, &qword_100173B38);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100172BA0;
  static OS_dispatch_source.MemoryPressureEvent.all.getter();
  static OS_dispatch_source.MemoryPressureEvent.procLimitWarn.getter();
  static OS_dispatch_source.MemoryPressureEvent.procLimitCritical.getter();
  aBlock = v25;
  sub_100011598();
  sub_100015F9C(v26, v27, &protocol conformance descriptor for OS_dispatch_source.MemoryPressureEvent);
  sub_100065020(&qword_1001BD330, qword_100173B40);
  sub_1001249E8(&unk_1001BD338, &qword_1001BD330, qword_100173B40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_10000E2C0(0, &qword_1001B8BC0, OS_dispatch_queue_ptr);
  (*(v15 + 104))(v19, enum case for DispatchQoS.QoSClass.userInitiated(_:), v13);
  v28 = static OS_dispatch_queue.global(qos:)();
  (*(v15 + 8))(v19, v13);
  v29 = static OS_dispatch_source.makeMemoryPressureSource(eventMask:queue:)();

  (*(v21 + 8))(v24, v20);
  getpid();
  if (memorystatus_control())
  {
    if (qword_1001B8A98 != -1)
    {
      sub_100005300();
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_10000641C(v30, qword_1001BD2F0);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 67109120;
      *(v33 + 4) = errno.getter();
      _os_log_impl(&_mh_execute_header, v31, v32, "Warning: Failed to set memory pressure listener privileged mode: %d", v33, 8u);
    }
  }

  ObjectType = swift_getObjectType();
  v36 = v54;
  v35 = v55;
  v37 = *(v55 + 16);
  v52 = v55 + 16;
  v53 = v37;
  v38 = v62;
  v37(v54, v64, v62);
  v39 = *(v35 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = v29;
  v55 = *(v35 + 32);
  (v55)(v40 + ((v39 + 24) & ~v39), v36, v38);
  v69 = sub_100124904;
  v70 = v40;
  aBlock = _NSConcreteStackBlock;
  v66 = 1107296256;
  v51 = &v67;
  v67 = sub_10000E6BC;
  v68 = &unk_1001B2658;
  v41 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();
  v42 = v56;
  static DispatchQoS.unspecified.getter();
  v43 = v58;
  v49[1] = ObjectType;
  sub_100124364();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v41);
  v50 = v29;
  v59 = *(v59 + 8);
  (v59)(v43, v63);
  v57 = *(v57 + 8);
  (v57)(v42, v61);

  v44 = v62;
  v53(v36, v64, v62);
  v45 = swift_allocObject();
  (v55)(v45 + ((v39 + 16) & ~v39), v36, v44);
  v69 = sub_100124974;
  v70 = v45;
  aBlock = _NSConcreteStackBlock;
  v66 = 1107296256;
  v67 = sub_10000E6BC;
  v68 = &unk_1001B26A8;
  v46 = _Block_copy(&aBlock);
  static DispatchQoS.unspecified.getter();
  sub_100124364();
  v47 = v50;
  OS_dispatch_source.setCancelHandler(qos:flags:handler:)();
  _Block_release(v46);
  (v59)(v43, v63);
  (v57)(v42, v61);

  OS_dispatch_source.activate()();
  *(swift_allocObject() + 16) = v47;
  return AsyncStream.Continuation.onTermination.setter();
}

uint64_t sub_100123EB0(uint64_t a1, uint64_t a2)
{
  v3 = sub_100065020(&qword_1001BD3C0, &qword_100173B58);
  v31 = *(v3 - 8);
  __chkstk_darwin(v3);
  v30 = &v26 - v4;
  v5 = type metadata accessor for OS_dispatch_source.MemoryPressureEvent();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v26 - v10;
  swift_getObjectType();
  OS_dispatch_source_memorypressure.data.getter();
  if (qword_1001B8A98 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000641C(v12, qword_1001BD2F0);
  (*(v6 + 16))(v9, v11, v5);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v28 = v3;
    v16 = v15;
    v27 = swift_slowAlloc();
    v32 = v27;
    *v16 = 136315138;
    sub_100015F9C(&qword_1001BD3C8, &type metadata accessor for OS_dispatch_source.MemoryPressureEvent, &protocol conformance descriptor for OS_dispatch_source.MemoryPressureEvent);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = a2;
    v19 = v18;
    v20 = v9;
    v21 = v5;
    v22 = *(v6 + 8);
    v22(v20, v5);
    v23 = sub_100004A3C(v17, v19, &v32);

    *(v16 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v13, v14, "Received dispatch memory pressure event: %s", v16, 0xCu);
    sub_100003324(v27);

    v3 = v28;
  }

  else
  {

    v22 = *(v6 + 8);
    v22(v9, v5);
    v21 = v5;
  }

  v33 = sub_10012355C();
  sub_100065020(&qword_1001BD318, &qword_100173B30);
  v24 = v30;
  AsyncStream.Continuation.yield(_:)();
  (*(v31 + 8))(v24, v3);
  return (v22)(v11, v21);
}

void sub_10012426C()
{
  if (qword_1001B8A98 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000641C(v0, qword_1001BD2F0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Dispatch memory pressure source cancelled", v3, 2u);
  }

  sub_100065020(&qword_1001BD318, &qword_100173B30);
  AsyncStream.Continuation.finish()();
}

uint64_t sub_100124364()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_100015F9C(&qword_1001B9CE8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100065020(&unk_1001BD3B0, &qword_100172950);
  sub_1001249E8(&qword_1001B9CF0, &unk_1001BD3B0, &qword_100172950);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

void sub_10012443C(uint64_t a1, uint64_t a2)
{
  if (qword_1001B8A98 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000641C(v2, qword_1001BD2F0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Dispatch memory pressure event stream cancelled", v5, 2u);
  }

  swift_getObjectType();
  OS_dispatch_source.cancel()();
}

uint64_t sub_100124528()
{
  v1 = type metadata accessor for OS_dispatch_source.MemoryPressureEvent();
  sub_100002BDC();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100002B8C();
  v7 = v6 - v5;
  v22 = 8;
  v23[0] = 0;
  if (!sysctlbyname("kern.memorystatus_vm_pressure_level", v23, &v22, 0, 0))
  {
    OS_dispatch_source.MemoryPressureEvent.init(rawValue:)();
    v0 = sub_10012355C();
    if (v0 == 2)
    {
      if (qword_1001B8A98 != -1)
      {
        sub_100005300();
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_10000641C(v15, qword_1001BD2F0);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.fault.getter();
      if (!os_log_type_enabled(v16, v17))
      {
        goto LABEL_17;
      }

      v18 = swift_slowAlloc();
      sub_100008510(v18, 3.852e-34);
      *(v18 + 4) = v23[0];
      v19 = "kern.memorystatus_vm_pressure_level contains system memory pressure: %lu";
    }

    else
    {
      if (qword_1001B8A98 != -1)
      {
        sub_100005300();
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_10000641C(v20, qword_1001BD2F0);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v16, v17))
      {
        goto LABEL_17;
      }

      v18 = swift_slowAlloc();
      sub_100008510(v18, 3.852e-34);
      *(v18 + 4) = v23[0];
      v19 = "kern.memorystatus_vm_pressure_level: %lu";
    }

    _os_log_impl(&_mh_execute_header, v16, v17, v19, v18, 0xCu);

LABEL_17:

    (*(v3 + 8))(v7, v1);
    return v0;
  }

  v8 = errno.getter();
  if (qword_1001B8A98 != -1)
  {
    sub_100005300();
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000641C(v9, qword_1001BD2F0);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v10, v11, "sysctlbyname(kern.memorystatus_vm_pressure_level) failed: %{darwin.errno}d", v12, 8u);
  }

  v13 = type metadata accessor for ModelManagerError();
  sub_100015F9C(&qword_1001B8F50, &type metadata accessor for ModelManagerError, &protocol conformance descriptor for ModelManagerError);
  swift_allocError();
  (*(*(v13 - 8) + 104))(v14, enum case for ModelManagerError.internalError(_:), v13);
  swift_willThrow();
  return v0;
}

uint64_t sub_100124904()
{
  v1 = *(sub_100065020(&qword_1001BD318, &qword_100173B30) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_100123EB0(v2, v3);
}

void sub_100124974()
{
  sub_100065020(&qword_1001BD318, &qword_100173B30);

  sub_10012426C();
}

uint64_t sub_1001249E8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10006A614(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100124A44(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1001AFFA0, v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100124A98(char a1)
{
  if (a1)
  {
    return 0x73694C776F6C6C41;
  }

  else
  {
    return 0x73656963696C6F50;
  }
}

uint64_t sub_100124AD4()
{
  v0 = type metadata accessor for FilePath();
  sub_100065A60(v0, qword_1001BEB20);
  sub_10000641C(v0, qword_1001BEB20);
  return FilePath.init(stringLiteral:)();
}

uint64_t sub_100124B38()
{
  v0 = type metadata accessor for FilePath();
  sub_100065A60(v0, qword_1001BEB38);
  sub_10000641C(v0, qword_1001BEB38);
  return FilePath.init(stringLiteral:)();
}

uint64_t sub_100124BC0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100124A44(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100124BF0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100124A98(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100124C24@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100124A44(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100124C58(uint64_t a1)
{
  v2 = sub_100124EA0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100124C94(uint64_t a1)
{
  v2 = sub_100124EA0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PolicyFile.init(from:)(void *a1)
{
  v2 = sub_100065020(&qword_1001BD430, &qword_100173B60);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - v4;
  sub_100003370(a1, a1[3]);
  sub_100124EA0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  sub_100065020(&qword_1001BD440, &qword_100173B68);
  HIBYTE(v10) = 0;
  v6 = sub_100124EF4();
  sub_100005314(v6);
  v8 = v11;
  sub_100065020(&qword_1001B9F28, &qword_100174190);
  HIBYTE(v10) = 1;
  v9 = sub_100124FD8();
  sub_100005314(v9);
  (*(v3 + 8))(v5, v2);
  sub_100003324(a1);
  return v8;
}

unint64_t sub_100124EA0()
{
  result = qword_1001BD438;
  if (!qword_1001BD438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BD438);
  }

  return result;
}

unint64_t sub_100124EF4()
{
  result = qword_1001BD448;
  if (!qword_1001BD448)
  {
    sub_10006A614(&qword_1001BD440, &qword_100173B68);
    sub_100124F80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BD448);
  }

  return result;
}

unint64_t sub_100124F80()
{
  result = qword_1001BD450;
  if (!qword_1001BD450)
  {
    type metadata accessor for Policy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BD450);
  }

  return result;
}

unint64_t sub_100124FD8()
{
  result = qword_1001BD458;
  if (!qword_1001BD458)
  {
    sub_10006A614(&qword_1001B9F28, &qword_100174190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BD458);
  }

  return result;
}

uint64_t sub_100125054@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = PolicyFile.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_100125080(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001250C0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for PolicyFile.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PolicyFile.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100125280()
{
  result = qword_1001BD460;
  if (!qword_1001BD460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BD460);
  }

  return result;
}

unint64_t sub_1001252D8()
{
  result = qword_1001BD468;
  if (!qword_1001BD468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BD468);
  }

  return result;
}

unint64_t sub_100125330()
{
  result = qword_1001BD470;
  if (!qword_1001BD470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BD470);
  }

  return result;
}

uint64_t sub_100125384()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BD478);
  sub_10000641C(v0, qword_1001BD478);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

void sub_1001253F0()
{
  sub_1000055B0();
  v23 = sub_100065020(&qword_1001BD628, &qword_100173DE0);
  sub_100002BDC();
  v2 = v1;
  sub_100004B1C();
  __chkstk_darwin(v3);
  v5 = &v21 - v4;
  v24 = sub_100065020(&qword_1001BD600, &qword_100173D98);
  sub_100002BDC();
  v7 = v6;
  sub_100004B1C();
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  v22 = sub_100065020(&qword_1001BD620, &qword_100173DD8);
  sub_100002BDC();
  v12 = v11;
  sub_100004B1C();
  __chkstk_darwin(v13);
  v15 = &v21 - v14;
  swift_defaultActor_initialize();
  *(v0 + OBJC_IVAR____TtC13modelmanagerd23InferenceMonitorManager__inferenceMonitors) = &_swiftEmptySetSingleton;
  v16 = OBJC_IVAR____TtC13modelmanagerd23InferenceMonitorManager__mostRecentState;
  v17 = enum case for InferenceMonitor.Event.inferencesNotRunning(_:);
  v18 = type metadata accessor for InferenceMonitor.Event();
  sub_100002C00();
  (*(v19 + 104))(v0 + v16, v17, v18);
  *(v0 + OBJC_IVAR____TtC13modelmanagerd23InferenceMonitorManager__transaction) = 0;
  v20 = v23;
  (*(v2 + 104))(v5, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v23);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v2 + 8))(v5, v20);
  (*(v12 + 32))(v0 + OBJC_IVAR____TtC13modelmanagerd23InferenceMonitorManager__events, v15, v22);
  (*(v7 + 32))(v0 + OBJC_IVAR____TtC13modelmanagerd23InferenceMonitorManager__continuation, v10, v24);
  sub_100002EEC();
}

double sub_100125690()
{
  sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  sub_100004B1C();
  __chkstk_darwin(v1);
  v3 = &v10 - v2;
  static TaskPriority.userInitiated.getter();
  v4 = type metadata accessor for TaskPriority();
  sub_100009BFC(v3, 0, 1, v4);
  sub_100005DC0();
  v7 = sub_100126624(v5, v6, &unk_100173D68);
  v8 = swift_allocObject();
  v8[2] = v0;
  v8[3] = v7;
  v8[4] = v0;
  swift_retain_n();
  sub_1000652FC();

  return result;
}

uint64_t sub_1001257BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v6 = type metadata accessor for InferenceMonitor.Event();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  sub_100065020(&qword_1001BD610, &qword_100173DC8);
  v4[12] = swift_task_alloc();
  v7 = sub_100065020(&qword_1001BD618, &qword_100173DD0);
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();

  return _swift_task_switch(sub_100125920, a4, 0);
}

uint64_t sub_100125920()
{
  sub_100065020(&qword_1001BD620, &qword_100173DD8);
  AsyncStream.makeAsyncIterator()();
  sub_100005DC0();
  v3 = sub_100126624(v1, v2, &unk_100173D68);
  v4 = OBJC_IVAR____TtC13modelmanagerd23InferenceMonitorManager__mostRecentState;
  v0[16] = v3;
  v0[17] = v4;
  v0[18] = OBJC_IVAR____TtC13modelmanagerd23InferenceMonitorManager__inferenceMonitors;
  swift_beginAccess();
  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v6 = sub_1000087D4(v5);

  return AsyncStream.Iterator.next(isolation:)(v6);
}

uint64_t sub_100125C94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a4;
  *(v4 + 40) = a3;
  *(v4 + 16) = a1;
  return _swift_task_switch(sub_100125CC0, a1, 0);
}

uint64_t sub_100125CC0()
{
  v1.n128_f64[0] = sub_100125D28(*(v0 + 24), *(v0 + 40), *(v0 + 32));
  v2 = *(v0 + 8);

  return v2(v1);
}

double sub_100125D28(Swift::UInt a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = OBJC_IVAR____TtC13modelmanagerd23InferenceMonitorManager__inferenceMonitors;
  swift_beginAccess();
  sub_10014366C(a1);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  swift_endAccess();
  result = sub_100126518(v8, v10, v12);
  if (!*(*(v4 + v6) + 16))
  {
    *(v4 + OBJC_IVAR____TtC13modelmanagerd23InferenceMonitorManager__transaction) = 0;
  }

  return result;
}

void sub_100125DE0()
{
  sub_1000055B0();
  v1 = v0;
  v24 = v2;
  v3 = type metadata accessor for InferenceMonitor.Event();
  sub_100002BDC();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100002B8C();
  v9 = v8 - v7;
  if (qword_1001B8AB0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000641C(v10, qword_1001BD478);
  (*(v5 + 16))(v9, v1, v3);
  swift_retain_n();
  swift_retain_n();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v25 = v23;
    *v13 = 136315394;
    sub_1000115B0();
    sub_100126624(v14, v15, &protocol conformance descriptor for InferenceMonitor.Event);
    v22 = v12;
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v5 + 8))(v9, v3);
    v19 = sub_100004A3C(v16, v18, &v25);

    *(v13 + 4) = v19;
    *(v13 + 12) = 1024;

    *(v13 + 14) = v24;

    _os_log_impl(&_mh_execute_header, v11, v22, "Sending inference monitor event: %s to pid %d", v13, 0x12u);
    sub_100003324(v23);
  }

  else
  {

    (*(v5 + 8))(v9, v3);
  }

  sub_1000115B0();
  sub_100126624(v20, v21, &protocol conformance descriptor for InferenceMonitor.Event);
  dispatch thunk of XPCSession.send<A>(_:)();
  sub_100002EEC();
}

uint64_t sub_1001261D4()
{
  v1 = OBJC_IVAR____TtC13modelmanagerd23InferenceMonitorManager__events;
  sub_100065020(&qword_1001BD620, &qword_100173DD8);
  sub_100002C00();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC13modelmanagerd23InferenceMonitorManager__continuation;
  sub_100065020(&qword_1001BD600, &qword_100173D98);
  sub_100002C00();
  (*(v4 + 8))(v0 + v3);

  v5 = OBJC_IVAR____TtC13modelmanagerd23InferenceMonitorManager__mostRecentState;
  type metadata accessor for InferenceMonitor.Event();
  sub_100002C00();
  (*(v6 + 8))(v0 + v5);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1001262DC()
{
  sub_1001261D4();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for InferenceMonitorManager(uint64_t a1)
{
  result = qword_1001BD4B8;
  if (!qword_1001BD4B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10012635C(uint64_t a1)
{
  sub_1001264B8(319, &qword_1001BD4C8, &type metadata accessor for AsyncStream);
  if (v1 <= 0x3F)
  {
    sub_1001264B8(319, &unk_1001BD4D0, &type metadata accessor for AsyncStream.Continuation);
    if (v2 <= 0x3F)
    {
      type metadata accessor for InferenceMonitor.Event();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1001264B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for InferenceMonitor.Event();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

double sub_100126518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_100126558()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10010CE5C;

  return sub_100125C94(v2, v3, v4, v5);
}

uint64_t sub_100126624(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10012666C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10010D2F0;

  return sub_1001257BC(a1, v4, v5, v6);
}

uint64_t sub_100126720()
{
  sub_100002BAC();
  v1[5] = v2;
  v1[6] = v0;
  sub_100065020(&qword_1001BD748, &qword_100173E90);
  v1[7] = swift_task_alloc();
  v3 = sub_100002C10();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001267B0()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = sub_100065020(&qword_1001B9CE0, &qword_100170F90);
  (*(*(v4 - 8) + 16))(v1, v3, v4);
  sub_100009BFC(v1, 0, 1, v4);
  v5 = OBJC_IVAR____TtC13modelmanagerd15TimeoutExecutor_continuation;
  swift_beginAccess();
  sub_100127EB8(v1, v2 + v5);
  swift_endAccess();

  sub_100001F00();

  return v6();
}

uint64_t sub_1001268AC()
{
  sub_100002BAC();
  v1[8] = v0;
  sub_100065020(&qword_1001BD748, &qword_100173E90);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v2 = sub_100065020(&qword_1001B9CE0, &qword_100170F90);
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  v3 = sub_100002C10();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001269B0()
{
  sub_100003884();
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = OBJC_IVAR____TtC13modelmanagerd15TimeoutExecutor_continuation;
  swift_beginAccess();
  sub_100127DE0(v3 + v4, v1);
  if (sub_10000C6C0(v1, 1, v2) == 1)
  {
    sub_100127E50(v0[10]);
  }

  else
  {
    v6 = v0[12];
    v5 = v0[13];
    v7 = v0[11];
    v8 = v0[9];
    (*(v6 + 32))(v5, v0[10], v7);
    sub_100009BFC(v8, 1, 1, v7);
    swift_beginAccess();
    sub_100127EB8(v8, v3 + v4);
    swift_endAccess();
    CheckedContinuation.resume(returning:)();
    (*(v6 + 8))(v5, v7);
  }

  sub_100001F00();

  return v9();
}

uint64_t sub_100126B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_100002C10();
  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100126B34()
{
  sub_100003884();
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_100127B60();
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = *(v0 + 32);
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  *(v4 + 32) = v2;
  *(v4 + 40) = v5;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_100126C44;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)();
}

uint64_t sub_100126C44()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    v7 = *(v3 + 48);
    v8 = sub_100126D78;
  }

  else
  {
    v9 = *(v3 + 48);

    v8 = sub_100126D50;
    v7 = v9;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100126D78()
{
  sub_100002BAC();

  v1 = *(v0 + 8);

  return v1(0);
}

double sub_100126DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a5;
  v29 = a6;
  v26 = a3;
  v27 = a4;
  v8 = sub_100065020(&qword_1001B9CE0, &qword_100170F90);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v26 - v11;
  v13 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  __chkstk_darwin(v13 - 8);
  v15 = &v26 - v14;
  v16 = type metadata accessor for TaskPriority();
  sub_100009BFC(v15, 1, 1, v16);
  (*(v9 + 16))(v12, a1, v8);
  v17 = sub_100127B60();
  v18 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v19 = (v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 2) = a2;
  *(v20 + 3) = v17;
  *(v20 + 4) = a2;
  (*(v9 + 32))(&v20[v18], v12, v8);
  v21 = &v20[v19];
  v22 = v27;
  *v21 = v26;
  v21[1] = v22;
  v23 = &v20[(v19 + 23) & 0xFFFFFFFFFFFFFFF8];
  v24 = v29;
  *v23 = v28;
  v23[1] = v24;
  swift_retain_n();

  sub_100128ED0();

  return result;
}

uint64_t sub_100126FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a8;
  v8[6] = v12;
  v8[3] = a6;
  v8[4] = a7;
  v8[2] = a4;
  sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  v8[7] = swift_task_alloc();
  v9 = swift_task_alloc();
  v8[8] = v9;
  *v9 = v8;
  v9[1] = sub_1001270E0;

  return sub_100126720();
}

uint64_t sub_1001270E0()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100002C10();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001271D8()
{
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v5 = v0[3];
  v6 = type metadata accessor for TaskPriority();
  sub_100009BFC(v1, 1, 1, v6);
  v7 = sub_100127B60();
  v8 = swift_allocObject();
  v8[2] = v4;
  v8[3] = v7;
  v8[4] = v5;
  v8[5] = v3;
  v8[6] = v4;
  swift_retain_n();
  sub_100128ED0();

  v11 = (v2 + *v2);
  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_100127364;

  return v11();
}

uint64_t sub_100127364()
{
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    v9 = swift_task_alloc();
    *(v3 + 80) = v9;
    *v9 = v5;
    v9[1] = sub_1001274C8;

    return sub_1001268AC();
  }
}

uint64_t sub_1001274C8()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  sub_100001F00();

  return v3();
}

uint64_t sub_1001275C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v8 = type metadata accessor for ContinuousClock();
  v6[5] = v8;
  v6[6] = *(v8 - 8);
  v6[7] = swift_task_alloc();

  return _swift_task_switch(sub_100127690, a6, 0);
}

uint64_t sub_100127690()
{
  sub_100002BAC();
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_10012774C;

  return sub_1001542B4();
}

uint64_t sub_10012774C()
{
  sub_100003884();
  v2 = *v1;
  sub_100004B40();
  *v4 = v3;
  v5 = v2[7];
  v6 = v2[6];
  v7 = v2[5];
  *v4 = *v1;
  *(v3 + 72) = v0;

  (*(v6 + 8))(v5, v7);
  v8 = v2[4];
  if (v0)
  {
    v9 = sub_100127968;
  }

  else
  {
    v9 = sub_1001278C8;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1001278C8()
{
  sub_100002BAC();
  *(*(v0 + 32) + OBJC_IVAR____TtC13modelmanagerd15TimeoutExecutor_hitTimeout) = 1;
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_100127F28;

  return sub_1001268AC();
}

uint64_t sub_100127968()
{
  sub_100002BAC();

  sub_100001F00();

  return v0();
}

uint64_t sub_1001279C4()
{
  sub_100127E50(v0 + OBJC_IVAR____TtC13modelmanagerd15TimeoutExecutor_continuation);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for TimeoutExecutor(uint64_t a1)
{
  result = qword_1001BD658;
  if (!qword_1001BD658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100127A58(uint64_t a1)
{
  sub_100127AFC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100127AFC(uint64_t a1)
{
  if (!qword_1001BD668)
  {
    sub_10006A614(&qword_1001B9CE0, &qword_100170F90);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1001BD668);
    }
  }
}

unint64_t sub_100127B60()
{
  result = qword_1001BD740;
  if (!qword_1001BD740)
  {
    type metadata accessor for TimeoutExecutor(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BD740);
  }

  return result;
}

uint64_t sub_100127BC8()
{
  v2 = *(sub_100065020(&qword_1001B9CE0, &qword_100170F90) - 8);
  v3 = (*(v2 + 64) + ((*(v2 + 80) + 40) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v0 + v4);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_10006F558;
  sub_1000038D8();

  return sub_100126FF8(v10, v11, v12, v13, v14, v6, v7, v8);
}

uint64_t sub_100127D28()
{
  sub_100003884();
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10006FA64;
  sub_1000038D8();

  return sub_1001275C8(v5, v6, v7, v8, v2, v3);
}

uint64_t sub_100127DE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100065020(&qword_1001BD748, &qword_100173E90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100127E50(uint64_t a1)
{
  v2 = sub_100065020(&qword_1001BD748, &qword_100173E90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100127EB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100065020(&qword_1001BD748, &qword_100173E90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100127F2C()
{
  sub_10000A274();
  v1 = v0;
  v3 = v2;
  v34 = v4;
  v32 = v5;
  v6 = &qword_1001B9458;
  v35 = sub_100065020(&qword_1001B9458, &qword_100174250);
  sub_100002C00();
  __chkstk_darwin(v7);
  sub_100009C24();
  v38 = v8;
  sub_100002F1C();
  __chkstk_darwin(v9);
  sub_1000DB284();
  v33 = v10;
  v11 = v3 + 64;
  sub_10000D160();
  if (v16 != v17)
  {
    v14 = ~v15;
  }

  v18 = v14 & v12;
  v19 = (v13 + 63) >> 6;
  v36 = v3;

  v20 = 0;
  if (v18)
  {
    while (1)
    {
      v21 = v6;
      v37 = v1;
      v22 = v20;
LABEL_10:
      v23 = __clz(__rbit64(v18)) | (v22 << 6);
      v24 = *(v36 + 56);
      v25 = (*(v36 + 48) + 16 * v23);
      v26 = *v25;
      v27 = v25[1];
      type metadata accessor for Policy();
      sub_100002C00();
      (*(v28 + 16))(&v33[*(v35 + 48)], v24 + *(v28 + 72) * v23);
      *v33 = v26;
      *(v33 + 1) = v27;
      v6 = v21;
      sub_10002F6B4(v33, v38, v21, &qword_100174250);

      v29 = v34(v38);
      v1 = v37;
      if (v37)
      {
        sub_10000ED84(v38, &qword_1001B9458);

        goto LABEL_16;
      }

      if (v29)
      {
        break;
      }

      v18 &= v18 - 1;
      sub_10000ED84(v38, v21);
      v20 = v22;
      if (!v18)
      {
        goto LABEL_6;
      }
    }

    sub_10002F6B4(v38, v32, &qword_1001B9458, &qword_100174250);
    v30 = v32;
    v31 = 0;
LABEL_15:
    sub_100009BFC(v30, v31, 1, v35);
LABEL_16:
    sub_100005874();
  }

  else
  {
LABEL_6:
    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v22 >= v19)
      {

        v30 = v32;
        v31 = 1;
        goto LABEL_15;
      }

      v18 = *(v11 + 8 * v22);
      ++v20;
      if (v18)
      {
        v21 = v6;
        v37 = v1;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_1001281F8(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v31 = a1;
  v26 = a3;
  v36 = type metadata accessor for CustomAssetConfiguration();
  v6 = __chkstk_darwin(v36);
  v35 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v29 = &v26 - v9;
  v30 = v8;
  v10 = a2 + 64;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a2 + 64);
  v14 = (v11 + 63) >> 6;
  v32 = v8 + 32;
  v33 = a2;
  v27 = (v8 + 8);
  v28 = v8 + 16;

  v15 = 0;
  if (v13)
  {
    while (1)
    {
      v34 = v4;
      v16 = v15;
LABEL_9:
      v18 = v29;
      v17 = v30;
      v19 = v36;
      (*(v30 + 16))(v29, *(v33 + 56) + *(v30 + 72) * (__clz(__rbit64(v13)) | (v16 << 6)), v36);
      v20 = *(v17 + 32);
      v21 = v35;
      v20(v35, v18, v19);
      v22 = v34;
      v23 = v31(v21);
      v4 = v22;
      if (v22)
      {
        (*v27)(v35, v36);

        return;
      }

      if (v23)
      {
        break;
      }

      v13 &= v13 - 1;
      (*v27)(v35, v36);
      v15 = v16;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v25 = v26;
    v20(v26, v35, v36);
    v24 = 0;
LABEL_14:
    sub_100009BFC(v25, v24, 1, v36);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v14)
      {

        v24 = 1;
        v25 = v26;
        goto LABEL_14;
      }

      v13 = *(v10 + 8 * v16);
      ++v15;
      if (v13)
      {
        v34 = v4;
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

void sub_1001284A4()
{
  sub_10000A274();
  v1 = sub_1000494E8();
  v2 = type metadata accessor for ModelCatalogAsset(v1);
  v3 = sub_100002F44(v2);
  __chkstk_darwin(v3);
  sub_100002B8C();
  v35 = v5 - v4;
  type metadata accessor for AppleIntelligenceAsset();
  sub_100002BDC();
  __chkstk_darwin(v6);
  sub_100002B8C();
  v9 = v8 - v7;
  v10 = *(v0 + 16);
  if (v10)
  {
    v34 = v9;
    sub_100016FE0(0, v10, 0);
    v13 = sub_10001E724();
    v14 = 0;
    v37 = v0 + 56;
    v31 = v0 + 64;
    v32 = v10;
    v15 = v0;
    v33 = v0;
    if ((v13 & 0x8000000000000000) == 0)
    {
      while (v13 < 1 << *(v15 + 32))
      {
        v16 = v13 >> 6;
        if ((*(v37 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v15 + 36) != v11)
        {
          goto LABEL_25;
        }

        v17 = v12;
        v36 = v11;
        sub_1000128DC();
        sub_10005CAA8(v18, v35);

        sub_100004CBC();
        AppleIntelligenceAsset.init(assetIdentifier:version:)();
        sub_100009CDC();
        sub_10000D300(v35);
        v20 = _swiftEmptyArrayStorage[2];
        v19 = _swiftEmptyArrayStorage[3];
        if (v20 >= v19 >> 1)
        {
          sub_100016FE0(v19 > 1, v20 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v20 + 1;
        sub_10000657C();
        (*(v22 + 32))(_swiftEmptyArrayStorage + v21 + *(v22 + 72) * v20, v34);
        if (v17)
        {
          goto LABEL_29;
        }

        v15 = v33;
        v23 = 1 << *(v33 + 32);
        if (v13 >= v23)
        {
          goto LABEL_26;
        }

        v24 = *(v37 + 8 * v16);
        if ((v24 & (1 << v13)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v33 + 36) != v36)
        {
          goto LABEL_28;
        }

        v25 = v24 & (-2 << (v13 & 0x3F));
        if (v25)
        {
          v23 = __clz(__rbit64(v25)) | v13 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v26 = v16 << 6;
          v27 = v16 + 1;
          v28 = (v31 + 8 * v16);
          while (v27 < (v23 + 63) >> 6)
          {
            v30 = *v28++;
            v29 = v30;
            v26 += 64;
            ++v27;
            if (v30)
            {
              sub_100016E94(v13, v36, 0);
              v23 = __clz(__rbit64(v29)) + v26;
              goto LABEL_19;
            }
          }

          sub_100016E94(v13, v36, 0);
        }

LABEL_19:
        if (++v14 == v32)
        {
          goto LABEL_22;
        }

        v12 = 0;
        v11 = *(v33 + 36);
        v13 = v23;
        if (v23 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_22:
    sub_100005874();
  }
}

void *sub_10012880C(uint64_t a1)
{
  v3 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v4 = *(v3 - 8);
  v42 = v3;
  v43 = v4;
  __chkstk_darwin(v3);
  v6 = &v34 - v5;
  v41 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  result = _swiftEmptyArrayStorage;
  if (v7)
  {
    v50 = _swiftEmptyArrayStorage;
    sub_100070A50(0, v7 & ~(v7 >> 63), 0);
    v44 = v50;
    result = sub_10003DDD4();
    v46 = result;
    v47 = v10;
    LOBYTE(v48) = v11 & 1;
    if ((v7 & 0x8000000000000000) == 0)
    {
      v12 = 0;
      v39 = v7;
      v40 = v43 + 32;
      if (a1 < 0)
      {
        v13 = a1;
      }

      else
      {
        v13 = a1 & 0xFFFFFFFFFFFFFF8;
      }

      v37 = a1 + 56;
      v38 = v13;
      v35 = v1;
      v36 = a1 + 64;
      while (!__OFADD__(v12++, 1))
      {
        v15 = v46;
        v16 = v47;
        v17 = v48;
        sub_10003E06C(v46, v47, v48, a1, type metadata accessor for DaemonRequest, sub_10005C330, sub_10005C434, v9, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45[0], v45[1], v45[2], v45[3], v46, v47, v48, v49, v50, v51, v52);
        RequestMetadata.id.getter();

        v18 = v44;
        v50 = v44;
        v20 = v44[2];
        v19 = v44[3];
        if (v20 >= v19 >> 1)
        {
          sub_100070A50(v19 > 1, v20 + 1, 1);
          v18 = v50;
        }

        v18[2] = v20 + 1;
        v21 = (*(v43 + 80) + 32) & ~*(v43 + 80);
        v44 = v18;
        result = (*(v43 + 32))(v18 + v21 + *(v43 + 72) * v20, v6, v42);
        if (v41)
        {
          if (!v17)
          {
            goto LABEL_39;
          }

          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v26 = v39;
          sub_100065020(&qword_1001BC480, &qword_100172C58);
          v27 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          result = v27(v45, 0);
        }

        else
        {
          if (v17)
          {
            goto LABEL_40;
          }

          if ((v15 & 0x8000000000000000) != 0)
          {
            goto LABEL_35;
          }

          v22 = (1 << *(a1 + 32));
          if (v15 >= v22)
          {
            goto LABEL_35;
          }

          v23 = v15 >> 6;
          v24 = *(v37 + 8 * (v15 >> 6));
          if (((v24 >> v15) & 1) == 0)
          {
            goto LABEL_36;
          }

          if (*(a1 + 36) != v16)
          {
            goto LABEL_37;
          }

          v25 = v24 & (-2 << (v15 & 0x3F));
          if (v25)
          {
            v22 = (__clz(__rbit64(v25)) | v15 & 0x7FFFFFFFFFFFFFC0);
          }

          else
          {
            v28 = v23 << 6;
            v29 = v23 + 1;
            v30 = (v36 + 8 * v23);
            while (v29 < (v22 + 63) >> 6)
            {
              v32 = *v30++;
              v31 = v32;
              v28 += 64;
              ++v29;
              if (v32)
              {
                result = sub_100016E94(v15, v16, 0);
                v22 = (__clz(__rbit64(v31)) + v28);
                goto LABEL_30;
              }
            }

            result = sub_100016E94(v15, v16, 0);
          }

LABEL_30:
          v33 = *(a1 + 36);
          v46 = v22;
          v47 = v33;
          LOBYTE(v48) = 0;
          v26 = v39;
        }

        if (v12 == v26)
        {
          sub_100016E94(v46, v47, v48);
          return v44;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  return result;
}

uint64_t sub_100128C08(uint64_t (*a1)(char *), char a2, uint64_t a3)
{
  v24 = a1;
  v25 = type metadata accessor for CustomAssetConfiguration();
  __chkstk_darwin(v25);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a3 + 64;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 64);
  v13 = (v10 + 63) >> 6;
  v22 = v6 + 16;
  v23 = v6;
  v21 = (v6 + 8);
  v26 = a3;

  v15 = 0;
  while (v12)
  {
    v16 = v25;
LABEL_11:
    (*(v23 + 16))(v8, *(v26 + 56) + *(v23 + 72) * (__clz(__rbit64(v12)) | (v15 << 6)), v16);
    v18 = v24(v8);
    if (v3)
    {
      (*v21)(v8, v16);

      return a2 & 1;
    }

    v19 = v18;
    v12 &= v12 - 1;
    result = (*v21)(v8, v16);
    if (v19)
    {
      a2 = 1;
LABEL_15:

      return a2 & 1;
    }
  }

  v16 = v25;
  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v13)
    {
      a2 = 0;
      goto LABEL_15;
    }

    v12 = *(v9 + 8 * v17);
    ++v15;
    if (v12)
    {
      v15 = v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_100128E20(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = (a4 + 32);
  do
  {
    v8 = v6;
    if (v6-- == 0)
    {
      break;
    }

    v13 = *v7;

    v10 = a1(&v13);
    if (v4)
    {

      return v8 != 0;
    }

    v11 = v10;

    ++v7;
  }

  while ((v11 & 1) == 0);
  return v8 != 0;
}

void sub_100128ED0()
{
  sub_1000055B0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_100007B78();
  v8 = sub_100065020(v6, v7);
  sub_100002F04(v8);
  sub_100004B1C();
  __chkstk_darwin(v9);
  v11 = v22 - v10;
  sub_10001E72C(v3, v22 - v10, &qword_1001BB050, &qword_10016F6E0);
  type metadata accessor for TaskPriority();
  v12 = sub_1000125DC();
  v13 = sub_10000C6C0(v12, 1, &qword_1001BB050);

  if (v13 == 1)
  {
    sub_10000ED84(v11, &qword_1001BB050);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_100006098();
    v14 = sub_100005E8C();
    v15(v14);
  }

  v16 = *(v1 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (v5)
    {
LABEL_6:
      sub_100005FEC();
      v20 = String.utf8CString.getter() + 32;

      if (v19 | v17)
      {
        v23[0] = 0;
        v23[1] = 0;
        v21 = v23;
        v23[2] = v17;
        v23[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v22[1] = 7;
      v22[2] = v21;
      v22[3] = v20;
      sub_1000133D8();
      swift_task_create();

      sub_10000ED84(v3, &qword_1001BB050);

      goto LABEL_14;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (v5)
    {
      goto LABEL_6;
    }
  }

  sub_10000ED84(v3, &qword_1001BB050);
  if (v19 | v17)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v17;
    v23[7] = v19;
  }

  sub_1000133D8();
  swift_task_create();
LABEL_14:
  sub_100002EEC();
}

uint64_t sub_10012912C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[1];
  v11[2] = *v2;
  v11[3] = v4;
  v11[4] = a1;
  v5 = sub_1001418B8(sub_10014AF7C, v11, v4);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    sub_1001445EC(v5, v6);
    v8 = 0;
  }

  v9 = type metadata accessor for UUID();
  return sub_100009BFC(a2, v8, 1, v9);
}

uint64_t sub_1001291C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return sub_100004B70(sub_1001291E0, 0);
}

uint64_t sub_1001291E0()
{
  sub_100002BAC();
  v0 = swift_task_alloc();
  sub_100032CF8(v0);
  v1 = swift_task_alloc();
  v2 = sub_10000AC24(v1);
  *v2 = v3;
  v2[1] = sub_10012929C;
  sub_1000194B4();

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_10012929C()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100003000();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10012939C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v5[16] = a2;
  v5[17] = a3;
  sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();

  return _swift_task_switch(sub_100129448, 0, 0);
}

uint64_t sub_100129448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100005B0C();
  sub_10001A5C4();
  v23 = v21[17];
  if ((v23 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    v24 = sub_100005B00();
    type metadata accessor for InferenceProviderAsset(v24);
    sub_10000CCB4();
    sub_10005FAF0(v25, v26, &unk_1001720DC);
    sub_100001F70();
    Set.Iterator.init(_cocoa:)();
    v23 = v21[2];
    v27 = v21[3];
    v20 = v21[4];
    v28 = v21[5];
    v29 = v21[6];
  }

  else
  {
    sub_100011E24();
    v27 = v23;
    sub_10000CFD8();
    v29 = v30 & v31;

    v28 = 0;
  }

  sub_10014B43C();
  v61 = v27;
  v60 = v22;
  if ((v23 & 0x8000000000000000) != 0)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v40 = v28;
    v41 = v28;
    if (!v29)
    {
      break;
    }

LABEL_9:
    sub_10001E564();
    if (!v20)
    {
LABEL_23:
      v56 = sub_100007B78();
      sub_100007F18(v56);
      v57 = swift_task_alloc();
      v21[22] = v57;
      sub_100065020(&qword_1001B9408, &qword_100174090);
      sub_1000060CC();
      *v57 = v58;
      sub_10003588C();
      sub_1000135DC();

      return TaskGroup.awaitAllRemainingTasks(isolation:)(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, v21, v60, v61, v23, a16, a17, a18, a19, a20);
    }

    while (1)
    {
      v43 = sub_100011248();
      sub_100003978();
      sub_100009BFC(v44, v45, v46, v43);
      v47 = swift_allocObject();
      v48 = sub_10001AF98(v47);
      v27 = &qword_10016F6E0;
      sub_10001E72C(v48, v49, &qword_1001BB050, &qword_10016F6E0);
      sub_10004D0E4();

      if (v28 == 1)
      {
        sub_10000ED84(v21[20], &qword_1001BB050);
      }

      else
      {
        TaskPriority.rawValue.getter();
        sub_100006098();
        v50 = sub_100007660();
        v51(v50);
      }

      v20 = *a16;
      if (*a16)
      {
        swift_getObjectType();
        sub_1000125DC();
        swift_unknownObjectRetain();
        sub_100053C38();
        v22 = dispatch thunk of Actor.unownedExecutor.getter();
        v53 = v52;
        swift_unknownObjectRelease();
      }

      else
      {
        v22 = 0;
        v53 = 0;
      }

      sub_1000530D0();
      sub_100002EE0();
      v54 = swift_allocObject();
      *(v54 + 16) = &unk_100174298;
      *(v54 + 24) = v29;
      v55 = (v53 | v22);
      if (v53 | v22)
      {
        v55 = a11;
        *a11 = 0;
        a11[1] = 0;
        v21[9] = v22;
        v21[10] = v53;
      }

      sub_10005C1E4(v55);
      swift_task_create();

      v32 = sub_10000ED84(v20, &qword_1001BB050);
      v28 = v41;
      v29 = a17;
      if ((v23 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_11:
      v42 = __CocoaSet.Iterator.next()();
      if (v42)
      {
        v21[15] = v42;
        type metadata accessor for InferenceProviderAsset(0);
        sub_1000358A4();
        swift_dynamicCast();
        v41 = v28;
        if (v21[14])
        {
          continue;
        }
      }

      goto LABEL_23;
    }
  }

  while (1)
  {
    v41 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v41 >= v22)
    {
      goto LABEL_23;
    }

    ++v40;
    if (v27[v41])
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return TaskGroup.awaitAllRemainingTasks(isolation:)(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, v21, v60, v61, v23, a16, a17, a18, a19, a20);
}

uint64_t sub_1001297D4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 24) = v7;
  *v7 = v6;
  v7[1] = sub_1001298CC;

  return v9(v6 + 16);
}

uint64_t sub_1001298CC()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100003000();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001299B0()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BD750);
  sub_10000641C(v0, qword_1001BD750);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

void *sub_100129A24()
{

  return v0;
}

uint64_t sub_100129A80()
{
  sub_100129A24();

  return _swift_deallocClassInstance(v0, 88, 7);
}

uint64_t sub_100129AB4()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = _swiftEmptyArrayStorage;
  sub_100148910(_swiftEmptyArrayStorage);
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  *(v0 + 56) = v3;
  *(v0 + 64) = 0;
  *(v0 + 68) = 1;
  *(v0 + 72) = 0;
  *(v0 + 80) = _swiftEmptyArrayStorage;
  return v0;
}

uint64_t sub_100129B08()
{
  sub_100002BAC();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v5 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v1[12] = v5;
  sub_100002F44(v5);
  v1[13] = v6;
  v1[14] = sub_10000F0C0();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v7 = sub_100002C10();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100129BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t, uint64_t), uint64_t a11, void (*a12)(uint64_t), uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1000133FC();
  v21 = v18[16];
  v22 = v18[11];
  v85 = v18[8];
  v23 = v85 + OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_metadata;
  RequestMetadata.id.getter();
  v24 = (v22 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_inputStreamRequests);
  sub_1000125C0();
  swift_beginAccess();
  v25 = sub_10000598C();
  v25[2] = v20;
  v25[3] = v19;
  v25[4] = v21;

  sub_10002B158();
  sub_1000440DC();
  v29 = sub_100141808(v26, v27, v28);
  v31 = v30;

  v32 = v18[16];
  if (v31)
  {
    v33 = v18[13];

    v34 = *(v33 + 8);
    v35 = sub_10005FA98();
    v34(v35);
    if (qword_1001B8AB8 != -1)
    {
      sub_100005344();
      swift_once();
    }

    v36 = v18[8];
    v37 = type metadata accessor for Logger();
    sub_10000641C(v37, qword_1001BD750);
    sub_10000D0E8();

    v38 = Logger.logObject.getter();
    static os_log_type_t.fault.getter();
    sub_1000089B8();
    if (sub_10000A384())
    {
      sub_10000A05C();
      swift_slowAlloc();
      a12 = v34;
      a14 = sub_100003890();
      *v36 = 136315138;
      RequestMetadata.id.getter();
      sub_100005070();
      v43 = sub_1000082D4(v39, v40, v41, v42);
      v44 = sub_1000156D8(v43);
      v45 = sub_100007B78();
      v34(v45);
      v46 = sub_100004CB0();
      sub_100004A3C(v46, v47, v48);
      sub_100005974();

      *(v36 + 4) = v44;
      sub_100035348(&_mh_execute_header, v49, v50, "addingPending: %s missing from inputStreamRequests");
      sub_100002068();
      sub_100002BD0();
    }

    type metadata accessor for ModelManagerError();
    sub_100002E68();
    sub_10005FAF0(v51, v52, &protocol conformance descriptor for ModelManagerError);
    sub_100006194();
    sub_100007894();
    swift_allocError();
    sub_100006098();
    (*(v53 + 104))();
    swift_willThrow();

    sub_100001F00();
  }

  else
  {
    v54 = v18[15];
    v55 = v18[13];
    v84 = v18[12];
    sub_100143420(v29, v23);

    v56 = v84;
    a10 = *(v55 + 8);
    a11 = v55 + 8;
    a10(v32, v56);
    RequestMetadata.id.getter();
    v58 = *v24;
    v57 = v24[1];
    v59 = swift_task_alloc();
    v59[2] = v58;
    v59[3] = v57;
    v59[4] = v54;

    v60 = sub_100005F04();
    sub_100141808(v60, v61, v57);
    LOBYTE(v54) = v62;

    if (v54)
    {
      __break(1u);
      return result;
    }

    v64 = v18[15];
    a12 = v18[16];
    v85 = v18[14];
    v65 = v18[12];
    v67 = v18[9];
    v66 = v18[10];
    v68 = v18[8];
    v69 = sub_100003D88();
    v71 = sub_100143420(v69, v70);

    a10(v64, v65);
    sub_100002EE0();
    v72 = swift_allocObject();
    *(v72 + 16) = v67;
    *(v72 + 24) = v66;
    sub_100002D24();
    swift_beginAccess();

    sub_10013F9E8(sub_1001400B4);
    v73 = *(*(v71 + 80) + 16);
    sub_10013FA84(v73, sub_1001400B4);
    v74 = *(v71 + 80);
    *(v74 + 16) = v73 + 1;
    v75 = (v74 + 24 * v73);
    v75[4] = v68;
    v75[5] = &unk_100174230;
    v75[6] = v72;
    *(v71 + 80) = v74;
    swift_endAccess();

    sub_100002F54();
  }

  sub_1000037A0();

  return v77(v76, v77, v78, v79, v80, v81, v82, v83, a9, a10, a11, a12, v85, a14, a15, a16, a17, a18);
}

uint64_t sub_10012A0B4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_10006FA64;

  return v9(a2, a3);
}

BOOL sub_10012A1B4(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_inputStreamRequests);
  sub_100004CBC();
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v13[2] = v4;
  v13[3] = v5;
  v13[4] = a1;

  v7 = sub_100141808(sub_10014AFA8, v13, v5);
  if (v8)
  {

    return 0;
  }

  else
  {
    v10 = sub_100143420(v7, v6);

    sub_100004CBC();
    swift_beginAccess();
    v11 = *(v10 + 80);

    v12 = *(v11 + 16);

    return v12 != 0;
  }
}

uint64_t sub_10012A2CC()
{
  sub_100002BAC();
  v1[11] = v2;
  v1[12] = v0;
  v3 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v1[13] = v3;
  sub_100002F44(v3);
  v1[14] = v4;
  v1[15] = sub_10000F0C0();
  v1[16] = swift_task_alloc();
  v5 = sub_100002C10();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10012A388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v16 = v14[11];
  v17 = (v14[12] + OBJC_IVAR____TtC13modelmanagerd14RequestManager_inputStreamRequests);
  sub_100009E10();
  swift_beginAccess();
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(sub_10014B1BC(v19) + 32) = v16;

  v20 = sub_10000640C();
  sub_100141808(v20, v21, v22);
  sub_100007BE4();
  if (v15)
  {

    if (qword_1001B8AB8 != -1)
    {
      sub_100005344();
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000641C(v23, qword_1001BD750);
    sub_1000251CC();
    v24 = sub_100007660();
    v25(v24);
    v26 = Logger.logObject.getter();
    static os_log_type_t.fault.getter();
    sub_100006390();
    v28 = os_log_type_enabled(v26, v27);
    v29 = v14[15];
    if (v28)
    {
      sub_10000A05C();
      swift_slowAlloc();
      sub_100003890();
      sub_1000265BC();
      *v18 = 136315138;
      sub_100005070();
      sub_1000082D4(v30, v31, v32, v33);
      sub_100042FBC();
      v34 = sub_10000C778();
      v35(v34);
      v36 = sub_10000CD1C();
      sub_100004A3C(v36, v37, v38);
      sub_100005974();

      *(v18 + 4) = v29;
      v41 = "processPendingRequest: %s missing from inputStreamRequests";
LABEL_16:
      sub_100035348(&_mh_execute_header, v39, v40, v41);
      sub_100002068();
      sub_100002BD0();

LABEL_18:
      type metadata accessor for ModelManagerError();
      sub_100002E68();
      sub_10005FAF0(v91, v92, &protocol conformance descriptor for ModelManagerError);
      sub_100006194();
      sub_100007894();
      swift_allocError();
      sub_100006098();
      (*(v93 + 104))();
      swift_willThrow();

      sub_100001F00();
      sub_100003540();

      return v95(v94, v95, v96, v97, v98, v99, v100, v101, a9, a10, a11, a12, a13, a14);
    }

    goto LABEL_17;
  }

  v42 = v14[11];
  v43 = sub_10005FA98();
  sub_100143420(v43, v44);

  v45 = swift_task_alloc();
  *(sub_10014B1BC(v45) + 32) = v42;

  v46 = sub_10000640C();
  sub_100141808(v46, v47, v48);
  result = sub_100007BE4();
  if (v42)
  {
    __break(1u);
    goto LABEL_22;
  }

  v50 = sub_10005FA98();
  v52 = sub_100143420(v50, v51);

  sub_100004CBC();
  swift_beginAccess();
  v53 = *(v52 + 80);

  v54 = *(v53 + 16);

  if (!v54)
  {
    if (qword_1001B8AB8 != -1)
    {
      sub_100005344();
      swift_once();
    }

    v74 = type metadata accessor for Logger();
    sub_10000641C(v74, qword_1001BD750);
    sub_1000251CC();
    v75 = sub_100007660();
    v76(v75);
    v26 = Logger.logObject.getter();
    static os_log_type_t.fault.getter();
    sub_100006390();
    v78 = os_log_type_enabled(v26, v77);
    v79 = v14[16];
    if (v78)
    {
      sub_10000A05C();
      swift_slowAlloc();
      sub_100003890();
      sub_1000265BC();
      MEMORY[0] = 136315138;
      sub_100005070();
      sub_1000082D4(v80, v81, v82, v83);
      sub_100042FBC();
      v84 = sub_10000C778();
      v85(v84);
      v86 = sub_10000CD1C();
      sub_100004A3C(v86, v87, v88);
      sub_100005974();

      MEMORY[4] = v79;
      v41 = "processPendingRequest: %s has no pending requests";
      goto LABEL_16;
    }

LABEL_17:

    v89 = sub_100005E8C();
    v90(v89);
    goto LABEL_18;
  }

  v55 = v14[11];
  v57 = *v17;
  v56 = v17[1];
  v58 = swift_task_alloc();
  v58[2] = v57;
  v58[3] = v56;
  v58[4] = v55;

  v59 = sub_100005F04();
  sub_100141808(v59, v60, v56);
  v62 = v61;

  if (v62)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  sub_1000118CC();

  sub_100002D24();
  swift_beginAccess();
  sub_10012A944();
  sub_10001351C();
  v64 = v63;
  swift_endAccess();

  sub_100002EE0();
  v65 = swift_allocObject();
  *(v65 + 16) = v56;
  *(v65 + 24) = v64;

  sub_100003540();

  return v70(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_10012A944()
{
  if (*(*v0 + 16))
  {
    v1 = *(*v0 + 32);

    sub_10014A764(0, 1);
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10012A9A8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10006FA64;

  return v6();
}

void sub_10012AAA8(uint64_t a1)
{
  sub_100004CBC();
  swift_beginAccess();
  v27[1] = a1;

  sub_1000440DC();
  sub_100060948(v3, v4, v5);
  v7 = v6;

  if (v7)
  {
    v8 = (v1 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_pendingBackgroundGroups);
    sub_100009E10();
    v9 = swift_beginAccess();
    v11 = *v8;
    v10 = v8[1];
    v27[0] = a1;
    __chkstk_darwin(v9);
    sub_100061B00();
    *(v12 - 32) = v11;
    *(v12 - 24) = v10;
    *(v12 - 16) = v27;

    v13 = sub_100005F04();
    sub_100060948(v13, v14, v10);
    v16 = v15;

    if (v16)
    {
      if (qword_1001B8AB8 != -1)
      {
        sub_100005344();
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_100002FD0(v17, qword_1001BD750);
      v18 = Logger.logObject.getter();
      static os_log_type_t.fault.getter();
      v19 = sub_10000A82C();
      if (os_log_type_enabled(v19, v20))
      {
        sub_1000057F8();
        v21 = swift_slowAlloc();
        sub_10000A240(v21);
        sub_100035D10();
        _os_log_impl(v22, v23, v24, v25, v26, 2u);
        sub_100002BD0();
      }
    }
  }
}

void sub_10012AC70(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_pendingForegroundGroups);
  sub_100004CBC();
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v33 = a1;
  v29 = v4;
  v30 = v5;
  v31 = &v33;

  sub_100060948(sub_10014AFC0, v28, v5);
  v7 = v6;

  if (v7 & 1) != 0 && (v8 = (v1 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_pendingBackgroundGroups), sub_100004CBC(), v9 = swift_beginAccess(), v10 = *v8, v11 = v8[1], v32 = a1, __chkstk_darwin(v9), sub_10001854C(), *(v12 - 32) = v10, *(v12 - 24) = v11, *(v12 - 16) = &v32, , , v13 = sub_100026BB0(), sub_100060948(v13, v14, v11), v16 = v15, , , (v16))
  {
    if (qword_1001B8AB8 != -1)
    {
      sub_100005344();
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000641C(v17, qword_1001BD750);
    v18 = Logger.logObject.getter();
    static os_log_type_t.fault.getter();
    v19 = sub_10000A82C();
    if (os_log_type_enabled(v19, v20))
    {
      sub_1000057F8();
      *swift_slowAlloc() = 0;
      sub_10014B478(&_mh_execute_header, v21, v22, "findGroupInPendingAndRemove couldn't find pending group with assets");
      sub_100002BD0();
    }

    type metadata accessor for ModelManagerError();
    sub_100002E68();
    sub_10005FAF0(v23, v24, &protocol conformance descriptor for ModelManagerError);
    sub_10000EF40();
    v25 = swift_allocError();
    sub_100011D90(v25, v26);
    sub_100006098();
    (*(v27 + 104))();
    swift_willThrow();
  }

  else
  {
    sub_100002D24();
    swift_beginAccess();
    sub_100060B3C(a1);
    swift_endAccess();
  }
}

void sub_10012AF30()
{
  v1 = v0 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_activeGroups;
  sub_100009E10();
  swift_beginAccess();
  v2 = *(v1 + 8);
  v3 = *(v2 + 16);

  for (i = 0; ; i = v5)
  {
    if (v3 == i)
    {

      return;
    }

    if (i >= *(v2 + 16))
    {
      break;
    }

    v5 = i + 1;

    sub_100078D90();
  }

  __break(1u);
}

void sub_10012B000()
{
  sub_1000055B0();
  v58 = v0;
  v2 = v1;
  v3 = sub_10002A104();
  type metadata accessor for ModelCatalogAsset(v3);
  sub_100002BDC();
  v60 = v5;
  v61 = v4;
  __chkstk_darwin(v4);
  sub_100002B8C();
  v8 = v7 - v6;
  v9 = type metadata accessor for AssetCost();
  sub_100002BDC();
  v11 = v10;
  v13 = __chkstk_darwin(v12);
  v15 = v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = v56 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = v56 - v20;
  __chkstk_darwin(v19);
  sub_1000DB284();
  v59 = v22;
  v56[1] = v2;

  sub_100078D90();
  v24 = v23;
  AssetCost.init(onDeviceMemory:)();
  v26 = *(v11 + 16);
  v25 = v11 + 16;
  v57 = v21;
  v62 = v9;
  v26(v18, v21, v9);
  sub_10000D160();
  if (v31 != v32)
  {
    v29 = ~v30;
  }

  v33 = v29 & v27;
  v34 = (v28 + 63) >> 6;
  v63 = (v25 - 8);
  v35 = (v25 + 16);

  v36 = 0;
  if (v33)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v37 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if (v37 >= v34)
    {
      break;
    }

    v33 = *(v24 + 56 + 8 * v37);
    ++v36;
    if (v33)
    {
      v36 = v37;
      do
      {
LABEL_10:
        v33 &= v33 - 1;
        sub_1000128DC();
        sub_10005CAA8(v38, v8);
        static AssetCost.+ infix(_:_:)();
        sub_100009CDC();
        sub_10000D300(v8);
        (*v63)(v18, v62);
        v39 = sub_10000CD1C();
        v40(v39);
      }

      while (v33);
      continue;
    }
  }

  v15 = v62;
  v41 = *v63;
  (*v63)(v57, v62);

  v33 = v59;
  (*v35)(v59, v18, v15);

  v42 = AssetCost.onDeviceMemory.getter();
  v43 = v58;
  if (v42 <= v58)
  {
    v41(v33, v15);
    goto LABEL_20;
  }

  v44 = AssetCost.onDeviceMemory.getter();
  v24 = v44 - v43;
  if (v44 < v43)
  {
    goto LABEL_22;
  }

  v61 = v41;
  if (qword_1001B8AB8 == -1)
  {
    goto LABEL_16;
  }

LABEL_23:
  sub_100005344();
  swift_once();
LABEL_16:
  v45 = type metadata accessor for Logger();
  sub_100002FD0(v45, qword_1001BD750);

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v46, v47))
  {
    sub_100002F10();
    v48 = swift_slowAlloc();
    sub_1000033D0();
    v49 = swift_slowAlloc();
    v64 = v49;
    *v48 = 136315394;
    v50 = sub_10005F1EC();
    v52 = v15;
    v53 = sub_100004A3C(v50, v51, &v64);

    *(v48 + 4) = v53;
    *(v48 + 12) = 2048;
    *(v48 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v46, v47, "Deferring %s: would go over budget by %lluKB", v48, 0x16u);
    sub_10005D588(v49);
    sub_100002BD0();

    sub_100002BD0();

    v54 = v59;
    v55 = v52;
  }

  else
  {

    v54 = v33;
    v55 = v15;
  }

  v61(v54, v55);
LABEL_20:
  sub_100002EEC();
}

uint64_t sub_10012B4C0()
{
  sub_100002BAC();
  v1 = (v0[5] + OBJC_IVAR____TtC13modelmanagerd14RequestManager_activeGroups);
  sub_1000125C0();
  swift_beginAccess();
  v2 = v1[1];
  v0[6] = v2;
  v3 = *(v2 + 16);
  v0[7] = v3;
  if (v3)
  {
    v0[8] = *v1;
    v0[9] = 0;
    v4 = *(v2 + 16);

    if (v4)
    {
      v0[10] = *(v2 + 32);

      v6 = swift_task_alloc();
      v7 = sub_100019298(v6);
      *v7 = v8;
      v9 = sub_100013778(v7);

      return sub_10006CD0C(v9);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_100001F00();

    return v10();
  }

  return result;
}

uint64_t sub_10012B5D0()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100002C10();

  return _swift_task_switch(v3, v4, v5);
}

void sub_10012B6C8()
{
  sub_100002BAC();
  v1 = v0[9];
  v2 = v0[7];

  if (v1 + 1 == v2)
  {

    sub_100001F00();

    v3();
  }

  else
  {
    v4 = v0[9] + 1;
    v0[9] = v4;
    v5 = v0[6];
    if (v4 >= *(v5 + 16))
    {
      __break(1u);
    }

    else
    {
      v0[10] = *(v5 + 8 * v4 + 32);

      v6 = swift_task_alloc();
      v7 = sub_100019298(v6);
      *v7 = v8;
      v9 = sub_100013778(v7);

      sub_10006CD0C(v9);
    }
  }
}

uint64_t sub_10012B7D8(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return sub_100004B70(sub_10012B7F4, v1);
}

uint64_t sub_10012B7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100026B98();
  sub_1000033DC();
  v13 = v12[6];
  sub_10012BCC4();
  v14 = v13 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_activeGroups;
  sub_100009E10();
  swift_beginAccess();
  v15 = *(v14 + 8);
  v16 = sub_10000E8DC(v15);
  v17 = v15 & 0xC000000000000001;

  for (i = 0; v16 != i; ++i)
  {
    sub_100022F0C(i, v17 == 0, v15);
    if (v17)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v19 = *(v15 + 8 * i + 32);
    }

    v12[7] = v19;
    if (__OFADD__(i, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (sub_10006C8D4())
    {

      if (qword_1001B8AB8 != -1)
      {
        sub_100005344();
        swift_once();
      }

      sub_10014B1E0();
      v40 = type metadata accessor for Logger();
      sub_100002FD0(v40, qword_1001BD750);

      v41 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      sub_10014B230();

      if (sub_10001E6D8())
      {
        sub_100002F10();
        v42 = swift_slowAlloc();
        sub_100011828();
        swift_slowAlloc();
        sub_100003DF0();
        *v42 = 136315394;
        v43 = sub_10005F1EC();
        sub_10000CB58(v43, v44, v45, v46);
        sub_100012918();
        sub_1000166E4();
        sub_10005F1EC();
        v47 = sub_100005AD8();
        sub_10001E638(v47, v48);
        sub_10000C6E8();
        *(v42 + 14) = v19;
        sub_100018928();
        _os_log_impl(v49, v50, v51, v52, v53, 0x16u);
        sub_1000133D8();
        swift_arrayDestroy();
        sub_100007C2C();

        sub_100002BD0();
      }

      v54 = swift_task_alloc();
      v12[8] = v54;
      *v54 = v12;
      v54[1] = sub_10012BB74;
      sub_1000031B8(v12[6]);
      sub_100001FBC();

      return sub_10006CD0C(v55);
    }
  }

  if (qword_1001B8AB8 == -1)
  {
    goto LABEL_10;
  }

LABEL_23:
  sub_100005344();
  swift_once();
LABEL_10:
  v20 = type metadata accessor for Logger();
  sub_100002FD0(v20, qword_1001BD750);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.fault.getter();
  if (sub_100002F80(v22))
  {
    sub_1000057F8();
    v23 = swift_slowAlloc();
    sub_10000A240(v23);
    sub_1000059D8(&_mh_execute_header, v24, v25, "We can't acquire assets for foreground group but there are no nonzero cost active groups");
    sub_100002BD0();
  }

  type metadata accessor for ModelManagerError();
  sub_100002E68();
  sub_10005FAF0(v26, v27, &protocol conformance descriptor for ModelManagerError);
  sub_10000EF40();
  v28 = swift_allocError();
  sub_100011D90(v28, v29);
  sub_100006098();
  (*(v30 + 104))();
  swift_willThrow();
  sub_100001F00();
  sub_100001FBC();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12);
}

uint64_t sub_10012BB74()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100002C10();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10012BC6C()
{
  sub_100002BAC();

  sub_100002F54();

  return v0();
}

uint64_t sub_10012BCC4()
{
  sub_1000125C0();
  swift_beginAccess();
  v1 = v0 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_activeGroups;
  sub_1000125C0();
  swift_beginAccess();

  sub_10000CD38();
  sub_10013D8C8();
  sub_10005D934();

  if (!sub_1000453F0(v1))
  {
    sub_10013ED10();
  }
}

uint64_t sub_10012BD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  v9 = *(a2 + 16);
  if (v9 || *(a4 + 16))
  {
    sub_10012C094(sub_10014AFE4, v5, a1, a2);
    v11 = v10;
    v12 = *(v10 + 16);
    if (v12)
    {
      v13 = 0;
      v14 = OBJC_IVAR____TtC13modelmanagerd14RequestManager_foregroundOvercommitBudget;
      while (v12 != v13)
      {
        if (v13 >= *(v11 + 16))
        {
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        v8 = *(v11 + 8 * v13 + 32);
        type metadata accessor for RequestManager(0);

        sub_10012AF30();
        if (__CFADD__(a5, *(v5 + v14)))
        {
          goto LABEL_24;
        }

        sub_10012B000();
        v16 = v15;

        if (v16)
        {
          goto LABEL_17;
        }

        ++v13;
      }

      goto LABEL_16;
    }

    v17 = (v8 + 32);
    if (v9)
    {
      while (1)
      {
        v8 = *v17;
        type metadata accessor for RequestManager(0);

        sub_10012AF30();
        sub_10012B000();
        v19 = v18;

        if (v19)
        {
          break;
        }

        ++v17;
        if (!--v9)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
LABEL_13:
      v20 = *(a4 + 16);
      v21 = (a4 + 32);
      if (!v20)
      {
LABEL_16:

        return 0;
      }

      while (1)
      {
        v8 = *v21;
        type metadata accessor for RequestManager(0);

        sub_10012AF30();
        sub_10012B000();
        v23 = v22;

        if (v23)
        {
          break;
        }

        ++v21;
        if (!--v20)
        {
          goto LABEL_16;
        }
      }
    }

LABEL_17:

    return v8;
  }

  if (qword_1001B8AB8 != -1)
  {
LABEL_25:
    sub_100005344();
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_10000641C(v25, qword_1001BD750);
  v26 = Logger.logObject.getter();
  static os_log_type_t.fault.getter();
  v27 = sub_10000A82C();
  if (os_log_type_enabled(v27, v28))
  {
    sub_1000057F8();
    *swift_slowAlloc() = 0;
    sub_10014B478(&_mh_execute_header, v29, v30, "In determineNextGroupToAcquire but all pending groups are empty");
    sub_100002BD0();
  }

  type metadata accessor for ModelManagerError();
  sub_100002E68();
  sub_10005FAF0(v31, v32, &protocol conformance descriptor for ModelManagerError);
  sub_10000EF40();
  v33 = swift_allocError();
  sub_100011D90(v33, v34);
  sub_100006098();
  (*(v35 + 104))();
  swift_willThrow();
  return v8;
}

uint64_t sub_10012C094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = static _UnsafeBitSet._withTemporaryBitSet(wordCount:run:)();
  if (v4)
  {
    return sub_10002CBE0(0, 0);
  }

  __break(1u);
  return result;
}

void sub_10012C13C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13modelmanagerd14RequestManager_nextExecutionGroupToAcquire;
  if (!*(v1 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_nextExecutionGroupToAcquire))
  {
    v5 = (v1 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_pendingForegroundGroups);
    sub_100004CBC();
    swift_beginAccess();
    v7 = *v5;
    v6 = v5[1];
    v8 = v1 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_pendingBackgroundGroups;
    sub_100004CBC();
    swift_beginAccess();
    v9 = *(v8 + 8);

    v11 = sub_10012BD9C(v7, v6, v10, v9, a1);

    if (!v2)
    {
      *(v1 + v3) = v11;

      if (v11)
      {
        if (qword_1001B8AB8 != -1)
        {
          sub_100005344();
          swift_once();
        }

        v12 = type metadata accessor for Logger();
        sub_10000641C(v12, qword_1001BD750);
        sub_10014B3BC();

        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v13, v14))
        {
          sub_10000A05C();
          v15 = swift_slowAlloc();
          sub_1000033D0();
          v20 = swift_slowAlloc();
          *v15 = 136315138;

          v16 = sub_10005F1EC();

          v17 = sub_100004CB0();
          sub_100004A3C(v17, v18, v19);
          sub_100005974();

          *(v15 + 4) = v16;
          _os_log_impl(&_mh_execute_header, v13, v14, "Next exection group: %s", v15, 0xCu);
          sub_10005D588(v20);
          sub_100002BD0();

          sub_100007C2C();
        }

        else
        {
        }
      }
    }
  }
}

uint64_t sub_10012C37C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_100004B70(sub_10012C398, v1);
}

uint64_t sub_10012C398()
{
  sub_100002BAC();
  v1 = v0[3];
  v2 = OBJC_IVAR____TtC13modelmanagerd14RequestManager_nextExecutionGroupToAcquire;
  v3 = OBJC_IVAR____TtC13modelmanagerd14RequestManager_assetManager;
  v0[4] = OBJC_IVAR____TtC13modelmanagerd14RequestManager_nextExecutionGroupToAcquire;
  v0[5] = v3;
  v4 = *(v1 + v2);
  v0[6] = 0;
  if (v4)
  {
    sub_100002F54();

    return v5();
  }

  else
  {
    v7 = sub_100042FD4(v1);
    v8 = sub_100018478(v7);

    return _swift_task_switch(v8, v9, v10);
  }
}

uint64_t sub_10012C434()
{
  sub_100002BAC();
  *(v0 + 64) = sub_10003EC04();
  v1 = sub_100005F04();

  return _swift_task_switch(v1, v2, 0);
}

uint64_t sub_10012C4A0()
{
  sub_100001ED0();
  v1 = v0[6];
  sub_10012C13C(v0[8]);
  if (v1)
  {
    sub_100001F00();
LABEL_5:

    return v2();
  }

  if (*(v0[3] + v0[4]))
  {
    v0[6] = 0;
    sub_100002F54();
    goto LABEL_5;
  }

  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_10012C594;
  v5 = sub_1000031B8(v0[2]);

  return sub_10012B7D8(v5);
}

uint64_t sub_10012C594()
{
  sub_100001ED0();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    sub_10000778C();

    return v7();
  }

  else
  {
    sub_10000E700();

    return _swift_task_switch(v9, v10, v11);
  }
}

uint64_t sub_10012C6B8()
{
  sub_100002BAC();
  v1 = v0[3];
  v2 = *(v1 + v0[4]);
  v0[6] = v0[10];
  if (v2)
  {
    sub_100002F54();

    return v3();
  }

  else
  {
    v5 = sub_100042FD4(v1);
    v6 = sub_100018478(v5);

    return _swift_task_switch(v6, v7, v8);
  }
}

uint64_t sub_10012C748(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return sub_100004B70(sub_10012C764, v1);
}

uint64_t sub_10012C764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100026B98();
  sub_1000033DC();
  sub_10012AAA8(v12[5]);
  v13 = OBJC_IVAR____TtC13modelmanagerd14RequestManager_nextExecutionGroupToAcquire;
  v14 = OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_uuid;
  v12[7] = OBJC_IVAR____TtC13modelmanagerd14RequestManager_nextExecutionGroupToAcquire;
  v12[8] = v14;
  v12[9] = 0;
  if (!*(v12[6] + v13))
  {
    goto LABEL_20;
  }

  v15 = v12[5];

  static UUID.== infix(_:_:)();
  sub_100009540();

  if (v14)
  {
    sub_10014B350();
    if (v15)
    {
      sub_100026B28();
      v16 = v12[8];

      static UUID.== infix(_:_:)();
      sub_10001E4A8();

      if (v16)
      {
        if (qword_1001B8AB8 != -1)
        {
          sub_100005344();
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        sub_100002FD0(v17, qword_1001BD750);
        v18 = Logger.logObject.getter();
        static os_log_type_t.info.getter();
        sub_100006390();
        if (os_log_type_enabled(v18, v19))
        {
          sub_1000057F8();
          v20 = swift_slowAlloc();
          sub_10000BF10(v20);
          sub_100009DDC(&_mh_execute_header, v21, v22, "Cleaning up nextExecutionGroupToAcquire");
          sub_100002BD0();
        }

        v16 = v12[7];

        sub_100057680();
      }

      sub_10014B350();
      if (v16)
      {
      }

      else
      {
        swift_willThrow();
      }

      sub_100001F00();
    }

    else
    {
      v47 = v12[5];
      sub_100002D24();
      swift_beginAccess();
      sub_100140E60(v47);
      swift_endAccess();
      sub_100057680();
      sub_100002F54();
    }

    sub_100001FBC();

    return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12);
  }

  sub_1000559AC();
  if (v14)
  {
    v23 = qword_1001B8AB8;

    if (v23 != -1)
    {
      sub_100005344();
      swift_once();
    }

    sub_10014B1E0();
    v24 = type metadata accessor for Logger();
    sub_100002FD0(v24, qword_1001BD750);

    v25 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_10014B230();

    if (sub_10001E6D8())
    {
      sub_100002F10();
      v26 = swift_slowAlloc();
      sub_100011828();
      swift_slowAlloc();
      sub_100003DF0();
      *v26 = 136315394;
      v27 = sub_10005F1EC();
      sub_10000CB58(v27, v28, v29, v30);
      sub_100012918();
      sub_1000166E4();
      sub_10005F1EC();
      v31 = sub_100005AD8();
      sub_10001E638(v31, v32);
      sub_10000C6E8();
      *(v26 + 14) = v14;
      sub_100018928();
      _os_log_impl(v33, v34, v35, v36, v37, 0x16u);
      sub_1000133D8();
      swift_arrayDestroy();
      sub_100007C2C();

      sub_100002BD0();
    }

    v38 = swift_task_alloc();
    v39 = sub_100019298(v38);
    *v39 = v40;
    sub_10000F224(v39);
    sub_100001FBC();

    return sub_10006CA4C(v41);
  }

  else
  {
LABEL_20:
    v44 = swift_task_alloc();
    v12[12] = v44;
    *v44 = v12;
    sub_100018720(v44);
    sub_100001FBC();

    return sub_10012C37C(v45);
  }
}

uint64_t sub_10012CAE4()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100002C10();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10012CBDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100026B98();
  sub_1000033DC();

  v15 = v13[9];
  if (static Task<>.isCancelled.getter())
  {
    if (qword_1001B8AB8 != -1)
    {
      sub_100005344();
      swift_once();
    }

    v16 = v13[5];
    v17 = type metadata accessor for Logger();
    sub_10000641C(v17, qword_1001BD750);
    sub_10000D0E8();

    v18 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_1000089B8();
    if (sub_10000A384())
    {
      sub_10000A05C();
      swift_slowAlloc();
      sub_100003890();
      sub_1000265BC();
      *v16 = 136315138;
      v19 = sub_10005F1EC();
      sub_10000CB58(v19, v20, v21, v22);
      sub_1000125DC();

      *(v16 + 4) = v14;
      sub_100035348(&_mh_execute_header, v23, v24, "%s cancelled while waiting for turn.");
      sub_100002068();
      sub_100002BD0();
    }

    v25 = type metadata accessor for ModelManagerError();
    sub_100002E68();
    sub_10005FAF0(v26, v27, &protocol conformance descriptor for ModelManagerError);
    sub_10000EF40();
    v28 = swift_allocError();
    sub_100011D90(v28, v29);
    sub_100006098();
    (*(v30 + 104))();
    v15 = v18;
    swift_willThrow();
    goto LABEL_7;
  }

  v13[9] = v15;
  sub_100026B28();
  if (!v12)
  {
    goto LABEL_33;
  }

  v37 = v13[8];
  sub_100053C58();
  static UUID.== infix(_:_:)();
  sub_100009540();

  if (v37)
  {
    v25 = v13[6];
    sub_10012AC70(v13[5]);
    if (!v15)
    {
      v38 = v13[5];
      sub_100002D24();
      swift_beginAccess();
      sub_100140E60(v38);
      swift_endAccess();
      sub_100057680();
      sub_100002F54();
LABEL_22:
      sub_100001FBC();

      return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12);
    }

LABEL_7:
    sub_100026B28();
    if (v25)
    {
      v15 = v13[8];
      sub_100053C58();
      static UUID.== infix(_:_:)();
      sub_10001E4A8();

      if (v15)
      {
        if (qword_1001B8AB8 != -1)
        {
          sub_100005344();
          swift_once();
        }

        v31 = type metadata accessor for Logger();
        sub_100002FD0(v31, qword_1001BD750);
        v32 = Logger.logObject.getter();
        static os_log_type_t.info.getter();
        sub_100006390();
        if (os_log_type_enabled(v32, v33))
        {
          sub_1000057F8();
          v34 = swift_slowAlloc();
          sub_10000BF10(v34);
          sub_100009DDC(&_mh_execute_header, v35, v36, "Cleaning up nextExecutionGroupToAcquire");
          sub_100002BD0();
        }

        v15 = v13[7];

        sub_100057680();
      }
    }

    sub_10014B350();
    if (v15)
    {
    }

    else
    {
      swift_willThrow();
    }

    sub_100001F00();
    goto LABEL_22;
  }

  sub_1000559AC();
  if (v37)
  {
    v48 = qword_1001B8AB8;

    if (v48 != -1)
    {
      sub_100005344();
      swift_once();
    }

    sub_10014B1E0();
    v49 = type metadata accessor for Logger();
    sub_100002FD0(v49, qword_1001BD750);

    v50 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_10014B230();

    if (sub_10001E6D8())
    {
      sub_100002F10();
      v51 = swift_slowAlloc();
      sub_100011828();
      swift_slowAlloc();
      sub_100003DF0();
      *v51 = 136315394;
      v52 = sub_10005F1EC();
      sub_10000CB58(v52, v53, v54, v55);
      sub_100012918();
      sub_1000166E4();
      sub_10005F1EC();
      v56 = sub_100005AD8();
      sub_10001E638(v56, v57);
      sub_10000C6E8();
      *(v51 + 14) = v37;
      sub_100018928();
      _os_log_impl(v58, v59, v60, v61, v62, 0x16u);
      sub_1000133D8();
      swift_arrayDestroy();
      sub_100007C2C();

      sub_100002BD0();
    }

    v63 = swift_task_alloc();
    v64 = sub_100019298(v63);
    *v64 = v65;
    sub_10000F224(v64);
    sub_100001FBC();

    return sub_10006CA4C(v66);
  }

  else
  {
LABEL_33:
    v68 = swift_task_alloc();
    v13[12] = v68;
    *v68 = v13;
    sub_100018720(v68);
    sub_100001FBC();

    return sub_10012C37C(v69);
  }
}

uint64_t sub_10012D078()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 104) = v0;

  sub_10000A9E0();
  sub_10000E700();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10012D18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100026B98();
  sub_1000033DC();
  v15 = v13[13];
  if (static Task<>.isCancelled.getter())
  {
    if (qword_1001B8AB8 != -1)
    {
      sub_100005344();
      swift_once();
    }

    v16 = v13[5];
    v17 = type metadata accessor for Logger();
    sub_10000641C(v17, qword_1001BD750);
    sub_10000D0E8();

    v18 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_1000089B8();
    if (sub_10000A384())
    {
      sub_10000A05C();
      swift_slowAlloc();
      sub_100003890();
      sub_1000265BC();
      *v16 = 136315138;
      v19 = sub_10005F1EC();
      sub_10000CB58(v19, v20, v21, v22);
      sub_1000125DC();

      *(v16 + 4) = v14;
      sub_100035348(&_mh_execute_header, v23, v24, "%s cancelled while waiting for turn.");
      sub_100002068();
      sub_100002BD0();
    }

    v25 = type metadata accessor for ModelManagerError();
    sub_100002E68();
    sub_10005FAF0(v26, v27, &protocol conformance descriptor for ModelManagerError);
    sub_10000EF40();
    v28 = swift_allocError();
    sub_100011D90(v28, v29);
    sub_100006098();
    (*(v30 + 104))();
    v15 = v18;
    swift_willThrow();
    goto LABEL_7;
  }

  v13[9] = v15;
  sub_100026B28();
  if (!v12)
  {
    goto LABEL_33;
  }

  v37 = v13[8];
  sub_100053C58();
  static UUID.== infix(_:_:)();
  sub_100009540();

  if (v37)
  {
    v25 = v13[6];
    sub_10012AC70(v13[5]);
    if (!v15)
    {
      v38 = v13[5];
      sub_100002D24();
      swift_beginAccess();
      sub_100140E60(v38);
      swift_endAccess();
      sub_100057680();
      sub_100002F54();
LABEL_22:
      sub_100001FBC();

      return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12);
    }

LABEL_7:
    sub_100026B28();
    if (v25)
    {
      v15 = v13[8];
      sub_100053C58();
      static UUID.== infix(_:_:)();
      sub_10001E4A8();

      if (v15)
      {
        if (qword_1001B8AB8 != -1)
        {
          sub_100005344();
          swift_once();
        }

        v31 = type metadata accessor for Logger();
        sub_100002FD0(v31, qword_1001BD750);
        v32 = Logger.logObject.getter();
        static os_log_type_t.info.getter();
        sub_100006390();
        if (os_log_type_enabled(v32, v33))
        {
          sub_1000057F8();
          v34 = swift_slowAlloc();
          sub_10000BF10(v34);
          sub_100009DDC(&_mh_execute_header, v35, v36, "Cleaning up nextExecutionGroupToAcquire");
          sub_100002BD0();
        }

        v15 = v13[7];

        sub_100057680();
      }
    }

    sub_10014B350();
    if (v15)
    {
    }

    else
    {
      swift_willThrow();
    }

    sub_100001F00();
    goto LABEL_22;
  }

  sub_1000559AC();
  if (v37)
  {
    v48 = qword_1001B8AB8;

    if (v48 != -1)
    {
      sub_100005344();
      swift_once();
    }

    sub_10014B1E0();
    v49 = type metadata accessor for Logger();
    sub_100002FD0(v49, qword_1001BD750);

    v50 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_10014B230();

    if (sub_10001E6D8())
    {
      sub_100002F10();
      v51 = swift_slowAlloc();
      sub_100011828();
      swift_slowAlloc();
      sub_100003DF0();
      *v51 = 136315394;
      v52 = sub_10005F1EC();
      sub_10000CB58(v52, v53, v54, v55);
      sub_100012918();
      sub_1000166E4();
      sub_10005F1EC();
      v56 = sub_100005AD8();
      sub_10001E638(v56, v57);
      sub_10000C6E8();
      *(v51 + 14) = v37;
      sub_100018928();
      _os_log_impl(v58, v59, v60, v61, v62, 0x16u);
      sub_1000133D8();
      swift_arrayDestroy();
      sub_100007C2C();

      sub_100002BD0();
    }

    v63 = swift_task_alloc();
    v64 = sub_100019298(v63);
    *v64 = v65;
    sub_10000F224(v64);
    sub_100001FBC();

    return sub_10006CA4C(v66);
  }

  else
  {
LABEL_33:
    v68 = swift_task_alloc();
    v13[12] = v68;
    *v68 = v13;
    sub_100018720(v68);
    sub_100001FBC();

    return sub_10012C37C(v69);
  }
}

uint64_t sub_10012D620()
{
  sub_10000639C();
  sub_100003884();
  sub_100026B28();
  if (v0)
  {
    v1 = *(v2 + 64);

    static UUID.== infix(_:_:)();
    sub_10001E4A8();

    if (v1)
    {
      if (qword_1001B8AB8 != -1)
      {
        sub_100005344();
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_100002FD0(v3, qword_1001BD750);
      v4 = Logger.logObject.getter();
      static os_log_type_t.info.getter();
      sub_100006390();
      if (os_log_type_enabled(v4, v5))
      {
        sub_1000057F8();
        v6 = swift_slowAlloc();
        sub_10000BF10(v6);
        sub_100009DDC(&_mh_execute_header, v7, v8, "Cleaning up nextExecutionGroupToAcquire");
        sub_100002BD0();
      }

      v1 = *(v2 + 56);

      sub_100057680();
    }
  }

  sub_10014B350();
  if (v1)
  {
  }

  else
  {
    swift_willThrow();
  }

  sub_100001F00();
  sub_100003D20();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_10012D768()
{
  sub_100002BAC();
  v1[10] = v2;
  v1[11] = v0;
  v1[9] = v3;
  v4 = sub_100065020(&qword_1001BB3F8, &qword_100171D50);
  sub_100002F04(v4);
  v1[12] = sub_100002C58();
  v5 = type metadata accessor for InferenceProviderRequestConfiguration();
  v1[13] = v5;
  sub_100002F44(v5);
  v1[14] = v6;
  v1[15] = sub_100002C58();
  v7 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v1[16] = v7;
  sub_100002F44(v7);
  v1[17] = v8;
  v1[18] = sub_100002C58();
  v9 = type metadata accessor for RequestPriority();
  v1[19] = v9;
  sub_100002F44(v9);
  v1[20] = v10;
  v1[21] = sub_100002C58();
  v11 = type metadata accessor for DaemonRequest.ManagerOwnedState(0);
  sub_100002F04(v11);
  v1[22] = sub_100002C58();
  v12 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v1[23] = v12;
  sub_100002F44(v12);
  v1[24] = v13;
  v1[25] = sub_100002C58();
  v14 = sub_100065020(&qword_1001B94D0, &unk_100171E80);
  v1[26] = v14;
  sub_100002F44(v14);
  v1[27] = v15;
  v1[28] = sub_100002C58();
  v16 = sub_100002C10();

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_10012D9B0()
{
  sub_100005B0C();
  sub_10001A5C4();
  v1 = v0[22];
  v2 = v0[14];
  v3 = v0[15];
  v14 = v0[13];
  v4 = v0[10];
  v5 = v0[9];
  sub_100042FD4(v0[11]);
  v0[8] = v5;
  _s14ExecutionGroupCMa(0);
  sub_10000CC20();
  sub_10005FAF0(v6, v7, &unk_10016FAF8);

  sub_10000CD1C();
  UUIDIdentifier.init(_:)();
  RequestMetadata.id.getter();
  v8 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState;
  sub_100004CBC();
  swift_beginAccess();
  sub_100005DD8();
  sub_10005CAA8(v4 + v8, v1);
  InferenceProviderRequestConfiguration.requestPriority.getter();
  sub_1000115C8();
  sub_10000D300(v1);
  RequestMetadata.sessionID.getter();
  (*(v2 + 16))(v3, v4 + v8, v14);
  InferenceProviderRequestConfiguration.auditToken.getter();
  v9 = sub_10014B3C8();
  v10(v9);
  v11 = swift_task_alloc();
  v0[29] = v11;
  *v11 = v0;
  v11[1] = sub_10012DBC8;
  sub_1000135DC();

  return sub_1000C70B0();
}

uint64_t sub_10012DBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1000133FC();
  v20 = *v19;
  v21 = *v19;
  sub_100002B9C();
  *v22 = v21;
  *v22 = *v19;
  v21[30] = v18;

  sub_10014B368();
  v24 = *(v23 + 224);
  v25 = v20[27];
  v58 = v20[26];
  sub_10014B368();
  v57 = *(v26 + 200);
  sub_10014B368();
  v28 = *(v27 + 192);
  v29 = v20[23];
  if (v18)
  {
    v30 = v21[18];
    v32 = v21[16];
    v31 = v21[17];
    sub_10000ED84(v21[12], &qword_1001BB3F8);
    (*(v31 + 8))(v30, v32);
    v33 = sub_100011A70();
    v34(v33);
    (*(v28 + 8))(v57, v29);
    (*(v25 + 8))(v24, v58);
    sub_1000037A0();

    return _swift_task_switch(v35, v36, v37);
  }

  else
  {
    v54 = v21[21];
    v55 = v21[22];
    v39 = v21[20];
    v53 = v21[19];
    v56 = v21[15];
    sub_10000ED84(v21[12], &qword_1001BB3F8);
    v40 = sub_1000DB38C();
    v41(v40);
    (*(v39 + 8))(v54, v53);
    v42 = sub_100036724();
    v43(v42);
    (*(v25 + 8))(v24, v58);

    sub_1000037A0();

    return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, v53, v54, v55, v56, v57, v58, a16, a17, a18);
  }
}

uint64_t sub_10012DECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v25 = v14[15];
  v26 = v14[12];
  v15 = v14[9];
  sub_100002D24();
  swift_beginAccess();
  sub_100060B3C(v15);
  swift_endAccess();

  swift_willThrow();

  sub_100001F00();
  sub_100003540();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, v25, v26, a11, a12, a13, a14);
}

uint64_t sub_10012DFC0()
{
  sub_100002BAC();
  v1[14] = v2;
  v1[15] = v0;
  v1[12] = v3;
  v1[13] = v4;
  v1[11] = v5;
  v6 = type metadata accessor for RequestPriority();
  v1[16] = v6;
  sub_100002F44(v6);
  v1[17] = v7;
  v1[18] = sub_10000F0C0();
  v1[19] = swift_task_alloc();
  v8 = type metadata accessor for DaemonRequest.ManagerOwnedState(0);
  sub_100002F04(v8);
  v1[20] = sub_100002C58();
  v9 = type metadata accessor for InferenceProviderDescriptor();
  sub_100002F04(v9);
  v1[21] = sub_100002C58();
  v10 = sub_100002C10();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_10012E0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100005B0C();
  sub_10001A5C4();
  v21 = v20[15];
  v57 = v20[13];
  v58 = v20[14];
  v53 = v20[12];
  v54 = v20[21];
  v22 = v20[11];
  v23 = v22[3];
  sub_100002EE0();
  v56 = swift_allocObject();
  *(v56 + 16) = v21;
  *(v56 + 24) = v22;
  sub_100002EE0();
  v24 = swift_allocObject();
  *(v24 + 16) = v21;
  *(v24 + 24) = v22;
  v55 = v21;
  v25 = v22[7];
  v26 = v22[8];
  sub_100003370(v22 + 4, v25);
  v52 = *(v26 + 8);
  swift_retain_n();
  swift_retain_n();

  v52(v25, v26);
  _s14ExecutionGroupCMa(0);
  swift_allocObject();
  v27 = sub_10006BC30(v53, v23, &unk_1001741A0, v56, &unk_1001741B0, v24, v54);
  v20[22] = v27;
  sub_10006CFF8(v21, v22, v57, v58);
  v20[23] = v28;
  v29 = v20[20];
  v31 = v20[17];
  v30 = v20[18];
  v32 = v20[16];
  v33 = v20[11];
  v34 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState;
  sub_100004CBC();
  swift_beginAccess();
  sub_100005DD8();
  sub_10005CAA8(v33 + v34, v29);
  InferenceProviderRequestConfiguration.requestPriority.getter();
  sub_1000115C8();
  sub_10000D300(v29);
  (*(v31 + 104))(v30, enum case for RequestPriority.foreground(_:), v32);
  v35 = sub_10002EAE0();
  sub_100116BA4(v35, v36);
  v37 = *(v31 + 8);
  v38 = sub_100053C38();
  v37(v38);
  v39 = sub_1000125D0();
  v37(v39);
  sub_100002D24();
  swift_beginAccess();
  sub_100140E60(v27);
  swift_endAccess();
  sub_100003CA4();
  sub_10005FAF0(v40, v41, &unk_100174018);
  v42 = swift_task_alloc();
  v20[24] = v42;
  *v42 = v20;
  v42[1] = sub_10005D184;
  sub_1000135DC();

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v43, v44, v45, v46, v47, v48, v49, v50, a9, v52, v53, v54, v55, v56, v57, v58, a17, a18, a19, a20);
}

uint64_t sub_10012E458()
{
  sub_100001ED0();

  sub_100001F00();

  return v0();
}

uint64_t sub_10012E4E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_10012E588;

  return sub_10012C748(a1);
}

uint64_t sub_10012E588()
{
  sub_100001ED0();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;

  if (v0)
  {
    sub_10000778C();

    return v7();
  }

  else
  {
    v9 = swift_task_alloc();
    *(v3 + 48) = v9;
    *v9 = v5;
    v9[1] = sub_10012E6DC;
    sub_1000031B8(*(v3 + 16));

    return sub_10012D768();
  }
}

uint64_t sub_10012E6DC()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  sub_100001F00();

  return v3();
}

uint64_t sub_10012E7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v19 = swift_task_alloc();
  *(v16 + 16) = v19;
  v20 = sub_100065020(&qword_1001B8F60, &unk_100171260);
  *v19 = v16;
  v19[1] = sub_10006F558;

  return Task.value.getter(a1, a2, &type metadata for () + 1, v20, &protocol self-conformance witness table for Error, v21, v22, v23, a9, a10, a11, a12, a13, a14, a15, a16);
}

void sub_10012E894()
{
  sub_100065020(&qword_1001B8F60, &unk_100171260);

  Task.cancel()();
}

void sub_10012E8F4()
{
  sub_1000055B0();
  v1 = v0;
  v3 = v2;
  v53 = v4;
  v54 = type metadata accessor for DaemonRequest.ManagerOwnedState(0);
  sub_100002C00();
  __chkstk_darwin(v5);
  sub_100002B8C();
  v8 = v7 - v6;
  v9 = sub_100065020(&qword_1001B9D00, &qword_100171E00);
  sub_100002F04(v9);
  sub_100004B1C();
  __chkstk_darwin(v10);
  v12 = &v50 - v11;
  v13 = type metadata accessor for CustomAssetConfiguration();
  sub_100002BDC();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_100002B8C();
  v52 = v18 - v17;
  v19 = type metadata accessor for InferenceProviderDescriptor();
  sub_100002BDC();
  v21 = v20;
  __chkstk_darwin(v22);
  sub_100002B8C();
  v25 = v24 - v23;
  sub_1000755A4();
  if ((v26 & 1) == 0)
  {
    goto LABEL_14;
  }

  v50 = v15;
  v51 = v13;
  v27 = v1;
  v28 = *(v3 + 32);
  v29 = sub_100004CB0();
  sub_100003370(v29, v30);
  v31 = sub_100005974();
  v32 = v28;
  v33 = v27;
  v34(v31, v32);
  v35 = static InferenceProviderDescriptor.== infix(_:_:)();
  (*(v21 + 8))(v25, v19);
  if ((v35 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_10001E72C(v53, v12, &qword_1001B9D00, &qword_100171E00);
  v36 = v51;
  if (sub_10000C6C0(v12, 1, v51) != 1)
  {
    v37 = v50;
    v38 = v52;
    v39 = (*(v50 + 32))(v52, v12, v36);
    v40 = *(v33 + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_runtimeAssets);
    __chkstk_darwin(v39);
    *(&v50 - 2) = v38;

    v41 = sub_100026BB0();
    sub_100128C08(v41, v42, v40);
    sub_10001E4A8();

    (*(v37 + 8))(v38, v36);
LABEL_14:
    sub_100002EEC();
    return;
  }

  sub_10000ED84(v12, &qword_1001B9D00);
  v43 = (v27 + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_unsafeManagerOwnedState);
  sub_100009E10();
  swift_beginAccess();
  v44 = v43[1];
  v56 = *v43;
  v57 = v44;
  v58 = *(v43 + 4);
  v59 = *(&v56 + 1);
  v60 = v44;
  v61[0] = v58;
  sub_10001E72C(&v59, v55, &qword_1001BC468, &qword_100172C40);
  sub_10001E72C(&v60, v55, &qword_1001BC468, &qword_100172C40);
  v45 = &unk_100172C48;
  sub_10001E72C(&v60 + 8, v55, &qword_1001BC470, &unk_100172C48);
  sub_10001E72C(v61, v55, &qword_1001B8F40, &unk_10016FB20);
  v46 = sub_10006CF3C();
  sub_10000ED84(&v59, &qword_1001BC468);
  sub_10000ED84(&v60, &qword_1001BC468);
  sub_10000ED84(&v60 + 8, &qword_1001BC470);
  sub_10000ED84(v61, &qword_1001B8F40);
  v47 = sub_10000E8DC(v46);
  v48 = 0;
  while (1)
  {
    if (v47 == v48)
    {
LABEL_15:

      goto LABEL_14;
    }

    if ((v46 & 0xC000000000000001) != 0)
    {
      sub_100003D88();
      v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v48 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      sub_10014B2AC();
    }

    if (__OFADD__(v48, 1))
    {
      break;
    }

    v49 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState;
    sub_100004CBC();
    swift_beginAccess();
    sub_100005DD8();
    sub_10005CAA8(v45 + v49, v8);

    LOBYTE(v49) = *(v8 + *(v54 + 24));
    sub_1000115C8();
    sub_10000D300(v8);
    ++v48;
    if ((v49 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

uint64_t sub_10012EDE0()
{
  sub_100002BAC();
  v1[13] = v2;
  v1[14] = v0;
  v1[11] = v3;
  v1[12] = v4;
  v5 = sub_100065020(&qword_1001B9D00, &qword_100171E00);
  sub_100002F04(v5);
  v1[15] = sub_100002C58();
  v6 = type metadata accessor for ModelCatalogAsset(0);
  v1[16] = v6;
  sub_100002F44(v6);
  v1[17] = v7;
  v1[18] = sub_10000F0C0();
  v1[19] = swift_task_alloc();
  v8 = sub_100065020(&qword_1001B9C60, &qword_1001706B8);
  v1[20] = v8;
  sub_100002F04(v8);
  v1[21] = sub_10000F0C0();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v9 = type metadata accessor for InferenceProviderDescriptor();
  v1[24] = v9;
  sub_100002F44(v9);
  v1[25] = v10;
  v1[26] = sub_100002C58();
  v11 = sub_100002C10();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10012EF54()
{
  v103 = v0;
  if (qword_1001B8AB8 != -1)
  {
    goto LABEL_50;
  }

  while (1)
  {
    v1 = v0[13];
    v2 = type metadata accessor for Logger();
    sub_10000641C(v2, qword_1001BD750);
    sub_100007130(v1, (v0 + 2));

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    v86 = v4;
    v100 = v0;
    if (!os_log_type_enabled(v3, v4))
    {

      sub_10005D588(v0 + 2);
      goto LABEL_25;
    }

    log = v3;
    v5 = v0[12];
    sub_1000033D0();
    v6 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    *v6 = 136315650;
    sub_10005FAF0(&qword_1001B9450, type metadata accessor for ModelCatalogAsset, &unk_1001717C4);
    sub_1000062B0();
    v7 = Set.description.getter();
    v9 = sub_100004A3C(v7, v8, &v101);

    *(v6 + 4) = v9;
    v84 = v6;
    *(v6 + 12) = 2080;
    v10 = *(v5 + 16);
    v11 = _swiftEmptyArrayStorage;
    if (!v10)
    {
      break;
    }

    v93 = v0[22];
    v92 = v0[20];
    v12 = v0[12];
    v102 = _swiftEmptyArrayStorage;
    sub_10002045C(0, v10, 0);
    v11 = v102;
    v15 = sub_100149E34();
    v16 = 0;
    v17 = v12 + 64;
    v88 = v13;
    v89 = v10;
    v87 = v12 + 72;
    v90 = v12 + 64;
    v91 = v12;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(v12 + 32))
    {
      if ((*(v17 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_45;
      }

      if (*(v12 + 36) != v13)
      {
        goto LABEL_46;
      }

      v97 = v15 >> 6;
      v95 = v16;
      v96 = v13;
      v94 = v14;
      v19 = v0[22];
      v18 = v0[23];
      v20 = *(v92 + 48);
      v21 = v0[21];
      v22 = *(v12 + 56);
      v23 = (*(v12 + 48) + 16 * v15);
      v24 = v23[1];
      v98 = *v23;
      v25 = type metadata accessor for CustomAssetConfiguration();
      sub_100002BDC();
      v99 = v11;
      v27 = v26;
      (*(v26 + 16))(v18 + v20, v22 + *(v28 + 72) * v15, v25);
      *v19 = v98;
      *(v93 + 8) = v24;
      (*(v27 + 32))(&v19[*(v92 + 48)], v18 + v20, v25);
      sub_10001E72C(v19, v21, &qword_1001B9C60, &qword_1001706B8);

      v0 = *(v92 + 48);
      v29 = CustomAssetConfiguration.identifier.getter();
      v31 = v30;
      sub_10000ED84(v19, &qword_1001B9C60);
      (*(v27 + 8))(v0 + v21, v25);
      v11 = v99;
      v102 = v99;
      v33 = v99[2];
      v32 = v99[3];
      if (v33 >= v32 >> 1)
      {
        sub_10002045C((v32 > 1), v33 + 1, 1);
        v11 = v102;
      }

      v11[2] = v33 + 1;
      v34 = &v11[2 * v33];
      v34[4] = v29;
      v34[5] = v31;
      v12 = v91;
      v35 = 1 << *(v91 + 32);
      if (v15 >= v35)
      {
        goto LABEL_47;
      }

      v17 = v90;
      v36 = *(v90 + 8 * v97);
      if ((v36 & (1 << v15)) == 0)
      {
        goto LABEL_48;
      }

      if (*(v91 + 36) != v96)
      {
        goto LABEL_49;
      }

      v37 = v36 & (-2 << (v15 & 0x3F));
      if (v37)
      {
        v35 = __clz(__rbit64(v37)) | v15 & 0x7FFFFFFFFFFFFFC0;
        v0 = v100;
      }

      else
      {
        v38 = v97 << 6;
        v39 = (v87 + 8 * v97);
        v40 = v97 + 1;
        v0 = v100;
        while (v40 < (v35 + 63) >> 6)
        {
          v42 = *v39++;
          v41 = v42;
          v38 += 64;
          ++v40;
          if (v42)
          {
            sub_100016E94(v15, v96, v94 & 1);
            v35 = __clz(__rbit64(v41)) + v38;
            goto LABEL_21;
          }
        }

        sub_100016E94(v15, v96, v94 & 1);
      }

LABEL_21:
      v14 = 0;
      v16 = v95 + 1;
      v15 = v35;
      v13 = v88;
      if (v95 + 1 == v89)
      {
        goto LABEL_24;
      }
    }

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
LABEL_49:
    __break(1u);
LABEL_50:
    sub_100005344();
    swift_once();
  }

LABEL_24:
  v43 = v0[26];
  v0[10] = v11;
  v44 = sub_100005E98();
  sub_100065020(v44, v45);
  sub_1000082D4(&qword_1001B9F30, &qword_1001B9F28, &qword_100174190, &protocol conformance descriptor for [A]);
  BidirectionalCollection<>.joined(separator:)();
  sub_10001351C();

  v46 = sub_100005E98();
  sub_100004A3C(v46, v47, v48);
  sub_10000D0E8();

  *(v84 + 14) = v100 + 10;
  *(v84 + 22) = 2080;
  v49 = v100[6];
  sub_100003370(v100 + 2, v100[5]);
  v50 = sub_10000D0E8();
  v0 = v100;
  v51(v50, v49);
  sub_1000079A4();
  sub_10005FAF0(v52, v53, &protocol conformance descriptor for InferenceProviderDescriptor);
  dispatch thunk of CustomStringConvertible.description.getter();
  sub_10001351C();
  v54 = sub_1000060A4();
  v55(v54);
  sub_10005D588(v100 + 2);
  v56 = sub_100005E98();
  sub_100004A3C(v56, v57, v58);
  sub_10000D0E8();

  *(v84 + 24) = v43;
  _os_log_impl(&_mh_execute_header, log, v86, "in checkForAbort for %s, runtime assets %s and connection %s", v84, 0x20u);
  swift_arrayDestroy();
  sub_100002BD0();

  sub_100002BD0();

LABEL_25:
  v59 = v0[11];
  v60 = *(v59 + 32);
  *(v0 + 264) = v60;
  v61 = 1 << v60;
  if (v61 < 64)
  {
    v62 = ~(-1 << v61);
  }

  else
  {
    v62 = -1;
  }

  v63 = v62 & *(v59 + 56);
  v64 = OBJC_IVAR____TtC13modelmanagerd14RequestManager_assetManager;
  v0[27] = OBJC_IVAR____TtC13modelmanagerd14RequestManager_activeGroups;
  v0[28] = v64;

  sub_100004CBC();
  swift_beginAccess();
  v65 = 0;
  v66 = 0;
  if (v63)
  {
LABEL_34:
    while (1)
    {
      v0[29] = v63;
      v0[30] = v66;
      v68 = v0[18];
      v69 = v0[19];
      v70 = v100[15];
      v71 = v100[14];
      v72 = v100[13];
      sub_1000128DC();
      sub_10005CAA8(v73, v69);
      sub_10001961C();
      v74 = swift_task_alloc();
      sub_100018D54(v74);

      v75 = swift_task_alloc();
      v75[2] = v71;
      v75[3] = v68;
      v75[4] = v70;
      v75[5] = v72;
      v0 = v100;

      LOBYTE(v68) = sub_100004CFC();
      v100[31] = v65;

      if ((v68 & 1) == 0)
      {
        break;
      }

      v76 = v100[18];
      sub_10000ED84(v100[15], &qword_1001B9D00);
      sub_100009CDC();
      sub_10000D300(v76);
      v66 = v100[30];
      v65 = v100[31];
      v63 = (v100[29] - 1) & v100[29];
      if (!v63)
      {
        goto LABEL_30;
      }
    }

    v79 = (v100[14] + v100[28]);
    v80 = sub_100003370(v79, v79[3]);
    v81 = sub_1000134AC(v80);

    return _swift_task_switch(v81, v82, v83);
  }

  else
  {
    while (1)
    {
LABEL_30:
      v67 = v66 + 1;
      if (__OFADD__(v66, 1))
      {
        __break(1u);
        goto LABEL_44;
      }

      if (v67 >= (((1 << *(v0 + 264)) + 63) >> 6))
      {
        break;
      }

      v63 = *(v0[11] + 8 * v67 + 56);
      ++v66;
      if (v63)
      {
        v66 = v67;
        goto LABEL_34;
      }
    }

    sub_100012124();

    sub_100001F00();

    return v77();
  }
}