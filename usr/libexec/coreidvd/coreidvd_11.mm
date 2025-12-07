uint64_t sub_1001105B4(uint64_t a1)
{
  v3 = *v2;
  v3[19] = a1;
  v3[20] = v1;

  if (v1)
  {
    v4 = v3[7];
    v5 = sub_1001107BC;
  }

  else
  {
    v6 = v3[7];

    v5 = sub_1001106DC;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1001106DC()
{
  if (qword_100832B88 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Milestone();
  sub_10003170C(v1, qword_100882098);
  Milestone.log()();
  v2 = *(v0 + 152);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1001107BC()
{

  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  static DIPOIDVerifier.getSpecificCertificateError(_:)();
  swift_getErrorValue();
  Error.dipErrorCode.getter();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    goto LABEL_2;
  }

  v5 = v0[13];
  v6 = v0[14];
  v7 = v0[11];
  sub_10000BBC4(v0[12], v7, &qword_10083B020, &unk_1006D8ED0);
  v8 = (*(v6 + 88))(v7, v5);
  if (v8 == enum case for DIPError.Code.revokedCertificate(_:))
  {
    if (qword_100832B90 != -1)
    {
      swift_once();
    }

    v4 = qword_1008820B0;
  }

  else
  {
    if (v8 != enum case for DIPError.Code.expiredCertificate(_:))
    {
      (*(v0[14] + 8))(v0[11], v0[13]);
LABEL_2:
      if (qword_100832BA0 != -1)
      {
        swift_once();
      }

      v4 = qword_1008820E0;
      goto LABEL_13;
    }

    if (qword_100832B98 != -1)
    {
      swift_once();
    }

    v4 = qword_1008820C8;
  }

LABEL_13:
  v9 = v0[16];
  v10 = v0[12];
  v11 = type metadata accessor for Milestone();
  sub_10003170C(v11, v4);
  Milestone.log()();
  sub_10000BE18(v10, &qword_10083B020, &unk_1006D8ED0);
  v12 = [v9 standardUserDefaults];
  v13._countAndFlagsBits = static DaemonInternalDefaultsKeys.KRL.disableTrustValidation.getter();
  LOBYTE(v10) = NSUserDefaults.internalBool(forKey:)(v13);

  if (v10)
  {
    defaultLogger()();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "KRLTrustValidator trust validation failed. This check is disabled in settings, bypassing.", v16, 2u);
    }

    v18 = v0[9];
    v17 = v0[10];
    v19 = v0[8];

    (*(v18 + 8))(v17, v19);
    v20 = sub_10011184C();

    v21 = v0[1];

    return v21(v20);
  }

  else
  {
    swift_willThrow();

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_100110B90(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Logger();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for DIPError.Code();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_100110CB0, v2, 0);
}

uint64_t sub_100110CB0()
{
  v1 = *(*(v0 + 32) + 112);
  *(v0 + 88) = v1;

  return _swift_task_switch(sub_100110D28, v1, 0);
}

uint64_t sub_100110D28()
{
  COSESignatureValidator.validateSignature(of:with:)();
  v1 = *(v0 + 32);

  return _swift_task_switch(sub_100110ECC, v1, 0);
}

uint64_t sub_100110ECC()
{
  if (qword_100832B78 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Milestone();
  sub_10003170C(v1, qword_100882068);
  Milestone.log()();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100110F88()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2._countAndFlagsBits = static DaemonInternalDefaultsKeys.KRL.disableSignatureValidation.getter();
  v3 = NSUserDefaults.internalBool(forKey:)(v2);

  if (v3)
  {
    defaultLogger()();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    v6 = os_log_type_enabled(v4, v5);
    v8 = v0[6];
    v7 = v0[7];
    v9 = v0[5];
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "KRLTrustValidator signature validation failed. This check is disabled in settings, bypassing.", v10, 2u);
    }

    (*(v8 + 8))(v7, v9);

    v11 = v0[1];
  }

  else
  {
    if (qword_100832B80 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Milestone();
    sub_10003170C(v12, qword_100882080);
    Milestone.log()();
    swift_willThrow();

    v11 = v0[1];
  }

  return v11();
}

uint64_t sub_100111174()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1001111D0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100027B9C;

  return sub_10010F5C8(a1);
}

uint64_t sub_100111268(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 40) = a1;
  *(v2 + 48) = v3;
  return _swift_task_switch(sub_100111288, v3, 0);
}

uint64_t sub_100111288()
{
  v1 = *(*(v0 + 48) + 112);
  *(v0 + 56) = v1;

  return _swift_task_switch(sub_100111300, v1, 0);
}

uint64_t sub_100111300()
{
  v1 = *(v0 + 56) + OBJC_IVAR____TtC8coreidvd14TrustValidator_oidVerifier;
  swift_beginAccess();
  sub_10001F370(v1, *(v1 + 24));
  dispatch thunk of OIDVerifying.setTrustedRoots(_:)();
  swift_endAccess();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001113C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = type metadata accessor for DIPError.Code();
  v36 = *(v39 - 8);
  v6 = __chkstk_darwin(v39);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v34 - v10;
  v12 = __chkstk_darwin(v9);
  v38 = &v34 - v13;
  __chkstk_darwin(v12);
  v37 = &v34 - v14;
  v15 = sub_100007224(&qword_10083AB90, &unk_1006DE370);
  __chkstk_darwin(v15 - 8);
  v17 = &v34 - v16;
  v18 = type metadata accessor for COSESignatureValidator();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v40 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DIPOIDVerifier();
  v44 = v21;
  v45 = &protocol witness table for DIPOIDVerifier;
  v22 = sub_100032DBC(&v43);
  (*(*(v21 - 8) + 32))(v22, a2, v21);
  type metadata accessor for TrustValidator(0);
  v23 = swift_allocObject();
  swift_defaultActor_initialize();
  v42 = a1;
  sub_10000BBC4(a1, v17, &qword_10083AB90, &unk_1006DE370);
  v24 = *(v19 + 48);
  v41 = v17;
  if (v24(v17, 1, v18) == 1)
  {
    v34 = v24;
    v35 = a3;
    v25 = *(v36 + 104);
    v36 = v18;
    v26 = v39;
    v25(v37, enum case for DIPError.Code.coseUnknownAlgorithm(_:), v39);
    v25(v38, enum case for DIPError.Code.coseInvalidPublicKey(_:), v26);
    v25(v11, enum case for DIPError.Code.coseMisformattedSignature(_:), v26);
    v27 = v26;
    v18 = v36;
    v25(v8, enum case for DIPError.Code.coseInvalidSignature(_:), v27);
    a3 = v35;
    v28 = v40;
    COSESignatureValidator.init(errorCodeUnknownAlgorithm:errorCodeInvalidPublicKey:errorCodeMisformattedSignature:errorCodeInvalidSignature:)();
    sub_10000BE18(v42, &qword_10083AB90, &unk_1006DE370);
    v29 = v41;
    v30 = v28;
    if (v34(v41, 1, v18) != 1)
    {
      sub_10000BE18(v29, &qword_10083AB90, &unk_1006DE370);
    }
  }

  else
  {
    sub_10000BE18(v42, &qword_10083AB90, &unk_1006DE370);
    v30 = v40;
    (*(v19 + 32))(v40, v41, v18);
  }

  (*(v19 + 32))(v23 + OBJC_IVAR____TtC8coreidvd14TrustValidator_signatureValidator, v30, v18);
  sub_10001F358(&v43, v23 + OBJC_IVAR____TtC8coreidvd14TrustValidator_oidVerifier);
  v31 = OBJC_IVAR____TtC8coreidvd14TrustValidator_certUsage;
  v32 = type metadata accessor for DIPCertUsage();
  (*(*(v32 - 8) + 32))(v23 + v31, a3, v32);
  return v23;
}

void *sub_10011184C()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  __chkstk_darwin(v2);
  v4 = &v10 - v3;
  if (COSE_Sign1.x509Chain.getter())
  {
    v8 = decodeCertificateChain(fromDER:)();

    return v8;
  }

  else
  {
    defaultLogger()();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "KRLTrustValidator signedKRL does not include a x509 chain", v7, 2u);
    }

    (*(v1 + 8))(v4, v0);
    return _swiftEmptyArrayStorage;
  }
}

uint64_t sub_100111AF4()
{
  type metadata accessor for SecCertificate(0);
  result = static SecCertificateRef.appleExternalRoots.getter();
  qword_10083AB98 = result;
  return result;
}

uint64_t sub_100111B28()
{
  v0 = type metadata accessor for DIPHTTPSession.Configuration(0);
  sub_100031898(v0, qword_10083ABA0);
  v1 = sub_10003170C(v0, qword_10083ABA0);
  v2 = v0[6];
  *&v1[v2] = 0x3FF0000000000000;
  v3 = enum case for DIPBackoffStrategy.exponential(_:);
  v4 = type metadata accessor for DIPBackoffStrategy();
  result = (*(*(v4 - 8) + 104))(&v1[v2], v3, v4);
  *v1 = 0x4024000000000000;
  *(v1 + 1) = 0;
  v1[v0[7]] = 0;
  v1[v0[8]] = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  return result;
}

uint64_t sub_100111BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[15] = a6;
  v7[16] = v6;
  v7[13] = a4;
  v7[14] = a5;
  v7[11] = a2;
  v7[12] = a3;
  v7[10] = a1;
  v8 = type metadata accessor for DIPError();
  v7[17] = v8;
  v7[18] = *(v8 - 8);
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v7[21] = sub_100007224(&qword_100834B60, &qword_1006C0310);
  v7[22] = swift_task_alloc();
  v7[23] = swift_task_alloc();
  sub_100007224(&qword_10083B020, &unk_1006D8ED0);
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();
  v7[28] = swift_task_alloc();
  v7[29] = swift_task_alloc();
  v9 = type metadata accessor for DIPError.Code();
  v7[30] = v9;
  v7[31] = *(v9 - 8);
  v7[32] = swift_task_alloc();
  v10 = type metadata accessor for ISO18013RevocationStatus.IdentifierList();
  v7[33] = v10;
  v7[34] = *(v10 - 8);
  v7[35] = swift_task_alloc();
  v11 = type metadata accessor for ISO18013RevocationStatus();
  v7[36] = v11;
  v7[37] = *(v11 - 8);
  v7[38] = swift_task_alloc();
  v7[39] = type metadata accessor for DIPWebResponse(0);
  v7[40] = swift_task_alloc();
  v12 = type metadata accessor for Date();
  v7[41] = v12;
  v7[42] = *(v12 - 8);
  v7[43] = swift_task_alloc();
  v7[44] = swift_task_alloc();
  v13 = type metadata accessor for URL();
  v7[45] = v13;
  v7[46] = *(v13 - 8);
  v7[47] = swift_task_alloc();
  v14 = type metadata accessor for Logger();
  v7[48] = v14;
  v7[49] = *(v14 - 8);
  v7[50] = swift_task_alloc();
  v7[51] = swift_task_alloc();
  v7[52] = swift_task_alloc();
  v7[53] = swift_task_alloc();
  v7[54] = swift_task_alloc();
  v7[55] = swift_task_alloc();
  v7[56] = swift_task_alloc();
  v15 = swift_task_alloc();
  v7[57] = v15;
  *v15 = v7;
  v15[1] = sub_10011207C;

  return sub_10010EDB0();
}

uint64_t sub_10011207C(char a1)
{
  v2 = *(*v1 + 128);
  *(*v1 + 616) = a1;

  return _swift_task_switch(sub_100112194, v2, 0);
}

uint64_t sub_100112194(uint64_t a1)
{
  v44 = v1;
  if (*(v1 + 616) == 1)
  {
    v2 = [objc_opt_self() standardUserDefaults];
    v3._countAndFlagsBits = static DaemonInternalDefaultsKeys.KRL.forceKRLCheckFailure.getter();
    v4 = NSUserDefaults.internalBool(forKey:)(v3);

    if (v4)
    {
      defaultLogger()();
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "Forcing failure on KRL check from debug settings.", v7, 2u);
      }

      v8 = *(v1 + 432);
      v9 = *(v1 + 384);
      v10 = *(v1 + 392);
      v12 = *(v1 + 248);
      v11 = *(v1 + 256);
      v13 = *(v1 + 240);

      (*(v10 + 8))(v8, v9);
      (*(v12 + 104))(v11, enum case for DIPError.Code.krlMatchedRevokedKey(_:), v13);
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_10011A98C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      v14 = *(v1 + 8);

      return v14();
    }

    else
    {
      v25 = *(v1 + 80);
      v24 = *(v1 + 88);
      defaultLogger()();
      sub_10000B8B8(v25, v24);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.debug.getter();
      sub_10000B90C(v25, v24);
      v28 = os_log_type_enabled(v26, v27);
      v29 = *(v1 + 448);
      v31 = *(v1 + 384);
      v30 = *(v1 + 392);
      if (v28)
      {
        v42 = *(v1 + 448);
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v43 = v33;
        *v32 = 136315138;
        Data.base16EncodedString()();
        v34 = String.lowercased()();

        v35 = sub_100141FE4(v34._countAndFlagsBits, v34._object, &v43);

        *(v32 + 4) = v35;
        _os_log_impl(&_mh_execute_header, v26, v27, "PresentmentKeyRevocationValidator Validating %s against KRL", v32, 0xCu);
        sub_10000BB78(v33);

        v36 = *(v30 + 8);
        v36(v42, v31);
      }

      else
      {

        v36 = *(v30 + 8);
        v36(v29, v31);
      }

      *(v1 + 464) = v36;
      v37 = swift_task_alloc();
      *(v1 + 472) = v37;
      *v37 = v1;
      v37[1] = sub_1001128DC;
      v38 = *(v1 + 376);
      v40 = *(v1 + 88);
      v39 = *(v1 + 96);
      v41 = *(v1 + 80);

      return sub_100118EE8(v38, v39, v41, v40);
    }
  }

  else
  {
    defaultLogger()();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v1 + 424);
    v20 = *(v1 + 384);
    v21 = *(v1 + 392);
    if (v18)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "PresentmentKeyRevocationValidator KRL Feature is not enabled, aborting validation", v22, 2u);
    }

    (*(v21 + 8))(v19, v20);

    v23 = *(v1 + 8);

    return v23(0, 2, 0, 0);
  }
}

