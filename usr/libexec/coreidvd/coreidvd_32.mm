void *sub_100360C28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100172D4C(0, v1, 0);
  v3 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v5 = result;
  v6 = 0;
  v22 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v8 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v23 = *(a1 + 36);
    v9 = (*(a1 + 48) + 16 * v5);
    v11 = *v9;
    v10 = v9[1];
    sub_10000B8B8(*v9, v10);
    v12 = Data.base16EncodedString()();
    result = sub_10000B90C(v11, v10);
    v14 = _swiftEmptyArrayStorage[2];
    v13 = _swiftEmptyArrayStorage[3];
    if (v14 >= v13 >> 1)
    {
      result = sub_100172D4C((v13 > 1), v14 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v14 + 1;
    *&_swiftEmptyArrayStorage[2 * v14 + 4] = v12;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v3 = a1 + 56;
    v15 = *(a1 + 56 + 8 * v8);
    if ((v15 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v5 & 0x3F));
    if (v16)
    {
      v7 = __clz(__rbit64(v16)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v8 << 6;
      v18 = v8 + 1;
      v19 = (a1 + 64 + 8 * v8);
      while (v18 < (v7 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_100316220(v5, v23, 0);
          v7 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_100316220(v5, v23, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v22)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_100360E68(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() standardUserDefaults];
  v9._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.logTrustedIACARoots.getter();
  v10 = NSUserDefaults.internalBool(forKey:)(v9);

  if (v10)
  {
    defaultLogger()();

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v22 = v5;
      v14 = v13;
      v15 = swift_slowAlloc();
      v23 = v15;
      *v14 = 136315138;
      sub_1003606AC(a1);
      v16 = Array.description.getter();
      v21 = v4;
      v18 = v17;

      v19 = sub_100141FE4(v16, v18, &v23);

      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v11, v12, "ISO18013IssuerAuthenticator trusting IACA roots: %s", v14, 0xCu);
      sub_10000BB78(v15);

      (*(v22 + 8))(v7, v21);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }
  }

  *(v2 + 232) = a1;
}

uint64_t sub_1003610D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_100007224(&qword_100841DE8, &qword_1006DEC18);
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v6 = type metadata accessor for DIPError.Code();
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();
  v7 = type metadata accessor for ISO18013Response.IssuerSigned();
  v4[17] = v7;
  v4[18] = *(v7 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v8 = type metadata accessor for COSE_Sign1();
  v4[21] = v8;
  v4[22] = *(v8 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v9 = type metadata accessor for ISO18013Response.Document();
  v4[25] = v9;
  v4[26] = *(v9 - 8);
  v4[27] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v4[28] = v10;
  v4[29] = *(v10 - 8);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  sub_100007224(&qword_10083AE00, &qword_1006D9ED0);
  v4[32] = swift_task_alloc();
  v11 = type metadata accessor for ISO18013KnownDocTypes();
  v4[33] = v11;
  v4[34] = *(v11 - 8);
  v4[35] = swift_task_alloc();

  return _swift_task_switch(sub_100361424, v3, 0);
}

uint64_t sub_100361424(uint64_t a1)
{
  v73 = v1;
  v2 = v1[33];
  v3 = v1[34];
  v4 = v1[32];
  ISO18013Response.Document.docType.getter();
  ISO18013KnownDocTypes.init(rawValue:)();
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v6 = v1[15];
    v5 = v1[16];
    v7 = v1[14];
    sub_10000BE18(v1[32], &qword_10083AE00, &qword_1006D9ED0);
    _StringGuts.grow(_:)(28);

    v72[0] = 0xD00000000000001ALL;
    v72[1] = 0x8000000100710680;
    v8._countAndFlagsBits = ISO18013Response.Document.docType.getter();
    String.append(_:)(v8);

    (*(v6 + 104))(v5, enum case for DIPError.Code.documentReaderUnknownDocumentType(_:), v7);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_3:

    v9 = v1[1];

    return v9();
  }

  v12 = v1[26];
  v11 = v1[27];
  v13 = v1[25];
  v14 = v1[8];
  (*(v1[34] + 32))(v1[35], v1[32], v1[33]);
  defaultLogger()();
  (*(v12 + 16))(v11, v14, v13);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  v17 = os_log_type_enabled(v15, v16);
  v18 = v1[31];
  v20 = v1[28];
  v19 = v1[29];
  v22 = v1[26];
  v21 = v1[27];
  v23 = v1[25];
  if (v17)
  {
    v71 = v1[28];
    v24 = swift_slowAlloc();
    v68 = v16;
    v25 = swift_slowAlloc();
    v72[0] = v25;
    *v24 = 136315138;
    v26 = ISO18013Response.Document.docType.getter();
    v69 = v18;
    v28 = v27;
    (*(v22 + 8))(v21, v23);
    v29 = sub_100141FE4(v26, v28, v72);

    *(v24 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v15, v68, "ISO18013IssuerAuthenticator begins validating document with type %s", v24, 0xCu);
    sub_10000BB78(v25);

    v30 = *(v19 + 8);
    v30(v69, v71);
  }

  else
  {

    (*(v22 + 8))(v21, v23);
    v30 = *(v19 + 8);
    v30(v18, v20);
  }

  v1[36] = v30;
  v31 = v1[20];
  v32 = v1[17];
  v33 = v1[18];
  ISO18013Response.Document.issuerSigned.getter();
  ISO18013Response.IssuerSigned.issuerAuth.getter();
  v34 = *(v33 + 8);
  v1[37] = v34;
  v1[38] = (v33 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v34(v31, v32);
  v35 = COSE_Sign1.x509Chain.getter();
  v1[39] = v35;
  if (v35)
  {
    v36 = v35;
    v37 = swift_task_alloc();
    v1[40] = v37;
    *v37 = v1;
    v37[1] = sub_100361D3C;
    v38 = v1[35];
    v39 = v1[9];

    return sub_100362A9C(v36, v39, v38);
  }

  else
  {
    v70 = v1[24];
    v40 = v1[21];
    v41 = v1[22];
    (*(v1[15] + 104))(v1[16], enum case for DIPError.Code.documentReaderMissingIssuerCertificateChain(_:), v1[14]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v42 = *(v41 + 8);
    v42(v70, v40);
    v43 = [objc_opt_self() standardUserDefaults];
    v44._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.disableIssuerValidation.getter();
    LOBYTE(v40) = NSUserDefaults.internalBool(forKey:)(v44);

    if ((v40 & 1) == 0)
    {
      v58 = v1[34];
      v59 = v1[35];
      v60 = v1[33];
      swift_willThrow();
      (*(v58 + 8))(v59, v60);
      goto LABEL_3;
    }

    v66 = v1[37];
    v45 = v1[36];
    v46 = v1[30];
    v47 = v1[28];
    v48 = v1[23];
    v67 = v1[21];
    v49 = v1[19];
    v65 = v1[17];
    defaultLogger()();
    DIPLogError(_:message:log:)();
    v45(v46, v47);
    ISO18013Response.Document.issuerSigned.getter();
    ISO18013Response.IssuerSigned.issuerAuth.getter();
    v66(v49, v65);
    v50 = COSE_Sign1.payload.getter();
    v52 = v51;
    v42(v48, v67);
    if (v52 >> 60 == 15)
    {
      v53 = 0;
    }

    else
    {
      v53 = v50;
    }

    if (v52 >> 60 == 15)
    {
      v54 = 0xC000000000000000;
    }

    else
    {
      v54 = v52;
    }

    type metadata accessor for CBORDecoder();
    swift_allocObject();
    CBORDecoder.init()();
    sub_1000BA30C(&qword_100841DF0, &qword_100841DE8, &qword_1006DEC18, &protocol conformance descriptor for CBOREncodedCBOR<A>);
    dispatch thunk of CBORDecoder.decode<A>(_:from:)();
    v55 = v1[34];
    v56 = v1[35];
    v57 = v1[33];
    v61 = v1[12];
    v62 = v1[13];
    v63 = v1[11];

    CBOREncodedCBOR.value.getter();
    sub_10000B90C(v53, v54);

    (*(v61 + 8))(v62, v63);
    (*(v55 + 8))(v56, v57);

    v64 = v1[1];

    return v64(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100361D3C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 328) = a1;
  *(v4 + 336) = v1;

  v5 = *(v3 + 80);

  if (v1)
  {
    v6 = sub_1003621F0;
  }

  else
  {
    v6 = sub_100361E8C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100361E8C()
{
  sub_100020260(v0[10] + 112, (v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  sub_10000BA08(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[43] = v3;
  *v3 = v0;
  v3[1] = sub_100361F5C;
  v4 = v0[41];
  v5 = v0[7];
  v6 = v0[8];

  return dispatch thunk of ISO18013DocumentValidating.authenticateDocument(_:issuerCertificateChain:)(v5, v6, v4, v1, v2);
}

uint64_t sub_100361F5C(uint64_t a1)
{
  v4 = *v2;
  v4[44] = v1;

  v5 = v4[10];

  if (v1)
  {
    v6 = sub_100362640;
  }

  else
  {
    v4[45] = a1;
    v6 = sub_1003620B4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1003620B4()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];
  (*(v0[22] + 8))(v0[24], v0[21]);
  (*(v2 + 8))(v1, v3);
  sub_10000BB78(v0 + 2);
  v6 = v0[45];

  v4 = v0[1];

  return v4(v6);
}

uint64_t sub_1003621F0()
{
  v1 = *(v0[22] + 8);
  v1(v0[24], v0[21]);
  v2 = [objc_opt_self() standardUserDefaults];
  v3._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.disableIssuerValidation.getter();
  v4 = NSUserDefaults.internalBool(forKey:)(v3);

  if (v4)
  {
    v28 = v0[37];
    v5 = v0[30];
    v6 = v0[28];
    v7 = v0[23];
    v29 = v0[21];
    v8 = v0[19];
    v26 = v0[36];
    v27 = v0[17];
    defaultLogger()();
    DIPLogError(_:message:log:)();
    v26(v5, v6);
    ISO18013Response.Document.issuerSigned.getter();
    ISO18013Response.IssuerSigned.issuerAuth.getter();
    v28(v8, v27);
    v9 = COSE_Sign1.payload.getter();
    v11 = v10;
    v1(v7, v29);
    if (v11 >> 60 == 15)
    {
      v12 = 0;
    }

    else
    {
      v12 = v9;
    }

    if (v11 >> 60 == 15)
    {
      v13 = 0xC000000000000000;
    }

    else
    {
      v13 = v11;
    }

    type metadata accessor for CBORDecoder();
    swift_allocObject();
    CBORDecoder.init()();
    sub_1000BA30C(&qword_100841DF0, &qword_100841DE8, &qword_1006DEC18, &protocol conformance descriptor for CBOREncodedCBOR<A>);
    dispatch thunk of CBORDecoder.decode<A>(_:from:)();
    v14 = v0[34];
    v15 = v0[35];
    v16 = v0[33];
    v22 = v0[12];
    v23 = v0[13];
    v24 = v0[11];

    CBOREncodedCBOR.value.getter();
    sub_10000B90C(v12, v13);

    (*(v22 + 8))(v23, v24);
    (*(v14 + 8))(v15, v16);

    v25 = v0[1];

    return v25(_swiftEmptyArrayStorage);
  }

  else
  {
    v17 = v0[34];
    v18 = v0[35];
    v19 = v0[33];
    swift_willThrow();
    (*(v17 + 8))(v18, v19);

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_100362640()
{
  v1 = *(v0[22] + 8);
  v1(v0[24], v0[21]);
  sub_10000BB78(v0 + 2);
  v2 = [objc_opt_self() standardUserDefaults];
  v3._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.disableIssuerValidation.getter();
  v4 = NSUserDefaults.internalBool(forKey:)(v3);

  if (v4)
  {
    v28 = v0[37];
    v30 = v1;
    v5 = v0[36];
    v6 = v0[30];
    v7 = v0[28];
    v8 = v0[23];
    v29 = v0[21];
    v9 = v0[19];
    v27 = v0[17];
    defaultLogger()();
    DIPLogError(_:message:log:)();
    v5(v6, v7);
    ISO18013Response.Document.issuerSigned.getter();
    ISO18013Response.IssuerSigned.issuerAuth.getter();
    v28(v9, v27);
    v10 = COSE_Sign1.payload.getter();
    v12 = v11;
    v30(v8, v29);
    if (v12 >> 60 == 15)
    {
      v13 = 0;
    }

    else
    {
      v13 = v10;
    }

    if (v12 >> 60 == 15)
    {
      v14 = 0xC000000000000000;
    }

    else
    {
      v14 = v12;
    }

    type metadata accessor for CBORDecoder();
    swift_allocObject();
    CBORDecoder.init()();
    sub_1000BA30C(&qword_100841DF0, &qword_100841DE8, &qword_1006DEC18, &protocol conformance descriptor for CBOREncodedCBOR<A>);
    dispatch thunk of CBORDecoder.decode<A>(_:from:)();
    v15 = v0[34];
    v16 = v0[35];
    v17 = v0[33];
    v23 = v0[12];
    v24 = v0[13];
    v25 = v0[11];

    CBOREncodedCBOR.value.getter();
    sub_10000B90C(v13, v14);

    (*(v23 + 8))(v24, v25);
    (*(v15 + 8))(v16, v17);

    v26 = v0[1];

    return v26(_swiftEmptyArrayStorage);
  }

  else
  {
    v18 = v0[34];
    v19 = v0[35];
    v20 = v0[33];
    swift_willThrow();
    (*(v18 + 8))(v19, v20);

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_100362A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  sub_100007224(&qword_10083B020, &unk_1006D8ED0);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v5 = type metadata accessor for DIPError.Code();
  v4[23] = v5;
  v4[24] = *(v5 - 8);
  v4[25] = swift_task_alloc();
  v6 = type metadata accessor for ISO18013KnownDocTypes();
  v4[26] = v6;
  v4[27] = *(v6 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v7 = type metadata accessor for DIPCertUsage();
  v4[30] = v7;
  v4[31] = *(v7 - 8);
  v4[32] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v4[33] = v8;
  v4[34] = *(v8 - 8);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();

  return _swift_task_switch(sub_100362CDC, v3, 0);
}

uint64_t sub_100362CDC()
{
  v0[13] = _swiftEmptyArrayStorage;
  v1 = decodeCertificateChain(fromDER:)();
  v14 = v0[37];
  v15 = v0[33];
  v16 = v0[34];
  v17 = v0[29];
  v18 = v0[26];
  v19 = v0[27];
  v41 = v0[19];
  v0[13] = v1;
  defaultLogger()();
  *(swift_task_alloc() + 16) = v0 + 13;
  Logger.cryptoParam(_:)();

  v20 = *(v16 + 8);
  v0[38] = v20;
  v0[39] = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v14, v15);
  v21 = *(v19 + 16);
  v0[40] = v21;
  v0[41] = (v19 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v21(v17, v41, v18);
  v22 = (*(v19 + 88))(v17, v18);
  if (v22 == enum case for ISO18013KnownDocTypes.iso18013_5_1_mDL(_:))
  {
    (*(v0[31] + 104))(v0[32], enum case for DIPCertUsage.iso18013IssuerAuth(_:), v0[30]);
LABEL_11:
    v23 = v0[19];
    v24 = v0[20];
    v25 = *(v24 + 232);
    v26 = swift_task_alloc();
    *(v26 + 16) = v23;

    v27 = sub_100365C04(sub_100366084, v26, v25);

    sub_100360978(v27);

    swift_beginAccess();
    sub_10001F370(v24 + 152, *(v24 + 176));
    dispatch thunk of OIDVerifying.setTrustedRoots(_:)();
    swift_endAccess();

    sub_100020260(v24 + 152, (v0 + 2));
    v28 = v0[5];
    v29 = v0[6];
    sub_10000BA08(v0 + 2, v28);
    v30 = v0[13];
    v0[42] = v30;
    v31 = swift_task_alloc();
    v0[43] = v31;
    *v31 = v0;
    v31[1] = sub_10036344C;
    v32 = v0[32];

    return dispatch thunk of OIDVerifying.verifyChain(_:forUsage:)(v30, v32, v28, v29);
  }

  if (v22 == enum case for ISO18013KnownDocTypes.japanNationalIDCard(_:))
  {
    static DIPCertUsage.japanNationalIDCardIssuerAuth.getter();
    goto LABEL_11;
  }

  if (v22 == enum case for ISO18013KnownDocTypes.photoID(_:))
  {
    static DIPCertUsage.photoIDIssuerAuth.getter();
    goto LABEL_11;
  }

  v33 = v0[27];
  v39 = v0[26];
  v40 = v0[29];
  v35 = v0[24];
  v34 = v0[25];
  v36 = v0[23];
  _StringGuts.grow(_:)(28);

  v37._countAndFlagsBits = ISO18013KnownDocTypes.rawValue.getter();
  String.append(_:)(v37);

  (*(v35 + 104))(v34, enum case for DIPError.Code.documentReaderUnknownDocumentType(_:), v36);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  (*(v33 + 8))(v40, v39);
  v3 = v0[24];
  v2 = v0[25];
  v38 = v0[23];
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v4 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v5 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1006BF520;
  v7 = v6 + v5;
  v8 = (v7 + v4[14]);
  v9 = enum case for DIPError.PropertyKey.issuerCertificateChain(_:);
  v10 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v10 - 8) + 104))(v7, v9, v10);
  v11 = v0[13];
  v8[3] = sub_100007224(&qword_10083B4C8, &unk_1006D98C0);
  v8[4] = sub_1000BA30C(&qword_100841DD0, &qword_10083B4C8, &unk_1006D98C0, &protocol conformance descriptor for [A]);
  *v8 = v11;
  swift_errorRetain();

  sub_10003C9C0(v6);
  swift_setDeallocating();
  sub_10000BE18(v7, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  (*(v3 + 104))(v2, enum case for DIPError.Code.internalError(_:), v38);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v12 = v0[1];

  return v12();
}

uint64_t sub_10036344C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 352) = a1;
  *(v4 + 360) = v1;

  v5 = *(v3 + 160);
  if (v1)
  {
    v6 = sub_1003648F4;
  }

  else
  {
    v6 = sub_100363580;
  }

  return _swift_task_switch(v6, v5, 0);
}

unint64_t sub_100363580()
{
  v128 = v0;
  v1 = *(v0 + 360);
  v2 = *(v0 + 336);
  v3 = *(v0 + 144);
  v4 = *(v0 + 352);
  sub_10000BB78((v0 + 16));
  v5 = SecTrustRef.certificateChain.getter();

  *(v0 + 104) = v5;
  sub_1003660D8(v5, v3);
  v6 = *(v0 + 352);
  if (v1)
  {
    v8 = *(v0 + 248);
    v7 = *(v0 + 256);
    v9 = *(v0 + 240);

    (*(v8 + 8))(v7, v9);
LABEL_64:
    v98 = *(v0 + 192);
    v97 = *(v0 + 200);
    v99 = *(v0 + 184);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v100 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v101 = (*(*v100 + 80) + 32) & ~*(*v100 + 80);
    v102 = swift_allocObject();
    *(v102 + 16) = xmmword_1006BF520;
    v103 = v102 + v101;
    v104 = (v103 + v100[14]);
    v105 = enum case for DIPError.PropertyKey.issuerCertificateChain(_:);
    v106 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v106 - 8) + 104))(v103, v105, v106);
    v107 = *(v0 + 104);
    v104[3] = sub_100007224(&qword_10083B4C8, &unk_1006D98C0);
    v104[4] = sub_1000BA30C(&qword_100841DD0, &qword_10083B4C8, &unk_1006D98C0, &protocol conformance descriptor for [A]);
    *v104 = v107;
    swift_errorRetain();

    sub_10003C9C0(v102);
    swift_setDeallocating();
    sub_10000BE18(v103, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    (*(v98 + 104))(v97, enum case for DIPError.Code.internalError(_:), v99);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v108 = *(v0 + 8);

    return v108();
  }

  v10 = SecTrustRef.certificateChain.getter();
  v11 = v10;
  if (v10 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_63;
    }
  }

  else if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_63:

    v94 = *(v0 + 352);
    v95 = *(v0 + 248);
    v122 = *(v0 + 256);
    v96 = *(v0 + 240);
    (*(*(v0 + 192) + 104))(*(v0 + 200), enum case for DIPError.Code.documentReaderMissingIssuerCertificateChain(_:), *(v0 + 184));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v95 + 8))(v122, v96);
    goto LABEL_64;
  }

  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_68;
    }

    v12 = *(v11 + 32);
  }

  v2 = v12;

  v13 = SecTrustRef.certificateChain.getter();
  v14 = v13;
  if (!(v13 >> 62))
  {
    v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_10;
    }

    goto LABEL_62;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  if (!v15)
  {
LABEL_62:

    goto LABEL_63;
  }

LABEL_10:
  v16 = __OFSUB__(v15, 1);
  result = v15 - 1;
  if (v16)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if ((v14 & 0xC000000000000001) == 0)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v18 = *(v14 + 8 * result + 32);
      goto LABEL_15;
    }

    __break(1u);
    return result;
  }

LABEL_69:
  v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_15:
  v19 = v18;

  if (!SecCertificateRef.commonName()().value._object)
  {
    v20 = *(v0 + 248);
    v120 = *(v0 + 256);
    v112 = *(v0 + 352);
    v117 = *(v0 + 240);
    v21 = v19;
    (*(*(v0 + 192) + 104))(*(v0 + 200), enum case for DIPError.Code.documentReaderDocSignerMissingCommonName(_:), *(v0 + 184));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    goto LABEL_26;
  }

  if ((SecCertificateRef.keyUsage.getter() & 1) == 0)
  {
    v20 = *(v0 + 248);
    v120 = *(v0 + 256);
    v112 = *(v0 + 352);
    v117 = *(v0 + 240);
    v21 = v19;
    (*(*(v0 + 192) + 104))(*(v0 + 200), enum case for DIPError.Code.documentReaderDocSignerInvalidKeyUsage(_:), *(v0 + 184));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
LABEL_26:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

LABEL_27:
    (*(v20 + 8))(v120, v117);
    goto LABEL_64;
  }

  v22 = SecCertificateRef.countryName.getter();
  if (!v23)
  {
    v20 = *(v0 + 248);
    v120 = *(v0 + 256);
    v112 = *(v0 + 352);
    v117 = *(v0 + 240);
    v21 = v19;
    (*(*(v0 + 192) + 104))(*(v0 + 200), enum case for DIPError.Code.documentReaderDocSignerInconsistentWithRoot(_:), *(v0 + 184));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    goto LABEL_26;
  }

  v24 = v23;
  v25 = v22;
  if (String.count.getter() != 2)
  {
    v20 = *(v0 + 248);
    v120 = *(v0 + 256);
    v113 = *(v0 + 352);
    v117 = *(v0 + 240);
    v28 = v19;
    v29 = *(v0 + 192);
    v30 = *(v0 + 200);
    v31 = *(v0 + 184);

    (*(v29 + 104))(v30, enum case for DIPError.Code.documentReaderDocSignerInconsistentWithRoot(_:), v31);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    goto LABEL_27;
  }

  v26 = SecCertificateRef.countryName.getter();
  if (!v27)
  {

    goto LABEL_36;
  }

  if (v25 == v26 && v24 == v27)
  {

    goto LABEL_31;
  }

  v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v32 & 1) == 0)
  {
LABEL_36:
    v20 = *(v0 + 248);
    v120 = *(v0 + 256);
    v114 = *(v0 + 352);
    v117 = *(v0 + 240);
    (*(*(v0 + 192) + 104))(*(v0 + 200), enum case for DIPError.Code.documentReaderDocSignerInconsistentWithRoot(_:), *(v0 + 184));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    goto LABEL_27;
  }

LABEL_31:
  v111 = v19;
  v33 = SecCertificateRef.stateOrProvinceName.getter();
  if (!v34)
  {
    goto LABEL_39;
  }

  v35 = v33;
  v36 = v34;
  v37 = SecCertificateRef.stateOrProvinceName.getter();
  if (!v38)
  {

    goto LABEL_47;
  }

  if (v37 == v35 && v38 == v36)
  {

    goto LABEL_39;
  }

  v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v39 & 1) == 0)
  {
LABEL_47:
    v58 = *(v0 + 352);
    v20 = *(v0 + 248);
    v117 = *(v0 + 240);
    v120 = *(v0 + 256);
    (*(*(v0 + 192) + 104))(*(v0 + 200), enum case for DIPError.Code.documentReaderDocSignerInconsistentWithRoot(_:), *(v0 + 184));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    goto LABEL_27;
  }

LABEL_39:
  *(v0 + 120) = sub_100364FD8();
  sub_100007224(&qword_100841DD8, &qword_1006DEC08);
  sub_1000BA30C(&qword_100841DE0, &qword_100841DD8, &qword_1006DEC08, &protocol conformance descriptor for Set<A>);
  Collection.nilIfEmpty.getter();
  v40 = *(v0 + 128);

  if (v40)
  {
    v41 = SecCertificateRef.extendedKeyUsage.getter();
    v42 = sub_1003652BC(v41, v40);

    if (v42)
    {
      v126[0] = 0;
      v126[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(99);
      v43._countAndFlagsBits = 0xD000000000000055;
      v43._object = 0x8000000100710830;
      String.append(_:)(v43);
      sub_100360C28(v40);

      v44 = Array.description.getter();
      v46 = v45;

      v47._countAndFlagsBits = v44;
      v47._object = v46;
      String.append(_:)(v47);

      v48._countAndFlagsBits = 0x6C6175746341202ELL;
      v48._object = 0xEA0000000000203ALL;
      String.append(_:)(v48);
      v49 = SecCertificateRef.extendedKeyUsage.getter();
      v50 = *(v49 + 16);
      if (v50)
      {
        v127 = _swiftEmptyArrayStorage;
        sub_100172D4C(0, v50, 0);
        v51 = _swiftEmptyArrayStorage;
        v52 = (v49 + 40);
        do
        {
          v53 = *(v52 - 1);
          v54 = *v52;
          sub_10000B8B8(v53, *v52);
          v55 = Data.base16EncodedString()();
          sub_10000B90C(v53, v54);
          v127 = v51;
          v57 = v51[2];
          v56 = v51[3];
          if (v57 >= v56 >> 1)
          {
            sub_100172D4C((v56 > 1), v57 + 1, 1);
            v51 = v127;
          }

          v52 += 2;
          v51[2] = v57 + 1;
          *&v51[2 * v57 + 4] = v55;
          --v50;
        }

        while (v50);
      }

      v86 = *(v0 + 248);
      v121 = *(v0 + 256);
      v116 = *(v0 + 352);
      v119 = *(v0 + 240);
      v88 = *(v0 + 192);
      v87 = *(v0 + 200);
      v89 = *(v0 + 184);
      v90 = Array.description.getter();
      v92 = v91;

      v93._countAndFlagsBits = v90;
      v93._object = v92;
      String.append(_:)(v93);

      (*(v88 + 104))(v87, enum case for DIPError.Code.documentReaderDocSignerMissingOID(_:), v89);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      (*(v86 + 8))(v121, v119);
      goto LABEL_64;
    }
  }

  else
  {
    v59 = *(v0 + 320);
    v60 = *(v0 + 224);
    v61 = *(v0 + 208);
    v62 = *(v0 + 152);
    defaultLogger()();
    v59(v60, v62, v61);
    v63 = Logger.logObject.getter();
    v124 = static os_log_type_t.debug.getter();
    v64 = os_log_type_enabled(v63, v124);
    v65 = *(v0 + 304);
    v66 = *(v0 + 288);
    v125 = *(v0 + 264);
    v68 = *(v0 + 216);
    v67 = *(v0 + 224);
    v69 = *(v0 + 208);
    if (v64)
    {
      v123 = *(v0 + 288);
      v70 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v126[0] = v115;
      *v70 = 136315138;
      v118 = v65;
      v71 = v63;
      v72 = ISO18013KnownDocTypes.rawValue.getter();
      v74 = v73;
      (*(v68 + 8))(v67, v69);
      v75 = sub_100141FE4(v72, v74, v126);

      *(v70 + 4) = v75;
      _os_log_impl(&_mh_execute_header, v71, v124, "No document signer OID defined for %s.", v70, 0xCu);
      sub_10000BB78(v115);

      v118(v123, v125);
    }

    else
    {

      (*(v68 + 8))(v67, v69);
      v65(v66, v125);
    }
  }

  defaultLogger()();
  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    *v78 = 0;
    _os_log_impl(&_mh_execute_header, v76, v77, "ISO18013IssuerAuthenticator successfully validated document signer certificate chain.", v78, 2u);
  }

  v79 = *(v0 + 352);
  v80 = *(v0 + 304);
  v81 = *(v0 + 280);
  v82 = *(v0 + 264);
  v110 = *(v0 + 256);
  v83 = *(v0 + 248);
  v109 = *(v0 + 240);

  v80(v81, v82);
  v84 = SecTrustRef.certificateChain.getter();

  (*(v83 + 8))(v110, v109);

  v85 = *(v0 + 8);

  return v85(v84);
}

