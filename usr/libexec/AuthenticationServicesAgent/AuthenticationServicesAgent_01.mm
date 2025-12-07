uint64_t sub_100019954(uint64_t a1, unint64_t a2, void *a3)
{
  Assertion = type metadata accessor for ASCTAPAuthenticatorGetAssertionCommand.CodingKeys();
  v7 = *(Assertion - 8);
  __chkstk_darwin(Assertion);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a3 extensions];
  v11 = dispatch thunk of ASCPublicKeyCredentialAssertionExtensionInputs.hasAtLeastOneExtension.getter();

  if (v11)
  {
    v12 = [a3 extensions];
    v13 = dispatch thunk of ASCPublicKeyCredentialAssertionExtensionInputs.cborForHybrid()();
    v15 = v14;

    if (v15 >> 60 != 15)
    {
      (*(v7 + 104))(v9, enum case for ASCTAPAuthenticatorGetAssertionCommand.CodingKeys.extensions(_:), Assertion);
      v20 = ASCTAPAuthenticatorGetAssertionCommand.CodingKeys.rawValue.getter();
      (*(v7 + 8))(v9, Assertion);
      a1 = sub_100019478(a1, a2, v13, v15, v20);
      sub_10000B9A8(v13, v15);
      return a1;
    }

    if (qword_1000357F0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000BC18(v16, qword_100036040);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Could not encode extensions", v19, 2u);
    }
  }

  sub_10000B9BC(a1, a2);
  return a1;
}

uint64_t sub_100019BBC(uint64_t a1, unint64_t a2, void *a3)
{
  Credential = type metadata accessor for ASCTAPAuthenticatorMakeCredentialCommand.CodingKeys();
  v7 = *(Credential - 8);
  __chkstk_darwin(Credential);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a3 extensions];
  v11 = dispatch thunk of ASCPublicKeyCredentialRegistrationExtensionInputs.hasAtLeastOneExtension.getter();

  if (v11)
  {
    v12 = [a3 extensions];
    v13 = dispatch thunk of ASCPublicKeyCredentialRegistrationExtensionInputs.cborForHybrid()();
    v15 = v14;

    if (v15 >> 60 != 15)
    {
      (*(v7 + 104))(v9, enum case for ASCTAPAuthenticatorMakeCredentialCommand.CodingKeys.extensions(_:), Credential);
      v20 = ASCTAPAuthenticatorMakeCredentialCommand.CodingKeys.rawValue.getter();
      (*(v7 + 8))(v9, Credential);
      a1 = sub_100019478(a1, a2, v13, v15, v20);
      sub_10000B9A8(v13, v15);
      return a1;
    }

    if (qword_1000357F0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000BC18(v16, qword_100036040);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Could not encode extensions", v19, 2u);
    }
  }

  sub_10000B9BC(a1, a2);
  return a1;
}