uint64_t sub_1001128DC()
{
  v2 = *v1;
  *(*v1 + 480) = v0;

  v3 = *(v2 + 128);
  if (v0)
  {
    v4 = sub_1001141FC;
  }

  else
  {
    v4 = sub_100112A08;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100112A08(uint64_t a1)
{
  v2 = v1[44];
  v3 = v1[41];
  v4 = v1[42];
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v1[61] = v5;
  v6 = *(v4 + 8);
  v1[62] = v6;
  v1[63] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v3);
  v7 = swift_task_alloc();
  v1[64] = v7;
  *v7 = v1;
  v7[1] = sub_100112AE8;
  v8 = v1[47];
  v9 = v1[40];
  v10 = v1[15];

  return sub_100116A7C(v9, v8, v10);
}

uint64_t sub_100112AE8()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  v3 = *(v2 + 128);
  if (v0)
  {
    v4 = sub_100114B20;
  }

  else
  {
    v4 = sub_100112C14;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100112C14(uint64_t a1)
{
  v2 = v1[62];
  v3 = v1[44];
  v5 = v1[40];
  v4 = v1[41];
  v6 = v1[39];
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v1[66] = v7;
  v2(v3, v4);
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v1[67] = v8;
  v2(v3, v4);
  v9 = (v5 + *(v6 + 20));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_task_alloc();
  v1[68] = v12;
  *v12 = v1;
  v12[1] = sub_100112D1C;
  v13 = v1[38];
  v14 = v1[13];
  v15 = v1[14];

  return sub_100117820(v13, v11, v10, v14, v15);
}

uint64_t sub_100112D1C()
{
  v2 = *v1;
  *(*v1 + 552) = v0;

  v3 = *(v2 + 128);
  if (v0)
  {
    v4 = sub_10011545C;
  }

  else
  {
    v4 = sub_100112E48;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100112E48()
{
  v169 = v0;
  v1 = *(v0 + 552);
  v2 = *(v0 + 344);
  ISO18013RevocationStatus.expirationDate.getter();
  sub_1001186BC(v2);
  *(v0 + 560) = v1;
  v3 = *(v0 + 344);
  v4 = *(v0 + 328);
  if (v1)
  {
    v5 = *(v0 + 240);
    v6 = *(v0 + 248);
    v7 = *(v0 + 200);
    v8 = *(v0 + 208);
    v9 = *(v0 + 176);
    v158 = *(v0 + 168);
    (*(v0 + 496))(v3, v4);
    swift_getErrorValue();
    swift_errorRetain();
    Error.dipErrorCode.getter();
    (*(v6 + 104))(v7, enum case for DIPError.Code.krlExpired(_:), v5);
    (*(v6 + 56))(v7, 0, 1, v5);
    v10 = *(v158 + 48);
    sub_10000BBC4(v8, v9, &qword_10083B020, &unk_1006D8ED0);
    sub_10000BBC4(v7, v9 + v10, &qword_10083B020, &unk_1006D8ED0);
    v11 = *(v6 + 48);
    v12 = v11(v9, 1, v5);
    v13 = *(v0 + 240);
    if (v12 == 1)
    {
      v14 = *(v0 + 208);
      sub_10000BE18(*(v0 + 200), &qword_10083B020, &unk_1006D8ED0);
      sub_10000BE18(v14, &qword_10083B020, &unk_1006D8ED0);
      if (v11(v9 + v10, 1, v13) == 1)
      {
        sub_10000BE18(*(v0 + 176), &qword_10083B020, &unk_1006D8ED0);

        goto LABEL_10;
      }
    }

    else
    {
      sub_10000BBC4(*(v0 + 176), *(v0 + 192), &qword_10083B020, &unk_1006D8ED0);
      if (v11(v9 + v10, 1, v13) != 1)
      {
        v24 = *(v0 + 248);
        v25 = *(v0 + 256);
        v26 = *(v0 + 240);
        v28 = *(v0 + 200);
        v27 = *(v0 + 208);
        v29 = *(v0 + 192);
        v159 = *(v0 + 176);
        (*(v24 + 32))(v25, v9 + v10, v26);
        sub_10011A98C(&qword_100834B68, &type metadata accessor for DIPError.Code, &protocol conformance descriptor for DIPError.Code);
        v30 = dispatch thunk of static Equatable.== infix(_:_:)();
        v31 = *(v24 + 8);
        v31(v25, v26);
        sub_10000BE18(v28, &qword_10083B020, &unk_1006D8ED0);
        sub_10000BE18(v27, &qword_10083B020, &unk_1006D8ED0);
        v31(v29, v26);
        sub_10000BE18(v159, &qword_10083B020, &unk_1006D8ED0);

        if (v30)
        {
LABEL_10:
          v32 = *(v0 + 320);
          if (*(v32 + *(*(v0 + 312) + 28)) == 1 && *(v0 + 120) <= 0)
          {
            defaultLogger()();
            v33 = Logger.logObject.getter();
            v34 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v33, v34))
            {
              v35 = *(v0 + 120);
              v36 = swift_slowAlloc();
              *v36 = 134217984;
              *(v36 + 4) = v35 + 1;
              _os_log_impl(&_mh_execute_header, v33, v34, "PresentmentKeyRevocationValidator Cached response expired, invalidating cache, and attempting refetch %ld", v36, 0xCu);
            }

            v37 = *(v0 + 464);
            v38 = *(v0 + 400);
            v39 = *(v0 + 384);

            v37(v38, v39);
            if (qword_100832D20 != -1)
            {
              swift_once();
            }

            v40 = *(v0 + 120);
            v41 = qword_100882498;
            isa = URLRequest._bridgeToObjectiveC()().super.isa;
            [v41 removeCachedResponseForRequest:isa];

            v43 = swift_task_alloc();
            *(v0 + 568) = v43;
            *v43 = v0;
            v43[1] = sub_100115DA4;
            v44 = *(v0 + 104);
            v45 = *(v0 + 112);
            v46 = *(v0 + 88);
            v47 = *(v0 + 96);
            v48 = *(v0 + 80);

            return sub_100111BFC(v48, v46, v47, v44, v45, v40 + 1);
          }

          v117 = *(v0 + 368);
          v116 = *(v0 + 376);
          v118 = *(v0 + 360);
          v120 = *(v0 + 296);
          v119 = *(v0 + 304);
          v121 = *(v0 + 288);
          swift_willThrow();
          (*(v120 + 8))(v119, v121);
          (*(v117 + 8))(v116, v118);
LABEL_20:
          sub_10011A8CC(v32);
          v59 = *(v0 + 240);
          v60 = *(v0 + 248);
          v62 = *(v0 + 224);
          v61 = *(v0 + 232);
          v63 = *(v0 + 184);
          v64 = *(v0 + 168);
          swift_getErrorValue();
          swift_errorRetain();
          Error.dipErrorCode.getter();
          v154 = *(v60 + 104);
          v154(v62, enum case for DIPError.Code.krlMatchedRevokedKey(_:), v59);
          (*(v60 + 56))(v62, 0, 1, v59);
          v65 = *(v64 + 48);
          sub_10000BBC4(v61, v63, &qword_10083B020, &unk_1006D8ED0);
          sub_10000BBC4(v62, v63 + v65, &qword_10083B020, &unk_1006D8ED0);
          v66 = *(v60 + 48);
          v67 = v66(v63, 1, v59);
          v68 = *(v0 + 240);
          if (v67 == 1)
          {
            v69 = *(v0 + 232);
            sub_10000BE18(*(v0 + 224), &qword_10083B020, &unk_1006D8ED0);
            sub_10000BE18(v69, &qword_10083B020, &unk_1006D8ED0);
            if (v66(v63 + v65, 1, v68) == 1)
            {
              sub_10000BE18(*(v0 + 184), &qword_10083B020, &unk_1006D8ED0);
LABEL_31:
              v104 = *(v0 + 80);
              v103 = *(v0 + 88);

              defaultLogger()();
              sub_10000B8B8(v104, v103);
              v105 = Logger.logObject.getter();
              v106 = static os_log_type_t.debug.getter();
              sub_10000B90C(v104, v103);
              v107 = os_log_type_enabled(v105, v106);
              v108 = *(v0 + 464);
              v109 = *(v0 + 416);
              v110 = *(v0 + 384);
              if (v107)
              {
                v156 = *(v0 + 416);
                v161 = *(v0 + 464);
                v111 = swift_slowAlloc();
                v112 = swift_slowAlloc();
                v168[0] = v112;
                *v111 = 136315138;
                Data.base16EncodedString()();
                v113 = String.lowercased()();

                v114 = sub_100141FE4(v113._countAndFlagsBits, v113._object, v168);

                *(v111 + 4) = v114;
                _os_log_impl(&_mh_execute_header, v105, v106, "PresentmentKeyRevocationValidator Matched %s with revoked key in KRL.", v111, 0xCu);
                sub_10000BB78(v112);

                v161(v156, v110);
              }

              else
              {

                v108(v109, v110);
              }

              swift_willThrow();
LABEL_35:

              v115 = *(v0 + 8);

              return v115();
            }
          }

          else
          {
            sub_10000BBC4(*(v0 + 184), *(v0 + 216), &qword_10083B020, &unk_1006D8ED0);
            if (v66(v63 + v65, 1, v68) != 1)
            {
              v96 = *(v0 + 248);
              v95 = *(v0 + 256);
              v97 = *(v0 + 240);
              v153 = *(v0 + 232);
              v98 = *(v0 + 216);
              v99 = *(v0 + 224);
              v100 = *(v0 + 184);
              (*(v96 + 32))(v95, v63 + v65, v97);
              sub_10011A98C(&qword_100834B68, &type metadata accessor for DIPError.Code, &protocol conformance descriptor for DIPError.Code);
              v101 = dispatch thunk of static Equatable.== infix(_:_:)();
              v102 = *(v96 + 8);
              v102(v95, v97);
              sub_10000BE18(v99, &qword_10083B020, &unk_1006D8ED0);
              sub_10000BE18(v153, &qword_10083B020, &unk_1006D8ED0);
              v102(v98, v97);
              sub_10000BE18(v100, &qword_10083B020, &unk_1006D8ED0);
              if (v101)
              {
                goto LABEL_31;
              }

LABEL_26:
              v75 = *(v0 + 152);
              v74 = *(v0 + 160);
              v76 = *(v0 + 136);
              v77 = *(v0 + 144);
              v154(*(v0 + 256), enum case for DIPError.Code.krlCouldNotFetch(_:), *(v0 + 240));
              swift_errorRetain();
              sub_1000402AC(_swiftEmptyArrayStorage);
              DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
              defaultLogger()();
              v78 = *(v77 + 16);
              v78(v75, v74, v76);
              v79 = Logger.logObject.getter();
              v80 = static os_log_type_t.error.getter();
              v81 = os_log_type_enabled(v79, v80);
              v83 = *(v0 + 144);
              v82 = *(v0 + 152);
              v84 = *(v0 + 136);
              if (v81)
              {
                v85 = swift_slowAlloc();
                v160 = swift_slowAlloc();
                *v85 = 138412290;
                sub_10011A98C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
                swift_allocError();
                v155 = v80;
                v78(v86, v82, v84);
                v87 = _swift_stdlib_bridgeErrorToNSError();
                v88 = v78;
                v89 = v82;
                v90 = *(v83 + 8);
                v90(v89, v84);
                *(v85 + 4) = v87;
                *v160 = v87;
                _os_log_impl(&_mh_execute_header, v79, v155, "PresentmentKeyRevocationValidator Failed validate credential: %@", v85, 0xCu);
                sub_10000BE18(v160, &unk_100833B50, &unk_1006D8FB0);
              }

              else
              {

                v88 = v78;
                v91 = v82;
                v90 = *(v83 + 8);
                v90(v91, v84);
              }

              v92 = *(v0 + 160);
              v93 = *(v0 + 136);
              (*(v0 + 464))(*(v0 + 408), *(v0 + 384));
              sub_10011A98C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
              swift_allocError();
              v88(v94, v92, v93);
              swift_willThrow();

              v90(v92, v93);
              goto LABEL_35;
            }

            v70 = *(v0 + 240);
            v71 = *(v0 + 248);
            v72 = *(v0 + 232);
            v73 = *(v0 + 216);
            sub_10000BE18(*(v0 + 224), &qword_10083B020, &unk_1006D8ED0);
            sub_10000BE18(v72, &qword_10083B020, &unk_1006D8ED0);
            (*(v71 + 8))(v73, v70);
          }

          sub_10000BE18(*(v0 + 184), &qword_100834B60, &qword_1006C0310);
          goto LABEL_26;
        }

LABEL_19:
        v57 = *(v0 + 368);
        v56 = *(v0 + 376);
        v58 = *(v0 + 360);
        v32 = *(v0 + 320);
        (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
        (*(v57 + 8))(v56, v58);
        goto LABEL_20;
      }

      v20 = *(v0 + 240);
      v21 = *(v0 + 248);
      v22 = *(v0 + 208);
      v23 = *(v0 + 192);
      sub_10000BE18(*(v0 + 200), &qword_10083B020, &unk_1006D8ED0);
      sub_10000BE18(v22, &qword_10083B020, &unk_1006D8ED0);
      (*(v21 + 8))(v23, v20);
    }

    sub_10000BE18(*(v0 + 176), &qword_100834B60, &qword_1006C0310);

    goto LABEL_19;
  }

  (*(v0 + 496))(v3, v4);
  v15 = ISO18013RevocationStatus.uri.getter();
  v17 = v16;
  v18 = URL.absoluteString.getter();
  sub_10011A9D4(v15, v17, v18, v19);
  v50 = *(v0 + 320);
  v51 = *(v0 + 304);
  v53 = *(v0 + 80);
  v52 = *(v0 + 88);

  v54 = ISO18013RevocationStatus.ttl.getter();
  sub_10011AFE4(v50, v54, v55 & 1);
  sub_10011B180(v53, v52, v51);
  v122 = *(v0 + 536);
  v123 = *(v0 + 496);
  v124 = *(v0 + 352);
  v125 = *(v0 + 328);
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v127 = v126;
  v123(v124, v125);
  if (qword_100832BB0 != -1)
  {
    swift_once();
  }

  v129 = *(v0 + 80);
  v128 = *(v0 + 88);
  v130 = type metadata accessor for Milestone();
  sub_10003170C(v130, qword_100882110);
  Milestone.log()();
  defaultLogger()();
  sub_10000B8B8(v129, v128);
  v131 = Logger.logObject.getter();
  v132 = static os_log_type_t.debug.getter();
  sub_10000B90C(v129, v128);
  v133 = os_log_type_enabled(v131, v132);
  v134 = *(v0 + 464);
  v135 = *(v0 + 440);
  v136 = *(v0 + 384);
  if (v133)
  {
    v165 = *(v0 + 440);
    v162 = *(v0 + 464);
    v137 = swift_slowAlloc();
    v138 = swift_slowAlloc();
    v168[0] = v138;
    *v137 = 136315138;
    Data.base16EncodedString()();
    v139 = String.lowercased()();

    v140 = sub_100141FE4(v139._countAndFlagsBits, v139._object, v168);

    *(v137 + 4) = v140;
    _os_log_impl(&_mh_execute_header, v131, v132, "PresentmentKeyRevocationValidator Successfually validated %s against KRL.", v137, 0xCu);
    sub_10000BB78(v138);

    v162(v165, v136);
  }

  else
  {

    v134(v135, v136);
  }

  v141 = v127 - v122;
  v142 = *(v0 + 368);
  v157 = *(v0 + 360);
  v143 = *(v0 + 320);
  v163 = *(v0 + 312);
  v166 = *(v0 + 376);
  v144 = *(v0 + 296);
  v145 = *(v0 + 304);
  v147 = *(v0 + 280);
  v146 = *(v0 + 288);
  v148 = *(v0 + 528) - *(v0 + 488);
  v150 = *(v0 + 264);
  v149 = *(v0 + 272);
  ISO18013RevocationStatus.identifierList.getter();
  v151 = ISO18013RevocationStatus.IdentifierList.identifiers.getter();
  (*(v149 + 8))(v147, v150);
  (*(v144 + 8))(v145, v146);
  (*(v142 + 8))(v166, v157);
  v167 = *(v151 + 16);

  v164 = *(v143 + *(v163 + 28));
  sub_10011A8CC(v143);

  v152 = *(v0 + 8);

  return v152(v167, v164, *&v148, *&v141);
}

uint64_t sub_1001141FC()
{
  v66 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v4 = *(v0 + 224);
  v3 = *(v0 + 232);
  v5 = *(v0 + 184);
  v61 = *(v0 + 168);
  swift_getErrorValue();
  swift_errorRetain();
  Error.dipErrorCode.getter();
  v58 = *(v2 + 104);
  v58(v4, enum case for DIPError.Code.krlMatchedRevokedKey(_:), v1);
  (*(v2 + 56))(v4, 0, 1, v1);
  v6 = *(v61 + 48);
  sub_10000BBC4(v3, v5, &qword_10083B020, &unk_1006D8ED0);
  sub_10000BBC4(v4, v5 + v6, &qword_10083B020, &unk_1006D8ED0);
  v7 = *(v2 + 48);
  v8 = v7(v5, 1, v1);
  v9 = *(v0 + 240);
  if (v8 != 1)
  {
    sub_10000BBC4(*(v0 + 184), *(v0 + 216), &qword_10083B020, &unk_1006D8ED0);
    if (v7(v5 + v6, 1, v9) != 1)
    {
      v37 = *(v0 + 248);
      v36 = *(v0 + 256);
      v38 = *(v0 + 240);
      v57 = *(v0 + 232);
      v39 = *(v0 + 216);
      v40 = *(v0 + 224);
      v63 = *(v0 + 184);
      (*(v37 + 32))(v36, v5 + v6, v38);
      sub_10011A98C(&qword_100834B68, &type metadata accessor for DIPError.Code, &protocol conformance descriptor for DIPError.Code);
      v41 = dispatch thunk of static Equatable.== infix(_:_:)();
      v42 = *(v37 + 8);
      v42(v36, v38);
      sub_10000BE18(v40, &qword_10083B020, &unk_1006D8ED0);
      sub_10000BE18(v57, &qword_10083B020, &unk_1006D8ED0);
      v42(v39, v38);
      sub_10000BE18(v63, &qword_10083B020, &unk_1006D8ED0);
      if (v41)
      {
        goto LABEL_12;
      }

LABEL_7:
      v16 = *(v0 + 152);
      v15 = *(v0 + 160);
      v17 = *(v0 + 136);
      v18 = *(v0 + 144);
      v58(*(v0 + 256), enum case for DIPError.Code.krlCouldNotFetch(_:), *(v0 + 240));
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      defaultLogger()();
      v19 = *(v18 + 16);
      v19(v16, v15, v17);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      v22 = os_log_type_enabled(v20, v21);
      v24 = *(v0 + 144);
      v23 = *(v0 + 152);
      v25 = *(v0 + 136);
      if (v22)
      {
        v26 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        *v26 = 138412290;
        sub_10011A98C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        v59 = v21;
        v19(v27, v23, v25);
        v28 = _swift_stdlib_bridgeErrorToNSError();
        v29 = v19;
        v30 = v23;
        v31 = *(v24 + 8);
        v31(v30, v25);
        *(v26 + 4) = v28;
        *v62 = v28;
        _os_log_impl(&_mh_execute_header, v20, v59, "PresentmentKeyRevocationValidator Failed validate credential: %@", v26, 0xCu);
        sub_10000BE18(v62, &unk_100833B50, &unk_1006D8FB0);
      }

      else
      {

        v29 = v19;
        v32 = v23;
        v31 = *(v24 + 8);
        v31(v32, v25);
      }

      v33 = *(v0 + 160);
      v34 = *(v0 + 136);
      (*(v0 + 464))(*(v0 + 408), *(v0 + 384));
      sub_10011A98C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      v29(v35, v33, v34);
      swift_willThrow();

      v31(v33, v34);
      goto LABEL_16;
    }

    v11 = *(v0 + 240);
    v12 = *(v0 + 248);
    v13 = *(v0 + 232);
    v14 = *(v0 + 216);
    sub_10000BE18(*(v0 + 224), &qword_10083B020, &unk_1006D8ED0);
    sub_10000BE18(v13, &qword_10083B020, &unk_1006D8ED0);
    (*(v12 + 8))(v14, v11);
LABEL_6:
    sub_10000BE18(*(v0 + 184), &qword_100834B60, &qword_1006C0310);
    goto LABEL_7;
  }

  v10 = *(v0 + 232);
  sub_10000BE18(*(v0 + 224), &qword_10083B020, &unk_1006D8ED0);
  sub_10000BE18(v10, &qword_10083B020, &unk_1006D8ED0);
  if (v7(v5 + v6, 1, v9) != 1)
  {
    goto LABEL_6;
  }

  sub_10000BE18(*(v0 + 184), &qword_10083B020, &unk_1006D8ED0);
LABEL_12:
  v44 = *(v0 + 80);
  v43 = *(v0 + 88);

  defaultLogger()();
  sub_10000B8B8(v44, v43);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.debug.getter();
  sub_10000B90C(v44, v43);
  v47 = os_log_type_enabled(v45, v46);
  v48 = *(v0 + 464);
  v49 = *(v0 + 416);
  v50 = *(v0 + 384);
  if (v47)
  {
    v60 = *(v0 + 416);
    v64 = *(v0 + 464);
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v65 = v52;
    *v51 = 136315138;
    Data.base16EncodedString()();
    v53 = String.lowercased()();

    v54 = sub_100141FE4(v53._countAndFlagsBits, v53._object, &v65);

    *(v51 + 4) = v54;
    _os_log_impl(&_mh_execute_header, v45, v46, "PresentmentKeyRevocationValidator Matched %s with revoked key in KRL.", v51, 0xCu);
    sub_10000BB78(v52);

    v64(v60, v50);
  }

  else
  {

    v48(v49, v50);
  }

  swift_willThrow();
LABEL_16:

  v55 = *(v0 + 8);

  return v55();
}

uint64_t sub_100114B20()
{
  v66 = v0;
  (*(*(v0 + 368) + 8))(*(v0 + 376), *(v0 + 360));
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v4 = *(v0 + 224);
  v3 = *(v0 + 232);
  v5 = *(v0 + 184);
  v61 = *(v0 + 168);
  swift_getErrorValue();
  swift_errorRetain();
  Error.dipErrorCode.getter();
  v58 = *(v2 + 104);
  v58(v4, enum case for DIPError.Code.krlMatchedRevokedKey(_:), v1);
  (*(v2 + 56))(v4, 0, 1, v1);
  v6 = *(v61 + 48);
  sub_10000BBC4(v3, v5, &qword_10083B020, &unk_1006D8ED0);
  sub_10000BBC4(v4, v5 + v6, &qword_10083B020, &unk_1006D8ED0);
  v7 = *(v2 + 48);
  v8 = v7(v5, 1, v1);
  v9 = *(v0 + 240);
  if (v8 != 1)
  {
    sub_10000BBC4(*(v0 + 184), *(v0 + 216), &qword_10083B020, &unk_1006D8ED0);
    if (v7(v5 + v6, 1, v9) != 1)
    {
      v37 = *(v0 + 248);
      v36 = *(v0 + 256);
      v38 = *(v0 + 240);
      v57 = *(v0 + 232);
      v39 = *(v0 + 216);
      v40 = *(v0 + 224);
      v63 = *(v0 + 184);
      (*(v37 + 32))(v36, v5 + v6, v38);
      sub_10011A98C(&qword_100834B68, &type metadata accessor for DIPError.Code, &protocol conformance descriptor for DIPError.Code);
      v41 = dispatch thunk of static Equatable.== infix(_:_:)();
      v42 = *(v37 + 8);
      v42(v36, v38);
      sub_10000BE18(v40, &qword_10083B020, &unk_1006D8ED0);
      sub_10000BE18(v57, &qword_10083B020, &unk_1006D8ED0);
      v42(v39, v38);
      sub_10000BE18(v63, &qword_10083B020, &unk_1006D8ED0);
      if (v41)
      {
        goto LABEL_12;
      }

LABEL_7:
      v16 = *(v0 + 152);
      v15 = *(v0 + 160);
      v17 = *(v0 + 136);
      v18 = *(v0 + 144);
      v58(*(v0 + 256), enum case for DIPError.Code.krlCouldNotFetch(_:), *(v0 + 240));
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      defaultLogger()();
      v19 = *(v18 + 16);
      v19(v16, v15, v17);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      v22 = os_log_type_enabled(v20, v21);
      v24 = *(v0 + 144);
      v23 = *(v0 + 152);
      v25 = *(v0 + 136);
      if (v22)
      {
        v26 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        *v26 = 138412290;
        sub_10011A98C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        v59 = v21;
        v19(v27, v23, v25);
        v28 = _swift_stdlib_bridgeErrorToNSError();
        v29 = v19;
        v30 = v23;
        v31 = *(v24 + 8);
        v31(v30, v25);
        *(v26 + 4) = v28;
        *v62 = v28;
        _os_log_impl(&_mh_execute_header, v20, v59, "PresentmentKeyRevocationValidator Failed validate credential: %@", v26, 0xCu);
        sub_10000BE18(v62, &unk_100833B50, &unk_1006D8FB0);
      }

      else
      {

        v29 = v19;
        v32 = v23;
        v31 = *(v24 + 8);
        v31(v32, v25);
      }

      v33 = *(v0 + 160);
      v34 = *(v0 + 136);
      (*(v0 + 464))(*(v0 + 408), *(v0 + 384));
      sub_10011A98C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      v29(v35, v33, v34);
      swift_willThrow();

      v31(v33, v34);
      goto LABEL_16;
    }

    v11 = *(v0 + 240);
    v12 = *(v0 + 248);
    v13 = *(v0 + 232);
    v14 = *(v0 + 216);
    sub_10000BE18(*(v0 + 224), &qword_10083B020, &unk_1006D8ED0);
    sub_10000BE18(v13, &qword_10083B020, &unk_1006D8ED0);
    (*(v12 + 8))(v14, v11);
LABEL_6:
    sub_10000BE18(*(v0 + 184), &qword_100834B60, &qword_1006C0310);
    goto LABEL_7;
  }

  v10 = *(v0 + 232);
  sub_10000BE18(*(v0 + 224), &qword_10083B020, &unk_1006D8ED0);
  sub_10000BE18(v10, &qword_10083B020, &unk_1006D8ED0);
  if (v7(v5 + v6, 1, v9) != 1)
  {
    goto LABEL_6;
  }

  sub_10000BE18(*(v0 + 184), &qword_10083B020, &unk_1006D8ED0);
LABEL_12:
  v44 = *(v0 + 80);
  v43 = *(v0 + 88);

  defaultLogger()();
  sub_10000B8B8(v44, v43);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.debug.getter();
  sub_10000B90C(v44, v43);
  v47 = os_log_type_enabled(v45, v46);
  v48 = *(v0 + 464);
  v49 = *(v0 + 416);
  v50 = *(v0 + 384);
  if (v47)
  {
    v60 = *(v0 + 416);
    v64 = *(v0 + 464);
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v65 = v52;
    *v51 = 136315138;
    Data.base16EncodedString()();
    v53 = String.lowercased()();

    v54 = sub_100141FE4(v53._countAndFlagsBits, v53._object, &v65);

    *(v51 + 4) = v54;
    _os_log_impl(&_mh_execute_header, v45, v46, "PresentmentKeyRevocationValidator Matched %s with revoked key in KRL.", v51, 0xCu);
    sub_10000BB78(v52);

    v64(v60, v50);
  }

  else
  {

    v48(v49, v50);
  }

  swift_willThrow();
LABEL_16:

  v55 = *(v0 + 8);

  return v55();
}

uint64_t sub_10011545C()
{
  v67 = v0;
  v1 = *(v0 + 320);
  (*(*(v0 + 368) + 8))(*(v0 + 376), *(v0 + 360));
  sub_10011A8CC(v1);
  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v5 = *(v0 + 224);
  v4 = *(v0 + 232);
  v6 = *(v0 + 184);
  v62 = *(v0 + 168);
  swift_getErrorValue();
  swift_errorRetain();
  Error.dipErrorCode.getter();
  v59 = *(v3 + 104);
  v59(v5, enum case for DIPError.Code.krlMatchedRevokedKey(_:), v2);
  (*(v3 + 56))(v5, 0, 1, v2);
  v7 = *(v62 + 48);
  sub_10000BBC4(v4, v6, &qword_10083B020, &unk_1006D8ED0);
  sub_10000BBC4(v5, v6 + v7, &qword_10083B020, &unk_1006D8ED0);
  v8 = *(v3 + 48);
  v9 = v8(v6, 1, v2);
  v10 = *(v0 + 240);
  if (v9 != 1)
  {
    sub_10000BBC4(*(v0 + 184), *(v0 + 216), &qword_10083B020, &unk_1006D8ED0);
    if (v8(v6 + v7, 1, v10) != 1)
    {
      v38 = *(v0 + 248);
      v37 = *(v0 + 256);
      v39 = *(v0 + 240);
      v58 = *(v0 + 232);
      v40 = *(v0 + 216);
      v41 = *(v0 + 224);
      v64 = *(v0 + 184);
      (*(v38 + 32))(v37, v6 + v7, v39);
      sub_10011A98C(&qword_100834B68, &type metadata accessor for DIPError.Code, &protocol conformance descriptor for DIPError.Code);
      v42 = dispatch thunk of static Equatable.== infix(_:_:)();
      v43 = *(v38 + 8);
      v43(v37, v39);
      sub_10000BE18(v41, &qword_10083B020, &unk_1006D8ED0);
      sub_10000BE18(v58, &qword_10083B020, &unk_1006D8ED0);
      v43(v40, v39);
      sub_10000BE18(v64, &qword_10083B020, &unk_1006D8ED0);
      if (v42)
      {
        goto LABEL_12;
      }

LABEL_7:
      v17 = *(v0 + 152);
      v16 = *(v0 + 160);
      v18 = *(v0 + 136);
      v19 = *(v0 + 144);
      v59(*(v0 + 256), enum case for DIPError.Code.krlCouldNotFetch(_:), *(v0 + 240));
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      defaultLogger()();
      v20 = *(v19 + 16);
      v20(v17, v16, v18);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      v23 = os_log_type_enabled(v21, v22);
      v25 = *(v0 + 144);
      v24 = *(v0 + 152);
      v26 = *(v0 + 136);
      if (v23)
      {
        v27 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        *v27 = 138412290;
        sub_10011A98C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        v60 = v22;
        v20(v28, v24, v26);
        v29 = _swift_stdlib_bridgeErrorToNSError();
        v30 = v20;
        v31 = v24;
        v32 = *(v25 + 8);
        v32(v31, v26);
        *(v27 + 4) = v29;
        *v63 = v29;
        _os_log_impl(&_mh_execute_header, v21, v60, "PresentmentKeyRevocationValidator Failed validate credential: %@", v27, 0xCu);
        sub_10000BE18(v63, &unk_100833B50, &unk_1006D8FB0);
      }

      else
      {

        v30 = v20;
        v33 = v24;
        v32 = *(v25 + 8);
        v32(v33, v26);
      }

      v34 = *(v0 + 160);
      v35 = *(v0 + 136);
      (*(v0 + 464))(*(v0 + 408), *(v0 + 384));
      sub_10011A98C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      v30(v36, v34, v35);
      swift_willThrow();

      v32(v34, v35);
      goto LABEL_16;
    }

    v12 = *(v0 + 240);
    v13 = *(v0 + 248);
    v14 = *(v0 + 232);
    v15 = *(v0 + 216);
    sub_10000BE18(*(v0 + 224), &qword_10083B020, &unk_1006D8ED0);
    sub_10000BE18(v14, &qword_10083B020, &unk_1006D8ED0);
    (*(v13 + 8))(v15, v12);
LABEL_6:
    sub_10000BE18(*(v0 + 184), &qword_100834B60, &qword_1006C0310);
    goto LABEL_7;
  }

  v11 = *(v0 + 232);
  sub_10000BE18(*(v0 + 224), &qword_10083B020, &unk_1006D8ED0);
  sub_10000BE18(v11, &qword_10083B020, &unk_1006D8ED0);
  if (v8(v6 + v7, 1, v10) != 1)
  {
    goto LABEL_6;
  }

  sub_10000BE18(*(v0 + 184), &qword_10083B020, &unk_1006D8ED0);
LABEL_12:
  v45 = *(v0 + 80);
  v44 = *(v0 + 88);

  defaultLogger()();
  sub_10000B8B8(v45, v44);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.debug.getter();
  sub_10000B90C(v45, v44);
  v48 = os_log_type_enabled(v46, v47);
  v49 = *(v0 + 464);
  v50 = *(v0 + 416);
  v51 = *(v0 + 384);
  if (v48)
  {
    v61 = *(v0 + 416);
    v65 = *(v0 + 464);
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v66 = v53;
    *v52 = 136315138;
    Data.base16EncodedString()();
    v54 = String.lowercased()();

    v55 = sub_100141FE4(v54._countAndFlagsBits, v54._object, &v66);

    *(v52 + 4) = v55;
    _os_log_impl(&_mh_execute_header, v46, v47, "PresentmentKeyRevocationValidator Matched %s with revoked key in KRL.", v52, 0xCu);
    sub_10000BB78(v53);

    v65(v61, v51);
  }

  else
  {

    v49(v50, v51);
  }

  swift_willThrow();
LABEL_16:

  v56 = *(v0 + 8);

  return v56();
}

uint64_t sub_100115DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  v10[72] = v4;

  v11 = v10[16];
  if (v4)
  {
    v12 = sub_100116104;
  }

  else
  {
    v10[73] = a4;
    v10[74] = a3;
    v10[75] = a2;
    v10[76] = a1;
    v12 = sub_100115F00;
  }

  return _swift_task_switch(v12, v11, 0);
}

uint64_t sub_100115F00()
{
  v2 = v0[46];
  v1 = v0[47];
  v3 = v0[45];
  v4 = v0[40];
  v6 = v0[37];
  v5 = v0[38];
  v7 = v0[36];

  (*(v6 + 8))(v5, v7);
  (*(v2 + 8))(v1, v3);
  sub_10011A8CC(v4);
  v12 = v0[75];
  v13 = v0[76];
  v10 = v0[73];
  v11 = v0[74];

  v8 = v0[1];

  return v8(v13, v12, v11, v10);
}

uint64_t sub_100116104()
{
  v73 = v0;
  v2 = *(v0 + 368);
  v1 = *(v0 + 376);
  v3 = *(v0 + 360);
  v4 = *(v0 + 320);
  v6 = *(v0 + 296);
  v5 = *(v0 + 304);
  v7 = *(v0 + 288);

  (*(v6 + 8))(v5, v7);
  (*(v2 + 8))(v1, v3);
  sub_10011A8CC(v4);
  v8 = *(v0 + 240);
  v9 = *(v0 + 248);
  v11 = *(v0 + 224);
  v10 = *(v0 + 232);
  v12 = *(v0 + 184);
  v68 = *(v0 + 168);
  swift_getErrorValue();
  swift_errorRetain();
  Error.dipErrorCode.getter();
  v65 = *(v9 + 104);
  v65(v11, enum case for DIPError.Code.krlMatchedRevokedKey(_:), v8);
  (*(v9 + 56))(v11, 0, 1, v8);
  v13 = *(v68 + 48);
  sub_10000BBC4(v10, v12, &qword_10083B020, &unk_1006D8ED0);
  sub_10000BBC4(v11, v12 + v13, &qword_10083B020, &unk_1006D8ED0);
  v14 = *(v9 + 48);
  v15 = v14(v12, 1, v8);
  v16 = *(v0 + 240);
  if (v15 != 1)
  {
    sub_10000BBC4(*(v0 + 184), *(v0 + 216), &qword_10083B020, &unk_1006D8ED0);
    if (v14(v12 + v13, 1, v16) != 1)
    {
      v44 = *(v0 + 248);
      v43 = *(v0 + 256);
      v45 = *(v0 + 240);
      v64 = *(v0 + 232);
      v46 = *(v0 + 216);
      v47 = *(v0 + 224);
      v70 = *(v0 + 184);
      (*(v44 + 32))(v43, v12 + v13, v45);
      sub_10011A98C(&qword_100834B68, &type metadata accessor for DIPError.Code, &protocol conformance descriptor for DIPError.Code);
      v48 = dispatch thunk of static Equatable.== infix(_:_:)();
      v49 = *(v44 + 8);
      v49(v43, v45);
      sub_10000BE18(v47, &qword_10083B020, &unk_1006D8ED0);
      sub_10000BE18(v64, &qword_10083B020, &unk_1006D8ED0);
      v49(v46, v45);
      sub_10000BE18(v70, &qword_10083B020, &unk_1006D8ED0);
      if (v48)
      {
        goto LABEL_12;
      }

LABEL_7:
      v23 = *(v0 + 152);
      v22 = *(v0 + 160);
      v24 = *(v0 + 136);
      v25 = *(v0 + 144);
      v65(*(v0 + 256), enum case for DIPError.Code.krlCouldNotFetch(_:), *(v0 + 240));
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      defaultLogger()();
      v26 = *(v25 + 16);
      v26(v23, v22, v24);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      v29 = os_log_type_enabled(v27, v28);
      v31 = *(v0 + 144);
      v30 = *(v0 + 152);
      v32 = *(v0 + 136);
      if (v29)
      {
        v33 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        *v33 = 138412290;
        sub_10011A98C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        v66 = v28;
        v26(v34, v30, v32);
        v35 = _swift_stdlib_bridgeErrorToNSError();
        v36 = v26;
        v37 = v30;
        v38 = *(v31 + 8);
        v38(v37, v32);
        *(v33 + 4) = v35;
        *v69 = v35;
        _os_log_impl(&_mh_execute_header, v27, v66, "PresentmentKeyRevocationValidator Failed validate credential: %@", v33, 0xCu);
        sub_10000BE18(v69, &unk_100833B50, &unk_1006D8FB0);
      }

      else
      {

        v36 = v26;
        v39 = v30;
        v38 = *(v31 + 8);
        v38(v39, v32);
      }

      v40 = *(v0 + 160);
      v41 = *(v0 + 136);
      (*(v0 + 464))(*(v0 + 408), *(v0 + 384));
      sub_10011A98C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      v36(v42, v40, v41);
      swift_willThrow();

      v38(v40, v41);
      goto LABEL_16;
    }

    v18 = *(v0 + 240);
    v19 = *(v0 + 248);
    v20 = *(v0 + 232);
    v21 = *(v0 + 216);
    sub_10000BE18(*(v0 + 224), &qword_10083B020, &unk_1006D8ED0);
    sub_10000BE18(v20, &qword_10083B020, &unk_1006D8ED0);
    (*(v19 + 8))(v21, v18);
LABEL_6:
    sub_10000BE18(*(v0 + 184), &qword_100834B60, &qword_1006C0310);
    goto LABEL_7;
  }

  v17 = *(v0 + 232);
  sub_10000BE18(*(v0 + 224), &qword_10083B020, &unk_1006D8ED0);
  sub_10000BE18(v17, &qword_10083B020, &unk_1006D8ED0);
  if (v14(v12 + v13, 1, v16) != 1)
  {
    goto LABEL_6;
  }

  sub_10000BE18(*(v0 + 184), &qword_10083B020, &unk_1006D8ED0);
LABEL_12:
  v51 = *(v0 + 80);
  v50 = *(v0 + 88);

  defaultLogger()();
  sub_10000B8B8(v51, v50);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.debug.getter();
  sub_10000B90C(v51, v50);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 464);
  v56 = *(v0 + 416);
  v57 = *(v0 + 384);
  if (v54)
  {
    v67 = *(v0 + 416);
    v71 = *(v0 + 464);
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v72 = v59;
    *v58 = 136315138;
    Data.base16EncodedString()();
    v60 = String.lowercased()();

    v61 = sub_100141FE4(v60._countAndFlagsBits, v60._object, &v72);

    *(v58 + 4) = v61;
    _os_log_impl(&_mh_execute_header, v52, v53, "PresentmentKeyRevocationValidator Matched %s with revoked key in KRL.", v58, 0xCu);
    sub_10000BB78(v59);

    v71(v67, v57);
  }

  else
  {

    v55(v56, v57);
  }

  swift_willThrow();
LABEL_16:

  v62 = *(v0 + 8);

  return v62();
}

uint64_t sub_100116A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for String.Encoding();
  v4[6] = swift_task_alloc();
  v4[7] = type metadata accessor for DIPWebResponse(0);
  v4[8] = swift_task_alloc();
  v5 = type metadata accessor for Milestone();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  v4[12] = swift_task_alloc();
  v6 = type metadata accessor for DIPSignpost();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v4[16] = v7;
  v4[17] = *(v7 - 8);
  v4[18] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v4[19] = v8;
  v4[20] = *(v8 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();

  return _swift_task_switch(sub_100116CF4, v3, 0);
}

uint64_t sub_100116CF4(uint64_t a1)
{
  v44 = v1;
  v3 = v1[17];
  v2 = v1[18];
  v4 = v1[16];
  v5 = v1[3];
  defaultLogger()();
  (*(v3 + 16))(v2, v5, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[23];
  v11 = v1[19];
  v10 = v1[20];
  v13 = v1[17];
  v12 = v1[18];
  v14 = v1[16];
  if (v8)
  {
    v41 = v1[19];
    v15 = swift_slowAlloc();
    v39 = v7;
    v16 = swift_slowAlloc();
    v43 = v16;
    *v15 = 136315138;
    v17 = URL.absoluteString.getter();
    v40 = v9;
    v19 = v18;
    (*(v13 + 8))(v12, v14);
    v20 = sub_100141FE4(v17, v19, &v43);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v6, v39, "PresentmentKeyRevocationValidator fetch KRL at URL %s", v15, 0xCu);
    sub_10000BB78(v16);

    v21 = *(v10 + 8);
    v21(v40, v41);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
    v21 = *(v10 + 8);
    v21(v9, v11);
  }

  v1[24] = v21;
  v22 = v1[4] > 0;
  v23 = objc_opt_self();
  v1[25] = v23;
  v24 = [v23 standardUserDefaults];
  v25._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceRefreshCache.getter();
  v26 = NSUserDefaults.internalBool(forKey:)(v25);

  if (v26)
  {
    defaultLogger()();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "PresentmentKeyRevocationValidator forcing reset cache due to internal setting", v29, 2u);
    }

    v30 = v1[22];
    v31 = v1[19];

    v21(v30, v31);
    v22 = 1;
  }

  v32 = v1[5];
  static DaemonSignposts.KRL.fetchRevocationList.getter();
  DIPSignpost.init(_:)();
  v33 = v32[17];
  v34 = v32[18];
  sub_10000BA08(v32 + 14, v33);
  v42 = (*(v34 + 8) + **(v34 + 8));
  v35 = swift_task_alloc();
  v1[26] = v35;
  *v35 = v1;
  v35[1] = sub_1001170C8;
  v36 = v1[2];
  v37 = v1[3];

  return v42(v36, v37, v22, v33, v34);
}