uint64_t sub_1003648F4()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  sub_10000BB78(v0 + 2);
  swift_getErrorValue();
  Error.dipErrorCode.getter();
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v4 = v0[23];
    v5 = v0[24];
    v6 = v0[21];
    sub_100044D38(v0[22], v6);
    if ((*(v5 + 88))(v6, v4) == enum case for DIPError.Code.untrustedCertificate(_:))
    {
      v7 = v0[31];
      v20 = v0[30];
      v21 = v0[32];
      v22 = v0[22];
      (*(v0[24] + 104))(v0[25], enum case for DIPError.Code.documentReaderUntrustedIssuer(_:), v0[23]);
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      goto LABEL_6;
    }

    (*(v0[24] + 8))(v0[21], v0[23]);
  }

  v7 = v0[31];
  v20 = v0[30];
  v21 = v0[32];
  v22 = v0[22];
  (*(v0[24] + 104))(v0[25], enum case for DIPError.Code.documentReaderFailedToVerifyIssuerChain(_:), v0[23]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
LABEL_6:
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v7 + 8))(v21, v20);
  sub_10000BE18(v22, &qword_10083B020, &unk_1006D8ED0);
  v9 = v0[24];
  v8 = v0[25];
  v19 = v0[23];
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v10 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1006BF520;
  v13 = (v12 + v11 + v10[14]);
  v14 = enum case for DIPError.PropertyKey.issuerCertificateChain(_:);
  v15 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v15 - 8) + 104))(v12 + v11, v14, v15);
  v16 = v0[13];
  v13[3] = sub_100007224(&qword_10083B4C8, &unk_1006D98C0);
  v13[4] = sub_1000BA30C(&qword_100841DD0, &qword_10083B4C8, &unk_1006D98C0, &protocol conformance descriptor for [A]);
  *v13 = v16;
  swift_errorRetain();

  sub_10003C9C0(v12);
  swift_setDeallocating();
  sub_10000BE18(v12 + v11, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  (*(v9 + 104))(v8, enum case for DIPError.Code.internalError(_:), v19);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t sub_100364F04(uint64_t *a1)
{
  _StringGuts.grow(_:)(54);
  v1._object = 0x80000001007109C0;
  v1._countAndFlagsBits = 0xD000000000000034;
  String.append(_:)(v1);
  type metadata accessor for SecCertificate(0);

  Array<A>.base64EncodedStrings.getter();

  v2 = Array.description.getter();
  v4 = v3;

  v5._countAndFlagsBits = v2;
  v5._object = v4;
  String.append(_:)(v5);

  return 0;
}

void *sub_100364FD8()
{
  v1 = v0;
  v2 = type metadata accessor for ISO18013KnownDocTypes();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for ISO18013KnownDocTypes.iso18013_5_1_mDL(_:))
  {
    sub_100007224(&qword_10083C068, &qword_1006DEC10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1006BF520;
    v8 = &off_1007FBB20;
LABEL_5:
    *(inited + 32) = sub_10034C158(v8);
    *(inited + 40) = v9;
    v10 = sub_1003A9888(inited);
    swift_setDeallocating();
    sub_100366828(inited + 32);
    return v10;
  }

  if (v6 == enum case for ISO18013KnownDocTypes.japanNationalIDCard(_:))
  {
    sub_100007224(&qword_10083C068, &qword_1006DEC10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1006BF520;
    v8 = &off_1007FBB48;
    goto LABEL_5;
  }

  if (v6 != enum case for ISO18013KnownDocTypes.photoID(_:))
  {
    (*(v3 + 8))(v5, v2);
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_1003651B8()
{
  sub_10000BB78(v0 + 14);
  sub_10000BB78(v0 + 19);
  sub_10000BB78(v0 + 24);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

void *sub_10036522C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
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

    v8 = sub_100365EEC(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1003652BC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = a2;
  v4 = 0;
  v76 = *(a1 + 16);
  v77 = a1 + 32;
  v5 = a2 + 56;
  v82 = a2 + 56;
  while (1)
  {
    if (!*(v3 + 16))
    {
      goto LABEL_5;
    }

    v80 = v4;
    v6 = (v77 + 16 * v4);
    v8 = *v6;
    v7 = v6[1];
    Hasher.init(_seed:)();
    sub_10000B8B8(v8, v7);
    Data.hash(into:)();
    v9 = Hasher._finalize()();
    v10 = -1 << *(v3 + 32);
    v11 = v9 & ~v10;
    if ((*(v5 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
    {
      break;
    }

LABEL_4:
    sub_10000B90C(v8, v7);
    v2 = v76;
    v4 = v80;
LABEL_5:
    if (++v4 == v2)
    {
      return 1;
    }
  }

  v12 = ~v10;
  v13 = v7 >> 62;
  if (v8)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7 == 0xC000000000000000;
  }

  v15 = !v14;
  v84 = v15;
  v16 = __OFSUB__(HIDWORD(v8), v8);
  v81 = v16;
  v78 = (v8 >> 32) - v8;
  v79 = v8 >> 32;
  v83 = v12;
  while (1)
  {
    v17 = (*(v3 + 48) + 16 * v11);
    v19 = *v17;
    v18 = v17[1];
    v20 = v18 >> 62;
    if (v18 >> 62 == 3)
    {
      if (v19)
      {
        v21 = 0;
      }

      else
      {
        v21 = v18 == 0xC000000000000000;
      }

      v23 = !v21 || v7 >> 62 != 3;
      if (((v23 | v84) & 1) == 0)
      {
        v67 = 0;
        v68 = 0xC000000000000000;
LABEL_150:
        sub_10000B90C(v67, v68);
        return 0;
      }

LABEL_42:
      v24 = 0;
      if (v13 <= 1)
      {
        goto LABEL_39;
      }

      goto LABEL_43;
    }

    if (v20 > 1)
    {
      if (v20 != 2)
      {
        goto LABEL_42;
      }

      v26 = *(v19 + 16);
      v25 = *(v19 + 24);
      v27 = __OFSUB__(v25, v26);
      v24 = v25 - v26;
      if (v27)
      {
        goto LABEL_152;
      }

      if (v13 <= 1)
      {
        goto LABEL_39;
      }
    }

    else if (v20)
    {
      LODWORD(v24) = HIDWORD(v19) - v19;
      if (__OFSUB__(HIDWORD(v19), v19))
      {
        goto LABEL_153;
      }

      v24 = v24;
      if (v13 <= 1)
      {
LABEL_39:
        v28 = BYTE6(v7);
        if (v13)
        {
          v28 = HIDWORD(v8) - v8;
          if (v81)
          {
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
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
          }
        }

        goto LABEL_45;
      }
    }

    else
    {
      v24 = BYTE6(v18);
      if (v13 <= 1)
      {
        goto LABEL_39;
      }
    }

LABEL_43:
    if (v13 != 2)
    {
      if (!v24)
      {
        goto LABEL_149;
      }

      goto LABEL_19;
    }

    v30 = *(v8 + 16);
    v29 = *(v8 + 24);
    v27 = __OFSUB__(v29, v30);
    v28 = v29 - v30;
    if (v27)
    {
      goto LABEL_151;
    }

LABEL_45:
    if (v24 != v28)
    {
      goto LABEL_19;
    }

    if (v24 < 1)
    {
      goto LABEL_149;
    }

    if (v20 > 1)
    {
      if (v20 != 2)
      {
        *&__s1[6] = 0;
        *__s1 = 0;
        if (!v13)
        {
LABEL_98:
          __s2 = v8;
          v86 = v7;
          v87 = BYTE2(v7);
          v88 = BYTE3(v7);
          v89 = BYTE4(v7);
          v90 = BYTE5(v7);
          if (!memcmp(__s1, &__s2, BYTE6(v7)))
          {
            goto LABEL_149;
          }

          goto LABEL_19;
        }

        if (v13 == 2)
        {
          v45 = *(v8 + 16);
          v71 = *(v8 + 24);
          sub_10000B8B8(v19, v18);
          v46 = __DataStorage._bytes.getter();
          if (v46)
          {
            v47 = __DataStorage._offset.getter();
            if (__OFSUB__(v45, v47))
            {
              goto LABEL_167;
            }

            v46 += v45 - v47;
          }

          v27 = __OFSUB__(v71, v45);
          v48 = v71 - v45;
          if (v27)
          {
            goto LABEL_160;
          }

          result = __DataStorage._length.getter();
          if (!v46)
          {
            goto LABEL_177;
          }

          goto LABEL_105;
        }

        if (v79 < v8)
        {
          goto LABEL_157;
        }

        sub_10000B8B8(v19, v18);
        v52 = __DataStorage._bytes.getter();
        if (!v52)
        {
          goto LABEL_178;
        }

        v53 = v52;
        v54 = __DataStorage._offset.getter();
        if (__OFSUB__(v8, v54))
        {
          goto LABEL_163;
        }

        v34 = (v8 - v54 + v53);
        result = __DataStorage._length.getter();
        if (!v34)
        {
          goto LABEL_179;
        }

        goto LABEL_113;
      }

      v36 = *(v19 + 16);
      sub_10000B8B8(v19, v18);
      v37 = __DataStorage._bytes.getter();
      if (v37)
      {
        v38 = __DataStorage._offset.getter();
        if (__OFSUB__(v36, v38))
        {
          goto LABEL_155;
        }

        v37 += v36 - v38;
      }

      __DataStorage._length.getter();
      v12 = v83;
      if (v13 != 2)
      {
        if (v13 == 1)
        {
          if (v79 < v8)
          {
            goto LABEL_161;
          }

          v39 = __DataStorage._bytes.getter();
          if (v39)
          {
            v40 = __DataStorage._offset.getter();
            if (__OFSUB__(v8, v40))
            {
              goto LABEL_171;
            }

            v39 += v8 - v40;
          }

          result = __DataStorage._length.getter();
          v41 = (v8 >> 32) - v8;
          if (result < v78)
          {
            v41 = result;
          }

          if (!v37)
          {
            goto LABEL_184;
          }

          if (!v39)
          {
            goto LABEL_183;
          }

LABEL_88:
          if (v37 == v39)
          {
            goto LABEL_148;
          }

          v44 = v41;
          result = v37;
LABEL_140:
          v51 = v39;
          goto LABEL_141;
        }

        *__s1 = v8;
        *&__s1[8] = v7;
        __s1[10] = BYTE2(v7);
        __s1[11] = BYTE3(v7);
        __s1[12] = BYTE4(v7);
        __s1[13] = BYTE5(v7);
        if (!v37)
        {
          goto LABEL_174;
        }

LABEL_144:
        v57 = __s1;
        v56 = v37;
        v55 = BYTE6(v7);
        goto LABEL_145;
      }

      v69 = v37;
      v58 = *(v8 + 16);
      v73 = *(v8 + 24);
      v39 = __DataStorage._bytes.getter();
      if (v39)
      {
        v59 = __DataStorage._offset.getter();
        if (__OFSUB__(v58, v59))
        {
          goto LABEL_169;
        }

        v39 += v58 - v59;
      }

      if (__OFSUB__(v73, v58))
      {
        goto LABEL_164;
      }

      v60 = __DataStorage._length.getter();
      if (v60 >= v73 - v58)
      {
        v61 = v73 - v58;
      }

      else
      {
        v61 = v60;
      }

      result = v69;
      if (!v69)
      {
        goto LABEL_182;
      }

      v3 = a2;
      if (!v39)
      {
        goto LABEL_181;
      }

LABEL_138:
      if (result == v39)
      {
LABEL_148:
        sub_10000B90C(v19, v18);
LABEL_149:
        v67 = v8;
        v68 = v7;
        goto LABEL_150;
      }

      v44 = v61;
      goto LABEL_140;
    }

    if (v20)
    {
      if (v19 > v19 >> 32)
      {
        goto LABEL_154;
      }

      sub_10000B8B8(v19, v18);
      v37 = __DataStorage._bytes.getter();
      if (v37)
      {
        v42 = __DataStorage._offset.getter();
        if (__OFSUB__(v19, v42))
        {
          goto LABEL_156;
        }

        v37 += v19 - v42;
      }

      __DataStorage._length.getter();
      v12 = v83;
      if (v13 != 2)
      {
        if (v13 == 1)
        {
          if (v79 < v8)
          {
            goto LABEL_165;
          }

          v39 = __DataStorage._bytes.getter();
          if (v39)
          {
            v43 = __DataStorage._offset.getter();
            if (__OFSUB__(v8, v43))
            {
              goto LABEL_172;
            }

            v39 += v8 - v43;
          }

          result = __DataStorage._length.getter();
          v41 = (v8 >> 32) - v8;
          if (result < v78)
          {
            v41 = result;
          }

          if (!v37)
          {
            goto LABEL_186;
          }

          if (!v39)
          {
            goto LABEL_185;
          }

          goto LABEL_88;
        }

        *__s1 = v8;
        *&__s1[8] = v7;
        __s1[10] = BYTE2(v7);
        __s1[11] = BYTE3(v7);
        __s1[12] = BYTE4(v7);
        __s1[13] = BYTE5(v7);
        if (!v37)
        {
          goto LABEL_175;
        }

        goto LABEL_144;
      }

      v70 = v37;
      v62 = *(v8 + 16);
      v74 = *(v8 + 24);
      v39 = __DataStorage._bytes.getter();
      if (v39)
      {
        v63 = __DataStorage._offset.getter();
        if (__OFSUB__(v62, v63))
        {
          goto LABEL_170;
        }

        v39 += v62 - v63;
      }

      if (__OFSUB__(v74, v62))
      {
        goto LABEL_166;
      }

      v64 = __DataStorage._length.getter();
      if (v64 >= v74 - v62)
      {
        v61 = v74 - v62;
      }

      else
      {
        v61 = v64;
      }

      result = v70;
      if (!v70)
      {
        goto LABEL_188;
      }

      v3 = a2;
      if (!v39)
      {
        goto LABEL_187;
      }

      goto LABEL_138;
    }

    *__s1 = v19;
    *&__s1[8] = v18;
    __s1[10] = BYTE2(v18);
    __s1[11] = BYTE3(v18);
    __s1[12] = BYTE4(v18);
    __s1[13] = BYTE5(v18);
    if (!v13)
    {
      goto LABEL_98;
    }

    if (v13 != 1)
    {
      v49 = *(v8 + 16);
      v72 = *(v8 + 24);
      sub_10000B8B8(v19, v18);
      v46 = __DataStorage._bytes.getter();
      if (v46)
      {
        v50 = __DataStorage._offset.getter();
        if (__OFSUB__(v49, v50))
        {
          goto LABEL_168;
        }

        v46 += v49 - v50;
      }

      v27 = __OFSUB__(v72, v49);
      v48 = v72 - v49;
      if (v27)
      {
        goto LABEL_159;
      }

      result = __DataStorage._length.getter();
      if (!v46)
      {
        goto LABEL_180;
      }

LABEL_105:
      if (result >= v48)
      {
        v44 = v48;
      }

      else
      {
        v44 = result;
      }

      result = __s1;
      v51 = v46;
LABEL_141:
      v65 = memcmp(result, v51, v44);
      sub_10000B90C(v19, v18);
      v5 = v82;
      v12 = v83;
      if (!v65)
      {
        goto LABEL_149;
      }

      goto LABEL_19;
    }

    if (v79 < v8)
    {
      goto LABEL_158;
    }

    sub_10000B8B8(v19, v18);
    v31 = __DataStorage._bytes.getter();
    if (!v31)
    {
      break;
    }

    v32 = v31;
    v33 = __DataStorage._offset.getter();
    if (__OFSUB__(v8, v33))
    {
      goto LABEL_162;
    }

    v34 = (v8 - v33 + v32);
    result = __DataStorage._length.getter();
    if (!v34)
    {
      goto LABEL_176;
    }

LABEL_113:
    if (result >= v78)
    {
      v55 = (v8 >> 32) - v8;
    }

    else
    {
      v55 = result;
    }

    v56 = __s1;
    v57 = v34;
LABEL_145:
    v66 = memcmp(v56, v57, v55);
    sub_10000B90C(v19, v18);
    v5 = v82;
    if (!v66)
    {
      goto LABEL_149;
    }

LABEL_19:
    v11 = (v11 + 1) & v12;
    if (((*(v5 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  __DataStorage._length.getter();
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  result = __DataStorage._length.getter();
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
  return result;
}

void *sub_100365C04(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v32 = a1;
  v6 = *(a3 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v28 = v7;
    v34 = v4;
    v30 = &v27;
    __chkstk_darwin(a1);
    v29 = &v27 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v29, v8);
    v31 = 0;
    v9 = 0;
    v10 = 1 << *(a3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a3 + 56);
    v13 = (v10 + 63) >> 6;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v33 = (v12 - 1) & v12;
LABEL_12:
      v7 = a3;
      v17 = v14 | (v9 << 6);
      v18 = (*(a3 + 48) + 24 * v17);
      v19 = v18[1];
      v20 = v18[2];
      v35 = *v18;
      v36 = v19;
      v37 = v20;
      sub_10000B8B8(v35, v19);

      v21 = v34;
      v22 = v32(&v35);
      v4 = v21;
      sub_10000B90C(v35, v36);
      v34 = v21;
      if (v21)
      {

        return swift_willThrow();
      }

      v12 = v33;
      if (v22)
      {
        *&v29[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
        if (__OFADD__(v31++, 1))
        {
          __break(1u);
          return sub_1003D470C(v29, v28, v31, a3);
        }
      }
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v13)
      {
        return sub_1003D470C(v29, v28, v31, a3);
      }

      v16 = *(a3 + 56 + 8 * v9);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v33 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v25 = swift_slowAlloc();
  v26 = sub_10036522C(v25, v7, a3, v32);

  if (!v4)
  {
    return v26;
  }

  return result;
}

unint64_t sub_100365EEC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  v28 = a3;
  v23 = 0;
  v22 = result;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v28 + 48) + 24 * v14);
    v16 = v15[1];
    v17 = v15[2];
    v25 = *v15;
    v26 = v16;
    v27 = v17;
    sub_10000B8B8(v25, v16);

    v18 = a4(&v25);
    sub_10000B90C(v25, v26);

    if (v4)
    {
      return result;
    }

    if (v18)
    {
      *(v22 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_16:
        v20 = v28;

        return sub_1003D470C(v22, a2, v23, v20);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100366084(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = ISO18013KnownDocTypes.rawValue.getter();
  LOBYTE(v1) = sub_1006932A8(v2, v3, v1);

  return v1 & 1;
}

void sub_1003660D8(unint64_t a1, uint64_t a2)
{
  v62 = type metadata accessor for DIPError.Code();
  v60 = *(v62 - 8);
  __chkstk_darwin(v62);
  v61 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for Logger();
  v5 = *(v65 - 8);
  v6 = __chkstk_darwin(v65);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v56 - v10;
  v12 = __chkstk_darwin(v9);
  countAndFlagsBits = &v56 - v13;
  v14 = __chkstk_darwin(v12);
  v63 = &v56 - v15;
  __chkstk_darwin(v14);
  v17 = &v56 - v16;
  defaultLogger()();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "ISO18013IssuerAuthenticator performing revocation check against provided issuer revocation list.", v20, 2u);
  }

  v23 = *(v5 + 8);
  v22 = v5 + 8;
  v21 = v23;
  v23(v17, v65);
  if (!a2)
  {
    defaultLogger()();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "ISO18013IssuerAuthenticator issuer revocation list is missing. Skipping manual revocation check.", v35, 2u);
    }

    v36 = v8;
    goto LABEL_38;
  }

  if (!(a1 >> 62))
  {
    v24 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
      goto LABEL_6;
    }

    goto LABEL_35;
  }

LABEL_34:
  v24 = _CocoaArrayWrapper.endIndex.getter();
  if (!v24)
  {
LABEL_35:
    defaultLogger()();
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v53, v54, "ISO18013IssuerAuthenticator rootCertificate is missing. Skipping manual revocation check.", v55, 2u);
    }

    v36 = v11;
LABEL_38:
    v21(v36, v65);
    return;
  }

LABEL_6:
  v25 = v24 - 1;
  if (__OFSUB__(v24, 1))
  {
    __break(1u);
  }

  else
  {
    v57 = v21;
    v58 = v22;
    v19 = a1 & 0xC000000000000001;
    if ((a1 & 0xC000000000000001) == 0)
    {
      if ((v25 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v22 = a1 & 0xFFFFFFFFFFFFFF8;
        if (v25 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v11 = *(a1 + 8 * v25 + 32);
          goto LABEL_11;
        }
      }

      __break(1u);
      return;
    }
  }

  v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v22 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_11:
  for (i = 0; ; ++i)
  {
    if (v19)
    {
      v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *(v22 + 16))
      {
        goto LABEL_33;
      }

      v27 = *(a1 + 8 * i + 32);
    }

    v21 = v27;
    v28 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (sub_100344278(v27, v11, a2))
    {
      break;
    }

    if (v28 == v24)
    {
      v29 = countAndFlagsBits;
      defaultLogger()();
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "ISO18013IssuerAuthenticator issuerRevocationList does not contain the existing certificate chain. Continuing.", v32, 2u);
      }

      v57(v29, v65);
      return;
    }
  }

  v37 = v63;
  defaultLogger()();
  v38 = v21;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();

  v41 = os_log_type_enabled(v39, v40);
  v64 = v38;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v66 = v43;
    *v42 = 136315138;
    v44 = SecCertificateRef.serialNumber.getter();
    if (v45 >> 60 == 15)
    {
      object = 0xE300000000000000;
      v47 = 7104878;
    }

    else
    {
      v49 = v44;
      v50 = v45;
      v51 = Data.base16EncodedString()();
      countAndFlagsBits = v51._countAndFlagsBits;
      object = v51._object;
      sub_10000BD94(v49, v50);
      v47 = countAndFlagsBits;
    }

    v48 = v62;
    v52 = sub_100141FE4(v47, object, &v66);

    *(v42 + 4) = v52;
    _os_log_impl(&_mh_execute_header, v39, v40, "ISO18103IssuerAuthenticator received revoked serial number %s", v42, 0xCu);
    sub_10000BB78(v43);

    v57(v63, v65);
  }

  else
  {

    v57(v37, v65);
    v48 = v62;
  }

  (*(v60 + 104))(v61, enum case for DIPError.Code.documentReaderCertificateRevoked(_:), v48);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
}

void *sub_1003668D4(void (*a1)(void *__return_ptr, char *, uint64_t *), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = v4;
  v46 = a1;
  v47 = a2;
  v7 = a4(0);
  __chkstk_darwin(v7);
  v10 = &v38 - v9;
  v11 = *(a3 + 16);
  result = _swiftEmptyArrayStorage;
  if (v11)
  {
    v57 = _swiftEmptyArrayStorage;
    v13 = v8;
    sub_1001732E0(0, v11, 0);
    v51 = a3 + 56;
    *&v52 = v57;
    result = _HashTable.startBucket.getter();
    v14 = v13;
    v15 = result;
    v16 = 0;
    v44 = v13 + 16;
    v45 = (v13 + 8);
    v38 = a3 + 64;
    v42 = v7;
    v43 = a3;
    v40 = v10;
    v41 = v13;
    v39 = v11;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(a3 + 32))
    {
      v19 = v15 >> 6;
      if ((*(v51 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_25;
      }

      v20 = *(a3 + 36);
      v49 = v16;
      v50 = v20;
      (*(v14 + 16))(v10, *(a3 + 48) + *(v14 + 72) * v15, v7);
      v46(v54, v10, &v53);
      if (v5)
      {
        (*v45)(v10, v7);
      }

      v48 = 0;
      result = (*v45)(v10, v7);
      v21 = v54[0];
      v22 = v54[1];
      v23 = v55;
      v24 = v56;
      v25 = v52;
      v57 = v52;
      v27 = *(v52 + 16);
      v26 = *(v52 + 24);
      if (v27 >= v26 >> 1)
      {
        v52 = v55;
        result = sub_1001732E0((v26 > 1), v27 + 1, 1);
        v23 = v52;
        v25 = v57;
      }

      v25[2] = v27 + 1;
      v28 = &v25[5 * v27];
      v28[4] = v21;
      v28[5] = v22;
      *(v28 + 3) = v23;
      v28[8] = v24;
      a3 = v43;
      v17 = 1 << *(v43 + 32);
      if (v15 >= v17)
      {
        goto LABEL_26;
      }

      v29 = *(v51 + 8 * v19);
      if ((v29 & (1 << v15)) == 0)
      {
        goto LABEL_27;
      }

      *&v52 = v25;
      if (v50 != *(v43 + 36))
      {
        goto LABEL_28;
      }

      v30 = v29 & (-2 << (v15 & 0x3F));
      if (v30)
      {
        v17 = __clz(__rbit64(v30)) | v15 & 0x7FFFFFFFFFFFFFC0;
        v14 = v41;
        v7 = v42;
        v10 = v40;
        v18 = v49;
      }

      else
      {
        v31 = v19 << 6;
        v32 = v19 + 1;
        v33 = (v38 + 8 * v19);
        v7 = v42;
        v10 = v40;
        while (v32 < (v17 + 63) >> 6)
        {
          v35 = *v33++;
          v34 = v35;
          v31 += 64;
          ++v32;
          if (v35)
          {
            v36 = v41;
            result = sub_100316220(v15, v50, 0);
            v14 = v36;
            v17 = __clz(__rbit64(v34)) + v31;
            goto LABEL_20;
          }
        }

        v37 = v41;
        result = sub_100316220(v15, v50, 0);
        v14 = v37;
LABEL_20:
        v18 = v49;
      }

      v16 = v18 + 1;
      v15 = v17;
      v5 = v48;
      if (v16 == v39)
      {
        return v52;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  return result;
}

void *sub_100366C74(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v19 = type metadata accessor for ISO18013ReaderAuthentication();
  v6 = *(v19 - 8);
  __chkstk_darwin(v19);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (!v9)
  {
    return v10;
  }

  v22 = _swiftEmptyArrayStorage;
  sub_100173384(0, v9, 0);
  v10 = v22;
  v11 = *(type metadata accessor for ISO18013ReaderRequest.DocRequest() - 8);
  v12 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v18 = v6 + 32;
  v17 = *(v11 + 72);
  while (1)
  {
    v20(v12);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v10;
    v14 = v10[2];
    v13 = v10[3];
    if (v14 >= v13 >> 1)
    {
      sub_100173384((v13 > 1), v14 + 1, 1);
      v10 = v22;
    }

    v10[2] = v14 + 1;
    (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v8, v19);
    v12 += v17;
    if (!--v9)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

void *sub_100366E78(void (*a1)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_100173490(0, v5, 0);
    v6 = _swiftEmptyArrayStorage;
    for (i = (a3 + 32); ; ++i)
    {
      v15 = *i;

      a1(&v16, &v15, &v14);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v10 = v16;
      v17 = v6;
      v12 = v6[2];
      v11 = v6[3];
      if (v12 >= v11 >> 1)
      {
        sub_100173490((v11 > 1), v12 + 1, 1);
        v6 = v17;
      }

      v6[2] = v12 + 1;
      v6[v12 + 4] = v10;
      if (!--v5)
      {
        return v6;
      }
    }
  }

  return v6;
}

uint64_t sub_100366FA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v209 = a3;
  v224 = a5;
  v221 = a6;
  v190 = a2;
  v222 = a1;
  v175 = a8;
  v202 = type metadata accessor for DIPError.Code();
  v201 = *(v202 - 8);
  __chkstk_darwin(v202);
  v203 = &v169 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100007224(&qword_10083F168, &unk_1006DEC40);
  __chkstk_darwin(v11 - 8);
  v217 = &v169 - v12;
  v13 = sub_100007224(&qword_100841E30, &qword_1006DEC98);
  v14 = __chkstk_darwin(v13 - 8);
  v193 = &v169 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v200 = &v169 - v16;
  v218 = type metadata accessor for ISO18013ReaderRequest.ItemsRequest();
  v17 = __chkstk_darwin(v218);
  v197 = &v169 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v199 = &v169 - v19;
  v20 = sub_100007224(&qword_10083C078, &unk_1006E4F40);
  v21 = __chkstk_darwin(v20 - 8);
  v196 = &v169 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v198 = &v169 - v23;
  v216 = type metadata accessor for ISO18013ReaderRequest.DocRequest();
  *&v219 = *(v216 - 8);
  v24 = __chkstk_darwin(v216);
  v194 = &v169 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v195 = &v169 - v26;
  v174 = type metadata accessor for ISO18013ReaderRequest.DeviceRequestInfo();
  __chkstk_darwin(v174);
  v172 = &v169 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100007224(&qword_100841DF8, &qword_1006DEC50);
  v29 = __chkstk_darwin(v28 - 8);
  v171 = &v169 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v173 = &v169 - v31;
  v186 = type metadata accessor for ISO18013Version();
  v185 = *(v186 - 8);
  v32 = __chkstk_darwin(v186);
  v181 = &v169 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v179 = &v169 - v35;
  v36 = __chkstk_darwin(v34);
  v184 = &v169 - v37;
  v38 = __chkstk_darwin(v36);
  v182 = &v169 - v39;
  v40 = __chkstk_darwin(v38);
  v178 = &v169 - v41;
  __chkstk_darwin(v40);
  v183 = &v169 - v42;
  v189 = sub_100007224(&qword_100841E38, &qword_1006DECA0);
  v188 = *(v189 - 8);
  __chkstk_darwin(v189);
  v187 = &v169 - v43;
  v214 = type metadata accessor for MobileDocumentRequestType();
  v208 = *(v214 - 8);
  v44 = __chkstk_darwin(v214);
  v177 = &v169 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __chkstk_darwin(v44);
  v176 = &v169 - v47;
  __chkstk_darwin(v46);
  v207 = &v169 - v48;
  v49 = type metadata accessor for MobileDocumentReaderRequest();
  v50 = *(v49 - 8);
  v51 = __chkstk_darwin(v49);
  v192 = &v169 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v54 = &v169 - v53;
  v55 = type metadata accessor for Logger();
  v211 = *(v55 - 8);
  v212 = v55;
  __chkstk_darwin(v55);
  v57 = &v169 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for DIPSignpost.Config();
  __chkstk_darwin(v58 - 8);
  v206 = type metadata accessor for DIPSignpost();
  v205 = *(v206 - 8);
  __chkstk_darwin(v206);
  v60 = &v169 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DaemonSignposts.MobileDocumentReader.buildRequest.getter();
  v204 = v60;
  v61 = a7;
  DIPSignpost.init(_:)();
  defaultLogger()();
  v62 = *(v50 + 16);
  v213 = v49;
  v62(v54, v222, v49);
  v63 = a4;
  v64 = a4;
  v65 = v224;
  sub_1000363B4(v64, v224);
  v66 = v221;
  sub_1000363B4(v221, v61);
  v215 = v63;
  sub_1000363B4(v63, v65);
  sub_1000363B4(v66, v61);
  v67 = Logger.logObject.getter();
  v191 = static os_log_type_t.debug.getter();
  v68 = os_log_type_enabled(v67, v191);
  v220 = v61;
  if (!v68)
  {
    v86 = v66;
    sub_10000BD94(v66, v61);
    v87 = v215;
    v88 = v224;
    sub_10000BD94(v215, v224);

    sub_10000BD94(v86, v61);
    sub_10000BD94(v87, v88);
    (*(v50 + 8))(v54, v213);
    (*(v211 + 8))(v57, v212);
    v84 = v223;
    v82 = v61;
LABEL_8:
    v89 = v207;
    MobileDocumentReaderRequest.documentRequestType.getter();
    v90 = v210;
    v91 = sub_1003CEFE4(v209, *(v84 + 40));
    if (v90)
    {
      (*(v208 + 8))(v89, v214);
LABEL_11:
      (*(v201 + 104))(v203, enum case for DIPError.Code.documentReaderCannotBuildRequest(_:), v202);
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10036E5FC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

LABEL_12:
      v97 = v204;
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      return (*(v205 + 8))(v97, v206);
    }

    v92 = v91;
    v212 = *(v208 + 8);
    v212(v89, v214);
    v227 = v92;
    swift_getKeyPath();
    v93 = v187;
    KeyPathComparator.init<A>(_:order:)();
    sub_100007224(&qword_100841E40, &qword_1006DECC8);
    sub_1000BA30C(&qword_100841E48, &qword_100841E40, &qword_1006DECC8, &protocol conformance descriptor for Set<A>);
    sub_1000BA30C(&qword_100841E50, &qword_100841E38, &qword_1006DECA0, &protocol conformance descriptor for KeyPathComparator<A>);
    v94 = v189;
    v95 = Sequence.sorted<A>(using:)();
    (*(v188 + 8))(v93, v94);

    v96 = sub_100368D8C(v190);
    v223 = 0;
    v213 = v95;
    if (v96 > 1u)
    {
      v101 = v193;
      v102 = v214;
      v103 = v212;
      if (v96 != 2)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v101 = v193;
      v102 = v214;
      v103 = v212;
      if (v96)
      {
LABEL_21:
        v104 = v176;
        MobileDocumentReaderRequest.documentRequestType.getter();
        LODWORD(v208) = MobileDocumentRequestType.isDisplayOnly.getter();
        v103(v104, v102);
        v105 = v178;
        static ISO18013ReaderRequest.supportedVersionSecondEdition.getter();
        v106 = v185;
        v107 = v183;
        v108 = v105;
        v109 = v186;
        (*(v185 + 32))(v183, v108, v186);
        (*(v106 + 16))(v182, v107, v109);
        v110 = *(v95 + 16);
        v111 = _swiftEmptyArrayStorage;
        if (v110)
        {
          v227 = _swiftEmptyArrayStorage;
          result = sub_100172E0C(0, v110, 0);
          v112 = 0;
          v209 = v219 + 32;
          v210 = v110;
          v111 = v227;
          v113 = v95 + 64;
          while (v112 < *(v95 + 16))
          {
            v222 = v111;
            v115 = *(v113 - 32);
            v114 = *(v113 - 24);
            v211 = v112;
            v212 = v114;
            v116 = *(v113 - 8);
            v226 = v115;
            swift_bridgeObjectRetain_n();
            swift_bridgeObjectRetain_n();
            v214 = v115;

            sub_100007224(&qword_10083BCA8, &qword_1006DA1E8);
            sub_1000BA30C(&qword_100841E70, &qword_10083BCA8, &qword_1006DA1E8, &protocol conformance descriptor for [A]);
            Collection.nilIfEmpty.getter();
            v225 = v116;
            sub_100007224(&qword_10083C160, &qword_1006DECE0);
            sub_1000BA30C(&qword_100841E78, &qword_10083C160, &qword_1006DECE0, &protocol conformance descriptor for [A]);
            Collection.nilIfEmpty.getter();
            v117 = v200;
            ISO18013ReaderRequest.DocRequestInfo.init(alternativeDataElements:issuerIdentifiers:maximumResponseSize:uniqueDocSetRequired:externalData:interpretWillNotRetainIntentAsDisplayOnly:logotypeIconData:)();
            v118 = type metadata accessor for ISO18013ReaderRequest.DocRequestInfo();
            (*(*(v118 - 8) + 56))(v117, 0, 1, v118);
            ISO18013ReaderRequest.ItemsRequest.init(docType:namespaces:requestInfo:)();
            type metadata accessor for CBOREncoder();
            swift_allocObject();
            CBOREncoder.init()();
            sub_10036E5FC(&qword_100841E58, &type metadata accessor for ISO18013ReaderRequest.ItemsRequest, &protocol conformance descriptor for ISO18013ReaderRequest.ItemsRequest);
            sub_10036E5FC(&qword_100841E60, &type metadata accessor for ISO18013ReaderRequest.ItemsRequest, &protocol conformance descriptor for ISO18013ReaderRequest.ItemsRequest);
            v119 = v223;
            CBOREncodedCBOR.init(value:tag:encoder:)();
            v223 = v119;
            if (v119)
            {

              v163 = *(v185 + 8);
              v164 = v186;
              v163(v182, v186);
              v163(v183, v164);
              goto LABEL_69;
            }

            v120 = type metadata accessor for COSE_Sign1();
            (*(*(v120 - 8) + 56))(v217, 1, 1, v120);
            v121 = v195;
            ISO18013ReaderRequest.DocRequest.init(itemsRequest:readerAuth:)();

            v111 = v222;
            v227 = v222;
            v123 = v222[2];
            v122 = v222[3];
            if (v123 >= v122 >> 1)
            {
              sub_100172E0C((v122 > 1), v123 + 1, 1);
              v111 = v227;
            }

            v112 = v211 + 1;
            v111[2] = v123 + 1;
            result = (*(v219 + 32))(v111 + ((*(v219 + 80) + 32) & ~*(v219 + 80)) + *(v219 + 72) * v123, v121, v216);
            v113 += 40;
            v82 = v220;
            v95 = v213;
            if (v210 == v112)
            {
              goto LABEL_44;
            }
          }

          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
          goto LABEL_76;
        }

LABEL_44:
        sub_100007224(&qword_100841E80, &qword_1006DECE8);
        type metadata accessor for ISO18013ReaderRequest.UseCase();
        v134 = swift_allocObject();
        v219 = xmmword_1006BF520;
        *(v134 + 16) = xmmword_1006BF520;
        v135 = *(v95 + 16);

        if (v135)
        {
          v222 = v111;
          v227 = _swiftEmptyArrayStorage;
          sub_100173300(0, v135, 0);
          v136 = 0;
          v137 = v227;
          do
          {
            sub_100007224(&qword_100841E88, &qword_1006DECF0);
            v138 = swift_allocObject();
            *(v138 + 16) = v219;
            *(v138 + 32) = v136;
            v227 = v137;
            v140 = v137[2];
            v139 = v137[3];
            if (v140 >= v139 >> 1)
            {
              v218 = v138;
              sub_100173300((v139 > 1), v140 + 1, 1);
              v138 = v218;
              v137 = v227;
            }

            ++v136;
            v137[2] = v140 + 1;
            v137[v140 + 4] = v138;
          }

          while (v135 != v136);
          v82 = v220;
        }

        ISO18013ReaderRequest.UseCase.init(documentSets:mandatory:)();
        sub_1000363B4(v215, v224);
        sub_1000363B4(v221, v82);
        ISO18013ReaderRequest.DeviceRequestInfo.init(useCases:externalData:interpretWillNotRetainIntentAsDisplayOnly:logotypeIconData:)();
        type metadata accessor for CBOREncoder();
        swift_allocObject();
        CBOREncoder.init()();
        sub_10036E5FC(&qword_100841E90, &type metadata accessor for ISO18013ReaderRequest.DeviceRequestInfo, &protocol conformance descriptor for ISO18013ReaderRequest.DeviceRequestInfo);
        sub_10036E5FC(&qword_100841E98, &type metadata accessor for ISO18013ReaderRequest.DeviceRequestInfo, &protocol conformance descriptor for ISO18013ReaderRequest.DeviceRequestInfo);
        v141 = v173;
        v142 = v223;
        CBOREncodedCBOR.init(value:tag:encoder:)();
        if (v142)
        {

          v143 = *(v185 + 8);
          v144 = v186;
          v143(v182, v186);
          v143(v183, v144);
          goto LABEL_11;
        }

        v168 = sub_100007224(&qword_100841E68, &unk_1006DECD0);
        (*(*(v168 - 8) + 56))(v141, 0, 1, v168);
        ISO18013ReaderRequest.init(version:docRequests:deviceRequestInfo:readerAuthAll:)();
        v184 = v183;
        goto LABEL_72;
      }
    }

    v131 = v177;
    v132 = v96;
    MobileDocumentReaderRequest.documentRequestType.getter();
    LODWORD(v207) = MobileDocumentRequestType.isDisplayOnly.getter();
    v103(v131, v102);
    if (v132)
    {
      v133 = v179;
      static ISO18013ReaderRequest.supportedVersionSecondEdition.getter();
    }

    else
    {
      v133 = v179;
      static ISO18013ReaderRequest.supportedVersion.getter();
    }

    v145 = v185;
    v146 = v184;
    v147 = v133;
    v148 = v186;
    (*(v185 + 32))(v184, v147, v186);
    (*(v145 + 16))(v181, v146, v148);
    v149 = *(v95 + 16);
    if (v149)
    {
      v227 = _swiftEmptyArrayStorage;
      result = sub_100172E0C(0, v149, 0);
      v150 = 0;
      v151 = v227;
      v152 = *(v95 + 16);
      v209 = v219 + 32;
      v210 = v149;
      if (v152 >= v149)
      {
        v152 = v149;
      }

      v211 = v152;
      v153 = v95 + 64;
      while (v211 != v150)
      {
        if (v150 >= *(v95 + 16))
        {
          goto LABEL_75;
        }

        v222 = v151;
        v154 = *(v153 - 24);
        v155 = *(v153 - 8);
        v214 = *(v153 - 32);
        v212 = v155;
        if (v150)
        {
          v156 = type metadata accessor for ISO18013ReaderRequest.DocRequestInfo();
          (*(*(v156 - 8) + 56))(v101, 1, 1, v156);
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
        }

        else
        {

          sub_1000363B4(v215, v224);
          v208 = v154;
          sub_1000363B4(v221, v220);

          v101 = v193;
          ISO18013ReaderRequest.DocRequestInfo.init(alternativeDataElements:issuerIdentifiers:maximumResponseSize:uniqueDocSetRequired:externalData:interpretWillNotRetainIntentAsDisplayOnly:logotypeIconData:)();
          v157 = type metadata accessor for ISO18013ReaderRequest.DocRequestInfo();
          (*(*(v157 - 8) + 56))(v101, 0, 1, v157);
        }

        ISO18013ReaderRequest.ItemsRequest.init(docType:namespaces:requestInfo:)();
        type metadata accessor for CBOREncoder();
        swift_allocObject();
        CBOREncoder.init()();
        sub_10036E5FC(&qword_100841E58, &type metadata accessor for ISO18013ReaderRequest.ItemsRequest, &protocol conformance descriptor for ISO18013ReaderRequest.ItemsRequest);
        sub_10036E5FC(&qword_100841E60, &type metadata accessor for ISO18013ReaderRequest.ItemsRequest, &protocol conformance descriptor for ISO18013ReaderRequest.ItemsRequest);
        v158 = v223;
        CBOREncodedCBOR.init(value:tag:encoder:)();
        v223 = v158;
        if (v158)
        {

          v165 = *(v185 + 8);
          v166 = v186;
          v165(v181, v186);
          v165(v184, v166);
LABEL_69:

          goto LABEL_11;
        }

        v159 = type metadata accessor for COSE_Sign1();
        (*(*(v159 - 8) + 56))(v217, 1, 1, v159);
        v160 = v194;
        ISO18013ReaderRequest.DocRequest.init(itemsRequest:readerAuth:)();

        v151 = v222;
        v227 = v222;
        v162 = v222[2];
        v161 = v222[3];
        if (v162 >= v161 >> 1)
        {
          sub_100172E0C((v161 > 1), v162 + 1, 1);
          v151 = v227;
        }

        ++v150;
        v151[2] = v162 + 1;
        result = (*(v219 + 32))(v151 + ((*(v219 + 80) + 32) & ~*(v219 + 80)) + *(v219 + 72) * v162, v160, v216);
        v153 += 40;
        v95 = v213;
        if (v210 == v150)
        {
          goto LABEL_70;
        }
      }

      goto LABEL_74;
    }

LABEL_70:
    v167 = sub_100007224(&qword_100841E68, &unk_1006DECD0);
    (*(*(v167 - 8) + 56))(v171, 1, 1, v167);
    ISO18013ReaderRequest.init(version:docRequests:deviceRequestInfo:readerAuthAll:)();

LABEL_72:
    (*(v185 + 8))(v184, v186);
    goto LABEL_12;
  }

  v180 = v67;
  v69 = swift_slowAlloc();
  v170 = swift_slowAlloc();
  v227 = v170;
  *v69 = 136315650;
  v70 = v213;
  v62(v192, v54, v213);
  v71 = String.init<A>(describing:)();
  v73 = v72;
  (*(v50 + 8))(v54, v70);
  v74 = sub_100141FE4(v71, v73, &v227);

  *(v69 + 4) = v74;
  *(v69 + 12) = 2048;
  v75 = v224;
  v76 = -1;
  v77 = v215;
  v78 = v66;
  v80 = v211;
  v79 = v212;
  v81 = v57;
  if (v224 >> 60 != 15)
  {
    v99 = v224 >> 62;
    if ((v224 >> 62) > 1)
    {
      if (v99 == 2)
      {
        v125 = *(v215 + 16);
        v124 = *(v215 + 24);
        v126 = v224;
        result = sub_10000BD94(v215, v224);
        v76 = v124 - v125;
        if (__OFSUB__(v124, v125))
        {
LABEL_76:
          __break(1u);
          goto LABEL_77;
        }

        v75 = v126;
        v78 = v221;
        v81 = v57;
      }

      else
      {
        sub_10000BD94(v215, v224);
        v76 = 0;
      }
    }

    else if (v99)
    {
      result = sub_10000BD94(v215, v224);
      LODWORD(v76) = HIDWORD(v77) - v77;
      if (__OFSUB__(HIDWORD(v77), v77))
      {
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      v76 = v76;
      v78 = v221;
    }

    else
    {
      sub_10000BD94(v215, v224);
      v76 = BYTE6(v75);
    }
  }

  *(v69 + 14) = v76;
  sub_10000BD94(v77, v75);
  *(v69 + 22) = 2048;
  v82 = v220;
  if (v220 >> 60 == 15)
  {
    v83 = -1;
LABEL_5:
    v84 = v223;
    v85 = v180;
LABEL_6:
    *(v69 + 24) = v83;
    sub_10000BD94(v78, v82);
    _os_log_impl(&_mh_execute_header, v85, v191, "ISO18013RequestBuilder building mdoc request with %s, logotype icon data %ld bytes, external data %ld bytes", v69, 0x20u);
    sub_10000BB78(v170);

    (*(v80 + 8))(v81, v79);
    goto LABEL_8;
  }

  v100 = v220 >> 62;
  v85 = v180;
  if ((v220 >> 62) > 1)
  {
    if (v100 != 2)
    {
      sub_10000BD94(v78, v220);
      v83 = 0;
      v84 = v223;
      goto LABEL_6;
    }

    v127 = v78;
    v130 = v78 + 16;
    v129 = *(v78 + 16);
    v128 = *(v130 + 8);
    result = sub_10000BD94(v127, v220);
    v83 = v128 - v129;
    if (__OFSUB__(v128, v129))
    {
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v78 = v221;
    goto LABEL_5;
  }

  if (!v100)
  {
    sub_10000BD94(v78, v220);
    v83 = BYTE6(v82);
    v84 = v223;
    goto LABEL_6;
  }

  result = sub_10000BD94(v78, v220);
  LODWORD(v83) = HIDWORD(v78) - v78;
  if (!__OFSUB__(HIDWORD(v78), v78))
  {
    v83 = v83;
    goto LABEL_5;
  }

LABEL_79:
  __break(1u);
  return result;
}

uint64_t sub_100368D8C(uint64_t a1)
{
  v52 = a1;
  v1 = type metadata accessor for CoreIDVFeatureFlag();
  v41 = *(v1 - 8);
  v42 = v1;
  __chkstk_darwin(v1);
  v40 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100007224(&qword_100841E20, &qword_1006DEC88);
  __chkstk_darwin(v3 - 8);
  v51 = &v37 - v4;
  v5 = type metadata accessor for ISO18013DeviceEngagement();
  v47 = *(v5 - 8);
  v48 = v5;
  __chkstk_darwin(v5);
  v46 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007224(&qword_100841E28, &qword_1006DEC90);
  v44 = *(v7 - 8);
  v45 = v7;
  __chkstk_darwin(v7);
  v9 = &v37 - v8;
  v10 = type metadata accessor for ISO18013DeviceEngagement.Capabilities();
  v49 = *(v10 - 8);
  v50 = v10;
  __chkstk_darwin(v10);
  v38 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DIPError.Code();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v43 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ISO18013SessionTranscript();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ISO18013PhysicalSessionTranscript();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v18, v52, v15);
  if ((*(v16 + 88))(v18, v15) != enum case for ISO18013SessionTranscript.physical(_:))
  {
    (*(v16 + 8))(v18, v15);
    (*(v13 + 104))(v43, enum case for DIPError.Code.documentReaderInvalidRequest(_:), v12);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10036E5FC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }

  (*(v16 + 96))(v18, v15);
  (*(v20 + 32))(v22, v18, v19);
  ISO18013PhysicalSessionTranscript.deviceEngagementBytes.getter();
  v23 = v45;
  v24 = v46;
  CBOREncodedCBOR.value.getter();
  (*(v44 + 8))(v9, v23);
  v25 = v51;
  ISO18013DeviceEngagement.capabilities.getter();
  (*(v47 + 8))(v24, v48);
  v27 = v49;
  v26 = v50;
  if ((*(v49 + 48))(v25, 1, v50) == 1)
  {
    (*(v20 + 8))(v22, v19);
    sub_10000BE18(v25, &qword_100841E20, &qword_1006DEC88);
    return 0;
  }

  v48 = v20;
  v52 = v19;
  v29 = v38;
  (*(v27 + 32))(v38, v25, v26);
  v30 = v39[3];
  v51 = v39[4];
  sub_10000BA08(v39, v30);
  v32 = v40;
  v31 = v41;
  v33 = v42;
  (*(v41 + 104))(v40, enum case for CoreIDVFeatureFlag.iso18013_5SecondEditionSupport(_:), v42);
  v34 = dispatch thunk of FeatureFlagProviding.isEnabled(_:)();
  (*(v31 + 8))(v32, v33);
  if ((v34 & 1) == 0)
  {
    (*(v27 + 8))(v29, v26);
    (*(v48 + 8))(v22, v52);
    return 0;
  }

  v35 = ISO18013DeviceEngagement.Capabilities.isExtendedRequestSupported.getter();
  v36 = ISO18013DeviceEngagement.Capabilities.isReaderAuthAllSupported.getter();
  (*(v27 + 8))(v29, v26);
  (*(v48 + 8))(v22, v52);
  if (v36 == 2)
  {
    if ((v35 & 1) == 0)
    {
      return 0;
    }

    return 3;
  }

  if (v35)
  {
    if (v36)
    {
      return 1;
    }

    return 3;
  }

  if (v36)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100369558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[10] = a5;
  v6[11] = v5;
  v6[8] = a3;
  v6[9] = a4;
  v6[6] = a1;
  v6[7] = a2;
  v7 = type metadata accessor for DIPError.Code();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();
  v8 = type metadata accessor for Milestone();
  v6[15] = v8;
  v6[16] = *(v8 - 8);
  v6[17] = swift_task_alloc();
  sub_100007224(&qword_10083F168, &unk_1006DEC40);
  v6[18] = swift_task_alloc();
  v9 = type metadata accessor for ISO18013ReaderRequest.DocRequest();
  v6[19] = v9;
  v6[20] = *(v9 - 8);
  v6[21] = swift_task_alloc();
  v10 = sub_100007224(&qword_10083C078, &unk_1006E4F40);
  v6[22] = v10;
  v6[23] = *(v10 - 8);
  v6[24] = swift_task_alloc();
  sub_100007224(&qword_100841DF8, &qword_1006DEC50);
  v6[25] = swift_task_alloc();
  v11 = type metadata accessor for ISO18013SessionTranscript();
  v6[26] = v11;
  v6[27] = *(v11 - 8);
  v6[28] = swift_task_alloc();
  v12 = type metadata accessor for ISO18013ReaderAuthenticationAll();
  v6[29] = v12;
  v6[30] = *(v12 - 8);
  v6[31] = swift_task_alloc();
  v13 = type metadata accessor for ISO18013ReaderRequest();
  v6[32] = v13;
  v6[33] = *(v13 - 8);
  v6[34] = swift_task_alloc();
  v14 = type metadata accessor for Logger();
  v6[35] = v14;
  v6[36] = *(v14 - 8);
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  v6[40] = swift_task_alloc();
  v15 = type metadata accessor for DIPSignpost();
  v6[41] = v15;
  v6[42] = *(v15 - 8);
  v6[43] = swift_task_alloc();

  return _swift_task_switch(sub_1003699C0, 0, 0);
}

uint64_t sub_1003699C0()
{
  static DaemonSignposts.MobileDocumentReader.signRequest.getter();
  DIPSignpost.init(_:)();
  defaultLogger()();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "ISO18013RequestBuilder signDocumentRequest starting to sign document request", v3, 2u);
  }

  v4 = *(v0 + 312);
  v5 = *(v0 + 280);
  v6 = *(v0 + 288);
  v8 = *(v0 + 264);
  v7 = *(v0 + 272);
  v9 = *(v0 + 256);
  v11 = *(v0 + 56);
  v10 = *(v0 + 64);

  v12 = *(v6 + 8);
  *(v0 + 352) = v12;
  v12(v4, v5);
  (*(v8 + 16))(v7, v11, v9);
  v13 = sub_100368D8C(v10);
  if (v13 - 1 >= 2)
  {
    if (v13)
    {
      defaultLogger()();
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.debug.getter();
      v37 = os_log_type_enabled(v35, v36);
      v38 = *(v0 + 304);
      v39 = *(v0 + 280);
      if (v37)
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&_mh_execute_header, v35, v36, "Holder device supports extended requests but not reader auth all. Request will not be signed.", v40, 2u);
      }

      v12(v38, v39);
      defaultLogger()();
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, v41, v42, "ISO18013RequestBuilder signDocumentRequest returning successfully", v43, 2u);
      }

      v44 = *(v0 + 344);
      v45 = *(v0 + 336);
      v67 = *(v0 + 328);
      v46 = v41;
      v47 = *(v0 + 296);
      v48 = *(v0 + 280);
      v66 = *(v0 + 272);
      v49 = *(v0 + 264);
      v64 = *(v0 + 352);
      v65 = *(v0 + 256);
      v50 = *(v0 + 136);
      v51 = *(v0 + 120);
      v52 = *(v0 + 128);
      v63 = *(v0 + 48);

      v64(v47, v48);
      static MobileDocumentReaderMilestone.readRequestSigned.getter();
      Milestone.log()();
      (*(v52 + 8))(v50, v51);
      (*(v49 + 32))(v63, v66, v65);
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      (*(v45 + 8))(v44, v67);

      v53 = *(v0 + 8);

      return v53();
    }

    else
    {
      v28 = *(v0 + 64);
      v29 = ISO18013ReaderRequest.docRequests.getter();
      v30 = swift_task_alloc();
      *(v30 + 16) = v28;
      v31 = sub_100366C74(sub_10036E5D4, v30, v29);
      *(v0 + 408) = v31;

      v32 = swift_task_alloc();
      *(v0 + 416) = v32;
      *v32 = v0;
      v32[1] = sub_10036A7A8;
      v33 = *(v0 + 80);
      v34 = *(v0 + 72);

      return sub_10036BEC0(v31, v34, v33);
    }
  }

  else
  {
    (*(*(v0 + 216) + 16))(*(v0 + 224), *(v0 + 64), *(v0 + 208));
    v15 = ISO18013ReaderRequest.docRequests.getter();
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = *(v0 + 184);
      v18 = *(v0 + 160);
      sub_100172DCC(0, v16, 0);
      v19 = *(v18 + 16);
      v18 += 16;
      v69 = v19;
      v20 = v15 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
      v68 = *(v18 + 56);
      v21 = (v18 - 8);
      do
      {
        v22 = *(v0 + 168);
        v23 = *(v0 + 152);
        v69(v22, v20, v23);
        ISO18013ReaderRequest.DocRequest.itemsRequest.getter();
        (*v21)(v22, v23);
        v25 = _swiftEmptyArrayStorage[2];
        v24 = _swiftEmptyArrayStorage[3];
        if (v25 >= v24 >> 1)
        {
          sub_100172DCC((v24 > 1), v25 + 1, 1);
        }

        v26 = *(v0 + 192);
        v27 = *(v0 + 176);
        _swiftEmptyArrayStorage[2] = v25 + 1;
        (*(v17 + 32))(_swiftEmptyArrayStorage + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v25, v26, v27);
        v20 += v68;
        --v16;
      }

      while (v16);
    }

    v55 = *(v0 + 240);
    v54 = *(v0 + 248);
    v56 = *(v0 + 232);
    ISO18013ReaderRequest.deviceRequestInfo.getter();
    ISO18013ReaderAuthenticationAll.init(sessionTranscript:itemsRequestBytesAll:deviceRequestsInfoBytes:)();
    sub_100007224(&qword_100841E00, &qword_1006DEC60);
    v57 = *(v55 + 80);
    *(v0 + 456) = v57;
    v58 = (v57 + 32) & ~v57;
    v59 = swift_allocObject();
    *(v0 + 360) = v59;
    *(v59 + 16) = xmmword_1006BF520;
    (*(v55 + 16))(v59 + v58, v54, v56);
    v60 = swift_task_alloc();
    *(v0 + 368) = v60;
    *v60 = v0;
    v60[1] = sub_10036A334;
    v61 = *(v0 + 80);
    v62 = *(v0 + 72);

    return sub_10036B2CC(v59, v62, v61);
  }
}