uint64_t sub_100019E24(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_100019EDC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_100019F58(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_100019FDC(uint64_t a1)
{
  v9 = sub_10000D1D4(&qword_100035BB0, &qword_100025568);
  v10 = sub_10001F9F8(&qword_100035BB8, &qword_100035BB0, &qword_100025568, &protocol conformance descriptor for <A> [A]);
  v8[0] = a1;
  v2 = sub_10001F664(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_100016014(v3, &v3[v4], &v7);
  v5 = v7;
  sub_10001F5C4(v8);
  return v5;
}

uint64_t sub_10001A0B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  sub_10000D1D4(&qword_100035BA0, &qword_100025558);
  v3[13] = swift_task_alloc();
  sub_10000D1D4(&qword_100035B18, &qword_1000254F0);
  v3[14] = swift_task_alloc();
  v4 = type metadata accessor for ASCTAPAuthData.Flags();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v5 = type metadata accessor for SHA256();
  v3[18] = v5;
  v3[19] = *(v5 - 8);
  v3[20] = swift_task_alloc();
  v6 = type metadata accessor for String.Encoding();
  v3[21] = v6;
  v3[22] = *(v6 - 8);
  v3[23] = swift_task_alloc();
  v7 = type metadata accessor for SHA256Digest();
  v3[24] = v7;
  v3[25] = *(v7 - 8);
  v3[26] = swift_task_alloc();
  v8 = type metadata accessor for ASCTAPAuthData();
  v3[27] = v8;
  v3[28] = *(v8 - 8);
  v3[29] = swift_task_alloc();
  CredentialResponse = type metadata accessor for ASCTAPAuthenticatorMakeCredentialResponse();
  v3[30] = CredentialResponse;
  v3[31] = *(CredentialResponse - 8);
  v3[32] = swift_task_alloc();
  sub_10000D1D4(&qword_100035BA8, &qword_100025560);
  v3[33] = swift_task_alloc();
  v10 = type metadata accessor for COSEKey();
  v3[34] = v10;
  v3[35] = *(v10 - 8);
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v11 = type metadata accessor for WBSKeychainPasskey();
  v3[38] = v11;
  v3[39] = *(v11 - 8);
  v3[40] = swift_task_alloc();

  return _swift_task_switch(sub_10001A4B4, 0, 0);
}

uint64_t sub_10001A4B4()
{
  v1 = [*(v0 + 80) authenticatorSelection];
  if (v1)
  {
    v4 = v1;
    v5 = [v1 authenticatorAttachment];

    if (v5 != 1)
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    if (qword_100035800 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 80);
    *(v0 + 328) = qword_100036070;
    v7 = [v6 relyingParty];
    v8 = [v7 identifier];

    if (v8)
    {
      v9 = *(v0 + 80);
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      *(v0 + 336) = v10;
      *(v0 + 344) = v12;
      v13 = [v9 user];
      v14 = [v13 name];

      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      *(v0 + 352) = v15;
      *(v0 + 360) = v17;
      v18 = [v9 user];
      v19 = [v18 displayName];

      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      *(v0 + 368) = v20;
      *(v0 + 376) = v22;
      v23 = [v9 user];
      v24 = [v23 identifier];

      v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      *(v0 + 384) = v25;
      *(v0 + 392) = v27;
      *(v0 + 400) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v0 + 408) = v28;
      *(v0 + 416) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v0 + 424) = v29;
      type metadata accessor for WBSPasskeyStore();
      sub_100018E68(&qword_100035A80, &type metadata accessor for WBSPasskeyStore, &protocol conformance descriptor for WBSPasskeyStore);
      v30 = dispatch thunk of Actor.unownedExecutor.getter();
      v3 = v31;
      *(v0 + 432) = v30;
      *(v0 + 440) = v31;
      v1 = sub_10001A80C;
      v2 = v30;

      return _swift_task_switch(v1, v2, v3);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_10001A80C()
{
  WBSPasskeyStore.test_createPasskey(for:username:displayName:userHandle:groupID:inRecentlyDeleted:asLegacyCredential:unsafeAllowRealKeychainAccess:keyClass:)();
  v0[56] = 0;
  v2 = v0[48];
  v1 = v0[49];

  sub_10000B954(v2, v1);

  v3 = v0[54];
  v4 = v0[55];

  return _swift_task_switch(sub_10001A920, v3, v4);
}

uint64_t sub_10001A920()
{
  v1 = v0[56];
  v2 = WBSPasskeyStore.test_publicKey(for:)();
  v0[57] = v1;
  v0[58] = v2;
  v0[59] = v3;
  if (v1)
  {
    v4 = sub_10001B418;
  }

  else
  {
    v4 = sub_10001A9B0;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_10001A9B0()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];
  Data._Representation.subscript.getter();
  Data._Representation.subscript.getter();
  COSEKey.init(ec2CurveIdentifier:x:y:d:algorithm:keyOperations:keyIdentifier:)();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = v0[10];
  (*(v0[35] + 32))(v0[37], v0[33], v0[34]);
  v5 = [v4 relyingParty];
  v6 = [v5 identifier];

  if (!v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = v6;
  v9 = v0[22];
  v8 = v0[23];
  v10 = v0[21];
  v63 = v7;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String.Encoding.utf8.getter();
  v11 = String.data(using:allowLossyConversion:)();
  v13 = v12;
  (*(v9 + 8))(v8, v10);
  if (v13 >> 60 == 15)
  {
LABEL_12:

    __break(1u);
    goto LABEL_13;
  }

  v59 = v0[37];
  v57 = v0[36];
  v53 = v0[35];
  v58 = v0[34];
  v60 = v0[29];
  v61 = v0[28];
  v14 = v0[26];
  v62 = v0[27];
  v48 = v0[24];
  v50 = v0[25];
  v15 = v0[19];
  v16 = v0[20];
  v17 = v0[18];
  v55 = v0[14];
  sub_100018E68(&qword_100035B38, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  dispatch thunk of HashFunction.init()();
  sub_10000B9BC(v11, v13);
  sub_100017DC4(v11, v13, v16);
  sub_10000B9A8(v11, v13);
  dispatch thunk of HashFunction.finalize()();
  sub_10000B9A8(v11, v13);
  (*(v15 + 8))(v16, v17);
  v0[5] = v48;
  v0[6] = sub_100018E68(&qword_100035B40, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
  v18 = sub_10001F560(v0 + 2);
  (*(v50 + 16))(v18, v14, v48);
  sub_10001F664(v0 + 2, v0[5]);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  (*(v50 + 8))(v14, v48);
  sub_10001F5C4(v0 + 2);
  sub_10000D1D4(&qword_100035B48, &qword_100025508);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100025380;
  static ASCTAPAuthData.Flags.userPresent.getter();
  static ASCTAPAuthData.Flags.userVerified.getter();
  static ASCTAPAuthData.Flags.backupState.getter();
  static ASCTAPAuthData.Flags.backupEligible.getter();
  static ASCTAPAuthData.Flags.attestedCredentialDataPresent.getter();
  v0[9] = v19;
  sub_100018E68(&qword_100035B50, &type metadata accessor for ASCTAPAuthData.Flags, &protocol conformance descriptor for ASCTAPAuthData.Flags);
  sub_10000D1D4(&qword_100035B58, &qword_100025510);
  sub_10001F9F8(&qword_100035B60, &qword_100035B58, &qword_100025510, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  v20[2] = 16;
  v20[4] = 0;
  v20[5] = 0;
  sub_100019FDC(v20);

  WBSKeychainPasskey.credentialID.getter();
  (*(v53 + 16))(v57, v59, v58);
  Data.init(coseKey:)();
  ASCTAPCredentialData.init(aaguid:credentialID:credentialPublicKey:)();
  v21 = type metadata accessor for ASCTAPCredentialData();
  (*(*(v21 - 8) + 56))(v55, 0, 1, v21);
  ASCTAPAuthData.init(rpIDHash:flags:counter:attestedCredentialData:extensions:)();
  ASCTAPAuthData.test_webAuthnEncoded()();
  (*(v61 + 8))(v60, v62);
  Data.init(hexString:)();
  if (v22 >> 60 == 15)
  {
LABEL_13:

    __break(1u);
    return;
  }

  v23 = v0[13];

  v24 = type metadata accessor for ASCTAPExtensionOutput();
  (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
  ASCTAPAuthenticatorMakeCredentialResponse.init(attestationFormat:authData:attestationStatement:unsignedExtensionOutputs:)();
  Credential = ASCTAPAuthenticatorMakeCredentialResponse.attestationObjectEncoded()();
  v64 = v26;
  v27 = WBSKeychainPasskey.credentialID.getter();
  v54 = v28;
  v56 = v27;
  isa = [objc_opt_self() _defaultTransports];
  if (!isa)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v43 = v0[58];
  v44 = v0[59];
  v51 = v0[38];
  v52 = v0[40];
  v47 = v0[37];
  v49 = v0[39];
  v45 = v0[35];
  v46 = v0[34];
  v40 = v0[31];
  v41 = v0[30];
  v42 = v0[32];
  v30 = [objc_allocWithZone(type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionOutputs()) init];
  v31 = ASFIDOAuthenticatorAttachmentPlatform;
  v32 = objc_allocWithZone(ASCPlatformPublicKeyCredentialRegistration);
  v39 = Credential;
  v33 = Data._bridgeToObjectiveC()().super.isa;
  v34 = Data._bridgeToObjectiveC()().super.isa;
  v35 = Data._bridgeToObjectiveC()().super.isa;
  LOBYTE(v38) = 0;
  v36 = [v32 initWithRelyingPartyIdentifier:v63 attestationObject:v33 rawClientDataJSON:v34 credentialID:v35 transports:isa extensions:v30 attachment:v31 isExternal:v38];

  sub_10000B954(v56, v54);
  sub_10000B954(v39, v64);
  sub_10000B954(v43, v44);
  (*(v40 + 8))(v42, v41);
  (*(v45 + 8))(v47, v46);
  (*(v49 + 8))(v52, v51);

  v37 = v0[1];

  v37(v36);
}

uint64_t sub_10001B2C8()
{
  v2 = v0[48];
  v1 = v0[49];

  sub_10000B954(v2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10001B418()
{
  (*(v0[39] + 8))(v0[40], v0[38]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10001B538(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10001F610();
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      sub_10000B9BC(v6, *v4);
      sub_1000160A8(v7, v6, v5);
      sub_10000B954(v7[0], v7[1]);
      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_10001B5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[45] = a4;
  v5[46] = v4;
  v5[43] = a2;
  v5[44] = a3;
  v5[42] = a1;
  sub_10000D1D4(&qword_100035B10, &qword_1000254E8);
  v5[47] = swift_task_alloc();
  v6 = type metadata accessor for WBSPasskeyStore.PasskeyStoreError();
  v5[48] = v6;
  v5[49] = *(v6 - 8);
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  sub_10000D1D4(&qword_100035B18, &qword_1000254F0);
  v5[52] = swift_task_alloc();
  v7 = type metadata accessor for ASCTAPAuthData();
  v5[53] = v7;
  v5[54] = *(v7 - 8);
  v5[55] = swift_task_alloc();
  v8 = type metadata accessor for ASCTAPAuthData.Flags();
  v5[56] = v8;
  v5[57] = *(v8 - 8);
  v5[58] = swift_task_alloc();
  v5[59] = swift_task_alloc();
  v5[60] = swift_task_alloc();
  v9 = type metadata accessor for SHA256();
  v5[61] = v9;
  v5[62] = *(v9 - 8);
  v5[63] = swift_task_alloc();
  v10 = type metadata accessor for String.Encoding();
  v5[64] = v10;
  v5[65] = *(v10 - 8);
  v5[66] = swift_task_alloc();
  v11 = type metadata accessor for SHA256Digest();
  v5[67] = v11;
  v5[68] = *(v11 - 8);
  v5[69] = swift_task_alloc();
  v5[70] = swift_task_alloc();
  v12 = type metadata accessor for WBSKeychainPasskey();
  v5[71] = v12;
  v5[72] = *(v12 - 8);
  v5[73] = swift_task_alloc();
  v5[74] = swift_task_alloc();
  v5[75] = swift_task_alloc();
  v5[76] = swift_task_alloc();

  return _swift_task_switch(sub_10001B988, 0, 0);
}

uint64_t sub_10001B988()
{
  v1 = [*(v0 + 352) relyingPartyIdentifier];
  *(v0 + 616) = v1;
  if (v1)
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;
    *(v0 + 624) = v2;
    *(v0 + 632) = v3;
    if (qword_100035800 != -1)
    {
      swift_once();
    }

    *(v0 + 640) = qword_100036070;
    v5 = swift_task_alloc();
    *(v0 + 648) = v5;
    *v5 = v0;
    v5[1] = sub_10001BBDC;

    return WBSPasskeyStore.passkeys(for:)(v2, v4);
  }

  else
  {
    sub_10001F484();
    swift_allocError();
    swift_willThrow();

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_10001BBDC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 656) = v1;

  if (v1)
  {
    v5 = sub_10001D104;
  }

  else
  {
    *(v4 + 664) = a1;
    v5 = sub_10001BD04;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10001BD04()
{
  v1 = *(v0 + 664);
  *(v0 + 672) = *(v0 + 656);
  v2 = [*(v0 + 352) allowCredentials];
  if (!v2)
  {
    goto LABEL_26;
  }

  v3 = v2;
  v52 = v1;
  sub_10001F88C(0, &qword_100035B70, _WKPublicKeyCredentialDescriptor_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_4:
      v6 = sub_100016A68(0, v5 & ~(v5 >> 63), 0);
      if (v5 < 0)
      {
LABEL_40:
        __break(1u);
        return _swift_continuation_await(v6);
      }

      v7 = 0;
      do
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v8 = *(v4 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = [v9 identifier];
        v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v12;

        v15 = _swiftEmptyArrayStorage[2];
        v14 = _swiftEmptyArrayStorage[3];
        if (v15 >= v14 >> 1)
        {
          sub_100016A68((v14 > 1), v15 + 1, 1);
        }

        ++v7;
        _swiftEmptyArrayStorage[2] = v15 + 1;
        v16 = &_swiftEmptyArrayStorage[2 * v15];
        v16[4] = v11;
        v16[5] = v13;
      }

      while (v5 != v7);
    }
  }

  v56 = sub_10001B538(_swiftEmptyArrayStorage);

  v17 = v52;
  v54 = v52[2];
  if (v54)
  {
    v18 = 0;
    v19 = *(v0 + 576);
    v53 = (v19 + 32);
    while (v18 < v17[2])
    {
      v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
      v21 = *(v19 + 72);
      (*(v19 + 16))(*(v0 + 608), v17 + v20 + v21 * v18, *(v0 + 568));
      v22 = WBSKeychainPasskey.credentialID.getter();
      v24 = v23;
      v25 = sub_10000ECE0(v22, v23, v56);
      sub_10000B954(v22, v24);
      if (v25)
      {
        v26 = *v53;
        (*v53)(*(v0 + 600), *(v0 + 608), *(v0 + 568));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100016A24(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v28 = _swiftEmptyArrayStorage[2];
        v27 = _swiftEmptyArrayStorage[3];
        if (v28 >= v27 >> 1)
        {
          sub_100016A24((v27 > 1), v28 + 1, 1);
        }

        v29 = *(v0 + 600);
        v30 = *(v0 + 568);
        _swiftEmptyArrayStorage[2] = v28 + 1;
        v6 = v26(_swiftEmptyArrayStorage + v20 + v28 * v21, v29, v30);
        v17 = v52;
      }

      else
      {
        v6 = (*(v19 + 8))(*(v0 + 608), *(v0 + 568));
      }

      if (v54 == ++v18)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
    goto LABEL_40;
  }

LABEL_25:

  v1 = _swiftEmptyArrayStorage;
LABEL_26:
  *(v0 + 680) = v1;
  v31 = v1[2];
  if (v31)
  {
    v32 = *(v0 + 576);
    type metadata accessor for WebAuthenticationAssertionResponse();
    v35 = *(v32 + 16);
    v33 = v32 + 16;
    v34 = v35;
    v36 = v1 + ((*(v33 + 64) + 32) & ~*(v33 + 64));
    v55 = *(v33 + 56);
    do
    {
      v37 = *(v0 + 592);
      v38 = *(v0 + 584);
      v39 = *(v0 + 568);
      v34(v37, v36, v39);
      v34(v38, v37, v39);
      v40 = sub_10000AE68(v38);
      (*(v33 - 8))(v37, v39);
      if (v40)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      *(v0 + 704) = _swiftEmptyArrayStorage;
      v36 += v55;
      --v31;
    }

    while (v31);
    v41 = *(v0 + 360);
    v42 = *(v0 + 368);
    isa = Array._bridgeToObjectiveC()().super.isa;
    *(v0 + 688) = isa;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 320;
    *(v0 + 24) = sub_10001C464;
    v44 = swift_continuation_init();
    *(v0 + 136) = sub_10000D1D4(&qword_100035B30, &qword_100025500);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_10000F5A8;
    *(v0 + 104) = &unk_100031B18;
    *(v0 + 112) = v44;
    [v42 operation:v41 selectAssertionResponse:isa source:0 completionHandler:v0 + 80];
    v6 = v0 + 16;

    return _swift_continuation_await(v6);
  }

  v45 = *(v0 + 384);
  v46 = *(v0 + 392);
  v48 = *(v0 + 360);
  v47 = *(v0 + 368);

  [v47 operation:v48 updateWebAuthenticationPanel:7];
  sub_100018E68(&qword_100035B68, &type metadata accessor for WBSPasskeyStore.PasskeyStoreError, &protocol conformance descriptor for WBSPasskeyStore.PasskeyStoreError);
  swift_allocError();
  (*(v46 + 104))(v49, enum case for WBSPasskeyStore.PasskeyStoreError.notFound(_:), v45);
  swift_willThrow();

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_10001C464()
{

  return _swift_task_switch(sub_10001C544, 0, 0);
}

uint64_t sub_10001C544()
{
  v67 = v0;
  v1 = *(v0 + 688);
  v2 = *(v0 + 528);
  v3 = *(v0 + 520);
  v4 = *(v0 + 512);
  v64 = *(v0 + 320);
  *(v0 + 696) = v64;

  static String.Encoding.utf8.getter();
  v5 = String.data(using:allowLossyConversion:)();
  v7 = v6;
  (*(v3 + 8))(v2, v4);
  if (v7 >> 60 == 15)
  {

    __break(1u);
  }

  else
  {
    v8 = *(v0 + 672);
    v9 = *(v0 + 560);
    v65 = *(v0 + 544);
    v61 = *(v0 + 536);
    v10 = *(v0 + 496);
    v11 = *(v0 + 504);
    v12 = *(v0 + 488);
    sub_100018E68(&qword_100035B38, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
    dispatch thunk of HashFunction.init()();
    sub_10000B9BC(v5, v7);
    sub_100017DC4(v5, v7, v11);
    sub_10000B9A8(v5, v7);
    dispatch thunk of HashFunction.finalize()();
    sub_10000B9A8(v5, v7);
    v59 = *(v10 + 8);
    v59(v11, v12);
    *(v0 + 168) = v61;
    v13 = sub_100018E68(&qword_100035B40, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
    *(v0 + 176) = v13;
    v14 = sub_10001F560((v0 + 144));
    v58 = *(v65 + 16);
    v58(v14, v9, v61);
    sub_10001F664((v0 + 144), *(v0 + 168));
    v63 = v13;
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v57 = *(v65 + 8);
    v57(v9, v61);
    v60 = *(v0 + 272);
    v62 = *(v0 + 264);
    *(v0 + 712) = v62;
    *(v0 + 720) = v60;
    sub_10001F5C4((v0 + 144));
    sub_10000D1D4(&qword_100035B48, &qword_100025508);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100025390;
    static ASCTAPAuthData.Flags.backupEligible.getter();
    static ASCTAPAuthData.Flags.backupState.getter();
    static ASCTAPAuthData.Flags.userPresent.getter();
    *(v0 + 328) = v15;
    sub_100018E68(&qword_100035B50, &type metadata accessor for ASCTAPAuthData.Flags, &protocol conformance descriptor for ASCTAPAuthData.Flags);
    sub_10000D1D4(&qword_100035B58, &qword_100025510);
    sub_10001F9F8(&qword_100035B60, &qword_100035B58, &qword_100025510, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v16 = [v64 laContext];
    if (v16)
    {
      v17 = *(v0 + 472);
      v19 = *(v0 + 456);
      v18 = *(v0 + 464);
      v20 = *(v0 + 448);

      static ASCTAPAuthData.Flags.userVerified.getter();
      sub_10000F60C(v17, v18);
      v21 = *(v19 + 8);
      v21(v18, v20);
      v21(v17, v20);
    }

    v22 = *(v0 + 552);
    v23 = *(v0 + 536);
    v24 = *(v0 + 504);
    v25 = *(v0 + 488);
    v49 = *(v0 + 456);
    v50 = *(v0 + 472);
    v51 = *(v0 + 448);
    v52 = *(v0 + 480);
    v54 = *(v0 + 440);
    v55 = *(v0 + 432);
    v56 = *(v0 + 424);
    v53 = *(v0 + 416);
    v27 = *(v0 + 336);
    v26 = *(v0 + 344);
    dispatch thunk of HashFunction.init()();
    sub_10000B9BC(v27, v26);
    sub_100017DC4(v27, v26, v24);
    sub_10000B954(v27, v26);
    dispatch thunk of HashFunction.finalize()();
    v59(v24, v25);
    *(v0 + 208) = v23;
    *(v0 + 216) = v63;
    v28 = sub_10001F560((v0 + 184));
    v58(v28, v22, v23);
    sub_10001F664((v0 + 184), *(v0 + 208));
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v57(v22, v23);
    v29 = *(v0 + 280);
    v30 = *(v0 + 288);
    *(v0 + 728) = v29;
    *(v0 + 736) = v30;
    sub_10001F5C4((v0 + 184));
    (*(v49 + 16))(v50, v52, v51);
    v31 = type metadata accessor for ASCTAPCredentialData();
    (*(*(v31 - 8) + 56))(v53, 1, 1, v31);
    sub_10000B9BC(v62, v60);
    ASCTAPAuthData.init(rpIDHash:flags:counter:attestedCredentialData:extensions:)();
    v32 = ASCTAPAuthData.test_webAuthnEncoded()();
    v34 = v33;
    *(v0 + 744) = v32;
    *(v0 + 752) = v33;
    (*(v55 + 8))(v54, v56);
    *&v66 = v32;
    *(&v66 + 1) = v34;
    *(v0 + 248) = &type metadata for Data;
    *(v0 + 256) = &protocol witness table for Data;
    *(v0 + 224) = v29;
    *(v0 + 232) = v30;
    v35 = sub_10001F664((v0 + 224), &type metadata for Data);
    v36 = *v35;
    v37 = v35[1];
    sub_10000B9BC(v32, v34);
    sub_10000B9BC(v29, v30);
    sub_100017FA4(v36, v37, &v66);
    *(v0 + 760) = v8;
    sub_10001F5C4((v0 + 224));
    *(v0 + 768) = v66;
    v38 = [v64 credentialID];
    v39 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    *(v0 + 784) = v39;
    *(v0 + 792) = v41;
    type metadata accessor for WBSPasskeyStore();
    sub_100018E68(&qword_100035A80, &type metadata accessor for WBSPasskeyStore, &protocol conformance descriptor for WBSPasskeyStore);
    v42 = dispatch thunk of Actor.unownedExecutor.getter();
    v44 = v43;
    v45 = sub_10001CC94;
    v46 = v42;
    v47 = v44;
  }

  return _swift_task_switch(v45, v46, v47);
}

uint64_t sub_10001CC94()
{
  v1 = *(v0 + 760);
  *(v0 + 296) = WBSPasskeyStore.test_sign(data:usingPasskeyWithCredentialID:)();
  *(v0 + 304) = v2;
  *(v0 + 800) = v1;
  v3 = *(v0 + 792);
  v4 = *(v0 + 784);
  if (v1)
  {

    sub_10000B954(v4, v3);

    v5 = sub_10001D9E4;
  }

  else
  {
    sub_10000B954(*(v0 + 784), *(v0 + 792));
    v5 = sub_10001CD88;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_10001CD88()
{
  v1 = [*(v0 + 696) userHandle];
  if (v1)
  {
    v2 = v1;
    v36 = *(v0 + 296);
    v29 = *(v0 + 776);
    v22 = *(v0 + 304);
    v23 = *(v0 + 744);
    v31 = *(v0 + 728);
    v33 = *(v0 + 736);
    v34 = *(v0 + 712);
    v3 = *(v0 + 696);
    v26 = v3;
    v27 = *(v0 + 768);
    v24 = *(v0 + 752);
    v25 = *(v0 + 616);
    v35 = *(v0 + 720);
    v32 = *(v0 + 480);
    v28 = *(v0 + 456);
    v30 = *(v0 + 448);

    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v5;
    v20 = v4;

    v6 = [v3 credentialID];
    v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v18 = ASFIDOAuthenticatorAttachmentPlatform;
    v10 = objc_allocWithZone(ASCPlatformPublicKeyCredentialAssertion);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v12 = Data._bridgeToObjectiveC()().super.isa;
    v13 = Data._bridgeToObjectiveC()().super.isa;
    v14 = Data._bridgeToObjectiveC()().super.isa;
    v15 = Data._bridgeToObjectiveC()().super.isa;
    LOBYTE(v17) = 0;
    v21 = [v10 initWithRelyingPartyIdentifier:v25 authenticatorData:isa signature:v12 userHandle:v13 rawClientDataJSON:v14 credentialID:v15 extensions:0 attachment:v18 isExternal:v17];

    sub_10000B954(v7, v9);
    sub_10000B954(v20, v19);

    sub_10000B954(v36, v22);
    sub_10000B954(v27, v29);

    sub_10000B954(v31, v33);
    sub_10000B954(v23, v24);
    sub_10000B954(v34, v35);
    (*(v28 + 8))(v32, v30);

    v16 = *(v0 + 8);

    v16(v21);
  }

  else
  {

    __break(1u);
  }
}

uint64_t sub_10001D104()
{
  *(v0 + 312) = *(v0 + 656);
  swift_errorRetain();
  sub_10000D1D4(&qword_100035B28, &qword_1000254F8);
  v1 = swift_dynamicCast();
  v2 = *(v0 + 384);
  v3 = *(v0 + 392);
  v4 = *(v0 + 376);
  if ((v1 & 1) == 0)
  {

    (*(v3 + 56))(v4, 1, 1, v2);
    sub_10001FAE8(v4, &qword_100035B10, &qword_1000254E8);
LABEL_17:
    swift_willThrow();
    goto LABEL_18;
  }

  v6 = *(v0 + 400);
  v5 = *(v0 + 408);
  (*(v3 + 56))(*(v0 + 376), 0, 1, *(v0 + 384));
  (*(v3 + 32))(v5, v4, v2);
  v63 = enum case for WBSPasskeyStore.PasskeyStoreError.notFound(_:);
  (*(v3 + 104))(v6);
  v7 = static WBSPasskeyStore.PasskeyStoreError.== infix(_:_:)();
  v8 = *(v3 + 8);
  v8(v6, v2);
  if ((v7 & 1) == 0)
  {
    v26 = *(v0 + 616);
    v8(*(v0 + 408), *(v0 + 384));

    goto LABEL_17;
  }

  v9 = *(v0 + 408);
  v10 = *(v0 + 384);

  v8(v9, v10);
  *(v0 + 672) = 0;
  v11 = [*(v0 + 352) allowCredentials];
  v68 = _swiftEmptyArrayStorage;
  if (v11)
  {
    v12 = v11;
    sub_10001F88C(0, &qword_100035B70, _WKPublicKeyCredentialDescriptor_ptr);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v13 >> 62)
    {
      v14 = _CocoaArrayWrapper.endIndex.getter();
      if (v14)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
LABEL_6:
        v15 = sub_100016A68(0, v14 & ~(v14 >> 63), 0);
        if (v14 < 0)
        {
LABEL_47:
          __break(1u);
          return _swift_continuation_await(v15);
        }

        v16 = 0;
        do
        {
          if ((v13 & 0xC000000000000001) != 0)
          {
            v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v17 = *(v13 + 8 * v16 + 32);
          }

          v18 = v17;
          v19 = [v18 identifier];
          v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v22 = v21;

          v24 = _swiftEmptyArrayStorage[2];
          v23 = _swiftEmptyArrayStorage[3];
          if (v24 >= v23 >> 1)
          {
            sub_100016A68((v23 > 1), v24 + 1, 1);
          }

          ++v16;
          _swiftEmptyArrayStorage[2] = v24 + 1;
          v25 = &_swiftEmptyArrayStorage[2 * v24];
          v25[4] = v20;
          v25[5] = v22;
        }

        while (v14 != v16);
      }
    }

    v29 = sub_10001B538(_swiftEmptyArrayStorage);

    v67 = _swiftEmptyArrayStorage[2];
    if (v67)
    {
      v30 = 0;
      v31 = *(v0 + 576);
      v64 = v29;
      v65 = (v31 + 32);
      while (v30 < _swiftEmptyArrayStorage[2])
      {
        v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
        v33 = *(v31 + 72);
        (*(v31 + 16))(*(v0 + 608), _swiftEmptyArrayStorage + v32 + v33 * v30, *(v0 + 568));
        v34 = WBSKeychainPasskey.credentialID.getter();
        v36 = v35;
        v37 = sub_10000ECE0(v34, v35, v29);
        sub_10000B954(v34, v36);
        if (v37)
        {
          v38 = *v65;
          (*v65)(*(v0 + 600), *(v0 + 608), *(v0 + 568));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100016A24(0, _swiftEmptyArrayStorage[2] + 1, 1);
          }

          v40 = _swiftEmptyArrayStorage[2];
          v39 = _swiftEmptyArrayStorage[3];
          if (v40 >= v39 >> 1)
          {
            sub_100016A24((v39 > 1), v40 + 1, 1);
          }

          v41 = *(v0 + 600);
          v42 = *(v0 + 568);
          _swiftEmptyArrayStorage[2] = v40 + 1;
          v15 = v38(_swiftEmptyArrayStorage + v32 + v40 * v33, v41, v42);
          v29 = v64;
        }

        else
        {
          v15 = (*(v31 + 8))(*(v0 + 608), *(v0 + 568));
        }

        if (v67 == ++v30)
        {
          goto LABEL_34;
        }
      }

      __break(1u);
      goto LABEL_47;
    }

LABEL_34:
  }

  *(v0 + 680) = _swiftEmptyArrayStorage;
  v43 = _swiftEmptyArrayStorage[2];
  if (v43)
  {
    v44 = *(v0 + 576);
    type metadata accessor for WebAuthenticationAssertionResponse();
    v47 = *(v44 + 16);
    v46 = v44 + 16;
    v45 = v47;
    v48 = _swiftEmptyArrayStorage + ((*(v46 + 64) + 32) & ~*(v46 + 64));
    v66 = *(v46 + 56);
    do
    {
      v50 = *(v0 + 592);
      v51 = *(v0 + 584);
      v52 = *(v0 + 568);
      v45(v50, v48, v52);
      v45(v51, v50, v52);
      v53 = sub_10000AE68(v51);
      (*(v46 - 8))(v50, v52);
      v49 = v68;
      if (v53)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v49 = _swiftEmptyArrayStorage;
      }

      v68 = v49;
      *(v0 + 704) = v49;
      v48 += v66;
      --v43;
    }

    while (v43);
    v54 = *(v0 + 360);
    v55 = *(v0 + 368);
    isa = Array._bridgeToObjectiveC()().super.isa;
    *(v0 + 688) = isa;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 320;
    *(v0 + 24) = sub_10001C464;
    v57 = swift_continuation_init();
    *(v0 + 136) = sub_10000D1D4(&qword_100035B30, &qword_100025500);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_10000F5A8;
    *(v0 + 104) = &unk_100031B18;
    *(v0 + 112) = v57;
    [v55 operation:v54 selectAssertionResponse:isa source:0 completionHandler:v0 + 80];
    v15 = v0 + 16;

    return _swift_continuation_await(v15);
  }

  v58 = *(v0 + 384);
  v59 = *(v0 + 392);
  v61 = *(v0 + 360);
  v60 = *(v0 + 368);

  [v60 operation:v61 updateWebAuthenticationPanel:7];
  sub_100018E68(&qword_100035B68, &type metadata accessor for WBSPasskeyStore.PasskeyStoreError, &protocol conformance descriptor for WBSPasskeyStore.PasskeyStoreError);
  swift_allocError();
  (*(v59 + 104))(v62, v63, v58);
  swift_willThrow();
LABEL_18:

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_10001D9E4()
{
  v1 = v0[94];
  v2 = v0[93];
  v3 = v0[92];
  v4 = v0[91];
  v5 = v0[90];
  v6 = v0[89];
  v7 = v0[87];
  v12 = v0[60];
  v9 = v0[56];
  v8 = v0[57];
  sub_10000B954(v0[96], v0[97]);

  sub_10000B954(v4, v3);
  sub_10000B954(v2, v1);
  sub_10000B954(v6, v5);
  (*(v8 + 8))(v12, v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10001DB9C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for WBSKeychainPasskey.Metadata.DataKeys();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for WBSKeychainPasskey.Metadata.StringKeys();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for WBSKeychainPasskey.Metadata();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v6 = type metadata accessor for WBSKeychainPasskey();
  v2[14] = v6;
  v2[15] = *(v6 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_10001DD94, 0, 0);
}

uint64_t sub_10001DD94()
{
  if (qword_100035800 != -1)
  {
    swift_once();
  }

  *(v0 + 152) = qword_100036070;
  type metadata accessor for WBSPasskeyStore();
  sub_100018E68(&qword_100035A80, &type metadata accessor for WBSPasskeyStore, &protocol conformance descriptor for WBSPasskeyStore);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001DE84, v2, v1);
}

uint64_t sub_10001DE84()
{
  *(v0 + 160) = WBSPasskeyStore.allPasskeys()();

  return _swift_task_switch(sub_10001DEF0, 0, 0);
}

void sub_10001DEF0()
{
  v1 = v0[20];
  v62 = *(v1 + 16);
  if (v62)
  {
    v2 = 0;
    v3 = v0[15];
    v59 = (v3 + 32);
    while (v2 < *(v1 + 16))
    {
      v5 = v0[2];
      v4 = v0[3];
      v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v7 = *(v3 + 72);
      (*(v3 + 16))(v0[18], v0[20] + v6 + v7 * v2, v0[14]);
      WBSKeychainPasskey.relyingPartyIdentifier.getter();
      v8._countAndFlagsBits = v5;
      v8._object = v4;
      LOBYTE(v4) = String.hasSuffix(_:)(v8);

      if (v4)
      {
        v9 = *v59;
        (*v59)(v0[17], v0[18], v0[14]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100016A24(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v11 = _swiftEmptyArrayStorage[2];
        v10 = _swiftEmptyArrayStorage[3];
        if (v11 >= v10 >> 1)
        {
          sub_100016A24((v10 > 1), v11 + 1, 1);
        }

        v12 = v0[17];
        v13 = v0[14];
        _swiftEmptyArrayStorage[2] = v11 + 1;
        v9(_swiftEmptyArrayStorage + v6 + v11 * v7, v12, v13);
      }

      else
      {
        (*(v3 + 8))(v0[18], v0[14]);
      }

      if (v62 == ++v2)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    v14 = _swiftEmptyArrayStorage[2];
    if (!v14)
    {
LABEL_18:

      v43 = v0[1];

      v43(_swiftEmptyArrayStorage);
      return;
    }

    v15 = v0[15];
    v16 = v0[11];
    v17 = v0[8];
    v18 = v0[5];
    specialized ContiguousArray.reserveCapacity(_:)();
    v19 = 0;
    v53 = _swiftEmptyArrayStorage + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v52 = enum case for WBSKeychainPasskey.Metadata.StringKeys.name(_:);
    v51 = (v17 + 104);
    v20 = (v16 + 8);
    v50 = enum case for WBSKeychainPasskey.Metadata.DataKeys.userHandle(_:);
    v48 = v14;
    v49 = (v18 + 104);
    v45 = (v17 + 8);
    v46 = (v18 + 8);
    v54 = v15;
    v44 = (v15 + 8);
    v47 = (v16 + 8);
    while (v19 < _swiftEmptyArrayStorage[2])
    {
      v21 = v0[13];
      v22 = v0[9];
      v23 = v0[10];
      v24 = v0[7];
      v63 = v19;
      (*(v54 + 16))(v0[16], &v53[*(v54 + 72) * v19], v0[14]);
      WBSKeychainPasskey.metadata.getter();
      (*v51)(v22, v52, v24);
      WBSKeychainPasskey.Metadata.subscript.getter();
      v26 = v25;
      v27 = *v20;
      (*v20)(v21, v23);
      if (!v26)
      {
        goto LABEL_23;
      }

      v28 = v0[12];
      v60 = v0[10];
      v29 = v0[6];
      v30 = v0[4];
      WBSKeychainPasskey.relyingPartyIdentifier.getter();
      v58 = WBSKeychainPasskey.credentialID.getter();
      v57 = v31;
      WBSKeychainPasskey.metadata.getter();
      (*v49)(v29, v50, v30);
      v32 = WBSKeychainPasskey.Metadata.subscript.getter();
      v34 = v33;
      v27(v28, v60);
      if (v34 >> 60 == 15)
      {
        goto LABEL_24;
      }

      v61 = v0[16];
      v56 = v0[14];
      v35 = v0[9];
      v36 = v0[7];
      (*v46)(v0[6], v0[4]);
      (*v45)(v35, v36);
      v55 = objc_allocWithZone(WBSWebBrowserPasskey);
      v37 = String._bridgeToObjectiveC()();

      v38 = String._bridgeToObjectiveC()();

      isa = Data._bridgeToObjectiveC()().super.isa;
      v40 = Data._bridgeToObjectiveC()().super.isa;
      v41 = String._bridgeToObjectiveC()();
      [v55 initWithName:v37 relyingParty:v38 credentialID:isa userHandle:v40 customTitle:0 providerName:v41];

      v42 = v32;
      v19 = v63 + 1;
      sub_10000B9A8(v42, v34);

      sub_10000B954(v58, v57);
      (*v44)(v61, v56);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v20 = v47;
      if (v48 == v63 + 1)
      {
        goto LABEL_18;
      }
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

char *sub_10001E4F4(unint64_t a1)
{
  v37 = type metadata accessor for ASCTAPAuthenticatorTransport();
  v2 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000D1D4(&qword_100035A38, "zT");
  __chkstk_darwin(v4 - 8);
  v6 = &v32 - v5;
  v7 = type metadata accessor for ASWKCTAPAuthenticatorTransport();
  v8 = *(v7 - 8);
  result = __chkstk_darwin(v7);
  v41 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(a1 >> 62))
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_3;
    }

    return _swiftEmptyArrayStorage;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v12 = result;
  if (!result)
  {
    return _swiftEmptyArrayStorage;
  }

LABEL_3:
  if (v12 >= 1)
  {
    v13 = 0;
    v40 = a1 & 0xC000000000000001;
    v14 = (v8 + 48);
    v34 = (v2 + 8);
    v35 = (v8 + 32);
    v15 = _swiftEmptyArrayStorage;
    v33 = (v8 + 8);
    *&v10 = 138543362;
    v32 = v10;
    v38 = v12;
    v39 = a1;
    do
    {
      if (v40)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v19 = *(a1 + 8 * v13 + 32);
      }

      v20 = v19;
      ASWKCTAPAuthenticatorTransport.init(rawValue:)();
      if ((*v14)(v6, 1, v7) == 1)
      {
        sub_10001FAE8(v6, &qword_100035A38, "zT");
        if (qword_1000357F0 != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        sub_10000BC18(v21, qword_100036040);
        v22 = v20;
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v23, v24))
        {
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          *v16 = v32;
          *(v16 + 4) = v22;
          *v17 = v22;
          v18 = v22;
          _os_log_impl(&_mh_execute_header, v23, v24, "Unexpected WebKit transport: %{public}@", v16, 0xCu);
          sub_10001FAE8(v17, &qword_100035A40, "zT");
          a1 = v39;

          v12 = v38;
        }

        else
        {
        }
      }

      else
      {
        (*v35)(v41, v6, v7);
        v25 = v36;
        ASWKCTAPAuthenticatorTransport.asRepresentation.getter();
        v26 = ASCTAPAuthenticatorTransport.rawValue.getter();
        v28 = v27;
        (*v34)(v25, v37);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_100013F5C(0, *(v15 + 2) + 1, 1, v15);
        }

        v30 = *(v15 + 2);
        v29 = *(v15 + 3);
        if (v30 >= v29 >> 1)
        {
          v15 = sub_100013F5C((v29 > 1), v30 + 1, 1, v15);
        }

        (*v33)(v41, v7);
        *(v15 + 2) = v30 + 1;
        v31 = &v15[16 * v30];
        *(v31 + 4) = v26;
        *(v31 + 5) = v28;
        v12 = v38;
        a1 = v39;
      }

      ++v13;
    }

    while (v12 != v13);
    return v15;
  }

  __break(1u);
  return result;
}

void *sub_10001E990(uint64_t a1)
{
  v30 = type metadata accessor for ASWKCTAPAuthenticatorTransport();
  v2 = *(v30 - 8);
  __chkstk_darwin(v30);
  v29 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000D1D4(&qword_100035A30, "zT");
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - v5;
  v7 = type metadata accessor for ASCTAPAuthenticatorTransport();
  __chkstk_darwin(v7);
  v11 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = _swiftEmptyArrayStorage;
  v12 = *(a1 + 16);
  if (!v12)
  {
    return _swiftEmptyArrayStorage;
  }

  v13 = (v8 + 48);
  v32 = (v8 + 8);
  v33 = (v8 + 32);
  v27 = (v2 + 8);
  v31 = _swiftEmptyArrayStorage;
  v14 = (a1 + 40);
  *&v10 = 136446210;
  v26 = v10;
  v34 = (v8 + 48);
  v28 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  do
  {
    v20 = *(v14 - 1);
    v19 = *v14;
    swift_bridgeObjectRetain_n();
    ASCTAPAuthenticatorTransport.init(rawValue:)();
    if ((*v13)(v6, 1, v7) == 1)
    {
      sub_10001FAE8(v6, &qword_100035A30, "zT");
      if (qword_1000357F0 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_10000BC18(v21, qword_100036040);

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v15 = swift_slowAlloc();
        v16 = v7;
        v17 = swift_slowAlloc();
        v35 = v17;
        *v15 = v26;
        v18 = sub_100014068(v20, v19, &v35);

        *(v15 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v22, v23, "Unexpected AS transport: %{public}s", v15, 0xCu);
        sub_10001F5C4(v17);
        v7 = v16;
        v11 = v28;

        v13 = v34;
      }

      else
      {
      }
    }

    else
    {

      (*v33)(v11, v6, v7);
      if (ASCTAPAuthenticatorTransport.isSecurityKeyTransport.getter())
      {
        v24 = v29;
        ASCTAPAuthenticatorTransport.wkRepresentation.getter();
        ASWKCTAPAuthenticatorTransport.rawValue.getter();
        (*v27)(v24, v30);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        (*v32)(v11, v7);
        v31 = v36;
        v13 = v34;
      }

      else
      {
        (*v32)(v11, v7);
      }
    }

    v14 += 2;
    --v12;
  }

  while (v12);
  return v31;
}

uint64_t sub_10001EE10()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001EE58()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001FCA8;

  return sub_10000FF68(v2, v3, v4);
}

uint64_t sub_10001EF0C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001FCA8;

  return sub_1000135D4(v2, v3, v4);
}

uint64_t sub_10001EFCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001FCA8;

  return sub_1000136BC(a1, v4, v5, v6);
}

uint64_t sub_10001F098()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001F0D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001FCA8;

  return sub_100013B94(a1, v4);
}

uint64_t sub_10001F188(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000137A4;

  return sub_100013B94(a1, v4);
}

uint64_t sub_10001F240(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10001F288()
{
  _Block_release(*(v0 + 48));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10001F2E0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10001FCA8;

  return sub_10000FAB8(v2, v3, v4, v5, v7, v6);
}

uint64_t sub_10001F3B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000137A4;

  return sub_1000136BC(a1, v4, v5, v6);
}

unint64_t sub_10001F484()
{
  result = qword_100035B20;
  if (!qword_100035B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035B20);
  }

  return result;
}

uint64_t sub_10001F4E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_10001F560(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10001F5C4(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_10001F610()
{
  result = qword_100035B78;
  if (!qword_100035B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035B78);
  }

  return result;
}

void *sub_10001F664(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10001F6A8()
{
  _Block_release(*(v0 + 56));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10001F708()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_10001FCA8;

  return sub_10000E96C(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_10001F7E4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_10001F824()
{
  result = qword_100035BC8;
  if (!qword_100035BC8)
  {
    sub_10001F88C(255, &qword_100035BC0, CBOR_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035BC8);
  }

  return result;
}

uint64_t sub_10001F88C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10001F8D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000D1D4(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10001F93C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000D1D4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_10001F9A4()
{
  result = qword_100035C30;
  if (!qword_100035C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035C30);
  }

  return result;
}

uint64_t sub_10001F9F8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10001F240(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001FA40()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_10000B954(*(v0 + 16), v1);
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001FA88()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001FAD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001FAE8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000D1D4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for WebAuthenticationError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for WebAuthenticationError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_10001FC3C()
{
  result = qword_100035CD8;
  if (!qword_100035CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035CD8);
  }

  return result;
}

void sub_10001FCAC(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[PublicKeyCredentialOperation mergeIdentifiersToAssertionResponses:]_block_invoke";
  sub_100002B18(&_mh_execute_header, a1, a3, "Unexpected semaphore timeout in %{public}s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10001FD24(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[PublicKeyCredentialOperation setPlatformAssertionSelectionCallback:]_block_invoke";
  sub_100002B18(&_mh_execute_header, a1, a3, "Unexpected semaphore timeout in %{public}s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10001FD9C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[PublicKeyCredentialOperation setSecurityKeyAssertionSelectionCallback:]_block_invoke";
  sub_100002B18(&_mh_execute_header, a1, a3, "Unexpected semaphore timeout in %{public}s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10001FE14(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[PublicKeyCredentialOperation selectPlatformAssertion:]_block_invoke";
  sub_100002B18(&_mh_execute_header, a1, a3, "Unexpected semaphore timeout in %{public}s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10001FED0(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[PublicKeyCredentialOperation selectSecurityKeyAssertion:]_block_invoke";
  sub_100002B18(&_mh_execute_header, a1, a3, "Unexpected semaphore timeout in %{public}s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10001FF48(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[PublicKeyCredentialOperation hasTornDown]_block_invoke";
  sub_100002B18(&_mh_execute_header, a1, a3, "Unexpected semaphore timeout in %{public}s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10001FFC0(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[PublicKeyCredentialOperation hasSelectedAssertion]_block_invoke";
  sub_100002B18(&_mh_execute_header, a1, a3, "Unexpected semaphore timeout in %{public}s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100020038(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[PublicKeyCredentialOperation tearDownIfNecessary]_block_invoke";
  sub_100002B18(&_mh_execute_header, a1, a3, "Unexpected semaphore timeout in %{public}s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10002016C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 safari_privacyPreservingDescription];
  sub_10000A610();
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Assertion failed: %{public}@", v5, 0xCu);
}

void sub_100020210(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = *(a1 + 32);
  sub_100002B18(&_mh_execute_header, a2, a3, "Could not find assertion for identifier: %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1000202F0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 identifier];
  sub_10000A610();
  _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "Could not find assertion for identifier: %{public}@", v5, 0xCu);
}

void sub_100020394()
{
  sub_10000A610();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Could not find passkey %{public}@ for %{public}@.", v2, 0x16u);
}

void sub_10002044C(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 141558275;
  v4 = 1752392040;
  v5 = 2113;
  v6 = v2;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Login choice corresponding to selected credential for %{private, mask.hash}@ not found, should not happen", &v3, 0x16u);
}

void sub_100020614(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = *(a1 + 32);
  sub_10000A628(&_mh_execute_header, a2, a3, "Registration error: %{public}@.", a5, a6, a7, a8, v8, DWORD2(v8));
}

Swift::String __swiftcall Data.base64URLEncodedString(includePadding:)(Swift::Bool includePadding)
{
  v1 = Data.base64URLEncodedString(includePadding:)(includePadding);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall Data.hexString()()
{
  v0 = Data.hexString()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t Data._Representation.subscript.getter()
{
  return Data._Representation.subscript.getter();
}

{
  return Data._Representation.subscript.getter();
}

uint64_t WBSKeychainPasskey.Metadata.subscript.getter()
{
  return WBSKeychainPasskey.Metadata.subscript.getter();
}

{
  return WBSKeychainPasskey.Metadata.subscript.getter();
}

Swift::String __swiftcall Error.loggerDescription()()
{
  v0 = Error.loggerDescription()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}