uint64_t sub_1001170C8()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_100117728;
  }

  else
  {
    v4 = sub_1001171F4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1001171F4()
{
  v60 = v0;
  v1 = v0[7];
  v2 = v0[2];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  v3 = *(v1 + 28);
  v4 = *(v2 + v3);
  if (v4 == 1)
  {
    if (qword_100832BC8 != -1)
    {
      swift_once();
    }

    v5 = qword_100882158;
  }

  else
  {
    if (qword_100832BC0 != -1)
    {
      swift_once();
    }

    v5 = qword_100882140;
  }

  v6 = v0[25];
  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[9];
  v10 = sub_10003170C(v9, v5);
  (*(v8 + 16))(v7, v10, v9);
  Milestone.log()();
  (*(v8 + 8))(v7, v9);
  v11 = [v6 standardUserDefaults];
  v12._countAndFlagsBits = static DaemonInternalDefaultsKeys.KRL.overrideCacheControl.getter();
  v13 = NSUserDefaults.internalString(forKey:)(v12);

  if (v13.value._object)
  {
    v14 = v0[7];
    v15 = sub_10059B698(0xD000000000000019, 0x80000001006F8AF0, v13.value._countAndFlagsBits, v13.value._object);

    if (v15)
    {
      v17 = v0[7];
      v16 = v0[8];
      v18 = v0[2];
      v19 = type metadata accessor for URLRequest();
      (*(*(v19 - 8) + 16))(v16, v18, v19);
      v20 = *(v17 + 20);
      v21 = *(v18 + v20);
      v22 = *(v18 + v20 + 8);
      v23 = (v16 + v20);
      *v23 = v21;
      v23[1] = v22;
      *(v16 + *(v14 + 24)) = v15;
      *(v16 + *(v1 + 28)) = v4;
      sub_10000B8B8(v21, v22);
      sub_10011A8CC(v18);
      sub_10011A928(v16, v18);
    }
  }

  v24 = sub_10010DD98();
  if (v25 >> 60 == 15)
  {
    (*(v0[14] + 8))(v0[15], v0[13]);
  }

  else
  {
    v26 = v24;
    v27 = v25;
    v57 = v3;
    v58 = v2;
    defaultLogger()();
    sub_10000B8B8(v26, v27);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    sub_10000BD94(v26, v27);
    v30 = os_log_type_enabled(v28, v29);
    v31 = v0[24];
    v55 = v0[19];
    v56 = v0[21];
    v33 = v0[14];
    v32 = v0[15];
    v34 = v0[13];
    if (v30)
    {
      v53 = v0[15];
      v54 = v1;
      v35 = swift_slowAlloc();
      v52 = v34;
      v36 = swift_slowAlloc();
      v59 = v36;
      *v35 = 136315138;
      static String.Encoding.utf8.getter();
      v37 = String.init(data:encoding:)();
      if (v38)
      {
        v39 = v38;
      }

      else
      {
        v37 = 0x3E6C696E3CLL;
        v39 = 0xE500000000000000;
      }

      v51 = v31;
      v40 = sub_100141FE4(v37, v39, &v59);

      *(v35 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v28, v29, "PresentmentKeyRevocationValidator internal settings overriding response data: %s", v35, 0xCu);
      sub_10000BB78(v36);

      v1 = v54;

      v51(v56, v55);
      (*(v33 + 8))(v53, v52);
    }

    else
    {

      v31(v56, v55);
      (*(v33 + 8))(v32, v34);
    }

    v42 = v0[7];
    v41 = v0[8];
    v43 = v0[2];
    v44 = type metadata accessor for URLRequest();
    (*(*(v44 - 8) + 16))(v41, v43, v44);
    v45 = *(v43 + *(v42 + 24));
    v46 = *(v58 + v57);
    v47 = (v41 + *(v42 + 20));
    *v47 = v26;
    v47[1] = v27;
    *(v41 + *(v42 + 24)) = v45;
    *(v41 + *(v1 + 28)) = v46;
    v48 = v45;
    sub_10011A8CC(v43);
    sub_10011A928(v41, v43);
  }

  v49 = v0[1];

  return v49();
}

uint64_t sub_100117728()
{
  (*(v0[14] + 8))(v0[15], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100117820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  v9 = type metadata accessor for COSE_Sign1();
  v6[15] = v9;
  v6[16] = *(v9 - 8);
  v6[17] = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  v6[18] = swift_task_alloc();
  v10 = type metadata accessor for DIPSignpost();
  v6[19] = v10;
  v6[20] = *(v10 - 8);
  v6[21] = swift_task_alloc();

  return _swift_task_switch(sub_100117A28, v5, 0);
}

uint64_t sub_100117A28()
{
  if (qword_100832C08 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = qword_10083AB98;
  v0[2] = qword_10083AB98;
  if (v1 >> 60 == 15)
  {
  }

  else
  {
    v3 = v0[6];
    type metadata accessor for SecCertificate(0);

    sub_1000363B4(v3, v1);
    v4 = static SecCertificateRef.make(with:)();
    if (v4)
    {
      v5 = v4;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v7 = v0[6];
      v6 = v0[7];
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      sub_10000BD94(v7, v6);

      v2 = v0[2];
    }

    else
    {
      sub_10000BD94(v0[6], v0[7]);
    }
  }

  v0[22] = v2;
  v8 = v0[8];
  v9 = v8[27];
  v10 = v8[28];
  sub_10000BA08(v8 + 24, v9);
  v13 = (*(v10 + 16) + **(v10 + 16));
  v11 = swift_task_alloc();
  v0[23] = v11;
  *v11 = v0;
  v11[1] = sub_100117C6C;

  return v13(v2, v9, v10);
}

uint64_t sub_100117C6C()
{
  v1 = *(*v0 + 64);

  return _swift_task_switch(sub_100117D98, v1, 0);
}

uint64_t sub_100117D98()
{
  v2 = v0[4];
  v1 = v0[5];
  static DaemonSignposts.KRL.processResponse.getter();
  DIPSignpost.init(_:)();
  sub_10000B8B8(v2, v1);
  COSE_Sign1.init(fromHexData:)();
  v3 = COSE_Sign1.typ.getter();
  sub_10011A418(v3, v4);
  v5 = v0[8];

  v6 = v5[27];
  v7 = v5[28];
  sub_10000BA08(v5 + 24, v6);
  v15 = (*(v7 + 24) + **(v7 + 24));
  v8 = swift_task_alloc();
  v0[24] = v8;
  v9 = type metadata accessor for ISO18013RevocationStatus();
  v10 = sub_10011A98C(&qword_10083ACE8, &type metadata accessor for ISO18013RevocationStatus, &protocol conformance descriptor for ISO18013RevocationStatus);
  v11 = sub_10011A98C(&qword_10083ACF0, &type metadata accessor for ISO18013RevocationStatus, &protocol conformance descriptor for ISO18013RevocationStatus);
  *v8 = v0;
  v8[1] = sub_10011821C;
  v12 = v0[17];
  v13 = v0[3];

  return v15(v13, v12, v9, v10, v11, v6, v7);
}

uint64_t sub_10011821C()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 64);
  if (v0)
  {
    v4 = sub_100118440;
  }

  else
  {
    v4 = sub_100118348;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100118348()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[15];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100118440()
{
  (*(v0[16] + 8))(v0[17], v0[15]);
  (*(v0[20] + 8))(v0[21], v0[19]);
  defaultLogger()();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "PresentmentKeyRevocationValidator an error occurred while parsing and verifying KRL response", v3, 2u);
  }

  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[11];
  v7 = v0[12];
  v9 = v0[9];
  v8 = v0[10];

  (*(v5 + 8))(v4, v7);
  (*(v8 + 104))(v6, enum case for DIPError.Code.krlFailedToValidate(_:), v9);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10011A98C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001186BC(char *a1)
{
  v63 = a1;
  v2 = type metadata accessor for DIPError.Code();
  v60 = *(v2 - 8);
  v61 = v2;
  __chkstk_darwin(v2);
  v62 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v65 = *(v4 - 8);
  v66 = v4;
  v5 = __chkstk_darwin(v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v59 = &v54 - v9;
  __chkstk_darwin(v8);
  v64 = &v54 - v10;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v54 - v17;
  __chkstk_darwin(v16);
  v20 = &v54 - v19;
  sub_10000BA08((v1 + 232), *(v1 + 256));
  v21 = v63;
  dispatch thunk of DateProviding.now.getter();
  if (static Date.< infix(_:_:)())
  {
    defaultLogger()();
    v22 = *(v12 + 16);
    v22(v18, v20, v11);
    v22(v15, v21, v11);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    v25 = os_log_type_enabled(v23, v24);
    v58 = v11;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v54 = v26;
      v57 = swift_slowAlloc();
      v67 = v57;
      *v26 = 136315394;
      sub_10011A98C(&qword_10083ACE0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v56 = v23;
      v55 = v24;
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      v63 = v20;
      v30 = *(v12 + 8);
      v30(v18, v11);
      v31 = sub_100141FE4(v27, v29, &v67);

      v32 = v54;
      *(v54 + 1) = v31;
      *(v32 + 6) = 2080;
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      v30(v15, v11);
      v20 = v63;
      v36 = sub_100141FE4(v33, v35, &v67);

      *(v32 + 14) = v36;
      v37 = v56;
      _os_log_impl(&_mh_execute_header, v56, v55, "PresentmentKeyRevocationValidator Fetched KRL expired; Current time (%s) has passed expiration time (%s)", v32, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v30 = *(v12 + 8);
      v30(v15, v11);
      v30(v18, v11);
    }

    v43 = *(v65 + 8);
    v44 = v66;
    v43(v64, v66);
    v45 = [objc_opt_self() standardUserDefaults];
    v46._countAndFlagsBits = static DaemonInternalDefaultsKeys.KRL.disableExpiryValidation.getter();
    v47 = NSUserDefaults.internalBool(forKey:)(v46);

    if (v47)
    {
      v48 = v59;
      defaultLogger()();
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v66 = v30;
        *v51 = 0;
        _os_log_impl(&_mh_execute_header, v49, v50, "PresentmentKeyRevocationValidator Bypassing fetched KRL expiry check from internal settings", v51, 2u);

        v52 = v48;
        v30 = v66;
      }

      else
      {

        v52 = v48;
      }

      v43(v52, v44);
      return (v30)(v20, v58);
    }

    else
    {
      if (qword_100832BE0 != -1)
      {
        swift_once();
      }

      v53 = type metadata accessor for Milestone();
      sub_10003170C(v53, qword_1008821A0);
      Milestone.log()();
      (*(v60 + 104))(v62, enum case for DIPError.Code.krlExpired(_:), v61);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10011A98C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      return (v30)(v20, v58);
    }
  }

  else
  {
    defaultLogger()();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "PresentmentKeyRevocationValidator Validated Fetched KRL has not expired.", v40, 2u);
    }

    (*(v65 + 8))(v7, v66);
    if (qword_100832BD8 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Milestone();
    sub_10003170C(v41, qword_100882188);
    Milestone.log()();
    return (*(v12 + 8))(v20, v11);
  }
}

uint64_t sub_100118EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[220] = v4;
  v5[219] = a4;
  v5[218] = a3;
  v5[217] = a2;
  v5[216] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[221] = v6;
  v5[222] = *(v6 - 8);
  v5[223] = swift_task_alloc();
  v7 = type metadata accessor for URL.DirectoryHint();
  v5[224] = v7;
  v5[225] = *(v7 - 8);
  v5[226] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v5[227] = v8;
  v5[228] = *(v8 - 8);
  v5[229] = swift_task_alloc();
  v5[230] = swift_task_alloc();
  sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v5[231] = swift_task_alloc();
  v5[232] = swift_task_alloc();
  v5[233] = swift_task_alloc();
  v5[234] = swift_task_alloc();
  v5[235] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v5[236] = v9;
  v5[237] = *(v9 - 8);
  v5[238] = swift_task_alloc();
  v5[239] = swift_task_alloc();
  v5[240] = swift_task_alloc();
  v5[241] = swift_task_alloc();
  v5[242] = swift_task_alloc();

  return _swift_task_switch(sub_100119170, v4, 0);
}

uint64_t sub_100119170()
{
  v42 = v0;
  v1 = objc_opt_self();
  v0[243] = v1;
  v2 = [v1 standardUserDefaults];
  v3._countAndFlagsBits = static DaemonInternalDefaultsKeys.KRL.overrideFullURL.getter();
  v4 = NSUserDefaults.internalBool(forKey:)(v3);

  if (v4)
  {
    v5 = [v1 standardUserDefaults];
    v6._countAndFlagsBits = static DaemonInternalDefaultsKeys.KRL.overrideURL.getter();
    object = NSUserDefaults.internalString(forKey:)(v6).value._object;

    v8 = v0[237];
    v9 = v0[236];
    v10 = v0[235];
    if (object)
    {

      URL.init(string:)();
      swift_bridgeObjectRelease_n();
      if ((*(v8 + 48))(v10, 1, v9) != 1)
      {
        v11 = v0[242];
        v12 = v0[241];
        v13 = v0[237];
        v14 = v0[236];
        v15 = *(v13 + 32);
        v15(v11, v0[235], v14);
        defaultLogger()();
        (*(v13 + 16))(v12, v11, v14);
        v16 = Logger.logObject.getter();
        v40 = static os_log_type_t.debug.getter();
        v17 = os_log_type_enabled(v16, v40);
        v18 = v0[241];
        v19 = v0[237];
        v20 = v0[236];
        v21 = v0[230];
        v22 = v0[228];
        v23 = v0[227];
        if (v17)
        {
          v24 = swift_slowAlloc();
          v39 = v15;
          v25 = swift_slowAlloc();
          v41 = v25;
          *v24 = 136315138;
          v37 = v21;
          v38 = v23;
          v26 = URL.absoluteString.getter();
          v28 = v27;
          (*(v19 + 8))(v18, v20);
          v29 = sub_100141FE4(v26, v28, &v41);

          *(v24 + 4) = v29;
          _os_log_impl(&_mh_execute_header, v16, v40, "PresentmentKeyRevocationValidator overriding full KRL URL with %s", v24, 0xCu);
          sub_10000BB78(v25);
          v15 = v39;

          (*(v22 + 8))(v37, v38);
        }

        else
        {

          (*(v19 + 8))(v18, v20);
          (*(v22 + 8))(v21, v23);
        }

        v15(v0[216], v0[242], v0[236]);
        goto LABEL_15;
      }
    }

    else
    {
      (*(v8 + 56))(v0[235], 1, 1, v0[236]);
    }

    sub_10000BE18(v0[235], &unk_100844540, &unk_1006BFBC0);
  }

  v30 = v0[237];
  v31 = v0[236];
  v32 = v0[234];
  sub_10000BBC4(v0[217], v32, &unk_100844540, &unk_1006BFBC0);
  v33 = *(v30 + 48);
  v0[244] = v33;
  v0[245] = (v30 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v33(v32, 1, v31) != 1)
  {
    (*(v0[237] + 32))(v0[216], v0[234], v0[236]);
LABEL_15:

    v36 = v0[1];

    return v36();
  }

  sub_10000BE18(v0[234], &unk_100844540, &unk_1006BFBC0);
  v34 = swift_task_alloc();
  v0[246] = v34;
  *v34 = v0;
  v34[1] = sub_100119688;

  return sub_10010E948((v0 + 161));
}

uint64_t sub_100119688()
{

  return _swift_task_switch(sub_100119784, 0, 0);
}

uint64_t sub_100119784()
{
  memcpy(v0 + 2, v0 + 161, 0x1A1uLL);
  if (sub_10010F2A8((v0 + 2)) == 1 || (v1 = v0[41], , sub_10000BE18((v0 + 161), &qword_10083AAA0, &unk_1006D8E00), !v1))
  {
    (*(v0[237] + 56))(v0[233], 1, 1, v0[236]);
  }

  else
  {

    URL.init(string:)();
    swift_bridgeObjectRelease_n();
  }

  v2 = v0[220];

  return _swift_task_switch(sub_100119884, v2, 0);
}

uint64_t sub_100119884()
{
  v47 = v0;
  v1 = [*(v0 + 1944) standardUserDefaults];
  v2._countAndFlagsBits = static DaemonInternalDefaultsKeys.KRL.overrideURL.getter();
  object = NSUserDefaults.internalString(forKey:)(v2).value._object;

  if (!object)
  {
    (*(*(v0 + 1896) + 56))(*(v0 + 1856), 1, 1, *(v0 + 1888));
    goto LABEL_6;
  }

  v4 = *(v0 + 1952);
  v5 = *(v0 + 1888);
  v6 = *(v0 + 1856);

  URL.init(string:)();
  swift_bridgeObjectRelease_n();
  if (v4(v6, 1, v5) == 1)
  {
LABEL_6:
    sub_10000BE18(*(v0 + 1856), &unk_100844540, &unk_1006BFBC0);
    goto LABEL_9;
  }

  v7 = *(v0 + 1920);
  v8 = *(v0 + 1912);
  v9 = *(v0 + 1896);
  v10 = *(v0 + 1888);
  v11 = *(v9 + 32);
  v11(v7, *(v0 + 1856), v10);
  defaultLogger()();
  (*(v9 + 16))(v8, v7, v10);
  v12 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();
  v13 = os_log_type_enabled(v12, v44);
  v14 = *(v0 + 1912);
  v15 = *(v0 + 1896);
  v16 = *(v0 + 1888);
  v17 = *(v0 + 1864);
  v18 = *(v0 + 1832);
  v19 = *(v0 + 1824);
  v45 = *(v0 + 1816);
  if (v13)
  {
    v20 = swift_slowAlloc();
    v43 = v11;
    v21 = swift_slowAlloc();
    v46 = v21;
    *v20 = 136315138;
    v41 = v18;
    v42 = v17;
    v22 = URL.absoluteString.getter();
    v24 = v23;
    (*(v15 + 8))(v14, v16);
    v25 = sub_100141FE4(v22, v24, &v46);

    *(v20 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v12, v44, "PresentmentKeyRevocationValidator overriding base KRL URL with %s", v20, 0xCu);
    sub_10000BB78(v21);
    v11 = v43;

    (*(v19 + 8))(v41, v45);
    v26 = v42;
  }

  else
  {

    (*(v15 + 8))(v14, v16);
    (*(v19 + 8))(v18, v45);
    v26 = v17;
  }

  sub_10000BE18(v26, &unk_100844540, &unk_1006BFBC0);
  v27 = *(v0 + 1896);
  v28 = *(v0 + 1888);
  v29 = *(v0 + 1864);
  v11(v29, *(v0 + 1920), v28);
  (*(v27 + 56))(v29, 0, 1, v28);
LABEL_9:
  v30 = *(v0 + 1952);
  v31 = *(v0 + 1888);
  v32 = *(v0 + 1848);
  sub_10000BBC4(*(v0 + 1864), v32, &unk_100844540, &unk_1006BFBC0);
  if (v30(v32, 1, v31) == 1)
  {
    v33 = *(v0 + 1864);
    v34 = *(v0 + 1784);
    v35 = *(v0 + 1776);
    v36 = *(v0 + 1768);
    sub_10000BE18(*(v0 + 1848), &unk_100844540, &unk_1006BFBC0);
    (*(v35 + 104))(v34, enum case for DIPError.Code.krlInvalidConfiguration(_:), v36);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10011A98C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000BE18(v33, &unk_100844540, &unk_1006BFBC0);

    v37 = *(v0 + 8);

    return v37();
  }

  else
  {
    (*(*(v0 + 1896) + 32))(*(v0 + 1904), *(v0 + 1848), *(v0 + 1888));
    Data.base16EncodedString()();
    v39 = String.lowercased()();

    *(v0 + 1976) = v39;
    v40 = swift_task_alloc();
    *(v0 + 1992) = v40;
    *v40 = v0;
    v40[1] = sub_100119F04;

    return sub_10010E948(v0 + 864);
  }
}

uint64_t sub_100119F04()
{

  return _swift_task_switch(sub_10011A000, 0, 0);
}

uint64_t sub_10011A000()
{
  memcpy((v0 + 440), (v0 + 864), 0x1A1uLL);
  if (sub_10010F2A8(v0 + 440) == 1 || (v1 = *(v0 + 792), v2 = *(v0 + 800), sub_10000BE18(v0 + 864, &qword_10083AAA0, &unk_1006D8E00), (v2 & 1) != 0))
  {
    v1 = 4;
  }

  *(v0 + 2000) = v1;
  v3 = *(v0 + 1760);

  return _swift_task_switch(sub_10011A0AC, v3, 0);
}

uint64_t sub_10011A0AC()
{
  v1 = v0[250];
  v2 = v0[248];
  v3 = v0[247];
  v4 = v0[238];
  v5 = v0[237];
  v15 = v0[236];
  v16 = v0[233];
  v6 = v0[226];
  v7 = v0[225];
  v14 = v0[224];
  v8 = String.count.getter();
  if (v1 < v8)
  {
    v8 = v1;
  }

  sub_10011A37C(v8, v3, v2);

  v9 = static String._fromSubstring(_:)();
  v11 = v10;

  v0[214] = v9;
  v0[215] = v11;
  (*(v7 + 104))(v6, enum case for URL.DirectoryHint.inferFromPath(_:), v14);
  sub_10001F298();
  URL.appending<A>(path:directoryHint:)();
  (*(v7 + 8))(v6, v14);
  (*(v5 + 8))(v4, v15);
  sub_10000BE18(v16, &unk_100844540, &unk_1006BFBC0);

  v12 = v0[1];

  return v12();
}

uint64_t sub_10011A308()
{
  sub_10000BB78(v0 + 14);
  sub_10000BB78(v0 + 19);
  sub_10000BB78(v0 + 24);
  sub_10000BB78(v0 + 29);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10011A37C(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

void sub_10011A418(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DIPError.Code();
  v23 = *(v3 - 8);
  __chkstk_darwin(v3);
  v24 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v9 = String.lowercased()();
    if (v9._countAndFlagsBits == 0xD000000000000012 && 0x80000001006FFDD0 == v9._object)
    {

LABEL_6:
      if (qword_100832BF8 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Milestone();
      sub_10003170C(v11, qword_1008821E8);
      Milestone.log()();
      return;
    }

    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      goto LABEL_6;
    }
  }

  defaultLogger()();

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v22 = v3;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25 = v15;
    *v14 = 136315138;
    if (a2)
    {
      v17 = String.lowercased()();
      countAndFlagsBits = v17._countAndFlagsBits;
      object = v17._object;
    }

    else
    {
      object = 0xE300000000000000;
      countAndFlagsBits = 7104878;
    }

    v19 = sub_100141FE4(countAndFlagsBits, object, &v25);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "Invalid KRL document type: %s", v14, 0xCu);
    sub_10000BB78(v15);

    (*(v6 + 8))(v8, v5);
    v3 = v22;
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  if (qword_100832C00 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Milestone();
  sub_10003170C(v20, qword_100882200);
  Milestone.log()();
  (*(v23 + 104))(v24, enum case for DIPError.Code.krlTypeMismatch(_:), v3);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10011A98C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
}

uint64_t sub_10011A8CC(uint64_t a1)
{
  v2 = type metadata accessor for DIPWebResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10011A928(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DIPWebResponse(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10011A98C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10011A9D4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for DIPError.Code();
  v42 = *(v8 - 8);
  v43 = v8;
  __chkstk_darwin(v8);
  v44 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v38 - v16;
  __chkstk_darwin(v15);
  v19 = &v38 - v18;
  if (a1 == a3 && a2 == a4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    defaultLogger()();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "PresentmentKeyRevocationValidator Validated Fetched KRL has matching sub.", v22, 2u);
    }

    (*(v11 + 8))(v14, v10);
    if (qword_100832BE8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Milestone();
    sub_10003170C(v23, qword_1008821B8);
    Milestone.log()();
  }

  else
  {
    v41 = v17;
    defaultLogger()();

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    v40 = v25;
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v39 = v24;
      v27 = v26;
      v45 = swift_slowAlloc();
      *v27 = 136315394;
      *(v27 + 4) = sub_100141FE4(a1, a2, &v45);
      *(v27 + 12) = 2080;
      *(v27 + 14) = sub_100141FE4(a3, a4, &v45);
      v28 = v39;
      _os_log_impl(&_mh_execute_header, v39, v40, "PresentmentKeyRevocationValidator Fetched KRL sub (%s) mismatches fetched uri (%s)", v27, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v29 = *(v11 + 8);
    v29(v19, v10);
    v30 = [objc_opt_self() standardUserDefaults];
    v31._countAndFlagsBits = static DaemonInternalDefaultsKeys.KRL.disableSubValidation.getter();
    v32 = NSUserDefaults.internalBool(forKey:)(v31);

    v33 = v41;
    if (v32)
    {
      defaultLogger()();
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v34, v35, "PresentmentKeyRevocationValidator Bypassing fetched KRL sub mismatch check from internal settings!", v36, 2u);
      }

      v29(v33, v10);
    }

    else
    {
      if (qword_100832BF0 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Milestone();
      sub_10003170C(v37, qword_1008821D0);
      Milestone.log()();
      (*(v42 + 104))(v44, enum case for DIPError.Code.krlSubMismatch(_:), v43);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10011A98C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }
}

void sub_10011AFE4(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for DIPWebResponse(0);
  if ((*(a1 + *(v6 + 28)) & 1) == 0)
  {
    if (a3)
    {
      a2 = 0;
    }

    if (qword_100832D20 != -1)
    {
      v16 = v6;
      swift_once();
      v6 = v16;
    }

    v7 = *(a1 + *(v6 + 24));
    v8 = qword_100882498;
    v9 = objc_allocWithZone(NSCachedURLResponse);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v11 = [v9 initWithResponse:v7 data:isa];

    v12 = sub_100600EC4(v11, a2, a3 & 1);
    if (v12)
    {
      v13 = v12;
      v14 = URLRequest._bridgeToObjectiveC()().super.isa;
      v17.receiver = v8;
      v17.super_class = type metadata accessor for DIPURLCache();
      objc_msgSendSuper2(&v17, "storeCachedResponse:forRequest:", v13, v14);
    }

    else
    {
    }

    if (qword_100832BD0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Milestone();
    sub_10003170C(v15, qword_100882170);
    Milestone.log()();
  }
}

uint64_t sub_10011B180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31[1] = a3;
  v5 = type metadata accessor for ISO18013RevocationStatus.IdentifierList();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DIPError.Code();
  v34 = *(v9 - 8);
  v35 = v9;
  __chkstk_darwin(v9);
  v39 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v32 = *(v11 - 8);
  v33 = v11;
  v12 = __chkstk_darwin(v11);
  v31[0] = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v31 - v14;
  v16 = sub_10010D9A0();
  v17 = a1;
  v38[0] = a1;
  v38[1] = a2;
  v18 = a2;
  v37 = v38;
  LOBYTE(a2) = sub_10035C990(sub_10011B68C, v36, v16);

  if (a2)
  {
    defaultLogger()();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "PresentmentKeyRevocationValidator Credential identifier found in the debug revocation list!", v21, 2u);
    }

    (*(v32 + 8))(v15, v33);
LABEL_12:
    (*(v34 + 104))(v39, enum case for DIPError.Code.krlMatchedRevokedKey(_:), v35);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10011A98C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }

  ISO18013RevocationStatus.identifierList.getter();
  v22 = ISO18013RevocationStatus.IdentifierList.identifiers.getter();
  (*(v6 + 8))(v8, v5);
  if (*(v22 + 16))
  {
    sub_10003B554(v17, v18);
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      return result;
    }

    v26 = v31[0];
    defaultLogger()();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "PresentmentKeyRevocationValidator Credential identifier found in revocation list!", v29, 2u);
    }

    (*(v32 + 8))(v26, v33);
    if (qword_100832BA8 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Milestone();
    sub_10003170C(v30, qword_1008820F8);
    Milestone.log()();
    goto LABEL_12;
  }
}

uint64_t sub_10011B6AC@<X0>(void (*a1)(__int128 *, uint64_t *)@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 5))
  {
    v6 = v2[1];
    v16 = *v2;
    v17 = v6;
    v7 = v2[3];
    v9 = *v2;
    v8 = v2[1];
    v18 = v2[2];
    v19 = v7;
    v20[0] = v9;
    v20[1] = v8;
    v10 = v2[3];
    v20[2] = v2[2];
    v20[3] = v10;
    sub_100120558(v20, v14);
    a1(&v16, &v15);
    v14[0] = v16;
    v14[1] = v17;
    v14[2] = v18;
    v14[3] = v19;
    if (v3)
    {
      return sub_1001205B4(v14);
    }

    else
    {
      sub_1001205B4(v14);
      v13 = type metadata accessor for BundleRecord();
      return (*(*(v13 - 8) + 56))(a2, 0, 1, v13);
    }
  }

  else
  {
    v12 = type metadata accessor for BundleRecord();
    return (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
  }
}