uint64_t sub_10036A334(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 376) = v1;

  v5 = *(v4 + 360);
  v6 = *(v4 + 240);
  v7 = *(v4 + 232);
  v8 = (*(v4 + 456) + 32) & ~*(v4 + 456);
  if (v1)
  {
    swift_setDeallocating();
    v9 = *(v6 + 8);
    *(v4 + 440) = v9;
    *(v4 + 448) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v5 + v8, v7);
    swift_deallocClassInstance();
    v10 = sub_10036AF04;
  }

  else
  {
    *(v4 + 384) = a1;
    swift_setDeallocating();
    v11 = *(v6 + 8);
    *(v4 + 392) = v11;
    *(v4 + 400) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v5 + v8, v7);
    swift_deallocClassInstance();
    v10 = sub_10036A528;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_10036A528()
{
  v1 = v0[49];
  v2 = v0[31];
  v3 = v0[29];
  ISO18013ReaderRequest.readerAuthAll.setter();
  v1(v2, v3);
  defaultLogger()();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "ISO18013RequestBuilder signDocumentRequest returning successfully", v6, 2u);
  }

  v7 = v0[43];
  v8 = v0[42];
  v22 = v0[41];
  v9 = v4;
  v10 = v0[37];
  v11 = v0[35];
  v21 = v0[34];
  v12 = v0[33];
  v19 = v0[44];
  v20 = v0[32];
  v13 = v0[17];
  v14 = v0[15];
  v15 = v0[16];
  v18 = v0[6];

  v19(v10, v11);
  static MobileDocumentReaderMilestone.readRequestSigned.getter();
  Milestone.log()();
  (*(v15 + 8))(v13, v14);
  (*(v12 + 32))(v18, v21, v20);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v8 + 8))(v7, v22);

  v16 = v0[1];

  return v16();
}

uint64_t sub_10036A7A8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 424) = a1;
  *(v3 + 432) = v1;

  if (v1)
  {
    v4 = sub_10036AC8C;
  }

  else
  {
    v4 = sub_10036A8DC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10036A8DC()
{
  v1 = v0[53];
  v34 = *(v1 + 16);
  if (v34)
  {
    v2 = type metadata accessor for COSE_Sign1();
    v3 = 0;
    v4 = *(v2 - 8);
    v5 = *(v4 + 16);
    v4 += 16;
    v33 = v5;
    v6 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v32 = *(v4 + 56);
    v7 = (v4 + 40);
    while (1)
    {
      v8 = v0[18];
      v33(v8, v6, v2);
      (*v7)(v8, 0, 1, v2);
      v9 = ISO18013ReaderRequest.docRequests.modify();
      v11 = v10;
      v12 = *v10;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v11 = v12;
      if ((result & 1) == 0)
      {
        result = sub_10036E548(v12);
        v12 = result;
        *v11 = result;
      }

      if (v3 >= v12[2])
      {
        break;
      }

      ISO18013ReaderRequest.DocRequest.readerAuth.setter();
      v9(v0 + 2, 0);
      v6 += v32;
      if (v34 == ++v3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:

    defaultLogger()();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "ISO18013RequestBuilder signDocumentRequest returning successfully", v16, 2u);
    }

    v17 = v0[43];
    v18 = v0[42];
    v31 = v0[41];
    v19 = v14;
    v20 = v0[37];
    v21 = v0[35];
    v30 = v0[34];
    v22 = v0[33];
    v28 = v0[44];
    v29 = v0[32];
    v23 = v0[17];
    v24 = v0[15];
    v25 = v0[16];
    v27 = v0[6];

    v28(v20, v21);
    static MobileDocumentReaderMilestone.readRequestSigned.getter();
    Milestone.log()();
    (*(v25 + 8))(v23, v24);
    (*(v22 + 32))(v27, v30, v29);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v18 + 8))(v17, v31);

    v26 = v0[1];

    return v26();
  }

  return result;
}

uint64_t sub_10036AC8C()
{
  (*(v0[33] + 8))(v0[34], v0[32]);
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[41];
  (*(v0[13] + 104))(v0[14], enum case for DIPError.Code.internalError(_:), v0[12]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10036E5FC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10036AF04()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 256);
  (*(v0 + 440))(*(v0 + 248), *(v0 + 232));
  (*(v2 + 8))(v1, v3);
  v5 = *(v0 + 336);
  v4 = *(v0 + 344);
  v6 = *(v0 + 328);
  (*(*(v0 + 104) + 104))(*(v0 + 112), enum case for DIPError.Code.internalError(_:), *(v0 + 96));
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10036E5FC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v5 + 8))(v4, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10036B190(uint64_t a1, uint64_t a2)
{
  v3 = sub_100007224(&qword_10083C078, &unk_1006E4F40);
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for ISO18013SessionTranscript();
  __chkstk_darwin(v4);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  ISO18013ReaderRequest.DocRequest.itemsRequest.getter();
  return ISO18013ReaderAuthentication.init(sessionTranscript:itemsRequestBytes:)();
}

uint64_t sub_10036B2CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  sub_100007224(&qword_10083F168, &unk_1006DEC40);
  v4[9] = swift_task_alloc();
  v5 = type metadata accessor for COSE_Sign1();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = type metadata accessor for ISO18013PresentmentType();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  sub_100007224(&qword_100841BE8, &qword_1006DEB10);
  v4[16] = swift_task_alloc();
  v7 = type metadata accessor for DIPError.Code();
  v4[17] = v7;
  v4[18] = *(v7 - 8);
  v4[19] = swift_task_alloc();

  return _swift_task_switch(sub_10036B4B8, 0, 0);
}