uint64_t sub_10011B80C()
{
  v257 = type metadata accessor for DIPError.Code();
  v256 = *(v257 - 8);
  __chkstk_darwin(v257);
  v258 = &v233[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v273 = type metadata accessor for Logger();
  v379 = *(v273 - 8);
  __chkstk_darwin(v273);
  v274 = &v233[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_100007224(&qword_10083ACF8, &qword_1006D8FC0);
  v4 = __chkstk_darwin(v3 - 8);
  v301 = &v233[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v304 = &v233[-v6];
  v351 = type metadata accessor for DaemonAnalytics.DigitalPresentmentRequestedEventElement();
  v327 = *(v351 - 8);
  v7 = __chkstk_darwin(v351);
  v264 = &v233[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __chkstk_darwin(v7);
  v280 = &v233[-v10];
  v11 = __chkstk_darwin(v9);
  v259 = &v233[-v12];
  v13 = __chkstk_darwin(v11);
  v260 = &v233[-v14];
  v15 = __chkstk_darwin(v13);
  v261 = &v233[-v16];
  v17 = __chkstk_darwin(v15);
  v262 = &v233[-v18];
  v19 = __chkstk_darwin(v17);
  v263 = &v233[-v20];
  v21 = __chkstk_darwin(v19);
  v265 = &v233[-v22];
  v23 = __chkstk_darwin(v21);
  v266 = &v233[-v24];
  v25 = __chkstk_darwin(v23);
  v276 = &v233[-v26];
  v27 = __chkstk_darwin(v25);
  v267 = &v233[-v28];
  v29 = __chkstk_darwin(v27);
  v268 = &v233[-v30];
  v31 = __chkstk_darwin(v29);
  v269 = &v233[-v32];
  v33 = __chkstk_darwin(v31);
  v270 = &v233[-v34];
  v35 = __chkstk_darwin(v33);
  v271 = &v233[-v36];
  v37 = __chkstk_darwin(v35);
  v272 = &v233[-v38];
  v39 = __chkstk_darwin(v37);
  v275 = &v233[-v40];
  v41 = __chkstk_darwin(v39);
  v277 = &v233[-v42];
  v43 = __chkstk_darwin(v41);
  v278 = &v233[-v44];
  __chkstk_darwin(v43);
  v279 = &v233[-v45];
  v46 = sub_100007224(&qword_10083AD00, &qword_1006D8FC8);
  __chkstk_darwin(v46 - 8);
  v368 = &v233[-v47];
  v373 = type metadata accessor for DaemonAnalytics.DigitalPresentmentRequestedEventRetention();
  v48 = *(v373 - 8);
  __chkstk_darwin(v373);
  v370 = &v233[-((v49 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v50 = type metadata accessor for IdentityIntentToStore();
  v360 = *(v50 - 8);
  v51 = __chkstk_darwin(v50);
  v374 = &v233[-((v52 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v53 = __chkstk_darwin(v51);
  v380 = &v233[-v54];
  __chkstk_darwin(v53);
  v356 = &v233[-v55];
  v378 = type metadata accessor for IdentityElement();
  v359 = *(v378 - 8);
  v56 = __chkstk_darwin(v378);
  v353 = &v233[-((v57 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v58 = __chkstk_darwin(v56);
  v383 = &v233[-v59];
  __chkstk_darwin(v58);
  v355 = &v233[-v60];
  v61 = sub_100007224(&qword_10083AD08, &qword_1006D8FD0);
  v62 = __chkstk_darwin(v61 - 8);
  v361 = &v233[-((v63 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v62);
  v372 = &v233[-v64];
  v65 = sub_100007224(&qword_10083AD10, &qword_1006D8FD8);
  __chkstk_darwin(v65 - 8);
  v297 = &v233[-v66];
  v296 = type metadata accessor for DigitalPresentmentIdentityElementsWithRegion(0);
  v300 = *(v296 - 8);
  __chkstk_darwin(v296);
  v308 = &v233[-((v67 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v68 = sub_100007224(&qword_10083AD18, &unk_1006D8FE0);
  __chkstk_darwin(v68 - 8);
  v303 = &v233[-v69];
  v307 = type metadata accessor for DaemonAnalytics.DigitalPresentmentRequestedEventOutcome();
  v377 = *(v307 - 8);
  __chkstk_darwin(v307);
  v309 = &v233[-((v70 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v310 = type metadata accessor for ISO18013KnownDocTypes();
  v71 = *(v310 - 8);
  v72 = __chkstk_darwin(v310);
  v322 = &v233[-((v73 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v72);
  v302 = &v233[-v74];
  v75 = sub_100007224(&qword_10083AD20, &qword_1006D9EF0);
  v76 = __chkstk_darwin(v75 - 8);
  v292 = &v233[-((v77 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v78 = __chkstk_darwin(v76);
  v293 = &v233[-v79];
  v80 = __chkstk_darwin(v78);
  v295 = &v233[-v81];
  __chkstk_darwin(v80);
  v83 = &v233[-v82];
  v306 = type metadata accessor for DigitalPresentmentRequestDocumentAnalyticsRecorder(0);
  v321 = *(v306 + 24);
  sub_10000BBC4(v0 + v321, v83, &qword_10083AD20, &qword_1006D9EF0);
  v84 = type metadata accessor for ValidatedDigitalPresentmentRequest(0);
  v85 = *(v84 - 8);
  v86 = *(v85 + 48);
  v320 = v84;
  v319 = v86;
  v318 = v85 + 48;
  if (v86(v83, 1) == 1)
  {
    v87 = &qword_10083AD20;
    v88 = &qword_1006D9EF0;
    v89 = v83;
    return sub_10000BE18(v89, v87, v88);
  }

  v315 = v0;
  v91 = *v83;

  sub_100120488(v83, type metadata accessor for ValidatedDigitalPresentmentRequest);
  v93 = v91 + 64;
  v92 = *(v91 + 64);
  v94 = 1 << *(v91 + 32);
  v366 = enum case for IdentityIntentToStore.mayStoreForDays(_:);
  if (v94 < 64)
  {
    v95 = ~(-1 << v94);
  }

  else
  {
    v95 = -1;
  }

  v96 = v95 & v92;
  v350 = enum case for IdentityIntentToStore.willNotStore(_:);
  v97 = (v94 + 63) >> 6;
  v317 = enum case for IdentityIntentToStore.mayStore(_:);
  v305 = enum case for DaemonAnalytics.DigitalPresentmentRequestedEventRetention.mayStoreIndefinitely(_:);
  v316 = enum case for DaemonAnalytics.DigitalPresentmentRequestedEventRetention.willNotStore(_:);
  v349 = enum case for DaemonAnalytics.DigitalPresentmentRequestedEventRetention.mayStore(_:);
  v348 = enum case for IdentityElement.ageIsOver(_:);
  v343 = enum case for IdentityElement.givenName(_:);
  v342 = enum case for IdentityElement.familyName(_:);
  v341 = enum case for IdentityElement.sex(_:);
  v340 = enum case for IdentityElement.portrait(_:);
  v339 = enum case for IdentityElement.address(_:);
  v338 = enum case for IdentityElement.height(_:);
  v337 = enum case for IdentityElement.weight(_:);
  v335 = enum case for IdentityElement.eyeColor(_:);
  v334 = enum case for IdentityElement.hairColor(_:);
  v333 = enum case for IdentityElement.organDonorStatus(_:);
  v332 = enum case for IdentityElement.veteranStatus(_:);
  v331 = enum case for IdentityElement.issuingAuthority(_:);
  v330 = enum case for IdentityElement.documentDHSComplianceStatus(_:);
  v329 = enum case for IdentityElement.documentIssueDate(_:);
  v328 = enum case for IdentityElement.documentExpirationDate(_:);
  v326 = enum case for IdentityElement.documentNumber(_:);
  v325 = enum case for IdentityElement.drivingPrivileges(_:);
  v324 = enum case for IdentityElement.age(_:);
  v323 = enum case for IdentityElement.dateOfBirth(_:);
  v365 = (v48 + 56);
  v357 = (v48 + 104);
  v364 = (v48 + 48);
  v347 = (v48 + 32);
  v346 = (v48 + 8);
  v313 = (v48 + 16);
  v234 = enum case for DaemonAnalytics.DigitalPresentmentRequestedEventElement.dateOfBirth(_:);
  v235 = enum case for DaemonAnalytics.DigitalPresentmentRequestedEventElement.age(_:);
  v236 = enum case for DaemonAnalytics.DigitalPresentmentRequestedEventElement.drivingPrivileges(_:);
  v237 = enum case for DaemonAnalytics.DigitalPresentmentRequestedEventElement.documentNumber(_:);
  v238 = enum case for DaemonAnalytics.DigitalPresentmentRequestedEventElement.documentExpirationDate(_:);
  v239 = enum case for DaemonAnalytics.DigitalPresentmentRequestedEventElement.documentIssueDate(_:);
  v240 = enum case for DaemonAnalytics.DigitalPresentmentRequestedEventElement.documentDHSComplianceStatus(_:);
  v241 = enum case for DaemonAnalytics.DigitalPresentmentRequestedEventElement.issuingAuthority(_:);
  v242 = enum case for DaemonAnalytics.DigitalPresentmentRequestedEventElement.veteranStatus(_:);
  v243 = enum case for DaemonAnalytics.DigitalPresentmentRequestedEventElement.organDonorStatus(_:);
  v244 = enum case for DaemonAnalytics.DigitalPresentmentRequestedEventElement.hairColor(_:);
  v245 = enum case for DaemonAnalytics.DigitalPresentmentRequestedEventElement.eyeColor(_:);
  v246 = enum case for DaemonAnalytics.DigitalPresentmentRequestedEventElement.weight(_:);
  v255 = (v379 + 8);
  v247 = enum case for DaemonAnalytics.DigitalPresentmentRequestedEventElement.height(_:);
  v291 = (v377 + 6);
  v288 = (v377 + 4);
  v285 = (v377 + 1);
  v248 = enum case for DaemonAnalytics.DigitalPresentmentRequestedEventElement.address(_:);
  v249 = enum case for DaemonAnalytics.DigitalPresentmentRequestedEventElement.portrait(_:);
  v250 = enum case for DaemonAnalytics.DigitalPresentmentRequestedEventElement.sex(_:);
  v251 = enum case for DaemonAnalytics.DigitalPresentmentRequestedEventElement.familyName(_:);
  v252 = enum case for DaemonAnalytics.DigitalPresentmentRequestedEventElement.givenName(_:);
  v254 = enum case for DaemonAnalytics.DigitalPresentmentRequestedEventElement.ageAtLeast(_:);
  v290 = v71 + 16;
  v289 = v71 + 32;
  v287 = (v300 + 56);
  v284 = (v300 + 48);
  v371 = (v359 + 16);
  v376 = (v359 + 32);
  v377 = (v360 + 16);
  v375 = (v360 + 32);
  v363 = (v360 + 88);
  v369 = (v360 + 8);
  v345 = (v360 + 96);
  v344 = (v359 + 88);
  v362 = (v359 + 8);
  v312 = (v327 + 104);
  v314 = v327 + 32;
  v253 = (v359 + 96);
  v286 = (v71 + 8);
  v294 = v91;

  v98 = 0;
  v99 = v307;
  v358 = v50;
  v100 = v71;
  v282 = v93;
  v281 = v97;
  v283 = v71;
  if (!v96)
  {
    goto LABEL_9;
  }

  do
  {
    v101 = v315;
    v102 = v378;
LABEL_14:
    v299 = v96;
    v298 = v98;
    v104 = v302;
    v105 = v310;
    (*(v100 + 16))(v302, *(v294 + 48) + *(v100 + 72) * (__clz(__rbit64(v96)) | (v98 << 6)), v310);
    (*(v100 + 32))(v322, v104, v105);
    v106 = v303;
    sub_10011EDD8(v303);
    if ((*v291)(v106, 1, v99) == 1)
    {
      goto LABEL_193;
    }

    (*v288)(v309, v106, v99);
    v107 = v295;
    sub_10000BBC4(v101 + v321, v295, &qword_10083AD20, &qword_1006D9EF0);
    if (v319(v107, 1, v320) == 1)
    {
      sub_10000BE18(v107, &qword_10083AD20, &qword_1006D9EF0);
      goto LABEL_195;
    }

    v108 = *v107;

    sub_100120488(v107, type metadata accessor for ValidatedDigitalPresentmentRequest);
    if (!*(v108 + 16) || (v109 = sub_10003B480(v322), (v110 & 1) == 0))
    {

LABEL_195:
      v112 = v297;
      (*v287)(v297, 1, 1, v296);
LABEL_196:
      sub_10000BE18(v112, &qword_10083AD10, &qword_1006D8FD8);
      v381 = 0;
      v382 = 0xE000000000000000;
      _StringGuts.grow(_:)(27);
      v230._object = 0x80000001006FFEF0;
      v230._countAndFlagsBits = 0xD000000000000019;
      String.append(_:)(v230);
      v231 = v322;
      v232 = v310;
      _print_unlocked<A, B>(_:_:)();
      (*(v256 + 104))(v258, enum case for DIPError.Code.digitalPresentmentInvalidDocumentDescriptor(_:), v257);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      (*v285)(v309, v307);
      return (*v286)(v231, v232);
    }

    v111 = *(*(v108 + 56) + 8 * v109);

    if (*(v111 + 16))
    {
      v112 = v297;
      sub_1001203C0(v111 + ((*(v300 + 80) + 32) & ~*(v300 + 80)), v297);
      v113 = 0;
    }

    else
    {
      v113 = 1;
      v112 = v297;
    }

    v114 = v113;
    v115 = v296;
    (*v287)(v112, v114, 1, v296);
    if ((*v284)(v112, 1, v115) == 1)
    {
      goto LABEL_196;
    }

    v116 = v112;
    v117 = v308;
    sub_100120424(v116, v308);
    v118 = v293;
    sub_10000BBC4(v101 + v321, v293, &qword_10083AD20, &qword_1006D9EF0);
    v119 = v319(v118, 1, v320);
    sub_10000BE18(v118, &qword_10083AD20, &qword_1006D9EF0);
    if (v119 == 1)
    {
      v352 = _swiftEmptyArrayStorage;
      goto LABEL_175;
    }

    v120 = *v117;
    v121 = *(*v117 + 64);
    v336 = *v117 + 64;
    v122 = 1 << *(v120 + 32);
    if (v122 < 64)
    {
      v123 = ~(-1 << v122);
    }

    else
    {
      v123 = -1;
    }

    v106 = v123 & v121;
    v124 = (v122 + 63) >> 6;
    v354 = v120;

    v125 = 0;
    v352 = _swiftEmptyArrayStorage;
    v126 = v361;
    v127 = v372;
    v367 = v124;
LABEL_30:
    v131 = v125;
    if (!v106)
    {
LABEL_32:
      if (v124 <= v131 + 1)
      {
        v133 = v131 + 1;
      }

      else
      {
        v133 = v124;
      }

      v125 = v133 - 1;
      while (1)
      {
        v132 = v131 + 1;
        if (__OFADD__(v131, 1))
        {
          break;
        }

        if (v132 >= v124)
        {
          v153 = sub_100007224(&qword_10083A5E8, &qword_1006D8FF0);
          (*(*(v153 - 8) + 56))(v126, 1, 1, v153);
          v379 = 0;
          v141 = v368;
          goto LABEL_40;
        }

        v106 = *(v336 + 8 * v132);
        ++v131;
        if (v106)
        {
          goto LABEL_39;
        }
      }

      __break(1u);
LABEL_193:
      (*v286)(v322, v310);

      v87 = &qword_10083AD18;
      v88 = &unk_1006D8FE0;
      v89 = v106;
      return sub_10000BE18(v89, v87, v88);
    }

    while (1)
    {
      v132 = v131;
LABEL_39:
      v379 = (v106 - 1) & v106;
      v134 = __clz(__rbit64(v106)) | (v132 << 6);
      v135 = v354;
      v136 = v359;
      (*(v359 + 16))(v355, *(v354 + 48) + *(v359 + 72) * v134, v102);
      v137 = v360;
      v138 = v356;
      v50 = v358;
      (*(v360 + 16))(v356, *(v135 + 56) + *(v360 + 72) * v134, v358);
      v139 = sub_100007224(&qword_10083A5E8, &qword_1006D8FF0);
      v140 = *(v139 + 48);
      v126 = v361;
      (*(v136 + 32))();
      (*(v137 + 32))(v126 + v140, v138, v50);
      (*(*(v139 - 8) + 56))(v126, 0, 1, v139);
      v125 = v132;
      v141 = v368;
      v127 = v372;
LABEL_40:
      sub_1001204E8(v126, v127);
      v142 = sub_100007224(&qword_10083A5E8, &qword_1006D8FF0);
      if ((*(*(v142 - 8) + 48))(v127, 1, v142) == 1)
      {
        break;
      }

      v143 = *(v142 + 48);
      v102 = v378;
      (*v376)(v383, v127, v378);
      v144 = v127 + v143;
      v145 = v380;
      (*v375)(v380, v144, v50);
      v146 = v374;
      (*v377)(v374, v145, v50);
      v147 = (*v363)(v146, v50);
      if (v147 == v366)
      {
        v148 = v374;
        (*v345)(v374, v50);
        *v141 = *v148;
        v149 = v373;
        (*v357)(v141, v349, v373);
LABEL_47:
        (*v365)(v141, 0, 1, v149);
        goto LABEL_48;
      }

      v149 = v373;
      if (v147 == v350)
      {
        (*v357)(v141, v316, v373);
        goto LABEL_47;
      }

      if (v147 == v317)
      {
        (*v357)(v141, v305, v373);
        goto LABEL_47;
      }

      (*v365)(v141, 1, 1, v373);
      (*v369)(v374, v50);
LABEL_48:
      if ((*v364)(v141, 1, v149) == 1)
      {
        (*v369)(v380, v50);
        (*v362)(v383, v102);
        sub_10000BE18(v141, &qword_10083AD00, &qword_1006D8FC8);
      }

      else
      {
        (*v347)(v370, v141, v149);
        v150 = v353;
        (*v371)(v353, v383, v102);
        v151 = (*v344)(v150, v102);
        if (v151 == v348)
        {
          v154 = v353;
          (*v253)(v353, v102);
          v155 = *v154;
          v156 = *(sub_100007224(&qword_10083AD28, &unk_1006D8FF8) + 48);
          v157 = v280;
          *v280 = v155;
          (*v313)(&v157[v156], v370, v373);
          (*v312)(v157, v254, v351);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v352 = sub_1003C56F0(0, v352[2] + 1, 1, v352);
          }

          v127 = v372;
          v159 = v352[2];
          v158 = v352[3];
          v160 = v159 + 1;
          if (v159 >= v158 >> 1)
          {
            v352 = sub_1003C56F0((v158 > 1), v159 + 1, 1, v352);
          }

          v128 = &v312;
          goto LABEL_29;
        }

        if (v151 == v343)
        {
          v161 = v149;
          v162 = v279;
          (*v313)(v279, v370, v161);
          (*v312)(v162, v252, v351);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v127 = v372;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v352 = sub_1003C56F0(0, v352[2] + 1, 1, v352);
          }

          v159 = v352[2];
          v164 = v352[3];
          v160 = v159 + 1;
          if (v159 >= v164 >> 1)
          {
            v352 = sub_1003C56F0((v164 > 1), v159 + 1, 1, v352);
          }

          v128 = &v311;
          goto LABEL_29;
        }

        v127 = v372;
        if (v151 == v342)
        {
          v165 = v149;
          v166 = v278;
          (*v313)(v278, v370, v165);
          (*v312)(v166, v251, v351);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v352 = sub_1003C56F0(0, v352[2] + 1, 1, v352);
          }

          v159 = v352[2];
          v167 = v352[3];
          v160 = v159 + 1;
          if (v159 >= v167 >> 1)
          {
            v352 = sub_1003C56F0((v167 > 1), v159 + 1, 1, v352);
          }

          v128 = &v310;
          goto LABEL_29;
        }

        if (v151 == v341)
        {
          v168 = v149;
          v169 = v277;
          (*v313)(v277, v370, v168);
          (*v312)(v169, v250, v351);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v352 = sub_1003C56F0(0, v352[2] + 1, 1, v352);
          }

          v159 = v352[2];
          v170 = v352[3];
          v160 = v159 + 1;
          if (v159 >= v170 >> 1)
          {
            v352 = sub_1003C56F0((v170 > 1), v159 + 1, 1, v352);
          }

          v128 = &v309;
          goto LABEL_29;
        }

        if (v151 == v340)
        {
          v171 = v149;
          v172 = v276;
          (*v313)(v276, v370, v171);
          (*v312)(v172, v249, v351);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v352 = sub_1003C56F0(0, v352[2] + 1, 1, v352);
          }

          v159 = v352[2];
          v173 = v352[3];
          v160 = v159 + 1;
          if (v159 >= v173 >> 1)
          {
            v352 = sub_1003C56F0((v173 > 1), v159 + 1, 1, v352);
          }

          v128 = &v308;
          goto LABEL_29;
        }

        if (v151 == v339)
        {
          v174 = v149;
          v175 = v275;
          (*v313)(v275, v370, v174);
          (*v312)(v175, v248, v351);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v352 = sub_1003C56F0(0, v352[2] + 1, 1, v352);
          }

          v159 = v352[2];
          v176 = v352[3];
          v160 = v159 + 1;
          if (v159 >= v176 >> 1)
          {
            v352 = sub_1003C56F0((v176 > 1), v159 + 1, 1, v352);
          }

          v128 = &v307;
          goto LABEL_29;
        }

        if (v151 == v338)
        {
          v177 = v149;
          v178 = v272;
          (*v313)(v272, v370, v177);
          (*v312)(v178, v247, v351);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v352 = sub_1003C56F0(0, v352[2] + 1, 1, v352);
          }

          v159 = v352[2];
          v179 = v352[3];
          v160 = v159 + 1;
          if (v159 >= v179 >> 1)
          {
            v352 = sub_1003C56F0((v179 > 1), v159 + 1, 1, v352);
          }

          v128 = &v304;
          goto LABEL_29;
        }

        if (v151 == v337)
        {
          v180 = v149;
          v181 = v271;
          (*v313)(v271, v370, v180);
          (*v312)(v181, v246, v351);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v352 = sub_1003C56F0(0, v352[2] + 1, 1, v352);
          }

          v159 = v352[2];
          v182 = v352[3];
          v160 = v159 + 1;
          if (v159 >= v182 >> 1)
          {
            v352 = sub_1003C56F0((v182 > 1), v159 + 1, 1, v352);
          }

          v128 = &v303;
          goto LABEL_29;
        }

        if (v151 == v335)
        {
          v183 = v149;
          v184 = v270;
          (*v313)(v270, v370, v183);
          (*v312)(v184, v245, v351);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v352 = sub_1003C56F0(0, v352[2] + 1, 1, v352);
          }

          v159 = v352[2];
          v185 = v352[3];
          v160 = v159 + 1;
          if (v159 >= v185 >> 1)
          {
            v352 = sub_1003C56F0((v185 > 1), v159 + 1, 1, v352);
          }

          v128 = &v302;
          goto LABEL_29;
        }

        if (v151 == v334)
        {
          v186 = v149;
          v187 = v269;
          (*v313)(v269, v370, v186);
          (*v312)(v187, v244, v351);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v352 = sub_1003C56F0(0, v352[2] + 1, 1, v352);
          }

          v159 = v352[2];
          v188 = v352[3];
          v160 = v159 + 1;
          if (v159 >= v188 >> 1)
          {
            v352 = sub_1003C56F0((v188 > 1), v159 + 1, 1, v352);
          }

          v128 = &v301;
          goto LABEL_29;
        }

        if (v151 == v333)
        {
          v189 = v149;
          v190 = v268;
          (*v313)(v268, v370, v189);
          (*v312)(v190, v243, v351);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v352 = sub_1003C56F0(0, v352[2] + 1, 1, v352);
          }

          v159 = v352[2];
          v191 = v352[3];
          v160 = v159 + 1;
          if (v159 >= v191 >> 1)
          {
            v352 = sub_1003C56F0((v191 > 1), v159 + 1, 1, v352);
          }

          v128 = &v300;
          goto LABEL_29;
        }

        if (v151 == v332)
        {
          v192 = v149;
          v193 = v267;
          (*v313)(v267, v370, v192);
          (*v312)(v193, v242, v351);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v352 = sub_1003C56F0(0, v352[2] + 1, 1, v352);
          }

          v159 = v352[2];
          v194 = v352[3];
          v160 = v159 + 1;
          if (v159 >= v194 >> 1)
          {
            v352 = sub_1003C56F0((v194 > 1), v159 + 1, 1, v352);
          }

          v128 = &v299;
          goto LABEL_29;
        }

        if (v151 == v331)
        {
          v195 = v149;
          v196 = v266;
          (*v313)(v266, v370, v195);
          (*v312)(v196, v241, v351);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v352 = sub_1003C56F0(0, v352[2] + 1, 1, v352);
          }

          v159 = v352[2];
          v197 = v352[3];
          v160 = v159 + 1;
          if (v159 >= v197 >> 1)
          {
            v352 = sub_1003C56F0((v197 > 1), v159 + 1, 1, v352);
          }

          v128 = &v298;
          goto LABEL_29;
        }

        if (v151 == v330)
        {
          v198 = v149;
          v199 = v265;
          (*v313)(v265, v370, v198);
          (*v312)(v199, v240, v351);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v352 = sub_1003C56F0(0, v352[2] + 1, 1, v352);
          }

          v159 = v352[2];
          v200 = v352[3];
          v160 = v159 + 1;
          if (v159 >= v200 >> 1)
          {
            v352 = sub_1003C56F0((v200 > 1), v159 + 1, 1, v352);
          }

          v128 = &v297;
          goto LABEL_29;
        }

        if (v151 == v329)
        {
          v201 = v149;
          v202 = v264;
          (*v313)(v264, v370, v201);
          (*v312)(v202, v239, v351);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v352 = sub_1003C56F0(0, v352[2] + 1, 1, v352);
          }

          v159 = v352[2];
          v203 = v352[3];
          v160 = v159 + 1;
          if (v159 >= v203 >> 1)
          {
            v352 = sub_1003C56F0((v203 > 1), v159 + 1, 1, v352);
          }

          v128 = &v296;
          goto LABEL_29;
        }

        if (v151 == v328)
        {
          v204 = v149;
          v205 = v263;
          (*v313)(v263, v370, v204);
          (*v312)(v205, v238, v351);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v352 = sub_1003C56F0(0, v352[2] + 1, 1, v352);
          }

          v159 = v352[2];
          v206 = v352[3];
          v160 = v159 + 1;
          if (v159 >= v206 >> 1)
          {
            v352 = sub_1003C56F0((v206 > 1), v159 + 1, 1, v352);
          }

          v128 = &v295;
          goto LABEL_29;
        }

        if (v151 == v326)
        {
          v207 = v149;
          v208 = v262;
          (*v313)(v262, v370, v207);
          (*v312)(v208, v237, v351);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v352 = sub_1003C56F0(0, v352[2] + 1, 1, v352);
          }

          v159 = v352[2];
          v209 = v352[3];
          v160 = v159 + 1;
          if (v159 >= v209 >> 1)
          {
            v352 = sub_1003C56F0((v209 > 1), v159 + 1, 1, v352);
          }

          v128 = &v294;
          goto LABEL_29;
        }

        if (v151 == v325)
        {
          v210 = v149;
          v211 = v261;
          (*v313)(v261, v370, v210);
          (*v312)(v211, v236, v351);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v352 = sub_1003C56F0(0, v352[2] + 1, 1, v352);
          }

          v159 = v352[2];
          v212 = v352[3];
          v160 = v159 + 1;
          if (v159 >= v212 >> 1)
          {
            v352 = sub_1003C56F0((v212 > 1), v159 + 1, 1, v352);
          }

          v128 = &v293;
          goto LABEL_29;
        }

        if (v151 == v324)
        {
          v213 = v260;
          (*v313)(v260, v370, v373);
          (*v312)(v213, v235, v351);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v352 = sub_1003C56F0(0, v352[2] + 1, 1, v352);
          }

          v159 = v352[2];
          v214 = v352[3];
          v160 = v159 + 1;
          if (v159 >= v214 >> 1)
          {
            v352 = sub_1003C56F0((v214 > 1), v159 + 1, 1, v352);
          }

          v128 = &v292;
          goto LABEL_29;
        }

        if (v151 == v323)
        {
          v215 = v259;
          (*v313)(v259, v370, v373);
          (*v312)(v215, v234, v351);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v352 = sub_1003C56F0(0, v352[2] + 1, 1, v352);
          }

          v159 = v352[2];
          v216 = v352[3];
          v160 = v159 + 1;
          if (v159 >= v216 >> 1)
          {
            v352 = sub_1003C56F0((v216 > 1), v159 + 1, 1, v352);
          }

          v128 = &v291;
LABEL_29:
          v129 = *(v128 - 32);
          (*v346)(v370, v373);
          (*v369)(v380, v50);
          (*v362)(v383, v102);
          v130 = v352;
          v352[2] = v160;
          (*(v327 + 32))(v130 + ((*(v327 + 80) + 32) & ~*(v327 + 80)) + *(v327 + 72) * v159, v129, v351);
          v124 = v367;
          v106 = v379;
          goto LABEL_30;
        }

        (*v346)(v370, v373);
        (*v369)(v380, v50);
        v152 = *v362;
        (*v362)(v383, v102);
        v152(v353, v102);
      }

      v131 = v125;
      v124 = v367;
      v106 = v379;
      if (!v379)
      {
        goto LABEL_32;
      }
    }

    v101 = v315;
LABEL_175:
    if (!*(v101 + 40))
    {
      v222 = 1;
      goto LABEL_182;
    }

    sub_10000BA08((v101 + *(v306 + 40)), *(v101 + *(v306 + 40) + 24));
    v217 = v311;
    dispatch thunk of BundleRecordFetching.record(withAuditToken:)();
    v311 = v217;
    if (!v217)
    {
      v222 = 0;
      v101 = v315;
LABEL_182:
      v223 = type metadata accessor for BundleRecord();
      v224 = *(v223 - 8);
      v225 = v304;
      (*(v224 + 56))(v304, v222, 1, v223);
      v226 = v301;
      sub_10000BBC4(v225, v301, &qword_10083ACF8, &qword_1006D8FC0);
      if ((*(v224 + 48))(v226, 1, v223) == 1)
      {
        sub_10000BE18(v225, &qword_10083ACF8, &qword_1006D8FC0);
        sub_10000BE18(v226, &qword_10083ACF8, &qword_1006D8FC0);
        v379 = 0;
      }

      else
      {
        v379 = BundleRecord.bundleIdentifier.getter();
        sub_10000BE18(v225, &qword_10083ACF8, &qword_1006D8FC0);
        (*(v224 + 8))(v301, v223);
      }

      goto LABEL_185;
    }

    v218 = v274;
    defaultLogger()();
    v219 = Logger.logObject.getter();
    v220 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v219, v220))
    {
      v221 = swift_slowAlloc();
      *v221 = 0;
      _os_log_impl(&_mh_execute_header, v219, v220, "DigitalPresentmentCanRequestDocumentAnalyticsRecorder unable to initialize bundle record", v221, 2u);
    }

    (*v255)(v218, v273);
    v379 = 0;
    v311 = 0;
    v101 = v315;
LABEL_185:
    v227 = v292;
    sub_10000BBC4(v101 + v321, v292, &qword_10083AD20, &qword_1006D9EF0);
    if (v319(v227, 1, v320) == 1)
    {
      sub_10000BE18(v227, &qword_10083AD20, &qword_1006D9EF0);
    }

    else
    {

      sub_100120488(v227, type metadata accessor for ValidatedDigitalPresentmentRequest);
    }

    v96 = (v299 - 1) & v299;
    type metadata accessor for DaemonAnalytics();
    v228 = v322;
    ISO18013KnownDocTypes.rawValue.getter();
    v229 = v309;
    static DaemonAnalytics.sendDigitalPresentmentRequestDocumentEvent(merchantID:bundleID:documentType:outcome:elements:isTestMDL:)();

    sub_100120488(v308, type metadata accessor for DigitalPresentmentIdentityElementsWithRegion);
    v99 = v307;
    (*v285)(v229, v307);
    result = (*v286)(v228, v310);
    v100 = v283;
    v93 = v282;
    v97 = v281;
    v98 = v298;
    v50 = v358;
  }

  while (v96);
LABEL_9:
  v101 = v315;
  v102 = v378;
  while (1)
  {
    v103 = v98 + 1;
    if (__OFADD__(v98, 1))
    {
      break;
    }

    if (v103 >= v97)
    {
    }

    v96 = *(v93 + 8 * v103);
    ++v98;
    if (v96)
    {
      v98 = v103;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10011EDD8@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007224(&qword_10083B020, &unk_1006D8ED0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v38 - v11;
  v13 = sub_100007224(&qword_10083AD20, &qword_1006D9EF0);
  __chkstk_darwin(v13 - 8);
  v15 = &v38 - v14;
  if (*(v1 + 64) == 1)
  {
    v16 = enum case for DaemonAnalytics.DigitalPresentmentRequestedEventOutcome.success(_:);
    v17 = type metadata accessor for DaemonAnalytics.DigitalPresentmentRequestedEventOutcome();
    v39 = *(v17 - 8);
    (*(v39 + 104))(a1, v16, v17);
    v18 = *(v39 + 56);

    return v18(a1, 0, 1, v17);
  }

  v20 = type metadata accessor for DigitalPresentmentRequestDocumentAnalyticsRecorder(0);
  v21 = *(v1 + *(v20 + 28));
  if (v21)
  {
    sub_10000BBC4(v1 + *(v20 + 24), v15, &qword_10083AD20, &qword_1006D9EF0);
    v22 = type metadata accessor for ValidatedDigitalPresentmentRequest(0);
    v23 = (*(*(v22 - 8) + 48))(v15, 1, v22);
    swift_errorRetain();
    sub_10000BE18(v15, &qword_10083AD20, &qword_1006D9EF0);
    if (v23 == 1)
    {
      *a1 = v21;
      v24 = enum case for DaemonAnalytics.DigitalPresentmentRequestedEventOutcome.validationFailed(_:);
      v25 = type metadata accessor for DaemonAnalytics.DigitalPresentmentRequestedEventOutcome();
      v26 = *(v25 - 8);
      (*(v26 + 104))(a1, v24, v25);
      return (*(v26 + 56))(a1, 0, 1, v25);
    }

    swift_getErrorValue();
    Error.dipErrorCode.getter();
    v31 = type metadata accessor for DIPError.Code();
    v32 = *(v31 - 8);
    if ((*(v32 + 48))(v12, 1, v31) != 1)
    {
      sub_10000BBC4(v12, v10, &qword_10083B020, &unk_1006D8ED0);
      v34 = (*(v32 + 88))(v10, v31);
      if (v34 == enum case for DIPError.Code.digitalPresentmentUserCancelled(_:))
      {

        v33 = &enum case for DaemonAnalytics.DigitalPresentmentRequestedEventOutcome.userCancelled(_:);
        goto LABEL_17;
      }

      if (v34 == enum case for DIPError.Code.digitalPresentmentAppCancelled(_:))
      {

        v33 = &enum case for DaemonAnalytics.DigitalPresentmentRequestedEventOutcome.appCancelled(_:);
        goto LABEL_17;
      }

      (*(v32 + 8))(v10, v31);
    }

    *a1 = v21;
    v33 = &enum case for DaemonAnalytics.DigitalPresentmentRequestedEventOutcome.presentmentFailed(_:);
LABEL_17:
    v35 = *v33;
    v36 = type metadata accessor for DaemonAnalytics.DigitalPresentmentRequestedEventOutcome();
    v37 = *(v36 - 8);
    (*(v37 + 104))(a1, v35, v36);
    (*(v37 + 56))(a1, 0, 1, v36);
    return sub_10000BE18(v12, &qword_10083B020, &unk_1006D8ED0);
  }

  defaultLogger()();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "DigitalPresentmentRequestDocumentAnalyticsRecorder didPresentSuccessfully is false but no error is set", v29, 2u);
  }

  (*(v4 + 8))(v6, v3);
  v30 = type metadata accessor for DaemonAnalytics.DigitalPresentmentRequestedEventOutcome();
  return (*(*(v30 - 8) + 56))(a1, 1, 1, v30);
}

uint64_t sub_10011F40C()
{
  v1 = v0;
  v64 = type metadata accessor for Logger();
  v63 = *(v64 - 8);
  v2 = __chkstk_darwin(v64);
  v61 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v74 = &v59 - v5;
  __chkstk_darwin(v4);
  v84 = &v59 - v6;
  v77 = type metadata accessor for DigitalPresentmentDocumentType();
  v73 = *(v77 - 8);
  __chkstk_darwin(v77);
  v76 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for ISO18013KnownDocTypes();
  v69 = *(v80 - 8);
  __chkstk_darwin(v80);
  v82 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100007224(&qword_10083AD30, &qword_1006D9008);
  __chkstk_darwin(v9 - 8);
  v79 = &v59 - v10;
  CanRequestDocumentOutcome = type metadata accessor for DaemonAnalytics.DigitalPresentmentCanRequestDocumentOutcome();
  v65 = *(CanRequestDocumentOutcome - 8);
  __chkstk_darwin(CanRequestDocumentOutcome);
  v75 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for IdentityDocumentDescriptor();
  v83 = *(v12 - 8);
  __chkstk_darwin(v12);
  v85 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100007224(&qword_10083ACF8, &qword_1006D8FC0);
  v15 = __chkstk_darwin(v14 - 8);
  v72 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v59 - v17;
  v19 = sub_100007224(&qword_10083AD38, &unk_1006D9010);
  __chkstk_darwin(v19 - 8);
  v21 = &v59 - v20;
  v22 = type metadata accessor for IdentityDocumentCompoundDescriptor();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  CanRequestDocumentAnalyticsRecorder = type metadata accessor for DigitalPresentmentCanRequestDocumentAnalyticsRecorder(0);
  sub_10000BBC4(v1 + *(CanRequestDocumentAnalyticsRecorder + 20), v21, &qword_10083AD38, &unk_1006D9010);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_10000BE18(v21, &qword_10083AD38, &unk_1006D9010);
    defaultLogger()();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "DigitalPresentmentCanRequestDocumentAnalyticsRecorder descriptor not set", v29, 2u);
    }

    return (*(v63 + 8))(v84, v64);
  }

  else
  {
    v81 = v12;
    v59 = v23;
    v31 = *(v23 + 32);
    v62 = v25;
    v32 = v31(v25, v21, v22);
    v33 = (v1 + *(CanRequestDocumentAnalyticsRecorder + 24));
    v34 = v33[3];
    v88 = v33[2];
    v89 = v34;
    v35 = v33[1];
    v86 = *v33;
    v87 = v35;
    __chkstk_darwin(v32);
    *(&v59 - 2) = v1;
    v36 = 0;
    sub_10011B6AC(sub_100120628, v18);
    v60 = v22;
    v37 = v72;
    sub_10000BBC4(v18, v72, &qword_10083ACF8, &qword_1006D8FC0);
    v38 = type metadata accessor for BundleRecord();
    v39 = *(v38 - 8);
    v40 = (*(v39 + 48))(v37, 1, v38);
    v41 = v82;
    if (v40 == 1)
    {
      sub_10000BE18(v18, &qword_10083ACF8, &qword_1006D8FC0);
      sub_10000BE18(v37, &qword_10083ACF8, &qword_1006D8FC0);
      v71 = 0;
      v74 = 0;
    }

    else
    {
      v71 = BundleRecord.bundleIdentifier.getter();
      v74 = v42;
      sub_10000BE18(v18, &qword_10083ACF8, &qword_1006D8FC0);
      (*(v39 + 8))(v37, v38);
    }

    v43 = v81;
    result = IdentityDocumentCompoundDescriptor.descriptors.getter();
    v44 = result;
    v70 = *(result + 16);
    if (v70)
    {
      v45 = 0;
      v72 = v83 + 16;
      ++v69;
      v68 = (v65 + 6);
      v67 = (v65 + 4);
      v66 = v73 + 1;
      ++v65;
      v73 = (v83 + 8);
      while (1)
      {
        if (v45 >= *(v44 + 16))
        {
          __break(1u);
          return result;
        }

        (*(v83 + 16))(v85, v44 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v45, v43);
        sub_100142F4C(v41);
        if (v36)
        {
          break;
        }

        v46 = v79;
        v47 = v1;
        sub_100120108(v79);
        (*v69)(v41, v80);
        v48 = CanRequestDocumentOutcome;
        if ((*v68)(v46, 1, CanRequestDocumentOutcome) == 1)
        {

          (*v73)(v85, v43);
          (*(v59 + 8))(v62, v60);
          return sub_10000BE18(v46, &qword_10083AD30, &qword_1006D9008);
        }

        ++v45;
        v49 = *v67;
        v84 = 0;
        v50 = v44;
        v51 = v75;
        v49(v75, v46, v48);
        type metadata accessor for DaemonAnalytics();
        v52 = v76;
        v53 = v85;
        IdentityDocumentDescriptor.documentType.getter();
        DigitalPresentmentDocumentType.description.getter();
        (*v66)(v52, v77);
        v1 = v47;
        v41 = v82;
        static DaemonAnalytics.sendDigitalPresentmentCanRequestDocumentEvent(outcome:bundleID:documentType:isTestMDL:)();
        v43 = v81;

        v54 = v51;
        v44 = v50;
        v36 = v84;
        (*v65)(v54, v48);
        result = (*v73)(v53, v43);
        if (v70 == v45)
        {
          goto LABEL_15;
        }
      }

      v55 = v61;
      defaultLogger()();
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&_mh_execute_header, v56, v57, "DigitalPresentmentCanRequestDocumentAnalyticsRecorder unknown document type", v58, 2u);
      }

      (*(v63 + 8))(v55, v64);
      (*v73)(v85, v81);
      return (*(v59 + 8))(v62, v60);
    }

    else
    {
LABEL_15:
      (*(v59 + 8))(v62, v60);
    }
  }
}

uint64_t sub_100120060(uint64_t *a1, uint64_t a2, void *a3)
{
  CanRequestDocumentAnalyticsRecorder = type metadata accessor for DigitalPresentmentCanRequestDocumentAnalyticsRecorder(0);
  sub_10000BA08((a2 + *(CanRequestDocumentAnalyticsRecorder + 44)), *(a2 + *(CanRequestDocumentAnalyticsRecorder + 44) + 24));
  result = dispatch thunk of BundleRecordFetching.record(withAuditToken:)();
  if (v3)
  {
    *a3 = v3;
  }

  return result;
}

uint64_t sub_100120108@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  CanRequestDocumentAnalyticsRecorder = type metadata accessor for DigitalPresentmentCanRequestDocumentAnalyticsRecorder(0);
  if (*(v1 + CanRequestDocumentAnalyticsRecorder[10]) == 1)
  {
    v8 = &enum case for DaemonAnalytics.DigitalPresentmentCanRequestDocumentOutcome.success(_:);
LABEL_9:
    v9 = *v8;
    CanRequestDocumentOutcome = type metadata accessor for DaemonAnalytics.DigitalPresentmentCanRequestDocumentOutcome();
    v18 = *(CanRequestDocumentOutcome - 8);
    (*(v18 + 104))(a1, v9, CanRequestDocumentOutcome);
    v11 = *(v18 + 56);

    return v11(a1, 0, 1, CanRequestDocumentOutcome);
  }

  if (*(v1 + CanRequestDocumentAnalyticsRecorder[7]) == 1)
  {
    v8 = &enum case for DaemonAnalytics.DigitalPresentmentCanRequestDocumentOutcome.missingDocument(_:);
    goto LABEL_9;
  }

  if (*(v1 + CanRequestDocumentAnalyticsRecorder[8]) == 1)
  {
    v8 = &enum case for DaemonAnalytics.DigitalPresentmentCanRequestDocumentOutcome.missingEntitlement(_:);
    goto LABEL_9;
  }

  if (*(v1 + CanRequestDocumentAnalyticsRecorder[9]) == 1)
  {
    v8 = &enum case for DaemonAnalytics.DigitalPresentmentCanRequestDocumentOutcome.notLoggedInWithPasscode(_:);
    goto LABEL_9;
  }

  defaultLogger()();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "DigitalPresentmentCanRequestDocumentAnalyticsRecorder inconsistent outcome", v15, 2u);
  }

  (*(v4 + 8))(v6, v3);
  v16 = type metadata accessor for DaemonAnalytics.DigitalPresentmentCanRequestDocumentOutcome();
  return (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
}

uint64_t sub_1001203C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DigitalPresentmentIdentityElementsWithRegion(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100120424(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DigitalPresentmentIdentityElementsWithRegion(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100120488(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001204E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_10083AD08, &qword_1006D8FD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10012065C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100007224(&qword_10083AD38, &unk_1006D9010);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 44) + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_100120740(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100007224(&qword_10083AD38, &unk_1006D9010);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 44) + 24) = (a2 - 1);
  }

  return result;
}

void sub_10012080C(uint64_t a1)
{
  sub_100120D70(319, &qword_10083ADA8, &type metadata accessor for IdentityDocumentCompoundDescriptor);
  if (v1 <= 0x3F)
  {
    sub_1001208E0();
    if (v2 <= 0x3F)
    {
      sub_100120930();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1001208E0()
{
  if (!qword_10083ADB0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10083ADB0);
    }
  }
}

unint64_t sub_100120930()
{
  result = qword_10083ADB8;
  if (!qword_10083ADB8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10083ADB8);
  }

  return result;
}

uint64_t sub_1001209A8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100007224(&qword_10083AD20, &qword_1006D9EF0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_100007224(&qword_10083AE00, &qword_1006D9ED0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[9];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[10] + 24);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_100120AE0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100007224(&qword_10083AD20, &qword_1006D9EF0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
  }

  else
  {
    result = sub_100007224(&qword_10083AE00, &qword_1006D9ED0);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[10] + 24) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[9];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

void sub_100120C00(uint64_t a1)
{
  sub_1001208E0();
  if (v1 <= 0x3F)
  {
    sub_100120D70(319, &qword_10083AE70, type metadata accessor for ValidatedDigitalPresentmentRequest);
    if (v2 <= 0x3F)
    {
      sub_100120D0C(319);
      if (v3 <= 0x3F)
      {
        sub_100120D70(319, &unk_10083AE80, &type metadata accessor for ISO18013KnownDocTypes);
        if (v4 <= 0x3F)
        {
          sub_100120930();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100120D0C(uint64_t a1)
{
  if (!qword_10083AE78)
  {
    sub_10000B870(&qword_100833B90, &qword_1006D95C0);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10083AE78);
    }
  }
}

void sub_100120D70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100120F54(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  a4;
  v8 = a1;
  v9 = a2;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_100121034;

  return sub_100126D58();
}

uint64_t sub_100121034(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  if (v4)
  {
    v9 = *(v3 + 40);
    (v9)[2](v9, a1);

    _Block_release(v9);
  }

  else
  {
  }

  v10 = *(v8 + 8);

  return v10();
}

uint64_t sub_100121368(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a2;
  a4;
  v9 = a1;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_100121034;

  return sub_1001271AC(v8);
}

uint64_t sub_100121450(void *a1, uint64_t a2)
{
  v82 = a2;
  v3 = type metadata accessor for DIPSignpost();
  v85 = *(v3 - 8);
  __chkstk_darwin(v3);
  v78 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007224(&qword_10083B038, &unk_1006D9160);
  __chkstk_darwin(v5 - 8);
  v84 = &v74 - v6;
  v80 = type metadata accessor for DIPError.Code();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v81 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DigitalPresentmentUIResult(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100007224(&qword_10083B028, &qword_1006D9150);
  __chkstk_darwin(v11 - 8);
  v83 = &v74 - v12;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v76 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v74 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v74 - v21;
  v23 = __chkstk_darwin(v20);
  v77 = &v74 - v24;
  __chkstk_darwin(v23);
  v26 = &v74 - v25;
  defaultLogger()();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v75 = a1;
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "DigitalPresentmentAuthorizationCoordinatorPrivateDelegate: paymentAuthorizationCoordinator willFinishWithError invoked.", v29, 2u);
    a1 = v75;
  }

  v32 = *(v14 + 8);
  v30 = v14 + 8;
  v31 = v32;
  v32(v26, v13);
  if (a1)
  {
    [a1 dismissWithCompletion:0];
  }

  v33 = OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_result;
  v34 = v86;
  swift_beginAccess();
  v35 = v83;
  sub_10000BBC4(v34 + v33, v83, &qword_10083B028, &qword_1006D9150);
  v36 = sub_100007224(&unk_10083B010, &qword_1006D9128);
  if ((*(*(v36 - 8) + 48))(v35, 1, v36) == 1)
  {
    v37 = v13;
    if (v82)
    {
      swift_errorRetain();
      defaultLogger()();
      swift_errorRetain();
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v83 = v19;
        v41 = v40;
        v42 = swift_slowAlloc();
        v87[0] = v42;
        *v41 = 136315138;
        swift_getErrorValue();
        v43 = Error.localizedDescription.getter();
        v45 = sub_100141FE4(v43, v44, v87);

        *(v41 + 4) = v45;
        _os_log_impl(&_mh_execute_header, v38, v39, "DigitalPresentmentAuthorizationCoordinatorPrivateDelegate failing promise with error: %s", v41, 0xCu);
        sub_10000BB78(v42);

        v46 = v83;
      }

      else
      {

        v46 = v19;
      }

      v31(v46, v37);
      v67._countAndFlagsBits = 0xD00000000000001CLL;
      v68._countAndFlagsBits = 0x3433633732386334;
      v67._object = 0x8000000100700280;
      v68._object = 0xE800000000000000;
      logMilestone(tag:description:)(v68, v67);
      (*(v79 + 104))(v81, enum case for DIPError.Code.digitalPresentmentAppCancelled(_:), v80);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      v34 = v86;
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      AsyncPromise.fail(error:)();

      goto LABEL_23;
    }

    v61 = v76;
    defaultLogger()();
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&_mh_execute_header, v62, v63, "DigitalPresentmentAuthorizationCoordinatorPrivateDelegate user cancelled", v64, 2u);
    }

    v31(v61, v37);
    v65._countAndFlagsBits = 0xD00000000000001DLL;
    v66._countAndFlagsBits = 0x3665663035323264;
    v65._object = 0x80000001007001B0;
    v66._object = 0xE800000000000000;
    logMilestone(tag:description:)(v66, v65);
    (*(v79 + 104))(v81, enum case for DIPError.Code.digitalPresentmentUserCancelled(_:), v80);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    v34 = v86;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
LABEL_22:
    AsyncPromise.fail(error:)();
LABEL_23:

    goto LABEL_24;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v82 = v30;
    defaultLogger()();
    swift_errorRetain();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v83 = v22;
      v50 = v49;
      v51 = swift_slowAlloc();
      v87[0] = v51;
      *v50 = 136315138;
      swift_getErrorValue();
      v52 = Error.localizedDescription.getter();
      v54 = sub_100141FE4(v52, v53, v87);

      *(v50 + 4) = v54;
      v34 = v86;
      _os_log_impl(&_mh_execute_header, v47, v48, "DigitalPresentmentAuthorizationCoordinatorPrivateDelegate failing promise with error: %s", v50, 0xCu);
      sub_10000BB78(v51);

      v55 = v83;
    }

    else
    {

      v55 = v22;
    }

    v31(v55, v13);
    goto LABEL_22;
  }

  v56 = v13;
  sub_1001237D8(v35, v10, type metadata accessor for DigitalPresentmentUIResult);
  v57 = v77;
  defaultLogger()();
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&_mh_execute_header, v58, v59, "DigitalPresentmentAuthorizationCoordinatorPrivateDelegate fulfilling promise with result", v60, 2u);
  }

  v31(v57, v56);
  AsyncPromise.fulfill(value:)();
  sub_100123840(v10, type metadata accessor for DigitalPresentmentUIResult);
LABEL_24:
  v69 = OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_postAuthorizationSignpost;
  swift_beginAccess();
  v70 = v84;
  sub_10000BBC4(v34 + v69, v84, &qword_10083B038, &unk_1006D9160);
  v71 = v85;
  if ((*(v85 + 48))(v70, 1, v3))
  {
    return sub_10000BE18(v70, &qword_10083B038, &unk_1006D9160);
  }

  v73 = v78;
  (*(v71 + 16))(v78, v70, v3);
  sub_10000BE18(v70, &qword_10083B038, &unk_1006D9160);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  return (*(v71 + 8))(v73, v3);
}

uint64_t sub_100122240(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  a3;
  v6 = a1;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_100122310;

  return sub_100123A60();
}

uint64_t sub_100122310(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v4)
  {
    v8 = *(v3 + 32);
    (v8)[2](v8, a1);

    _Block_release(v8);
  }

  else
  {
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_10012248C(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for DaemonAnalytics.DigitalPresentmentSpinnerShownOutcome();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v46 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007224(&qword_10083B020, &unk_1006D8ED0);
  v7 = __chkstk_darwin(v6 - 8);
  v43 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v45 = &v42 - v9;
  v10 = sub_100007224(&qword_10083B028, &qword_1006D9150);
  __chkstk_darwin(v10 - 8);
  v12 = (&v42 - v11);
  v13 = sub_100007224(&qword_10083B030, &qword_1006D9158);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v44 = (&v42 - v18);
  __chkstk_darwin(v17);
  v20 = &v42 - v19;
  v21 = type metadata accessor for Date();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.now.getter();
  v25 = v2;
  Date.timeIntervalSince(_:)();
  v27 = v26;
  (*(v22 + 8))(v24, v21);
  v28 = OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_result;
  swift_beginAccess();
  sub_10000BBC4(v2 + v28, v12, &qword_10083B028, &qword_1006D9150);
  v29 = sub_100007224(&unk_10083B010, &qword_1006D9128);
  if ((*(*(v29 - 8) + 48))(v12, 1, v29) == 1)
  {
    (*(v4 + 56))(v20, 1, 1, v3);
    v30 = v3;
    goto LABEL_26;
  }

  v31 = v20;
  v30 = v3;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = *v12;
    swift_getErrorValue();
    v33 = v45;
    Error.dipErrorCode.getter();
    v34 = type metadata accessor for DIPError.Code();
    v35 = *(v34 - 8);
    if ((*(v35 + 48))(v33, 1, v34) != 1)
    {
      v36 = v43;
      sub_10000BBC4(v33, v43, &qword_10083B020, &unk_1006D8ED0);
      v37 = (*(v35 + 88))(v36, v34);
      v38 = &enum case for DaemonAnalytics.DigitalPresentmentSpinnerShownOutcome.terminalError(_:);
      if (v37 == enum case for DIPError.Code.topekaMerchantNotFound(_:) || v37 == enum case for DIPError.Code.unexpectedDaemonState(_:) || v37 == enum case for DIPError.Code.idcsUntrustedReaderAuthCertificate(_:) || v37 == enum case for DIPError.Code.idcsRequestedElementsNotPermitted(_:) || v37 == enum case for DIPError.Code.digitalPresentmentInvalidMerchantCertificate(_:) || v37 == enum case for DIPError.Code.digitalPresentmentInvalidCredential(_:) || v37 == enum case for DIPError.Code.digitalPresentmentCannotBuildResponse(_:) || v37 == enum case for DIPError.Code.webPresentmentInvalidRequest(_:) || v37 == enum case for DIPError.Code.webPresentmentPassMissing(_:) || v37 == enum case for DIPError.Code.webPresentmentMissingRequiredRequestElementPermission(_:) || v37 == enum case for DIPError.Code.webPresentmentUnknownDeviceRequestVersion(_:) || v37 == enum case for DIPError.Code.webPresentmentInvalidCertificate(_:) || v37 == enum case for DIPError.Code.webPresentmentMissingHost(_:) || v37 == enum case for DIPError.Code.webPresentmentCouldNotSerializeOrigin(_:) || v37 == enum case for DIPError.Code.webPresentmentInvalidEncryptionInformation(_:) || v37 == enum case for DIPError.Code.webPresentmentFirstEditionRequestCannotBeAuthenticatedViaAll(_:) || v37 == enum case for DIPError.Code.webPresentmentSecondEditionRequestMissingUseCases(_:))
      {
        goto LABEL_24;
      }

      (*(v35 + 8))(v43, v34);
    }

    v38 = &enum case for DaemonAnalytics.DigitalPresentmentSpinnerShownOutcome.retryableError(_:);
LABEL_24:
    sub_10000BE18(v33, &qword_10083B020, &unk_1006D8ED0);
    v39 = v44;
    *v44 = v32;
    (*(v4 + 104))(v39, *v38, v30);
    (*(v4 + 56))(v39, 0, 1, v30);
    v20 = v31;
    sub_100123768(v39, v31);
    goto LABEL_26;
  }

  (*(v4 + 104))(v20, enum case for DaemonAnalytics.DigitalPresentmentSpinnerShownOutcome.success(_:), v3);
  (*(v4 + 56))(v20, 0, 1, v3);
  sub_10000BE18(v12, &unk_10083B010, &qword_1006D9128);
LABEL_26:
  sub_10000BBC4(v20, v16, &qword_10083B030, &qword_1006D9158);
  if ((*(v4 + 48))(v16, 1, v30) == 1)
  {
    sub_10000BE18(v20, &qword_10083B030, &qword_1006D9158);
  }

  else
  {
    v40 = v46;
    (*(v4 + 32))(v46, v16, v30);
    (*(*(v25 + OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_analyticsSender + 8) + 8))(v40, v27);
    (*(v4 + 8))(v40, v30);
    v16 = v20;
  }

  return sub_10000BE18(v16, &qword_10083B030, &qword_1006D9158);
}

id sub_100122C64()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DigitalPresentmentAuthorizationCoordinatorPrivateDelegate(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DigitalPresentmentAuthorizationCoordinatorPrivateDelegate(uint64_t a1)
{
  result = qword_10083AFF8;
  if (!qword_10083AFF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100122DB4(uint64_t a1)
{
  sub_100122EC0(319);
  if (v1 <= 0x3F)
  {
    sub_100122F24(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100122EC0(uint64_t a1)
{
  if (!qword_10083B008)
  {
    sub_10000B870(&unk_10083B010, &qword_1006D9128);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10083B008);
    }
  }
}

void sub_100122F24(uint64_t a1)
{
  if (!qword_100849A50)
  {
    type metadata accessor for DIPSignpost();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100849A50);
    }
  }
}

void *sub_100122F7C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = type metadata accessor for Logger();
  v80 = *(v15 - 8);
  v81 = v15;
  __chkstk_darwin(v15);
  v79 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DigitalPresentmentSessionManager.Proposal(0);
  __chkstk_darwin(v17 - 8);
  v77 = (&v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for DigitalPresentmentEligibleProposalData(0);
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19 - 8);
  v86 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v76 = &v74 - v24;
  __chkstk_darwin(v23);
  v85 = (&v74 - v25);
  v26 = OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_result;
  v27 = sub_100007224(&unk_10083B010, &qword_1006D9128);
  (*(*(v27 - 8) + 56))(&v7[v26], 1, 1, v27);
  v28 = OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_postAuthorizationSignpost;
  v29 = type metadata accessor for DIPSignpost();
  (*(*(v29 - 8) + 56))(&v7[v28], 1, 1, v29);
  v30 = &v7[OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_credentialIdentifierForSelectedPass];
  *v30 = 0;
  v30[1] = 0;
  v78 = v30;
  v82 = a1;
  sub_100020260(a1, &v7[OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_responseBuilder]);
  v31 = &v7[OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_externalizedContext];
  *v31 = a2;
  *(v31 + 1) = a3;
  *&v7[OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_promise] = a4;
  v32 = &v7[OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_analyticsSender];
  *v32 = a5;
  *(v32 + 1) = a6;
  v33 = v7;
  sub_10000B8B8(a2, a3);

  v34 = sub_10003E9C8(_swiftEmptyArrayStorage);
  v35 = v34;
  v83 = *(a7 + 16);
  if (!v83)
  {
    *&v33[OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_eligibleProposalDataDictionary] = v34;

    v60 = 0;
    v59 = 0;
LABEL_20:
    v61 = v78;
    *v78 = v60;
    v61[1] = v59;

    v62 = v79;
    defaultLogger()();
    v63 = v33;
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v88 = v67;
      *v66 = 136315138;
      v68 = v61[1];
      if (v68)
      {
        v69 = *v61;
      }

      else
      {
        v68 = 0xE500000000000000;
        v69 = 0x3E6C696E3CLL;
      }

      v70 = sub_100141FE4(v69, v68, &v88);

      *(v66 + 4) = v70;
      _os_log_impl(&_mh_execute_header, v64, v65, "DigitalPresentmentAuthorizationCoordinatorPrivateDelegate default credentialIdentifierForSelectedPass: %s ", v66, 0xCu);
      sub_10000BB78(v67);
    }

    else
    {
    }

    (*(v80 + 8))(v62, v81);
    v71 = type metadata accessor for DigitalPresentmentAuthorizationCoordinatorPrivateDelegate(0);
    v87.receiver = v63;
    v87.super_class = v71;
    v72 = objc_msgSendSuper2(&v87, "init");
    sub_10000BB78(v82);
    return v72;
  }

  v75 = v33;
  v36 = 0;
  v84 = a7 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
  v37 = v20;
  do
  {
    if (v36 >= *(a7 + 16))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v38 = a7;
    v39 = v37;
    v40 = *(v37 + 72);
    v41 = v85;
    sub_10012369C(v84 + v40 * v36, v85, type metadata accessor for DigitalPresentmentEligibleProposalData);
    v43 = *v41;
    v42 = v41[1];
    sub_10012369C(v41, v86, type metadata accessor for DigitalPresentmentEligibleProposalData);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v88 = v35;
    v46 = sub_10003ADCC(v43, v42);
    v47 = v35[2];
    v48 = (v45 & 1) == 0;
    v49 = v47 + v48;
    if (__OFADD__(v47, v48))
    {
      goto LABEL_28;
    }

    v50 = v45;
    if (v35[3] >= v49)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v35 = v88;
        if (v45)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_1001708B8();
        v35 = v88;
        if (v50)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_1001680EC(v49, isUniquelyReferenced_nonNull_native);
      v51 = sub_10003ADCC(v43, v42);
      if ((v50 & 1) != (v52 & 1))
      {
        goto LABEL_31;
      }

      v46 = v51;
      v35 = v88;
      if (v50)
      {
LABEL_3:
        sub_100123704(v86, v35[7] + v46 * v40);
        goto LABEL_4;
      }
    }

    v35[(v46 >> 6) + 8] |= 1 << v46;
    v53 = (v35[6] + 16 * v46);
    *v53 = v43;
    v53[1] = v42;
    sub_1001237D8(v86, v35[7] + v46 * v40, type metadata accessor for DigitalPresentmentEligibleProposalData);
    v54 = v35[2];
    v55 = __OFADD__(v54, 1);
    v56 = v54 + 1;
    if (v55)
    {
      goto LABEL_29;
    }

    v35[2] = v56;

LABEL_4:
    ++v36;
    sub_100123840(v85, type metadata accessor for DigitalPresentmentEligibleProposalData);
    a7 = v38;
    v37 = v39;
  }

  while (v83 != v36);
  v33 = v75;
  *&v75[OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_eligibleProposalDataDictionary] = v35;
  if (*(v38 + 16))
  {
    v57 = v76;
    sub_10012369C(v84, v76, type metadata accessor for DigitalPresentmentEligibleProposalData);

    v58 = v77;
    sub_10012369C(v57, v77, type metadata accessor for DigitalPresentmentSessionManager.Proposal);
    sub_100123840(v57, type metadata accessor for DigitalPresentmentEligibleProposalData);
    v60 = *v58;
    v59 = v58[1];

    sub_100123840(v58, type metadata accessor for DigitalPresentmentSessionManager.Proposal);
    goto LABEL_20;
  }

LABEL_30:
  __break(1u);