uint64_t sub_10036B4B8()
{
  v40 = v0;
  v1 = v0[6];
  v2 = *(v1 + *(type metadata accessor for MobileDocumentReaderAuthenticationSession(0) + 28));
  if (v2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!result)
  {
    v11 = enum case for DIPError.Code.documentReaderCannotSignReaderAuthentication(_:);
    (*(v0[18] + 104))(v0[19], enum case for DIPError.Code.documentReaderCannotSignReaderAuthentication(_:), v0[17]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10036E5FC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_13:
    (*(v0[18] + 104))(v0[19], v11, v0[17]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10036E5FC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v15 = v0[1];

    return v15();
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v4 = *(v2 + 32);
  }

  v5 = v4;
  v0[20] = v4;
  v6 = v0[16];
  type metadata accessor for SecCertificate(0);
  v0[21] = Array<A>.derRepresentation.getter();
  SecCertificateRef.publicKeyAlgorithm()();
  v7 = type metadata accessor for PublicKeyAlgorithm();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v6, 1, v7);
  v10 = v0[16];
  if (v9 == 1)
  {

    sub_10000BE18(v10, &qword_100841BE8, &qword_1006DEB10);
LABEL_12:
    v11 = enum case for DIPError.Code.documentReaderCannotSignReaderAuthentication(_:);
    (*(v0[18] + 104))(v0[19], enum case for DIPError.Code.documentReaderCannotSignReaderAuthentication(_:), v0[17]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10036E5FC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    goto LABEL_13;
  }

  v12 = PublicKeyAlgorithm.algorithmIdentifier.getter();
  v14 = v13;
  (*(v8 + 8))(v10, v7);
  if (v14)
  {

    goto LABEL_12;
  }

  if (v12 != -7)
  {
    v37 = v5;
    v30 = v0[18];
    v29 = v0[19];
    v31 = v0[17];

    v39[0] = 0;
    v39[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(74);
    v0[2] = 0;
    v0[3] = 0xE000000000000000;
    v32._countAndFlagsBits = 0xD000000000000014;
    v32._object = 0x8000000100710BF0;
    String.append(_:)(v32);
    v0[4] = v12;
    type metadata accessor for COSEAlgorithm(0);
    _print_unlocked<A, B>(_:_:)();
    v33._countAndFlagsBits = 0xD000000000000034;
    v33._object = 0x8000000100710C10;
    String.append(_:)(v33);
    v11 = enum case for DIPError.Code.documentReaderCannotSignReaderAuthentication(_:);
    (*(v30 + 104))(v29, enum case for DIPError.Code.documentReaderCannotSignReaderAuthentication(_:), v31);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10036E5FC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    goto LABEL_13;
  }

  v16 = v0[14];
  v17 = v0[15];
  v18 = v0[13];
  v19 = v0[5];
  type metadata accessor for CBOREncoder();
  swift_allocObject();
  v20 = CBOREncoder.init()();
  v0[22] = v20;
  (*(v16 + 104))(v17, enum case for ISO18013PresentmentType.physical(_:), v18);
  CBOREncoder.presentmentType.setter();
  v21 = *(v19 + 16);
  if (v21)
  {
    v22 = v0[5];
    sub_10017314C(0, v21, 0);
    v23 = *(type metadata accessor for ISO18013ReaderAuthenticationAll() - 8);
    v24 = v22 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v25 = *(v23 + 72);
    do
    {
      sub_10036D8F0(v24, v20, 0xFFFFFFFFFFFFFFF9, v39);
      v26 = *v39;
      v28 = _swiftEmptyArrayStorage[2];
      v27 = _swiftEmptyArrayStorage[3];
      if (v28 >= v27 >> 1)
      {
        v38 = *v39;
        sub_10017314C((v27 > 1), v28 + 1, 1);
        v26 = v38;
      }

      _swiftEmptyArrayStorage[2] = v28 + 1;
      *&_swiftEmptyArrayStorage[2 * v28 + 4] = v26;
      v24 += v25;
      --v21;
    }

    while (v21);
  }

  v0[23] = _swiftEmptyArrayStorage;
  v34 = swift_task_alloc();
  v0[24] = v34;
  *v34 = v0;
  v34[1] = sub_10036BDA4;
  v35 = v0[7];
  v36 = v0[6];

  return sub_10036E094(_swiftEmptyArrayStorage, v36, v35);
}

uint64_t sub_10036BDA4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v1;

  if (v1)
  {
    v4 = sub_10036E654;
  }

  else
  {

    v4 = sub_10036E658;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10036BEC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  sub_100007224(&qword_10083F168, &unk_1006DEC40);
  v4[9] = swift_task_alloc();
  v5 = type metadata accessor for COSE_Sign1();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = type metadata accessor for ISO18013PresentmentType();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  sub_100007224(&qword_100841BE8, &qword_1006DEB10);
  v4[16] = swift_task_alloc();
  v7 = type metadata accessor for DIPError.Code();
  v4[17] = v7;
  v4[18] = *(v7 - 8);
  v4[19] = swift_task_alloc();

  return _swift_task_switch(sub_10036C0AC, 0, 0);
}

uint64_t sub_10036C0AC()
{
  v40 = v0;
  v1 = v0[6];
  v2 = *(v1 + *(type metadata accessor for MobileDocumentReaderAuthenticationSession(0) + 28));
  if (v2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!result)
  {
    v11 = enum case for DIPError.Code.documentReaderCannotSignReaderAuthentication(_:);
    (*(v0[18] + 104))(v0[19], enum case for DIPError.Code.documentReaderCannotSignReaderAuthentication(_:), v0[17]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10036E5FC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_13:
    (*(v0[18] + 104))(v0[19], v11, v0[17]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10036E5FC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v15 = v0[1];

    return v15();
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v4 = *(v2 + 32);
  }

  v5 = v4;
  v0[20] = v4;
  v6 = v0[16];
  type metadata accessor for SecCertificate(0);
  v0[21] = Array<A>.derRepresentation.getter();
  SecCertificateRef.publicKeyAlgorithm()();
  v7 = type metadata accessor for PublicKeyAlgorithm();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v6, 1, v7);
  v10 = v0[16];
  if (v9 == 1)
  {

    sub_10000BE18(v10, &qword_100841BE8, &qword_1006DEB10);
LABEL_12:
    v11 = enum case for DIPError.Code.documentReaderCannotSignReaderAuthentication(_:);
    (*(v0[18] + 104))(v0[19], enum case for DIPError.Code.documentReaderCannotSignReaderAuthentication(_:), v0[17]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10036E5FC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    goto LABEL_13;
  }

  v12 = PublicKeyAlgorithm.algorithmIdentifier.getter();
  v14 = v13;
  (*(v8 + 8))(v10, v7);
  if (v14)
  {

    goto LABEL_12;
  }

  if (v12 != -7)
  {
    v37 = v5;
    v30 = v0[18];
    v29 = v0[19];
    v31 = v0[17];

    v39[0] = 0;
    v39[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(74);
    v0[2] = 0;
    v0[3] = 0xE000000000000000;
    v32._countAndFlagsBits = 0xD000000000000014;
    v32._object = 0x8000000100710BF0;
    String.append(_:)(v32);
    v0[4] = v12;
    type metadata accessor for COSEAlgorithm(0);
    _print_unlocked<A, B>(_:_:)();
    v33._countAndFlagsBits = 0xD000000000000034;
    v33._object = 0x8000000100710C10;
    String.append(_:)(v33);
    v11 = enum case for DIPError.Code.documentReaderCannotSignReaderAuthentication(_:);
    (*(v30 + 104))(v29, enum case for DIPError.Code.documentReaderCannotSignReaderAuthentication(_:), v31);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10036E5FC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    goto LABEL_13;
  }

  v16 = v0[14];
  v17 = v0[15];
  v18 = v0[13];
  v19 = v0[5];
  type metadata accessor for CBOREncoder();
  swift_allocObject();
  v20 = CBOREncoder.init()();
  v0[22] = v20;
  (*(v16 + 104))(v17, enum case for ISO18013PresentmentType.physical(_:), v18);
  CBOREncoder.presentmentType.setter();
  v21 = *(v19 + 16);
  if (v21)
  {
    v22 = v0[5];
    sub_10017314C(0, v21, 0);
    v23 = *(type metadata accessor for ISO18013ReaderAuthentication() - 8);
    v24 = v22 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v25 = *(v23 + 72);
    do
    {
      sub_10036D1E0(v24, v20, 0xFFFFFFFFFFFFFFF9, v39);
      v26 = *v39;
      v28 = _swiftEmptyArrayStorage[2];
      v27 = _swiftEmptyArrayStorage[3];
      if (v28 >= v27 >> 1)
      {
        v38 = *v39;
        sub_10017314C((v27 > 1), v28 + 1, 1);
        v26 = v38;
      }

      _swiftEmptyArrayStorage[2] = v28 + 1;
      *&_swiftEmptyArrayStorage[2 * v28 + 4] = v26;
      v24 += v25;
      --v21;
    }

    while (v21);
  }

  v0[23] = _swiftEmptyArrayStorage;
  v34 = swift_task_alloc();
  v0[24] = v34;
  *v34 = v0;
  v34[1] = sub_10036C998;
  v35 = v0[7];
  v36 = v0[6];

  return sub_10036E094(_swiftEmptyArrayStorage, v36, v35);
}

uint64_t sub_10036C998(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v1;

  if (v1)
  {
    v4 = sub_10036D000;
  }

  else
  {

    v4 = sub_10036CAB4;
  }

  return _swift_task_switch(v4, 0, 0);
}

void *sub_10036CAB4()
{
  v1 = v0[25];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[11];
    result = sub_100173340(0, v2, 0);
    v5 = 0;
    v6 = _swiftEmptyArrayStorage;
    v31 = v1;
    v33 = (v3 + 48);
    v30 = v3;
    v7 = (v3 + 32);
    v8 = (v1 + 40);
    while (1)
    {
      if (v5 >= *(v1 + 16))
      {
        __break(1u);
        return result;
      }

      v35 = v6;
      v9 = v7;
      v11 = v0[9];
      v10 = v0[10];
      v12 = *(v8 - 1);
      v13 = *v8;
      sub_10000B8B8(v12, *v8);
      sub_10000B8B8(v12, v13);

      COSE_Sign1.init(algorithmIdentifier:keyIdentifier:initializationVector:partialInitializationVector:payload:signature:x509Chain:includeCBORTag:)();
      if ((*v33)(v11, 1, v10) == 1)
      {
        break;
      }

      v14 = v0[12];
      v16 = v0[9];
      v15 = v0[10];
      sub_10000B90C(v12, v13);
      v17 = *v9;
      v18 = v15;
      v7 = v9;
      (*v9)(v14, v16, v18);
      v6 = v35;
      v20 = v35[2];
      v19 = v35[3];
      if (v20 >= v19 >> 1)
      {
        sub_100173340((v19 > 1), v20 + 1, 1);
        v6 = v35;
      }

      ++v5;
      v21 = v0[12];
      v22 = v0[10];
      v6[2] = v20 + 1;
      result = v17(v6 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v20, v21, v22);
      v8 += 2;
      v1 = v31;
      if (v2 == v5)
      {
        v28 = v0[20];

        goto LABEL_13;
      }
    }

    v24 = v0[19];
    v34 = v0[20];
    v25 = v0[18];
    v26 = v0[9];

    sub_10000BE18(v26, &qword_10083F168, &unk_1006DEC40);
    v32 = enum case for DIPError.Code.documentReaderCannotSignReaderAuthentication(_:);
    (*(v25 + 104))(v24);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10036E5FC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000B90C(v12, v13);

    (*(v0[18] + 104))(v0[19], v32, v0[17]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v27 = v0[1];

    return v27();
  }

  else
  {
    v23 = v0[20];

    v6 = _swiftEmptyArrayStorage;
LABEL_13:

    v29 = v0[1];

    return v29(v6);
  }
}

uint64_t sub_10036D000()
{
  v1 = v0[20];

  (*(v0[18] + 104))(v0[19], enum case for DIPError.Code.documentReaderCannotSignReaderAuthentication(_:), v0[17]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10036E5FC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_10036D1E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v54 = a3;
  v55 = a1;
  v52 = a4;
  v49 = type metadata accessor for Logger();
  v51 = *(v49 - 8);
  __chkstk_darwin(v49);
  v46 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for SHA256();
  v48 = *(v45 - 8);
  __chkstk_darwin(v45);
  v47 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SHA256Digest();
  v50 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RFC8152SigStructure();
  v53 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100007224(&qword_10083F170, &qword_1006DC630);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v40 - v15;
  type metadata accessor for ISO18013ReaderAuthentication();
  sub_10036E5FC(&qword_100841E18, &type metadata accessor for ISO18013ReaderAuthentication, &protocol conformance descriptor for ISO18013ReaderAuthentication);
  v55 = a2;
  v17 = v61;
  result = dispatch thunk of CBOREncoder.encode<A>(_:)();
  if (!v17)
  {
    v42 = v9;
    v43 = v14;
    v58[0] = result;
    v58[1] = v19;
    v44 = result;
    v61 = v19;
    sub_10000B8B8(result, v19);
    sub_10000B960();
    sub_10000B9B4();

    CBOREncodedCBOR.init(value:tag:encoder:)();
    v20 = CBOREncodedCBOR.dataValue.getter();
    v22 = v21;
    (*(v43 + 8))(v16, v13);

    sub_10000B8B8(v20, v22);
    v23 = v12;
    RFC8152SigStructure.init(algorithm:payload:encoder:)();
    v54 = v22;
    sub_10036E5FC(&qword_10083F180, &type metadata accessor for RFC8152SigStructure, &protocol conformance descriptor for RFC8152SigStructure);
    v24 = dispatch thunk of CBOREncoder.encode<A>(_:)();
    v26 = v25;
    sub_10036E5FC(&qword_1008336E0, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
    v55 = v10;
    v27 = v47;
    v43 = v20;
    v28 = v45;
    dispatch thunk of HashFunction.init()();
    v29 = v26;
    sub_10000B8B8(v24, v26);
    v41 = v26;
    sub_10037939C(v24, v26, v27);
    v30 = v24;
    sub_10000B90C(v24, v29);
    v31 = v42;
    dispatch thunk of HashFunction.finalize()();
    (*(v48 + 8))(v27, v28);
    v32 = v7;
    v59 = v7;
    v60 = sub_10036E5FC(&qword_100841E10, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
    v33 = sub_100032DBC(v58);
    v34 = v50;
    (*(v50 + 16))(v33, v31, v32);
    sub_10000BA08(v58, v59);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    (*(v34 + 8))(v31, v32);
    v35 = v56;
    v36 = v57;
    sub_10000BB78(v58);
    v37 = v46;
    v38 = defaultLogger()();
    __chkstk_darwin(v38);
    *(&v40 - 2) = v35;
    *(&v40 - 1) = v36;
    Logger.cryptoParam(_:)();
    sub_10000B90C(v30, v41);
    sub_10000B90C(v43, v54);
    sub_10000B90C(v44, v61);
    (*(v51 + 8))(v37, v49);
    result = (*(v53 + 8))(v23, v55);
    v39 = v52;
    *v52 = v35;
    v39[1] = v36;
  }

  return result;
}

uint64_t sub_10036D8F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v54 = a3;
  v55 = a1;
  v52 = a4;
  v49 = type metadata accessor for Logger();
  v51 = *(v49 - 8);
  __chkstk_darwin(v49);
  v46 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for SHA256();
  v48 = *(v45 - 8);
  __chkstk_darwin(v45);
  v47 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SHA256Digest();
  v50 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RFC8152SigStructure();
  v53 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100007224(&qword_10083F170, &qword_1006DC630);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v40 - v15;
  type metadata accessor for ISO18013ReaderAuthenticationAll();
  sub_10036E5FC(&qword_100841E08, &type metadata accessor for ISO18013ReaderAuthenticationAll, &protocol conformance descriptor for ISO18013ReaderAuthenticationAll);
  v55 = a2;
  v17 = v61;
  result = dispatch thunk of CBOREncoder.encode<A>(_:)();
  if (!v17)
  {
    v42 = v9;
    v43 = v14;
    v58[0] = result;
    v58[1] = v19;
    v44 = result;
    v61 = v19;
    sub_10000B8B8(result, v19);
    sub_10000B960();
    sub_10000B9B4();

    CBOREncodedCBOR.init(value:tag:encoder:)();
    v20 = CBOREncodedCBOR.dataValue.getter();
    v22 = v21;
    (*(v43 + 8))(v16, v13);

    sub_10000B8B8(v20, v22);
    v23 = v12;
    RFC8152SigStructure.init(algorithm:payload:encoder:)();
    v54 = v22;
    sub_10036E5FC(&qword_10083F180, &type metadata accessor for RFC8152SigStructure, &protocol conformance descriptor for RFC8152SigStructure);
    v24 = dispatch thunk of CBOREncoder.encode<A>(_:)();
    v26 = v25;
    sub_10036E5FC(&qword_1008336E0, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
    v55 = v10;
    v27 = v47;
    v43 = v20;
    v28 = v45;
    dispatch thunk of HashFunction.init()();
    v29 = v26;
    sub_10000B8B8(v24, v26);
    v41 = v26;
    sub_10037939C(v24, v26, v27);
    v30 = v24;
    sub_10000B90C(v24, v29);
    v31 = v42;
    dispatch thunk of HashFunction.finalize()();
    (*(v48 + 8))(v27, v28);
    v32 = v7;
    v59 = v7;
    v60 = sub_10036E5FC(&qword_100841E10, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
    v33 = sub_100032DBC(v58);
    v34 = v50;
    (*(v50 + 16))(v33, v31, v32);
    sub_10000BA08(v58, v59);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    (*(v34 + 8))(v31, v32);
    v35 = v56;
    v36 = v57;
    sub_10000BB78(v58);
    v37 = v46;
    v38 = defaultLogger()();
    __chkstk_darwin(v38);
    *(&v40 - 2) = v35;
    *(&v40 - 1) = v36;
    Logger.cryptoParam(_:)();
    sub_10000B90C(v30, v41);
    sub_10000B90C(v43, v54);
    sub_10000B90C(v44, v61);
    (*(v51 + 8))(v37, v49);
    result = (*(v53 + 8))(v23, v55);
    v39 = v52;
    *v52 = v35;
    v39[1] = v36;
  }

  return result;
}

uint64_t sub_10036E000()
{
  _StringGuts.grow(_:)(54);
  v0._object = 0x8000000100710CB0;
  v0._countAndFlagsBits = 0xD000000000000034;
  String.append(_:)(v0);
  v1 = Data.base16EncodedString()();
  String.append(_:)(v1);

  return 0;
}

uint64_t sub_10036E094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_10036E0B8, 0, 0);
}

uint64_t sub_10036E0B8()
{
  v1 = *(v0 + 24);
  v2 = v1 + *(type metadata accessor for MobileDocumentReaderAuthenticationSession(0) + 32);
  v3 = *v2;
  *(v0 + 40) = *v2;
  v4 = *(v2 + 8);
  *(v0 + 48) = v4;
  if ((v4 & 0x2000000000000000) != 0)
  {
    v8 = *(v0 + 16);
    v9 = *(v8 + 16);
    if (v9)
    {
      v20 = v4;
      v21 = v0;
      v3;
      sub_10017314C(0, v9, 0);
      v10 = (v8 + 40);
      do
      {
        v11 = *(v10 - 1);
        v12 = *v10;
        sub_10000B8B8(v11, *v10);
        v13 = SecKeyRef.signSHA256Digest(_:algorithm:)();
        v15 = v14;
        sub_10000B90C(v11, v12);
        v17 = _swiftEmptyArrayStorage[2];
        v16 = _swiftEmptyArrayStorage[3];
        if (v17 >= v16 >> 1)
        {
          sub_10017314C((v16 > 1), v17 + 1, 1);
        }

        v10 += 2;
        _swiftEmptyArrayStorage[2] = v17 + 1;
        v18 = &_swiftEmptyArrayStorage[2 * v17];
        v18[4] = v13;
        v18[5] = v15;
        --v9;
      }

      while (v9);
      sub_10035542C(v3, v20);
      v0 = v21;
    }

    v19 = *(v0 + 8);

    return v19(_swiftEmptyArrayStorage);
  }

  else
  {
    sub_10000BA08(*(v0 + 32), *(*(v0 + 32) + 24));
    sub_10000B8B8(v3, v4);
    v5 = swift_task_alloc();
    *(v0 + 56) = v5;
    *v5 = v0;
    v5[1] = sub_10036E350;
    v6 = *(v0 + 16);

    return sub_100518F24(v6, v3, v4);
  }
}

uint64_t sub_10036E350(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_10036E4E0;
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = sub_10036E478;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10036E478()
{
  sub_10035542C(v0[5], v0[6]);
  v1 = v0[9];
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_10036E4E0()
{
  sub_10035542C(v0[5], v0[6]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_10036E570(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t sub_10036E5FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10036E664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v7 = type metadata accessor for DIPError.Code();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v6[12] = v8;
  v6[13] = *(v8 - 8);
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  v6[16] = swift_task_alloc();
  v9 = type metadata accessor for DIPSignpost();
  v6[17] = v9;
  v6[18] = *(v9 - 8);
  v6[19] = swift_task_alloc();

  return _swift_task_switch(sub_10036E81C, 0, 0);
}

uint64_t sub_10036E81C()
{
  static DaemonSignposts.MobileDocumentReader.validateResponse.getter();
  DIPSignpost.init(_:)();
  defaultLogger()();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[6];
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v4 + 16);

    _os_log_impl(&_mh_execute_header, v1, v2, "ISO18013ResponseValidator validating ISO18013 response, trustedIssuerRoots: %ld.", v5, 0xCu);
  }

  else
  {
  }

  v6 = v0[15];
  v7 = v0[12];
  v8 = v0[13];
  v9 = *(v8 + 8);
  v0[20] = v9;
  v0[21] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v6, v7);
  v10 = ISO18013Response.documents.getter();
  v0[22] = v10;
  if (v10)
  {
    v11 = *(v0[8] + 16);
    v0[23] = v11;

    return _swift_task_switch(sub_10036EA30, v11, 0);
  }

  else
  {
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v0[18] + 8))(v0[19], v0[17]);

    v12 = v0[1];

    return v12(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_10036EA30()
{
  sub_100360E68(*(v0 + 48));

  return _swift_task_switch(sub_10036EA9C, 0, 0);
}

uint64_t sub_10036EA9C()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  *(v0 + 16) = *(v0 + 176);
  v3 = swift_task_alloc();
  *(v0 + 192) = v3;
  v4 = *(v0 + 32);
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  *(v3 + 32) = v4;
  v5 = swift_task_alloc();
  *(v0 + 200) = v5;
  v6 = sub_100007224(&qword_100841FA8, &qword_1006DEE38);
  v7 = sub_100007224(&qword_10083B4C8, &unk_1006D98C0);
  v8 = sub_1000BA30C(&qword_100841FB0, &qword_100841FA8, &qword_1006DEE38, &protocol conformance descriptor for [A]);
  *v5 = v0;
  v5[1] = sub_10036EBF8;

  return Sequence.asyncMap<A>(_:)(&unk_1006DEE30, v3, v6, v7, v8);
}

uint64_t sub_10036EBF8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  if (v1)
  {
    v4 = sub_10036EE84;
  }

  else
  {

    v4 = sub_10036ED20;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10036ED20(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "ISO18013ResponseValidator successfully validated ISO18013 response.", v4, 2u);
  }

  v5 = v1[20];
  v6 = v1[14];
  v7 = v1[12];

  v5(v6, v7);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  v8 = v1[26];
  (*(v1[18] + 8))(v1[19], v1[17]);

  v9 = v1[1];

  return v9(v8);
}

uint64_t sub_10036EE84()
{
  v2 = v0[18];
  v1 = v0[19];
  v8 = v0[17];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];

  (*(v4 + 104))(v3, enum case for DIPError.Code.internalError(_:), v5);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10037A130(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v2 + 8))(v1, v8);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10036F09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a3;
  v6[12] = a4;
  v6[9] = a1;
  v6[10] = a2;
  v7 = type metadata accessor for DIPError.Code();
  v6[15] = v7;
  v6[16] = *(v7 - 8);
  v6[17] = swift_task_alloc();
  v8 = type metadata accessor for DIPError.PropertyKey();
  v6[18] = v8;
  v6[19] = *(v8 - 8);
  v6[20] = swift_task_alloc();
  sub_100007224(&qword_100833A88, qword_1006BF8E0);
  v6[21] = swift_task_alloc();
  sub_100007224(&qword_100841BD8, &qword_1006DEB00);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  sub_100007224(&qword_100841FB8, &unk_1006DEE40);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v9 = type metadata accessor for ISO18013MobileSecurityObject();
  v6[26] = v9;
  v6[27] = *(v9 - 8);
  v6[28] = swift_task_alloc();

  return _swift_task_switch(sub_10036F2DC, 0, 0);
}

uint64_t sub_10036F2DC()
{
  v1 = swift_task_alloc();
  v0[29] = v1;
  *v1 = v0;
  v1[1] = sub_10036F380;
  v2 = v0[28];
  v3 = v0[12];
  v4 = v0[10];

  return sub_1003610D0(v2, v4, v3);
}

uint64_t sub_10036F380(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v1;

  if (v1)
  {
    v4 = sub_10036FCD0;
  }

  else
  {
    v4 = sub_10036F494;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10036F494()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 224);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v5 = *(v0 + 80);
  sub_10000BA08((*(v0 + 88) + 32), *(*(v0 + 88) + 56));
  sub_10035CAE8(v5, v2, v4, v3);
  if (v1)
  {
    v6 = *(v0 + 240);
    v50 = *(v0 + 208);
    v51 = *(v0 + 224);
    v7 = *(v0 + 152);
    v8 = *(v0 + 128);
    v48 = *(v0 + 136);
    v49 = *(v0 + 216);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v9 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v10 = (*(*v9 + 80) + 32) & ~*(*v9 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1006BF520;
    v12 = v11 + v10;
    v13 = (v11 + v10 + v9[14]);
    v47 = enum case for DIPError.PropertyKey.issuerCertificateChain(_:);
    (*(v7 + 104))(v12);
    v13[3] = sub_100007224(&qword_10083B4C8, &unk_1006D98C0);
    v13[4] = sub_1000BA30C(&qword_100841DD0, &qword_10083B4C8, &unk_1006D98C0, &protocol conformance descriptor for [A]);
    *v13 = v6;
    swift_errorRetain();
    sub_10003C9C0(v11);
    swift_setDeallocating();
    sub_10000BE18(v12, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    v52 = enum case for DIPError.Code.internalError(_:);
    (*(v8 + 104))(v48);
    v14 = type metadata accessor for DIPError();
    sub_10037A130(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v15 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v49 + 8))(v51, v50);
    *(v0 + 56) = v15;
    swift_errorRetain();
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    v16 = swift_dynamicCast();
    v17 = *(*(v14 - 8) + 56);
    v18 = *(v0 + 168);
    if (v16)
    {
      v19 = *(v14 - 8);
      v21 = *(v0 + 152);
      v20 = *(v0 + 160);
      v22 = *(v0 + 144);
      v17(*(v0 + 168), 0, 1, v14);
      v23 = DIPError.properties.getter();
      (*(v19 + 8))(v18, v14);
      (*(v21 + 104))(v20, v47, v22);
      if (*(v23 + 16) && (v24 = sub_10003AF10(*(v0 + 160)), (v25 & 1) != 0))
      {
        v27 = *(v0 + 152);
        v26 = *(v0 + 160);
        v28 = *(v0 + 144);
        sub_100020260(*(v23 + 56) + 40 * v24, v0 + 16);
        (*(v27 + 8))(v26, v28);

        if (*(v0 + 40))
        {
          sub_100007224(&unk_100833A90, &unk_1006DEE50);
          sub_100007224(&qword_10083B4C8, &unk_1006D98C0);
          swift_dynamicCast();
LABEL_13:
          v36 = *(v0 + 176);
          swift_errorRetain();
          ISO18013Response.Document.deviceSigned.getter();
          v37 = type metadata accessor for ISO18013Response.DeviceSigned();
          v38 = *(v37 - 8);
          if ((*(v38 + 48))(v36, 1, v37) == 1)
          {
            sub_10000BE18(*(v0 + 176), &qword_100841BD8, &qword_1006DEB00);
            v39 = 1;
          }

          else
          {
            v40 = *(v0 + 176);
            ISO18013Response.DeviceSigned.deviceAuth.getter();
            (*(v38 + 8))(v40, v37);
            v39 = 0;
          }

          v41 = *(v0 + 192);
          v43 = *(v0 + 128);
          v42 = *(v0 + 136);
          v44 = *(v0 + 120);
          v45 = type metadata accessor for ISO18013Response.DeviceAuth();
          (*(*(v45 - 8) + 56))(v41, v39, 1, v45);
          type metadata accessor for DaemonAnalytics();
          static DaemonAnalytics.sendResponseValidationResultEvent(result:deviceAuth:issuerCertificateChain:)();

          sub_10000BE18(v41, &qword_100841FB8, &unk_1006DEE40);
          (*(v43 + 104))(v42, v52, v44);
          swift_errorRetain();
          sub_1000402AC(_swiftEmptyArrayStorage);
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();

          v46 = *(v0 + 8);

          return v46();
        }
      }

      else
      {
        v34 = *(v0 + 152);
        v33 = *(v0 + 160);
        v35 = *(v0 + 144);

        (*(v34 + 8))(v33, v35);
        *(v0 + 48) = 0;
        *(v0 + 16) = 0u;
        *(v0 + 32) = 0u;
      }
    }

    else
    {
      v17(*(v0 + 168), 1, 1, v14);
      sub_10000BE18(v18, &qword_100833A88, qword_1006BF8E0);
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
      *(v0 + 48) = 0;
    }

    sub_10000BE18(v0 + 16, &qword_10083BD10, &qword_1006DA228);
    goto LABEL_13;
  }

  v29 = swift_task_alloc();
  *(v0 + 256) = v29;
  *v29 = v0;
  v29[1] = sub_10037022C;
  v30 = *(v0 + 224);
  v31 = *(v0 + 80);

  return sub_100370D00(v31, v30);
}

uint64_t sub_10036FCD0()
{
  *(v0 + 56) = *(v0 + 248);
  v1 = (v0 + 16);
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  v2 = type metadata accessor for DIPError();
  v3 = swift_dynamicCast();
  v4 = *(*(v2 - 8) + 56);
  v5 = *(v0 + 168);
  if (v3)
  {
    v6 = *(v2 - 8);
    v7 = *(v0 + 152);
    v30 = *(v0 + 160);
    v8 = *(v0 + 144);
    v4(v5, 0, 1, v2);
    v9 = DIPError.properties.getter();
    (*(v6 + 8))(v5, v2);
    (*(v7 + 104))(v30, enum case for DIPError.PropertyKey.issuerCertificateChain(_:), v8);
    if (*(v9 + 16) && (v10 = sub_10003AF10(*(v0 + 160)), (v11 & 1) != 0))
    {
      v12 = *(v0 + 152);
      v13 = *(v0 + 160);
      v14 = *(v0 + 144);
      sub_100020260(*(v9 + 56) + 40 * v10, v0 + 16);
      (*(v12 + 8))(v13, v14);

      if (*(v0 + 40))
      {
        sub_100007224(&unk_100833A90, &unk_1006DEE50);
        sub_100007224(&qword_10083B4C8, &unk_1006D98C0);
        swift_dynamicCast();
        goto LABEL_9;
      }
    }

    else
    {
      v15 = *(v0 + 152);
      v16 = *(v0 + 160);
      v17 = *(v0 + 144);

      (*(v15 + 8))(v16, v17);
      *(v0 + 48) = 0;
      *v1 = 0u;
      *(v0 + 32) = 0u;
    }
  }

  else
  {
    v4(v5, 1, 1, v2);
    sub_10000BE18(v5, &qword_100833A88, qword_1006BF8E0);
    *v1 = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
  }

  sub_10000BE18(v0 + 16, &qword_10083BD10, &qword_1006DA228);
LABEL_9:
  v18 = *(v0 + 176);
  swift_errorRetain();
  ISO18013Response.Document.deviceSigned.getter();
  v19 = type metadata accessor for ISO18013Response.DeviceSigned();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_10000BE18(*(v0 + 176), &qword_100841BD8, &qword_1006DEB00);
    v21 = 1;
  }

  else
  {
    v22 = *(v0 + 176);
    ISO18013Response.DeviceSigned.deviceAuth.getter();
    (*(v20 + 8))(v22, v19);
    v21 = 0;
  }

  v23 = *(v0 + 192);
  v25 = *(v0 + 128);
  v24 = *(v0 + 136);
  v26 = *(v0 + 120);
  v27 = type metadata accessor for ISO18013Response.DeviceAuth();
  (*(*(v27 - 8) + 56))(v23, v21, 1, v27);
  type metadata accessor for DaemonAnalytics();
  static DaemonAnalytics.sendResponseValidationResultEvent(result:deviceAuth:issuerCertificateChain:)();

  sub_10000BE18(v23, &qword_100841FB8, &unk_1006DEE40);
  (*(v25 + 104))(v24, enum case for DIPError.Code.internalError(_:), v26);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  sub_10037A130(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_10037022C()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_10037056C;
  }

  else
  {
    v2 = sub_100370340;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100370340(uint64_t a1)
{
  v2 = v1[23];
  ISO18013Response.Document.deviceSigned.getter();
  v3 = type metadata accessor for ISO18013Response.DeviceSigned();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_10000BE18(v1[23], &qword_100841BD8, &qword_1006DEB00);
    v5 = 1;
  }

  else
  {
    v6 = v1[23];
    ISO18013Response.DeviceSigned.deviceAuth.getter();
    (*(v4 + 8))(v6, v3);
    v5 = 0;
  }

  v7 = v1[30];
  v8 = v1[27];
  v9 = v1[28];
  v11 = v1[25];
  v10 = v1[26];
  v12 = v1[9];
  v13 = type metadata accessor for ISO18013Response.DeviceAuth();
  (*(*(v13 - 8) + 56))(v11, v5, 1, v13);
  type metadata accessor for DaemonAnalytics();
  static DaemonAnalytics.sendResponseValidationResultEvent(result:deviceAuth:issuerCertificateChain:)();
  sub_10000BE18(v11, &qword_100841FB8, &unk_1006DEE40);
  (*(v8 + 8))(v9, v10);
  *v12 = v7;

  v14 = v1[1];

  return v14();
}

uint64_t sub_10037056C()
{
  v1 = *(v0 + 240);
  v42 = *(v0 + 208);
  v44 = *(v0 + 224);
  v2 = *(v0 + 152);
  v3 = *(v0 + 128);
  v40 = *(v0 + 136);
  v41 = *(v0 + 216);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v4 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v5 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1006BF520;
  v7 = v6 + v5;
  v8 = (v7 + v4[14]);
  v39 = enum case for DIPError.PropertyKey.issuerCertificateChain(_:);
  (*(v2 + 104))(v7);
  v8[3] = sub_100007224(&qword_10083B4C8, &unk_1006D98C0);
  v8[4] = sub_1000BA30C(&qword_100841DD0, &qword_10083B4C8, &unk_1006D98C0, &protocol conformance descriptor for [A]);
  *v8 = v1;
  swift_errorRetain();
  sub_10003C9C0(v6);
  swift_setDeallocating();
  sub_10000BE18(v7, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  v45 = enum case for DIPError.Code.internalError(_:);
  (*(v3 + 104))(v40);
  v9 = type metadata accessor for DIPError();
  sub_10037A130(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  v10 = swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v41 + 8))(v44, v42);
  *(v0 + 56) = v10;
  v11 = (v0 + 16);
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  v12 = swift_dynamicCast();
  v13 = *(*(v9 - 8) + 56);
  v14 = *(v0 + 168);
  if (v12)
  {
    v15 = *(v9 - 8);
    v43 = *(v0 + 160);
    v17 = *(v0 + 144);
    v16 = *(v0 + 152);
    v13(v14, 0, 1, v9);
    v18 = DIPError.properties.getter();
    (*(v15 + 8))(v14, v9);
    (*(v16 + 104))(v43, v39, v17);
    if (*(v18 + 16) && (v19 = sub_10003AF10(*(v0 + 160)), (v20 & 1) != 0))
    {
      v21 = *(v0 + 152);
      v22 = *(v0 + 160);
      v23 = *(v0 + 144);
      sub_100020260(*(v18 + 56) + 40 * v19, v0 + 16);
      (*(v21 + 8))(v22, v23);

      if (*(v0 + 40))
      {
        sub_100007224(&unk_100833A90, &unk_1006DEE50);
        sub_100007224(&qword_10083B4C8, &unk_1006D98C0);
        swift_dynamicCast();
        goto LABEL_9;
      }
    }

    else
    {
      v24 = *(v0 + 152);
      v25 = *(v0 + 160);
      v26 = *(v0 + 144);

      (*(v24 + 8))(v25, v26);
      *(v0 + 48) = 0;
      *v11 = 0u;
      *(v0 + 32) = 0u;
    }
  }

  else
  {
    v13(v14, 1, 1, v9);
    sub_10000BE18(v14, &qword_100833A88, qword_1006BF8E0);
    *v11 = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
  }

  sub_10000BE18(v0 + 16, &qword_10083BD10, &qword_1006DA228);
LABEL_9:
  v27 = *(v0 + 176);
  swift_errorRetain();
  ISO18013Response.Document.deviceSigned.getter();
  v28 = type metadata accessor for ISO18013Response.DeviceSigned();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_10000BE18(*(v0 + 176), &qword_100841BD8, &qword_1006DEB00);
    v30 = 1;
  }

  else
  {
    v31 = *(v0 + 176);
    ISO18013Response.DeviceSigned.deviceAuth.getter();
    (*(v29 + 8))(v31, v28);
    v30 = 0;
  }

  v32 = *(v0 + 192);
  v34 = *(v0 + 128);
  v33 = *(v0 + 136);
  v35 = *(v0 + 120);
  v36 = type metadata accessor for ISO18013Response.DeviceAuth();
  (*(*(v36 - 8) + 56))(v32, v30, 1, v36);
  type metadata accessor for DaemonAnalytics();
  static DaemonAnalytics.sendResponseValidationResultEvent(result:deviceAuth:issuerCertificateChain:)();

  sub_10000BE18(v32, &qword_100841FB8, &unk_1006DEE40);
  (*(v34 + 104))(v33, v45, v35);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_100370D00(uint64_t a1, uint64_t a2)
{
  v3[117] = v2;
  v3[116] = a2;
  v3[115] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[118] = v4;
  v3[119] = *(v4 - 8);
  v3[120] = swift_task_alloc();
  v3[121] = swift_task_alloc();
  v5 = type metadata accessor for DIPError();
  v3[122] = v5;
  v3[123] = *(v5 - 8);
  v3[124] = swift_task_alloc();
  v3[125] = swift_task_alloc();
  v3[126] = swift_task_alloc();
  v3[127] = swift_task_alloc();
  v6 = type metadata accessor for COSE_Sign1();
  v3[128] = v6;
  v3[129] = *(v6 - 8);
  v3[130] = swift_task_alloc();
  v7 = type metadata accessor for ISO18013Response.IssuerSigned();
  v3[131] = v7;
  v3[132] = *(v7 - 8);
  v3[133] = swift_task_alloc();
  v8 = type metadata accessor for ISO18013MobileSecurityObject.IdentifierList();
  v3[134] = v8;
  v3[135] = *(v8 - 8);
  v3[136] = swift_task_alloc();
  v9 = *(sub_100007224(&unk_100844540, &unk_1006BFBC0) - 8);
  v3[137] = v9;
  v3[138] = *(v9 + 64);
  v3[139] = swift_task_alloc();
  v3[140] = swift_task_alloc();
  v10 = type metadata accessor for SHA256();
  v3[141] = v10;
  v3[142] = *(v10 - 8);
  v3[143] = swift_task_alloc();
  v11 = type metadata accessor for SHA256Digest();
  v3[144] = v11;
  v3[145] = *(v11 - 8);
  v3[146] = swift_task_alloc();
  v12 = type metadata accessor for COSEKey();
  v3[147] = v12;
  v3[148] = *(v12 - 8);
  v3[149] = swift_task_alloc();
  v13 = type metadata accessor for ISO18013MobileSecurityObject.DeviceKeyInfo();
  v3[150] = v13;
  v3[151] = *(v13 - 8);
  v3[152] = swift_task_alloc();
  v14 = type metadata accessor for Logger();
  v3[153] = v14;
  v3[154] = *(v14 - 8);
  v3[155] = swift_task_alloc();
  v3[156] = swift_task_alloc();
  v3[157] = swift_task_alloc();
  v3[158] = swift_task_alloc();
  v3[159] = swift_task_alloc();
  v3[160] = swift_task_alloc();
  v3[161] = swift_task_alloc();
  sub_100007224(&qword_100841F50, &qword_1006DEDD8);
  v3[162] = swift_task_alloc();
  sub_100007224(&qword_100841F58, &unk_1006DEDE0);
  v3[163] = swift_task_alloc();
  v3[164] = swift_task_alloc();
  v3[165] = swift_task_alloc();
  sub_100007224(&qword_100833A88, qword_1006BF8E0);
  v3[166] = swift_task_alloc();

  return _swift_task_switch(sub_1003712B4, 0, 0);
}

uint64_t sub_1003712B4()
{
  sub_10000BA08((*(v0 + 936) + 72), *(*(v0 + 936) + 96));
  v1 = swift_task_alloc();
  *(v0 + 1336) = v1;
  *v1 = v0;
  v1[1] = sub_100371364;

  return sub_10010EDB0();
}

uint64_t sub_100371364(char a1)
{
  *(*v1 + 434) = a1;

  return _swift_task_switch(sub_100371464, 0, 0);
}

uint64_t sub_100371464(uint64_t a1)
{
  v114 = v1;
  if (*(v1 + 434) != 1)
  {
    defaultLogger()();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "ISO18013ResponseValidator KRL Feature is not enabled, aborting validation", v20, 2u);
    }

    v21 = *(v1 + 1256);
    v22 = *(v1 + 1232);
    v23 = *(v1 + 1224);

    (*(v22 + 8))(v21, v23);
    if (qword_100832BB8 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Milestone();
    sub_10003170C(v24, qword_100882128);
    Milestone.log()();
    goto LABEL_9;
  }

  v2 = *(v1 + 1328);
  v3 = *(v1 + 1296);
  v4 = *(v1 + 984);
  v5 = *(v1 + 976);
  v6 = *(v1 + 920);
  *(v1 + 433) = 0;
  v7 = *(v4 + 56);
  *(v1 + 1344) = v7;
  *(v1 + 1352) = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v7(v2, 1, 1, v5);
  v8 = sub_10037965C(v6);
  v10 = v9;
  *(v1 + 1360) = v8;
  *(v1 + 1368) = v9;
  ISO18013MobileSecurityObject.status.getter();
  v11 = type metadata accessor for ISO18013MobileSecurityObject.Status();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v3, 1, v11);
  v14 = *(v1 + 1320);
  v15 = *(v1 + 1296);
  if (v13 == 1)
  {
    v16 = *(v1 + 1080);
    v17 = *(v1 + 1072);
    sub_10000BE18(*(v1 + 1296), &qword_100841F50, &qword_1006DEDD8);
    (*(v16 + 56))(v14, 1, 1, v17);
  }

  else
  {
    ISO18013MobileSecurityObject.Status.identifierList.getter();
    (*(v12 + 8))(v15, v11);
  }

  v27 = *(v1 + 1312);
  v28 = *(v1 + 1080);
  v29 = *(v1 + 1072);
  sub_10000BBC4(*(v1 + 1320), v27, &qword_100841F58, &unk_1006DEDE0);
  v30 = *(v28 + 48);
  v31 = v30(v27, 1, v29);
  v32 = *(v1 + 1312);
  if (v31 == 1)
  {
    v102 = v8;
    v103 = v10;
    v106 = v30;
    sub_10000BE18(v32, &qword_100841F58, &unk_1006DEDE0);
    defaultLogger()();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "ISO18013ResponseValidator identifier from MSO is nil, create fallback using MSO...", v35, 2u);
    }

    v36 = *(v1 + 1288);
    v37 = *(v1 + 1232);
    v38 = *(v1 + 1224);
    v39 = *(v1 + 1216);
    v40 = *(v1 + 1208);
    v107 = *(v1 + 1200);
    v41 = *(v1 + 1192);
    v42 = *(v1 + 1184);
    v109 = *(v1 + 1176);

    v111 = *(v37 + 8);
    v111(v36, v38);
    ISO18013MobileSecurityObject.deviceKeyInfo.getter();
    ISO18013MobileSecurityObject.DeviceKeyInfo.deviceKey.getter();
    (*(v40 + 8))(v39, v107);
    v43 = COSEKey.publicKeyX963Representation.getter();
    v45 = v44;
    (*(v42 + 8))(v41, v109);
    if (v45 >> 60 == 15)
    {
      defaultLogger()();
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&_mh_execute_header, v46, v47, "ISO18013ResponseValidator could not get revocation identifier from MSO", v48, 2u);
      }

      v49 = *(v1 + 1328);
      v50 = *(v1 + 1320);
      v51 = *(v1 + 1264);
      v52 = *(v1 + 1224);

      v111(v51, v52);
      sub_10000BE18(v50, &qword_100841F58, &unk_1006DEDE0);
      sub_100373FD4((v1 + 433), v102, v103, v49);

      sub_10000BE18(v49, &qword_100833A88, qword_1006BF8E0);
LABEL_9:

      v25 = *(v1 + 8);

      return v25();
    }

    v58 = *(v1 + 1168);
    v59 = *(v1 + 1160);
    v104 = *(v1 + 1152);
    v60 = *(v1 + 1144);
    v61 = *(v1 + 1136);
    v62 = *(v1 + 1128);
    sub_10037A130(&qword_1008336E0, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
    dispatch thunk of HashFunction.init()();
    sub_10000B8B8(v43, v45);
    sub_10037939C(v43, v45, v60);
    v110 = v43;
    sub_10000BD94(v43, v45);
    dispatch thunk of HashFunction.finalize()();
    (*(v61 + 8))(v60, v62);
    sub_10037A130(&qword_1008336E8, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
    v55 = Digest.data.getter();
    v57 = v63;
    (*(v59 + 8))(v58, v104);
    sub_10000B8B8(v55, v57);
    defaultLogger()();
    sub_10000B8B8(v55, v57);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.debug.getter();
    sub_10000B90C(v55, v57);
    v66 = os_log_type_enabled(v64, v65);
    v67 = *(v1 + 1280);
    v68 = *(v1 + 1224);
    if (v66)
    {
      v69 = swift_slowAlloc();
      v108 = v67;
      v70 = swift_slowAlloc();
      v113 = v70;
      *v69 = 136315138;
      v71 = Data.base16EncodedString()();
      v105 = v68;
      sub_10000B90C(v55, v57);
      v72 = sub_100141FE4(v71._countAndFlagsBits, v71._object, &v113);

      *(v69 + 4) = v72;
      _os_log_impl(&_mh_execute_header, v64, v65, "ISO18013ResponseValidator created fallback identifier: %s", v69, 0xCu);
      sub_10000BB78(v70);

      sub_10000BD94(v110, v45);
      v73 = v105;
      v74 = v108;
    }

    else
    {
      sub_10000B90C(v55, v57);

      sub_10000BD94(v110, v45);
      v74 = v67;
      v73 = v68;
    }

    v111(v74, v73);
    v30 = v106;
  }

  else
  {
    v53 = *(v1 + 1080);
    v54 = *(v1 + 1072);
    v55 = ISO18013MobileSecurityObject.IdentifierList.id.getter();
    v57 = v56;
    (*(v53 + 8))(v32, v54);
  }

  *(v1 + 1384) = v57;
  *(v1 + 1376) = v55;
  v75 = *(v1 + 1304);
  v76 = *(v1 + 1072);
  sub_10000BBC4(*(v1 + 1320), v75, &qword_100841F58, &unk_1006DEDE0);
  v77 = v30(v75, 1, v76);
  v78 = *(v1 + 1304);
  v79 = *(v1 + 1120);
  if (v77 == 1)
  {
    sub_10000B8B8(v55, v57);
    sub_10000BE18(v78, &qword_100841F58, &unk_1006DEDE0);
    v80 = type metadata accessor for URL();
    (*(*(v80 - 8) + 56))(v79, 1, 1, v80);
    v81 = 0;
    v82 = 0xF000000000000000;
  }

  else
  {
    (*(*(v1 + 1080) + 32))(*(v1 + 1088), *(v1 + 1304), *(v1 + 1072));
    sub_10000B8B8(v55, v57);
    ISO18013MobileSecurityObject.IdentifierList.uri.getter();
    URL.init(string:)();

    v83 = ISO18013MobileSecurityObject.IdentifierList.certificate.getter();
    if (v84 >> 60 == 15)
    {
      v85 = *(v1 + 1064);
      v86 = *(v1 + 1056);
      v87 = *(v1 + 1048);
      v88 = *(v1 + 1040);
      v89 = *(v1 + 1032);
      v90 = *(v1 + 1024);
      ISO18013Response.Document.issuerSigned.getter();
      ISO18013Response.IssuerSigned.issuerAuth.getter();
      (*(v86 + 8))(v85, v87);
      v91 = COSE_Sign1.x509Chain.getter();
      (*(v89 + 8))(v88, v90);
      if (v91)
      {
        if (v91[2])
        {
          v81 = v91[4];
          v82 = v91[5];
          sub_10000B8B8(v81, v82);
        }

        else
        {
          v81 = 0;
          v82 = 0xF000000000000000;
        }
      }

      else
      {
        v81 = 0;
        v82 = 0xF000000000000000;
      }

      defaultLogger()();
      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.debug.getter();
      v94 = os_log_type_enabled(v92, v93);
      v95 = *(v1 + 1272);
      v96 = *(v1 + 1232);
      v97 = *(v1 + 1224);
      v98 = *(v1 + 1088);
      v99 = *(v1 + 1080);
      v112 = *(v1 + 1072);
      if (v94)
      {
        v100 = swift_slowAlloc();
        *v100 = 0;
        _os_log_impl(&_mh_execute_header, v92, v93, "ISO18013ResponseValidator revocation list metadata certificate missing; falling back to credential issuer signer certificate", v100, 2u);
      }

      (*(v96 + 8))(v95, v97);
      (*(v99 + 8))(v98, v112);
    }

    else
    {
      v81 = v83;
      v82 = v84;
      (*(*(v1 + 1080) + 8))(*(v1 + 1088), *(v1 + 1072));
    }
  }

  *(v1 + 1400) = v82;
  *(v1 + 1392) = v81;
  sub_10000BA08((*(v1 + 936) + 72), *(*(v1 + 936) + 96));
  v101 = swift_task_alloc();
  *(v1 + 1408) = v101;
  *v101 = v1;
  v101[1] = sub_10037214C;

  return sub_10010E948(v1 + 440);
}

uint64_t sub_10037214C()
{

  return _swift_task_switch(sub_100372248, 0, 0);
}

uint64_t sub_100372248()
{
  memcpy((v0 + 16), (v0 + 440), 0x1A1uLL);
  v1 = sub_10010F2A8(v0 + 16);
  v2 = 5.0;
  if (v1 != 1)
  {
    v3 = *(v0 + 384);
    v4 = *(v0 + 392);
    sub_10000BE18(v0 + 440, &qword_10083AAA0, &unk_1006D8E00);
    v2 = 5.0;
    if ((v4 & 1) == 0)
    {
      v2 = v3;
    }
  }

  *(v0 + 1416) = v2;

  return _swift_task_switch(sub_1003722FC, 0, 0);
}

uint64_t sub_1003722FC()
{
  v1 = v0[175];
  v2 = v0[174];
  v3 = v0[173];
  v4 = v0[172];
  v5 = v0[139];
  v6 = v0[138];
  v7 = v0[137];
  v8 = v0[117];
  sub_10000BBC4(v0[140], v5, &unk_100844540, &unk_1006BFBC0);
  v9 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v10 = (v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  v0[178] = v11;
  v11[2] = v8;
  v11[3] = v4;
  v11[4] = v3;
  sub_10034CEB4(v5, v11 + v9);
  v12 = (v11 + v10);
  *v12 = v2;
  v12[1] = v1;
  sub_10000B8B8(v4, v3);

  sub_1000363B4(v2, v1);
  v13 = swift_task_alloc();
  v0[179] = v13;
  sub_100007224(&qword_100841F60, &unk_1006DEE00);
  *v13 = v0;
  v13[1] = sub_100372494;
  v14.n128_u64[0] = v0[177];

  return withTaskTimeoutHandler<A>(timeout:operation:)(v14);
}

uint64_t sub_100372494()
{
  *(*v1 + 1440) = v0;

  if (v0)
  {
    v2 = sub_100372854;
  }

  else
  {

    v2 = sub_1003725B0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003725B0()
{
  v1 = *(v0 + 1400);
  v2 = *(v0 + 1392);
  v3 = *(v0 + 1384);
  v4 = *(v0 + 1376);
  v5 = *(v0 + 1320);
  v6 = *(v0 + 1120);
  sub_10010D5D4(*(v0 + 864), *(v0 + 872), *(v0 + 880), *(v0 + 888), *(v0 + 1360), *(v0 + 1368));
  sub_10000BD94(v2, v1);
  sub_10000B90C(v4, v3);
  sub_10000BD94(v4, v3);
  sub_10000BE18(v6, &unk_100844540, &unk_1006BFBC0);
  sub_10000BE18(v5, &qword_100841F58, &unk_1006DEDE0);
  v7 = *(v0 + 1328);
  sub_100373FD4((v0 + 433), *(v0 + 1360), *(v0 + 1368), v7);

  sub_10000BE18(v7, &qword_100833A88, qword_1006BF8E0);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100372854()
{
  v1 = *(v0 + 1440);

  *(v0 + 896) = v1;
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 968);
    v3 = *(v0 + 960);
    v4 = *(v0 + 952);
    v5 = *(v0 + 944);
    (*(*(v0 + 984) + 32))(*(v0 + 1008), *(v0 + 1016), *(v0 + 976));
    DIPError.code.getter();
    (*(v4 + 104))(v3, enum case for DIPError.Code.krlMatchedRevokedKey(_:), v5);
    sub_10037A130(&qword_10083B4D0, &type metadata accessor for DIPError.Code, &protocol conformance descriptor for DIPError.Code);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v6 = *(v4 + 8);
    v6(v3, v5);
    v6(v2, v5);
    if (*(v0 + 904) == *(v0 + 912))
    {
      v7 = *(v0 + 1008);
      v8 = *(v0 + 1000);
      v9 = *(v0 + 984);
      v10 = *(v0 + 976);

      defaultLogger()();
      v60 = *(v9 + 16);
      v60(v8, v7, v10);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();
      v13 = os_log_type_enabled(v11, v12);
      v14 = *(v0 + 1000);
      v15 = *(v0 + 984);
      v16 = *(v0 + 976);
      if (v13)
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v17 = 138412290;
        sub_10037A130(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        v60(v19, v14, v16);
        v20 = _swift_stdlib_bridgeErrorToNSError();
        v49 = *(v15 + 8);
        v49(v14, v16);
        *(v17 + 4) = v20;
        *v18 = v20;
        _os_log_impl(&_mh_execute_header, v11, v12, "ISO18013ResponseValidator matched credential key in revocation list: %@", v17, 0xCu);
        sub_10000BE18(v18, &unk_100833B50, &unk_1006D8FB0);
      }

      else
      {

        v49 = *(v15 + 8);
        v49(v14, v16);
      }

      v43 = *(v0 + 1392);
      v44 = *(v0 + 1400);
      v35 = *(v0 + 1376);
      v47 = *(v0 + 1360);
      v48 = *(v0 + 1368);
      v36 = *(v0 + 1344);
      v37 = *(v0 + 1328);
      v45 = *(v0 + 1384);
      v46 = *(v0 + 1320);
      v42 = *(v0 + 1120);
      v38 = *(v0 + 1008);
      v39 = *(v0 + 976);
      (*(*(v0 + 1232) + 8))();
      sub_10000BE18(v37, &qword_100833A88, qword_1006BF8E0);
      v60(v37, v38, v39);
      v36(v37, 0, 1, v39);
      *(v0 + 433) = 1;
      sub_10037A130(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      v60(v40, v38, v39);
      swift_willThrow();
      sub_10000BD94(v43, v44);
      sub_10000B90C(v35, v45);
      sub_10000BD94(v35, v45);
      v49(v38, v39);
      sub_10000BE18(v42, &unk_100844540, &unk_1006BFBC0);
      sub_10000BE18(v46, &qword_100841F58, &unk_1006DEDE0);

      sub_100373FD4((v0 + 433), v47, v48, v37);

      sub_10000BE18(v37, &qword_100833A88, qword_1006BF8E0);

      v34 = *(v0 + 8);
      goto LABEL_11;
    }

    (*(*(v0 + 984) + 8))(*(v0 + 1008), *(v0 + 976));
  }

  defaultLogger()();
  swift_errorRetain();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    swift_errorRetain();
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 4) = v25;
    *v24 = v25;
    _os_log_impl(&_mh_execute_header, v21, v22, "ISO18013ResponseValidator failed validate credential: %@", v23, 0xCu);
    sub_10000BE18(v24, &unk_100833B50, &unk_1006D8FB0);
  }

  v51 = *(v0 + 1392);
  v52 = *(v0 + 1400);
  v53 = *(v0 + 1376);
  v54 = *(v0 + 1384);
  v59 = *(v0 + 1344);
  v56 = *(v0 + 1320);
  v57 = *(v0 + 1328);
  v26 = *(v0 + 1240);
  v27 = *(v0 + 1232);
  v28 = *(v0 + 1224);
  v55 = *(v0 + 1120);
  v50 = *(v0 + 992);
  v29 = *(v0 + 984);
  v58 = *(v0 + 976);
  v30 = *(v0 + 968);
  v31 = *(v0 + 952);
  v32 = *(v0 + 944);

  (*(v27 + 8))(v26, v28);
  (*(v31 + 104))(v30, enum case for DIPError.Code.krlCouldNotFetch(_:), v32);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();

  sub_10000BD94(v51, v52);
  sub_10000B90C(v53, v54);
  sub_10000BD94(v53, v54);
  sub_10000BE18(v55, &unk_100844540, &unk_1006BFBC0);
  sub_10000BE18(v56, &qword_100841F58, &unk_1006DEDE0);
  sub_10000BE18(v57, &qword_100833A88, qword_1006BF8E0);
  (*(v29 + 32))(v57, v50, v58);
  v59(v57, 0, 1, v58);
  *(v0 + 433) = 2;
  v33 = *(v0 + 1328);
  sub_100373FD4((v0 + 433), *(v0 + 1360), *(v0 + 1368), v33);

  sub_10000BE18(v33, &qword_100833A88, qword_1006BF8E0);

  v34 = *(v0 + 8);
LABEL_11:

  return v34();
}

uint64_t sub_1003733A8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for ISO18013MobileSecurityObject();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for ISO18013Response.Document();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_1003734C4, 0, 0);
}

uint64_t sub_1003734C4(uint64_t a1)
{
  result = ISO18013Response.documents.getter();
  v1[10] = result;
  if (result)
  {
    v3 = *(result + 16);
    v1[11] = v3;
    if (v3)
    {
      v4 = v1[8];
      v1[12] = 0;
      if (*(result + 16))
      {
        v5 = v1[6];
        (*(v4 + 16))(v1[9], result + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v1[7]);
        sub_100373A30(v5);
        v7 = swift_task_alloc();
        v1[13] = v7;
        *v7 = v1;
        v7[1] = sub_100373670;
        v8 = v1[9];
        v9 = v1[6];

        return sub_100370D00(v8, v9);
      }

      else
      {
        __break(1u);
      }

      return result;
    }
  }

  v6 = v1[1];

  return v6();
}

uint64_t sub_100373670()
{
  *(*v1 + 112) = v0;

  if (v0)
  {

    v2 = sub_100373984;
  }

  else
  {
    v2 = sub_10037378C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10037378C()
{
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  v5 = v0[12] + 1;
  (*(v0[5] + 8))(v0[6], v0[4]);
  result = (*(v3 + 8))(v2, v4);
  if (v5 == v1)
  {

    v7 = v0[1];
LABEL_6:

    return v7();
  }

  v8 = v0[14];
  v9 = v0[12] + 1;
  v0[12] = v9;
  v10 = v0[10];
  if (v9 >= *(v10 + 16))
  {
    __break(1u);
    return result;
  }

  v11 = v0[6];
  (*(v0[8] + 16))(v0[9], v10 + ((*(v0[8] + 80) + 32) & ~*(v0[8] + 80)) + *(v0[8] + 72) * v9, v0[7]);
  sub_100373A30(v11);
  if (v8)
  {
    (*(v0[8] + 8))(v0[9], v0[7]);

    v7 = v0[1];
    goto LABEL_6;
  }

  v12 = swift_task_alloc();
  v0[13] = v12;
  *v12 = v0;
  v12[1] = sub_100373670;
  v13 = v0[9];
  v14 = v0[6];

  return sub_100370D00(v13, v14);
}

uint64_t sub_100373984()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  (*(v0[5] + 8))(v0[6], v0[4]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100373A30@<X0>(uint64_t a1@<X8>)
{
  v25[1] = a1;
  v1 = type metadata accessor for DIPError.Code();
  v29 = *(v1 - 8);
  v30 = v1;
  __chkstk_darwin(v1);
  v31 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Logger();
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007224(&qword_100841DE8, &qword_1006DEC18);
  v25[0] = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v25 - v7;
  v9 = type metadata accessor for ISO18013Response.IssuerSigned();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for COSE_Sign1();
  v13 = *(v32 - 8);
  __chkstk_darwin(v32);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  ISO18013Response.Document.issuerSigned.getter();
  ISO18013Response.IssuerSigned.issuerAuth.getter();
  (*(v10 + 8))(v12, v9);
  v16 = COSE_Sign1.payload.getter();
  if (v17 >> 60 == 15)
  {
    defaultLogger()();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "ISO18013ResponseValidator failed to parse MSO; payload is nil", v20, 2u);
    }

    (*(v26 + 8))(v5, v27);
    (*(v29 + 104))(v31, enum case for DIPError.Code.documentReaderMisformattedIssuerAuthStructure(_:), v30);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10037A130(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v21 = v16;
    v22 = v17;
    type metadata accessor for CBORDecoder();
    swift_allocObject();
    CBORDecoder.init()();
    sub_1000BA30C(&qword_100841DF0, &qword_100841DE8, &qword_1006DEC18, &protocol conformance descriptor for CBOREncodedCBOR<A>);
    v23 = v28;
    dispatch thunk of CBORDecoder.decode<A>(_:from:)();
    if (v23)
    {
      (*(v13 + 8))(v15, v32);

      return sub_10000BD94(v21, v22);
    }

    CBOREncodedCBOR.value.getter();
    sub_10000BD94(v21, v22);
    (*(v25[0] + 8))(v8, v6);
  }

  return (*(v13 + 8))(v15, v32);
}

void sub_100373FD4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DIPError.Code();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = type metadata accessor for DIPError();
  if ((*(*(v13 - 8) + 48))(a4, 1, v13))
  {
    v14 = 0xE400000000000000;
    v15 = 1280070990;
  }

  else
  {
    DIPError.code.getter();
    v16 = DIPError.Code.rawValue.getter();
    (*(v9 + 8))(v11, v8);
    aBlock[0] = v16;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v17;
  }

  v18 = String._bridgeToObjectiveC()();
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  *(v19 + 32) = v12;
  *(v19 + 40) = v15;
  *(v19 + 48) = v14;
  aBlock[4] = sub_100134634;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10010CF08;
  aBlock[3] = &unk_10080E430;
  v20 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v20);
}

uint64_t sub_10037420C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return _swift_task_switch(sub_100374238, 0, 0);
}

uint64_t sub_100374238()
{
  sub_10000BA08((v0[3] + 72), *(v0[3] + 96));
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_1003742EC;
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[4];

  return sub_100111BFC(v6, v4, v5, v2, v3, 0);
}

uint64_t sub_1003742EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  v11 = *v5;

  if (v4)
  {
    v12 = v11[1];

    return v12();
  }

  else
  {
    v10[10] = a4;
    v10[11] = a3;
    v10[12] = a2;
    v10[13] = a1;

    return _swift_task_switch(sub_100374460, 0, 0);
  }
}