LABEL_31:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10012369C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100123704(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DigitalPresentmentEligibleProposalData(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100123768(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_10083B030, &qword_1006D9158);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001237D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100123840(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001238A0()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001238E8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_100122240(v2, v3, v4);
}

uint64_t sub_1001239A0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_100500B84(v2, v3, v4);
}

uint64_t sub_100123A60()
{
  v1[23] = v0;
  sub_100007224(&qword_10083B020, &unk_1006D8ED0);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v2 = type metadata accessor for ContinuousClock();
  v1[27] = v2;
  v1[28] = *(v2 - 8);
  v1[29] = swift_task_alloc();
  v3 = type metadata accessor for DIPError.Code();
  v1[30] = v3;
  v1[31] = *(v3 - 8);
  v1[32] = swift_task_alloc();
  sub_100007224(&qword_10083B028, &qword_1006D9150);
  v1[33] = swift_task_alloc();
  v1[34] = *(type metadata accessor for DigitalPresentmentEligibleProposalData(0) - 8);
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v1[41] = v4;
  v1[42] = *(v4 - 8);
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v1[48] = v5;
  v1[49] = *(v5 - 8);
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v6 = type metadata accessor for DIPSignpost();
  v1[52] = v6;
  v1[53] = *(v6 - 8);
  v1[54] = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  v1[55] = swift_task_alloc();
  sub_100007224(&qword_10083B038, &unk_1006D9160);
  v1[56] = swift_task_alloc();

  return _swift_task_switch(sub_100123E4C, 0, 0);
}

uint64_t sub_100123E4C()
{
  v131 = v0;
  v1 = *(v0 + 448);
  v2 = *(v0 + 424);
  v3 = *(v0 + 416);
  v4 = *(v0 + 184);
  static DaemonSignposts.requestDocumentPostAuthorization.getter();
  DIPSignpost.init(_:)();
  (*(v2 + 56))(v1, 0, 1, v3);
  v5 = OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_postAuthorizationSignpost;
  swift_beginAccess();
  sub_1000B2764(v1, v4 + v5, &qword_10083B038, &unk_1006D9160);
  swift_endAccess();
  static DaemonSignposts.requestDocumentBuildResponse.getter();
  DIPSignpost.init(_:)();
  Date.init()();
  defaultLogger()();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "DigitalPresentmentAuthorizationCoordinatorPrivateDelegate paymentAuthorizationCoordinator invoked, building response.", v8, 2u);
  }

  v9 = *(v0 + 376);
  v10 = *(v0 + 328);
  v11 = *(v0 + 336);
  v12 = *(v0 + 184);

  v13 = *(v11 + 8);
  *(v0 + 456) = v13;
  v13(v9, v10);
  v14 = [objc_allocWithZone(PKPaymentAuthorizationResult) init];
  v15 = OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_credentialIdentifierForSelectedPass;
  *(v0 + 464) = v14;
  *(v0 + 472) = v15;
  v16 = (v12 + v15);
  v17 = v16[1];
  if (v17)
  {
    v18 = *(*(v0 + 184) + OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_eligibleProposalDataDictionary);
    if (*(v18 + 16))
    {
      v19 = *v16;

      v20 = sub_10003ADCC(v19, v17);
      if (v21)
      {
        v23 = *(v0 + 312);
        v22 = *(v0 + 320);
        v24 = *(v0 + 304);
        sub_10012369C(*(v18 + 56) + *(*(v0 + 272) + 72) * v20, v23, type metadata accessor for DigitalPresentmentEligibleProposalData);

        sub_1001237D8(v23, v22, type metadata accessor for DigitalPresentmentEligibleProposalData);
        defaultLogger()();
        sub_10012369C(v22, v24, type metadata accessor for DigitalPresentmentEligibleProposalData);
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.debug.getter();
        v27 = os_log_type_enabled(v25, v26);
        v28 = *(v0 + 368);
        v29 = *(v0 + 328);
        v30 = *(v0 + 304);
        if (v27)
        {
          v125 = *(v0 + 328);
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v130[0] = v32;
          *v31 = 136315138;
          v124 = v28;
          v33 = *(v30 + 64);
          v34 = *(v30 + 72);

          sub_100123840(v30, type metadata accessor for DigitalPresentmentEligibleProposalData);
          v35 = sub_100141FE4(v33, v34, v130);

          *(v31 + 4) = v35;
          _os_log_impl(&_mh_execute_header, v25, v26, "DigitalPresentmentAuthorizationCoordinatorPrivateDelegate selectedProposalDocType %s", v31, 0xCu);
          sub_10000BB78(v32);

          v36 = v124;
          v37 = v125;
        }

        else
        {

          sub_100123840(v30, type metadata accessor for DigitalPresentmentEligibleProposalData);
          v36 = v28;
          v37 = v29;
        }

        v13(v36, v37);
        v104 = *(v0 + 184);
        v105 = *(v104 + OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_responseBuilder + 24);
        v106 = *(v104 + OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_responseBuilder + 32);
        sub_10000BA08((v104 + OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_responseBuilder), v105);
        v107 = v104 + OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_externalizedContext;
        v108 = *(v104 + OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_externalizedContext);
        v109 = *(v107 + 8);
        v128 = (*(v106 + 16) + **(v106 + 16));
        v110 = swift_task_alloc();
        *(v0 + 480) = v110;
        *v110 = v0;
        v110[1] = sub_100124E64;
        v65 = *(v0 + 320);
        v63 = v108;
        v64 = v109;
        v66 = v105;
        v67 = v106;
        v68 = v128;

        return v68(v63, v64, v65, v66, v67);
      }
    }
  }

  v126 = enum case for DIPError.Code.digitalPresentmentInvalidCredential(_:);
  (*(*(v0 + 248) + 104))(*(v0 + 256));
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  v38 = swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  *(v0 + 504) = v38;
  defaultLogger()();
  swift_errorRetain();
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();

  v41 = os_log_type_enabled(v39, v40);
  v42 = *(v0 + 456);
  v43 = *(v0 + 352);
  v44 = *(v0 + 328);
  if (v41)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v130[0] = v46;
    *v45 = 136315138;
    swift_getErrorValue();
    v47 = Error.localizedDescription.getter();
    v123 = v43;
    v49 = sub_100141FE4(v47, v48, v130);

    *(v45 + 4) = v49;
    _os_log_impl(&_mh_execute_header, v39, v40, "DigitalPresentmentUIPresenter: paymentAuthorizationCoordinator didAuthorizeContextWithHandler buildResponse failed with error: %s.", v45, 0xCu);
    sub_10000BB78(v46);

    v42(v123, v44);
  }

  else
  {

    v42(v43, v44);
  }

  v50 = *(v0 + 400);
  v51 = *(v0 + 384);
  v52 = *(v0 + 392);
  v53 = *(v0 + 264);
  v54 = *(v0 + 184);
  *v53 = v38;
  v55 = sub_100007224(&unk_10083B010, &qword_1006D9128);
  swift_storeEnumTagMultiPayload();
  (*(*(v55 - 8) + 56))(v53, 0, 1, v55);
  v56 = OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_result;
  swift_beginAccess();
  swift_errorRetain();
  sub_1000B2764(v53, v54 + v56, &qword_10083B028, &qword_1006D9150);
  swift_endAccess();
  Date.init()();
  Date.timeIntervalSince(_:)();
  v58 = v57;
  (*(v52 + 8))(v50, v51);
  if (v58 < 1.0)
  {
    v59 = static Duration.seconds(_:)();
    v61 = v60;
    static Clock<>.continuous.getter();
    v62 = swift_task_alloc();
    *(v0 + 512) = v62;
    *v62 = v0;
    v62[1] = sub_100125490;
    v63 = v59;
    v64 = v61;
    v65 = 0;
    v66 = 0;
    v67 = 1;
    v68 = sub_1003DA1A4;

    return v68(v63, v64, v65, v66, v67);
  }

  v70 = *(v0 + 240);
  v71 = *(v0 + 248);
  v72 = *(v0 + 208);
  swift_getErrorValue();
  Error.dipErrorCode.getter();
  v73 = *(v71 + 48);
  if (v73(v72, 1, v70) != 1)
  {
    v74 = *(v0 + 240);
    v75 = *(v0 + 248);
    v76 = *(v0 + 200);
    sub_10000BBC4(*(v0 + 208), v76, &qword_10083B020, &unk_1006D8ED0);
    v77 = *(v75 + 88);
    v78 = v77(v76, v74);
    v79 = enum case for DIPError.Code.topekaMerchantNotFound(_:);
    if (v78 == enum case for DIPError.Code.topekaMerchantNotFound(_:) || v78 == enum case for DIPError.Code.unexpectedDaemonState(_:) || v78 == enum case for DIPError.Code.idcsUntrustedReaderAuthCertificate(_:) || v78 == enum case for DIPError.Code.idcsRequestedElementsNotPermitted(_:) || v78 == enum case for DIPError.Code.digitalPresentmentInvalidMerchantCertificate(_:) || v78 == v126 || v78 == enum case for DIPError.Code.digitalPresentmentCannotBuildResponse(_:) || v78 == enum case for DIPError.Code.webPresentmentInvalidRequest(_:) || v78 == enum case for DIPError.Code.webPresentmentPassMissing(_:) || v78 == enum case for DIPError.Code.webPresentmentMissingRequiredRequestElementPermission(_:) || v78 == enum case for DIPError.Code.webPresentmentUnknownDeviceRequestVersion(_:) || v78 == enum case for DIPError.Code.webPresentmentInvalidCertificate(_:) || v78 == enum case for DIPError.Code.webPresentmentMissingHost(_:) || v78 == enum case for DIPError.Code.webPresentmentCouldNotSerializeOrigin(_:) || v78 == enum case for DIPError.Code.webPresentmentInvalidEncryptionInformation(_:) || v78 == enum case for DIPError.Code.webPresentmentFirstEditionRequestCannotBeAuthenticatedViaAll(_:) || v78 == enum case for DIPError.Code.webPresentmentSecondEditionRequestMissingUseCases(_:))
    {
      v99 = *(v0 + 464);
      v100 = *(v0 + 240);
      v101 = *(v0 + 192);
      sub_10000BE18(*(v0 + 208), &qword_10083B020, &unk_1006D8ED0);
      [v99 setStatus:{1, 0xD000000000000023, 0x8000000100700350, 132}];
      swift_getErrorValue();
      Error.dipErrorCode.getter();
      v102 = v73(v101, 1, v100);
      v103 = *(v0 + 192);
      if (v102 == 1)
      {

        sub_10000BE18(v103, &qword_10083B020, &unk_1006D8ED0);
      }

      else if (v77(*(v0 + 192), *(v0 + 240)) == v79)
      {
        v118 = *(v0 + 464);
        (*(*(v0 + 248) + 8))(*(v0 + 192), *(v0 + 240));
        static DigitalPresentmentLocalizedString.appNotSupportedTitle.getter();
        v119 = String._bridgeToObjectiveC()();

        [v118 setLocalizedErrorMessageOverride:v119];
      }

      else
      {
        v120 = *(v0 + 240);
        v121 = *(v0 + 248);
        v122 = *(v0 + 192);

        (*(v121 + 8))(v122, v120);
      }

      goto LABEL_51;
    }

    (*(*(v0 + 248) + 8))(*(v0 + 200), *(v0 + 240));
  }

  v80 = (*(v0 + 184) + *(v0 + 472));
  sub_10000BE18(*(v0 + 208), &qword_10083B020, &unk_1006D8ED0);
  v81 = v80[1];
  if (v81)
  {
    v82 = *(*(v0 + 184) + OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_eligibleProposalDataDictionary);
    if (*(v82 + 16))
    {
      v83 = *v80;

      v84 = sub_10003ADCC(v83, v81);
      if (v85)
      {
        v87 = *(v0 + 280);
        v86 = *(v0 + 288);
        sub_10012369C(*(v82 + 56) + *(*(v0 + 272) + 72) * v84, v87, type metadata accessor for DigitalPresentmentEligibleProposalData);

        sub_1001237D8(v87, v86, type metadata accessor for DigitalPresentmentEligibleProposalData);
        defaultLogger()();
        v88 = Logger.logObject.getter();
        v89 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v88, v89))
        {
          v90 = swift_slowAlloc();
          *v90 = 0;
          _os_log_impl(&_mh_execute_header, v88, v89, "DigitalPresentmentAuthorizationCoordinatorPrivateDelegate shouldRetry invoked.", v90, 2u);
        }

        v91 = *(v0 + 456);
        v92 = *(v0 + 344);
        v93 = *(v0 + 328);
        v94 = *(v0 + 184);

        v91(v92, v93);
        v95 = *(v94 + OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_responseBuilder + 24);
        v96 = *(v94 + OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_responseBuilder + 32);
        sub_10000BA08((v94 + OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_responseBuilder), v95);
        v127 = (*(v96 + 8) + **(v96 + 8));
        v97 = swift_task_alloc();
        *(v0 + 520) = v97;
        *v97 = v0;
        v97[1] = sub_100125DD8;
        v98 = *(v0 + 288);

        return v127(v98, v95, v96);
      }
    }
  }

  [*(v0 + 464) setStatus:{1000, 0xD000000000000023, 0x8000000100700350, 132}];

LABEL_51:
  v129 = *(v0 + 464);
  v111 = *(v0 + 424);
  v112 = *(v0 + 432);
  v113 = *(v0 + 408);
  v114 = *(v0 + 416);
  v115 = *(v0 + 392);
  v116 = *(v0 + 384);
  sub_10012248C(v113);
  (*(v115 + 8))(v113, v116);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v111 + 8))(v112, v114);

  v117 = *(v0 + 8);

  return v117(v129);
}

uint64_t sub_100124E64(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 488) = a1;
  *(v3 + 496) = v1;

  if (v1)
  {
    v4 = sub_1001260F0;
  }

  else
  {
    v4 = sub_100124F78;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100124F78(uint64_t a1)
{
  v43 = v1;
  v2 = v1[40];
  v3 = v1[37];
  v4 = v1[23];
  defaultLogger()();
  sub_10012369C(v2, v3, type metadata accessor for DigitalPresentmentEligibleProposalData);
  v5 = v4;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v1[23] + v1[59];
    v9 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v9 = 136315394;
    if (*(v8 + 8))
    {
      v10 = *(v1[23] + v1[59]);
      v11 = *(v8 + 8);
    }

    else
    {
      v11 = 0xE500000000000000;
      v10 = 0x3E6C696E3CLL;
    }

    v39 = v1[45];
    v40 = v1[57];
    v16 = v1[41];
    v17 = v1[37];

    v18 = sub_100141FE4(v10, v11, &v42);

    *(v9 + 4) = v18;
    *(v9 + 12) = 2080;
    v19 = *v17;
    v20 = v17[1];

    sub_100123840(v17, type metadata accessor for DigitalPresentmentEligibleProposalData);
    v21 = sub_100141FE4(v19, v20, &v42);

    *(v9 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v6, v7, "DigitalPresentmentAuthorizationCoordinatorPrivateDelegate credentialIdentifierForSelectedPass %s selectedProposalData.proposal.credentialIdentifier %s", v9, 0x16u);
    swift_arrayDestroy();

    v40(v39, v16);
  }

  else
  {
    v12 = v1[57];
    v13 = v1[45];
    v14 = v1[41];
    v15 = v1[37];

    sub_100123840(v15, type metadata accessor for DigitalPresentmentEligibleProposalData);
    v12(v13, v14);
  }

  v22 = v1[61];
  v23 = v1[58];
  v24 = v1[40];
  v25 = v1[33];
  v26 = v1[23];
  v27 = type metadata accessor for DigitalPresentmentUIResult(0);
  sub_10012369C(v24, v25 + *(v27 + 20), type metadata accessor for DigitalPresentmentEligibleProposalData);
  *v25 = v22;
  v28 = sub_100007224(&unk_10083B010, &qword_1006D9128);
  swift_storeEnumTagMultiPayload();
  (*(*(v28 - 8) + 56))(v25, 0, 1, v28);
  v29 = OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_result;
  swift_beginAccess();
  v30 = v22;
  sub_1000B2764(v25, v26 + v29, &qword_10083B028, &qword_1006D9150);
  swift_endAccess();
  [v23 setStatus:0];

  sub_100123840(v24, type metadata accessor for DigitalPresentmentEligibleProposalData);
  v41 = v1[58];
  v31 = v1[53];
  v32 = v1[54];
  v33 = v1[51];
  v34 = v1[52];
  v35 = v1[49];
  v36 = v1[48];
  sub_10012248C(v33);
  (*(v35 + 8))(v33, v36);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v31 + 8))(v32, v34);

  v37 = v1[1];

  return v37(v41);
}

uint64_t sub_100125490()
{
  v2 = *v1;

  v3 = v2[29];
  v4 = v2[28];
  v5 = v2[27];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_1001276A4;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_100125628;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100125628()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 208);
  swift_getErrorValue();
  Error.dipErrorCode.getter();
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) != 1)
  {
    v5 = *(v0 + 240);
    v6 = *(v0 + 248);
    v7 = *(v0 + 200);
    sub_10000BBC4(*(v0 + 208), v7, &qword_10083B020, &unk_1006D8ED0);
    v8 = *(v6 + 88);
    v9 = v8(v7, v5);
    v10 = enum case for DIPError.Code.topekaMerchantNotFound(_:);
    if (v9 == enum case for DIPError.Code.topekaMerchantNotFound(_:) || v9 == enum case for DIPError.Code.unexpectedDaemonState(_:) || v9 == enum case for DIPError.Code.idcsUntrustedReaderAuthCertificate(_:) || v9 == enum case for DIPError.Code.idcsRequestedElementsNotPermitted(_:) || v9 == enum case for DIPError.Code.digitalPresentmentInvalidMerchantCertificate(_:) || v9 == enum case for DIPError.Code.digitalPresentmentInvalidCredential(_:) || v9 == enum case for DIPError.Code.digitalPresentmentCannotBuildResponse(_:) || v9 == enum case for DIPError.Code.webPresentmentInvalidRequest(_:) || v9 == enum case for DIPError.Code.webPresentmentPassMissing(_:) || v9 == enum case for DIPError.Code.webPresentmentMissingRequiredRequestElementPermission(_:) || v9 == enum case for DIPError.Code.webPresentmentUnknownDeviceRequestVersion(_:) || v9 == enum case for DIPError.Code.webPresentmentInvalidCertificate(_:) || v9 == enum case for DIPError.Code.webPresentmentMissingHost(_:) || v9 == enum case for DIPError.Code.webPresentmentCouldNotSerializeOrigin(_:) || v9 == enum case for DIPError.Code.webPresentmentInvalidEncryptionInformation(_:) || v9 == enum case for DIPError.Code.webPresentmentFirstEditionRequestCannotBeAuthenticatedViaAll(_:) || v9 == enum case for DIPError.Code.webPresentmentSecondEditionRequestMissingUseCases(_:))
    {
      v31 = *(v0 + 464);
      v32 = *(v0 + 240);
      v33 = *(v0 + 192);
      sub_10000BE18(*(v0 + 208), &qword_10083B020, &unk_1006D8ED0);
      [v31 setStatus:1];
      swift_getErrorValue();
      Error.dipErrorCode.getter();
      v34 = v4(v33, 1, v32);
      v35 = *(v0 + 192);
      if (v34 == 1)
      {

        sub_10000BE18(v35, &qword_10083B020, &unk_1006D8ED0);
      }

      else if (v8(*(v0 + 192), *(v0 + 240)) == v10)
      {
        v43 = *(v0 + 464);
        (*(*(v0 + 248) + 8))(*(v0 + 192), *(v0 + 240));
        static DigitalPresentmentLocalizedString.appNotSupportedTitle.getter();
        v44 = String._bridgeToObjectiveC()();

        [v43 setLocalizedErrorMessageOverride:v44];
      }

      else
      {
        v45 = *(v0 + 240);
        v46 = *(v0 + 248);
        v47 = *(v0 + 192);

        (*(v46 + 8))(v47, v45);
      }

      goto LABEL_32;
    }

    (*(*(v0 + 248) + 8))(*(v0 + 200), *(v0 + 240));
  }

  v11 = (*(v0 + 184) + *(v0 + 472));
  sub_10000BE18(*(v0 + 208), &qword_10083B020, &unk_1006D8ED0);
  v12 = v11[1];
  if (v12)
  {
    v13 = *(*(v0 + 184) + OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_eligibleProposalDataDictionary);
    if (*(v13 + 16))
    {
      v14 = *v11;

      v15 = sub_10003ADCC(v14, v12);
      if (v16)
      {
        v18 = *(v0 + 280);
        v17 = *(v0 + 288);
        sub_10012369C(*(v13 + 56) + *(*(v0 + 272) + 72) * v15, v18, type metadata accessor for DigitalPresentmentEligibleProposalData);

        sub_1001237D8(v18, v17, type metadata accessor for DigitalPresentmentEligibleProposalData);
        defaultLogger()();
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&_mh_execute_header, v19, v20, "DigitalPresentmentAuthorizationCoordinatorPrivateDelegate shouldRetry invoked.", v21, 2u);
        }

        v22 = *(v0 + 456);
        v23 = *(v0 + 344);
        v24 = *(v0 + 328);
        v25 = *(v0 + 184);

        v22(v23, v24);
        v26 = *(v25 + OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_responseBuilder + 24);
        v27 = *(v25 + OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_responseBuilder + 32);
        sub_10000BA08((v25 + OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_responseBuilder), v26);
        v48 = (*(v27 + 8) + **(v27 + 8));
        v28 = swift_task_alloc();
        *(v0 + 520) = v28;
        *v28 = v0;
        v28[1] = sub_100125DD8;
        v29 = *(v0 + 288);

        return v48(v29, v26, v27);
      }
    }
  }

  [*(v0 + 464) setStatus:1000];

LABEL_32:
  v49 = *(v0 + 464);
  v36 = *(v0 + 424);
  v37 = *(v0 + 432);
  v38 = *(v0 + 408);
  v39 = *(v0 + 416);
  v40 = *(v0 + 392);
  v41 = *(v0 + 384);
  sub_10012248C(v38);
  (*(v40 + 8))(v38, v41);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v36 + 8))(v37, v39);

  v42 = *(v0 + 8);

  return v42(v49);
}

uint64_t sub_100125DD8()
{

  return _swift_task_switch(sub_100125ED4, 0, 0);
}

uint64_t sub_100125ED4()
{
  sub_100123840(*(v0 + 288), type metadata accessor for DigitalPresentmentEligibleProposalData);
  [*(v0 + 464) setStatus:1000];

  v9 = *(v0 + 464);
  v1 = *(v0 + 424);
  v2 = *(v0 + 432);
  v3 = *(v0 + 408);
  v4 = *(v0 + 416);
  v5 = *(v0 + 392);
  v6 = *(v0 + 384);
  sub_10012248C(v3);
  (*(v5 + 8))(v3, v6);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v1 + 8))(v2, v4);

  v7 = *(v0 + 8);

  return v7(v9);
}

uint64_t sub_1001260F0()
{
  v78 = v0;
  sub_100123840(*(v0 + 320), type metadata accessor for DigitalPresentmentEligibleProposalData);
  v1 = *(v0 + 496);
  *(v0 + 504) = v1;
  defaultLogger()();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v73 = *(v0 + 352);
    v74 = *(v0 + 456);
    v4 = *(v0 + 328);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v77 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = sub_100141FE4(v7, v8, &v77);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "DigitalPresentmentUIPresenter: paymentAuthorizationCoordinator didAuthorizeContextWithHandler buildResponse failed with error: %s.", v5, 0xCu);
    sub_10000BB78(v6);

    v74(v73, v4);
  }

  else
  {
    v10 = *(v0 + 456);
    v11 = *(v0 + 352);
    v12 = *(v0 + 328);

    v10(v11, v12);
  }

  v13 = *(v0 + 400);
  v14 = *(v0 + 384);
  v15 = *(v0 + 392);
  v16 = *(v0 + 264);
  v17 = *(v0 + 184);
  *v16 = v1;
  v18 = sub_100007224(&unk_10083B010, &qword_1006D9128);
  swift_storeEnumTagMultiPayload();
  (*(*(v18 - 8) + 56))(v16, 0, 1, v18);
  v19 = OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_result;
  swift_beginAccess();
  swift_errorRetain();
  sub_1000B2764(v16, v17 + v19, &qword_10083B028, &qword_1006D9150);
  swift_endAccess();
  Date.init()();
  Date.timeIntervalSince(_:)();
  v21 = v20;
  (*(v15 + 8))(v13, v14);
  if (v21 < 1.0)
  {
    v22 = static Duration.seconds(_:)();
    v24 = v23;
    static Clock<>.continuous.getter();
    v25 = swift_task_alloc();
    *(v0 + 512) = v25;
    *v25 = v0;
    v25[1] = sub_100125490;

    return sub_1003DA1A4(v22, v24, 0, 0, 1);
  }

  v27 = *(v0 + 240);
  v28 = *(v0 + 248);
  v29 = *(v0 + 208);
  swift_getErrorValue();
  Error.dipErrorCode.getter();
  v30 = *(v28 + 48);
  if (v30(v29, 1, v27) != 1)
  {
    v31 = *(v0 + 240);
    v32 = *(v0 + 248);
    v33 = *(v0 + 200);
    sub_10000BBC4(*(v0 + 208), v33, &qword_10083B020, &unk_1006D8ED0);
    v34 = *(v32 + 88);
    v35 = v34(v33, v31);
    v36 = enum case for DIPError.Code.topekaMerchantNotFound(_:);
    if (v35 == enum case for DIPError.Code.topekaMerchantNotFound(_:) || v35 == enum case for DIPError.Code.unexpectedDaemonState(_:) || v35 == enum case for DIPError.Code.idcsUntrustedReaderAuthCertificate(_:) || v35 == enum case for DIPError.Code.idcsRequestedElementsNotPermitted(_:) || v35 == enum case for DIPError.Code.digitalPresentmentInvalidMerchantCertificate(_:) || v35 == enum case for DIPError.Code.digitalPresentmentInvalidCredential(_:) || v35 == enum case for DIPError.Code.digitalPresentmentCannotBuildResponse(_:) || v35 == enum case for DIPError.Code.webPresentmentInvalidRequest(_:) || v35 == enum case for DIPError.Code.webPresentmentPassMissing(_:) || v35 == enum case for DIPError.Code.webPresentmentMissingRequiredRequestElementPermission(_:) || v35 == enum case for DIPError.Code.webPresentmentUnknownDeviceRequestVersion(_:) || v35 == enum case for DIPError.Code.webPresentmentInvalidCertificate(_:) || v35 == enum case for DIPError.Code.webPresentmentMissingHost(_:) || v35 == enum case for DIPError.Code.webPresentmentCouldNotSerializeOrigin(_:) || v35 == enum case for DIPError.Code.webPresentmentInvalidEncryptionInformation(_:) || v35 == enum case for DIPError.Code.webPresentmentFirstEditionRequestCannotBeAuthenticatedViaAll(_:) || v35 == enum case for DIPError.Code.webPresentmentSecondEditionRequestMissingUseCases(_:))
    {
      v56 = *(v0 + 464);
      v57 = *(v0 + 240);
      v58 = *(v0 + 192);
      sub_10000BE18(*(v0 + 208), &qword_10083B020, &unk_1006D8ED0);
      [v56 setStatus:1];
      swift_getErrorValue();
      Error.dipErrorCode.getter();
      v59 = v30(v58, 1, v57);
      v60 = *(v0 + 192);
      if (v59 == 1)
      {

        sub_10000BE18(v60, &qword_10083B020, &unk_1006D8ED0);
      }

      else if (v34(*(v0 + 192), *(v0 + 240)) == v36)
      {
        v68 = *(v0 + 464);
        (*(*(v0 + 248) + 8))(*(v0 + 192), *(v0 + 240));
        static DigitalPresentmentLocalizedString.appNotSupportedTitle.getter();
        v69 = String._bridgeToObjectiveC()();

        [v68 setLocalizedErrorMessageOverride:v69];
      }

      else
      {
        v70 = *(v0 + 240);
        v71 = *(v0 + 248);
        v72 = *(v0 + 192);

        (*(v71 + 8))(v72, v70);
      }

      goto LABEL_39;
    }

    (*(*(v0 + 248) + 8))(*(v0 + 200), *(v0 + 240));
  }

  v37 = (*(v0 + 184) + *(v0 + 472));
  sub_10000BE18(*(v0 + 208), &qword_10083B020, &unk_1006D8ED0);
  v38 = v37[1];
  if (v38)
  {
    v39 = *(*(v0 + 184) + OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_eligibleProposalDataDictionary);
    if (*(v39 + 16))
    {
      v40 = *v37;

      v41 = sub_10003ADCC(v40, v38);
      if (v42)
      {
        v44 = *(v0 + 280);
        v43 = *(v0 + 288);
        sub_10012369C(*(v39 + 56) + *(*(v0 + 272) + 72) * v41, v44, type metadata accessor for DigitalPresentmentEligibleProposalData);

        sub_1001237D8(v44, v43, type metadata accessor for DigitalPresentmentEligibleProposalData);
        defaultLogger()();
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&_mh_execute_header, v45, v46, "DigitalPresentmentAuthorizationCoordinatorPrivateDelegate shouldRetry invoked.", v47, 2u);
        }

        v48 = *(v0 + 456);
        v49 = *(v0 + 344);
        v50 = *(v0 + 328);
        v51 = *(v0 + 184);

        v48(v49, v50);
        v52 = *(v51 + OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_responseBuilder + 24);
        v53 = *(v51 + OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_responseBuilder + 32);
        sub_10000BA08((v51 + OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_responseBuilder), v52);
        v75 = (*(v53 + 8) + **(v53 + 8));
        v54 = swift_task_alloc();
        *(v0 + 520) = v54;
        *v54 = v0;
        v54[1] = sub_100125DD8;
        v55 = *(v0 + 288);

        return v75(v55, v52, v53);
      }
    }
  }

  [*(v0 + 464) setStatus:1000];

LABEL_39:
  v76 = *(v0 + 464);
  v61 = *(v0 + 424);
  v62 = *(v0 + 432);
  v63 = *(v0 + 408);
  v64 = *(v0 + 416);
  v65 = *(v0 + 392);
  v66 = *(v0 + 384);
  sub_10012248C(v63);
  (*(v65 + 8))(v63, v66);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v61 + 8))(v62, v64);

  v67 = *(v0 + 8);

  return v67(v76);
}

uint64_t sub_100126BCC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100041F04;

  return sub_100121368(v2, v3, v5, v4);
}

uint64_t sub_100126C8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_100500C6C(a1, v4, v5, v6);
}

uint64_t sub_100126D58()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100126E18, 0, 0);
}

uint64_t sub_100126E18(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "DigitalPresentmentAuthorizationCoordinatorPrivateDelegate paymentAuthorizationCoordinator didAuthorizePayment invoked.", v4, 2u);
  }

  v6 = v1[4];
  v5 = v1[5];
  v7 = v1[3];

  (*(v6 + 8))(v5, v7);
  v8 = swift_task_alloc();
  v1[6] = v8;
  *v8 = v1;
  v8[1] = sub_100126F60;

  return sub_100123A60();
}

uint64_t sub_100126F60(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1001271AC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_10012726C, 0, 0);
}

uint64_t sub_10012726C()
{
  v29 = v0;
  v1 = [*(v0 + 16) subCredential];
  if (v1 && (v2 = v1, v3 = [v1 identifier], v2, v3))
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = *(v0 + 24);
  v8 = &v7[OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_credentialIdentifierForSelectedPass];
  *v8 = v4;
  v8[1] = v6;

  defaultLogger()();
  v9 = v7;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = v13;
    *v12 = 136315138;
    if (v8[1])
    {
      v14 = *v8;
      v15 = v8[1];
    }

    else
    {
      v15 = 0xE500000000000000;
      v14 = 0x3E6C696E3CLL;
    }

    v20 = *(v0 + 40);
    v19 = *(v0 + 48);
    v21 = *(v0 + 32);

    v22 = sub_100141FE4(v14, v15, &v28);

    *(v12 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v10, v11, "DigitalPresentmentAuthorizationCoordinatorPrivateDelegate: paymentAuthorizationCoordinator didSelectPaymentMethod credential was selected: %s", v12, 0xCu);
    sub_10000BB78(v13);

    (*(v20 + 8))(v19, v21);
  }

  else
  {
    v17 = *(v0 + 40);
    v16 = *(v0 + 48);
    v18 = *(v0 + 32);

    (*(v17 + 8))(v16, v18);
  }

  v23 = objc_allocWithZone(PKPaymentRequestPaymentMethodUpdate);
  sub_100127508();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v25 = [v23 initWithErrors:0 paymentSummaryItems:isa];

  v26 = *(v0 + 8);

  return v26(v25);
}

unint64_t sub_100127508()
{
  result = qword_10083B040;
  if (!qword_10083B040)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10083B040);
  }

  return result;
}

uint64_t sub_100127554()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001275A4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100027B9C;

  return sub_100120F54(v2, v3, v5, v4);
}

uint64_t sub_100127664()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001276C0(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for PreferencesURLOpener();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = type metadata accessor for AlertPresenter();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  v5 = type metadata accessor for AlertPresentationOutcome();
  v1[12] = v5;
  v1[13] = *(v5 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v6 = type metadata accessor for AlertConfiguration();
  v1[16] = v6;
  v1[17] = *(v6 - 8);
  v1[18] = swift_task_alloc();

  return _swift_task_switch(sub_1001278FC, 0, 0);
}

uint64_t sub_1001278FC()
{
  sub_10000BA08(*(v0 + 16), *(*(v0 + 16) + 24));
  dispatch thunk of DeviceInformationProviding.isFaceIDDevice.getter();
  static AlertConfiguration.digitalPresentmentAlertDisplayConfiguration(isFaceIDDevice:)();
  AlertPresenter.init()();
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_1001279E8;
  v2 = *(v0 + 144);
  v3 = *(v0 + 120);

  return AlertPresenter.present(with:)(v3, v2);
}

uint64_t sub_1001279E8()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  *(*v1 + 160) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_100127E88;
  }

  else
  {
    v5 = sub_100127B58;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100127B58()
{
  v1 = v0[14];
  v2 = v0[13];
  v3 = v0[12];
  (*(v2 + 16))(v1, v0[15], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for AlertPresentationOutcome.defaultButtonTapped(_:))
  {
    v5 = v0[17];
    v6 = v0[15];
    v7 = v0[12];
    v8 = v0[13];
    v10 = v0[7];
    v9 = v0[8];
    v11 = v0[6];
    PreferencesURLOpener.init()();
    PreferencesURLOpener.openFaceIDAndPasscodeSettings()();
    (*(v10 + 8))(v9, v11);
    (*(v8 + 8))(v6, v7);
    (*(v5 + 8))(v0[18], v0[16]);
  }

  else
  {
    if (v4 == enum case for AlertPresentationOutcome.alternateButtonTapped(_:))
    {
      v12 = v0[15];
      v13 = v0[12];
      v14 = v0[13];
      (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.digitalPresentmentUserCancelled(_:), v0[3]);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      (*(v14 + 8))(v12, v13);
      (*(v0[17] + 8))(v0[18], v0[16]);

      v15 = v0[1];
      goto LABEL_7;
    }

    v17 = v0[17];
    v16 = v0[18];
    v18 = v0[16];
    v19 = *(v0[13] + 8);
    v19(v0[15], v0[12]);
    (*(v17 + 8))(v16, v18);
    v19(v0[14], v0[12]);
  }

  v15 = v0[1];
LABEL_7:

  return v15();
}

uint64_t sub_100127E88()
{
  (*(v0[17] + 8))(v0[18], v0[16]);

  v1 = v0[1];

  return v1();
}

__n128 sub_100127F8C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100127FA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_100127FE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100128044()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v15 - v5;
  v7 = BundleRecord.appStoreItemIdentifier.getter();
  if (v8)
  {
    defaultLogger()();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v9, v10))
    {
      v6 = v4;
      goto LABEL_8;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "adamIdentifier of the app is 0.", v11, 2u);
    v6 = v4;
    goto LABEL_6;
  }

  defaultLogger()();
  v9 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v9, v12, "adamIdentifier of the calling app is %llu.", v13, 0xCu);
LABEL_6:
  }

LABEL_8:

  (*(v1 + 8))(v6, v0);
  return v7;
}

uint64_t sub_100128240@<X0>(uint64_t *a1@<X8>)
{
  v50 = a1;
  v1 = type metadata accessor for Logger();
  v51 = *(v1 - 8);
  v52 = v1;
  v2 = __chkstk_darwin(v1);
  v49 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v6 = &v44 - v5;
  __chkstk_darwin(v4);
  v8 = &v44 - v7;
  v9 = type metadata accessor for BundleRecordFetcher();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BundleRecord();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  BundleRecordFetcher.init()();
  BundleRecordFetcher.record(withAuditToken:)();
  v17 = v8;
  v48 = v14;
  v49 = v13;
  (*(v10 + 8))(v12, v9);
  v18 = BundleRecord.applicationIdentifier.getter();
  if (v19)
  {
    v20 = v18;
    v21 = v19;
    v22 = sub_100128044();
    LODWORD(v24) = v23;
    v25 = BundleRecord.localizedName.getter();
    v27 = v26;
    defaultLogger()();

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();

    v47 = v29;
    v30 = os_log_type_enabled(v28, v29);
    v31 = v48;
    if (v30)
    {
      v32 = swift_slowAlloc();
      v44 = v28;
      v33 = v32;
      v34 = swift_slowAlloc();
      v46 = v24;
      v45 = v16;
      v35 = v34;
      v53 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_100141FE4(v25, v27, &v53);
      v24 = v44;
      _os_log_impl(&_mh_execute_header, v44, v47, "App name of the calling app is %s", v33, 0xCu);
      sub_10000BB78(v35);

      (*(v51 + 8))(v17, v52);
      LOBYTE(v24) = v46;
      result = (*(v31 + 8))(v45, v49);
    }

    else
    {

      (*(v51 + 8))(v17, v52);
      result = (*(v31 + 8))(v16, v49);
    }

    v42 = v24 & 1;
  }

  else
  {
    defaultLogger()();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    v39 = os_log_type_enabled(v37, v38);
    v40 = v48;
    if (v39)
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "The calling process' application identifier is nil, this is not supported.", v41, 2u);
    }

    (*(v51 + 8))(v6, v52);
    result = (*(v40 + 8))(v16, v49);
    v20 = 0;
    v21 = 0;
    v25 = 0;
    v27 = 0;
    v22 = 0;
    v42 = 0;
  }

  v43 = v50;
  *v50 = v20;
  v43[1] = v21;
  v43[2] = v25;
  v43[3] = v27;
  v43[4] = v22;
  *(v43 + 40) = v42;
  return result;
}

uint64_t sub_100128840(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100128888(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

Swift::Int sub_1001288F4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001289B4(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100128A60(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100128B1C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100129224(*a1);
  *a2 = result;
  return result;
}

void sub_100128B4C(unint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x64692D6F746F6870;
  if (*v1 != 2)
  {
    v3 = 1701736302;
    v2 = 0xE400000000000000;
  }

  v4 = 0xD000000000000012;
  v5 = 0x80000001006F9C80;
  if (*v1)
  {
    v4 = 0xD000000000000013;
    v5 = 0x80000001006F9CA0;
  }

  if (*v1 <= 1u)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_100128BC8()
{
  v1 = 0x64692D6F746F6870;
  if (*v0 != 2)
  {
    v1 = 1701736302;
  }

  v2 = 0xD000000000000012;
  if (*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_100128C40(char a1)
{
  result = 0x616E2D6E65766967;
  switch(a1)
  {
    case 1:
      result = 0x6E2D796C696D6166;
      break;
    case 2:
      result = 7890291;
      break;
    case 3:
      result = 0x7469617274726F70;
      break;
    case 4:
      result = 0x73736572646461;
      break;
    case 5:
      result = 0x746867696568;
      break;
    case 6:
      result = 0x746867696577;
      break;
    case 7:
      result = 0x6F6C6F632D657965;
      break;
    case 8:
      result = 0x6C6F632D72696168;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0x2D6E617265746576;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0xD00000000000001ELL;
      break;
    case 13:
      result = 0xD000000000000018;
      break;
    case 14:
      result = 0x746E656D75636F64;
      break;
    case 15:
      result = 0xD000000000000013;
      break;
    case 16:
      result = 0xD000000000000012;
      break;
    case 17:
      result = 6645601;
      break;
    case 18:
      result = 0x2D666F2D65746164;
      break;
    case 19:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100128EDC(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100128C40(*a1);
  v5 = v4;
  if (v3 == sub_100128C40(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100128F64()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100128C40(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100128FC8(uint64_t a1)
{
  sub_100128C40(*v1);
  String.hash(into:)();
}

Swift::Int sub_10012901C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_100128C40(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10012907C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100129270(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1001290AC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100128C40(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1001290E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _StringGuts.grow(_:)(61);
  v3._object = 0x8000000100700480;
  v3._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v3);
  v4._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x6E656D656C65202CLL;
  v5._object = 0xED0000203D207374;
  String.append(_:)(v5);
  v6._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0xD000000000000019;
  v7._object = 0x80000001007004A0;
  String.append(_:)(v7);
  v8._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v8);

  return 0;
}

unint64_t sub_100129224(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1007FAE60, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100129270(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v2;
  }
}

char *sub_1001292C4(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16))
  {
    v8 = _swiftEmptyArrayStorage;
    goto LABEL_26;
  }

  v3 = sub_10003ADCC(0x746E656D75636F64, 0xEE0073657079742DLL);
  if ((v4 & 1) == 0 || (v5 = *(*(a1 + 56) + 8 * v3), (v6 = *(v5 + 16)) == 0))
  {
    v8 = _swiftEmptyArrayStorage;
    if (!*(a1 + 16))
    {
      goto LABEL_26;
    }

    goto LABEL_16;
  }

  v7 = (v5 + 40);
  v8 = _swiftEmptyArrayStorage;
  do
  {
    v9 = *(v7 - 1);
    v10 = *v7;

    v11._countAndFlagsBits = v9;
    v11._object = v10;
    v12 = _findStringSwitchCase(cases:string:)(&off_1007FB0E0, v11);

    if (v12 <= 3)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1003C5778(0, *(v8 + 2) + 1, 1, v8);
      }

      v14 = *(v8 + 2);
      v13 = *(v8 + 3);
      if (v14 >= v13 >> 1)
      {
        v8 = sub_1003C5778((v13 > 1), v14 + 1, 1, v8);
      }

      *(v8 + 2) = v14 + 1;
      v8[v14 + 32] = v12;
    }

    v7 += 2;
    --v6;
  }

  while (v6);

  if (*(a1 + 16))
  {
LABEL_16:
    v15 = sub_10003ADCC(0x73746E656D656C65, 0xE800000000000000);
    if (v16)
    {
      v17 = *(*(a1 + 56) + 8 * v15);
      v18 = *(v17 + 16);
      if (v18)
      {

        v19 = (v17 + 40);
        v20 = _swiftEmptyArrayStorage;
        do
        {
          v21 = *(v19 - 1);
          v22 = *v19;

          v23 = sub_100129270(v21, v22);
          if (v23 != 20)
          {
            v24 = v23;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v20 = sub_1003C5764(0, *(v20 + 2) + 1, 1, v20);
            }

            v26 = *(v20 + 2);
            v25 = *(v20 + 3);
            if (v26 >= v25 >> 1)
            {
              v20 = sub_1003C5764((v25 > 1), v26 + 1, 1, v20);
            }

            *(v20 + 2) = v26 + 1;
            v20[v26 + 32] = v24;
          }

          v19 += 2;
          --v18;
        }

        while (v18);
      }
    }
  }

LABEL_26:

  return v8;
}

uint64_t sub_100129568(uint64_t *a1, int a2)
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

uint64_t sub_1001295B0(uint64_t result, int a2, int a3)
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

unint64_t sub_100129604()
{
  result = qword_10083B118;
  if (!qword_10083B118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083B118);
  }

  return result;
}

unint64_t sub_10012965C()
{
  result = qword_10083B120;
  if (!qword_10083B120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083B120);
  }

  return result;
}

uint64_t sub_1001296B0(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for Locale.Region();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for ISO18013KnownDocTypes();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  v7 = type metadata accessor for IdentityDocumentDescriptor();
  v3[15] = v7;
  v3[16] = *(v7 - 8);
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_100129888, 0, 0);
}

uint64_t sub_100129888(uint64_t a1)
{
  v53 = v1;
  v2 = IdentityDocumentCompoundDescriptor.descriptors.getter();
  v3 = sub_10003D21C(_swiftEmptyArrayStorage);
  v11 = v3;
  v51 = v1;
  v48 = *(v2 + 16);
  if (v48)
  {
    v12 = 0;
    v49 = v1[16];
    v45 = (v1[7] + 8);
    v46 = (v1[10] + 8);
    v47 = v2;
    while (v12 < *(v2 + 16))
    {
      v13 = v51[11];
      (*(v49 + 16))(v51[17], v2 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v12, v51[15]);
      sub_100142F4C(v13);
      v14 = v51[11];
      v16 = v51[8];
      v15 = v51[9];
      v17 = ISO18013KnownDocTypes.rawValue.getter();
      v19 = v18;
      (*v46)(v14, v15);
      sub_1001436AC(v16);
      v20 = v51[17];
      v21 = v51[15];
      ++v12;
      v22 = v51[8];
      v23 = v51[6];
      v24 = Locale.Region.identifier.getter();
      v26 = v25;
      (*v45)(v22, v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = v11;
      sub_10016CAB8(v24, v26, v17, v19, isUniquelyReferenced_nonNull_native);

      v3 = (*(v49 + 8))(v20, v21);
      v2 = v47;
      if (v48 == v12)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    v51[18] = v11;

    v28 = sub_1006983EC();
    v51[19] = v28;
    defaultLogger()();

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();

    v31 = os_log_type_enabled(v29, v30);
    v32 = v51[13];
    v50 = v51[14];
    v33 = v51[12];
    if (v31)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v52 = v35;
      *v34 = 136315138;
      v36 = Set.description.getter();
      v38 = sub_100141FE4(v36, v37, &v52);

      *(v34 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v29, v30, "hasDocumentCredential: documentTypes %s", v34, 0xCu);
      sub_10000BB78(v35);
    }

    (*(v32 + 8))(v50, v33);
    v39 = v51[5];
    v40 = swift_task_alloc();
    v51[20] = v40;
    *(v40 + 16) = v28;
    *(v40 + 24) = v39;
    v41 = sub_100007224(&qword_10083B1F8, &unk_1006E4BD0);
    v42 = sub_100007224(&qword_100834EA0, &qword_1006C06B0);
    v43 = swift_task_alloc();
    v51[21] = v43;
    *v43 = v51;
    v43[1] = sub_100129D58;
    v55 = v42;
    v8 = &unk_1006D9580;
    v3 = (v51 + 2);
    v4 = v41;
    v5 = v42;
    v6 = 0;
    v7 = 0;
    v9 = v40;
    v10 = v41;
  }

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100129D58()
{
  *(*v1 + 176) = v0;

  if (v0)
  {

    v2 = sub_10012A1B4;
  }

  else
  {

    v2 = sub_100129EC8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100129EC8()
{
  v1 = v0[18];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v0[23] = v4;
  v5 = swift_task_alloc();
  v0[24] = v5;
  v5[2] = v4;
  v5[3] = v2;
  v5[4] = v3;
  v5[5] = v1;
  v6 = sub_10001F8D4(0, &qword_10083B200, DCCredentialProperties_ptr);
  v7 = swift_task_alloc();
  v0[25] = v7;
  *v7 = v0;
  v7[1] = sub_100129FEC;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 27, v6, &type metadata for Bool, 0, 0, &unk_1006D9590, v5, v6);
}

uint64_t sub_100129FEC()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_10012A248;
  }

  else
  {

    v2 = sub_10012A11C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10012A11C()
{
  v1 = *(v0 + 216);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10012A1B4()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_10012A248()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_10012A2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v5 = sub_100007224(&qword_10083B218, &qword_1006D95D0);
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();

  return _swift_task_switch(sub_10012A40C, 0, 0);
}

uint64_t sub_10012A40C()
{
  v1 = *(v0 + 104);
  v4 = *(v1 + 56);
  v3 = v1 + 56;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(*(v0 + 104) + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v34 = *(v0 + 104);

  v12 = 0;
  v32 = v8;
  v33 = v3;
  while (v7)
  {
LABEL_10:
    v15 = *(v0 + 128);
    v16 = *(v0 + 112);
    v17 = (*(v34 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v7)))));
    v18 = v17[1];
    v35 = *v17;
    v36 = *(v0 + 120);
    v19 = type metadata accessor for TaskPriority();
    v20 = *(v19 - 8);
    (*(v20 + 56))(v15, 1, 1, v19);
    v21 = swift_allocObject();
    v21[2] = 0;
    v22 = v21 + 2;
    v21[3] = 0;
    v21[4] = v16;
    v21[5] = v35;
    v21[6] = v18;
    sub_10000BBC4(v15, v36, &unk_100845860, &unk_1006BF9D0);
    LODWORD(v15) = (*(v20 + 48))(v36, 1, v19);

    v23 = *(v0 + 120);
    if (v15 == 1)
    {
      sub_10000BE18(*(v0 + 120), &unk_100845860, &unk_1006BF9D0);
      if (*v22)
      {
        goto LABEL_12;
      }
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v20 + 8))(v23, v19);
      if (*v22)
      {
LABEL_12:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v24 = dispatch thunk of Actor.unownedExecutor.getter();
        v26 = v25;
        swift_unknownObjectRelease();
        goto LABEL_15;
      }
    }

    v24 = 0;
    v26 = 0;
LABEL_15:
    v27 = **(v0 + 96);

    sub_100007224(&qword_10083B1F8, &unk_1006E4BD0);
    v28 = v26 | v24;
    if (v26 | v24)
    {
      v28 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v24;
      *(v0 + 40) = v26;
    }

    v13 = *(v0 + 128);
    v7 &= v7 - 1;
    *(v0 + 48) = 1;
    *(v0 + 56) = v28;
    *(v0 + 64) = v27;
    swift_task_create();

    v9 = sub_10000BE18(v13, &unk_100845860, &unk_1006BF9D0);
    v8 = v32;
    v3 = v33;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return dispatch thunk of AsyncIteratorProtocol.next()(v9, v10, v11);
    }

    if (v14 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v14);
    ++v12;
    if (v7)
    {
      v12 = v14;
      goto LABEL_10;
    }
  }

  *(v0 + 72) = _swiftEmptyArrayStorage;
  sub_100007224(&qword_10083B1F8, &unk_1006E4BD0);
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  ThrowingTaskGroup.makeAsyncIterator()();
  v29 = sub_10012D234(&qword_10083B220, &qword_10083B218, &qword_1006D95D0);
  v30 = swift_task_alloc();
  *(v0 + 160) = v30;
  *v30 = v0;
  v30[1] = sub_10012A820;
  v10 = *(v0 + 136);
  v9 = v0 + 80;
  v11 = v29;

  return dispatch thunk of AsyncIteratorProtocol.next()(v9, v10, v11);
}

uint64_t sub_10012A820()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    (*(v2[18] + 8))(v2[19], v2[17]);

    v3 = sub_10012AC54;
  }

  else
  {
    v3 = sub_10012A954;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10012A954()
{
  v1 = v0[10];
  if (v1)
  {
    v2 = v1 + 64;
    v3 = -1;
    v4 = -1 << *(v1 + 32);
    if (-v4 < 64)
    {
      v3 = ~(-1 << -v4);
    }

    v5 = v3 & *(v1 + 64);
    v6 = (63 - v4) >> 6;

    v10 = 0;
    v11 = _swiftEmptyArrayStorage;
    while (v5)
    {
LABEL_11:
      v13 = v1;
      v14 = *(*(v1 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v5)))));
      v15 = *(v14 + 16);
      v16 = *(v11 + 2);
      v17 = v16 + v15;
      if (__OFADD__(v16, v15))
      {
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        return dispatch thunk of AsyncIteratorProtocol.next()(isUniquelyReferenced_nonNull_native, v8, v9);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v17 > *(v11 + 3) >> 1)
      {
        if (v16 <= v17)
        {
          v18 = v16 + v15;
        }

        else
        {
          v18 = v16;
        }

        isUniquelyReferenced_nonNull_native = sub_1003C5110(isUniquelyReferenced_nonNull_native, v18, 1, v11);
        v11 = isUniquelyReferenced_nonNull_native;
      }

      v5 &= v5 - 1;
      if (*(v14 + 16))
      {
        if ((*(v11 + 3) >> 1) - *(v11 + 2) < v15)
        {
          goto LABEL_32;
        }

        swift_arrayInitWithCopy();

        v1 = v13;
        if (v15)
        {
          v19 = *(v11 + 2);
          v20 = __OFADD__(v19, v15);
          v21 = v19 + v15;
          if (v20)
          {
            goto LABEL_33;
          }

          *(v11 + 2) = v21;
        }
      }

      else
      {

        v1 = v13;
        if (v15)
        {
          goto LABEL_31;
        }
      }
    }

    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v12 >= v6)
      {
        break;
      }

      v5 = *(v2 + 8 * v12);
      ++v10;
      if (v5)
      {
        v10 = v12;
        goto LABEL_11;
      }
    }

    sub_10031C884(v11);

    v22 = sub_10012D234(&qword_10083B220, &qword_10083B218, &qword_1006D95D0);
    v23 = swift_task_alloc();
    *(v27 + 160) = v23;
    *v23 = v27;
    v23[1] = sub_10012A820;
    v8 = *(v27 + 136);
    isUniquelyReferenced_nonNull_native = v28;
    v9 = v22;

    return dispatch thunk of AsyncIteratorProtocol.next()(isUniquelyReferenced_nonNull_native, v8, v9);
  }

  else
  {
    v24 = v0[11];
    (*(v0[18] + 8))(v0[19], v0[17]);
    *v24 = v0[9];

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_10012AC54()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10012ACCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return _swift_task_switch(sub_10012ACF0, 0, 0);
}

uint64_t sub_10012ACF0()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = sub_10000BA08(v2 + 4, v2[7]);
  v4 = v2[3];
  v5 = *v3;
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_10012ADB0;
  v7 = v0[4];

  return sub_10050657C(v4, v7, v1, v5);
}

uint64_t sub_10012ADB0(uint64_t a1)
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
    *(v4 + 56) = a1;

    return _swift_task_switch(sub_10012AEFC, 0, 0);
  }
}

uint64_t sub_10012AF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[13] = a3;
  v6[14] = a4;
  v6[11] = a1;
  v6[12] = a2;
  v7 = sub_100007224(&qword_10083B208, &unk_1006D9598);
  v6[17] = v7;
  v6[18] = *(v7 - 8);
  v6[19] = swift_task_alloc();
  sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();

  return _swift_task_switch(sub_10012B038, 0, 0);
}

uint64_t sub_10012B038()
{
  v1 = v0[13];
  v2 = *(v1 + 16);
  if (v2)
  {
    v26 = v0 + 2;
    v30 = *v0[12];
    v29 = type metadata accessor for TaskPriority();
    v3 = *(v29 - 8);
    v28 = *(v3 + 56);
    v27 = (v3 + 48);
    v25 = (v3 + 8);
    v4 = (v1 + 40);
    v5 = &unk_100845860;
    do
    {
      v31 = v4;
      v32 = v2;
      v9 = v0[20];
      v8 = v0[21];
      v10 = v0[14];
      v11 = v0;
      v12 = v5;
      v13 = *(v4 - 1);
      v14 = *v4;
      v28(v8, 1, 1, v29);
      v15 = swift_allocObject();
      v15[2] = 0;
      v16 = v15 + 2;
      v15[3] = 0;
      v15[4] = v10;
      v15[5] = v13;
      v15[6] = v14;
      v5 = v12;
      v0 = v11;
      sub_10000BBC4(v8, v9, v5, &unk_1006BF9D0);
      LODWORD(v9) = (*v27)(v9, 1, v29);

      v17 = v11[20];
      if (v9 == 1)
      {
        sub_10000BE18(v11[20], v5, &unk_1006BF9D0);
        if (*v16)
        {
          goto LABEL_9;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*v25)(v17, v29);
        if (*v16)
        {
LABEL_9:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v18 = dispatch thunk of Actor.unownedExecutor.getter();
          v19 = v20;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v18 = 0;
      v19 = 0;
LABEL_10:
      sub_10001F8D4(0, &qword_10083B200, DCCredentialProperties_ptr);

      if (v19 | v18)
      {
        v6 = v26;
        *v26 = 0;
        v26[1] = 0;
        v11[4] = v18;
        v11[5] = v19;
      }

      else
      {
        v6 = 0;
      }

      v7 = v11[21];
      v11[6] = 1;
      v11[7] = v6;
      v11[8] = v30;
      swift_task_create();

      sub_10000BE18(v7, v5, &unk_1006BF9D0);
      v4 = v31 + 2;
      --v2;
    }

    while (v32 != 1);
  }

  sub_10001F8D4(0, &qword_10083B200, DCCredentialProperties_ptr);
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  ThrowingTaskGroup.makeAsyncIterator()();
  v21 = sub_10012D234(&qword_10083B210, &qword_10083B208, &unk_1006D9598);
  v22 = swift_task_alloc();
  v0[22] = v22;
  *v22 = v0;
  v22[1] = sub_10012B3E8;
  v23 = v0[17];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 9, v23, v21);
}

uint64_t sub_10012B3E8()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    (*(v2[18] + 8))(v2[19], v2[17]);
    v3 = sub_10012B640;
  }

  else
  {
    v3 = sub_10012B514;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10012B514()
{
  v1 = *(v0 + 72);
  *(v0 + 192) = v1;
  if (v1)
  {
    *(v0 + 80) = v1;
    v2 = swift_task_alloc();
    *(v0 + 200) = v2;
    *v2 = v0;
    v2[1] = sub_10012B6C0;
    v3 = *(v0 + 120);
    v4 = *(v0 + 128);
    v5 = *(v0 + 112);

    return sub_10012BC0C((v0 + 80), v5, v3, v4);
  }

  else
  {
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
    **(v0 + 88) = *(v0 + 192) != 0;

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_10012B640()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10012B6C0(char a1)
{
  v4 = *v2;
  *(v4 + 208) = v1;

  v5 = *(v4 + 192);
  if (v1)
  {
    (*(*(v4 + 144) + 8))(*(v4 + 152), *(v4 + 136));

    v6 = sub_10012B970;
  }

  else
  {

    *(v4 + 216) = a1 & 1;
    v6 = sub_10012B824;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10012B824()
{
  if (*(v0 + 216) == 1)
  {
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
    **(v0 + 88) = *(v0 + 192) != 0;

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = sub_10012D234(&qword_10083B210, &qword_10083B208, &unk_1006D9598);
    v4 = swift_task_alloc();
    *(v0 + 176) = v4;
    *v4 = v0;
    v4[1] = sub_10012B3E8;
    v5 = *(v0 + 136);

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 72, v5, v3);
  }
}

uint64_t sub_10012B970()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10012B9F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return _swift_task_switch(sub_10012BA14, 0, 0);
}

uint64_t sub_10012BA14()
{
  v1 = *sub_10000BA08((v0[3] + 32), *(v0[3] + 56));
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_10012BAC0;
  v4 = v0[4];
  v3 = v0[5];

  return sub_100507E88(v4, v3, v1);
}

uint64_t sub_10012BAC0(uint64_t a1)
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
    *(v4 + 56) = a1;

    return _swift_task_switch(sub_10012D28C, 0, 0);
  }
}

uint64_t sub_10012BC0C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[10] = a2;
  v6 = type metadata accessor for Logger();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v7 = swift_task_alloc();
  v8 = *a1;
  v4[15] = v7;
  v4[16] = v8;

  return _swift_task_switch(sub_10012BCD8, 0, 0);
}

uint64_t sub_10012BCD8()
{
  v1 = [*(v0 + 128) credentialState];
  v2 = 0;
  if (v1 <= 1)
  {
    if (!v1)
    {
      v4 = 0x3961636436363565;
      v15 = 0x8000000100700580;
      v16 = 0xE800000000000000;
      v5 = 0xD000000000000027;
LABEL_17:
      logMilestone(tag:description:)(*&v4, *&v5);
LABEL_18:
      v2 = 0;
      goto LABEL_19;
    }

    if (v1 == 1)
    {
      v3 = "ntial: Invalid document";
      v4 = 0x6132343336333437;
      v5 = 0xD00000000000002ALL;
LABEL_16:
      v15 = v3 | 0x8000000000000000;
      v16 = 0xE800000000000000;
      goto LABEL_17;
    }

    goto LABEL_19;
  }

  if (v1 == 3)
  {
    v3 = "deviceInformationProvider";
    v4 = 0x6236626235616361;
    v5 = 0xD000000000000029;
    goto LABEL_16;
  }

  if (v1 != 2)
  {
LABEL_19:

    v17 = *(v0 + 8);

    return v17(v2);
  }

  v6 = [*(v0 + 128) options];
  v7 = [v6 presentmentAuthPolicy];

  if (v7 == 2 && ![*(v0 + 128) hasUsablePresentmentAuthPolicy])
  {
    v3 = "match required region '";
    v4 = 0x3237336231333930;
    v5 = 0xD000000000000046;
    goto LABEL_16;
  }

  sub_10000BA08((*(v0 + 80) + 112), *(*(v0 + 80) + 136));
  if ((dispatch thunk of DeviceInformationProviding.isSimulator.getter() & 1) != 0 || (v8 = *(v0 + 88), v9 = v8[3], v11 = *v8, v10 = v8[1], *(v0 + 48) = v8[2], *(v0 + 64) = v9, *(v0 + 16) = v11, *(v0 + 32) = v10, !sub_10012CC14(v0 + 16)))
  {
    v18 = [*(v0 + 128) docType];
    if (!v18)
    {
LABEL_34:
      v36._countAndFlagsBits = 0xD000000000000026;
      v37._countAndFlagsBits = 0x3461313037376433;
      v36._object = 0x80000001007005E0;
      v37._object = 0xE800000000000000;
      logMilestone(tag:description:)(v37, v36);
      v2 = 1;
      goto LABEL_19;
    }

    v19 = *(v0 + 96);
    v20 = v18;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    if (!*(v19 + 16) || (v24 = sub_10003ADCC(v21, v23), (v25 & 1) == 0) || (*(*(v0 + 80) + 16) & 1) != 0)
    {
LABEL_33:

      goto LABEL_34;
    }

    v26 = (*(*(v0 + 96) + 56) + 16 * v24);
    v28 = *v26;
    v27 = v26[1];
    v29 = *(v0 + 128);

    v30 = [v29 region];
    if (v30)
    {
      v31 = v30;
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      if (v28 == v32 && v27 == v34)
      {

LABEL_32:

        goto LABEL_33;
      }

      v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v35)
      {
        goto LABEL_32;
      }
    }

    v38 = *(v0 + 128);
    _StringGuts.grow(_:)(134);
    v39._countAndFlagsBits = 0xD00000000000004ALL;
    v39._object = 0x8000000100700610;
    String.append(_:)(v39);
    v40._countAndFlagsBits = v21;
    v40._object = v23;
    String.append(_:)(v40);

    v41._countAndFlagsBits = 0x6572207361682027;
    v41._object = 0xEE0027206E6F6967;
    String.append(_:)(v41);
    v42 = [v38 region];
    if (v42)
    {
      v43 = v42;
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;
    }

    else
    {
      v46 = 0xE500000000000000;
      v44 = 0x3E6C696E3CLL;
    }

    v47._countAndFlagsBits = v44;
    v47._object = v46;
    String.append(_:)(v47);

    v48._object = 0x8000000100700660;
    v48._countAndFlagsBits = 0xD000000000000027;
    String.append(_:)(v48);
    v49._countAndFlagsBits = v28;
    v49._object = v27;
    String.append(_:)(v49);

    v50._countAndFlagsBits = 39;
    v50._object = 0xE100000000000000;
    String.append(_:)(v50);
    v51._countAndFlagsBits = 0;
    v52._countAndFlagsBits = 0x3132616432336230;
    v52._object = 0xE800000000000000;
    v51._object = 0xE000000000000000;
    logMilestone(tag:description:)(v52, v51);

    goto LABEL_18;
  }

  v12 = swift_task_alloc();
  *(v0 + 136) = v12;
  *v12 = v0;
  v12[1] = sub_10012C1F4;
  v13 = *(v0 + 128);

  return sub_10012C700(v13);
}

uint64_t sub_10012C1F4(char a1)
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
    *(v4 + 144) = a1 & 1;

    return _swift_task_switch(sub_10012C350, 0, 0);
  }
}

uint64_t sub_10012C350(uint64_t a1)
{
  if (*(v1 + 144) == 1)
  {
    defaultLogger()();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "DigitalPresentmentCredentialManager hasDocumentCredential: Biometrics are disabled for Apple Pay & Wallet and calling client is a 1st party biometrics disabled special case", v4, 2u);
    }

    v6 = *(v1 + 112);
    v5 = *(v1 + 120);
    v7 = *(v1 + 104);

    (*(v6 + 8))(v5, v7);
    goto LABEL_5;
  }

  v9 = [*(v1 + 128) docType];
  if (v9)
  {
    v10 = *(v1 + 96);
    v11 = v9;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    if (*(v10 + 16))
    {
      v15 = sub_10003ADCC(v12, v14);
      if ((v16 & 1) != 0 && (*(*(v1 + 80) + 16) & 1) == 0)
      {
        v17 = (*(*(v1 + 96) + 56) + 16 * v15);
        v19 = *v17;
        v18 = v17[1];
        v20 = *(v1 + 128);

        v21 = [v20 region];
        if (!v21)
        {
LABEL_16:
          v28 = *(v1 + 128);
          _StringGuts.grow(_:)(134);
          v29._countAndFlagsBits = 0xD00000000000004ALL;
          v29._object = 0x8000000100700610;
          String.append(_:)(v29);
          v30._countAndFlagsBits = v12;
          v30._object = v14;
          String.append(_:)(v30);

          v31._countAndFlagsBits = 0x6572207361682027;
          v31._object = 0xEE0027206E6F6967;
          String.append(_:)(v31);
          v32 = [v28 region];
          if (v32)
          {
            v33 = v32;
            v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v36 = v35;
          }

          else
          {
            v36 = 0xE500000000000000;
            v34 = 0x3E6C696E3CLL;
          }

          v41._countAndFlagsBits = v34;
          v41._object = v36;
          String.append(_:)(v41);

          v42._countAndFlagsBits = 0xD000000000000027;
          v42._object = 0x8000000100700660;
          String.append(_:)(v42);
          v43._countAndFlagsBits = v19;
          v43._object = v18;
          String.append(_:)(v43);

          v44._countAndFlagsBits = 39;
          v44._object = 0xE100000000000000;
          String.append(_:)(v44);
          v45._countAndFlagsBits = 0;
          v46._countAndFlagsBits = 0x3132616432336230;
          v46._object = 0xE800000000000000;
          v45._object = 0xE000000000000000;
          logMilestone(tag:description:)(v46, v45);

LABEL_5:
          v8 = 0;
          goto LABEL_22;
        }

        v22 = v21;
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;

        if (v19 == v23 && v18 == v25)
        {
        }

        else
        {
          v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v27 & 1) == 0)
          {
            goto LABEL_16;
          }
        }
      }
    }
  }

  v37._countAndFlagsBits = 0x3461313037376433;
  v38._object = 0x80000001007005E0;
  v37._object = 0xE800000000000000;
  v38._countAndFlagsBits = 0xD000000000000026;
  logMilestone(tag:description:)(v37, v38);
  v8 = 1;
LABEL_22:

  v39 = *(v1 + 8);

  return v39(v8);
}

uint64_t sub_10012C700(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return _swift_task_switch(sub_10012C720, 0, 0);
}

uint64_t sub_10012C720()
{
  v1 = [*(v0 + 96) options];
  v2 = [v1 presentmentAuthPolicy];

  if (v2 == 2)
  {
    v3 = *(v0 + 104);
    v4 = v3[12];
    v5 = v3[13];
    sub_10000BA08(v3 + 9, v4);
    v9 = (*(v5 + 8) + **(v5 + 8));
    v6 = swift_task_alloc();
    *(v0 + 112) = v6;
    *v6 = v0;
    v6[1] = sub_10012C8BC;

    return v9(v4, v5);
  }

  else
  {
    v8 = *(v0 + 8);

    return v8(0);
  }
}