uint64_t sub_100374460()
{
  v1 = *(v0 + 16);
  v2 = vextq_s8(*(v0 + 80), *(v0 + 80), 8uLL);
  *v1 = vextq_s8(*(v0 + 96), *(v0 + 96), 8uLL);
  v1[1] = v2;
  return (*(v0 + 8))();
}

uint64_t sub_10037448C(uint64_t a1)
{
  v29 = a1;
  v1 = type metadata accessor for AnyCodable();
  v31 = *(v1 - 8);
  v32 = v1;
  __chkstk_darwin(v1);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for ISO18013IssuerSignedItem();
  v4 = *(v30 - 8);
  __chkstk_darwin(v30);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007224(&qword_100841F68, &unk_1006DEE10);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for ISO18013KnownNamespaces();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = ISO18013Response.IssuerSigned.namespaces.getter();
  if (!v17)
  {
    goto LABEL_8;
  }

  v18 = v17;
  type metadata accessor for ISO18013_5_1_ElementIdentifier();
  sub_10037A130(&qword_100841F70, &type metadata accessor for ISO18013_5_1_ElementIdentifier, &protocol conformance descriptor for ISO18013_5_1_ElementIdentifier);
  dispatch thunk of static MobileDocumentElementIdentifier.namespaceIdentifier.getter();
  sub_10037A130(&qword_100841F78, &type metadata accessor for ISO18013KnownNamespaces, &protocol conformance descriptor for ISO18013KnownNamespaces);
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v14 + 8))(v16, v13);
  if (!*(v18 + 16))
  {

    goto LABEL_7;
  }

  v19 = sub_10003ADCC(v33, *(&v33 + 1));
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  v22 = *(*(v18 + 56) + 8 * v19);

  if (v22)
  {
    __chkstk_darwin(v23);
    *(&v28 - 2) = v29;
    sub_100161F54(sub_10037A2A4, v22, v12);

    goto LABEL_9;
  }

LABEL_8:
  v24 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  (*(*(v24 - 8) + 56))(v12, 1, 1, v24);
LABEL_9:
  sub_10000BBC4(v12, v10, &qword_100841F68, &unk_1006DEE10);
  v25 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v10, 1, v25) == 1)
  {
    sub_10000BE18(v12, &qword_100841F68, &unk_1006DEE10);
    sub_10000BE18(v10, &qword_100841F68, &unk_1006DEE10);
    v33 = 0u;
    v34 = 0u;
  }

  else
  {
    CBOREncodedCBOR.value.getter();
    (*(v26 + 8))(v10, v25);
    ISO18013IssuerSignedItem.elementValue.getter();
    (*(v4 + 8))(v6, v30);
    AnyCodable.value.getter();
    (*(v31 + 8))(v3, v32);
    sub_10000BE18(v12, &qword_100841F68, &unk_1006DEE10);
  }

  sub_100007224(&unk_100845ED0, &qword_1006DA1D0);
  if (swift_dynamicCast())
  {
    return v35;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100374A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v36 = a2;
  v2 = type metadata accessor for AnyCodable();
  v34 = *(v2 - 8);
  v35 = v2;
  __chkstk_darwin(v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for ISO18013IssuerSignedItem();
  v5 = *(v33 - 8);
  __chkstk_darwin(v33);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007224(&qword_100841F68, &unk_1006DEE10);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v32 - v12;
  v14 = type metadata accessor for ISO18013KnownNamespaces();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = ISO18013Response.IssuerSigned.namespaces.getter();
  if (!v18)
  {
    goto LABEL_8;
  }

  v19 = v18;
  type metadata accessor for ISO18013_AAMVA_ElementIdentifier();
  sub_10037A130(&qword_100841F88, &type metadata accessor for ISO18013_AAMVA_ElementIdentifier, &protocol conformance descriptor for ISO18013_AAMVA_ElementIdentifier);
  dispatch thunk of static MobileDocumentElementIdentifier.namespaceIdentifier.getter();
  sub_10037A130(&qword_100841F78, &type metadata accessor for ISO18013KnownNamespaces, &protocol conformance descriptor for ISO18013KnownNamespaces);
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v15 + 8))(v17, v14);
  if (!*(v19 + 16))
  {

    goto LABEL_7;
  }

  v20 = sub_10003ADCC(v37, *(&v37 + 1));
  v22 = v21;

  if ((v22 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  v23 = *(*(v19 + 56) + 8 * v20);

  if (v23)
  {
    __chkstk_darwin(v24);
    *(&v32 - 2) = v32;
    sub_100161F54(sub_10037A068, v23, v13);

    goto LABEL_9;
  }

LABEL_8:
  v25 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
LABEL_9:
  sub_10000BBC4(v13, v11, &qword_100841F68, &unk_1006DEE10);
  v26 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v11, 1, v26) == 1)
  {
    sub_10000BE18(v13, &qword_100841F68, &unk_1006DEE10);
    sub_10000BE18(v11, &qword_100841F68, &unk_1006DEE10);
    v37 = 0u;
    v38 = 0u;
  }

  else
  {
    CBOREncodedCBOR.value.getter();
    (*(v27 + 8))(v11, v26);
    ISO18013IssuerSignedItem.elementValue.getter();
    (*(v5 + 8))(v7, v33);
    AnyCodable.value.getter();
    (*(v34 + 8))(v4, v35);
    sub_10000BE18(v13, &qword_100841F68, &unk_1006DEE10);
  }

  sub_100007224(&unk_100845ED0, &qword_1006DA1D0);
  v28 = type metadata accessor for AnyCodableArray();
  v29 = v36;
  v30 = swift_dynamicCast();
  return (*(*(v28 - 8) + 56))(v29, v30 ^ 1u, 1, v28);
}

uint64_t sub_100374FC4(uint64_t a1)
{
  v29 = a1;
  v1 = type metadata accessor for AnyCodable();
  v31 = *(v1 - 8);
  v32 = v1;
  __chkstk_darwin(v1);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for ISO18013IssuerSignedItem();
  v4 = *(v30 - 8);
  __chkstk_darwin(v30);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007224(&qword_100841F68, &unk_1006DEE10);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for ISO18013KnownNamespaces();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = ISO18013Response.IssuerSigned.namespaces.getter();
  if (!v17)
  {
    goto LABEL_8;
  }

  v18 = v17;
  type metadata accessor for ISO18013_AAMVA_ElementIdentifier();
  sub_10037A130(&qword_100841F88, &type metadata accessor for ISO18013_AAMVA_ElementIdentifier, &protocol conformance descriptor for ISO18013_AAMVA_ElementIdentifier);
  dispatch thunk of static MobileDocumentElementIdentifier.namespaceIdentifier.getter();
  sub_10037A130(&qword_100841F78, &type metadata accessor for ISO18013KnownNamespaces, &protocol conformance descriptor for ISO18013KnownNamespaces);
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v14 + 8))(v16, v13);
  if (!*(v18 + 16))
  {

    goto LABEL_7;
  }

  v19 = sub_10003ADCC(v33, *(&v33 + 1));
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  v22 = *(*(v18 + 56) + 8 * v19);

  if (v22)
  {
    __chkstk_darwin(v23);
    *(&v28 - 2) = v29;
    sub_100161F54(sub_10037A2C0, v22, v12);

    goto LABEL_9;
  }

LABEL_8:
  v24 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  (*(*(v24 - 8) + 56))(v12, 1, 1, v24);
LABEL_9:
  sub_10000BBC4(v12, v10, &qword_100841F68, &unk_1006DEE10);
  v25 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v10, 1, v25) == 1)
  {
    sub_10000BE18(v12, &qword_100841F68, &unk_1006DEE10);
    sub_10000BE18(v10, &qword_100841F68, &unk_1006DEE10);
    v33 = 0u;
    v34 = 0u;
  }

  else
  {
    CBOREncodedCBOR.value.getter();
    (*(v26 + 8))(v10, v25);
    ISO18013IssuerSignedItem.elementValue.getter();
    (*(v4 + 8))(v6, v30);
    AnyCodable.value.getter();
    (*(v31 + 8))(v3, v32);
    sub_10000BE18(v12, &qword_100841F68, &unk_1006DEE10);
  }

  sub_100007224(&unk_100845ED0, &qword_1006DA1D0);
  if (swift_dynamicCast())
  {
    return v35;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10037552C(uint64_t a1)
{
  v31 = a1;
  v1 = type metadata accessor for AnyCodable();
  v33 = *(v1 - 8);
  v34 = v1;
  __chkstk_darwin(v1);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for ISO18013IssuerSignedItem();
  v4 = *(v32 - 8);
  __chkstk_darwin(v32);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007224(&qword_100841F68, &unk_1006DEE10);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ISO18013KnownNamespaces();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = ISO18013Response.IssuerSigned.namespaces.getter();
  if (!v17)
  {
    goto LABEL_8;
  }

  v18 = v17;
  type metadata accessor for ISO18013_AAMVA_ElementIdentifier();
  sub_10037A130(&qword_100841F88, &type metadata accessor for ISO18013_AAMVA_ElementIdentifier, &protocol conformance descriptor for ISO18013_AAMVA_ElementIdentifier);
  dispatch thunk of static MobileDocumentElementIdentifier.namespaceIdentifier.getter();
  sub_10037A130(&qword_100841F78, &type metadata accessor for ISO18013KnownNamespaces, &protocol conformance descriptor for ISO18013KnownNamespaces);
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v14 + 8))(v16, v13);
  if (!*(v18 + 16))
  {

    goto LABEL_7;
  }

  v19 = sub_10003ADCC(v35, *(&v35 + 1));
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  v22 = *(*(v18 + 56) + 8 * v19);

  if (v22)
  {
    __chkstk_darwin(v23);
    *(&v30 - 2) = v31;
    sub_100161F54(sub_10037A2C0, v22, v12);

    goto LABEL_9;
  }

LABEL_8:
  v24 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  (*(*(v24 - 8) + 56))(v12, 1, 1, v24);
LABEL_9:
  sub_10000BBC4(v12, v10, &qword_100841F68, &unk_1006DEE10);
  v25 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v10, 1, v25) == 1)
  {
    sub_10000BE18(v12, &qword_100841F68, &unk_1006DEE10);
    sub_10000BE18(v10, &qword_100841F68, &unk_1006DEE10);
    v35 = 0u;
    v36 = 0u;
  }

  else
  {
    CBOREncodedCBOR.value.getter();
    (*(v26 + 8))(v10, v25);
    ISO18013IssuerSignedItem.elementValue.getter();
    (*(v4 + 8))(v6, v32);
    AnyCodable.value.getter();
    (*(v33 + 8))(v3, v34);
    sub_10000BE18(v12, &qword_100841F68, &unk_1006DEE10);
  }

  sub_100007224(&unk_100845ED0, &qword_1006DA1D0);
  v27 = swift_dynamicCast();
  v28 = v37;
  if (!v27)
  {
    return 0;
  }

  return v28;
}