uint64_t sub_10012C8BC(uint64_t a1)
{
  v3 = *v2;
  v3[15] = a1;
  v3[16] = v1;

  if (v1)
  {
    v4 = v3[1];

    return v4(0);
  }

  else
  {

    return _swift_task_switch(sub_10012C9F4, 0, 0);
  }
}

uint64_t sub_10012C9F4()
{
  v1 = v0[15];
  if (v1)
  {
    v2 = v0[16];
    type metadata accessor for SecAccessControl(0);
    v3 = [v1 aclData];
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7 = static SecAccessControlRef.fromData(_:)();
    sub_10000B90C(v4, v6);
    if (v2)
    {

      v8 = v0[1];
      v9 = 0;
      goto LABEL_7;
    }

    type metadata accessor for DigitalPresentmentLocalAuthenticationManager();
    inited = swift_initStackObject();
    *(inited + 64) = 4;
    *(inited + 72) = 0;
    v12 = objc_allocWithZone(LAContext);
    v13 = v7;
    v14 = [v12 init];
    *(inited + 40) = sub_10001F8D4(0, &qword_100834448, LAContext_ptr);
    *(inited + 48) = &off_100817910;
    *(inited + 16) = v14;
    *(inited + 56) = v13;
    LOBYTE(v14) = sub_1001425D8();

    swift_setDeallocating();
    sub_10000BB78((inited + 16));

    v10 = v14 ^ 1;
  }

  else
  {
    v10 = 0;
  }

  v8 = v0[1];
  v9 = v10 & 1;
LABEL_7:

  return v8(v9);
}

uint64_t sub_10012CBA0()
{

  sub_10000BB78(v0 + 4);
  sub_10000BB78(v0 + 9);
  sub_10000BB78(v0 + 14);

  return swift_deallocClassInstance();
}

BOOL sub_10012CC14(uint64_t a1)
{
  if (!*(a1 + 40) || (*(a1 + 32) & 1) == 0)
  {
    return 0;
  }

  v1 = *(a1 + 56);
  v2 = *(v1 + 16);
  v3 = (v1 + 40);
  v4 = v2 + 1;
  do
  {
    v5 = --v4 != 0;
    if (!v4)
    {
      break;
    }

    v6 = v3 + 2;
    v7 = *v3;
    v11[0] = *(v3 - 1);
    v11[1] = v7;
    __chkstk_darwin(a1);
    v10[2] = v11;

    v8 = sub_10035C8E4(sub_1000307C0, v10, &off_1007FB190);

    v3 = v6;
  }

  while ((v8 & 1) == 0);
  return v5;
}

uint64_t sub_10012CD14(void *a1, char a2, uint64_t a3)
{
  v3 = a1[2];
  if (*a1 == 1 || v3 == 0)
  {
    v23 = 0;
    memset(v22, 0, sizeof(v22));
    v20 = &type metadata for IDCredBiometricStore;
    v21 = &off_1008157A0;
    *&v19 = [objc_allocWithZone(DCBiometricStore) init];
    v17 = type metadata accessor for DeviceInformationProvider();
    v18 = &protocol witness table for DeviceInformationProvider;
    sub_100032DBC(&v16);
    DeviceInformationProvider.init()();
    type metadata accessor for DigitalPresentmentCredentialManager();
    v7 = swift_allocObject();
    *(v7 + 16) = a2 & 1;
    *(v7 + 24) = a3;
    sub_10000BBC4(v22, &v13, &qword_10083B1F0, &qword_1006D9570);
    v8 = v14;

    if (v8)
    {
      sub_10000BE18(v22, &qword_10083B1F0, &qword_1006D9570);
      sub_10001F358(&v13, v15);
      sub_10001F358(v15, v7 + 32);
    }

    else
    {
      sub_10000BE18(&v13, &qword_10083B1F0, &qword_1006D9570);
      *(v7 + 56) = &type metadata for IDCredCredentialStore;
      *(v7 + 64) = &off_100815A88;
      *(v7 + 32) = a3;

      sub_10000BE18(v22, &qword_10083B1F0, &qword_1006D9570);
    }

    sub_10001F358(&v19, v7 + 72);
    sub_10001F358(&v16, v7 + 112);
    return v7;
  }

  else
  {
    v9 = a1[3];

    v11 = v3(v10);
    sub_10001FE8C(v3, v9);
    return v11;
  }
}

uint64_t sub_10012CEDC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100041F04;

  return sub_10012A2F8(a1, a2, v7, v6);
}

uint64_t sub_10012CF90(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_100041F04;

  return sub_10012AF20(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_10012D05C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100041F04;

  return sub_10012B9F0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10012D124()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10012D16C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100027B9C;

  return sub_10012ACCC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10012D234(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000B870(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10012D294@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v5 = type metadata accessor for DIPError.Code();
  v97 = *(v5 - 8);
  v98 = v5;
  __chkstk_darwin(v5);
  v99 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SessionType();
  v93 = *(v7 - 8);
  __chkstk_darwin(v7);
  v92 = (&v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_100007224(&unk_100849BA0, &qword_1006D95F0);
  __chkstk_darwin(v9 - 8);
  v110 = &v91 - v10;
  v11 = type metadata accessor for DocumentRequest();
  v115 = *(v11 - 8);
  v116 = v11;
  v12 = __chkstk_darwin(v11);
  v105 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v96 = &v91 - v15;
  __chkstk_darwin(v14);
  v109 = &v91 - v16;
  v102 = sub_100007224(&qword_10083B228, &qword_1006D95F8);
  __chkstk_darwin(v102);
  *&v113 = &v91 - v17;
  v114 = type metadata accessor for Logger();
  v18 = *(v114 - 1);
  __chkstk_darwin(v114);
  v20 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = v1;
  v21 = *v1;

  defaultLogger()();

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();

  v24 = os_log_type_enabled(v22, v23);
  v106 = v21;
  v95 = a1;
  v94 = v7;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v117 = v26;
    *v25 = 136315138;
    type metadata accessor for ISO18013KnownDocTypes();
    sub_100007224(&qword_10083B240, &qword_1006D9668);
    sub_10012FA78(&qword_1008348B0, &type metadata accessor for ISO18013KnownDocTypes, &protocol conformance descriptor for ISO18013KnownDocTypes);
    v27 = Dictionary.Keys.description.getter();
    v29 = sub_100141FE4(v27, v28, &v117);

    *(v25 + 4) = v29;
    v3 = v2;
    _os_log_impl(&_mh_execute_header, v22, v23, "DigitalPresentmentCredentialRequestBuilder build documentTypes %s", v25, 0xCu);
    sub_10000BB78(v26);

    v21 = v106;
  }

  (*(v18 + 8))(v20, v114);
  v30 = *(v21 + 64);
  v101 = v21 + 64;
  v31 = 1 << *(v21 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & v30;
  v100 = (v31 + 63) >> 6;
  v114 = (v115 + 32);

  v35 = 0;
  v36 = _swiftEmptyArrayStorage;
  v37 = v113;
  while (1)
  {
    v108 = v36;
    if (!v33)
    {
      while (1)
      {
        v38 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          __break(1u);
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

        if (v38 >= v100)
        {
          break;
        }

        v33 = *(v101 + 8 * v38);
        ++v35;
        if (v33)
        {
          v35 = v38;
          goto LABEL_11;
        }
      }

      v64 = *(v108 + 2);
      if (v64)
      {
        result = swift_getKeyPath();
        v65 = 0;
        v66 = v96;
        while (v64 != v65)
        {
          if (v65 >= *(v108 + 2))
          {
            goto LABEL_52;
          }

          v68 = v115;
          v67 = v116;
          (*(v115 + 16))(v66, &v108[((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v115 + 72) * v65++], v116);
          swift_getAtKeyPath();
          result = (*(v68 + 8))(v66, v67);
          if (v117 == 1)
          {

            goto LABEL_43;
          }
        }

        v71._countAndFlagsBits = 0xD000000000000044;
        v72._countAndFlagsBits = 0x3936626464613939;
        v71._object = 0x8000000100700770;
        v72._object = 0xE800000000000000;
        logMilestone(tag:description:)(v72, v71);
        sub_100007224(&qword_10083B230, &qword_1006D9658);
        v73 = *(type metadata accessor for CredentialPresentmentRequest.UseCase() - 8);
        v74 = (*(v73 + 80) + 32) & ~*(v73 + 80);
        v75 = swift_allocObject();
        v113 = xmmword_1006BF520;
        *(v75 + 16) = xmmword_1006BF520;
        v76 = *(v108 + 2);
        if (v76)
        {
          v107 = v74;
          v109 = v75;
          v110 = v3;
          v117 = _swiftEmptyArrayStorage;
          v77 = v108;
          sub_100172E50(0, v76, 0);
          v78 = v117;
          v111 = *(v115 + 80);
          v79 = (v111 + 32) & ~v111;
          v80 = v77 + v79;
          v81 = *(v115 + 72);
          v115 = *(v115 + 16);
          do
          {
            v82 = v105;
            v83 = v116;
            (v115)(v105, v80, v116);
            sub_100007224(&qword_10083B238, &qword_1006D9660);
            v84 = swift_allocObject();
            *(v84 + 16) = v113;
            (*v114)(v84 + v79, v82, v83);
            v117 = v78;
            v86 = v78[2];
            v85 = v78[3];
            if (v86 >= v85 >> 1)
            {
              sub_100172E50((v85 > 1), v86 + 1, 1);
              v78 = v117;
            }

            v78[2] = v86 + 1;
            v78[v86 + 4] = v84;
            v80 += v81;
            --v76;
          }

          while (v76);
        }

        CredentialPresentmentRequest.UseCase.init(documentRequests:isMandatory:)();
        v87 = v112[4];
        v88 = v92;
        *v92 = v112[3];
        v88[1] = v87;
        (*(v93 + 104))(v88, enum case for SessionType.digital(_:), v94);

        CredentialPresentmentRequest.init(useCases:sessionType:)();
      }

      else
      {
LABEL_43:

        v69._countAndFlagsBits = 0x3837316334333736;
        v70._object = 0x80000001007006E0;
        v69._object = 0xE800000000000000;
        v70._countAndFlagsBits = 0xD000000000000045;
        logMilestone(tag:description:)(v69, v70);
        (*(v97 + 104))(v99, enum case for DIPError.Code.digitalPresentmentNoElementsRequested(_:), v98);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_10012FA78(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        v90 = 58;
        v89[0] = 0x2928646C697562;
        v89[1] = 0xE700000000000000;
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
      }
    }

LABEL_11:
    v103 = v35;
    v104 = v33;
    v39 = __clz(__rbit64(v33)) | (v35 << 6);
    v40 = *(v21 + 48);
    v41 = type metadata accessor for ISO18013KnownDocTypes();
    (*(*(v41 - 8) + 16))(v37, v40 + *(*(v41 - 8) + 72) * v39, v41);
    v42 = *(*(v21 + 56) + 8 * v39);
    *(v37 + *(v102 + 48)) = v42;
    v43 = *(v42 + 16);
    if (v43)
    {
      v117 = _swiftEmptyArrayStorage;

      sub_100172E90(0, v43, 0);
      v44 = v117;
      v45 = type metadata accessor for DigitalPresentmentIdentityElementsWithRegion(0);
      v107 = v45;
      v46 = v42 + ((*(*(v45 - 8) + 80) + 32) & ~*(*(v45 - 8) + 80));
      v111 = *(*(v45 - 8) + 72);
      v47 = v3;
      while (1)
      {
        __chkstk_darwin(v45);
        v90 = v37;
        sub_1000FB094(&_swiftEmptyDictionarySingleton, sub_10012F994, v89, v48);
        if (v47)
        {
          goto LABEL_36;
        }

        ISO18013KnownDocTypes.rawValue.getter();
        if (*(v112 + *(type metadata accessor for DigitalPresentmentCredentialRequestBuilder(0) + 20)))
        {
          v49 = type metadata accessor for Locale.Region();
          (*(*(v49 - 8) + 56))(v110, 1, 1, v49);
        }

        else
        {
          sub_10000BBC4(v46 + *(v107 + 20), v110, &unk_100849BA0, &qword_1006D95F0);
        }

        sub_100428E60(_swiftEmptyArrayStorage);
        v50 = v109;
        DocumentRequest.init(alternativeElements:docType:issuerIdentifiers:regionCode:namespaces:)();
        v117 = v44;
        v52 = v44[2];
        v51 = v44[3];
        if (v52 >= v51 >> 1)
        {
          sub_100172E90((v51 > 1), v52 + 1, 1);
          v44 = v117;
        }

        v44[2] = v52 + 1;
        v45 = (*(v115 + 32))(v44 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v52, v50, v116);
        v46 += v111;
        --v43;
        v47 = 0;
        v37 = v113;
        if (!v43)
        {
          v3 = 0;
          goto LABEL_22;
        }
      }
    }

    v44 = _swiftEmptyArrayStorage;
LABEL_22:
    sub_10000BE18(v37, &qword_10083B228, &qword_1006D95F8);
    v53 = v44[2];
    result = v108;
    v54 = *(v108 + 2);
    v55 = v54 + v53;
    v56 = v104;
    if (__OFADD__(v54, v53))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v57 = v108;
    if ((result & 1) == 0 || v55 > *(v108 + 3) >> 1)
    {
      if (v54 <= v55)
      {
        v58 = v54 + v53;
      }

      else
      {
        v58 = v54;
      }

      result = sub_1003C5878(result, v58, 1, v108);
      v57 = result;
    }

    v33 = (v56 - 1) & v56;
    if (v44[2])
    {
      if ((*(v57 + 3) >> 1) - *(v57 + 2) < v53)
      {
        goto LABEL_54;
      }

      v59 = v57;
      swift_arrayInitWithCopy();

      v36 = v59;
      v21 = v106;
      v35 = v103;
      if (v53)
      {
        v60 = *(v59 + 2);
        v61 = __OFADD__(v60, v53);
        v62 = v60 + v53;
        if (v61)
        {
          goto LABEL_55;
        }

        *(v59 + 2) = v62;
      }
    }

    else
    {
      v63 = v57;

      v36 = v63;
      v21 = v106;
      v35 = v103;
      if (v53)
      {
        __break(1u);
LABEL_36:

        sub_10000BE18(v37, &qword_10083B228, &qword_1006D95F8);
      }
    }
  }

LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

uint64_t sub_10012E084(void *a1, void (**a2)(char *, char *, uint64_t), uint64_t a3)
{
  v247 = a1;
  v245 = a2;
  v246 = a3;
  v235 = type metadata accessor for CredentialPresentmentElementRequestInfo.IntentToStore();
  v244 = *(v235 - 8);
  __chkstk_darwin(v235);
  v234 = (&v194 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_100007224(&qword_10083B248, &unk_1006D9670);
  v5 = __chkstk_darwin(v4 - 8);
  v208 = &v194 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v227 = &v194 - v8;
  v9 = __chkstk_darwin(v7);
  v242 = &v194 - v10;
  __chkstk_darwin(v9);
  v225 = &v194 - v11;
  v249 = type metadata accessor for CredentialPresentmentElementRequestInfo();
  v236 = *(v249 - 8);
  v12 = __chkstk_darwin(v249);
  v219 = &v194 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v226 = &v194 - v15;
  v16 = __chkstk_darwin(v14);
  v229 = &v194 - v17;
  v18 = __chkstk_darwin(v16);
  v213 = &v194 - v19;
  v20 = __chkstk_darwin(v18);
  v212 = &v194 - v21;
  v22 = __chkstk_darwin(v20);
  v233 = &v194 - v23;
  __chkstk_darwin(v22);
  v239 = &v194 - v24;
  v25 = sub_100007224(&qword_10083A5E8, &qword_1006D8FF0);
  v26 = v25 - 8;
  __chkstk_darwin(v25);
  v28 = &v194 - v27;
  v29 = type metadata accessor for IdentityIntentToStore();
  v30 = *(v29 - 8);
  v31 = __chkstk_darwin(v29);
  v228 = &v194 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v35 = &v194 - v34;
  __chkstk_darwin(v33);
  v37 = &v194 - v36;
  v38 = type metadata accessor for IdentityElement();
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v41 = &v194 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v42;
  sub_10000BBC4(v245, v28, &qword_10083A5E8, &qword_1006D8FF0);
  v44 = *(v26 + 56);
  v243 = v39;
  (*(v39 + 32))(v41, v28, v43);
  (*(v30 + 32))(v37, &v28[v44], v29);
  v45 = v248;
  v46 = sub_10012F5F8();
  if (v45)
  {
    (*(v30 + 8))(v37, v29);
    return (*(v243 + 8))(v41, v43);
  }

  else
  {
    v199 = 0;
    v205 = v35;
    v231 = v37;
    v200 = v43;
    v232 = v29;
    v48 = v46(v41);

    v218 = 0;
    v238 = 0;
    v49 = 0;
    v50 = v48 + 64;
    v51 = 1 << *(v48 + 32);
    v52 = -1;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    v53 = v52 & *(v48 + 64);
    v54 = (v51 + 63) >> 6;
    v204 = v236 + 16;
    v245 = (v236 + 32);
    v224 = (v30 + 16);
    v223 = (v30 + 88);
    v222 = enum case for IdentityIntentToStore.mayStoreForDays(_:);
    v207 = enum case for IdentityIntentToStore.willNotStore(_:);
    v202 = enum case for IdentityIntentToStore.mayStore(_:);
    v55 = (v30 + 8);
    v210 = enum case for CredentialPresentmentElementRequestInfo.IntentToStore.mayStore(_:);
    v221 = (v244 + 104);
    v211 = enum case for CredentialPresentmentElementRequestInfo.IntentToStore.willNotStore(_:);
    v206 = (v30 + 96);
    v209 = (v236 + 8);
    v237 = (v236 + 56);
    v220 = (v236 + 48);
    v201 = (v236 + 40);
    v56 = v249;
    v57 = v239;
    v58 = v243;
    if (v53)
    {
LABEL_6:
      while (1)
      {
        v59 = __clz(__rbit64(v53));
        v53 &= v53 - 1;
        v60 = v59 | (v49 << 6);
        v61 = *(*(v48 + 56) + 8 * v60);
        v62 = *(v61 + 16);
        if (v62)
        {
          break;
        }

        if (!v53)
        {
          goto LABEL_8;
        }
      }

      v197 = v55;
      v194 = v54;
      v195 = v50;
      v196 = v48;
      v64 = (*(v48 + 48) + 16 * v60);
      v65 = v64[1];
      v246 = *v64;
      v217 = v65;

      v66 = 0;
      v67 = (v61 + 40);
      v216 = v41;
      v215 = v61;
      v214 = v62;
      while (v66 < *(v61 + 16))
      {
        v240 = v67;
        v241 = v66;
        v70 = *v67;
        v248 = *(v67 - 1);
        v71 = *v247;
        v72 = *(*v247 + 16);

        if (v72)
        {
          v73 = v217;
          v74 = sub_10003ADCC(v246, v217);
          v76 = v232;
          v75 = v233;
          if (v77)
          {
            v78 = *(*(v71 + 56) + 8 * v74);
          }

          else
          {
            v78 = &_swiftEmptyDictionarySingleton;
          }
        }

        else
        {
          v78 = &_swiftEmptyDictionarySingleton;
          v76 = v232;
          v75 = v233;
          v73 = v217;
        }

        v79 = v78[2];
        v244 = v70;
        if (v79 && (v80 = sub_10003ADCC(v248, v70), (v81 & 1) != 0))
        {
          v82 = v78[7];
          v83 = v236;
          v203 = *(v236 + 72);
          (*(v236 + 16))(v75, v82 + v203 * v80, v56);

          v230 = *(v83 + 32);
          v230(v57, v75, v56);
          v84 = v205;
          (*v224)(v205, v231, v76);
          v85 = (*v223)(v84, v76);
          if (v85 == v222)
          {
            (*v206)(v84, v76);
            v86 = *v84;
            v87 = v234;
            *v234 = v86;
            v88 = v210;
            v89 = v213;
            v90 = v218;
          }

          else
          {
            v88 = v211;
            v87 = v234;
            v89 = v213;
            v90 = v218;
            if (v85 != v207)
            {
              if (v85 == v202)
              {
                *v234 = 0;
                v98 = &v243;
              }

              else
              {
                (*v197)(v205, v76);
                v98 = &v243 + 4;
              }

              v88 = *(v98 - 64);
            }
          }

          (*v221)(v87, v88, v235);
          CredentialPresentmentElementRequestInfo.init(intentToStore:)();
          v143 = v212;
          v230(v212, v89, v56);
          v144 = v225;
          CredentialPresentmentElementRequestInfo.merging(_:)();
          v218 = *v209;
          (v218)(v143, v56);
          v198 = *v237;
          v198(v144, 0, 1, v56);
          sub_10001FE8C(v90, 0);
          v145 = v247;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v250 = *v145;
          v147 = v250;
          v149 = sub_10003ADCC(v246, v73);
          v150 = v147[2];
          v151 = (v148 & 1) == 0;
          v152 = v150 + v151;
          if (__OFADD__(v150, v151))
          {
            goto LABEL_99;
          }

          v153 = v148;
          if (v147[3] >= v152)
          {
            v156 = v244;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_100170B38();
              v147 = v250;
            }
          }

          else
          {
            sub_1001684A0(v152, isUniquelyReferenced_nonNull_native);
            v147 = v250;
            v154 = sub_10003ADCC(v246, v73);
            v156 = v244;
            if ((v153 & 1) != (v155 & 1))
            {
              goto LABEL_104;
            }

            v149 = v154;
          }

          v157 = v219;
          *v145 = v147;
          if ((v153 & 1) == 0)
          {
            v158 = sub_10003EBD8(_swiftEmptyArrayStorage);
            v147[(v149 >> 6) + 8] |= 1 << v149;
            v159 = (v147[6] + 16 * v149);
            *v159 = v246;
            v159[1] = v73;
            *(v147[7] + 8 * v149) = v158;
            v160 = v147[2];
            v115 = __OFADD__(v160, 1);
            v161 = v160 + 1;
            if (v115)
            {
              goto LABEL_101;
            }

            v147[2] = v161;
          }

          v162 = v147[7];
          v163 = v225;
          v164 = v249;
          if ((*v220)(v225, 1, v249) == 1)
          {
            sub_10000BE18(v163, &qword_10083B248, &unk_1006D9670);
            v165 = sub_10003ADCC(v248, v156);
            v167 = v166;

            if (v167)
            {
              v168 = swift_isUniquelyReferenced_nonNull_native();
              v169 = *(v162 + 8 * v149);
              v250 = v169;
              *(v162 + 8 * v149) = 0x8000000000000000;
              if (!v168)
              {
                sub_100170B10();
                v169 = v250;
              }

              v170 = v208;
              v171 = v249;
              v230(v208, (*(v169 + 56) + v165 * v203), v249);
              sub_100150520(v165, v169);
              *(v162 + 8 * v149) = v169;
              v56 = v171;

              v57 = v239;
              (v218)(v239, v56);

              v172 = 0;
            }

            else
            {
              v57 = v239;
              v56 = v249;
              (v218)(v239, v249);
              v172 = 1;
              v170 = v208;
            }

            v198(v170, v172, 1, v56);
            sub_10000BE18(v170, &qword_10083B248, &unk_1006D9670);
            v218 = sub_10012FCE0;
          }

          else
          {
            v230(v157, v163, v164);
            v173 = swift_isUniquelyReferenced_nonNull_native();
            v250 = *(v162 + 8 * v149);
            v174 = v250;
            *(v162 + 8 * v149) = 0x8000000000000000;
            v175 = sub_10003ADCC(v248, v156);
            v177 = v174[2];
            v178 = (v176 & 1) == 0;
            v115 = __OFADD__(v177, v178);
            v179 = v177 + v178;
            if (v115)
            {
              goto LABEL_102;
            }

            v180 = v176;
            if (v174[3] >= v179)
            {
              if ((v173 & 1) == 0)
              {
                v193 = v175;
                sub_100170B10();
                v175 = v193;
              }
            }

            else
            {
              sub_100168478(v179, v173);
              v175 = sub_10003ADCC(v248, v156);
              if ((v180 & 1) != (v181 & 1))
              {
                goto LABEL_104;
              }
            }

            v182 = v219;
            if (v180)
            {
              v183 = v175;

              v184 = v250;
              v185 = v250[7] + v183 * v203;
              v186 = v249;
              (*v201)(v185, v182, v249);
            }

            else
            {
              v184 = v250;
              v250[(v175 >> 6) + 8] |= 1 << v175;
              v187 = (v184[6] + 16 * v175);
              v188 = v249;
              *v187 = v248;
              v187[1] = v156;
              v230((v184[7] + v175 * v203), v182, v188);
              v189 = v184[2];
              v115 = __OFADD__(v189, 1);
              v190 = v189 + 1;
              if (v115)
              {
                goto LABEL_103;
              }

              v184[2] = v190;
              v186 = v249;
            }

            v191 = v218;
            *(v162 + 8 * v149) = v184;

            v57 = v239;
            (v191)(v239, v186);
            v218 = sub_10012FCE0;
            v56 = v186;
          }
        }

        else
        {

          v91 = v228;
          (*v224)(v228, v231, v76);
          v92 = (*v223)(v91, v76);
          if (v92 == v222)
          {
            (*v206)(v91, v76);
            v93 = v234;
            *v234 = *v91;
            v94 = v210;
            v95 = v229;
            v96 = v247;
          }

          else
          {
            v94 = v211;
            v93 = v234;
            v95 = v229;
            v96 = v247;
            if (v92 != v207)
            {
              if (v92 == v202)
              {
                *v234 = 0;
                v97 = &v243;
              }

              else
              {
                (*v197)(v91, v76);
                v97 = &v243 + 4;
              }

              v94 = *(v97 - 64);
            }
          }

          (*v221)(v93, v94, v235);
          CredentialPresentmentElementRequestInfo.init(intentToStore:)();
          v99 = v242;
          v230 = *v245;
          v230(v242, v95, v56);
          v100 = *v237;
          (*v237)(v99, 0, 1, v56);
          sub_10001FE8C(v238, 0);
          v101 = swift_isUniquelyReferenced_nonNull_native();
          v250 = *v96;
          v102 = v250;
          v104 = sub_10003ADCC(v246, v73);
          v105 = v102[2];
          v106 = (v103 & 1) == 0;
          v107 = v105 + v106;
          if (__OFADD__(v105, v106))
          {
            goto LABEL_96;
          }

          v108 = v103;
          if (v102[3] >= v107)
          {
            if ((v101 & 1) == 0)
            {
              sub_100170B38();
              v102 = v250;
            }
          }

          else
          {
            sub_1001684A0(v107, v101);
            v102 = v250;
            v109 = sub_10003ADCC(v246, v73);
            if ((v108 & 1) != (v110 & 1))
            {
              goto LABEL_104;
            }

            v104 = v109;
          }

          v111 = v227;
          *v96 = v102;
          if ((v108 & 1) == 0)
          {
            v112 = sub_10003EBD8(_swiftEmptyArrayStorage);
            v102[(v104 >> 6) + 8] |= 1 << v104;
            v113 = (v102[6] + 16 * v104);
            *v113 = v246;
            v113[1] = v73;
            *(v102[7] + 8 * v104) = v112;
            v114 = v102[2];
            v115 = __OFADD__(v114, 1);
            v116 = v114 + 1;
            if (v115)
            {
              goto LABEL_97;
            }

            v102[2] = v116;
          }

          v117 = v102[7];
          v118 = v242;
          v119 = v249;
          if ((*v220)(v242, 1, v249) == 1)
          {
            sub_10000BE18(v118, &qword_10083B248, &unk_1006D9670);
            v120 = sub_10003ADCC(v248, v244);
            v122 = v121;

            if (v122)
            {
              v123 = swift_isUniquelyReferenced_nonNull_native();
              v124 = *(v117 + 8 * v104);
              v250 = v124;
              *(v117 + 8 * v104) = 0x8000000000000000;
              if (!v123)
              {
                sub_100170B10();
                v124 = v250;
              }

              v69 = v249;
              v230(v111, (*(v124 + 56) + *(v236 + 72) * v120), v249);
              sub_100150520(v120, v124);
              *(v117 + 8 * v104) = v124;

              v68 = 0;
            }

            else
            {
              v68 = 1;
              v69 = v249;
            }

            v100(v111, v68, 1, v69);
            sub_10000BE18(v111, &qword_10083B248, &unk_1006D9670);
            v238 = sub_10012FCE0;
            v56 = v69;
          }

          else
          {
            v230(v226, v118, v119);
            v125 = swift_isUniquelyReferenced_nonNull_native();
            v250 = *(v117 + 8 * v104);
            v126 = v250;
            *(v117 + 8 * v104) = 0x8000000000000000;
            v127 = v244;
            v128 = sub_10003ADCC(v248, v244);
            v130 = v126[2];
            v131 = (v129 & 1) == 0;
            v115 = __OFADD__(v130, v131);
            v132 = v130 + v131;
            if (v115)
            {
              goto LABEL_98;
            }

            v133 = v129;
            if (v126[3] >= v132)
            {
              if ((v125 & 1) == 0)
              {
                v192 = v128;
                sub_100170B10();
                v128 = v192;
              }
            }

            else
            {
              sub_100168478(v132, v125);
              v128 = sub_10003ADCC(v248, v127);
              if ((v133 & 1) != (v134 & 1))
              {
                goto LABEL_104;
              }
            }

            v135 = v226;
            if (v133)
            {
              v136 = v128;

              v137 = v250;
              (*(v236 + 40))(v250[7] + *(v236 + 72) * v136, v135, v249);
            }

            else
            {
              v137 = v250;
              v250[(v128 >> 6) + 8] |= 1 << v128;
              v138 = (v137[6] + 16 * v128);
              v139 = v249;
              v140 = v244;
              *v138 = v248;
              v138[1] = v140;
              v230((v137[7] + *(v236 + 72) * v128), v135, v139);
              v141 = v137[2];
              v115 = __OFADD__(v141, 1);
              v142 = v141 + 1;
              if (v115)
              {
                goto LABEL_100;
              }

              v137[2] = v142;
            }

            *(v117 + 8 * v104) = v137;

            v238 = sub_10012FCE0;
            v56 = v249;
          }

          v57 = v239;
        }

        v58 = v243;
        v41 = v216;
        v61 = v215;
        v66 = v241 + 1;
        v67 = v240 + 2;
        if (v214 == v241 + 1)
        {

          v48 = v196;
          v50 = v195;
          v54 = v194;
          v55 = v197;
          if (!v53)
          {
            goto LABEL_8;
          }

          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_8:
      while (1)
      {
        v63 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          break;
        }

        if (v63 >= v54)
        {
          (*v55)(v231, v232);
          (*(v58 + 8))(v41, v200);

          sub_10001FE8C(v218, 0);
          return sub_10001FE8C(v238, 0);
        }

        v53 = *(v50 + 8 * v63);
        ++v49;
        if (v53)
        {
          v49 = v63;
          goto LABEL_6;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}