uint64_t sub_100375A98(uint64_t a1)
{
  v31 = a1;
  v1 = type metadata accessor for AnyCodable();
  v33 = *(v1 - 8);
  v34 = v1;
  __chkstk_darwin(v1);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for ISO18013IssuerSignedItem();
  v4 = *(v32 - 8);
  __chkstk_darwin(v32);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007224(&qword_100841F68, &unk_1006DEE10);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ISO18013KnownNamespaces();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = ISO18013Response.IssuerSigned.namespaces.getter();
  if (!v17)
  {
    goto LABEL_8;
  }

  v18 = v17;
  type metadata accessor for ISO18013_5_1_ElementIdentifier();
  sub_10037A130(&qword_100841F70, &type metadata accessor for ISO18013_5_1_ElementIdentifier, &protocol conformance descriptor for ISO18013_5_1_ElementIdentifier);
  dispatch thunk of static MobileDocumentElementIdentifier.namespaceIdentifier.getter();
  sub_10037A130(&qword_100841F78, &type metadata accessor for ISO18013KnownNamespaces, &protocol conformance descriptor for ISO18013KnownNamespaces);
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v14 + 8))(v16, v13);
  if (!*(v18 + 16))
  {

    goto LABEL_7;
  }

  v19 = sub_10003ADCC(v35, *(&v35 + 1));
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  v22 = *(*(v18 + 56) + 8 * v19);

  if (v22)
  {
    __chkstk_darwin(v23);
    *(&v30 - 2) = v31;
    sub_100161F54(sub_10037A2A4, v22, v12);

    goto LABEL_9;
  }

LABEL_8:
  v24 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  (*(*(v24 - 8) + 56))(v12, 1, 1, v24);
LABEL_9:
  sub_10000BBC4(v12, v10, &qword_100841F68, &unk_1006DEE10);
  v25 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v10, 1, v25) == 1)
  {
    sub_10000BE18(v12, &qword_100841F68, &unk_1006DEE10);
    sub_10000BE18(v10, &qword_100841F68, &unk_1006DEE10);
    v35 = 0u;
    v36 = 0u;
  }

  else
  {
    CBOREncodedCBOR.value.getter();
    (*(v26 + 8))(v10, v25);
    ISO18013IssuerSignedItem.elementValue.getter();
    (*(v4 + 8))(v6, v32);
    AnyCodable.value.getter();
    (*(v33 + 8))(v3, v34);
    sub_10000BE18(v12, &qword_100841F68, &unk_1006DEE10);
  }

  sub_100007224(&unk_100845ED0, &qword_1006DA1D0);
  v27 = swift_dynamicCast();
  v28 = v37;
  if (!v27)
  {
    return 0;
  }

  return v28;
}

double sub_100376004@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v30 = a1;
  v34 = a2;
  v2 = type metadata accessor for AnyCodable();
  v32 = *(v2 - 8);
  v33 = v2;
  __chkstk_darwin(v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for ISO18013IssuerSignedItem();
  v5 = *(v31 - 8);
  __chkstk_darwin(v31);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007224(&qword_100841F68, &unk_1006DEE10);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v30 - v12;
  v14 = type metadata accessor for ISO18013KnownNamespaces();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = ISO18013Response.IssuerSigned.namespaces.getter();
  if (!v18)
  {
    goto LABEL_8;
  }

  v19 = v18;
  type metadata accessor for ISO18013_5_1_ElementIdentifier();
  sub_10037A130(&qword_100841F70, &type metadata accessor for ISO18013_5_1_ElementIdentifier, &protocol conformance descriptor for ISO18013_5_1_ElementIdentifier);
  dispatch thunk of static MobileDocumentElementIdentifier.namespaceIdentifier.getter();
  sub_10037A130(&qword_100841F78, &type metadata accessor for ISO18013KnownNamespaces, &protocol conformance descriptor for ISO18013KnownNamespaces);
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v15 + 8))(v17, v14);
  if (!*(v19 + 16))
  {

    goto LABEL_7;
  }

  v20 = sub_10003ADCC(v35, *(&v35 + 1));
  v22 = v21;

  if ((v22 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  v23 = *(*(v19 + 56) + 8 * v20);

  if (v23)
  {
    __chkstk_darwin(v24);
    *(&v30 - 2) = v30;
    sub_100161F54(sub_10037A004, v23, v13);

    goto LABEL_9;
  }

LABEL_8:
  v25 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
LABEL_9:
  sub_10000BBC4(v13, v11, &qword_100841F68, &unk_1006DEE10);
  v26 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v11, 1, v26) == 1)
  {
    sub_10000BE18(v13, &qword_100841F68, &unk_1006DEE10);
    sub_10000BE18(v11, &qword_100841F68, &unk_1006DEE10);
    v35 = 0u;
    v36 = 0u;
  }

  else
  {
    CBOREncodedCBOR.value.getter();
    (*(v27 + 8))(v11, v26);
    ISO18013IssuerSignedItem.elementValue.getter();
    (*(v5 + 8))(v7, v31);
    AnyCodable.value.getter();
    (*(v32 + 8))(v4, v33);
    sub_10000BE18(v13, &qword_100841F68, &unk_1006DEE10);
  }

  sub_100007224(&unk_100845ED0, &qword_1006DA1D0);
  v28 = v34;
  if ((swift_dynamicCast() & 1) == 0)
  {
    result = 0.0;
    *v28 = xmmword_1006BF650;
  }

  return result;
}

uint64_t sub_1003765A0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(char *)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v40 = a3;
  v41 = a4;
  v35 = a1;
  v36 = a2;
  v4 = type metadata accessor for AnyCodable();
  v38 = *(v4 - 8);
  v39 = v4;
  __chkstk_darwin(v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for ISO18013IssuerSignedItem();
  v7 = *(v37 - 8);
  __chkstk_darwin(v37);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100007224(&qword_100841F68, &unk_1006DEE10);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v35 - v14;
  v16 = type metadata accessor for ISO18013KnownNamespaces();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = ISO18013Response.IssuerSigned.namespaces.getter();
  if (!v20)
  {
    goto LABEL_8;
  }

  v21 = v20;
  type metadata accessor for ISO18013_5_1_ElementIdentifier();
  sub_10037A130(&qword_100841F70, &type metadata accessor for ISO18013_5_1_ElementIdentifier, &protocol conformance descriptor for ISO18013_5_1_ElementIdentifier);
  dispatch thunk of static MobileDocumentElementIdentifier.namespaceIdentifier.getter();
  sub_10037A130(&qword_100841F78, &type metadata accessor for ISO18013KnownNamespaces, &protocol conformance descriptor for ISO18013KnownNamespaces);
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v17 + 8))(v19, v16);
  if (!*(v21 + 16))
  {

    goto LABEL_7;
  }

  v22 = sub_10003ADCC(v42, *(&v42 + 1));
  v24 = v23;

  if ((v24 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  v25 = *(*(v21 + 56) + 8 * v22);

  if (v25)
  {
    __chkstk_darwin(v26);
    v27 = v36;
    *(&v35 - 2) = v35;
    sub_100161F54(v27, v25, v15);

    goto LABEL_9;
  }

LABEL_8:
  v28 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  (*(*(v28 - 8) + 56))(v15, 1, 1, v28);
LABEL_9:
  sub_10000BBC4(v15, v13, &qword_100841F68, &unk_1006DEE10);
  v29 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v13, 1, v29) == 1)
  {
    sub_10000BE18(v15, &qword_100841F68, &unk_1006DEE10);
    sub_10000BE18(v13, &qword_100841F68, &unk_1006DEE10);
    v42 = 0u;
    v43 = 0u;
  }

  else
  {
    CBOREncodedCBOR.value.getter();
    (*(v30 + 8))(v13, v29);
    ISO18013IssuerSignedItem.elementValue.getter();
    (*(v7 + 8))(v9, v37);
    AnyCodable.value.getter();
    (*(v38 + 8))(v6, v39);
    sub_10000BE18(v15, &qword_100841F68, &unk_1006DEE10);
  }

  sub_100007224(&unk_100845ED0, &qword_1006DA1D0);
  v31 = v40(0);
  v32 = v41;
  v33 = swift_dynamicCast();
  return (*(*(v31 - 8) + 56))(v32, v33 ^ 1u, 1, v31);
}

uint64_t sub_100376B38(uint64_t a1)
{
  v29 = a1;
  v1 = type metadata accessor for AnyCodable();
  v31 = *(v1 - 8);
  v32 = v1;
  __chkstk_darwin(v1);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for ISO18013IssuerSignedItem();
  v4 = *(v30 - 8);
  __chkstk_darwin(v30);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007224(&qword_100841F68, &unk_1006DEE10);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for ISO18013KnownNamespaces();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = ISO18013Response.IssuerSigned.namespaces.getter();
  if (!v17)
  {
    goto LABEL_8;
  }

  v18 = v17;
  type metadata accessor for ISO23220_1_Japan_ElementIdentifier();
  sub_10037A130(&qword_10083A9C8, &type metadata accessor for ISO23220_1_Japan_ElementIdentifier, &protocol conformance descriptor for ISO23220_1_Japan_ElementIdentifier);
  dispatch thunk of static MobileDocumentElementIdentifier.namespaceIdentifier.getter();
  sub_10037A130(&qword_100841F78, &type metadata accessor for ISO18013KnownNamespaces, &protocol conformance descriptor for ISO18013KnownNamespaces);
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v14 + 8))(v16, v13);
  if (!*(v18 + 16))
  {

    goto LABEL_7;
  }

  v19 = sub_10003ADCC(v33, *(&v33 + 1));
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  v22 = *(*(v18 + 56) + 8 * v19);

  if (v22)
  {
    __chkstk_darwin(v23);
    *(&v28 - 2) = v29;
    sub_100161F54(sub_10037A2F8, v22, v12);

    goto LABEL_9;
  }

LABEL_8:
  v24 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  (*(*(v24 - 8) + 56))(v12, 1, 1, v24);
LABEL_9:
  sub_10000BBC4(v12, v10, &qword_100841F68, &unk_1006DEE10);
  v25 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v10, 1, v25) == 1)
  {
    sub_10000BE18(v12, &qword_100841F68, &unk_1006DEE10);
    sub_10000BE18(v10, &qword_100841F68, &unk_1006DEE10);
    v33 = 0u;
    v34 = 0u;
  }

  else
  {
    CBOREncodedCBOR.value.getter();
    (*(v26 + 8))(v10, v25);
    ISO18013IssuerSignedItem.elementValue.getter();
    (*(v4 + 8))(v6, v30);
    AnyCodable.value.getter();
    (*(v31 + 8))(v3, v32);
    sub_10000BE18(v12, &qword_100841F68, &unk_1006DEE10);
  }

  sub_100007224(&unk_100845ED0, &qword_1006DA1D0);
  if (swift_dynamicCast())
  {
    return v35;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003770A0(uint64_t a1)
{
  v31 = a1;
  v1 = type metadata accessor for AnyCodable();
  v33 = *(v1 - 8);
  v34 = v1;
  __chkstk_darwin(v1);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for ISO18013IssuerSignedItem();
  v4 = *(v32 - 8);
  __chkstk_darwin(v32);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007224(&qword_100841F68, &unk_1006DEE10);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ISO18013KnownNamespaces();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = ISO18013Response.IssuerSigned.namespaces.getter();
  if (!v17)
  {
    goto LABEL_8;
  }

  v18 = v17;
  type metadata accessor for ISO23220_1_ElementIdentifier();
  sub_10037A130(&qword_10083A9C0, &type metadata accessor for ISO23220_1_ElementIdentifier, &protocol conformance descriptor for ISO23220_1_ElementIdentifier);
  dispatch thunk of static MobileDocumentElementIdentifier.namespaceIdentifier.getter();
  sub_10037A130(&qword_100841F78, &type metadata accessor for ISO18013KnownNamespaces, &protocol conformance descriptor for ISO18013KnownNamespaces);
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v14 + 8))(v16, v13);
  if (!*(v18 + 16))
  {

    goto LABEL_7;
  }

  v19 = sub_10003ADCC(v35, *(&v35 + 1));
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  v22 = *(*(v18 + 56) + 8 * v19);

  if (v22)
  {
    __chkstk_darwin(v23);
    *(&v30 - 2) = v31;
    sub_100161F54(sub_10037A2DC, v22, v12);

    goto LABEL_9;
  }

LABEL_8:
  v24 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  (*(*(v24 - 8) + 56))(v12, 1, 1, v24);
LABEL_9:
  sub_10000BBC4(v12, v10, &qword_100841F68, &unk_1006DEE10);
  v25 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v10, 1, v25) == 1)
  {
    sub_10000BE18(v12, &qword_100841F68, &unk_1006DEE10);
    sub_10000BE18(v10, &qword_100841F68, &unk_1006DEE10);
    v35 = 0u;
    v36 = 0u;
  }

  else
  {
    CBOREncodedCBOR.value.getter();
    (*(v26 + 8))(v10, v25);
    ISO18013IssuerSignedItem.elementValue.getter();
    (*(v4 + 8))(v6, v32);
    AnyCodable.value.getter();
    (*(v33 + 8))(v3, v34);
    sub_10000BE18(v12, &qword_100841F68, &unk_1006DEE10);
  }

  sub_100007224(&unk_100845ED0, &qword_1006DA1D0);
  v27 = swift_dynamicCast();
  v28 = v37;
  if (!v27)
  {
    return 0;
  }

  return v28;
}

double sub_10037760C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v30 = a1;
  v34 = a2;
  v2 = type metadata accessor for AnyCodable();
  v32 = *(v2 - 8);
  v33 = v2;
  __chkstk_darwin(v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for ISO18013IssuerSignedItem();
  v5 = *(v31 - 8);
  __chkstk_darwin(v31);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007224(&qword_100841F68, &unk_1006DEE10);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v30 - v12;
  v14 = type metadata accessor for ISO18013KnownNamespaces();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = ISO18013Response.IssuerSigned.namespaces.getter();
  if (!v18)
  {
    goto LABEL_8;
  }

  v19 = v18;
  type metadata accessor for ISO23220_1_Japan_ElementIdentifier();
  sub_10037A130(&qword_10083A9C8, &type metadata accessor for ISO23220_1_Japan_ElementIdentifier, &protocol conformance descriptor for ISO23220_1_Japan_ElementIdentifier);
  dispatch thunk of static MobileDocumentElementIdentifier.namespaceIdentifier.getter();
  sub_10037A130(&qword_100841F78, &type metadata accessor for ISO18013KnownNamespaces, &protocol conformance descriptor for ISO18013KnownNamespaces);
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v15 + 8))(v17, v14);
  if (!*(v19 + 16))
  {

    goto LABEL_7;
  }

  v20 = sub_10003ADCC(v35, *(&v35 + 1));
  v22 = v21;

  if ((v22 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  v23 = *(*(v19 + 56) + 8 * v20);

  if (v23)
  {
    __chkstk_darwin(v24);
    *(&v30 - 2) = v30;
    sub_100161F54(sub_10037A0CC, v23, v13);

    goto LABEL_9;
  }

LABEL_8:
  v25 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
LABEL_9:
  sub_10000BBC4(v13, v11, &qword_100841F68, &unk_1006DEE10);
  v26 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v11, 1, v26) == 1)
  {
    sub_10000BE18(v13, &qword_100841F68, &unk_1006DEE10);
    sub_10000BE18(v11, &qword_100841F68, &unk_1006DEE10);
    v35 = 0u;
    v36 = 0u;
  }

  else
  {
    CBOREncodedCBOR.value.getter();
    (*(v27 + 8))(v11, v26);
    ISO18013IssuerSignedItem.elementValue.getter();
    (*(v5 + 8))(v7, v31);
    AnyCodable.value.getter();
    (*(v32 + 8))(v4, v33);
    sub_10000BE18(v13, &qword_100841F68, &unk_1006DEE10);
  }

  sub_100007224(&unk_100845ED0, &qword_1006DA1D0);
  v28 = v34;
  if ((swift_dynamicCast() & 1) == 0)
  {
    result = 0.0;
    *v28 = xmmword_1006BF650;
  }

  return result;
}

uint64_t sub_100377B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v36 = a2;
  v2 = type metadata accessor for AnyCodable();
  v34 = *(v2 - 8);
  v35 = v2;
  __chkstk_darwin(v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for ISO18013IssuerSignedItem();
  v5 = *(v33 - 8);
  __chkstk_darwin(v33);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007224(&qword_100841F68, &unk_1006DEE10);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v32 - v12;
  v14 = type metadata accessor for ISO18013KnownNamespaces();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = ISO18013Response.IssuerSigned.namespaces.getter();
  if (!v18)
  {
    goto LABEL_8;
  }

  v19 = v18;
  type metadata accessor for ISO23220_1_ElementIdentifier();
  sub_10037A130(&qword_10083A9C0, &type metadata accessor for ISO23220_1_ElementIdentifier, &protocol conformance descriptor for ISO23220_1_ElementIdentifier);
  dispatch thunk of static MobileDocumentElementIdentifier.namespaceIdentifier.getter();
  sub_10037A130(&qword_100841F78, &type metadata accessor for ISO18013KnownNamespaces, &protocol conformance descriptor for ISO18013KnownNamespaces);
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v15 + 8))(v17, v14);
  if (!*(v19 + 16))
  {

    goto LABEL_7;
  }

  v20 = sub_10003ADCC(v37, *(&v37 + 1));
  v22 = v21;

  if ((v22 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  v23 = *(*(v19 + 56) + 8 * v20);

  if (v23)
  {
    __chkstk_darwin(v24);
    *(&v32 - 2) = v32;
    sub_100161F54(sub_10037A2DC, v23, v13);

    goto LABEL_9;
  }

LABEL_8:
  v25 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
LABEL_9:
  sub_10000BBC4(v13, v11, &qword_100841F68, &unk_1006DEE10);
  v26 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v11, 1, v26) == 1)
  {
    sub_10000BE18(v13, &qword_100841F68, &unk_1006DEE10);
    sub_10000BE18(v11, &qword_100841F68, &unk_1006DEE10);
    v37 = 0u;
    v38 = 0u;
  }

  else
  {
    CBOREncodedCBOR.value.getter();
    (*(v27 + 8))(v11, v26);
    ISO18013IssuerSignedItem.elementValue.getter();
    (*(v5 + 8))(v7, v33);
    AnyCodable.value.getter();
    (*(v34 + 8))(v4, v35);
    sub_10000BE18(v13, &qword_100841F68, &unk_1006DEE10);
  }

  sub_100007224(&unk_100845ED0, &qword_1006DA1D0);
  v28 = type metadata accessor for Date();
  v29 = v36;
  v30 = swift_dynamicCast();
  return (*(*(v28 - 8) + 56))(v29, v30 ^ 1u, 1, v28);
}

uint64_t sub_100378120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v36 = a2;
  v2 = type metadata accessor for AnyCodable();
  v34 = *(v2 - 8);
  v35 = v2;
  __chkstk_darwin(v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for ISO18013IssuerSignedItem();
  v5 = *(v33 - 8);
  __chkstk_darwin(v33);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007224(&qword_100841F68, &unk_1006DEE10);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v32 - v12;
  v14 = type metadata accessor for ISO18013KnownNamespaces();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = ISO18013Response.IssuerSigned.namespaces.getter();
  if (!v18)
  {
    goto LABEL_8;
  }

  v19 = v18;
  type metadata accessor for ISO23220_1_ElementIdentifier();
  sub_10037A130(&qword_10083A9C0, &type metadata accessor for ISO23220_1_ElementIdentifier, &protocol conformance descriptor for ISO23220_1_ElementIdentifier);
  dispatch thunk of static MobileDocumentElementIdentifier.namespaceIdentifier.getter();
  sub_10037A130(&qword_100841F78, &type metadata accessor for ISO18013KnownNamespaces, &protocol conformance descriptor for ISO18013KnownNamespaces);
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v15 + 8))(v17, v14);
  if (!*(v19 + 16))
  {

    goto LABEL_7;
  }

  v20 = sub_10003ADCC(v37, *(&v37 + 1));
  v22 = v21;

  if ((v22 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  v23 = *(*(v19 + 56) + 8 * v20);

  if (v23)
  {
    __chkstk_darwin(v24);
    *(&v32 - 2) = v32;
    sub_100161F54(sub_10037A2DC, v23, v13);

    goto LABEL_9;
  }

LABEL_8:
  v25 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
LABEL_9:
  sub_10000BBC4(v13, v11, &qword_100841F68, &unk_1006DEE10);
  v26 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v11, 1, v26) == 1)
  {
    sub_10000BE18(v13, &qword_100841F68, &unk_1006DEE10);
    sub_10000BE18(v11, &qword_100841F68, &unk_1006DEE10);
    v37 = 0u;
    v38 = 0u;
  }

  else
  {
    CBOREncodedCBOR.value.getter();
    (*(v27 + 8))(v11, v26);
    ISO18013IssuerSignedItem.elementValue.getter();
    (*(v5 + 8))(v7, v33);
    AnyCodable.value.getter();
    (*(v34 + 8))(v4, v35);
    sub_10000BE18(v13, &qword_100841F68, &unk_1006DEE10);
  }

  sub_100007224(&unk_100845ED0, &qword_1006DA1D0);
  v28 = type metadata accessor for ISO23220.BirthDate();
  v29 = v36;
  v30 = swift_dynamicCast();
  return (*(*(v28 - 8) + 56))(v29, v30 ^ 1u, 1, v28);
}

uint64_t sub_1003786C4(uint64_t a1)
{
  v29 = a1;
  v1 = type metadata accessor for AnyCodable();
  v31 = *(v1 - 8);
  v32 = v1;
  __chkstk_darwin(v1);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for ISO18013IssuerSignedItem();
  v4 = *(v30 - 8);
  __chkstk_darwin(v30);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007224(&qword_100841F68, &unk_1006DEE10);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for ISO18013KnownNamespaces();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = ISO18013Response.IssuerSigned.namespaces.getter();
  if (!v17)
  {
    goto LABEL_8;
  }

  v18 = v17;
  type metadata accessor for ISO23220_1_ElementIdentifier();
  sub_10037A130(&qword_10083A9C0, &type metadata accessor for ISO23220_1_ElementIdentifier, &protocol conformance descriptor for ISO23220_1_ElementIdentifier);
  dispatch thunk of static MobileDocumentElementIdentifier.namespaceIdentifier.getter();
  sub_10037A130(&qword_100841F78, &type metadata accessor for ISO18013KnownNamespaces, &protocol conformance descriptor for ISO18013KnownNamespaces);
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v14 + 8))(v16, v13);
  if (!*(v18 + 16))
  {

    goto LABEL_7;
  }

  v19 = sub_10003ADCC(v33, *(&v33 + 1));
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  v22 = *(*(v18 + 56) + 8 * v19);

  if (v22)
  {
    __chkstk_darwin(v23);
    *(&v28 - 2) = v29;
    sub_100161F54(sub_10037A2DC, v22, v12);

    goto LABEL_9;
  }

LABEL_8:
  v24 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  (*(*(v24 - 8) + 56))(v12, 1, 1, v24);
LABEL_9:
  sub_10000BBC4(v12, v10, &qword_100841F68, &unk_1006DEE10);
  v25 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v10, 1, v25) == 1)
  {
    sub_10000BE18(v12, &qword_100841F68, &unk_1006DEE10);
    sub_10000BE18(v10, &qword_100841F68, &unk_1006DEE10);
    v33 = 0u;
    v34 = 0u;
  }

  else
  {
    CBOREncodedCBOR.value.getter();
    (*(v26 + 8))(v10, v25);
    ISO18013IssuerSignedItem.elementValue.getter();
    (*(v4 + 8))(v6, v30);
    AnyCodable.value.getter();
    (*(v31 + 8))(v3, v32);
    sub_10000BE18(v12, &qword_100841F68, &unk_1006DEE10);
  }

  sub_100007224(&unk_100845ED0, &qword_1006DA1D0);
  if (swift_dynamicCast())
  {
    return v35;
  }

  else
  {
    return 0;
  }
}

double sub_100378C2C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v30 = a1;
  v34 = a2;
  v2 = type metadata accessor for AnyCodable();
  v32 = *(v2 - 8);
  v33 = v2;
  __chkstk_darwin(v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for ISO18013IssuerSignedItem();
  v5 = *(v31 - 8);
  __chkstk_darwin(v31);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007224(&qword_100841F68, &unk_1006DEE10);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v30 - v12;
  v14 = type metadata accessor for ISO18013KnownNamespaces();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = ISO18013Response.IssuerSigned.namespaces.getter();
  if (!v18)
  {
    goto LABEL_8;
  }

  v19 = v18;
  type metadata accessor for ISO23220_1_ElementIdentifier();
  sub_10037A130(&qword_10083A9C0, &type metadata accessor for ISO23220_1_ElementIdentifier, &protocol conformance descriptor for ISO23220_1_ElementIdentifier);
  dispatch thunk of static MobileDocumentElementIdentifier.namespaceIdentifier.getter();
  sub_10037A130(&qword_100841F78, &type metadata accessor for ISO18013KnownNamespaces, &protocol conformance descriptor for ISO18013KnownNamespaces);
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v15 + 8))(v17, v14);
  if (!*(v19 + 16))
  {

    goto LABEL_7;
  }

  v20 = sub_10003ADCC(v35, *(&v35 + 1));
  v22 = v21;

  if ((v22 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  v23 = *(*(v19 + 56) + 8 * v20);

  if (v23)
  {
    __chkstk_darwin(v24);
    *(&v30 - 2) = v30;
    sub_100161F54(sub_10037A178, v23, v13);

    goto LABEL_9;
  }

LABEL_8:
  v25 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
LABEL_9:
  sub_10000BBC4(v13, v11, &qword_100841F68, &unk_1006DEE10);
  v26 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v11, 1, v26) == 1)
  {
    sub_10000BE18(v13, &qword_100841F68, &unk_1006DEE10);
    sub_10000BE18(v11, &qword_100841F68, &unk_1006DEE10);
    v35 = 0u;
    v36 = 0u;
  }

  else
  {
    CBOREncodedCBOR.value.getter();
    (*(v27 + 8))(v11, v26);
    ISO18013IssuerSignedItem.elementValue.getter();
    (*(v5 + 8))(v7, v31);
    AnyCodable.value.getter();
    (*(v32 + 8))(v4, v33);
    sub_10000BE18(v13, &qword_100841F68, &unk_1006DEE10);
  }

  sub_100007224(&unk_100845ED0, &qword_1006DA1D0);
  v28 = v34;
  if ((swift_dynamicCast() & 1) == 0)
  {
    result = 0.0;
    *v28 = xmmword_1006BF650;
  }

  return result;
}

uint64_t sub_10037919C()
{
  swift_unknownObjectRelease();
  sub_10000BB78((v0 + 32));
  sub_10000BB78((v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t sub_100379208(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v19[0] = a6;
  v19[1] = a2;
  v9 = type metadata accessor for ISO18013IssuerSignedItem();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007224(&qword_10083C040, &qword_1006DA538);
  CBOREncodedCBOR.value.getter();
  v13 = ISO18013IssuerSignedItem.elementIdentifier.getter();
  v15 = v14;
  (*(v10 + 8))(v12, v9);
  a3(0);
  sub_10037A130(a4, a5, v19[0]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v13 == v19[2] && v15 == v19[3])
  {
    v17 = 1;
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v17 & 1;
}

uint64_t sub_10037939C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      type metadata accessor for SHA256();
      sub_10037A130(&qword_1008336E0, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_10037957C(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_10037957C(v5, v6);
  }

  type metadata accessor for SHA256();
  sub_10037A130(&qword_1008336E0, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_10037957C(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for SHA256();
      sub_10037A130(&qword_1008336E0, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10037965C(uint64_t a1)
{
  v2 = type metadata accessor for ISO18013Response.Document();
  v53 = *(v2 - 8);
  v54 = v2;
  __chkstk_darwin(v2);
  v52 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v56 = *(v4 - 8);
  v57 = v4;
  __chkstk_darwin(v4);
  v55 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale.Region();
  v59 = *(v6 - 8);
  v60 = v6;
  __chkstk_darwin(v6);
  v58 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
  v66 = *(v8 - 8);
  v67 = v8;
  __chkstk_darwin(v8);
  v64 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for ISO18013Response.IssuerSigned();
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ISO18013KnownDocTypes();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v61 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v52 - v15;
  v68 = a1;
  v17 = ISO18013Response.Document.docType.getter();
  v19 = v18;
  v20 = *(v12 + 104);
  v20(v16, enum case for ISO18013KnownDocTypes.iso18013_5_1_mDL(_:), v11);
  v21 = ISO18013KnownDocTypes.rawValue.getter();
  v23 = v22;
  v24 = *(v12 + 8);
  v25 = v16;
  v26 = v17;
  v24(v25, v11);
  if (v21 == v17 && v23 == v19)
  {

LABEL_5:

    v28 = v62;
    ISO18013Response.Document.issuerSigned.getter();
    v30 = v66;
    v29 = v67;
    v31 = v64;
    (*(v66 + 104))(v64, enum case for ISO18013_5_1_ElementIdentifier.issuingJurisdiction(_:), v67);
    v32 = sub_10037448C(v31);
    (*(v30 + 8))(v31, v29);
    (*(v63 + 8))(v28, v65);
    return v32;
  }

  v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v27)
  {
    goto LABEL_5;
  }

  v34 = v61;
  v20(v61, enum case for ISO18013KnownDocTypes.japanNationalIDCard(_:), v11);
  v35 = ISO18013KnownDocTypes.rawValue.getter();
  v37 = v36;
  v24(v34, v11);
  if (v35 == v26 && v37 == v19)
  {

LABEL_11:
    v39 = v58;
    Locale.Region.init(stringLiteral:)();
    v32 = Locale.Region.identifier.getter();
    (*(v59 + 8))(v39, v60);
    return v32;
  }

  v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v38)
  {
    goto LABEL_11;
  }

  v40 = v55;
  defaultLogger()();
  v42 = v52;
  v41 = v53;
  v43 = v54;
  (*(v53 + 16))(v52, v68, v54);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v69 = v47;
    *v46 = 136315138;
    v48 = ISO18013Response.Document.docType.getter();
    v50 = v49;
    (*(v41 + 8))(v42, v43);
    v51 = sub_100141FE4(v48, v50, &v69);

    *(v46 + 4) = v51;
    _os_log_impl(&_mh_execute_header, v44, v45, "ISO18013ResponseValidator could not get issuing jurisdiction for %s", v46, 0xCu);
    sub_10000BB78(v47);
  }

  else
  {

    (*(v41 + 8))(v42, v43);
  }

  (*(v56 + 8))(v40, v57);
  return 0;
}

uint64_t sub_100379D14()
{
  v1 = *(sub_100007224(&unk_100844540, &unk_1006BFBC0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  sub_10000B90C(*(v0 + 24), *(v0 + 32));
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = *(v0 + v4 + 8);
  if (v7 >> 60 != 15)
  {
    sub_10000B90C(*(v0 + v4), v7);
  }

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_100379E64(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100007224(&unk_100844540, &unk_1006BFBC0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100041F04;

  return sub_10037420C(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_100379FAC()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100379FEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10037A130(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10037A1DC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_100027B9C;

  return sub_10036F09C(a1, a2, v6, v7, v9, v8);
}

char *sub_10037A314(uint64_t a1, int a2)
{
  v173 = a2;
  v168 = type metadata accessor for MobileDocumentElement();
  v167 = *(v168 - 8);
  __chkstk_darwin(v168);
  v166 = &v166 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = type metadata accessor for MobileDocumentType();
  v170 = *(v171 - 8);
  __chkstk_darwin(v171);
  v169 = &v166 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DIPError.Code();
  v178 = *(v5 - 8);
  v179 = v5;
  __chkstk_darwin(v5);
  v180 = &v166 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Locale.Region();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v184 = &v166 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v166 - v11;
  v13 = type metadata accessor for ISO18013KnownNamespaces();
  v176 = *(v13 - 8);
  v177 = v13;
  __chkstk_darwin(v13);
  v175 = &v166 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MobileDocumentElement.Element();
  v181 = *(v15 - 8);
  v182 = v15;
  v16 = __chkstk_darwin(v15);
  v172 = &v166 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v174 = &v166 - v19;
  __chkstk_darwin(v18);
  v21 = &v166 - v20;
  v22 = type metadata accessor for MobileDocumentType.Identifier();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v166 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MobileDocumentType.storage.getter();
  v26 = (*(v23 + 88))(v25, v22);
  if (v26 == enum case for MobileDocumentType.Identifier.nationalIDCard(_:))
  {
    (*(v23 + 96))(v25, v22);
    (*(v8 + 16))(v12, v25, v7);
    v27 = v184;
    Locale.Region.init(stringLiteral:)();
    sub_10037D8FC(&qword_100834780, &type metadata accessor for Locale.Region, &protocol conformance descriptor for Locale.Region);
    v28 = dispatch thunk of static Equatable.== infix(_:_:)();
    v30 = (v8 + 8);
    v29 = *(v8 + 8);
    v29(v27, v7);
    v29(v12, v7);
    v31 = v25;
    if ((v28 & 1) == 0)
    {
      v56 = v7;
      v57 = v184;
      (*(v8 + 32))(v184, v31, v56);
      v185 = 0;
      v186 = 0xE000000000000000;
      _StringGuts.grow(_:)(59);
      v58._countAndFlagsBits = 0xD000000000000026;
      v58._object = 0x80000001007110A0;
      String.append(_:)(v58);
      v59._countAndFlagsBits = Locale.Region.identifier.getter();
      String.append(_:)(v59);

      v60._countAndFlagsBits = 0xD000000000000013;
      v60._object = 0x80000001007110D0;
      String.append(_:)(v60);
      v182 = v186;
      v183 = v185;
      (*(v178 + 104))(v180, enum case for DIPError.Code.documentReaderUnsupportedNationalIDCardRegion(_:), v179);
      v44 = v56;
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10037D8FC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      v29(v57, v56);
      return v44;
    }

    v32 = v29;
    v33 = v174;
    v34 = v183;
    MobileDocumentElement.storage.getter();
    v36 = v181;
    v35 = v182;
    v37 = (*(v181 + 88))(v33, v182);
    if (v37 == enum case for MobileDocumentElement.Element.ageAtLeast(_:))
    {
      (*(v36 + 96))(v33, v35);
      v38 = v31;
      sub_100007224(&qword_10083A9B0, &unk_1006DFA50);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_1006BF520;
      v40 = v175;
      static ISO23220_1_ElementIdentifier.namespaceIdentifier.getter();
      v41 = ISO18013KnownNamespaces.rawValue.getter();
      v43 = v42;
      (*(v176 + 8))(v40, v177);
      *(v39 + 32) = v41;
      *(v39 + 40) = v43;
      v44 = v39;
      *(v39 + 48) = static ISO23220_1_ElementIdentifier.ageOver(nn:)();
      *(v39 + 56) = v45;
      v32(v38, v7);
      return v44;
    }

    v69 = v32;
    v172 = v30;
    if (v37 == enum case for MobileDocumentElement.Element.givenName(_:) || v37 == enum case for MobileDocumentElement.Element.familyName(_:))
    {
      sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
      v70 = swift_allocObject();
      *(v70 + 1) = xmmword_1006BF520;
      v74 = type metadata accessor for ISO23220_1_Japan_ElementIdentifier();
      v70[7] = v74;
      v70[8] = sub_10037D8FC(&qword_10083A9C8, &type metadata accessor for ISO23220_1_Japan_ElementIdentifier, &protocol conformance descriptor for ISO23220_1_Japan_ElementIdentifier);
      v87 = sub_100032DBC(v70 + 4);
      v88 = &enum case for ISO23220_1_Japan_ElementIdentifier.fullName(_:);
    }

    else
    {
      if (v37 == enum case for MobileDocumentElement.Element.sex(_:))
      {
        sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
        if (v173)
        {
          v70 = swift_allocObject();
          *(v70 + 1) = xmmword_1006BF740;
          v71 = type metadata accessor for ISO23220_1_ElementIdentifier();
          v70[7] = v71;
          v70[8] = sub_10037D8FC(&qword_10083A9C0, &type metadata accessor for ISO23220_1_ElementIdentifier, &protocol conformance descriptor for ISO23220_1_ElementIdentifier);
          v72 = sub_100032DBC(v70 + 4);
          (*(*(v71 - 8) + 104))(v72, enum case for ISO23220_1_ElementIdentifier.sex(_:), v71);
          v73 = v70 + 9;
          v74 = type metadata accessor for ISO23220_1_Japan_ElementIdentifier();
          v70[12] = v74;
          v70[13] = sub_10037D8FC(&qword_10083A9C8, &type metadata accessor for ISO23220_1_Japan_ElementIdentifier, &protocol conformance descriptor for ISO23220_1_Japan_ElementIdentifier);
          v75 = &enum case for ISO23220_1_Japan_ElementIdentifier.sex(_:);
        }

        else
        {
          v70 = swift_allocObject();
          *(v70 + 1) = xmmword_1006BF520;
          v73 = v70 + 4;
          v74 = type metadata accessor for ISO23220_1_ElementIdentifier();
          v70[7] = v74;
          v70[8] = sub_10037D8FC(&qword_10083A9C0, &type metadata accessor for ISO23220_1_ElementIdentifier, &protocol conformance descriptor for ISO23220_1_ElementIdentifier);
          v75 = &enum case for ISO23220_1_ElementIdentifier.sex(_:);
        }

LABEL_45:
        v87 = sub_100032DBC(v73);
        v89 = *v75;
        goto LABEL_46;
      }

      if (v37 == enum case for MobileDocumentElement.Element.portrait(_:))
      {
        sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
        v70 = swift_allocObject();
        *(v70 + 1) = xmmword_1006BF520;
        v74 = type metadata accessor for ISO23220_1_Japan_ElementIdentifier();
        v70[7] = v74;
        v70[8] = sub_10037D8FC(&qword_10083A9C8, &type metadata accessor for ISO23220_1_Japan_ElementIdentifier, &protocol conformance descriptor for ISO23220_1_Japan_ElementIdentifier);
        v87 = sub_100032DBC(v70 + 4);
        v88 = &enum case for ISO23220_1_Japan_ElementIdentifier.portrait(_:);
      }

      else if (v37 == enum case for MobileDocumentElement.Element.age(_:))
      {
        sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
        v70 = swift_allocObject();
        *(v70 + 1) = xmmword_1006BF520;
        v74 = type metadata accessor for ISO23220_1_ElementIdentifier();
        v70[7] = v74;
        v70[8] = sub_10037D8FC(&qword_10083A9C0, &type metadata accessor for ISO23220_1_ElementIdentifier, &protocol conformance descriptor for ISO23220_1_ElementIdentifier);
        v87 = sub_100032DBC(v70 + 4);
        v88 = &enum case for ISO23220_1_ElementIdentifier.ageInYears(_:);
      }

      else
      {
        if (v37 == enum case for MobileDocumentElement.Element.dateOfBirth(_:))
        {
          sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
          if (v173)
          {
            v70 = swift_allocObject();
            *(v70 + 1) = xmmword_1006BF740;
            v113 = type metadata accessor for ISO23220_1_ElementIdentifier();
            v70[7] = v113;
            v70[8] = sub_10037D8FC(&qword_10083A9C0, &type metadata accessor for ISO23220_1_ElementIdentifier, &protocol conformance descriptor for ISO23220_1_ElementIdentifier);
            v114 = sub_100032DBC(v70 + 4);
            (*(*(v113 - 8) + 104))(v114, enum case for ISO23220_1_ElementIdentifier.birthDate(_:), v113);
            v73 = v70 + 9;
            v74 = type metadata accessor for ISO23220_1_Japan_ElementIdentifier();
            v70[12] = v74;
            v70[13] = sub_10037D8FC(&qword_10083A9C8, &type metadata accessor for ISO23220_1_Japan_ElementIdentifier, &protocol conformance descriptor for ISO23220_1_Japan_ElementIdentifier);
            v75 = &enum case for ISO23220_1_Japan_ElementIdentifier.birthDate(_:);
          }

          else
          {
            v70 = swift_allocObject();
            *(v70 + 1) = xmmword_1006BF520;
            v73 = v70 + 4;
            v74 = type metadata accessor for ISO23220_1_ElementIdentifier();
            v70[7] = v74;
            v70[8] = sub_10037D8FC(&qword_10083A9C0, &type metadata accessor for ISO23220_1_ElementIdentifier, &protocol conformance descriptor for ISO23220_1_ElementIdentifier);
            v75 = &enum case for ISO23220_1_ElementIdentifier.birthDate(_:);
          }

          goto LABEL_45;
        }

        if (v37 == enum case for MobileDocumentElement.Element.address(_:))
        {
          if ((v173 & 1) == 0)
          {
            v70 = _swiftEmptyArrayStorage;
            goto LABEL_48;
          }

          sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
          v70 = swift_allocObject();
          *(v70 + 1) = xmmword_1006BF740;
          v130 = type metadata accessor for ISO23220_1_Japan_ElementIdentifier();
          v70[7] = v130;
          v131 = sub_10037D8FC(&qword_10083A9C8, &type metadata accessor for ISO23220_1_Japan_ElementIdentifier, &protocol conformance descriptor for ISO23220_1_Japan_ElementIdentifier);
          v70[8] = v131;
          v132 = sub_100032DBC(v70 + 4);
          v133 = *(*(v130 - 8) + 104);
          v133(v132, enum case for ISO23220_1_Japan_ElementIdentifier.localGovCode(_:), v130);
          v70[12] = v130;
          v70[13] = v131;
          v134 = sub_100032DBC(v70 + 9);
          v133(v134, enum case for ISO23220_1_Japan_ElementIdentifier.residentAddress(_:), v130);
          v69 = v32;
LABEL_47:

LABEL_48:
          v69(v31, v7);
          goto LABEL_64;
        }

        v70 = _swiftEmptyArrayStorage;
        if (v37 == enum case for MobileDocumentElement.Element.height(_:) || v37 == enum case for MobileDocumentElement.Element.weight(_:) || v37 == enum case for MobileDocumentElement.Element.eyeColor(_:) || v37 == enum case for MobileDocumentElement.Element.hairColor(_:) || v37 == enum case for MobileDocumentElement.Element.organDonorStatus(_:) || v37 == enum case for MobileDocumentElement.Element.veteranStatus(_:) || v37 == enum case for MobileDocumentElement.Element.issuingAuthority(_:) || v37 == enum case for MobileDocumentElement.Element.drivingPrivileges(_:) || v37 == enum case for MobileDocumentElement.Element.documentDHSComplianceStatus(_:))
        {
          goto LABEL_48;
        }

        if (v37 != enum case for MobileDocumentElement.Element.documentNumber(_:))
        {
          if (v37 != enum case for MobileDocumentElement.Element.documentIssueDate(_:) && v37 != enum case for MobileDocumentElement.Element.documentExpirationDate(_:))
          {
            (*(v36 + 8))(v33, v35);
          }

          goto LABEL_48;
        }

        sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
        v70 = swift_allocObject();
        *(v70 + 1) = xmmword_1006BF520;
        v74 = type metadata accessor for ISO23220_1_Japan_ElementIdentifier();
        v70[7] = v74;
        v70[8] = sub_10037D8FC(&qword_10083A9C8, &type metadata accessor for ISO23220_1_Japan_ElementIdentifier, &protocol conformance descriptor for ISO23220_1_Japan_ElementIdentifier);
        v87 = sub_100032DBC(v70 + 4);
        v88 = &enum case for ISO23220_1_Japan_ElementIdentifier.individualNumber(_:);
      }
    }

    v89 = *v88;
LABEL_46:
    (*(*(v74 - 8) + 104))(v87, v89, v74);
    goto LABEL_47;
  }

  if (v26 == enum case for MobileDocumentType.Identifier.driversLicense(_:))
  {
    v34 = v183;
    MobileDocumentElement.storage.getter();
    v47 = v181;
    v46 = v182;
    v48 = (*(v181 + 88))(v21, v182);
    if (v48 == enum case for MobileDocumentElement.Element.ageAtLeast(_:))
    {
      (*(v47 + 96))(v21, v46);
      sub_100007224(&qword_10083A9B0, &unk_1006DFA50);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_1006BF520;
      v50 = v175;
      static ISO18013_5_1_ElementIdentifier.namespaceIdentifier.getter();
      v51 = ISO18013KnownNamespaces.rawValue.getter();
      v53 = v52;
      (*(v176 + 8))(v50, v177);
      *(v49 + 32) = v51;
      *(v49 + 40) = v53;
      v44 = v49;
      v54 = static ISO18013_5_1_ElementIdentifier.ageOver(nn:)();
LABEL_12:
      *(v49 + 48) = v54;
      *(v49 + 56) = v55;
      return v44;
    }

    if (v48 == enum case for MobileDocumentElement.Element.givenName(_:))
    {
      sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
      if (v173)
      {
        v70 = swift_allocObject();
        *(v70 + 1) = xmmword_1006D8C30;
        v76 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
        v70[7] = v76;
        v70[8] = sub_10037D8FC(&qword_100841F70, &type metadata accessor for ISO18013_5_1_ElementIdentifier, &protocol conformance descriptor for ISO18013_5_1_ElementIdentifier);
        v77 = sub_100032DBC(v70 + 4);
        (*(*(v76 - 8) + 104))(v77, enum case for ISO18013_5_1_ElementIdentifier.givenName(_:), v76);
        v78 = type metadata accessor for ISO18013_AAMVA_ElementIdentifier();
        v70[12] = v78;
        v79 = sub_10037D8FC(&qword_100841F88, &type metadata accessor for ISO18013_AAMVA_ElementIdentifier, &protocol conformance descriptor for ISO18013_AAMVA_ElementIdentifier);
        v70[13] = v79;
        v80 = sub_100032DBC(v70 + 9);
        v81 = *(*(v78 - 8) + 104);
        v81(v80, enum case for ISO18013_AAMVA_ElementIdentifier.givenNameTruncation(_:), v78);
        v70[17] = v78;
        v70[18] = v79;
        v82 = sub_100032DBC(v70 + 14);
        v81(v82, enum case for ISO18013_AAMVA_ElementIdentifier.akaGivenName(_:), v78);
        v70[22] = v78;
        v70[23] = v79;
        v83 = sub_100032DBC(v70 + 19);
        v81(v83, enum case for ISO18013_AAMVA_ElementIdentifier.nameSuffix(_:), v78);
        v70[27] = v78;
        v70[28] = v79;
        v84 = sub_100032DBC(v70 + 24);
        v85 = &enum case for ISO18013_AAMVA_ElementIdentifier.akaSuffix(_:);
LABEL_29:
        v81(v84, *v85, v78);
LABEL_63:

        goto LABEL_64;
      }

      v70 = swift_allocObject();
      *(v70 + 1) = xmmword_1006BF740;
      v100 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
      v70[7] = v100;
      v70[8] = sub_10037D8FC(&qword_100841F70, &type metadata accessor for ISO18013_5_1_ElementIdentifier, &protocol conformance descriptor for ISO18013_5_1_ElementIdentifier);
      v101 = sub_100032DBC(v70 + 4);
      (*(*(v100 - 8) + 104))(v101, enum case for ISO18013_5_1_ElementIdentifier.givenName(_:), v100);
      v102 = type metadata accessor for ISO18013_AAMVA_ElementIdentifier();
      v70[12] = v102;
      v70[13] = sub_10037D8FC(&qword_100841F88, &type metadata accessor for ISO18013_AAMVA_ElementIdentifier, &protocol conformance descriptor for ISO18013_AAMVA_ElementIdentifier);
      v103 = sub_100032DBC(v70 + 9);
      v104 = &enum case for ISO18013_AAMVA_ElementIdentifier.nameSuffix(_:);
      goto LABEL_62;
    }

    if (v48 == enum case for MobileDocumentElement.Element.familyName(_:))
    {
      sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
      if (v173)
      {
        v70 = swift_allocObject();
        *(v70 + 1) = xmmword_1006BFF90;
        v96 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
        v70[7] = v96;
        v70[8] = sub_10037D8FC(&qword_100841F70, &type metadata accessor for ISO18013_5_1_ElementIdentifier, &protocol conformance descriptor for ISO18013_5_1_ElementIdentifier);
        v97 = sub_100032DBC(v70 + 4);
        (*(*(v96 - 8) + 104))(v97, enum case for ISO18013_5_1_ElementIdentifier.familyName(_:), v96);
        v78 = type metadata accessor for ISO18013_AAMVA_ElementIdentifier();
        v70[12] = v78;
        v98 = sub_10037D8FC(&qword_100841F88, &type metadata accessor for ISO18013_AAMVA_ElementIdentifier, &protocol conformance descriptor for ISO18013_AAMVA_ElementIdentifier);
        v70[13] = v98;
        v99 = sub_100032DBC(v70 + 9);
        v81 = *(*(v78 - 8) + 104);
        v81(v99, enum case for ISO18013_AAMVA_ElementIdentifier.familyNameTruncation(_:), v78);
        v70[17] = v78;
        v70[18] = v98;
        v84 = sub_100032DBC(v70 + 14);
        v85 = &enum case for ISO18013_AAMVA_ElementIdentifier.akaFamilyName(_:);
        goto LABEL_29;
      }

      v70 = swift_allocObject();
      *(v70 + 1) = xmmword_1006BF520;
      v102 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
      v70[7] = v102;
      v70[8] = sub_10037D8FC(&qword_100841F70, &type metadata accessor for ISO18013_5_1_ElementIdentifier, &protocol conformance descriptor for ISO18013_5_1_ElementIdentifier);
      v103 = sub_100032DBC(v70 + 4);
      v104 = &enum case for ISO18013_5_1_ElementIdentifier.familyName(_:);
LABEL_62:
      (*(*(v102 - 8) + 104))(v103, *v104, v102);
      goto LABEL_63;
    }

    if (v48 == enum case for MobileDocumentElement.Element.sex(_:))
    {
      sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
      v70 = swift_allocObject();
      *(v70 + 1) = xmmword_1006BF740;
      v108 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
      v70[7] = v108;
      v70[8] = sub_10037D8FC(&qword_100841F70, &type metadata accessor for ISO18013_5_1_ElementIdentifier, &protocol conformance descriptor for ISO18013_5_1_ElementIdentifier);
      v109 = sub_100032DBC(v70 + 4);
      (*(*(v108 - 8) + 104))(v109, enum case for ISO18013_5_1_ElementIdentifier.sex(_:), v108);
      v102 = type metadata accessor for ISO18013_AAMVA_ElementIdentifier();
      v70[12] = v102;
      v70[13] = sub_10037D8FC(&qword_100841F88, &type metadata accessor for ISO18013_AAMVA_ElementIdentifier, &protocol conformance descriptor for ISO18013_AAMVA_ElementIdentifier);
      v103 = sub_100032DBC(v70 + 9);
      v104 = &enum case for ISO18013_AAMVA_ElementIdentifier.sex(_:);
      goto LABEL_62;
    }

    if (v48 == enum case for MobileDocumentElement.Element.portrait(_:))
    {
      sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
      v70 = swift_allocObject();
      *(v70 + 1) = xmmword_1006BF520;
      v102 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
      v70[7] = v102;
      v70[8] = sub_10037D8FC(&qword_100841F70, &type metadata accessor for ISO18013_5_1_ElementIdentifier, &protocol conformance descriptor for ISO18013_5_1_ElementIdentifier);
      v103 = sub_100032DBC(v70 + 4);
      v104 = &enum case for ISO18013_5_1_ElementIdentifier.portrait(_:);
      goto LABEL_62;
    }

    if (v48 == enum case for MobileDocumentElement.Element.age(_:))
    {
      sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
      v70 = swift_allocObject();
      *(v70 + 1) = xmmword_1006BF520;
      v102 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
      v70[7] = v102;
      v70[8] = sub_10037D8FC(&qword_100841F70, &type metadata accessor for ISO18013_5_1_ElementIdentifier, &protocol conformance descriptor for ISO18013_5_1_ElementIdentifier);
      v103 = sub_100032DBC(v70 + 4);
      v104 = &enum case for ISO18013_5_1_ElementIdentifier.ageInYears(_:);
      goto LABEL_62;
    }

    if (v48 == enum case for MobileDocumentElement.Element.dateOfBirth(_:))
    {
      sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
      v70 = swift_allocObject();
      *(v70 + 1) = xmmword_1006BF520;
      v102 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
      v70[7] = v102;
      v70[8] = sub_10037D8FC(&qword_100841F70, &type metadata accessor for ISO18013_5_1_ElementIdentifier, &protocol conformance descriptor for ISO18013_5_1_ElementIdentifier);
      v103 = sub_100032DBC(v70 + 4);
      v104 = &enum case for ISO18013_5_1_ElementIdentifier.birthDate(_:);
      goto LABEL_62;
    }

    if (v48 == enum case for MobileDocumentElement.Element.address(_:))
    {
      sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
      v70 = swift_allocObject();
      *(v70 + 1) = xmmword_1006D8C30;
      v78 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
      v70[7] = v78;
      v135 = sub_10037D8FC(&qword_100841F70, &type metadata accessor for ISO18013_5_1_ElementIdentifier, &protocol conformance descriptor for ISO18013_5_1_ElementIdentifier);
      v70[8] = v135;
      v136 = sub_100032DBC(v70 + 4);
      v81 = *(*(v78 - 8) + 104);
      v81(v136, enum case for ISO18013_5_1_ElementIdentifier.residentAddress(_:), v78);
      v70[12] = v78;
      v70[13] = v135;
      v137 = sub_100032DBC(v70 + 9);
      v81(v137, enum case for ISO18013_5_1_ElementIdentifier.residentCity(_:), v78);
      v70[17] = v78;
      v70[18] = v135;
      v138 = sub_100032DBC(v70 + 14);
      v81(v138, enum case for ISO18013_5_1_ElementIdentifier.residentState(_:), v78);
      v70[22] = v78;
      v70[23] = v135;
      v139 = sub_100032DBC(v70 + 19);
      v81(v139, enum case for ISO18013_5_1_ElementIdentifier.residentPostalCode(_:), v78);
      v70[27] = v78;
      v70[28] = v135;
      v84 = sub_100032DBC(v70 + 24);
      v85 = &enum case for ISO18013_5_1_ElementIdentifier.residentCountry(_:);
      goto LABEL_29;
    }

    if (v48 == enum case for MobileDocumentElement.Element.height(_:))
    {
      sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
      v70 = swift_allocObject();
      *(v70 + 1) = xmmword_1006BF520;
      v102 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
      v70[7] = v102;
      v70[8] = sub_10037D8FC(&qword_100841F70, &type metadata accessor for ISO18013_5_1_ElementIdentifier, &protocol conformance descriptor for ISO18013_5_1_ElementIdentifier);
      v103 = sub_100032DBC(v70 + 4);
      v104 = &enum case for ISO18013_5_1_ElementIdentifier.height(_:);
      goto LABEL_62;
    }

    if (v48 == enum case for MobileDocumentElement.Element.weight(_:))
    {
      sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
      if (v173)
      {
        v70 = swift_allocObject();
        *(v70 + 1) = xmmword_1006BF740;
        v148 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
        v70[7] = v148;
        v70[8] = sub_10037D8FC(&qword_100841F70, &type metadata accessor for ISO18013_5_1_ElementIdentifier, &protocol conformance descriptor for ISO18013_5_1_ElementIdentifier);
        v149 = sub_100032DBC(v70 + 4);
        (*(*(v148 - 8) + 104))(v149, enum case for ISO18013_5_1_ElementIdentifier.weight(_:), v148);
        v102 = type metadata accessor for ISO18013_AAMVA_ElementIdentifier();
        v70[12] = v102;
        v70[13] = sub_10037D8FC(&qword_100841F88, &type metadata accessor for ISO18013_AAMVA_ElementIdentifier, &protocol conformance descriptor for ISO18013_AAMVA_ElementIdentifier);
        v103 = sub_100032DBC(v70 + 9);
        v104 = &enum case for ISO18013_AAMVA_ElementIdentifier.weightRange(_:);
      }

      else
      {
        v70 = swift_allocObject();
        *(v70 + 1) = xmmword_1006BF520;
        v102 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
        v70[7] = v102;
        v70[8] = sub_10037D8FC(&qword_100841F70, &type metadata accessor for ISO18013_5_1_ElementIdentifier, &protocol conformance descriptor for ISO18013_5_1_ElementIdentifier);
        v103 = sub_100032DBC(v70 + 4);
        v104 = &enum case for ISO18013_5_1_ElementIdentifier.weight(_:);
      }

      goto LABEL_62;
    }

    if (v48 == enum case for MobileDocumentElement.Element.eyeColor(_:))
    {
      sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
      v70 = swift_allocObject();
      *(v70 + 1) = xmmword_1006BF520;
      v102 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
      v70[7] = v102;
      v70[8] = sub_10037D8FC(&qword_100841F70, &type metadata accessor for ISO18013_5_1_ElementIdentifier, &protocol conformance descriptor for ISO18013_5_1_ElementIdentifier);
      v103 = sub_100032DBC(v70 + 4);
      v104 = &enum case for ISO18013_5_1_ElementIdentifier.eyeColor(_:);
      goto LABEL_62;
    }

    if (v48 == enum case for MobileDocumentElement.Element.hairColor(_:))
    {
      sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
      v70 = swift_allocObject();
      *(v70 + 1) = xmmword_1006BF520;
      v102 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
      v70[7] = v102;
      v70[8] = sub_10037D8FC(&qword_100841F70, &type metadata accessor for ISO18013_5_1_ElementIdentifier, &protocol conformance descriptor for ISO18013_5_1_ElementIdentifier);
      v103 = sub_100032DBC(v70 + 4);
      v104 = &enum case for ISO18013_5_1_ElementIdentifier.hairColor(_:);
      goto LABEL_62;
    }

    if (v48 == enum case for MobileDocumentElement.Element.organDonorStatus(_:))
    {
      sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
      v70 = swift_allocObject();
      *(v70 + 1) = xmmword_1006BF520;
      v150 = type metadata accessor for ISO18013_AAMVA_ElementIdentifier();
      v70[7] = v150;
      v70[8] = sub_10037D8FC(&qword_100841F88, &type metadata accessor for ISO18013_AAMVA_ElementIdentifier, &protocol conformance descriptor for ISO18013_AAMVA_ElementIdentifier);
      v151 = sub_100032DBC(v70 + 4);
      v152 = &enum case for ISO18013_AAMVA_ElementIdentifier.organDonorStatus(_:);
    }

    else if (v48 == enum case for MobileDocumentElement.Element.veteranStatus(_:))
    {
      sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
      v70 = swift_allocObject();
      *(v70 + 1) = xmmword_1006BF520;
      v150 = type metadata accessor for ISO18013_AAMVA_ElementIdentifier();
      v70[7] = v150;
      v70[8] = sub_10037D8FC(&qword_100841F88, &type metadata accessor for ISO18013_AAMVA_ElementIdentifier, &protocol conformance descriptor for ISO18013_AAMVA_ElementIdentifier);
      v151 = sub_100032DBC(v70 + 4);
      v152 = &enum case for ISO18013_AAMVA_ElementIdentifier.veteranStatus(_:);
    }

    else
    {
      if (v48 == enum case for MobileDocumentElement.Element.issuingAuthority(_:))
      {
        sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
        if (v173)
        {
          v70 = swift_allocObject();
          *(v70 + 1) = xmmword_1006BFE10;
          v153 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
          v70[7] = v153;
          v154 = sub_10037D8FC(&qword_100841F70, &type metadata accessor for ISO18013_5_1_ElementIdentifier, &protocol conformance descriptor for ISO18013_5_1_ElementIdentifier);
          v70[8] = v154;
          v155 = sub_100032DBC(v70 + 4);
          v156 = *(*(v153 - 8) + 104);
          v156(v155, enum case for ISO18013_5_1_ElementIdentifier.issuingAuthority(_:), v153);
          v70[12] = v153;
          v70[13] = v154;
          v157 = sub_100032DBC(v70 + 9);
          v156(v157, enum case for ISO18013_5_1_ElementIdentifier.issuingJurisdiction(_:), v153);
          v70[17] = v153;
          v70[18] = v154;
          v158 = sub_100032DBC(v70 + 14);
          v156(v158, enum case for ISO18013_5_1_ElementIdentifier.issuingCountry(_:), v153);
          v70[22] = v153;
          v70[23] = v154;
          v159 = sub_100032DBC(v70 + 19);
          v160 = &enum case for ISO18013_5_1_ElementIdentifier.unDistinguishingSign(_:);
        }

        else
        {
          v70 = swift_allocObject();
          *(v70 + 1) = xmmword_1006BFF90;
          v153 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
          v70[7] = v153;
          v163 = sub_10037D8FC(&qword_100841F70, &type metadata accessor for ISO18013_5_1_ElementIdentifier, &protocol conformance descriptor for ISO18013_5_1_ElementIdentifier);
          v70[8] = v163;
          v164 = sub_100032DBC(v70 + 4);
          v156 = *(*(v153 - 8) + 104);
          v156(v164, enum case for ISO18013_5_1_ElementIdentifier.issuingAuthority(_:), v153);
          v70[12] = v153;
          v70[13] = v163;
          v165 = sub_100032DBC(v70 + 9);
          v156(v165, enum case for ISO18013_5_1_ElementIdentifier.issuingJurisdiction(_:), v153);
          v70[17] = v153;
          v70[18] = v163;
          v159 = sub_100032DBC(v70 + 14);
          v160 = &enum case for ISO18013_5_1_ElementIdentifier.issuingCountry(_:);
        }

        v156(v159, *v160, v153);
        goto LABEL_127;
      }

      if (v48 == enum case for MobileDocumentElement.Element.drivingPrivileges(_:))
      {
        sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
        v70 = swift_allocObject();
        *(v70 + 1) = xmmword_1006BF740;
        v161 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
        v70[7] = v161;
        v70[8] = sub_10037D8FC(&qword_100841F70, &type metadata accessor for ISO18013_5_1_ElementIdentifier, &protocol conformance descriptor for ISO18013_5_1_ElementIdentifier);
        v162 = sub_100032DBC(v70 + 4);
        (*(*(v161 - 8) + 104))(v162, enum case for ISO18013_5_1_ElementIdentifier.drivingPrivileges(_:), v161);
        v150 = type metadata accessor for ISO18013_AAMVA_ElementIdentifier();
        v70[12] = v150;
        v70[13] = sub_10037D8FC(&qword_100841F88, &type metadata accessor for ISO18013_AAMVA_ElementIdentifier, &protocol conformance descriptor for ISO18013_AAMVA_ElementIdentifier);
        v151 = sub_100032DBC(v70 + 9);
        v152 = &enum case for ISO18013_AAMVA_ElementIdentifier.domesticDrivingPrivileges(_:);
      }

      else if (v48 == enum case for MobileDocumentElement.Element.documentDHSComplianceStatus(_:))
      {
        sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
        v70 = swift_allocObject();
        *(v70 + 1) = xmmword_1006BF520;
        v150 = type metadata accessor for ISO18013_AAMVA_ElementIdentifier();
        v70[7] = v150;
        v70[8] = sub_10037D8FC(&qword_100841F88, &type metadata accessor for ISO18013_AAMVA_ElementIdentifier, &protocol conformance descriptor for ISO18013_AAMVA_ElementIdentifier);
        v151 = sub_100032DBC(v70 + 4);
        v152 = &enum case for ISO18013_AAMVA_ElementIdentifier.dhsCompliance(_:);
      }

      else if (v48 == enum case for MobileDocumentElement.Element.documentNumber(_:))
      {
        sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
        v70 = swift_allocObject();
        *(v70 + 1) = xmmword_1006BF520;
        v150 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
        v70[7] = v150;
        v70[8] = sub_10037D8FC(&qword_100841F70, &type metadata accessor for ISO18013_5_1_ElementIdentifier, &protocol conformance descriptor for ISO18013_5_1_ElementIdentifier);
        v151 = sub_100032DBC(v70 + 4);
        v152 = &enum case for ISO18013_5_1_ElementIdentifier.documentNumber(_:);
      }

      else if (v48 == enum case for MobileDocumentElement.Element.documentIssueDate(_:))
      {
        sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
        v70 = swift_allocObject();
        *(v70 + 1) = xmmword_1006BF520;
        v150 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
        v70[7] = v150;
        v70[8] = sub_10037D8FC(&qword_100841F70, &type metadata accessor for ISO18013_5_1_ElementIdentifier, &protocol conformance descriptor for ISO18013_5_1_ElementIdentifier);
        v151 = sub_100032DBC(v70 + 4);
        v152 = &enum case for ISO18013_5_1_ElementIdentifier.issueDate(_:);
      }

      else
      {
        if (v48 != enum case for MobileDocumentElement.Element.documentExpirationDate(_:))
        {
          (*(v181 + 8))(v21, v182);
          v70 = _swiftEmptyArrayStorage;
          goto LABEL_128;
        }

        sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
        v70 = swift_allocObject();
        *(v70 + 1) = xmmword_1006BF520;
        v150 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
        v70[7] = v150;
        v70[8] = sub_10037D8FC(&qword_100841F70, &type metadata accessor for ISO18013_5_1_ElementIdentifier, &protocol conformance descriptor for ISO18013_5_1_ElementIdentifier);
        v151 = sub_100032DBC(v70 + 4);
        v152 = &enum case for ISO18013_5_1_ElementIdentifier.expiryDate(_:);
      }
    }

    (*(*(v150 - 8) + 104))(v151, *v152, v150);
LABEL_127:

LABEL_128:
    v34 = v183;
    goto LABEL_64;
  }

  if (v26 != enum case for MobileDocumentType.Identifier.photoID(_:))
  {
    v185 = 0;
    v186 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    v185 = 0xD00000000000001CLL;
    v186 = 0x8000000100710FF0;
    (*(v170 + 16))(v169, a1, v171);
    v86._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v86);

    v44 = v186;
    v184 = v185;
    (*(v178 + 104))(v180, enum case for DIPError.Code.documentReaderUnknownDocumentType(_:), v179);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10037D8FC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v23 + 8))(v25, v22);
    return v44;
  }

  v61 = v172;
  v34 = v183;
  MobileDocumentElement.storage.getter();
  v63 = v181;
  v62 = v182;
  v64 = (*(v181 + 88))(v61, v182);
  if (v64 == enum case for MobileDocumentElement.Element.ageAtLeast(_:))
  {
    (*(v63 + 96))(v61, v62);
    sub_100007224(&qword_10083A9B0, &unk_1006DFA50);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_1006BF520;
    v65 = v175;
    static ISO23220_1_ElementIdentifier.namespaceIdentifier.getter();
    v66 = ISO18013KnownNamespaces.rawValue.getter();
    v68 = v67;
    (*(v176 + 8))(v65, v177);
    *(v49 + 32) = v66;
    *(v49 + 40) = v68;
    v44 = v49;
    v54 = static ISO23220_1_ElementIdentifier.ageOver(nn:)();
    goto LABEL_12;
  }

  if (v64 == enum case for MobileDocumentElement.Element.givenName(_:))
  {
    sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
    v70 = swift_allocObject();
    *(v70 + 1) = xmmword_1006BF740;
    v90 = type metadata accessor for ISO23220_1_ElementIdentifier();
    v70[7] = v90;
    v91 = sub_10037D8FC(&qword_10083A9C0, &type metadata accessor for ISO23220_1_ElementIdentifier, &protocol conformance descriptor for ISO23220_1_ElementIdentifier);
    v70[8] = v91;
    v92 = sub_100032DBC(v70 + 4);
    v93 = *(*(v90 - 8) + 104);
    v93(v92, enum case for ISO23220_1_ElementIdentifier.givenName(_:), v90);
    v70[12] = v90;
    v70[13] = v91;
    v94 = sub_100032DBC(v70 + 9);
    v95 = &enum case for ISO23220_1_ElementIdentifier.givenNameLatin1(_:);
    goto LABEL_33;
  }

  if (v64 == enum case for MobileDocumentElement.Element.familyName(_:))
  {
    sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
    v70 = swift_allocObject();
    *(v70 + 1) = xmmword_1006BF740;
    v90 = type metadata accessor for ISO23220_1_ElementIdentifier();
    v70[7] = v90;
    v105 = sub_10037D8FC(&qword_10083A9C0, &type metadata accessor for ISO23220_1_ElementIdentifier, &protocol conformance descriptor for ISO23220_1_ElementIdentifier);
    v70[8] = v105;
    v106 = sub_100032DBC(v70 + 4);
    v93 = *(*(v90 - 8) + 104);
    v93(v106, enum case for ISO23220_1_ElementIdentifier.familyName(_:), v90);
    v70[12] = v90;
    v70[13] = v105;
    v94 = sub_100032DBC(v70 + 9);
    v95 = &enum case for ISO23220_1_ElementIdentifier.familyNameLatin1(_:);
    goto LABEL_33;
  }

  if (v64 == enum case for MobileDocumentElement.Element.sex(_:))
  {
    sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
    v70 = swift_allocObject();
    *(v70 + 1) = xmmword_1006BF520;
    v110 = type metadata accessor for ISO23220_1_ElementIdentifier();
    v70[7] = v110;
    v70[8] = sub_10037D8FC(&qword_10083A9C0, &type metadata accessor for ISO23220_1_ElementIdentifier, &protocol conformance descriptor for ISO23220_1_ElementIdentifier);
    v111 = sub_100032DBC(v70 + 4);
    v112 = &enum case for ISO23220_1_ElementIdentifier.sex(_:);
    goto LABEL_78;
  }

  if (v64 == enum case for MobileDocumentElement.Element.portrait(_:))
  {
    sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
    v70 = swift_allocObject();
    *(v70 + 1) = xmmword_1006BF520;
    v110 = type metadata accessor for ISO23220_1_ElementIdentifier();
    v70[7] = v110;
    v70[8] = sub_10037D8FC(&qword_10083A9C0, &type metadata accessor for ISO23220_1_ElementIdentifier, &protocol conformance descriptor for ISO23220_1_ElementIdentifier);
    v111 = sub_100032DBC(v70 + 4);
    v112 = &enum case for ISO23220_1_ElementIdentifier.portrait(_:);
    goto LABEL_78;
  }

  if (v64 == enum case for MobileDocumentElement.Element.age(_:))
  {
    sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
    v70 = swift_allocObject();
    *(v70 + 1) = xmmword_1006BF520;
    v110 = type metadata accessor for ISO23220_1_ElementIdentifier();
    v70[7] = v110;
    v70[8] = sub_10037D8FC(&qword_10083A9C0, &type metadata accessor for ISO23220_1_ElementIdentifier, &protocol conformance descriptor for ISO23220_1_ElementIdentifier);
    v111 = sub_100032DBC(v70 + 4);
    v112 = &enum case for ISO23220_1_ElementIdentifier.ageInYears(_:);
    goto LABEL_78;
  }

  if (v64 != enum case for MobileDocumentElement.Element.dateOfBirth(_:))
  {
    if (v64 == enum case for MobileDocumentElement.Element.address(_:))
    {
      sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
      v70 = swift_allocObject();
      *(v70 + 1) = xmmword_1006D8C30;
      v90 = type metadata accessor for ISO23220_1_ElementIdentifier();
      v70[7] = v90;
      v140 = sub_10037D8FC(&qword_10083A9C0, &type metadata accessor for ISO23220_1_ElementIdentifier, &protocol conformance descriptor for ISO23220_1_ElementIdentifier);
      v70[8] = v140;
      v141 = sub_100032DBC(v70 + 4);
      v93 = *(*(v90 - 8) + 104);
      v93(v141, enum case for ISO23220_1_ElementIdentifier.residentAddress(_:), v90);
      v70[12] = v90;
      v70[13] = v140;
      v142 = sub_100032DBC(v70 + 9);
      v93(v142, enum case for ISO23220_1_ElementIdentifier.residentCity(_:), v90);
      v70[17] = v90;
      v70[18] = v140;
      v143 = sub_100032DBC(v70 + 14);
      v93(v143, enum case for ISO23220_1_ElementIdentifier.residentCityLatin1(_:), v90);
      v70[22] = v90;
      v70[23] = v140;
      v144 = sub_100032DBC(v70 + 19);
      v93(v144, enum case for ISO23220_1_ElementIdentifier.residentPostalCode(_:), v90);
      v70[27] = v90;
      v70[28] = v140;
      v94 = sub_100032DBC(v70 + 24);
      v95 = &enum case for ISO23220_1_ElementIdentifier.residentCountry(_:);
      goto LABEL_33;
    }

    v70 = _swiftEmptyArrayStorage;
    if (v64 != enum case for MobileDocumentElement.Element.height(_:) && v64 != enum case for MobileDocumentElement.Element.weight(_:) && v64 != enum case for MobileDocumentElement.Element.eyeColor(_:) && v64 != enum case for MobileDocumentElement.Element.hairColor(_:) && v64 != enum case for MobileDocumentElement.Element.organDonorStatus(_:) && v64 != enum case for MobileDocumentElement.Element.veteranStatus(_:))
    {
      if (v64 == enum case for MobileDocumentElement.Element.issuingAuthority(_:))
      {
        sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
        v70 = swift_allocObject();
        *(v70 + 1) = xmmword_1006BFF90;
        v90 = type metadata accessor for ISO23220_1_ElementIdentifier();
        v70[7] = v90;
        v145 = sub_10037D8FC(&qword_10083A9C0, &type metadata accessor for ISO23220_1_ElementIdentifier, &protocol conformance descriptor for ISO23220_1_ElementIdentifier);
        v70[8] = v145;
        v146 = sub_100032DBC(v70 + 4);
        v93 = *(*(v90 - 8) + 104);
        v93(v146, enum case for ISO23220_1_ElementIdentifier.issuingAuthority(_:), v90);
        v70[12] = v90;
        v70[13] = v145;
        v147 = sub_100032DBC(v70 + 9);
        v93(v147, enum case for ISO23220_1_ElementIdentifier.issuingCountry(_:), v90);
        v70[17] = v90;
        v70[18] = v145;
        v94 = sub_100032DBC(v70 + 14);
        v95 = &enum case for ISO23220_1_ElementIdentifier.issuingSubdivision(_:);
LABEL_33:
        v93(v94, *v95, v90);
        v107 = v70[2];
        if (!v107)
        {
          goto LABEL_79;
        }

        goto LABEL_66;
      }

      if (v64 != enum case for MobileDocumentElement.Element.drivingPrivileges(_:) && v64 != enum case for MobileDocumentElement.Element.documentDHSComplianceStatus(_:))
      {
        if (v64 == enum case for MobileDocumentElement.Element.documentNumber(_:))
        {
          sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
          v70 = swift_allocObject();
          *(v70 + 1) = xmmword_1006BF520;
          v110 = type metadata accessor for ISO23220_1_ElementIdentifier();
          v70[7] = v110;
          v70[8] = sub_10037D8FC(&qword_10083A9C0, &type metadata accessor for ISO23220_1_ElementIdentifier, &protocol conformance descriptor for ISO23220_1_ElementIdentifier);
          v111 = sub_100032DBC(v70 + 4);
          v112 = &enum case for ISO23220_1_ElementIdentifier.documentNumber(_:);
        }

        else if (v64 == enum case for MobileDocumentElement.Element.documentIssueDate(_:))
        {
          sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
          v70 = swift_allocObject();
          *(v70 + 1) = xmmword_1006BF520;
          v110 = type metadata accessor for ISO23220_1_ElementIdentifier();
          v70[7] = v110;
          v70[8] = sub_10037D8FC(&qword_10083A9C0, &type metadata accessor for ISO23220_1_ElementIdentifier, &protocol conformance descriptor for ISO23220_1_ElementIdentifier);
          v111 = sub_100032DBC(v70 + 4);
          v112 = &enum case for ISO23220_1_ElementIdentifier.issueDate(_:);
        }

        else
        {
          if (v64 != enum case for MobileDocumentElement.Element.documentExpirationDate(_:))
          {
            (*(v181 + 8))(v172, v182);
            goto LABEL_128;
          }

          sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
          v70 = swift_allocObject();
          *(v70 + 1) = xmmword_1006BF520;
          v110 = type metadata accessor for ISO23220_1_ElementIdentifier();
          v70[7] = v110;
          v70[8] = sub_10037D8FC(&qword_10083A9C0, &type metadata accessor for ISO23220_1_ElementIdentifier, &protocol conformance descriptor for ISO23220_1_ElementIdentifier);
          v111 = sub_100032DBC(v70 + 4);
          v112 = &enum case for ISO23220_1_ElementIdentifier.expiryDate(_:);
        }

        goto LABEL_78;
      }
    }

LABEL_64:
    v115 = v70[2];

    if (!v115)
    {

      v185 = 0;
      v186 = 0xE000000000000000;
      _StringGuts.grow(_:)(28);

      v185 = 0xD00000000000001ALL;
      v186 = 0x8000000100711080;
      (*(v167 + 16))(v166, v34, v168);
      v128._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v128);

      v44 = v186;
      (*(v178 + 104))(v180, enum case for DIPError.Code.documentReaderUnknownDocumentElement(_:), v179);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10037D8FC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      return v44;
    }

    v107 = v70[2];
    if (v107)
    {
      goto LABEL_66;
    }

LABEL_79:

    return _swiftEmptyArrayStorage;
  }

  sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
  v70 = swift_allocObject();
  *(v70 + 1) = xmmword_1006BF520;
  v110 = type metadata accessor for ISO23220_1_ElementIdentifier();
  v70[7] = v110;
  v70[8] = sub_10037D8FC(&qword_10083A9C0, &type metadata accessor for ISO23220_1_ElementIdentifier, &protocol conformance descriptor for ISO23220_1_ElementIdentifier);
  v111 = sub_100032DBC(v70 + 4);
  v112 = &enum case for ISO23220_1_ElementIdentifier.birthDate(_:);
LABEL_78:
  (*(*(v110 - 8) + 104))(v111, *v112, v110);
  v107 = v70[2];
  if (!v107)
  {
    goto LABEL_79;
  }

LABEL_66:
  v192 = _swiftEmptyArrayStorage;
  sub_100172D8C(0, v107, 0);
  v44 = v192;
  v183 = v70;
  v116 = (v70 + 4);
  do
  {
    v184 = v44;
    sub_100020260(v116, &v185);
    sub_10000BA08(&v185, v187);
    swift_getDynamicType();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v118 = *(AssociatedTypeWitness - 8);
    __chkstk_darwin(AssociatedTypeWitness);
    v120 = &v166 - v119;
    dispatch thunk of static MobileDocumentElementIdentifier.namespaceIdentifier.getter();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of RawRepresentable.rawValue.getter();
    sub_10000BA08(&v185, v187);
    dispatch thunk of RawRepresentable.rawValue.getter();
    v44 = v184;
    (*(v118 + 8))(v120, AssociatedTypeWitness);
    sub_10000BB78(&v185);
    v121 = v190;
    v122 = v191;
    v123 = v188;
    v124 = v189;
    v192 = v44;
    v126 = *(v44 + 2);
    v125 = *(v44 + 3);
    if (v126 >= v125 >> 1)
    {
      sub_100172D8C((v125 > 1), v126 + 1, 1);
      v44 = v192;
    }

    *(v44 + 2) = v126 + 1;
    v127 = &v44[32 * v126];
    *(v127 + 4) = v121;
    *(v127 + 5) = v122;
    *(v127 + 6) = v123;
    *(v127 + 7) = v124;
    v116 += 40;
    --v107;
  }

  while (v107);

  return v44;
}

uint64_t sub_10037D8FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10037D944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 224) = v16;
  *(v9 + 80) = v15;
  *(v9 + 88) = v8;
  *(v9 + 64) = a7;
  *(v9 + 72) = a8;
  *(v9 + 48) = a5;
  *(v9 + 56) = a6;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = type metadata accessor for DIPError.Code();
  *(v9 + 96) = v10;
  *(v9 + 104) = *(v10 - 8);
  *(v9 + 112) = swift_task_alloc();
  sub_100007224(&qword_100835D88, &qword_1006DE890);
  *(v9 + 120) = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  *(v9 + 128) = v11;
  *(v9 + 136) = *(v11 - 8);
  *(v9 + 144) = swift_task_alloc();
  *(v9 + 152) = swift_task_alloc();
  *(v9 + 160) = type metadata accessor for MobileDocumentReaderAuthenticationCertificateFetchResult(0);
  *(v9 + 168) = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  *(v9 + 176) = swift_task_alloc();
  v12 = type metadata accessor for DIPSignpost();
  *(v9 + 184) = v12;
  *(v9 + 192) = *(v12 - 8);
  *(v9 + 200) = swift_task_alloc();

  return _swift_task_switch(sub_10037DB7C, 0, 0);
}

uint64_t sub_10037DB7C()
{
  static DaemonSignposts.MobileDocumentReader.sessionTerminalRegistration.getter();
  DIPSignpost.init(_:)();
  v1 = swift_task_alloc();
  v0[26] = v1;
  *v1 = v0;
  v1[1] = sub_10037DC50;
  v2 = v0[21];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[3];

  return sub_10037E5A4(v2, v9, v7, v8, v5, v6, v3, v4);
}

uint64_t sub_10037DC50()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_10037E4AC;
  }

  else
  {
    v2 = sub_10037DD64;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10037DD64()
{
  v52 = v0;
  v1 = objc_opt_self();
  p_align = &stru_10082BFE8.align;
  v3 = [v1 standardUserDefaults];
  v4._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.injectedMobileDocumentReaderAuthenticationCertificateChain.getter();
  v5 = NSUserDefaults.internalStringArray(forKey:)(v4);

  if (v5)
  {
    defaultLogger()();

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();

    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[19];
    v11 = v0[16];
    v10 = v0[17];
    if (v8)
    {
      v12 = swift_slowAlloc();
      v49 = v11;
      v51[0] = swift_slowAlloc();
      v13 = v51[0];
      *v12 = 136315138;
      v14 = Array.description.getter();
      v48 = v9;
      v16 = sub_100141FE4(v14, v15, v51);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v6, v7, "MobileDocumentReaderAuthenticationCertificate fetchCertificate overriding server response with injected ceritifcate chain %s", v12, 0xCu);
      sub_10000BB78(v13);

      p_align = (&stru_10082BFE8 + 24);

      (*(v10 + 8))(v48, v49);
    }

    else
    {

      (*(v10 + 8))(v9, v11);
    }

    v17 = v0[27];
    v18 = decodeCertificateChain(fromBase64DER:)();

    v19 = v0[21];
    if (v17)
    {
      goto LABEL_22;
    }

    *v19 = v18;
  }

  else
  {
    v17 = v0[27];
  }

  v20 = [v1 *(p_align + 416)];
  v21._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.injectedMobileDocumentReaderAuthenticationExternalData.getter();
  v22 = NSUserDefaults.internalString(forKey:)(v21);

  if (v22.value._object)
  {
    defaultLogger()();

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();

    v25 = os_log_type_enabled(v23, v24);
    v26 = v0[17];
    v27 = v0[18];
    v28 = v0[16];
    if (v25)
    {
      v50 = v0[18];
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v51[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_100141FE4(v22.value._countAndFlagsBits, v22.value._object, v51);
      _os_log_impl(&_mh_execute_header, v23, v24, "MobileDocumentReaderAuthenticationCertificate fetchCertificate overriding server response with injected external data %s", v29, 0xCu);
      sub_10000BB78(v30);

      (*(v26 + 8))(v50, v28);
    }

    else
    {

      (*(v26 + 8))(v27, v28);
    }

    v31 = Data.init(base64Encoded:options:)();
    v33 = v32;

    if (v33 >> 60 == 15)
    {
      v19 = v0[21];
      (*(v0[13] + 104))(v0[14], enum case for DIPError.Code.base64DecodingFailed(_:), v0[12]);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100381EB8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
LABEL_22:
      sub_100381F68(v19, type metadata accessor for MobileDocumentReaderAuthenticationCertificateFetchResult);
      v36 = v0[24];
      v35 = v0[25];
      v37 = v0[23];
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      (*(v36 + 8))(v35, v37);

      v38 = v0[1];
      goto LABEL_28;
    }

    v34 = v33 >> 62;
    if ((v33 >> 62) > 1)
    {
      if (v34 != 2 || *(v31 + 16) == *(v31 + 24))
      {
        goto LABEL_24;
      }
    }

    else if (v34)
    {
      if (v31 == v31 >> 32)
      {
LABEL_24:
        sub_10000BD94(v31, v33);
        v39 = 1;
LABEL_26:
        v41 = v0[20];
        v40 = v0[21];
        v42 = v0[15];
        v43 = sub_100007224(&unk_100835E00, &qword_1006C46A0);
        (*(*(v43 - 8) + 56))(v42, v39, 1, v43);
        sub_100381BC0(v42, v40 + *(v41 + 20));
        goto LABEL_27;
      }
    }

    else if ((v33 & 0xFF000000000000) == 0)
    {
      goto LABEL_24;
    }

    type metadata accessor for MobileDocumentReaderExternalData();
    type metadata accessor for CBORDecoder();
    swift_allocObject();
    CBORDecoder.init()();
    sub_100381EB8(&qword_100836FD0, &type metadata accessor for MobileDocumentReaderExternalData, &protocol conformance descriptor for MobileDocumentReaderExternalData);
    sub_100381EB8(&qword_100836FD8, &type metadata accessor for MobileDocumentReaderExternalData, &protocol conformance descriptor for MobileDocumentReaderExternalData);
    CBOREncodedCBOR.init(_:dataValue:decoder:)();
    if (v17)
    {
      v19 = v0[21];
      goto LABEL_22;
    }

    v39 = 0;
    goto LABEL_26;
  }

LABEL_27:
  v45 = v0[24];
  v44 = v0[25];
  v46 = v0[23];
  sub_100381F00(v0[21], v0[2], type metadata accessor for MobileDocumentReaderAuthenticationCertificateFetchResult);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v45 + 8))(v44, v46);

  v38 = v0[1];
LABEL_28:

  return v38();
}

uint64_t sub_10037E4AC()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v1 + 8))(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10037E5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 2696) = v8;
  *(v9 + 585) = v23;
  *(v9 + 2688) = v22;
  *(v9 + 2680) = a8;
  *(v9 + 2672) = a7;
  *(v9 + 2664) = a6;
  *(v9 + 2656) = a5;
  *(v9 + 2648) = a4;
  *(v9 + 2640) = a3;
  *(v9 + 2632) = a2;
  *(v9 + 2624) = a1;
  sub_100007224(&qword_100833A88, qword_1006BF8E0);
  *(v9 + 2704) = swift_task_alloc();
  *(v9 + 2712) = swift_task_alloc();
  sub_100007224(&qword_100842070, &unk_1006DEF50);
  *(v9 + 2720) = swift_task_alloc();
  v10 = type metadata accessor for MobileDocumentReaderSession.Error.Code();
  *(v9 + 2728) = v10;
  *(v9 + 2736) = *(v10 - 8);
  *(v9 + 2744) = swift_task_alloc();
  *(v9 + 2752) = swift_task_alloc();
  *(v9 + 2760) = swift_task_alloc();
  v11 = type metadata accessor for DIPError.Code();
  *(v9 + 2768) = v11;
  *(v9 + 2776) = *(v11 - 8);
  *(v9 + 2784) = swift_task_alloc();
  *(v9 + 2792) = swift_task_alloc();
  v12 = type metadata accessor for Milestone();
  *(v9 + 2800) = v12;
  *(v9 + 2808) = *(v12 - 8);
  *(v9 + 2816) = swift_task_alloc();
  v13 = type metadata accessor for DIPError();
  *(v9 + 2824) = v13;
  *(v9 + 2832) = *(v13 - 8);
  *(v9 + 2840) = swift_task_alloc();
  *(v9 + 2848) = swift_task_alloc();
  *(v9 + 2856) = swift_task_alloc();
  *(v9 + 2864) = swift_task_alloc();
  *(v9 + 2872) = type metadata accessor for RegisterTerminalResponse(0);
  *(v9 + 2880) = swift_task_alloc();
  *(v9 + 2888) = swift_task_alloc();
  v14 = sub_100007224(&qword_100842078, &unk_1006E9660);
  *(v9 + 2896) = v14;
  *(v9 + 2904) = *(v14 - 8);
  *(v9 + 2912) = swift_task_alloc();
  v15 = type metadata accessor for DeviceInformationProvider();
  *(v9 + 2920) = v15;
  *(v9 + 2928) = *(v15 - 8);
  *(v9 + 2936) = swift_task_alloc();
  v16 = type metadata accessor for UUID();
  *(v9 + 2944) = v16;
  *(v9 + 2952) = *(v16 - 8);
  *(v9 + 2960) = swift_task_alloc();
  v17 = type metadata accessor for MobileDocumentReaderEntitlementChecker();
  *(v9 + 2968) = v17;
  *(v9 + 2976) = *(v17 - 8);
  *(v9 + 2984) = swift_task_alloc();
  v18 = type metadata accessor for HardwareAttestationType();
  *(v9 + 2992) = v18;
  *(v9 + 3000) = *(v18 - 8);
  *(v9 + 3008) = swift_task_alloc();
  *(v9 + 3016) = swift_task_alloc();
  v19 = type metadata accessor for Logger();
  *(v9 + 3024) = v19;
  *(v9 + 3032) = *(v19 - 8);
  *(v9 + 3040) = swift_task_alloc();
  *(v9 + 3048) = swift_task_alloc();
  *(v9 + 3056) = swift_task_alloc();

  return _swift_task_switch(sub_10037EB04, 0, 0);
}

uint64_t sub_10037EB04()
{
  sub_100381C30(*(v0 + 585));
  v3 = [objc_opt_self() standardUserDefaults];
  v4._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.disableRegisterTerminalCall.getter();
  v5 = NSUserDefaults.internalBool(forKey:)(v4);

  if (v5)
  {
    if (*(v0 + 2640))
    {
      defaultLogger()();
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "MobileDocumentReaderAuthenticationCertificateFetcher fetchCertificate disable register terminal call flag is enabled, returning hardcoded certificate.", v8, 2u);
      }

      v9 = *(v0 + 3056);
      v10 = *(v0 + 3032);
      v11 = *(v0 + 3024);

      (*(v10 + 8))(v9, v11);
      sub_100007224(&unk_100845FD0, &qword_1006DB190);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1006DAE90;
      type metadata accessor for SecCertificate(0);
      sub_10034CE68();
      v13 = static NSBundle.internalSettings.getter();
    }

    else
    {
      defaultLogger()();
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "MobileDocumentReaderAuthenticationCertificateFetcher fetchCertificate disable register terminal call flag is enabled, returning hardcoded TOKENLESS certificate.", v24, 2u);
      }

      v25 = *(v0 + 3048);
      v26 = *(v0 + 3032);
      v27 = *(v0 + 3024);

      (*(v26 + 8))(v25, v27);
      sub_100007224(&unk_100845FD0, &qword_1006DB190);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1006DAE90;
      type metadata accessor for SecCertificate(0);
      sub_10034CE68();
      v13 = static NSBundle.internalSettings.getter();
    }

    v28 = static SecCertificateRef.make(with:in:)();
    v29 = *(v0 + 2624);

    *(v12 + 32) = v28;
    v30 = *(type metadata accessor for MobileDocumentReaderAuthenticationCertificateFetchResult(0) + 20);
    v31 = sub_100007224(&unk_100835E00, &qword_1006C46A0);
    (*(*(v31 - 8) + 56))(v29 + v30, 1, 1, v31);
    *v29 = v12;

    v1 = *(v0 + 8);
    goto LABEL_3;
  }

  v14 = *(v0 + 3016);
  v15 = *(v0 + 3008);
  v16 = *(v0 + 3000);
  v17 = *(v0 + 2992);
  v18 = *(v0 + 2688);
  sub_10000BA08(v18, v18[3]);
  dispatch thunk of IdentityKey.attestationType()();
  (*(v16 + 16))(v15, v14, v17);
  v19 = (*(v16 + 88))(v15, v17);
  LODWORD(v14) = enum case for HardwareAttestationType.SE(_:);
  v20 = *(v16 + 8);
  *(v0 + 3064) = v20;
  *(v0 + 3072) = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v15, v17);
  if (v19 != v14)
  {
    v103 = *(v0 + 3016);
    v21 = *(v0 + 2992);
    (*(*(v0 + 2776) + 104))(*(v0 + 2792), enum case for DIPError.Code.documentReaderCertificateAttestationTypeInvalid(_:), *(v0 + 2768));
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_100381EB8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v20(v103, v21);
LABEL_2:

    v1 = *(v0 + 8);
LABEL_3:

    return v1();
  }

  sub_10000BA08(*(v0 + 2688), v18[3]);
  v84 = dispatch thunk of IdentityKey.attestation(_:)();
  v104 = (v0 + 393);
  v32 = *(v0 + 2984);
  v94 = *(v0 + 2976);
  v96 = *(v0 + 2968);
  v71 = *(v0 + 2960);
  v105 = *(v0 + 2952);
  v76 = *(v0 + 2944);
  v78 = *(v0 + 2936);
  v80 = *(v0 + 2928);
  v82 = *(v0 + 2920);
  v74 = *(v0 + 2696);
  v87 = *(v0 + 585);
  v90 = *(v0 + 2672);
  v92 = *(v0 + 2680);
  v88 = *(v0 + 2664);
  v85 = *(v0 + 2656);
  v33 = *(v0 + 2648);
  v102 = *(v33 + 32);
  *(v0 + 3080) = v102;
  v34 = *(v33 + 40);
  *(v0 + 3088) = v34;
  v100 = *(v33 + 48);
  *(v0 + 3096) = v100;
  v35 = *(v33 + 56);
  *(v0 + 3104) = v35;
  v36 = (v33 + *(type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration(0) + 32));
  v99 = *v36;
  *(v0 + 3112) = *v36;
  v37 = v36[1];
  *(v0 + 3120) = v37;
  *(v0 + 2536) = type metadata accessor for BundleRecordFetcher();
  *(v0 + 2544) = &protocol witness table for BundleRecordFetcher;
  sub_100032DBC((v0 + 2512));

  v101 = v34;

  BundleRecordFetcher.init()();
  MobileDocumentReaderEntitlementChecker.init(bundleRecordFetcher:)();
  v98 = MobileDocumentReaderEntitlementChecker.checkDevelopmentFlagEntitlements(auditToken:)(*v33);
  *(v0 + 586) = v98;
  (*(v94 + 8))(v32, v96);
  UUID.init()();
  v95 = UUID.uuidString.getter();
  v97 = v38;
  *(v0 + 3128) = v95;
  *(v0 + 3136) = v38;
  v39 = v76;
  v77 = *(v105 + 8);
  v77(v71, v39);
  *(v0 + 393) = *(v0 + 201);
  *(v0 + 396) = *(v0 + 204);
  v40 = sub_10000BA08((v74 + 16), *(v74 + 40));
  sub_100020260(*(*v40 + OBJC_IVAR____TtC8coreidvd13DIPWebService_httpSession) + OBJC_IVAR____TtC8coreidvd14DIPHTTPSession_accountManager, v0 + 2552);
  sub_10000BA08((v0 + 2552), *(v0 + 2576));
  sub_100381E78(v85, v88, v90, v92);

  v86 = dispatch thunk of DIPAccountManagerProtocol.appleAuthHeader(_:)();
  *(v0 + 3144) = v86;
  v93 = v41;
  *(v0 + 3152) = v41;
  sub_10000BB78((v0 + 2552));
  DeviceInformationProvider.init()();
  v89 = DeviceInformationProvider.uniqueDeviceID.getter();
  v91 = v42;
  *(v0 + 3160) = v89;
  *(v0 + 3168) = v42;
  (*(v80 + 8))(v78, v82);
  if (qword_100832D18 != -1)
  {
    swift_once();
  }

  v43 = *(v0 + 2960);
  v44 = *(v0 + 2944);
  v79 = *(v0 + 2640);
  v72 = *(v0 + 2632);
  v45 = xmmword_100882478;
  *(v0 + 3176) = xmmword_100882478;

  v67 = *(v0 + 2672);
  v69 = *(v0 + 2656);
  UUID.init()();
  v46 = UUID.uuidString.getter();
  v48 = v47;
  *(v0 + 3192) = v46;
  *(v0 + 3200) = v47;
  v77(v43, v44);

  *(v0 + 16) = v46;
  *(v0 + 24) = v48;
  v75 = v48;
  *(v0 + 32) = v95;
  *(v0 + 40) = v97;
  *(v0 + 48) = v86;
  *(v0 + 56) = v93;
  *(v0 + 64) = v89;
  *(v0 + 72) = v91;
  *(v0 + 80) = v45;
  *(v0 + 96) = v102;
  *(v0 + 104) = v101;
  *(v0 + 112) = v100;
  *(v0 + 120) = v35;
  *(v0 + 128) = v99;
  *(v0 + 136) = v37;
  *(v0 + 144) = v72;
  *(v0 + 152) = v79;
  *(v0 + 160) = v87;
  v49 = *v104;
  *(v0 + 164) = *(v0 + 396);
  *(v0 + 161) = v49;
  *(v0 + 184) = v67;
  *(v0 + 168) = v69;
  *(v0 + 200) = v98;
  v50 = *(v0 + 80);
  v51 = *(v0 + 96);
  v52 = *(v0 + 128);
  *(v0 + 304) = *(v0 + 112);
  *(v0 + 320) = v52;
  *(v0 + 272) = v50;
  *(v0 + 288) = v51;
  v53 = *(v0 + 16);
  v54 = *(v0 + 32);
  v55 = *(v0 + 64);
  *(v0 + 240) = *(v0 + 48);
  *(v0 + 256) = v55;
  *(v0 + 208) = v53;
  *(v0 + 224) = v54;
  v56 = *(v0 + 144);
  v57 = *(v0 + 160);
  v58 = *(v0 + 176);
  *(v0 + 377) = *(v0 + 185);
  *(v0 + 352) = v57;
  *(v0 + 368) = v58;
  *(v0 + 336) = v56;
  sub_1000AE3D0(v0 + 16, v0 + 400);
  sub_1000A7D80();
  sub_1000A7DD4();
  JWSSignedJSON.init(payload:)();
  JWSSignedJSON.setCertificateChain(_:)(v84);
  if (v59)
  {
    v60 = *(v0 + 3016);
    v68 = *(v0 + 2992);
    v61 = *(v0 + 2912);
    v62 = *(v0 + 2904);
    v63 = *(v0 + 2896);
    v73 = *(v0 + 2640);
    v70 = *(v0 + 2632);
    v81 = *(v0 + 2656);
    v83 = *(v0 + 2672);

    (*(v62 + 8))(v61, v63);
    v20(v60, v68);
    *(v0 + 592) = v46;
    *(v0 + 600) = v75;
    *(v0 + 608) = v95;
    *(v0 + 616) = v97;
    *(v0 + 624) = v86;
    *(v0 + 632) = v93;
    *(v0 + 640) = v89;
    *(v0 + 648) = v91;
    *(v0 + 656) = v45;
    *(v0 + 672) = v102;
    *(v0 + 680) = v101;
    *(v0 + 688) = v100;
    *(v0 + 696) = v35;
    *(v0 + 704) = v99;
    *(v0 + 712) = v37;
    *(v0 + 720) = v70;
    *(v0 + 728) = v73;
    *(v0 + 736) = v87;
    *(v0 + 737) = *v104;
    *(v0 + 740) = *(v0 + 396);
    *(v0 + 744) = v81;
    *(v0 + 760) = v83;
    *(v0 + 776) = v98;
    sub_1000AE408(v0 + 592);
    goto LABEL_2;
  }

  JWSSignedJSON.setKid(_:)();
  v64 = swift_task_alloc();
  *(v0 + 3208) = v64;
  *v64 = v0;
  v64[1] = sub_10037FA98;
  v65 = *(v0 + 2896);
  v66 = *(v0 + 2688);

  return JWSSignedJSON.sign(_:)(v66, v65);
}