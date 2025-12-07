int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  v4 = type metadata accessor for AppleAccountDaemon();
  swift_allocObject();
  v5 = sub_10014B7C8();
  qword_1003D7DA8 = v4;
  unk_1003D7DB0 = &off_1003AAC98;
  qword_1003D7D90 = v5;
  objc_autoreleasePoolPop(v3);
  v6 = objc_autoreleasePoolPush();
  sub_10014EAFC();
  objc_autoreleasePoolPop(v6);
  v7 = [objc_opt_self() currentRunLoop];
  [v7 run];

  return 0;
}

uint64_t variable initialization expression of InheritanceSecurityController._accountStore()
{
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);

  return Dependency.init(dependencyId:config:)();
}

uint64_t variable initialization expression of InheritanceSecurityController._urlBagProvider()
{
  sub_100005814(&qword_1003D7FD0, &unk_10033FB30);

  return Dependency.init(dependencyId:config:)();
}

uint64_t sub_100002780(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8218, type metadata accessor for AgeMigrationError, &unk_10033D5B8);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000027EC(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8218, type metadata accessor for AgeMigrationError, &unk_10033D5B8);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100002858(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8248, type metadata accessor for AgeMigrationError, &unk_10033D760);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000028C4(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D83B0, type metadata accessor for AACustodianError, &unk_10033C870);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100002930(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D83B0, type metadata accessor for AACustodianError, &unk_10033C870);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000029A0(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100002A24(uint64_t a1, uint64_t a2)
{
  result = static Int._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_100002A78(uint64_t a1, uint64_t a2)
{
  v3 = static Int._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_100002AD0@<X0>(uint64_t *a1@<X8>)
{
  result = static Int._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  return result;
}

uint64_t sub_100002B04(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8340, type metadata accessor for AAError, &unk_10033CC84);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100002B70(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8340, type metadata accessor for AAError, &unk_10033CC84);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100002BDC(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8370, type metadata accessor for AAError, &unk_10033DD74);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

void *sub_100002C48@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100002C64(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D83D8, type metadata accessor for AACustodianRecoveryError, &unk_10033C744);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100002CD0(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D83D8, type metadata accessor for AACustodianRecoveryError, &unk_10033C744);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100002D3C(uint64_t a1)
{
  v2 = sub_1000059E8(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError, &unk_10033E000);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

Swift::Int sub_100002DC4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100002E38(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_100002E7C(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8290, type metadata accessor for EscrowRecordError, &unk_10033D1D0);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100002EE8(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8290, type metadata accessor for EscrowRecordError, &unk_10033D1D0);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100002F54(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D82C0, type metadata accessor for EscrowRecordError, &unk_10033DA04);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100002FC0(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8258, type metadata accessor for CustodianSystemState, &unk_10033D334);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10000302C(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8258, type metadata accessor for CustodianSystemState, &unk_10033D334);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100003098(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003DF010, type metadata accessor for CustodianSystemState, &unk_10033D8B0);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100003104(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8008, type metadata accessor for InheritanceError, &unk_10033BFB0);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100003170(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8008, type metadata accessor for InheritanceError, &unk_10033BFB0);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000031DC(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100003270(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8308, type metadata accessor for AASignInError, &unk_10033CDB0);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000032DC(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8308, type metadata accessor for AASignInError, &unk_10033CDB0);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100003348(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8338, type metadata accessor for AASignInError, &unk_10033DC64);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

BOOL sub_1000033F0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_100003420@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_10000344C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_100003524(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8378, type metadata accessor for CKError, &unk_10033C618);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100003590(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8378, type metadata accessor for CKError, &unk_10033C618);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000035FC(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003DA8D0, type metadata accessor for CKError, &unk_10033DE84);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100003668(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1000036E0(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100003760@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_1000037A4(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D82D0, type metadata accessor for AgeAttestationError, &unk_10033CEDC);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100003810(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D82D0, type metadata accessor for AgeAttestationError, &unk_10033CEDC);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10000387C(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8300, type metadata accessor for AgeAttestationError, &unk_10033DB54);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000038F8(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8248, type metadata accessor for AgeMigrationError, &unk_10033D760);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100003964(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8248, type metadata accessor for AgeMigrationError, &unk_10033D760);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000039D0(void *a1, uint64_t a2)
{
  v4 = sub_1000059E8(&qword_1003D8248, type metadata accessor for AgeMigrationError, &unk_10033D760);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100003A60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000059E8(&qword_1003D8248, type metadata accessor for AgeMigrationError, &unk_10033D760);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_100003AEC(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100003B58(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100003BC4(void *a1, uint64_t a2)
{
  v4 = sub_1000059E8(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100003C78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000059E8(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_100003D08(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8370, type metadata accessor for AAError, &unk_10033DD74);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100003D74(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8370, type metadata accessor for AAError, &unk_10033DD74);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100003DE0(void *a1, uint64_t a2)
{
  v4 = sub_1000059E8(&qword_1003D8370, type metadata accessor for AAError, &unk_10033DD74);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100003E70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000059E8(&qword_1003D8370, type metadata accessor for AAError, &unk_10033DD74);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_100003EFC(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003DA8D0, type metadata accessor for CKError, &unk_10033DE84);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100003F68(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003DA8D0, type metadata accessor for CKError, &unk_10033DE84);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100003FD4(void *a1, uint64_t a2)
{
  v4 = sub_1000059E8(&qword_1003DA8D0, type metadata accessor for CKError, &unk_10033DE84);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100004064(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000059E8(&qword_1003DA8D0, type metadata accessor for CKError, &unk_10033DE84);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000040F0(uint64_t a1)
{
  v2 = sub_1000059E8(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError, &unk_10033E000);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_10000415C(uint64_t a1)
{
  v2 = sub_1000059E8(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError, &unk_10033E000);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000041C8(void *a1, uint64_t a2)
{
  v4 = sub_1000059E8(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError, &unk_10033E000);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100004258(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000059E8(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError, &unk_10033E000);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000042E8(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D82C0, type metadata accessor for EscrowRecordError, &unk_10033DA04);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100004354(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D82C0, type metadata accessor for EscrowRecordError, &unk_10033DA04);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000043C0(void *a1, uint64_t a2)
{
  v4 = sub_1000059E8(&qword_1003D82C0, type metadata accessor for EscrowRecordError, &unk_10033DA04);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100004450(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000059E8(&qword_1003D82C0, type metadata accessor for EscrowRecordError, &unk_10033DA04);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000044DC(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003DF010, type metadata accessor for CustodianSystemState, &unk_10033D8B0);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100004548(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003DF010, type metadata accessor for CustodianSystemState, &unk_10033D8B0);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000045B4(void *a1, uint64_t a2)
{
  v4 = sub_1000059E8(&qword_1003DF010, type metadata accessor for CustodianSystemState, &unk_10033D8B0);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100004644(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000059E8(&qword_1003DF010, type metadata accessor for CustodianSystemState, &unk_10033D8B0);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000046D0(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_10000473C(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000047A8(void *a1, uint64_t a2)
{
  v4 = sub_1000059E8(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100004838(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000059E8(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000048B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100007A4C(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_100004904(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8338, type metadata accessor for AASignInError, &unk_10033DC64);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100004970(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8338, type metadata accessor for AASignInError, &unk_10033DC64);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000049DC(void *a1, uint64_t a2)
{
  v4 = sub_1000059E8(&qword_1003D8338, type metadata accessor for AASignInError, &unk_10033DC64);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100004A6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000059E8(&qword_1003D8338, type metadata accessor for AASignInError, &unk_10033DC64);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_100004AF8(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8300, type metadata accessor for AgeAttestationError, &unk_10033DB54);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100004B64(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8300, type metadata accessor for AgeAttestationError, &unk_10033DB54);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100004BD0(void *a1, uint64_t a2)
{
  v4 = sub_1000059E8(&qword_1003D8300, type metadata accessor for AgeAttestationError, &unk_10033DB54);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100004C60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000059E8(&qword_1003D8300, type metadata accessor for AgeAttestationError, &unk_10033DB54);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100004CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100004D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000059E8(&qword_1003D8248, type metadata accessor for AgeMigrationError, &unk_10033D760);

  return static _BridgedStoredNSError.== infix(_:_:)();
}

uint64_t sub_100004DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000059E8(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);

  return static _BridgedStoredNSError.== infix(_:_:)();
}

uint64_t sub_100004E44(uint64_t a1)
{
  sub_1000059E8(&qword_1003D8440, type metadata accessor for Status, &unk_10033D870);
  sub_1000059E8(&qword_1003D8448, type metadata accessor for Status, &unk_10033C9FC);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100004F04@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100004F30(uint64_t a1)
{
  sub_1000059E8(&qword_1003D8420, type metadata accessor for AAAnalyticsEvent, &unk_10033D440);
  sub_1000059E8(&qword_1003D8428, type metadata accessor for AAAnalyticsEvent, &unk_10033D3E0);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100004FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000059E8(&qword_1003D8370, type metadata accessor for AAError, &unk_10033DD74);

  return static _BridgedStoredNSError.== infix(_:_:)();
}

uint64_t sub_100005070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000059E8(&qword_1003DA8D0, type metadata accessor for CKError, &unk_10033DE84);

  return static _BridgedStoredNSError.== infix(_:_:)();
}

uint64_t sub_1000050F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000059E8(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError, &unk_10033E000);

  return static _BridgedStoredNSError.== infix(_:_:)();
}

uint64_t sub_100005178(uint64_t a1)
{
  sub_1000059E8(&qword_1003D8430, type metadata accessor for AAFollowUpUserInfo, &unk_10033DB14);
  sub_1000059E8(&qword_1003D8438, type metadata accessor for AAFollowUpUserInfo, &unk_10033CAFC);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100005234(uint64_t a1)
{
  sub_1000059E8(&qword_1003D84E0, type metadata accessor for AAFollowUpIdentifier, &unk_10033E4F4);
  sub_1000059E8(&qword_1003D84E8, type metadata accessor for AAFollowUpIdentifier, &unk_10033E49C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000052F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000059E8(&qword_1003D82C0, type metadata accessor for EscrowRecordError, &unk_10033DA04);

  return static _BridgedStoredNSError.== infix(_:_:)();
}

uint64_t sub_100005374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000059E8(&qword_1003DF010, type metadata accessor for CustodianSystemState, &unk_10033D8B0);

  return static _BridgedStoredNSError.== infix(_:_:)();
}

uint64_t sub_1000053F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000059E8(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);

  return static _BridgedStoredNSError.== infix(_:_:)();
}

uint64_t sub_10000547C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000059E8(&qword_1003D8338, type metadata accessor for AASignInError, &unk_10033DC64);

  return static _BridgedStoredNSError.== infix(_:_:)();
}

uint64_t sub_100005500@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_100005548(uint64_t a1)
{
  sub_1000059E8(&qword_1003D8410, type metadata accessor for FileAttributeKey, &unk_10033D71C);
  sub_1000059E8(&qword_1003D8418, type metadata accessor for FileAttributeKey, &unk_10033D670);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100005604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000059E8(&qword_1003D8300, type metadata accessor for AgeAttestationError, &unk_10033DB54);

  return static _BridgedStoredNSError.== infix(_:_:)();
}

uint64_t sub_100005688()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_1000056C4(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100005718(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t sub_10000578C(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_100005814(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

__n128 sub_10000585C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000586C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000588C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1000058D4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000058F4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1000059E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100005BB0()
{
  result = qword_1003D8030;
  if (!qword_1003D8030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D8030);
  }

  return result;
}

uint64_t sub_100007A4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void sub_100007AC0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void sub_100007FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_100008054()
{
  sub_10000839C((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1000080B8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

void *sub_1000080F8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000813C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100008174()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_1000081CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000082A8;

  return sub_100316334(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000082A8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000839C(void *a1)
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

uint64_t sub_1000083E8()
{
  v1 = *(v0 + 16);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 valueForEntitlement:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (*(&v13 + 1))
  {
    if (swift_dynamicCast() & 1) != 0 && (v11)
    {
      return 1;
    }
  }

  else
  {
    sub_100008D3C(v14, &qword_1003D87C8, qword_100344800);
  }

  if (qword_1003D7F60 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100008D04(v5, qword_1003FAB00);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v1;
    *v9 = v1;
    v10 = v1;
    _os_log_impl(&_mh_execute_header, v6, v7, "Client is missing user notifications entitlement: %@", v8, 0xCu);
    sub_100008D3C(v9, &unk_1003D9140, &qword_10033E640);
  }

  return 0;
}

void sub_100008600(void *a1, void (*a2)(void), NSObject *a3)
{
  v7 = sub_100005814(&qword_1003DEC40, &unk_10033E620);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  if (sub_1000083E8())
  {
    v11 = [a1 title];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v12;

    v13 = [a1 message];
    v33 = a3;
    v14 = v13;
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v15;

    v27 = 0x800000010032C620;
    v16 = [a1 action];
    if (v16)
    {
      v17 = 0xD000000000000018;
    }

    else
    {
      v17 = 0xD00000000000002BLL;
    }

    if (v16)
    {
      v18 = "ccountd.accountNotification";
    }

    else
    {
      v18 = "defaultActionURL";
    }

    v19 = v18 | 0x8000000000000000;
    sub_100005814(&unk_1003E7730, &unk_1003492E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10033E5C0;
    v28 = a2;
    *(inited + 32) = 0xD000000000000010;
    *(inited + 40) = 0x800000010032C670;
    *(inited + 48) = 0xD00000000000002BLL;
    *(inited + 56) = v27;
    *(inited + 64) = 0xD000000000000010;
    *(inited + 72) = 0x800000010032C690;
    *(inited + 80) = v17;
    *(inited + 88) = v19;
    v21 = sub_100308864(inited);
    swift_setDeallocating();
    sub_100005814(&qword_1003DDEC0, &unk_10033E630);
    swift_arrayDestroy();
    v35[0] = v32;
    v35[1] = v31;
    v35[2] = v30;
    v35[3] = v29;
    v35[4] = v21;
    v36 = 3;
    (*(v8 + 16))(v10, v3 + OBJC_IVAR____TtC13appleaccountd36AccountUserNotificationDaemonService__notificationManager, v7);
    Dependency.wrappedValue.getter();
    (*(v8 + 8))(v10, v7);
    sub_1000080F8(v34, v34[3]);
    sub_1002D2E28(v35, v28, v33);

    sub_10000839C(v34);
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100008D04(v22, qword_1003FAA88);
    v33 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v33, v23, "Client is missing user notifications entitlement, rejecting request to trigger user notification.", v24, 2u);
    }

    v25 = v33;
  }
}

uint64_t sub_100008AB4()
{
  v1 = OBJC_IVAR____TtC13appleaccountd36AccountUserNotificationDaemonService__notificationManager;
  v2 = sub_100005814(&qword_1003DEC40, &unk_10033E620);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AccountUserNotificationDaemonService(uint64_t a1)
{
  result = qword_1003D86F0;
  if (!qword_1003D86F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100008BB8(uint64_t a1)
{
  sub_100008C58(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100008C58(uint64_t a1)
{
  if (!qword_1003DC940)
  {
    sub_100008CBC(&unk_1003D9890, &unk_1003405D0);
    v1 = type metadata accessor for Dependency();
    if (!v2)
    {
      atomic_store(v1, &qword_1003DC940);
    }
  }
}

uint64_t sub_100008CBC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100008D04(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100008D3C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100005814(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100008D9C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100008DDC()
{
  v1 = *(v0 + 16);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 valueForEntitlement:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    result = swift_dynamicCast();
    if ((result & 1) != 0 && v12 == 1)
    {
      return result;
    }
  }

  else
  {
    sub_10000DC50(v11);
  }

  if (qword_1003D7F90 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100008D04(v5, qword_1003FAB90);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Client is missing attestation entitlement", v8, 2u);
  }

  type metadata accessor for AgeMigrationError(0);
  sub_100212324(_swiftEmptyArrayStorage);
  sub_10000DB94();
  _BridgedStoredNSError.init(_:userInfo:)();
  return swift_willThrow();
}

uint64_t sub_100008FCC()
{
  v1[7] = v0;
  v2 = sub_100005814(&qword_1003D8A00, &qword_10033E730);
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_100009098, 0, 0);
}

uint64_t sub_100009098()
{
  sub_100008DDC();
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  (*(v2 + 16))(v1, v0[7] + OBJC_IVAR____TtC13appleaccountd25AgeMigrationDaemonService__ageMigrationAccountManager, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  sub_1000080F8(v0 + 2, v0[5]);
  v4 = type metadata accessor for AgeMigrationAccountManager(0);
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_100009280;

  return (sub_100241DD0)(v4, &off_1003B0AD0);
}

uint64_t sub_100009280()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_100009404;
  }

  else
  {
    v2 = sub_100009394;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100009394()
{
  sub_10000839C((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100009404()
{
  sub_10000839C((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000095E8(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_100009690;

  return sub_100008FCC();
}

uint64_t sub_100009690()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;

  if (v0)
  {
    if (v3)
    {
      v5 = *(v2 + 24);
      v6 = _convertErrorToNSError(_:)();

      (v5)[2](v5, v6);
      _Block_release(v5);
    }

    else
    {
    }
  }

  else if (v3)
  {
    v7 = *(v2 + 24);
    v7[2](v7, 0);
    _Block_release(v7);
  }

  v8 = *(v4 + 8);

  return v8();
}

uint64_t sub_100009830(uint64_t a1)
{
  v2[55] = a1;
  v2[56] = v1;
  v3 = sub_100005814(&qword_1003D8A00, &qword_10033E730);
  v2[57] = v3;
  v2[58] = *(v3 - 8);
  v2[59] = swift_task_alloc();
  v4 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v2[60] = v4;
  v2[61] = *(v4 - 8);
  v2[62] = swift_task_alloc();

  return _swift_task_switch(sub_100009964, 0, 0);
}

uint64_t sub_100009964()
{
  v10 = v0;
  if (qword_1003D7F90 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[63] = sub_100008D04(v1, qword_1003FAB90);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_10021145C(0xD000000000000024, 0x800000010032C970, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s attempt to display misconfigured age prompt", v4, 0xCu);
    sub_10000839C(v5);
  }

  sub_100008DDC();
  v6 = swift_task_alloc();
  v0[64] = v6;
  *v6 = v0;
  v6[1] = sub_100009B78;
  v7 = v0[55];

  return sub_10000B7C0(v7);
}

uint64_t sub_100009B78(char a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 520) = v1;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 612) = a1 & 1;

    return _swift_task_switch(sub_100009CE0, 0, 0);
  }
}

uint64_t sub_100009CE0()
{
  v24 = v0;
  if (*(v0 + 612) == 1)
  {
    v1 = *(v0 + 440);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 440);
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v23 = v6;
      *v5 = 136315138;
      v7 = [v4 bundleID];
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v11 = sub_10021145C(v8, v10, &v23);

      *(v5 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v2, v3, "User have seen this alert before for bundleID %s", v5, 0xCu);
      sub_10000839C(v6);
    }

    v12 = *(v0 + 8);

    return v12(1);
  }

  else
  {
    v15 = *(v0 + 488);
    v14 = *(v0 + 496);
    v16 = *(v0 + 480);
    v17 = *(v0 + 448);
    v18 = OBJC_IVAR____TtC13appleaccountd25AgeMigrationDaemonService__accountStore;
    v19 = *(v15 + 16);
    *(v0 + 528) = v19;
    *(v0 + 536) = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v19(v14, v17 + v18, v16);
    Dependency.wrappedValue.getter();
    v20 = *(v15 + 8);
    *(v0 + 544) = v20;
    *(v0 + 552) = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v20(v14, v16);
    v21 = *(*sub_1000080F8((v0 + 272), *(v0 + 296)) + 16);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 392;
    *(v0 + 24) = sub_100009FF8;
    v22 = swift_continuation_init();
    *(v0 + 200) = sub_100005814(&qword_1003D89F0, &unk_10033E700);
    *(v0 + 144) = _NSConcreteStackBlock;
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_10015BF9C;
    *(v0 + 168) = &unk_1003A4560;
    *(v0 + 176) = v22;
    [v21 aa_primaryAppleAccountWithCompletion:v0 + 144];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_100009FF8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 560) = v1;
  if (v1)
  {
    v2 = sub_10000A9AC;
  }

  else
  {
    v2 = sub_10000A108;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000A108()
{
  v62 = v0;
  v1 = v0[49];
  v0[71] = v1;
  if (v1)
  {
    v2 = v0[68];
    v3 = v0[66];
    v4 = v0[62];
    v5 = v0[60];
    v6 = v0[56];
    sub_10000839C(v0 + 34);
    v7 = (v6 + OBJC_IVAR____TtC13appleaccountd25AgeMigrationDaemonService_personalInformationService);
    v8 = sub_1000080F8(v7, v7[3]);
    v3(v4, *v8 + OBJC_IVAR____TtC13appleaccountd29PersonalInformationController__accountStore, v5);
    Dependency.wrappedValue.getter();
    v2(v4, v5);
    v9 = [*(*sub_1000080F8(v0 + 39 v0[42]) + 16)];
    sub_10000839C(v0 + 39);
    if (v9)
    {
      v10 = [v9 aa_altDSID];

      if (v10)
      {
        v11 = v0[55];
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;

        v0[72] = v14;
        v15 = [v11 altDSID];
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        if (v12 == v16 && v14 == v18)
        {
        }

        else
        {
          v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v20 & 1) == 0)
          {

            v21 = Logger.logObject.getter();
            v22 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v21, v22))
            {
              v23 = swift_slowAlloc();
              *v23 = 0;
              v24 = "User not eligible for upgrade due to nonprimary account";
LABEL_35:
              _os_log_impl(&_mh_execute_header, v21, v22, v24, v23, 2u);

              goto LABEL_36;
            }

            goto LABEL_36;
          }
        }

        v33 = v0[65];
        sub_1000080F8(v7, v7[3]);
        v34 = sub_100321E88();
        if (v33)
        {

          goto LABEL_33;
        }

        if ((v34 & 1) == 0)
        {
LABEL_33:

          v21 = Logger.logObject.getter();
          v22 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v21, v22))
          {
            v23 = swift_slowAlloc();
            *v23 = 0;
            v24 = "Account is not eligible for migration";
            goto LABEL_35;
          }

LABEL_36:

          v56 = v0[1];

          return v56(4);
        }

        v35 = *(v0[56] + OBJC_IVAR____TtC13appleaccountd25AgeMigrationDaemonService_ageRangeSettingsProvider);
        v36 = [v35 ageRangeCache];
        if (v36 && (v37 = v36, v38 = [v36 ageRangeSettings], v37, v38))
        {
          v39 = [v38 u18Limit];

          v41 = v39 - 1;
          if (__OFSUB__(v39, 1))
          {
            __break(1u);
          }

          else
          {
            v42 = Logger.logObject.getter();
            v43 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v42, v43))
            {
              v44 = swift_slowAlloc();
              v45 = swift_slowAlloc();
              v61 = v45;
              *v44 = 136315138;
              *(v44 + 4) = sub_10021145C(0xD000000000000024, 0x800000010032C970, &v61);
              _os_log_impl(&_mh_execute_header, v42, v43, "%s attempt to display age misconfiguration prompt.", v44, 0xCu);
              sub_10000839C(v45);
            }

            v46 = v0[71];
            v48 = v0[58];
            v47 = v0[59];
            v49 = v0[57];
            (*(v48 + 16))(v47, v0[56] + OBJC_IVAR____TtC13appleaccountd25AgeMigrationDaemonService__ageMigrationAccountManager, v49);
            Dependency.wrappedValue.getter();
            (*(v48 + 8))(v47, v49);
            v40 = [v46 aa_firstName];
            if (v40)
            {
              v50 = v40;

              v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v53 = v52;

              v0[74] = v53;
              v54 = swift_task_alloc();
              v0[75] = v54;
              *v54 = v0;
              v54[1] = sub_10000ADA0;
              v55 = v0[55];

              return sub_10024211C(v55, v51, v53, v41);
            }
          }

          __break(1u);
        }

        else
        {
          v57 = Logger.logObject.getter();
          v58 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v57, v58))
          {
            v59 = swift_slowAlloc();
            *v59 = 0;
            _os_log_impl(&_mh_execute_header, v57, v58, "Age Provider is not cached... refreshing it now.", v59, 2u);
          }

          v0[10] = v0;
          v0[15] = v0 + 54;
          v0[11] = sub_10000AA34;
          v60 = swift_continuation_init();
          v0[33] = sub_100005814(&qword_1003D8A08, &qword_10033E738);
          v0[26] = _NSConcreteStackBlock;
          v0[27] = 1107296256;
          v0[28] = sub_10000B070;
          v0[29] = &unk_1003A4588;
          v0[30] = v60;
          [v35 refreshAgeRangeWithCompletion:v0 + 26];
          v40 = v0 + 10;
        }

        return _swift_continuation_await(v40);
      }
    }

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Not supported for non-primary apple account", v27, 2u);
    }

    type metadata accessor for AgeMigrationError(0);
    v0[53] = -5004;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10000DB94();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

  else
  {
    sub_10000839C(v0 + 34);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Not supported for not having an apple account", v30, 2u);
    }

    type metadata accessor for AgeMigrationError(0);
    v0[51] = -5004;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10000DB94();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

  v31 = v0[1];

  return v31();
}

uint64_t sub_10000A9AC(uint64_t a1)
{
  swift_willThrow();
  sub_10000839C((v1 + 272));

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_10000AA34()
{
  v1 = *(*v0 + 112);
  *(*v0 + 584) = v1;
  if (v1)
  {

    v2 = sub_10000AFE8;
  }

  else
  {
    v2 = sub_10000AB4C;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_10000AB4C()
{
  v20 = v0;
  v1 = v0[54];
  v2 = [v1 u18Limit];

  v3 = v2 - 1;
  if (__OFSUB__(v2, 1))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_10021145C(0xD000000000000024, 0x800000010032C970, &v19);
    _os_log_impl(&_mh_execute_header, v4, v5, "%s attempt to display age misconfiguration prompt.", v6, 0xCu);
    sub_10000839C(v7);
  }

  v8 = v0[71];
  v10 = v0[58];
  v9 = v0[59];
  v11 = v0[57];
  (*(v10 + 16))(v9, v0[56] + OBJC_IVAR____TtC13appleaccountd25AgeMigrationDaemonService__ageMigrationAccountManager, v11);
  Dependency.wrappedValue.getter();
  (*(v10 + 8))(v9, v11);
  v12 = [v8 aa_firstName];
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = v12;

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v0[74] = v16;
  v17 = swift_task_alloc();
  v0[75] = v17;
  *v17 = v0;
  v17[1] = sub_10000ADA0;
  v18 = v0[55];

  sub_10024211C(v18, v14, v16, v3);
}

uint64_t sub_10000ADA0(int a1)
{
  *(*v1 + 608) = a1;

  return _swift_task_switch(sub_10000AEC0, 0, 0);
}

uint64_t sub_10000AEC0()
{
  sub_10000839C((v0 + 352));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 608);
    v4 = *(v0 + 568);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v3;
    _os_log_impl(&_mh_execute_header, v1, v2, "user selected: %d", v5, 8u);
  }

  else
  {
    v6 = *(v0 + 568);

    v1 = v6;
  }

  v7 = *(v0 + 608);

  v8 = *(v0 + 8);

  return v8(v7);
}

uint64_t sub_10000AFE8(uint64_t a1)
{
  v2 = *(v1 + 568);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_10000B070(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_1000080F8((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
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

uint64_t sub_10000B2D4(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_10000B398;

  return sub_100009830(v5);
}

uint64_t sub_10000B398(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *(*v2 + 16);
  v7 = *v2;

  if (v1)
  {
    if (v5)
    {
      v8 = *(v4 + 32);
      v9 = _convertErrorToNSError(_:)();

      (v8)[2](v8, 0, v9);
      _Block_release(v8);
    }

    else
    {
    }
  }

  else if (v5)
  {
    v10 = *(v4 + 32);
    v10[2](v10, a1, 0);
    _Block_release(v10);
  }

  v11 = *(v7 + 8);

  return v11();
}

uint64_t sub_10000B6F0(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_10000EF58;

  return sub_10000DCB8();
}

uint64_t sub_10000B7C0(uint64_t a1)
{
  v2[27] = a1;
  v2[28] = v1;
  v3 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v2[29] = v3;
  v2[30] = *(v3 - 8);
  v2[31] = swift_task_alloc();

  return _swift_task_switch(sub_10000B88C, 0, 0);
}

uint64_t sub_10000B88C()
{
  v1 = v0;
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];
  (*(v1[30] + 16))(v1[31], v1[28] + OBJC_IVAR____TtC13appleaccountd25AgeMigrationDaemonService__accountStore, v1[29]);
  Dependency.wrappedValue.getter();
  (*(v3 + 8))(v2, v4);
  v5 = *(*sub_1000080F8(v1 + 18, v1[21]) + 16);
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_10000BA14;
  v6 = swift_continuation_init();
  v0[17] = sub_100005814(&qword_1003D89F0, &unk_10033E700);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10015BF9C;
  v0[13] = &unk_1003A4538;
  v0[14] = v6;
  [v5 aa_primaryAppleAccountWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10000BA14()
{
  v1 = *(*v0 + 48);
  *(*v0 + 256) = v1;
  if (v1)
  {
    v2 = sub_10000BF78;
  }

  else
  {
    v2 = sub_10000BB24;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000BB24()
{
  v32 = v0;
  v1 = *(v0 + 184);
  if (v1)
  {
    sub_10000839C((v0 + 144));
    v2 = [v1 aa_fetchUserAcknowledgementForAgeMigrationAlertForAllBundleIDs];
    if (v2)
    {
      v3 = v2;
      sub_100005814(&unk_1003DABD0, &qword_10033E720);
      v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v4 + 16))
      {
        v5 = [*(v0 + 216) bundleID];
        v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = v7;

        if (*(v4 + 16))
        {
          v9 = sub_1003084DC(v6, v8);
          v11 = v10;

          if (v11)
          {
            v12 = *(*(v4 + 56) + 8 * v9);

LABEL_16:

            if (qword_1003D7F90 != -1)
            {
              swift_once();
            }

            v20 = type metadata accessor for Logger();
            sub_100008D04(v20, qword_1003FAB90);

            v21 = Logger.logObject.getter();
            v22 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v21, v22))
            {
              v23 = swift_slowAlloc();
              v31[0] = swift_slowAlloc();
              *v23 = 136315394;
              if (v12)
              {
                v24 = 7562585;
              }

              else
              {
                v24 = 28494;
              }

              if (v12)
              {
                v25 = 0xE300000000000000;
              }

              else
              {
                v25 = 0xE200000000000000;
              }

              v26 = sub_10021145C(v24, v25, v31);

              *(v23 + 4) = v26;
              *(v23 + 12) = 2080;
              *(v0 + 208) = v12;
              sub_100005814(&qword_1003D89F8, &qword_10033E728);
              v27 = String.init<A>(describing:)();
              v29 = sub_10021145C(v27, v28, v31);

              *(v23 + 14) = v29;
              _os_log_impl(&_mh_execute_header, v21, v22, "User has seen alert in general. Did user see this for this bundle? %s, details %s", v23, 0x16u);
              swift_arrayDestroy();
            }

            else
            {
            }

            v19 = 1;
            goto LABEL_28;
          }
        }

        else
        {
        }

        v12 = 0;
        goto LABEL_16;
      }
    }

    v19 = 0;
LABEL_28:

    v17 = *(v0 + 8);
    v18 = v19;
    goto LABEL_29;
  }

  sub_10000839C((v0 + 144));
  if (qword_1003D7F90 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100008D04(v13, qword_1003FAB90);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Missing apple account", v16, 2u);
  }

  type metadata accessor for AgeMigrationError(0);
  *(v0 + 200) = -5004;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_10000DB94();
  _BridgedStoredNSError.init(_:userInfo:)();
  swift_willThrow();

  v17 = *(v0 + 8);
  v18 = 0;
LABEL_29:

  return v17(v18);
}

uint64_t sub_10000BF78(uint64_t a1)
{
  swift_willThrow();
  sub_10000839C((v1 + 144));

  v2 = *(v1 + 8);

  return v2(0);
}

uint64_t sub_10000C180(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_10000C244;

  return sub_10000B7C0(v5);
}

uint64_t sub_10000C244(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *(*v2 + 16);
  v7 = *v2;

  if (v1)
  {
    if (v5)
    {
      v8 = *(v4 + 32);
      v9 = _convertErrorToNSError(_:)();

      (v8)[2](v8, 0, v9);
      _Block_release(v8);
    }

    else
    {
    }
  }

  else if (v5)
  {
    v10 = *(v4 + 32);
    v10[2](v10, a1 & 1, 0);
    _Block_release(v10);
  }

  v11 = *(v7 + 8);

  return v11();
}

uint64_t sub_10000C410(uint64_t a1, int a2)
{
  *(v3 + 544) = a2;
  *(v3 + 424) = a1;
  *(v3 + 432) = v2;
  v4 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  *(v3 + 440) = v4;
  *(v3 + 448) = *(v4 - 8);
  *(v3 + 456) = swift_task_alloc();

  return _swift_task_switch(sub_10000C4E0, 0, 0);
}

uint64_t sub_10000C4E0()
{
  sub_100008DDC();
  v2 = v0[56];
  v1 = v0[57];
  v3 = v0[54];
  v4 = v0[55];
  v5 = OBJC_IVAR____TtC13appleaccountd25AgeMigrationDaemonService__accountStore;
  v0[58] = OBJC_IVAR____TtC13appleaccountd25AgeMigrationDaemonService__accountStore;
  v6 = *(v2 + 16);
  v0[59] = v6;
  v0[60] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v3 + v5, v4);
  Dependency.wrappedValue.getter();
  v7 = *(v2 + 8);
  v0[61] = v7;
  v0[62] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v4);
  v8 = *(*sub_1000080F8(v0 + 34, v0[37]) + 16);
  v0[2] = v0;
  v0[7] = v0 + 48;
  v0[3] = sub_10000C6E0;
  v9 = swift_continuation_init();
  v0[33] = sub_100005814(&qword_1003D89F0, &unk_10033E700);
  v0[26] = _NSConcreteStackBlock;
  v0[27] = 1107296256;
  v0[28] = sub_10015BF9C;
  v0[29] = &unk_1003A4510;
  v0[30] = v9;
  [v8 aa_primaryAppleAccountWithCompletion:v0 + 26];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10000C6E0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 504) = v1;
  if (v1)
  {
    v2 = sub_10000CF60;
  }

  else
  {
    v2 = sub_10000C7F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000C7F0()
{
  v52 = v0;
  v1 = *(v0 + 384);
  *(v0 + 512) = v1;
  if (!v1)
  {
    sub_10000839C((v0 + 272));
    if (qword_1003D7F90 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100008D04(v19, qword_1003FAB90);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Missing apple account", v22, 2u);
    }

    type metadata accessor for AgeMigrationError(0);
    *(v0 + 400) = -5004;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10000DB94();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    v18 = *(v0 + 8);
    goto LABEL_17;
  }

  v2 = *(v0 + 424);
  sub_10000839C((v0 + 272));
  v3 = [v2 bundleID];
  if (!v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = String._bridgeToObjectiveC()();
  }

  v4 = [v1 aa_fetchUserAcknowledgementForAgeMigrationAlertForBundleID:v3];

  if (v4)
  {
    v5 = *(v0 + 424);
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = [v5 bundleID];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (*(v6 + 16))
    {
      v11 = sub_1003084DC(v8, v10);
      v13 = v12;

      if (v13)
      {
        sub_10000DB1C(*(v6 + 56) + 32 * v11, v0 + 352);

        sub_10000DC50(v0 + 352);
        if (qword_1003D7F90 != -1)
        {
          swift_once();
        }

        v14 = type metadata accessor for Logger();
        sub_100008D04(v14, qword_1003FAB90);
        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 0;
          _os_log_impl(&_mh_execute_header, v15, v16, "User has seen this for this bundle, nothing to cache", v17, 2u);
        }

        v18 = *(v0 + 8);
LABEL_17:

        return v18();
      }
    }

    else
    {
    }

    *(v0 + 352) = 0u;
    *(v0 + 368) = 0u;
    sub_10000DC50(v0 + 352);
  }

  v24 = *(v0 + 544);
  sub_100005814(&unk_1003DB0A0, &qword_10033EC60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10033E5C0;
  *(inited + 32) = 0xD000000000000023;
  *(inited + 40) = 0x800000010032C8E0;
  *(inited + 48) = v24;
  *(inited + 72) = &type metadata for Int32;
  *(inited + 80) = 0xD000000000000021;
  *(inited + 88) = 0x800000010032C910;
  *(inited + 120) = type metadata accessor for Date();
  sub_10000DBEC((inited + 96));
  Date.init()();
  sub_100308978(inited);
  swift_setDeallocating();
  sub_100005814(&qword_1003DB0B0, &unk_10033E710);
  swift_arrayDestroy();
  if (qword_1003D7F90 != -1)
  {
    swift_once();
  }

  v26 = *(v0 + 424);
  v27 = type metadata accessor for Logger();
  *(v0 + 520) = sub_100008D04(v27, qword_1003FAB90);
  v28 = v26;

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = *(v0 + 424);
    v32 = swift_slowAlloc();
    v51[0] = swift_slowAlloc();
    *v32 = 136315394;
    v33 = [v31 bundleID];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    v37 = sub_10021145C(v34, v36, v51);

    *(v32 + 4) = v37;
    *(v32 + 12) = 2080;
    v38 = Dictionary.description.getter();
    v40 = sub_10021145C(v38, v39, v51);

    *(v32 + 14) = v40;
    _os_log_impl(&_mh_execute_header, v29, v30, "Saving user action for bundle %s with actionDateToSave %s", v32, 0x16u);
    swift_arrayDestroy();
  }

  v50 = v1;
  v41 = [*(v0 + 424) bundleID];
  if (!v41)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = String._bridgeToObjectiveC()();
  }

  v49 = *(v0 + 488);
  v42 = *(v0 + 472);
  v44 = *(v0 + 456);
  v43 = *(v0 + 464);
  v46 = *(v0 + 432);
  v45 = *(v0 + 440);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v50 aa_saveUserAcknowledgementForAgeMigrationAlertForBundleID:v41 actionDetails:isa];

  v42(v44, v46 + v43, v45);
  Dependency.wrappedValue.getter();
  v49(v44, v45);
  sub_1000080F8((v0 + 312), *(v0 + 336));
  v48 = swift_task_alloc();
  *(v0 + 528) = v48;
  *v48 = v0;
  v48[1] = sub_10000CFDC;

  return sub_10015B998(v50);
}

uint64_t sub_10000CF60(uint64_t a1)
{
  swift_willThrow();
  sub_10000839C((v1 + 272));

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_10000CFDC(char a1)
{
  v4 = *v2;
  *(*v2 + 536) = v1;

  if (v1)
  {
    v5 = sub_10000D270;
  }

  else
  {
    *(v4 + 548) = a1 & 1;
    v5 = sub_10000D108;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10000D108()
{
  v1 = *(v0 + 548);
  sub_10000839C((v0 + 312));
  if (v1)
  {

    v2 = *(v0 + 8);
  }

  else
  {
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Failed to save account property for user acknowledgment of misconfigured age prompt", v5, 2u);
    }

    v6 = *(v0 + 512);

    type metadata accessor for AgeMigrationError(0);
    *(v0 + 416) = -5005;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10000DB94();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    v2 = *(v0 + 8);
  }

  return v2();
}

uint64_t sub_10000D270()
{
  sub_10000839C((v0 + 312));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000D478(void *a1, int a2, void *aBlock, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = a1;

  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_10000D544;

  return sub_10000C410(v7, a2);
}

uint64_t sub_10000D544()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 16);
  v5 = *v1;

  if (v0)
  {
    if (v3)
    {
      v6 = *(v2 + 32);
      v7 = _convertErrorToNSError(_:)();

      (v6)[2](v6, v7);
      _Block_release(v6);
    }

    else
    {
    }
  }

  else if (v3)
  {
    v8 = *(v2 + 32);
    v8[2](v8, 0);
    _Block_release(v8);
  }

  v9 = *(v5 + 8);

  return v9();
}

uint64_t sub_10000D704()
{
  v1 = OBJC_IVAR____TtC13appleaccountd25AgeMigrationDaemonService__ageMigrationAccountManager;
  v2 = sub_100005814(&qword_1003D8A00, &qword_10033E730);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd25AgeMigrationDaemonService__akAccountManager;
  v4 = sub_100005814(&unk_1003E1260, &qword_10033FBA0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd25AgeMigrationDaemonService__accountStore;
  v6 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  sub_10000839C((v0 + OBJC_IVAR____TtC13appleaccountd25AgeMigrationDaemonService_personalInformationService));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AgeMigrationDaemonService(uint64_t a1)
{
  result = qword_1003D8878;
  if (!qword_1003D8878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000D8C0(uint64_t a1)
{
  sub_10000DAB8(319, &unk_1003D8888, &qword_1003DF6C0, &unk_10033E6D0);
  if (v1 <= 0x3F)
  {
    sub_10000DA14(319);
    if (v2 <= 0x3F)
    {
      sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10000DA14(uint64_t a1)
{
  if (!qword_1003DB710)
  {
    sub_10000DA6C();
    v1 = type metadata accessor for Dependency();
    if (!v2)
    {
      atomic_store(v1, &qword_1003DB710);
    }
  }
}

unint64_t sub_10000DA6C()
{
  result = qword_1003DF5C0;
  if (!qword_1003DF5C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003DF5C0);
  }

  return result;
}

void sub_10000DAB8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100008CBC(a3, a4);
    v5 = type metadata accessor for Dependency();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_10000DB1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_10000DB94()
{
  result = qword_1003D8248;
  if (!qword_1003D8248)
  {
    type metadata accessor for AgeMigrationError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D8248);
  }

  return result;
}

uint64_t *sub_10000DBEC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10000DC50(uint64_t a1)
{
  v2 = sub_100005814(&qword_1003D87C8, qword_100344800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000DCB8()
{
  v1[31] = v0;
  v2 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v1[32] = v2;
  v1[33] = *(v2 - 8);
  v1[34] = swift_task_alloc();

  return _swift_task_switch(sub_10000DD84, 0, 0);
}

uint64_t sub_10000DD84()
{
  sub_100008DDC();
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[31];
  v4 = v0[32];
  v5 = OBJC_IVAR____TtC13appleaccountd25AgeMigrationDaemonService__accountStore;
  v0[35] = OBJC_IVAR____TtC13appleaccountd25AgeMigrationDaemonService__accountStore;
  v6 = *(v2 + 16);
  v0[36] = v6;
  v0[37] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v3 + v5, v4);
  Dependency.wrappedValue.getter();
  v7 = *(v2 + 8);
  v0[38] = v7;
  v0[39] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v4);
  v8 = *(*sub_1000080F8(v0 + 18, v0[21]) + 16);
  v0[2] = v0;
  v0[7] = v0 + 28;
  v0[3] = sub_10000DF84;
  v9 = swift_continuation_init();
  v0[17] = sub_100005814(&qword_1003D89F0, &unk_10033E700);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10015BF9C;
  v0[13] = &unk_1003A4718;
  v0[14] = v9;
  [v8 aa_primaryAppleAccountWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10000DF84()
{
  v1 = *(*v0 + 48);
  *(*v0 + 320) = v1;
  if (v1)
  {
    v2 = sub_10000E3E4;
  }

  else
  {
    v2 = sub_10000E094;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000E094()
{
  v1 = v0[28];
  v0[41] = v1;
  if (v1)
  {
    v2 = v0[38];
    v3 = v0[36];
    v4 = v0[34];
    v5 = v0[35];
    v7 = v0[31];
    v6 = v0[32];
    sub_10000839C(v0 + 18);
    [v1 aa_clearUserAcknowledgeMigrationAlertForAllBundles];
    v3(v4, v7 + v5, v6);
    Dependency.wrappedValue.getter();
    v2(v4, v6);
    sub_1000080F8(v0 + 23, v0[26]);
    v8 = swift_task_alloc();
    v0[42] = v8;
    *v8 = v0;
    v8[1] = sub_10000E2B8;

    return sub_10015B998(v1);
  }

  else
  {
    sub_10000839C(v0 + 18);
    if (qword_1003D7F90 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100008D04(v10, qword_1003FAB90);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "missing apple account", v13, 2u);
    }

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_10000E2B8(char a1)
{
  v4 = *v2;
  *(*v2 + 344) = v1;

  if (v1)
  {
    v5 = sub_10000E60C;
  }

  else
  {
    *(v4 + 352) = a1 & 1;
    v5 = sub_10000E460;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10000E3E4(uint64_t a1)
{
  swift_willThrow();
  sub_10000839C((v1 + 144));

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_10000E460()
{
  v1 = *(v0 + 352);
  sub_10000839C((v0 + 184));
  if (v1)
  {

    v2 = *(v0 + 8);
  }

  else
  {
    if (qword_1003D7F90 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100008D04(v3, qword_1003FAB90);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Failed to save account when clearing user acknowledge migration prompt", v6, 2u);
    }

    v7 = *(v0 + 328);

    type metadata accessor for AgeMigrationError(0);
    *(v0 + 240) = -5005;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10000DB94();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    v2 = *(v0 + 8);
  }

  return v2();
}

uint64_t sub_10000E60C()
{
  sub_10000839C((v0 + 184));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000E680(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = [a1 aa_fetchUserAcknowledgementForAgeMigrationAlertForBundleID:v6];

  if (v7)
  {
    v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (qword_1003D7F90 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100008D04(v9, qword_1003FAB90);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v20[0] = swift_slowAlloc();
      *v12 = 136315394;
      *(v12 + 4) = sub_10021145C(a2, a3, v20);
      *(v12 + 12) = 2080;
      v13 = Dictionary.description.getter();
      v15 = sub_10021145C(v13, v14, v20);

      *(v12 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v10, v11, "User has seen alert in general. Did user see this for this bundle %s with detail %s", v12, 0x16u);
      swift_arrayDestroy();
    }

    if (*(v8 + 16) && (v16 = sub_1003084DC(0xD000000000000023, 0x800000010032C8E0), (v17 & 1) != 0))
    {
      sub_10000DB1C(*(v8 + 56) + 32 * v16, v20);

      if (swift_dynamicCast())
      {
        return v19;
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_10000E908()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10000E950()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000EF88;

  return sub_10000D478(v2, v3, v5, v4);
}

uint64_t sub_10000EA14()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000EF88;

  return sub_100164750(v2, v3, v4);
}

uint64_t sub_10000EAD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000EF88;

  return sub_10015C884(a1, v4, v5, v6);
}

uint64_t sub_10000EBA4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000EF88;

  return sub_10000C180(v2, v3, v4);
}

uint64_t sub_10000EC58()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000EF88;

  return sub_10000B6F0(v2, v3, v4);
}

uint64_t sub_10000ED0C()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10000ED54()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000082A8;

  return sub_10000B2D4(v2, v3, v4);
}

uint64_t sub_10000EE08()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10000EE48()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000EF88;

  return sub_1000095E8(v2, v3);
}

uint64_t sub_10000EEF8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48);
}

void sub_10000EF8C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(), uint64_t a5)
{
  v11 = [*(*sub_1000080F8((v5 + 16) *(v5 + 40)) + 16)];
  if (v11)
  {
    v16 = v11;
    sub_10000F188(a1, v11, a2, a3, a4, a5);
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100008D04(v12, qword_1003FAA40);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Not logged in to AppleAccount, unable to perform cleanup", v15, 2u);
    }

    type metadata accessor for AACustodianError(0);
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100012490(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    a4();
  }
}

void sub_10000F188(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v51 = a5;
  v52 = a6;
  v54 = a3;
  v55 = a4;
  v47 = a2;
  v53 = a1;
  v8 = type metadata accessor for CustodianRecord(0);
  v49 = *(v8 - 8);
  v9 = *(v49 + 64);
  v10 = __chkstk_darwin(v8);
  v50 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v47 - v11;
  v13 = kAAAnalyticsEventCustodianSetupCleanupRevokeCustodianFromServer;
  v14 = *(*sub_1000080F8(v7 + 2, v7[5]) + 16);
  v15 = v13;
  v16 = [v14 aa_primaryAppleAccount];
  if (v16 && (v17 = v16, v18 = [v16 aa_altDSID], v17, v18))
  {
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  sub_100012004();
  v22 = v55;

  v48 = sub_100245D38(v15, v19, v21, v54, v22);
  v23 = [objc_allocWithZone(AKCustodianContext) init];
  v24 = [v47 aa_altDSID];
  [v23 setAltDSID:v24];

  v25 = v53;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v23 setCustodianUUID:isa];

  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_100008D04(v27, qword_1003FAA88);
  sub_100012050(v25, v12);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v56 = v31;
    *v30 = 136315138;
    type metadata accessor for UUID();
    sub_100012490(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    sub_1000120B4(v12);
    v35 = sub_10021145C(v32, v34, &v56);

    *(v30 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v28, v29, "Revoke from IdMS %s", v30, 0xCu);
    sub_10000839C(v31);

    v25 = v53;
  }

  else
  {

    sub_1000120B4(v12);
  }

  sub_1000080F8(v7 + 12, v7[15]);
  v36 = v50;
  sub_100012050(v25, v50);
  v37 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v38 = (v9 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + 23) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v41 = v48;
  *(v40 + 16) = v48;
  *(v40 + 24) = v7;
  sub_100012378(v36, v40 + v37);
  v42 = (v40 + v38);
  v43 = v55;
  *v42 = v54;
  v42[1] = v43;
  v44 = (v40 + v39);
  v45 = v52;
  *v44 = v51;
  v44[1] = v45;
  v46 = v41;

  sub_10011A0A4(v23, sub_1000123DC, v40);
}

uint64_t sub_10000F618()
{
  sub_10000839C(v0 + 2);
  sub_10000839C(v0 + 7);
  sub_10000839C(v0 + 12);
  sub_10000839C(v0 + 17);
  v1 = OBJC_IVAR____TtC13appleaccountd26CustodianCleanupController__analyticsReporter;
  v2 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v2 - 8) + 8))(&v0[v1], v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CustodianCleanupController(uint64_t a1)
{
  result = qword_1003D8A40;
  if (!qword_1003D8A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000F734(uint64_t a1)
{
  sub_10000F7D4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10000F7D4(uint64_t a1)
{
  if (!qword_1003D8A50[0])
  {
    sub_100008CBC(&qword_1003D9AE0, &qword_10033E8A0);
    v1 = type metadata accessor for Dependency();
    if (!v2)
    {
      atomic_store(v1, qword_1003D8A50);
    }
  }
}

void sub_10000F838(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = a7;
  v34 = a8;
  v14 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v32 - v16;
  if (a2)
  {
    if (a1)
    {
      v18 = _convertErrorToNSError(_:)();
    }

    else
    {
      v18 = 0;
    }

    [a2 updateTaskResultWithError:v18];
  }

  (*(v15 + 16))(v17, a3 + OBJC_IVAR____TtC13appleaccountd26CustodianCleanupController__analyticsReporter, v14);
  Dependency.wrappedValue.getter();
  (*(v15 + 8))(v17, v14);
  swift_getObjectType();
  sub_100246FA8(a2);
  swift_unknownObjectRelease();
  if (!a1)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100008D04(v25, qword_1003FAA88);
    v20 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v20, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v20, v26, "idMS revoke successful", v27, 2u);
    }

    goto LABEL_15;
  }

  swift_errorRetain();
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100008D04(v19, qword_1003FAA88);
  swift_errorRetain();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    v24 = _convertErrorToNSError(_:)();
    *(v22 + 4) = v24;
    *v23 = v24;
    _os_log_impl(&_mh_execute_header, v20, v21, "Error revoking with idMS: %@", v22, 0xCu);
    sub_100008D3C(v23, &unk_1003D9140, &qword_10033E640);

LABEL_15:

    goto LABEL_17;
  }

LABEL_17:
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_100008D04(v28, qword_1003FAA88);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "Continuing to Remove CRK on OT", v31, 2u);
  }

  sub_10000FC68(a4, a5, a6, v33, v34);
}

void sub_10000FC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v56 = a4;
  v57 = a5;
  v51 = type metadata accessor for CustodianRecord(0);
  v53 = *(v51 - 8);
  v10 = *(v53 + 64);
  v11 = __chkstk_darwin(v51);
  v54 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v48 - v12;
  v14 = [*(*sub_1000080F8((v5 + 16) *(v5 + 40)) + 16)];
  if (v14 && (v15 = v14, v16 = [v14 aa_altDSID], v15, v16))
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  sub_100012004();
  v20 = kAAAnalyticsEventCustodianSetupCleanupDeleteRecoveryKeyByCustodianIDFromSecurity;

  v21 = v20;

  v52 = v17;
  v55 = a2;
  v49 = sub_100245D38(v21, v17, v19, a2, a3);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v50 = v19;
  v58 = a3;
  v22 = type metadata accessor for Logger();
  sub_100008D04(v22, qword_1003FAA88);
  sub_100012050(a1, v13);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v48 = a1;
    v26 = v25;
    v27 = swift_slowAlloc();
    v59 = v27;
    *v26 = 136315138;
    v28 = v51;
    type metadata accessor for UUID();
    sub_100012490(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    sub_1000120B4(v13);
    v32 = sub_10021145C(v29, v31, &v59);

    *(v26 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v23, v24, "Removing CRK for custodianID: %s", v26, 0xCu);
    sub_10000839C(v27);

    a1 = v48;
  }

  else
  {

    sub_1000120B4(v13);
    v28 = v51;
  }

  sub_1000080F8((v6 + 136), *(v6 + 160));
  v51 = *(v28 + 20);
  v33 = a1;
  v34 = v54;
  sub_100012050(a1, v54);
  v35 = (*(v53 + 80) + 32) & ~*(v53 + 80);
  v36 = (v10 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v36 + 23) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  v39 = v49;
  *(v38 + 16) = v49;
  *(v38 + 24) = v6;
  sub_100012378(v34, v38 + v35);
  v40 = (v38 + v36);
  v41 = v50;
  *v40 = v52;
  v40[1] = v41;
  v42 = (v38 + v37);
  v43 = v56;
  v45 = v57;
  v44 = v58;
  *v42 = v55;
  v42[1] = v44;
  v46 = (v38 + ((v37 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v46 = v43;
  v46[1] = v45;
  v47 = v39;

  sub_1000172AC(v33 + v51, sub_100012700, v38);
}

void sub_1000100C0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *, uint64_t), void *a6, uint64_t a7, uint64_t a8, char *a9, char *a10)
{
  v117 = a7;
  v106 = a5;
  v107 = a6;
  v122 = a3;
  v14 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  __chkstk_darwin(v14 - 8);
  v113 = &v101 - v15;
  v16 = type metadata accessor for UUID();
  v116 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v112 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v114 = &v101 - v20;
  v111 = v21;
  __chkstk_darwin(v19);
  v121 = &v101 - v22;
  v120 = type metadata accessor for CustodianRecord(0);
  v108 = *(v120 - 8);
  v23 = __chkstk_darwin(v120);
  v110 = &v101 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v115 = &v101 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = &v101 - v28;
  v109 = v30;
  __chkstk_darwin(v27);
  v32 = &v101 - v31;
  v33 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v101 - v35;
  v119 = a4;
  if (a2)
  {
    if (a1)
    {
      v37 = _convertErrorToNSError(_:)();
    }

    else
    {
      v37 = 0;
    }

    [a2 updateTaskResultWithError:v37];

    a4 = v119;
  }

  (*(v34 + 16))(v36, v122 + OBJC_IVAR____TtC13appleaccountd26CustodianCleanupController__analyticsReporter, v33);
  Dependency.wrappedValue.getter();
  (*(v34 + 8))(v36, v33);
  swift_getObjectType();
  sub_100246FA8(a2);
  swift_unknownObjectRelease();
  v118 = a8;
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_100008D04(v38, qword_1003FAA88);
    sub_100012050(a4, v29);
    swift_errorRetain();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v39, v40))
    {

      sub_1000120B4(v29);
      v50 = v16;
      v62 = v115;
      v61 = v116;
      v63 = v113;
      v64 = v114;
      v51 = v120;
      goto LABEL_19;
    }

    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v123[0] = v43;
    *v41 = 136315394;
    sub_100012490(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v44 = dispatch thunk of CustomStringConvertible.description.getter();
    v46 = v45;
    sub_1000120B4(v29);
    v47 = sub_10021145C(v44, v46, v123);
    v48 = v120;

    *(v41 + 4) = v47;
    *(v41 + 12) = 2112;
    swift_errorRetain();
    v49 = _swift_stdlib_bridgeErrorToNSError();
    *(v41 + 14) = v49;
    *v42 = v49;
    _os_log_impl(&_mh_execute_header, v39, v40, "Error removing CRK for custodianID: %s %@", v41, 0x16u);
    sub_100008D3C(v42, &unk_1003D9140, &qword_10033E640);
    a4 = v119;

    sub_10000839C(v43);

    v50 = v16;

    v51 = v48;
  }

  else
  {
    v51 = v120;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_100008D04(v52, qword_1003FAA88);
    sub_100012050(a4, v32);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.debug.getter();
    v50 = v16;
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v123[0] = v56;
      *v55 = 136315138;
      sub_100012490(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v57 = dispatch thunk of CustomStringConvertible.description.getter();
      v59 = v58;
      sub_1000120B4(v32);
      v60 = sub_10021145C(v57, v59, v123);
      v51 = v120;

      *(v55 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v53, v54, "Success removing CRK for custodianID: %s", v55, 0xCu);
      sub_10000839C(v56);
    }

    else
    {

      sub_1000120B4(v32);
    }

    a4 = v119;
  }

  v62 = v115;
  v61 = v116;
  v63 = v113;
  v64 = v114;
LABEL_19:
  sub_100012D04(a4 + *(v51 + 64), v63, &qword_1003D8B60, &unk_10033F210);
  v65 = (*(v61 + 48))(v63, 1, v50);
  v66 = v121;
  if (v65 == 1)
  {
    sub_100008D3C(v63, &qword_1003D8B60, &unk_10033F210);
    sub_1000114D0(a4 + *(v51 + 20), v117, v118, a9, a10);
  }

  else
  {
    v113 = a9;
    v114 = a10;
    v104 = *(v61 + 32);
    v105 = v61 + 32;
    v104(v121, v63, v50);
    sub_100012004();
    v67 = kAAAnalyticsEventCustodianSetupCleanupDeleteRecoveryKeyByOctagonIDFromSecurity;
    v68 = v118;

    v69 = v67;
    v70 = v107;

    v107 = sub_100245D38(v69, v106, v70, v117, v68);
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v71 = type metadata accessor for Logger();
    sub_100008D04(v71, qword_1003FAA88);
    v103 = *(v61 + 16);
    v103(v64, v66, v50);
    sub_100012050(a4, v62);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = v64;
      v75 = swift_slowAlloc();
      v123[0] = swift_slowAlloc();
      *v75 = 136315394;
      sub_100012490(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v76 = dispatch thunk of CustomStringConvertible.description.getter();
      v78 = v77;
      v79 = *(v116 + 8);
      v102 = (v116 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v106 = v79;
      v79(v74, v50);
      v80 = sub_10021145C(v76, v78, v123);
      a4 = v119;

      *(v75 + 4) = v80;
      *(v75 + 12) = 2080;
      v81 = v115;
      v82 = dispatch thunk of CustomStringConvertible.description.getter();
      v84 = v83;
      sub_1000120B4(v81);
      v85 = sub_10021145C(v82, v84, v123);
      v61 = v116;

      *(v75 + 14) = v85;
      _os_log_impl(&_mh_execute_header, v72, v73, "Removing CRK for otPeerID:%s for custodian:%s", v75, 0x16u);
      swift_arrayDestroy();
      v66 = v121;
    }

    else
    {

      sub_1000120B4(v62);
      v86 = *(v61 + 8);
      v102 = (v61 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v106 = v86;
      v86(v64, v50);
    }

    v87 = v122;
    v120 = sub_1000080F8((v122 + 136), *(v122 + 160));
    v88 = v112;
    v103(v112, v66, v50);
    v89 = v110;
    sub_100012050(a4, v110);
    v90 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v91 = (v111 + *(v108 + 80) + v90) & ~*(v108 + 80);
    v92 = (v109 + v91 + 7) & 0xFFFFFFFFFFFFFFF8;
    v93 = swift_allocObject();
    v94 = v107;
    *(v93 + 16) = v107;
    *(v93 + 24) = v87;
    v104(v93 + v90, v88, v50);
    sub_100012378(v89, v93 + v91);
    v95 = (v93 + v92);
    v96 = v118;
    *v95 = v117;
    v95[1] = v96;
    v97 = (v93 + ((v92 + 23) & 0xFFFFFFFFFFFFFFF8));
    v98 = v114;
    *v97 = v113;
    v97[1] = v98;
    v99 = v94;

    v100 = v121;
    sub_1000172AC(v121, sub_100012A2C, v93);

    v106(v100, v50);
  }
}

void sub_100010CC8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v78 = a7;
  v79 = a8;
  v77 = a6;
  v75 = a9;
  v74 = type metadata accessor for CustodianRecord(0);
  v13 = __chkstk_darwin(v74);
  v72 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v69 - v15;
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v71 = (&v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v73 = &v69 - v21;
  v22 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v26 = &v69 - v25;
  if (a2)
  {
    v76 = a4;
    v70 = v16;
    v27 = v18;
    v28 = v17;
    v29 = a5;
    v30 = v24;
    if (a1)
    {
      v31 = _convertErrorToNSError(_:)();
    }

    else
    {
      a1 = 0;
      v31 = 0;
    }

    [a2 updateTaskResultWithError:v31];

    v24 = v30;
    a5 = v29;
    v17 = v28;
    v18 = v27;
    v16 = v70;
    a4 = v76;
  }

  v32 = *(v23 + 16);
  v76 = v24;
  v32(v26, v24 + OBJC_IVAR____TtC13appleaccountd26CustodianCleanupController__analyticsReporter, v22);
  Dependency.wrappedValue.getter();
  (*(v23 + 8))(v26, v22);
  swift_getObjectType();
  sub_100246FA8(a2);
  swift_unknownObjectRelease();
  if (!a1)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    sub_100008D04(v54, qword_1003FAA88);
    v55 = v71;
    (*(v18 + 16))(v71, a4, v17);
    v73 = a5;
    v56 = v72;
    sub_100012050(a5, v72);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *v59 = 136315394;
      sub_100012490(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v55;
      v63 = v62;
      (*(v18 + 8))(v61, v17);
      v64 = sub_10021145C(v60, v63, &v80);

      *(v59 + 4) = v64;
      *(v59 + 12) = 2080;
      v44 = v74;
      v65 = dispatch thunk of CustomStringConvertible.description.getter();
      v67 = v66;
      sub_1000120B4(v56);
      v68 = sub_10021145C(v65, v67, &v80);

      *(v59 + 14) = v68;
      _os_log_impl(&_mh_execute_header, v57, v58, "Success removing CRK for otPeerID:%s for custodian:%s", v59, 0x16u);
      swift_arrayDestroy();

      a5 = v73;
      goto LABEL_18;
    }

    sub_1000120B4(v56);
    (*(v18 + 8))(v55, v17);
    a5 = v73;
LABEL_17:
    v44 = v74;
    goto LABEL_18;
  }

  swift_errorRetain();
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_100008D04(v33, qword_1003FAA88);
  v34 = v73;
  (*(v18 + 16))(v73, a4, v17);
  sub_100012050(a5, v16);
  swift_errorRetain();
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v35, v36))
  {

    sub_1000120B4(v16);
    (*(v18 + 8))(v34, v17);
    goto LABEL_17;
  }

  v37 = v17;
  v38 = swift_slowAlloc();
  v71 = swift_slowAlloc();
  v72 = swift_slowAlloc();
  v80 = v72;
  *v38 = 136315650;
  sub_100012490(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  LODWORD(v70) = v36;
  v39 = dispatch thunk of CustomStringConvertible.description.getter();
  v40 = v34;
  v42 = v41;
  (*(v18 + 8))(v40, v37);
  v43 = sub_10021145C(v39, v42, &v80);

  *(v38 + 4) = v43;
  *(v38 + 12) = 2080;
  v44 = v74;
  v45 = dispatch thunk of CustomStringConvertible.description.getter();
  v46 = v16;
  v48 = v47;
  sub_1000120B4(v46);
  v49 = sub_10021145C(v45, v48, &v80);
  v50 = a5;
  v51 = v49;

  *(v38 + 14) = v51;
  a5 = v50;
  *(v38 + 22) = 2112;
  swift_errorRetain();
  v52 = _swift_stdlib_bridgeErrorToNSError();
  *(v38 + 24) = v52;
  v53 = v71;
  *v71 = v52;
  _os_log_impl(&_mh_execute_header, v35, v70, "Error removing CRK for otPeerID:%s for custodian:%s %@", v38, 0x20u);
  sub_100008D3C(v53, &unk_1003D9140, &qword_10033E640);

  swift_arrayDestroy();

LABEL_18:
  sub_1000114D0(&a5[*(v44 + 20)], v77, v78, v79, v75);
}

void sub_1000114D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51 = a4;
  v52 = a5;
  v53 = a1;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v50 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v11;
  __chkstk_darwin(v10);
  v13 = &v45 - v12;
  v14 = kAAAnalyticsEventCustodianSetupCleanupDeleteCustodianshipRecordFromCloud;
  v15 = *(v5 + 40);
  v49 = v5;
  v16 = *(*sub_1000080F8((v5 + 16), v15) + 16);
  v17 = v14;
  v18 = [v16 aa_primaryAppleAccount];
  if (v18 && (v19 = v18, v20 = [v18 aa_altDSID], v19, v20))
  {
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  sub_100012004();

  v47 = sub_100245D38(v17, v21, v23, a2, a3);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100008D04(v24, qword_1003FAA88);
  v25 = *(v9 + 16);
  v25(v13, v53, v8);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v46 = v25;
    v30 = v29;
    v54 = v29;
    *v28 = 136315138;
    sub_100012490(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    (*(v9 + 8))(v13, v8);
    v34 = sub_10021145C(v31, v33, &v54);

    *(v28 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v26, v27, "Deleting Custodianship records for %s", v28, 0xCu);
    sub_10000839C(v30);
    v25 = v46;
  }

  else
  {

    (*(v9 + 8))(v13, v8);
  }

  sub_1000080F8((v49 + 56), *(v49 + 80));
  v35 = swift_allocObject();
  swift_weakInit();
  v36 = v50;
  v37 = v53;
  v25(v50, v53, v8);
  v38 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v39 = (v48 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v41 = v47;
  *(v40 + 16) = v47;
  *(v40 + 24) = v35;
  (*(v9 + 32))(v40 + v38, v36, v8);
  v42 = (v40 + v39);
  v43 = v52;
  *v42 = v51;
  v42[1] = v43;
  v44 = v41;

  sub_10002F408(v37, sub_100012C60, v40);
}

uint64_t sub_10001194C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v53 = a6;
  v54 = a5;
  v50 = a4;
  v8 = type metadata accessor for UUID();
  v51 = *(v8 - 8);
  v52 = v8;
  v9 = __chkstk_darwin(v8);
  v49 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v49 - v11;
  v13 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  __chkstk_darwin(v13);
  v15 = (&v49 - v14);
  v16 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v49 - v18;
  if (a2)
  {
    sub_1000D2578(a1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v17 + 16))(v19, Strong + OBJC_IVAR____TtC13appleaccountd26CustodianCleanupController__analyticsReporter, v16);
    Dependency.wrappedValue.getter();

    (*(v17 + 8))(v19, v16);
    swift_getObjectType();
    sub_100246FA8(a2);
    swift_unknownObjectRelease();
  }

  sub_100012D04(a1, v15, &unk_1003D9220, &unk_10033E8C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v15;
    v23 = v51;
    v22 = v52;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100008D04(v24, qword_1003FAA88);
    v25 = v49;
    (*(v23 + 16))(v49, v50, v22);
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v55 = v30;
      *v28 = 136315394;
      sub_100012490(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v25;
      v34 = v33;
      (*(v23 + 8))(v32, v22);
      v35 = sub_10021145C(v31, v34, &v55);

      *(v28 + 4) = v35;
      *(v28 + 12) = 2112;
      v36 = _convertErrorToNSError(_:)();
      *(v28 + 14) = v36;
      *v29 = v36;
      _os_log_impl(&_mh_execute_header, v26, v27, "Error deleting custodianship records for %s %@", v28, 0x16u);
      sub_100008D3C(v29, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v30);
    }

    else
    {

      (*(v23 + 8))(v25, v22);
    }

    swift_errorRetain();
    v54(v21);
  }

  else
  {
    v38 = v51;
    v37 = v52;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_100008D04(v39, qword_1003FAA88);
    (*(v38 + 16))(v12, v50, v37);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v55 = v43;
      *v42 = 136315138;
      sub_100012490(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v45;
      (*(v38 + 8))(v12, v37);
      v47 = sub_10021145C(v44, v46, &v55);

      *(v42 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v40, v41, "Deleted Custodianship records for %s", v42, 0xCu);
      sub_10000839C(v43);
    }

    else
    {

      (*(v38 + 8))(v12, v37);
    }

    v54(0);
    return sub_100008D3C(v15, &unk_1003D9220, &unk_10033E8C0);
  }
}

unint64_t sub_100012004()
{
  result = qword_1003D8B40;
  if (!qword_1003D8B40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003D8B40);
  }

  return result;
}

uint64_t sub_100012050(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustodianRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000120B4(uint64_t a1)
{
  v2 = type metadata accessor for CustodianRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100012110()
{
  v1 = type metadata accessor for CustodianRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v2, v5);
  v7(v0 + v2 + v1[5], v5);

  v8 = (v0 + v2 + v1[10]);
  v9 = v8[1];
  if (v9 >> 60 != 15)
  {
    sub_100012324(*v8, v9);
  }

  sub_100012324(*(v4 + v1[11]), *(v4 + v1[11] + 8));

  v10 = v1[16];
  if (!(*(v6 + 48))(v4 + v10, 1, v5))
  {
    v7(v4 + v10, v5);
  }

  return _swift_deallocObject(v0, ((((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_100012324(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100012378(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustodianRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1000123DC(uint64_t a1)
{
  v3 = *(type metadata accessor for CustodianRecord(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + v5);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v1 + v6);
  v13 = *(v1 + v6 + 8);

  sub_10000F838(a1, v7, v8, v1 + v4, v10, v11, v12, v13);
}

uint64_t sub_100012490(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000124D8()
{
  v1 = type metadata accessor for CustodianRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v2, v5);
  v7(v0 + v2 + v1[5], v5);

  v8 = (v0 + v2 + v1[10]);
  v9 = v8[1];
  if (v9 >> 60 != 15)
  {
    sub_100012324(*v8, v9);
  }

  sub_100012324(*(v4 + v1[11]), *(v4 + v1[11] + 8));

  v10 = v1[16];
  if (!(*(v6 + 48))(v4 + v10, 1, v5))
  {
    v7(v4 + v10, v5);
  }

  return _swift_deallocObject(v0, ((((((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
}

void sub_100012700(uint64_t a1)
{
  v3 = *(type metadata accessor for CustodianRecord(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_1000100C0(a1, *(v1 + 16), *(v1 + 24), v1 + v4, *(v1 + v5), *(v1 + v5 + 8), *(v1 + v6), *(v1 + v6 + 8), *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1000127C4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for CustodianRecord(0);
  v6 = (v3 + v4 + *(*(v5 - 1) + 80)) & ~*(*(v5 - 1) + 80);
  v13 = *(*(v5 - 1) + 64);

  v7 = *(v2 + 8);
  v7(v0 + v3, v1);
  v8 = v0 + v6;
  v7(v0 + v6, v1);
  v7(v0 + v6 + v5[5], v1);

  v9 = (v0 + v6 + v5[10]);
  v10 = v9[1];
  if (v10 >> 60 != 15)
  {
    sub_100012324(*v9, v10);
  }

  sub_100012324(*(v8 + v5[11]), *(v8 + v5[11] + 8));

  v11 = v5[16];
  if (!(*(v2 + 48))(v8 + v11, 1, v1))
  {
    v7(v8 + v11, v1);
  }

  return _swift_deallocObject(v0, ((((v13 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
}

void sub_100012A2C(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for CustodianRecord(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100010CC8(a1, *(v1 + 16), *(v1 + 24), v1 + v4, (v1 + v7), *(v1 + v8), *(v1 + v8 + 8), *(v1 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_100012B44()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100012B7C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_100012C60(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_10001194C(a1, v5, v6, v1 + v4, v8, v9);
}

uint64_t sub_100012D04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100005814(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

id sub_100012D6C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    if (qword_1003D7EC8 != -1)
    {
      swift_once();
    }

    v7 = objc_allocWithZone(NSUbiquitousKeyValueStore);
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 initWithStoreIdentifier:v8 type:a2];

    v10 = *(v2 + v3);
    *(v2 + v3) = v9;
    v5 = v9;

    v4 = 0;
  }

  v11 = v4;
  return v5;
}

uint64_t sub_100012E4C()
{
  v1 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = OBJC_IVAR____TtC13appleaccountd28SmartUbiquitousKeyValueStore____lazy_storage___encryptionAvailableTask;
  if (*(v0 + OBJC_IVAR____TtC13appleaccountd28SmartUbiquitousKeyValueStore____lazy_storage___encryptionAvailableTask))
  {
    v5 = *(v0 + OBJC_IVAR____TtC13appleaccountd28SmartUbiquitousKeyValueStore____lazy_storage___encryptionAvailableTask);
  }

  else
  {
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v0;

    v5 = sub_1000135AC(0, 0, v3, &unk_10033EA08, v7, &type metadata for Bool);
    *(v0 + v4) = v5;
  }

  return v5;
}

uint64_t sub_100012F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_100012FB0, 0, 0);
}

uint64_t sub_100012FB0()
{
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100013084;
  v2 = v0[2];
  v3 = v0[3];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v2, 0, 0, 0xD000000000000017, 0x800000010032CB90, sub_100015EB4, v3, &type metadata for Bool);
}

uint64_t sub_100013084()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000131B8, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1000131D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&qword_1003D8D60, &unk_10033EA10);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &aBlock[-1] - v6;
  v8 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &aBlock[-1] - v10;
  (*(v9 + 16))(&aBlock[-1] - v10, a2 + OBJC_IVAR____TtC13appleaccountd28SmartUbiquitousKeyValueStore__cloudKitStorageManager, v8);
  Dependency.wrappedValue.getter();
  (*(v9 + 8))(v11, v8);
  (*(v5 + 16))(v7, a1, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  (*(v5 + 32))(v13 + v12, v7, v4);
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  if (qword_1003D7EC0 != -1)
  {
    swift_once();
  }

  v14 = sub_1002E2BC4(qword_1003FA9D0, qword_1003FA9D8);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_100015F50;
  *(v15 + 24) = v13;
  aBlock[4] = sub_100016014;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100015858;
  aBlock[3] = &unk_1003A49B0;
  v16 = _Block_copy(aBlock);

  [v14 accountInfoWithCompletionHandler:v16];
  _Block_release(v16);

  return sub_10000839C(v20);
}

uint64_t sub_10001351C(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_100005814(&qword_1003D8D60, &unk_10033EA10);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100005814(&qword_1003D8D60, &unk_10033EA10);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_1000135AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_100012D04(a3, v23 - v10, &qword_1003DABF0, &qword_10033F8A0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100008D3C(v11, &qword_1003DABF0, &qword_10033F8A0);
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
      v23[0] = a2;
      v19 = String.utf8CString.getter() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_100008D3C(a3, &qword_1003DABF0, &qword_10033F8A0);

      return v21;
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

  sub_100008D3C(a3, &qword_1003DABF0, &qword_10033F8A0);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100013858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  return _swift_task_switch(sub_10001387C, 0, 0);
}

uint64_t sub_10001387C()
{
  v1 = sub_100012E4C();
  *(v0 + 80) = v1;
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  v3 = sub_100005814(&unk_1003DBB60, &unk_10033E740);
  *v2 = v0;
  v2[1] = sub_100013950;

  return Task.value.getter(v0 + 104, v1, &type metadata for Bool, v3, &protocol self-conformance witness table for Error);
}

uint64_t sub_100013950()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_100013C38;
  }

  else
  {
    v2 = sub_100013A80;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100013A80()
{
  if (*(v0 + 104) == 1)
  {
    v1 = &OBJC_IVAR____TtC13appleaccountd28SmartUbiquitousKeyValueStore____lazy_storage___encryptedUKVS;
    v2 = 2;
  }

  else
  {
    v1 = &OBJC_IVAR____TtC13appleaccountd28SmartUbiquitousKeyValueStore____lazy_storage___unencryptedUKVS;
    v2 = 0;
  }

  v3 = sub_100012D6C(v1, v2);
  sub_100012D04(*(v0 + 48), v0 + 16, &qword_1003D87C8, qword_100344800);
  v4 = *(v0 + 40);
  if (v4)
  {
    v5 = sub_1000080F8((v0 + 16), *(v0 + 40));
    v6 = *(v4 - 8);
    v7 = swift_task_alloc();
    (*(v6 + 16))(v7, v5, v4);
    v8 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v6 + 8))(v7, v4);

    sub_10000839C((v0 + 16));
  }

  else
  {
    v8 = 0;
  }

  v9 = String._bridgeToObjectiveC()();
  [v3 setObject:v8 forKey:v9];

  swift_unknownObjectRelease();
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100013C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_100013C74, 0, 0);
}

uint64_t sub_100013C74()
{
  v1 = sub_100012E4C();
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = sub_100005814(&unk_1003DBB60, &unk_10033E740);
  *v2 = v0;
  v2[1] = sub_100013D48;

  return Task.value.getter(v0 + 72, v1, &type metadata for Bool, v3, &protocol self-conformance witness table for Error);
}

uint64_t sub_100013D48()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_100013F68;
  }

  else
  {
    v2 = sub_100013E78;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100013E78()
{
  if (*(v0 + 72) == 1)
  {
    v1 = &OBJC_IVAR____TtC13appleaccountd28SmartUbiquitousKeyValueStore____lazy_storage___encryptedUKVS;
    v2 = 2;
  }

  else
  {
    v1 = &OBJC_IVAR____TtC13appleaccountd28SmartUbiquitousKeyValueStore____lazy_storage___unencryptedUKVS;
    v2 = 0;
  }

  v3 = sub_100012D6C(v1, v2);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 objectForKey:v4];

  v6 = *(v0 + 16);
  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    *v6 = 0u;
    v6[1] = 0u;
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100013F80()
{
  v1 = OBJC_IVAR____TtC13appleaccountd28SmartUbiquitousKeyValueStore__cloudKitStorageManager;
  v2 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_100014080(uint64_t a1)
{
  sub_10000DAB8(319, &unk_1003DB230, &unk_1003D9830, &qword_10033E970);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100014134()
{
  v0 = type metadata accessor for SHA256Digest();
  v31 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for SHA256();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v29 - v8;
  v32 = [objc_allocWithZone(AADeviceInfo) init];
  v10 = [v32 udid];
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0xE000000000000000;
  }

  v15 = sub_100170228(v12, v14);
  v17 = v16;
  SHA256.init()();
  sub_10001607C(&unk_1003DA8A0, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  v30 = v9;
  dispatch thunk of HashFunction.init()();
  sub_100015D6C(v15, v17);
  sub_10018F16C(v15, v17, v7);
  sub_100012324(v15, v17);
  dispatch thunk of HashFunction.finalize()();
  v29 = *(v4 + 8);
  v29(v7, v3);
  v36 = v0;
  v37 = sub_10001607C(&qword_1003D8D70, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
  v18 = sub_10000DBEC(v35);
  v19 = v31;
  (*(v31 + 16))(v18, v2, v0);
  sub_1000080F8(v35, v36);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  (*(v19 + 8))(v2, v0);
  v20 = v33;
  v21 = v34;
  sub_10000839C(v35);
  sub_100012324(v15, v17);
  v29(v30, v3);
  sub_100015D6C(v20, v21);
  sub_100015710(16, v20, v21, v35);
  v22 = v35[0];
  v23 = v35[1];
  v24 = Data.base64EncodedString(options:)(0);
  sub_1000159FC(2, v24._countAndFlagsBits, v24._object);

  v25 = static String._fromSubstring(_:)();
  v27 = v26;
  sub_100012324(v20, v21);
  sub_100012324(v22, v23);

  qword_1003D8B68 = v25;
  unk_1003D8B70 = v27;
  return result;
}

uint64_t sub_100014544(char a1, char a2, uint64_t a3)
{
  *(v4 + 88) = a3;
  *(v4 + 96) = v3;
  *(v4 + 161) = a2;
  *(v4 + 160) = a1;
  v5 = sub_100005814(&qword_1003D8D40, &qword_10033E9E0);
  *(v4 + 104) = v5;
  *(v4 + 112) = *(v5 - 8);
  *(v4 + 120) = swift_task_alloc();

  return _swift_task_switch(sub_100014618, 0, 0);
}

uint64_t sub_100014618()
{
  if (*(v0 + 160) == 11)
  {
    isa = 0;
  }

  else
  {
    isa = Int._bridgeToObjectiveC()().super.super.isa;
  }

  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = sub_100015A98(*(v0 + 161) & 1, *(v0 + 88), 0x79426E446E726F74, 0xEF7361655268744FLL, 0);
  v8 = v7;
  *(v0 + 128) = v7;
  (*(v3 + 16))(v2, v5 + OBJC_IVAR____TtC13appleaccountd27CustodianMetadataController__store, v4);
  Dependency.wrappedValue.getter();
  (*(v3 + 8))(v2, v4);
  sub_1000080F8((v0 + 16), *(v0 + 40));
  if (isa)
  {
    v9 = sub_100016034(0, &qword_1003D8D68, NSNumber_ptr);
  }

  else
  {
    v9 = 0;
    *(v0 + 64) = 0;
    *(v0 + 72) = 0;
  }

  *(v0 + 136) = isa;
  *(v0 + 56) = isa;
  *(v0 + 80) = v9;
  v10 = isa;
  v11 = swift_task_alloc();
  *(v0 + 144) = v11;
  *v11 = v0;
  v11[1] = sub_1000147CC;

  return sub_100013858(v0 + 56, v6, v8);
}

uint64_t sub_1000147CC()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_100014994;
  }

  else
  {
    sub_100008D3C(v2 + 56, &qword_1003D87C8, qword_100344800);
    v3 = sub_10001491C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10001491C()
{
  v1 = v0[17];
  sub_10000839C(v0 + 2);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100014994()
{
  v1 = v0[17];
  sub_100008D3C((v0 + 7), &qword_1003D87C8, qword_100344800);
  sub_10000839C(v0 + 2);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100014A24(char a1, uint64_t a2)
{
  *(v3 + 96) = a2;
  *(v3 + 104) = v2;
  *(v3 + 160) = a1;
  v4 = sub_100005814(&qword_1003D8D40, &qword_10033E9E0);
  *(v3 + 112) = v4;
  *(v3 + 120) = *(v4 - 8);
  *(v3 + 128) = swift_task_alloc();

  return _swift_task_switch(sub_100014AF4, 0, 0);
}

uint64_t sub_100014AF4()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v5 = sub_100015A98(*(v0 + 160) & 1, *(v0 + 96), 0x79426E446E726F74, 0xEF7361655268744FLL, 0);
  v7 = v6;
  *(v0 + 136) = v6;
  (*(v2 + 16))(v1, v4 + OBJC_IVAR____TtC13appleaccountd27CustodianMetadataController__store, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  sub_1000080F8((v0 + 16), *(v0 + 40));
  v8 = swift_task_alloc();
  *(v0 + 144) = v8;
  *v8 = v0;
  v8[1] = sub_100014C44;

  return sub_100013C50(v0 + 56, v5, v7);
}

uint64_t sub_100014C44()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_100014E68;
  }

  else
  {
    v2 = sub_100014D74;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100014D74()
{
  sub_100005814(&qword_1003D87C8, qword_100344800);
  sub_100016034(0, &qword_1003D8D68, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 88) = 0;
  }

  sub_10000839C((v0 + 16));
  v1 = *(v0 + 88);
  if (v1)
  {
    v2 = [*(v0 + 88) integerValue];

    v3 = sub_1000C0C88(v2);
  }

  else
  {
    v3 = 11;
  }

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_100014E68()
{
  sub_10000839C((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100014ED8(char a1, char a2, uint64_t a3)
{
  *(v4 + 88) = a3;
  *(v4 + 96) = v3;
  *(v4 + 178) = a2;
  *(v4 + 177) = a1;
  v5 = sub_100005814(&qword_1003D8D40, &qword_10033E9E0);
  *(v4 + 104) = v5;
  *(v4 + 112) = *(v5 - 8);
  *(v4 + 120) = swift_task_alloc();

  return _swift_task_switch(sub_100014FAC, 0, 0);
}

uint64_t sub_100014FAC()
{
  *(v0 + 176) = *(v0 + 177);
  sub_100005814(&qword_1003D8D48, &qword_10033E9E8);
  sub_100015638();
  v1 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v3 = v2;
  sub_100015D6C(v1, v2);
  v4.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100012324(v1, v3);
  *(v0 + 128) = v1;
  *(v0 + 136) = v3;
  v6 = *(v0 + 112);
  v5 = *(v0 + 120);
  v8 = *(v0 + 96);
  v7 = *(v0 + 104);
  v9 = sub_100015A98(*(v0 + 178) & 1, *(v0 + 88), 0x6465527075746573, 0xEF6574617453736ELL, 0);
  v11 = v10;
  *(v0 + 144) = v10;
  (*(v6 + 16))(v5, v8 + OBJC_IVAR____TtC13appleaccountd27CustodianMetadataController__store, v7);
  Dependency.wrappedValue.getter();
  (*(v6 + 8))(v5, v7);
  sub_1000080F8((v0 + 16), *(v0 + 40));
  if (v4.super.isa)
  {
    v12 = sub_100016034(0, &qword_1003E4F00, NSData_ptr);
  }

  else
  {
    v12 = 0;
    *(v0 + 64) = 0;
    *(v0 + 72) = 0;
  }

  *(v0 + 152) = v4;
  *(v0 + 56) = v4;
  *(v0 + 80) = v12;
  v13 = v4.super.isa;
  v14 = swift_task_alloc();
  *(v0 + 160) = v14;
  *v14 = v0;
  v14[1] = sub_1000151E4;

  return sub_100013858(v0 + 56, v9, v11);
}

uint64_t sub_1000151E4()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_1000153B0;
  }

  else
  {
    sub_100008D3C(v2 + 56, &qword_1003D87C8, qword_100344800);
    v3 = sub_100015320;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100015320()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  sub_10000839C(v0 + 2);

  sub_100015D58(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000153B0()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  sub_100008D3C((v0 + 7), &qword_1003D87C8, qword_100344800);
  sub_10000839C(v0 + 2);
  sub_100015D58(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100015458()
{
  v1 = OBJC_IVAR____TtC13appleaccountd27CustodianMetadataController__store;
  v2 = sub_100005814(&qword_1003D8D40, &qword_10033E9E0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_100015548(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100015580(uint64_t a1)
{
  sub_10000DAB8(319, &unk_1003D8CB0, &unk_1003D98F0, &qword_10033E9C0);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_100015638()
{
  result = qword_1003D8D50;
  if (!qword_1003D8D50)
  {
    sub_100008CBC(&qword_1003D8D48, &qword_10033E9E8);
    sub_1000156BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D8D50);
  }

  return result;
}

unint64_t sub_1000156BC()
{
  result = qword_1003D8D58;
  if (!qword_1003D8D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D8D58);
  }

  return result;
}

uint64_t sub_100015710@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_100015948(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_1000158E4(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = Data._Representation.subscript.getter();
    v15 = v14;
    result = sub_100012324(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_100015858(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1000158E4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100015948(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_1000159FC(uint64_t result, uint64_t a2, unint64_t a3)
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

uint64_t sub_100015A98(char a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  if (a5)
  {
    if (qword_1003D7DB8 != -1)
    {
      swift_once();
    }

    v7 = qword_1003D8B68;
    v8 = unk_1003D8B70;

    v9._countAndFlagsBits = v7;
    v9._object = v8;
    String.append(_:)(v9);

    v11 = 35;
    v10 = 0xE100000000000000;
  }

  else
  {
    v11 = 0;
    v10 = 0xE000000000000000;
  }

  v12 = 99;
  if ((a1 & 1) == 0)
  {
    v12 = 111;
  }

  v36 = v12;
  v13._countAndFlagsBits = 46;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  sub_100005814(&unk_1003DA8C0, &qword_10033EA30);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10033E8D0;
  *(v14 + 32) = UUID.uuid.getter();
  *(v14 + 34) = UUID.uuid.getter() >> 16;
  *(v14 + 35) = UUID.uuid.getter() >> 24;
  *(v14 + 36) = UUID.uuid.getter() >> 32;
  *(v14 + 38) = UUID.uuid.getter() >> 48;
  *(v14 + 39) = UUID.uuid.getter() >> 56;
  UUID.uuid.getter();
  *(v14 + 40) = v15;
  UUID.uuid.getter();
  *(v14 + 41) = v16;
  UUID.uuid.getter();
  *(v14 + 42) = v17;
  UUID.uuid.getter();
  *(v14 + 43) = v18;
  UUID.uuid.getter();
  *(v14 + 44) = v19;
  UUID.uuid.getter();
  *(v14 + 45) = v20;
  UUID.uuid.getter();
  *(v14 + 46) = v21;
  UUID.uuid.getter();
  *(v14 + 47) = v22;
  v23 = sub_10018F97C(v14);
  v25 = v24;

  v26 = Data.base64EncodedString(options:)(0);
  sub_1000159FC(2, v26._countAndFlagsBits, v26._object);

  v27 = static String._fromSubstring(_:)();
  v29 = v28;
  sub_100012324(v23, v25);

  v30._countAndFlagsBits = v27;
  v30._object = v29;
  String.append(_:)(v30);

  v31._countAndFlagsBits = 46;
  v31._object = 0xE100000000000000;
  String.append(_:)(v31);
  v32._countAndFlagsBits = a3;
  v32._object = a4;
  String.append(_:)(v32);
  v33._countAndFlagsBits = v11;
  v33._object = v10;
  String.append(_:)(v33);

  return v36;
}

uint64_t sub_100015D58(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100012324(result, a2);
  }

  return result;
}

uint64_t sub_100015D6C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100015DC0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100015E00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000082A8;

  return sub_100012F90(a1, v4, v5, v6);
}

uint64_t sub_100015EBC()
{
  v1 = sub_100005814(&qword_1003D8D60, &unk_10033EA10);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100015F50(uint64_t a1, char a2)
{
  sub_100005814(&qword_1003D8D60, &unk_10033EA10);

  return sub_10001351C(a1, a2 & 1);
}

uint64_t sub_100015FDC()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10001601C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100016034(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_10001607C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000160C4(uint64_t a1, void (*a2)(void *), uint64_t a3)
{
  v4 = v3;
  v63 = a2;
  v64 = a3;
  v59 = a1;
  v5 = sub_100005814(&qword_1003D8EF8, &qword_10033EB18);
  __chkstk_darwin(v5);
  v7 = (&isa - v6);
  v8 = type metadata accessor for UUID();
  v60 = *(v8 - 8);
  v61 = v8;
  __chkstk_darwin(v8);
  v56 = v9;
  v58 = &isa - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005814(&qword_1003D8EE8, &qword_10033EB00);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &isa - v12;
  v62 = type metadata accessor for Date();
  v57 = *(v62 - 8);
  v14 = *(v57 + 64);
  v15 = __chkstk_darwin(v62);
  v54 = &isa - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v65 = &isa - v16;
  v17 = sub_100005814(&qword_1003D8EF0, &unk_10033EB08);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &isa - v19;
  v21 = *(v18 + 16);
  v55 = v4;
  v21(&isa - v19, &v4[OBJC_IVAR____TtC13appleaccountd24DaemonSecurityController__cdpContextProvider], v17);
  Dependency.wrappedValue.getter();
  (*(v18 + 8))(v20, v17);
  v22 = [objc_opt_self() contextForPrimaryAccount];
  sub_10000839C(aBlock);
  if (v22)
  {
    v53 = v22;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100008D04(v23, qword_1003FAA88);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Creating recovery keys.", v26, 2u);
    }

    v27 = v65;
    Date.init()();
    (*(v11 + 16))(v13, &v55[OBJC_IVAR____TtC13appleaccountd24DaemonSecurityController__recoveryKeyController], v10);
    Dependency.wrappedValue.getter();
    (*(v11 + 8))(v13, v10);
    v55 = aBlock[0];
    v28 = v59;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v29 = v57;
    v30 = v54;
    v31 = v27;
    v32 = v62;
    (*(v57 + 16))(v54, v31, v62);
    v33 = v60;
    v34 = v58;
    v35 = v28;
    v36 = v61;
    (*(v60 + 16))(v58, v35, v61);
    v37 = (*(v29 + 80) + 16) & ~*(v29 + 80);
    v38 = (v14 + *(v33 + 80) + v37) & ~*(v33 + 80);
    v39 = (v56 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
    v40 = swift_allocObject();
    (*(v29 + 32))(v40 + v37, v30, v32);
    (*(v33 + 32))(v40 + v38, v34, v36);
    v41 = (v40 + v39);
    v42 = v64;
    *v41 = v63;
    v41[1] = v42;
    aBlock[4] = sub_10001CD80;
    aBlock[5] = v40;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100015858;
    aBlock[3] = &unk_1003A4C40;
    v43 = _Block_copy(aBlock);

    v44 = v55;
    v46 = isa;
    v45 = v53;
    [v55 createRecoveryKeyWithContext:v53 forUUID:isa completion:v43];
    _Block_release(v43);

    return (*(v29 + 8))(v65, v32);
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_100008D04(v48, qword_1003FAA40);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "Not logged in to AppleAccount, unable to fetch", v51, 2u);
    }

    type metadata accessor for AACustodianError(0);
    aBlock[6] = -7002;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100012490(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    *v7 = aBlock[0];
    swift_storeEnumTagMultiPayload();
    v63(v7);
    return sub_100008D3C(v7, &qword_1003D8EF8, &qword_10033EB18);
  }
}

uint64_t sub_10001684C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v104 = a6;
  v106 = a5;
  v102 = a2;
  v100 = a1;
  v103 = sub_100005814(&qword_1003D8EF8, &qword_10033EB18);
  __chkstk_darwin(v103);
  v105 = (&v91 - v8);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v95 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v107 = &v91 - v14;
  v15 = __chkstk_darwin(v13);
  v98 = &v91 - v16;
  __chkstk_darwin(v15);
  v18 = &v91 - v17;
  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v91 - v24;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  v27 = sub_100008D04(v26, qword_1003FAA88);
  (*(v20 + 16))(v25, a3, v19);
  v96 = *(v10 + 16);
  v97 = a4;
  v96(v18, a4, v9);
  v101 = v27;
  v28 = Logger.logObject.getter();
  v29 = v9;
  v30 = static os_log_type_t.default.getter();
  v31 = os_log_type_enabled(v28, v30);
  v99 = v10;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v94 = v10 + 16;
    v33 = v32;
    v93 = swift_slowAlloc();
    v109[0] = v93;
    *v33 = 134218242;
    Date.init()();
    v92 = v29;
    Date.timeIntervalSince(_:)();
    v35 = v34;
    v36 = *(v20 + 8);
    v36(v23, v19);
    v36(v25, v19);
    *(v33 + 4) = v35;
    *(v33 + 12) = 2080;
    v37 = UUID.uuidString.getter();
    v39 = v38;
    v40 = *(v10 + 8);
    v41 = v18;
    v42 = v92;
    v40(v41, v92);
    v43 = sub_10021145C(v37, v39, v109);

    *(v33 + 14) = v43;
    _os_log_impl(&_mh_execute_header, v28, v30, "⏰ %f secs to createRecoveryKey %s", v33, 0x16u);
    sub_10000839C(v93);
  }

  else
  {

    v40 = *(v10 + 8);
    v40(v18, v29);
    (*(v20 + 8))(v25, v19);
    v42 = v29;
  }

  v44 = v107;
  v45 = v102;
  if (v102)
  {
    swift_errorRetain();
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 138412290;
      v50 = _convertErrorToNSError(_:)();
      *(v48 + 4) = v50;
      *v49 = v50;
      _os_log_impl(&_mh_execute_header, v46, v47, "Error building recovery key: %@", v48, 0xCu);
      sub_100008D3C(v49, &unk_1003D9140, &qword_10033E640);
    }

    v51 = v105;
    *v105 = v45;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v106(v51);

LABEL_10:
    v52 = v51;
    return sub_100008D3C(v52, &qword_1003D8EF8, &qword_10033EB18);
  }

  if (!v100)
  {
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&_mh_execute_header, v77, v78, "No recovery keys returned.", v79, 2u);
    }

    type metadata accessor for AACustodianError(0);
    v108 = -7000;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100012490(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    v51 = v105;
    *v105 = v109[0];
    swift_storeEnumTagMultiPayload();
    v106(v51);
    goto LABEL_10;
  }

  v53 = v100;
  v54 = v97;
  v55 = v98;
  v56 = v96;
  v96(v98, v97, v42);
  v56(v44, v54, v42);
  v57 = v53;
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.info.getter();
  v60 = &unk_1003D3000;
  if (os_log_type_enabled(v58, v59))
  {
    v61 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v109[0] = v102;
    *v61 = 136315650;
    sub_100012490(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    LODWORD(v101) = v59;
    v62 = dispatch thunk of CustomStringConvertible.description.getter();
    v64 = v63;
    v40(v55, v42);
    v65 = sub_10021145C(v62, v64, v109);

    *(v61 + 4) = v65;
    *(v61 + 12) = 2080;
    v66 = [v57 custodianUUID];
    v67 = v95;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v68 = dispatch thunk of CustomStringConvertible.description.getter();
    v70 = v69;
    v40(v67, v42);
    v71 = sub_10021145C(v68, v70, v109);

    *(v61 + 14) = v71;
    *(v61 + 22) = 2080;
    v72 = [v57 custodianUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v73 = v107;
    LOBYTE(v72) = static UUID.== infix(_:_:)();
    v74 = v67;
    v60 = &unk_1003D3000;
    v40(v74, v42);
    if (v72)
    {
      v75 = 8756450;
    }

    else
    {
      v75 = 9215458;
    }

    v40(v73, v42);
    v76 = sub_10021145C(v75, 0xA300000000000000, v109);

    *(v61 + 24) = v76;
    _os_log_impl(&_mh_execute_header, v58, v101, "Recovery keys created successfully. UUID Sent:%s Received:%s Matches:%s ", v61, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v40(v44, v42);
    v40(v55, v42);
  }

  v80 = [v57 wrappingKey];
  v81 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v83 = v82;

  v84 = [v57 wrappedRKC];
  v85 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v87 = v86;

  v88 = [v57 v60[277]];
  type metadata accessor for RecoveryKeys(0);
  v89 = v105;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  *v89 = v81;
  v89[1] = v83;
  v89[2] = v85;
  v89[3] = v87;
  swift_storeEnumTagMultiPayload();
  v106(v89);

  v52 = v89;
  return sub_100008D3C(v52, &qword_1003D8EF8, &qword_10033EB18);
}

void sub_1000172AC(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v58 = a2;
  v59 = a3;
  v54 = a1;
  v56 = type metadata accessor for UUID();
  v52 = *(v56 - 8);
  __chkstk_darwin(v56);
  v53 = v5;
  v55 = &isa - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100005814(&qword_1003D8EE8, &qword_10033EB00);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &isa - v8;
  v57 = type metadata accessor for Date();
  v51 = *(v57 - 8);
  v10 = *(v51 + 64);
  v11 = __chkstk_darwin(v57);
  v50 = &isa - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &isa - v12;
  v14 = sub_100005814(&qword_1003D8EF0, &unk_10033EB08);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &isa - v16;
  (*(v15 + 16))(&isa - v16, v4 + OBJC_IVAR____TtC13appleaccountd24DaemonSecurityController__cdpContextProvider, v14);
  Dependency.wrappedValue.getter();
  (*(v15 + 8))(v17, v14);
  v18 = [objc_opt_self() contextForPrimaryAccount];
  sub_10000839C(aBlock);
  if (v18)
  {
    v49 = v18;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100008D04(v19, qword_1003FAA88);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Deleting recovery keys.", v22, 2u);
    }

    v23 = v13;
    v48 = v13;
    Date.init()();
    (*(v7 + 16))(v9, v4 + OBJC_IVAR____TtC13appleaccountd24DaemonSecurityController__recoveryKeyController, v6);
    Dependency.wrappedValue.getter();
    (*(v7 + 8))(v9, v6);
    v47 = aBlock[0];
    v24 = v54;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v26 = v50;
    v25 = v51;
    v27 = v57;
    (*(v51 + 16))(v50, v23, v57);
    v28 = v52;
    v29 = v55;
    v30 = v56;
    (*(v52 + 16))(v55, v24, v56);
    v31 = (*(v25 + 80) + 16) & ~*(v25 + 80);
    v32 = (v10 + *(v28 + 80) + v31) & ~*(v28 + 80);
    v33 = (v53 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    (*(v25 + 32))(v34 + v31, v26, v27);
    (*(v28 + 32))(v34 + v32, v29, v30);
    v35 = (v34 + v33);
    v36 = v59;
    *v35 = v58;
    v35[1] = v36;
    aBlock[4] = sub_10001C7C4;
    aBlock[5] = v34;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10020E828;
    aBlock[3] = &unk_1003A4BF0;
    v37 = _Block_copy(aBlock);

    v39 = isa;
    v38 = v47;
    v40 = v49;
    [v47 deleteRecoveryKeyWithContext:v49 forUUID:isa completion:v37];
    _Block_release(v37);

    (*(v25 + 8))(v48, v27);
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_100008D04(v41, qword_1003FAA40);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "Not logged in to AppleAccount, unable to fetch", v44, 2u);
    }

    type metadata accessor for AACustodianError(0);
    aBlock[6] = -7002;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100012490(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    v45 = aBlock[0];
    v58(aBlock[0]);
  }
}

uint64_t sub_1000179B4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v75 = a5;
  v76 = a4;
  v74 = a1;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v72 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v68 = &v64 - v12;
  __chkstk_darwin(v11);
  v14 = &v64 - v13;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v64 - v20;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  v23 = sub_100008D04(v22, qword_1003FAA88);
  (*(v16 + 16))(v21, a2, v15);
  v24 = *(v8 + 16);
  v71 = a3;
  v69 = v24;
  v24(v14, a3, v7);
  v70 = v23;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  v27 = os_log_type_enabled(v25, v26);
  v73 = v8;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v65 = v7;
    v29 = v28;
    v67 = swift_slowAlloc();
    v77 = v67;
    *v29 = 134218242;
    Date.init()();
    v66 = v26;
    Date.timeIntervalSince(_:)();
    v31 = v30;
    v32 = *(v16 + 8);
    v32(v19, v15);
    v32(v21, v15);
    *(v29 + 4) = v31;
    *(v29 + 12) = 2080;
    v33 = UUID.uuidString.getter();
    v35 = v34;
    v36 = *(v8 + 8);
    v37 = v65;
    v36(v14, v65);
    v38 = sub_10021145C(v33, v35, &v77);

    *(v29 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v25, v66, "⏰ %f secs to deleteRecoveryKey %s", v29, 0x16u);
    sub_10000839C(v67);
  }

  else
  {

    v36 = *(v8 + 8);
    v36(v14, v7);
    (*(v16 + 8))(v21, v15);
    v37 = v7;
  }

  v39 = v74;
  v40 = v72;
  if (v74)
  {
    v69(v72, v71, v37);
    swift_errorRetain();
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = v36;
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v77 = v46;
      *v43 = 138412546;
      v47 = _convertErrorToNSError(_:)();
      *(v43 + 4) = v47;
      *v45 = v47;
      *(v43 + 12) = 2080;
      sub_100012490(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v40;
      v51 = v50;
      v44(v49, v37);
      v52 = sub_10021145C(v48, v51, &v77);

      *(v43 + 14) = v52;
      _os_log_impl(&_mh_execute_header, v41, v42, "Error deleting recovery key: %@ for %s", v43, 0x16u);
      sub_100008D3C(v45, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v46);
    }

    else
    {

      v36(v40, v37);
    }

    swift_errorRetain();
    v76(v39);
  }

  else
  {
    v53 = v36;
    v54 = v68;
    v69(v68, v71, v37);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v77 = v58;
      *v57 = 136315138;
      sub_100012490(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v60;
      v53(v54, v37);
      v62 = sub_10021145C(v59, v61, &v77);

      *(v57 + 4) = v62;
      _os_log_impl(&_mh_execute_header, v55, v56, "Recovery keys deleted successfully for %s", v57, 0xCu);
      sub_10000839C(v58);
    }

    else
    {

      v53(v54, v37);
    }

    return (v76)(0);
  }
}

void sub_100018104(uint64_t a1, void (*a2)(void, void), uint64_t a3)
{
  v4 = v3;
  v80 = a3;
  v81 = a1;
  v79 = sub_100005814(&qword_1003D8EE8, &qword_10033EB00);
  v75 = *(v79 - 1);
  __chkstk_darwin(v79);
  v73 = &v64 - v6;
  v7 = type metadata accessor for Date();
  v71 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v9;
  __chkstk_darwin(v8);
  v12 = &v64 - v11;
  isa = type metadata accessor for UUID();
  v13 = *(isa - 8);
  v14 = __chkstk_darwin(isa);
  v74 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v15;
  __chkstk_darwin(v14);
  v17 = &v64 - v16;
  v18 = sub_100005814(&qword_1003D8EF0, &unk_10033EB08);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v64 - v20;
  v22 = *(v19 + 16);
  v76 = v4;
  v22(&v64 - v20, v4 + OBJC_IVAR____TtC13appleaccountd24DaemonSecurityController__cdpContextProvider, v18);
  Dependency.wrappedValue.getter();
  (*(v19 + 8))(v21, v18);
  v23 = [objc_opt_self() contextForPrimaryAccount];
  sub_10000839C(aBlock);
  if (v23)
  {
    v66 = v23;
    v67 = v10;
    v68 = v7;
    v69 = a2;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100008D04(v24, qword_1003FAA88);
    v25 = v13;
    v26 = isa;
    v65 = *(v13 + 16);
    v65(v17, v81, isa);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();
    v29 = os_log_type_enabled(v27, v28);
    v70 = v12;
    if (v29)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      aBlock[0] = v31;
      *v30 = 136315138;
      sub_100012490(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v26;
      v35 = v34;
      v36 = v17;
      v37 = v33;
      (*(v13 + 8))(v36, v33);
      v38 = sub_10021145C(v32, v35, aBlock);

      *(v30 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v27, v28, "Check Custodian Recovery key exists for otPeerID: %s", v30, 0xCu);
      sub_10000839C(v31);
      v12 = v70;
    }

    else
    {

      (*(v13 + 8))(v17, v26);
      v37 = v26;
    }

    Date.init()();
    v44 = v75;
    v45 = v73;
    v46 = v79;
    (*(v75 + 16))(v73, v76 + OBJC_IVAR____TtC13appleaccountd24DaemonSecurityController__recoveryKeyController, v79);
    Dependency.wrappedValue.getter();
    (*(v44 + 8))(v45, v46);
    v47 = v81;
    v79 = aBlock[0];
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v48 = v71;
    v49 = v67;
    v50 = v12;
    v51 = v68;
    (*(v71 + 16))(v67, v50, v68);
    v52 = v74;
    v65(v74, v47, v37);
    v53 = (*(v48 + 80) + 16) & ~*(v48 + 80);
    v54 = v37;
    v55 = (v78 + *(v13 + 80) + v53) & ~*(v13 + 80);
    v56 = (v72 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    v57 = swift_allocObject();
    (*(v48 + 32))(v57 + v53, v49, v51);
    (*(v25 + 32))(v57 + v55, v52, v54);
    v58 = (v57 + v56);
    v59 = v80;
    *v58 = v69;
    v58[1] = v59;
    aBlock[4] = sub_10001C6B0;
    aBlock[5] = v57;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10013BB5C;
    aBlock[3] = &unk_1003A4BA0;
    v60 = _Block_copy(aBlock);

    v61 = v79;
    v62 = isa;
    v63 = v66;
    [v79 checkCustodianRecoveryKey:isa withContext:v66 completion:v60];
    _Block_release(v60);

    (*(v48 + 8))(v70, v51);
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_100008D04(v39, qword_1003FAA40);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Not logged in to AppleAccount, unable to fetch. Check presence of Custodian Recovery key in Octagon is aborted.", v42, 2u);
    }

    type metadata accessor for AACustodianError(0);
    aBlock[6] = -7002;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100012490(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    v43 = aBlock[0];
    a2(0, aBlock[0]);
  }
}

uint64_t sub_100018974(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, uint64_t), uint64_t a6)
{
  v79 = a6;
  v80 = a5;
  v77 = a2;
  v78 = a1;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v70 = &v67[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v10);
  v74 = &v67[-v13];
  __chkstk_darwin(v12);
  v15 = &v67[-v14];
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v67[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v22 = &v67[-v21];
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  v24 = sub_100008D04(v23, qword_1003FAA88);
  (*(v17 + 16))(v22, a3, v16);
  v25 = *(v9 + 16);
  v73 = a4;
  v71 = v25;
  v25(v15, a4, v8);
  v72 = v24;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  v28 = os_log_type_enabled(v26, v27);
  v75 = v9;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v76 = v8;
    v30 = v29;
    v69 = swift_slowAlloc();
    v81 = v69;
    *v30 = 134218242;
    Date.init()();
    v68 = v27;
    Date.timeIntervalSince(_:)();
    v32 = v31;
    v33 = *(v17 + 8);
    v33(v20, v16);
    v33(v22, v16);
    *(v30 + 4) = v32;
    *(v30 + 12) = 2080;
    sub_100012490(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v35;
    v37 = *(v9 + 8);
    v37(v15, v76);
    v38 = sub_10021145C(v34, v36, &v81);

    *(v30 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v26, v68, "⏰ %f secs to checkCustodianRecoveryKey %s", v30, 0x16u);
    sub_10000839C(v69);

    v8 = v76;
  }

  else
  {

    v37 = *(v9 + 8);
    v37(v15, v8);
    (*(v17 + 8))(v22, v16);
  }

  v39 = v77;
  v40 = v74;
  if (v77)
  {
    v71(v74, v73, v8);
    swift_errorRetain();
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v76 = v37;
      v44 = v40;
      v45 = v43;
      v46 = swift_slowAlloc();
      v47 = v8;
      v48 = swift_slowAlloc();
      v81 = v48;
      *v45 = 138412546;
      v49 = _convertErrorToNSError(_:)();
      *(v45 + 4) = v49;
      *v46 = v49;
      *(v45 + 12) = 2080;
      sub_100012490(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v51;
      v76(v44, v47);
      v53 = sub_10021145C(v50, v52, &v81);

      *(v45 + 14) = v53;
      _os_log_impl(&_mh_execute_header, v41, v42, "Error checking Custodian Recovery key: %@ for %s", v45, 0x16u);
      sub_100008D3C(v46, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v48);
    }

    else
    {

      v37(v40, v8);
    }

    v65 = v78;
    swift_errorRetain();
    v80(v65 & 1, v39);
  }

  else
  {
    v54 = v70;
    v71(v70, v73, v8);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = v8;
      v59 = swift_slowAlloc();
      v81 = v59;
      *v57 = 67109378;
      v60 = v78;
      *(v57 + 4) = v78 & 1;
      *(v57 + 8) = 2080;
      sub_100012490(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v61 = dispatch thunk of CustomStringConvertible.description.getter();
      v63 = v62;
      v37(v54, v58);
      v64 = sub_10021145C(v61, v63, &v81);

      *(v57 + 10) = v64;
      _os_log_impl(&_mh_execute_header, v55, v56, "Custodian recovery key present: %{BOOL}d for otPeerID: %s ", v57, 0x12u);
      sub_10000839C(v59);
    }

    else
    {

      v37(v54, v8);
      v60 = v78;
    }

    return (v80)(v60 & 1, 0);
  }
}

uint64_t sub_100019130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100005814(&qword_1003D8D60, &unk_10033EA10);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  (*(v6 + 16))(&v12 - v7, a1, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, v8, v5);
  sub_100018104(a3, sub_10001AD50, v10);
}

uint64_t sub_100019280(char a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_100005814(&qword_1003D8D60, &unk_10033EA10);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100005814(&qword_1003D8D60, &unk_10033EA10);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100019304(uint64_t a1, uint64_t a2, char *a3, void (*a4)(void *), uint64_t a5, uint64_t a6, char *a7)
{
  sub_10001B660(a1, a2, a3, a4, a5, a6, a7);
}

void sub_100019348(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  v95 = a3;
  v97 = a1;
  v98 = a2;
  v92 = sub_100005814(&qword_1003D8EE8, &qword_10033EB00);
  v88 = *(v92 - 1);
  __chkstk_darwin(v92);
  v87 = &v74 - v7;
  v8 = type metadata accessor for Date();
  v93 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v91 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v10;
  __chkstk_darwin(v9);
  v99 = &v74 - v11;
  v82 = type metadata accessor for RecoveryKeys(0);
  v85 = *(v82 - 1);
  v12 = __chkstk_darwin(v82);
  v96 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = v13;
  __chkstk_darwin(v12);
  v15 = &v74 - v14;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v84 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v19;
  __chkstk_darwin(v18);
  v21 = &v74 - v20;
  v22 = sub_100005814(&qword_1003D8EF0, &unk_10033EB08);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v74 - v24;
  v26 = *(v23 + 16);
  v90 = v5;
  v26(&v74 - v24, v5 + OBJC_IVAR____TtC13appleaccountd24DaemonSecurityController__cdpContextProvider, v22);
  Dependency.wrappedValue.getter();
  (*(v23 + 8))(v25, v22);
  v27 = [objc_opt_self() contextForPrimaryAccount];
  sub_10000839C(aBlock);
  if (v27)
  {
    v80 = v27;
    v81 = a4;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v94 = v8;
    v28 = type metadata accessor for Logger();
    sub_100008D04(v28, qword_1003FAA88);
    v29 = *(v17 + 16);
    v30 = v16;
    v79 = v17 + 16;
    v78 = v29;
    v29(v21, v97, v16);
    sub_10001C1A8(v98, v15);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();
    v33 = os_log_type_enabled(v31, v32);
    v77 = v17;
    if (v33)
    {
      v34 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      aBlock[0] = v75;
      *v34 = 136315394;
      sub_100012490(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      (*(v17 + 8))(v21, v30);
      v38 = sub_10021145C(v35, v37, aBlock);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2080;
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      sub_10001C20C(v15);
      v42 = sub_10021145C(v39, v41, aBlock);

      *(v34 + 14) = v42;
      _os_log_impl(&_mh_execute_header, v31, v32, "Preflighting Custodian Recovery for custodianID: %s otPeerID: %s", v34, 0x16u);
      swift_arrayDestroy();

      v43 = v30;
    }

    else
    {

      sub_10001C20C(v15);
      (*(v17 + 8))(v21, v16);
      v43 = v16;
    }

    v76 = v43;
    v49 = v98;
    v50 = objc_allocWithZone(CDPCustodianRecoveryInfo);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v52 = Data._bridgeToObjectiveC()().super.isa;
    v53 = UUID._bridgeToObjectiveC()().super.isa;
    v82 = [v50 initWithWrappedRKC:isa wrappingKey:v52 custodianUUID:v53];

    v54 = v99;
    Date.init()();
    v55 = v87;
    v56 = v88;
    v57 = v92;
    (*(v88 + 16))(v87, v90 + OBJC_IVAR____TtC13appleaccountd24DaemonSecurityController__recoveryKeyController, v92);
    Dependency.wrappedValue.getter();
    (*(v56 + 8))(v55, v57);
    v92 = aBlock[0];
    v59 = v93;
    v58 = v94;
    v60 = v91;
    (*(v93 + 16))(v91, v54, v94);
    v61 = v84;
    v78(v84, v97, v43);
    sub_10001C1A8(v49, v96);
    v62 = (*(v59 + 80) + 16) & ~*(v59 + 80);
    v63 = v77;
    v64 = (v89 + *(v77 + 80) + v62) & ~*(v77 + 80);
    v65 = (v83 + *(v85 + 80) + v64) & ~*(v85 + 80);
    v66 = (v86 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
    v67 = swift_allocObject();
    (*(v59 + 32))(v67 + v62, v60, v58);
    (*(v63 + 32))(v67 + v64, v61, v76);
    sub_10001C26C(v96, v67 + v65);
    v68 = (v67 + v66);
    v69 = v81;
    *v68 = v95;
    v68[1] = v69;
    aBlock[4] = sub_10001CD7C;
    aBlock[5] = v67;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10020E828;
    aBlock[3] = &unk_1003A4B50;
    v70 = _Block_copy(aBlock);

    v71 = v92;
    v72 = v82;
    v73 = v80;
    [v92 validateRecoveryKey:v82 withContext:v80 completion:v70];
    _Block_release(v70);

    (*(v59 + 8))(v99, v94);
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_100008D04(v44, qword_1003FAA40);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Not logged in to AppleAccount, unable to fetch. Preflight Custodian Recovery aborted.", v47, 2u);
    }

    type metadata accessor for AACustodianError(0);
    aBlock[6] = -7002;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100012490(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    v48 = aBlock[0];
    v95(aBlock[0]);
  }
}

uint64_t sub_100019DD0(void (*a1)(char *, uint64_t), uint64_t a2, void *a3, uint64_t a4, void (*a5)(void (*)(char *, uint64_t)), uint64_t a6)
{
  v89 = a6;
  v90 = a5;
  v86 = a4;
  v91 = a1;
  v81 = type metadata accessor for RecoveryKeys(0);
  v8 = __chkstk_darwin(v81);
  v80 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v82 = &v76 - v10;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v79 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v87 = &v76 - v16;
  __chkstk_darwin(v15);
  v18 = &v76 - v17;
  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v76 - v24;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  v27 = sub_100008D04(v26, qword_1003FAA88);
  (*(v20 + 16))(v25, a2, v19);
  v28 = *(v12 + 16);
  v85 = a3;
  v83 = v28;
  v28(v18, a3, v11);
  v84 = v27;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  v31 = os_log_type_enabled(v29, v30);
  v88 = v12;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v78 = v30;
    v33 = v32;
    v77 = swift_slowAlloc();
    v92[0] = v77;
    *v33 = 134218242;
    Date.init()();
    v76 = v29;
    Date.timeIntervalSince(_:)();
    v35 = v34;
    v36 = *(v20 + 8);
    v36(v23, v19);
    v36(v25, v19);
    *(v33 + 4) = v35;
    *(v33 + 12) = 2080;
    sub_100012490(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v38;
    v40 = *(v12 + 8);
    v40(v18, v11);
    v41 = sub_10021145C(v37, v39, v92);

    *(v33 + 14) = v41;
    v42 = v76;
    _os_log_impl(&_mh_execute_header, v76, v78, "⏰ %f secs to preflightCustodianRecovery %s", v33, 0x16u);
    sub_10000839C(v77);
  }

  else
  {

    v40 = *(v12 + 8);
    v40(v18, v11);
    (*(v20 + 8))(v25, v19);
  }

  v43 = v11;
  v44 = v87;
  if (v91)
  {
    v83(v87, v85, v11);
    v45 = v82;
    sub_10001C1A8(v86, v82);
    swift_errorRetain();
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v85 = v49;
      v86 = swift_slowAlloc();
      v92[0] = v86;
      *v48 = 138412802;
      v50 = _convertErrorToNSError(_:)();
      *(v48 + 4) = v50;
      *v49 = v50;
      *(v48 + 12) = 2080;
      sub_100012490(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v51 = v40;
      v52 = v43;
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v55 = v54;
      v51(v44, v52);
      v56 = sub_10021145C(v53, v55, v92);

      *(v48 + 14) = v56;
      *(v48 + 22) = 2080;
      v57 = dispatch thunk of CustomStringConvertible.description.getter();
      v59 = v58;
      sub_10001C20C(v45);
      v60 = sub_10021145C(v57, v59, v92);

      *(v48 + 24) = v60;
      _os_log_impl(&_mh_execute_header, v46, v47, "Error preflighting custodian recovery: %@ for custodianID: %s otPeerID: %s", v48, 0x20u);
      sub_100008D3C(v85, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {

      sub_10001C20C(v45);
      v40(v44, v43);
    }

    v74 = v91;
    swift_errorRetain();
    v90(v74);
  }

  else
  {
    v91 = v40;
    v61 = v79;
    v83(v79, v85, v11);
    v62 = v80;
    sub_10001C1A8(v86, v80);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v92[0] = v87;
      *v65 = 136315394;
      sub_100012490(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v66 = dispatch thunk of CustomStringConvertible.description.getter();
      v68 = v67;
      v91(v61, v43);
      v69 = sub_10021145C(v66, v68, v92);

      *(v65 + 4) = v69;
      *(v65 + 12) = 2080;
      v70 = dispatch thunk of CustomStringConvertible.description.getter();
      v72 = v71;
      sub_10001C20C(v62);
      v73 = sub_10021145C(v70, v72, v92);

      *(v65 + 14) = v73;
      _os_log_impl(&_mh_execute_header, v63, v64, "Preflight Custodian Recovery successful for custodianID: %s otPeerID: %s", v65, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10001C20C(v62);
      v91(v61, v43);
    }

    return (v90)(0);
  }
}

uint64_t sub_10001A6F8()
{
  sub_10000839C((v0 + 16));
  v1 = OBJC_IVAR____TtC13appleaccountd24DaemonSecurityController__recoveryKeyController;
  v2 = sub_100005814(&qword_1003D8EE8, &qword_10033EB00);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd24DaemonSecurityController__cdpContextProvider;
  v4 = sub_100005814(&qword_1003D8EF0, &unk_10033EB08);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

void sub_10001A81C(uint64_t a1)
{
  sub_10001A8F4(319);
  if (v1 <= 0x3F)
  {
    sub_10001A998(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10001A8F4(uint64_t a1)
{
  if (!qword_1003D8DC0)
  {
    sub_10001A94C();
    v1 = type metadata accessor for Dependency();
    if (!v2)
    {
      atomic_store(v1, &qword_1003D8DC0);
    }
  }
}

unint64_t sub_10001A94C()
{
  result = qword_1003DF680;
  if (!qword_1003DF680)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003DF680);
  }

  return result;
}

void sub_10001A998(uint64_t a1)
{
  if (!qword_1003D8DC8)
  {
    sub_100008CBC(&qword_1003D9870, &qword_10033F000);
    v1 = type metadata accessor for Dependency();
    if (!v2)
    {
      atomic_store(v1, &qword_1003D8DC8);
    }
  }
}

uint64_t sub_10001A9FC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10001AA20, 0, 0);
}

uint64_t sub_10001AA20()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_10001AB14;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(&v0[3].u64[1], 0, 0, 0xD00000000000001FLL, 0x800000010032CC50, sub_10001ACB4, v1, &type metadata for Bool);
}

uint64_t sub_10001AB14()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_10001AC4C;
  }

  else
  {

    v2 = sub_10001AC30;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001AC4C()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_10001ACBC()
{
  v1 = sub_100005814(&qword_1003D8D60, &unk_10033EA10);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10001AD50(char a1, uint64_t a2)
{
  sub_100005814(&qword_1003D8D60, &unk_10033EA10);

  return sub_100019280(a1, a2);
}

uint64_t sub_10001ADDC(uint64_t a1, char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v85 = a8;
  v80 = a1;
  v70 = sub_100005814(&qword_1003D8EF8, &qword_10033EB18);
  __chkstk_darwin(v70);
  v71 = (&v67 - v14);
  v83 = type metadata accessor for UUID();
  v81 = *(v83 - 8);
  __chkstk_darwin(v83);
  v78 = v15;
  v79 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100005814(&qword_1003D8EE8, &qword_10033EB00);
  v74 = *(v16 - 8);
  isa = v16;
  __chkstk_darwin(v16);
  v73 = &v67 - v17;
  v84 = type metadata accessor for Date();
  v82 = *(v84 - 8);
  v18 = __chkstk_darwin(v84);
  v76 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v19;
  __chkstk_darwin(v18);
  v86 = &v67 - v20;
  v21 = sub_100005814(&qword_1003D8EF0, &unk_10033EB08);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v67 - v23;
  v25 = swift_allocObject();
  *(v25 + 2) = a3;
  *(v25 + 3) = a4;
  v69 = a5;
  *(v25 + 4) = a5;
  *(v25 + 5) = a6;
  v68 = a7;
  *(v25 + 6) = a7;
  v26 = v85;
  *(v25 + 7) = v85;
  v27 = *(v22 + 16);
  v77 = a2;
  v27(v24, &a2[OBJC_IVAR____TtC13appleaccountd24DaemonSecurityController__cdpContextProvider], v21);
  v28 = a3;

  Dependency.wrappedValue.getter();
  (*(v22 + 8))(v24, v21);
  v29 = [objc_opt_self() contextForPrimaryAccount];
  sub_10000839C(aBlock);
  if (v29)
  {
    v85 = v29;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v71 = v25;
    v30 = type metadata accessor for Logger();
    sub_100008D04(v30, qword_1003FAA88);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Creating recovery keys.", v33, 2u);
    }

    v34 = v86;
    Date.init()();
    v35 = v73;
    v36 = v74;
    v37 = isa;
    (*(v74 + 16))(v73, &v77[OBJC_IVAR____TtC13appleaccountd24DaemonSecurityController__recoveryKeyController], isa);
    Dependency.wrappedValue.getter();
    (*(v36 + 8))(v35, v37);
    v77 = aBlock[0];
    v38 = v80;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v39 = v82;
    v40 = v76;
    v41 = v84;
    (*(v82 + 16))(v76, v34, v84);
    v42 = v81;
    v43 = v79;
    v44 = v38;
    v45 = v83;
    (*(v81 + 16))(v79, v44, v83);
    v46 = (*(v39 + 80) + 16) & ~*(v39 + 80);
    v47 = (v72 + *(v42 + 80) + v46) & ~*(v42 + 80);
    v48 = (v78 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
    v49 = swift_allocObject();
    v50 = v40;
    v51 = v41;
    (*(v39 + 32))(v49 + v46, v50, v41);
    (*(v42 + 32))(v49 + v47, v43, v45);
    v52 = (v49 + v48);
    v53 = v71;
    *v52 = sub_10001C33C;
    v52[1] = v53;
    aBlock[4] = sub_10001C350;
    aBlock[5] = v49;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100015858;
    aBlock[3] = &unk_1003A4B00;
    v54 = _Block_copy(aBlock);

    v55 = v77;
    v56 = v85;
    v57 = isa;
    [v77 createRecoveryKeyWithContext:v85 forUUID:isa completion:v54];
    _Block_release(v54);

    (*(v39 + 8))(v86, v51);
  }

  else
  {
    v58 = a3;
    v59 = v69;
    v60 = v68;
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    sub_100008D04(v61, qword_1003FAA40);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&_mh_execute_header, v62, v63, "Not logged in to AppleAccount, unable to fetch", v64, 2u);
    }

    type metadata accessor for AACustodianError(0);
    aBlock[6] = -7002;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100012490(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    v65 = v71;
    *v71 = aBlock[0];
    swift_storeEnumTagMultiPayload();
    sub_10011E5C8(v65, v58, a4, v59, a6, v60, v26);
    sub_100008D3C(v65, &qword_1003D8EF8, &qword_10033EB18);
  }
}

void sub_10001B660(uint64_t a1, uint64_t a2, char *a3, void (*a4)(void *), uint64_t a5, uint64_t a6, char *a7)
{
  v96 = a7;
  v101 = a2;
  v103 = a1;
  v92 = sub_100005814(&qword_1003D8EE8, &qword_10033EB00);
  v90 = *(v92 - 8);
  __chkstk_darwin(v92);
  v89 = &v79 - v11;
  v12 = type metadata accessor for Date();
  v94 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v93 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v14;
  __chkstk_darwin(v13);
  v104 = &v79 - v15;
  v85 = type metadata accessor for RecoveryKeys(0);
  v87 = *(v85 - 1);
  v16 = __chkstk_darwin(v85);
  v102 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v17;
  __chkstk_darwin(v16);
  v84 = &v79 - v18;
  v19 = type metadata accessor for UUID();
  v99 = *(v19 - 8);
  v100 = v19;
  v20 = __chkstk_darwin(v19);
  v98 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = v21;
  __chkstk_darwin(v20);
  v23 = &v79 - v22;
  v24 = sub_100005814(&qword_1003D8EF0, &unk_10033EB08);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v79 - v26;
  v28 = swift_allocObject();
  v29 = a4;
  *(v28 + 2) = a4;
  *(v28 + 3) = a5;
  v30 = v96;
  *(v28 + 4) = a6;
  *(v28 + 5) = v30;
  v31 = *(v25 + 16);
  v96 = a3;
  v97 = v28;
  v31(v27, &a3[OBJC_IVAR____TtC13appleaccountd24DaemonSecurityController__cdpContextProvider], v24);

  Dependency.wrappedValue.getter();
  (*(v25 + 8))(v27, v24);
  v32 = [objc_opt_self() contextForPrimaryAccount];
  sub_10000839C(aBlock);
  if (v32)
  {
    v83 = v32;
    v95 = v12;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100008D04(v33, qword_1003FAA88);
    v35 = v99;
    v34 = v100;
    v36 = v99 + 16;
    v82 = *(v99 + 16);
    v82(v23, v103, v100);
    v37 = v84;
    sub_10001C1A8(v101, v84);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      aBlock[0] = v80;
      *v40 = 136315394;
      sub_100012490(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v81 = v36;
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v42;
      (*(v35 + 8))(v23, v34);
      v44 = sub_10021145C(v41, v43, aBlock);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2080;
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v46;
      sub_10001C20C(v37);
      v48 = sub_10021145C(v45, v47, aBlock);

      *(v40 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v38, v39, "Preflighting Custodian Recovery for custodianID: %s otPeerID: %s", v40, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10001C20C(v37);
      (*(v35 + 8))(v23, v34);
    }

    v54 = v101;
    v55 = objc_allocWithZone(CDPCustodianRecoveryInfo);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v57 = Data._bridgeToObjectiveC()().super.isa;
    v58 = UUID._bridgeToObjectiveC()().super.isa;
    v85 = [v55 initWithWrappedRKC:isa wrappingKey:v57 custodianUUID:v58];

    v59 = v104;
    Date.init()();
    v60 = v90;
    v61 = v89;
    v62 = v92;
    (*(v90 + 16))(v89, &v96[OBJC_IVAR____TtC13appleaccountd24DaemonSecurityController__recoveryKeyController], v92);
    Dependency.wrappedValue.getter();
    (*(v60 + 8))(v61, v62);
    v96 = aBlock[0];
    v63 = v93;
    v64 = v94;
    v65 = v95;
    (*(v94 + 16))(v93, v59, v95);
    v66 = v100;
    v82(v98, v103, v100);
    sub_10001C1A8(v54, v102);
    v67 = (*(v64 + 80) + 16) & ~*(v64 + 80);
    v68 = v99;
    v69 = (v91 + *(v99 + 80) + v67) & ~*(v99 + 80);
    v70 = (v86 + *(v87 + 80) + v69) & ~*(v87 + 80);
    v71 = (v88 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
    v72 = swift_allocObject();
    (*(v64 + 32))(v72 + v67, v63, v65);
    (*(v68 + 32))(v72 + v69, v98, v66);
    sub_10001C26C(v102, v72 + v70);
    v73 = (v72 + v71);
    v74 = v97;
    *v73 = sub_10001C19C;
    v73[1] = v74;
    aBlock[4] = sub_10001C2D0;
    aBlock[5] = v72;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10020E828;
    aBlock[3] = &unk_1003A4A88;
    v75 = _Block_copy(aBlock);

    v76 = v96;
    v77 = v85;
    v78 = v83;
    [v96 validateRecoveryKey:v85 withContext:v83 completion:v75];
    _Block_release(v75);

    (*(v64 + 8))(v104, v95);
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_100008D04(v49, qword_1003FAA40);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "Not logged in to AppleAccount, unable to fetch. Preflight Custodian Recovery aborted.", v52, 2u);
    }

    type metadata accessor for AACustodianError(0);
    aBlock[6] = -7002;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100012490(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    v53 = aBlock[0];
    sub_100093CE0(aBlock[0], v29, a5, a6);
  }
}

uint64_t sub_10001C15C()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10001C1A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecoveryKeys(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001C20C(uint64_t a1)
{
  v2 = type metadata accessor for RecoveryKeys(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001C26C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecoveryKeys(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001C2D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001C2EC()
{

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_10001C354()
{
  v14 = type metadata accessor for Date();
  v1 = *(v14 - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = (type metadata accessor for RecoveryKeys(0) - 8);
  v9 = (v6 + v7 + *(*v8 + 80)) & ~*(*v8 + 80);
  v10 = (*(*v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2, v14);
  v11 = *(v5 + 8);
  v11(v0 + v6, v4);
  v12 = v0 + v9;
  sub_100012324(*v12, *(v12 + 8));
  sub_100012324(*(v12 + 16), *(v12 + 24));
  v11(v12 + v8[8], v4);

  return _swift_deallocObject(v0, v10 + 16);
}

uint64_t sub_10001C548(void (*a1)(char *, uint64_t))
{
  v3 = *(type metadata accessor for Date() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for UUID() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for RecoveryKeys(0) - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = v1 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = *(v11 + 8);

  return sub_100019DD0(a1, v1 + v4, (v1 + v7), v1 + v10, v12, v13);
}

uint64_t sub_10001C6B0(int a1, uint64_t a2)
{
  v5 = *(type metadata accessor for Date() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);

  return sub_100018974(a1, a2, v2 + v6, v2 + v9, v11, v12);
}

uint64_t sub_10001C7C4(uint64_t a1)
{
  v3 = *(type metadata accessor for Date() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for UUID() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_1000179B4(a1, v1 + v4, v1 + v7, v9, v10);
}

uint64_t sub_10001C8C8()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return _swift_deallocObject(v0, v8 + 16);
}

uint64_t sub_10001CA28(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for Date() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);

  return sub_10001684C(a1, a2, v2 + v6, v2 + v9, v11, v12);
}

uint64_t sub_10001CB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_10001CC1C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10001CCC8(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void (*sub_10001CD84(void (*result)(void *), uint64_t a2, uint64_t a3))(void *)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 40); ; i += 2)
    {
      v7 = *i;
      v8[0] = *(i - 1);
      v8[1] = v7;

      v5(v8);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_10001CE30(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = *(*(a3 + 56) + ((v13 << 9) | (8 * __clz(__rbit64(v9)))));
      swift_errorRetain();
      a1(&v14);
      if (v3)
      {
        break;
      }

      v9 &= v9 - 1;

      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10001CF50(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v18 = a1;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = __clz(__rbit64(v8)) | (v12 << 6);
      v14 = (*(a3 + 48) + 16 * v13);
      v15 = v14[1];
      v16 = *(*(a3 + 56) + 8 * v13);
      v17[0] = *v14;
      v17[1] = v15;
      v17[2] = v16;

      swift_errorRetain();
      v18(v17);
      if (v3)
      {
        break;
      }

      v8 &= v8 - 1;

      v11 = v12;
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void (*sub_10001D098(void (*result)(uint64_t *), uint64_t a2, uint64_t a3))(uint64_t *)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 32); ; ++i)
    {
      v7 = *i;

      v5(&v7);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

void (*sub_10001D12C(void (*result)(__int128 *), uint64_t a2, uint64_t a3))(__int128 *)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 32); ; ++i)
    {
      v7 = *i;
      swift_unknownObjectRetain();
      v5(&v7);
      if (v3)
      {
        break;
      }

      result = swift_unknownObjectRelease();
      if (!--v4)
      {
        return result;
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Int sub_10001D1DC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10001D250(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_10001D2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v72 = a6;
  v73 = a5;
  v65 = a3;
  v68 = a2;
  v69 = a1;
  v63 = type metadata accessor for CustodianshipRecords(0);
  __chkstk_darwin(v63);
  v62 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005814(&qword_1003D91A8, &unk_10033EC40);
  __chkstk_darwin(v8 - 8);
  v67 = &v61 - v9;
  v10 = type metadata accessor for CustodianHealthRecord(0);
  v64 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100005814(&unk_1003D91B0, qword_1003444F0);
  __chkstk_darwin(v13 - 8);
  v15 = &v61 - v14;
  v16 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v66 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100005814(&unk_1003DF000, &unk_10033EC50);
  __chkstk_darwin(v19 - 8);
  v21 = &v61 - v20;
  v22 = type metadata accessor for CustodianRecord(0);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_100005814(&unk_1003D91C0, &unk_10033FA50);
  __chkstk_darwin(v71);
  v70 = (&v61 - v26);
  if (*(a4 + 16))
  {
    type metadata accessor for AAError(0);
    v74 = -4408;
    sub_100005814(&unk_1003DB0A0, &qword_10033EC60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10033EB30;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v28;
    *(inited + 72) = sub_100005814(&unk_1003D91D0, &unk_10033F9C0);
    *(inited + 48) = a4;

    sub_100308978(inited);
    swift_setDeallocating();
    sub_100008D3C(inited + 32, &qword_1003DB0B0, &unk_10033E710);
    sub_100039268(&qword_1003D8370, type metadata accessor for AAError, &unk_10033DD74);
    _BridgedStoredNSError.init(_:userInfo:)();
    v29 = v75;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100008D04(v30, qword_1003FAA88);
    v31 = v29;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      v36 = _convertErrorToNSError(_:)();
      *(v34 + 4) = v36;
      *v35 = v36;
      _os_log_impl(&_mh_execute_header, v32, v33, "Failed to fetch all custodianship records: %@", v34, 0xCu);
      sub_100008D3C(v35, &unk_1003D9140, &qword_10033E640);
    }

    v37 = v70;
    *v70 = v31;
    swift_storeEnumTagMultiPayload();
    v38 = v31;
    v73(v37);

    v39 = v37;
    return sub_100008D3C(v39, &unk_1003D91C0, &unk_10033FA50);
  }

  v61 = v10;
  v41 = v67;
  v40 = v68;
  sub_100012D04(v69, v21, &unk_1003DF000, &unk_10033EC50);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    v42 = &unk_1003DF000;
    v43 = &unk_10033EC50;
    v44 = v21;
LABEL_13:
    sub_100008D3C(v44, v42, v43);
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_100008D04(v46, qword_1003FAA88);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "Failed to fetch all custodianship records.", v49, 2u);
    }

    type metadata accessor for AACustodianError(0);
    v74 = -7003;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    v50 = v70;
    *v70 = v75;
    swift_storeEnumTagMultiPayload();
    v73(v50);
    v39 = v50;
    return sub_100008D3C(v39, &unk_1003D91C0, &unk_10033FA50);
  }

  sub_100039200(v21, v25, type metadata accessor for CustodianRecord);
  sub_100012D04(v40, v15, &unk_1003D91B0, qword_1003444F0);
  if ((*(v66 + 48))(v15, 1, v16) == 1)
  {
    sub_1000385BC(v25, type metadata accessor for CustodianRecord);
    v42 = &unk_1003D91B0;
    v43 = qword_1003444F0;
    v44 = v15;
    goto LABEL_13;
  }

  v45 = v18;
  sub_100039200(v15, v18, type metadata accessor for CustodianRecoveryInfoRecord);
  sub_100012D04(v65, v41, &qword_1003D91A8, &unk_10033EC40);
  if ((*(v64 + 48))(v41, 1, v61) == 1)
  {
    sub_1000385BC(v18, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_1000385BC(v25, type metadata accessor for CustodianRecord);
    v42 = &qword_1003D91A8;
    v43 = &unk_10033EC40;
    v44 = v41;
    goto LABEL_13;
  }

  v52 = v12;
  sub_100039200(v41, v12, type metadata accessor for CustodianHealthRecord);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v53 = type metadata accessor for Logger();
  sub_100008D04(v53, qword_1003FAA88);
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.info.getter();
  v56 = os_log_type_enabled(v54, v55);
  v57 = v62;
  v58 = v63;
  if (v56)
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&_mh_execute_header, v54, v55, "Custodianship records fetched successfully.", v59, 2u);
  }

  sub_100038554(v25, v57, type metadata accessor for CustodianRecord);
  sub_100038554(v45, v57 + *(v58 + 20), type metadata accessor for CustodianRecoveryInfoRecord);
  sub_100038554(v52, v57 + *(v58 + 24), type metadata accessor for CustodianHealthRecord);
  v60 = v70;
  sub_100038554(v57, v70, type metadata accessor for CustodianshipRecords);
  swift_storeEnumTagMultiPayload();
  v73(v60);
  sub_100008D3C(v60, &unk_1003D91C0, &unk_10033FA50);
  sub_1000385BC(v57, type metadata accessor for CustodianshipRecords);
  sub_1000385BC(v52, type metadata accessor for CustodianHealthRecord);
  sub_1000385BC(v45, type metadata accessor for CustodianRecoveryInfoRecord);
  return sub_1000385BC(v25, type metadata accessor for CustodianRecord);
}

uint64_t sub_10001DDA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a2;
  v66 = a3;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v71 = *(v4 - 8);
  v72 = v4;
  __chkstk_darwin(v4);
  v69 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for DispatchQoS();
  v68 = *(v70 - 8);
  __chkstk_darwin(v70);
  v67 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for DispatchQoS.QoSClass();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v61 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100008D04(v12, qword_1003FAA88);
  v13 = *(v9 + 16);
  v64 = a1;
  v13(v11, a1, v8);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    aBlock[0] = v17;
    *v16 = 136315138;
    sub_100039268(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    (*(v9 + 8))(v11, v8);
    v21 = sub_10021145C(v18, v20, aBlock);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "Fetching custodianship owner records with ID: %s", v16, 0xCu);
    sub_10000839C(v17);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v22 = dispatch_group_create();
  sub_100005814(&unk_1003DF000, &unk_10033EC50);
  v23 = swift_allocBox();
  v25 = v24;
  v26 = type metadata accessor for CustodianRecord(0);
  (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
  sub_100005814(&unk_1003D91B0, qword_1003444F0);
  v27 = swift_allocBox();
  v29 = v28;
  v30 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
  sub_100005814(&qword_1003D91A8, &unk_10033EC40);
  v74 = swift_allocBox();
  v32 = v31;
  v33 = type metadata accessor for CustodianHealthRecord(0);
  (*(*(v33 - 8) + 56))(v32, 1, 1, v33);
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  dispatch_group_enter(v22);
  v37 = swift_allocObject();
  v75 = v23;
  v37[2] = v23;
  v37[3] = v34;
  v37[4] = v22;

  v38 = v22;
  v39 = v64;
  sub_100022FF4(v64, sub_100039A70, v37);

  dispatch_group_enter(v38);
  v40 = swift_allocObject();
  v73 = v27;
  v40[2] = v27;
  v40[3] = v35;
  v40[4] = v38;
  v41 = v38;

  sub_100020600(v39, sub_100039A7C, v40);

  dispatch_group_enter(v41);
  v42 = swift_allocObject();
  v43 = v74;
  v42[2] = v74;
  v42[3] = v36;
  v42[4] = v41;
  v60 = v41;
  v44 = v43;

  sub_10002BCD0(v39, sub_100039AD0, v42);

  sub_100016034(0, &qword_1003DC2B0, OS_dispatch_queue_ptr);
  v45 = v62;
  v46 = v61;
  v47 = v63;
  (*(v62 + 104))(v61, enum case for DispatchQoS.QoSClass.default(_:), v63);
  v48 = static OS_dispatch_queue.global(qos:)();
  (*(v45 + 8))(v46, v47);
  v49 = swift_allocObject();
  v49[2] = v34;
  v49[3] = v35;
  v50 = v65;
  v51 = v66;
  v49[4] = v36;
  v49[5] = v50;
  v52 = v75;
  v49[6] = v51;
  v49[7] = v52;
  v49[8] = v73;
  v49[9] = v44;
  aBlock[4] = sub_100039B44;
  aBlock[5] = v49;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003A5388;
  v53 = _Block_copy(aBlock);

  v54 = v67;
  static DispatchQoS.unspecified.getter();
  v76 = _swiftEmptyArrayStorage;
  sub_100039268(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000383E4();
  v55 = v69;
  v56 = v72;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v57 = v60;
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v53);

  (*(v71 + 8))(v55, v56);
  (*(v68 + 8))(v54, v70);
}

void sub_10001E6D8(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v7 = sub_100005814(&unk_1003DF000, &unk_10033EC50);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  v10 = sub_100005814(&unk_1003DA200, &unk_10033FA80);
  __chkstk_darwin(v10);
  v12 = (&v22 - v11);
  v13 = swift_projectBox();
  sub_100012D04(a1, v12, &unk_1003DA200, &unk_10033FA80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v12;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100008D04(v15, qword_1003FAA88);
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = _convertErrorToNSError(_:)();
      *(v18 + 4) = v20;
      *v19 = v20;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to fetch custodian record: %@", v18, 0xCu);
      sub_100008D3C(v19, &unk_1003D9140, &qword_10033E640);
    }

    swift_beginAccess();
    *(a3 + 16) = v14;
  }

  else
  {
    sub_100039200(v12, v9, type metadata accessor for CustodianRecord);
    v21 = type metadata accessor for CustodianRecord(0);
    (*(*(v21 - 8) + 56))(v9, 0, 1, v21);
    swift_beginAccess();
    sub_100039B58(v9, v13, &unk_1003DF000, &unk_10033EC50);
  }

  dispatch_group_leave(a4);
}

void sub_10001E9DC(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v7 = sub_100005814(&unk_1003D91B0, qword_1003444F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  v10 = sub_100005814(&unk_1003DB610, &unk_10033FA90);
  __chkstk_darwin(v10);
  v12 = (&v22 - v11);
  v13 = swift_projectBox();
  sub_100012D04(a1, v12, &unk_1003DB610, &unk_10033FA90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v12;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100008D04(v15, qword_1003FAA88);
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = _convertErrorToNSError(_:)();
      *(v18 + 4) = v20;
      *v19 = v20;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to fetch custodianship record: %@", v18, 0xCu);
      sub_100008D3C(v19, &unk_1003D9140, &qword_10033E640);
    }

    swift_beginAccess();
    *(a3 + 16) = v14;
  }

  else
  {
    sub_100039200(v12, v9, type metadata accessor for CustodianRecoveryInfoRecord);
    v21 = type metadata accessor for CustodianRecoveryInfoRecord(0);
    (*(*(v21 - 8) + 56))(v9, 0, 1, v21);
    swift_beginAccess();
    sub_100039B58(v9, v13, &unk_1003D91B0, qword_1003444F0);
  }

  dispatch_group_leave(a4);
}

void sub_10001ECE0(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v7 = sub_100005814(&qword_1003D91A8, &unk_10033EC40);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  v10 = sub_100005814(&qword_1003D91E8, &qword_100346AC0);
  __chkstk_darwin(v10);
  v12 = (&v22 - v11);
  v13 = swift_projectBox();
  sub_100012D04(a1, v12, &qword_1003D91E8, &qword_100346AC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v12;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100008D04(v15, qword_1003FAA88);
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = _convertErrorToNSError(_:)();
      *(v18 + 4) = v20;
      *v19 = v20;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to fetch health record: %@", v18, 0xCu);
      sub_100008D3C(v19, &unk_1003D9140, &qword_10033E640);
    }

    swift_beginAccess();
    *(a3 + 16) = v14;
  }

  else
  {
    sub_100039200(v12, v9, type metadata accessor for CustodianHealthRecord);
    v21 = type metadata accessor for CustodianHealthRecord(0);
    (*(*(v21 - 8) + 56))(v9, 0, 1, v21);
    swift_beginAccess();
    sub_100039B58(v9, v13, &qword_1003D91A8, &unk_10033EC40);
  }

  dispatch_group_leave(a4);
}

uint64_t sub_10001EFE4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, char *, char *, void *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = a5;
  v28 = a4;
  v11 = sub_100005814(&qword_1003D91A8, &unk_10033EC40);
  __chkstk_darwin(v11 - 8);
  v13 = &v27 - v12;
  v14 = sub_100005814(&unk_1003D91B0, qword_1003444F0);
  __chkstk_darwin(v14 - 8);
  v16 = &v27 - v15;
  v17 = sub_100005814(&unk_1003DF000, &unk_10033EC50);
  __chkstk_darwin(v17 - 8);
  v19 = &v27 - v18;
  v20 = swift_projectBox();
  v21 = swift_projectBox();
  v22 = swift_projectBox();
  v29 = &_swiftEmptyDictionarySingleton;
  swift_beginAccess();
  v23 = *(a1 + 16);
  if (v23)
  {
    swift_errorRetain();
    sub_1001BE004(v23, 0xD000000000000013, 0x800000010032CF40);
  }

  swift_beginAccess();
  v24 = *(a2 + 16);
  if (v24)
  {
    swift_errorRetain();
    sub_1001BE004(v24, 0xD000000000000016, 0x800000010032CF20);
  }

  swift_beginAccess();
  v25 = *(a3 + 16);
  if (v25)
  {
    swift_errorRetain();
    sub_1001BE004(v25, 0xD00000000000001FLL, 0x800000010032CF00);
  }

  swift_beginAccess();
  sub_100012D04(v20, v19, &unk_1003DF000, &unk_10033EC50);
  swift_beginAccess();
  sub_100012D04(v21, v16, &unk_1003D91B0, qword_1003444F0);
  swift_beginAccess();
  sub_100012D04(v22, v13, &qword_1003D91A8, &unk_10033EC40);
  v28(v19, v16, v13, v29);

  sub_100008D3C(v13, &qword_1003D91A8, &unk_10033EC40);
  sub_100008D3C(v16, &unk_1003D91B0, qword_1003444F0);
  return sub_100008D3C(v19, &unk_1003DF000, &unk_10033EC50);
}

uint64_t sub_10001F330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v7[6] = sub_100005814(&unk_1003D9210, &qword_10033ECA8);
  v7[7] = swift_task_alloc();
  v7[8] = type metadata accessor for CustodianRecoveryRecords(0);
  v7[9] = swift_task_alloc();
  v7[10] = type metadata accessor for CustodianHealthRecord(0);
  v7[11] = swift_task_alloc();
  type metadata accessor for CustodianRecoveryInfoRecord(0);
  v7[12] = swift_task_alloc();
  type metadata accessor for CustodianshipInfoRecord(0);
  v7[13] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v7[14] = v8;
  v7[15] = *(v8 - 8);
  v7[16] = swift_task_alloc();
  v7[17] = swift_task_alloc();

  return _swift_task_switch(sub_10001F4F4, 0, 0);
}

uint64_t sub_10001F4F4()
{
  v24 = v0;
  v1 = *(v0[15] + 16);
  v1(v0[17], v0[2], v0[14]);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[14];
  v5 = type metadata accessor for Logger();
  v0[18] = sub_100008D04(v5, qword_1003FAA88);
  v1(v2, v3, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[15];
  v9 = v0[16];
  v11 = v0[14];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v12 = 136315138;
    sub_100039268(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v16 = *(v10 + 8);
    v16(v9, v11);
    v17 = sub_10021145C(v13, v15, &v23);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Fetching recovery records with ID: %s", v12, 0xCu);
    sub_10000839C(v22);
  }

  else
  {

    v16 = *(v10 + 8);
    v16(v9, v11);
  }

  v0[19] = v16;
  v18 = swift_task_alloc();
  v0[20] = v18;
  *v18 = v0;
  v18[1] = sub_10001F784;
  v19 = v0[13];
  v20 = v0[2];

  return sub_1000268EC(v19, v20);
}

uint64_t sub_10001F784()
{
  v2 = *v1;
  v2[21] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000200BC, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[22] = v3;
    *v3 = v2;
    v3[1] = sub_10001F900;
    v4 = v2[12];
    v5 = v2[2];

    return sub_100021548(v4, v5, 0, 0);
  }
}

uint64_t sub_10001F900()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_10001FBA0;
  }

  else
  {
    v2 = sub_10001FA14;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001FA14()
{
  v1 = v0[2];
  RecoveryRecordsRequest = type metadata accessor for FetchRecoveryRecordsRequest(0);
  v3 = 0;
  if (*(v1 + *(RecoveryRecordsRequest + 28)) == 1)
  {
    v4 = RecoveryRecordsRequest;
    v5 = kAAAnalyticsEventFetchCustodianHealthRecord;
    sub_100016034(0, &qword_1003D8B40, AAFAnalyticsEvent_ptr);
    v6 = *(v4 + 36);
    v7 = (v1 + *(v4 + 32));
    v8 = *v7;
    v9 = v7[1];
    v10 = v1 + v6;
    v11 = *(v1 + v6);
    v12 = *(v10 + 8);

    v13 = v5;

    v3 = sub_100245D38(v13, v8, v9, v11, v12);
  }

  v0[24] = v3;
  v14 = v0[17];
  v15 = v0[3];
  ObjectType = swift_getObjectType();
  v17 = swift_task_alloc();
  v0[25] = v17;
  *(v17 + 16) = v15;
  *(v17 + 24) = v14;
  v18 = swift_task_alloc();
  v0[26] = v18;
  *v18 = v0;
  v18[1] = sub_10001FCDC;
  v19 = v0[11];

  return sub_1002470C4(v19, v3, &unk_10033ECB8, v17, ObjectType);
}

uint64_t sub_10001FBA0()
{
  sub_1000385BC(*(v0 + 104), type metadata accessor for CustodianshipInfoRecord);
  v1 = *(v0 + 184);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);
  (*(v0 + 152))(*(v0 + 136), *(v0 + 112));
  *v2 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v3(v2);

  sub_100008D3C(v2, &unk_1003D9210, &qword_10033ECA8);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10001FCDC()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_1000201DC;
  }

  else
  {
    v2 = sub_10001FE0C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001FE0C()
{
  v1 = v0[12];
  v2 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  sub_100038554(v0[13], v3, type metadata accessor for CustodianshipInfoRecord);
  sub_100038554(v1, v3 + *(v4 + 20), type metadata accessor for CustodianRecoveryInfoRecord);
  sub_100038554(v2, v3 + *(v4 + 24), type metadata accessor for CustodianHealthRecord);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Custodianship records fetched successfully.", v7, 2u);
  }

  v8 = v0[24];
  v18 = v0[17];
  v19 = v0[19];
  v17 = v0[14];
  v9 = v0[12];
  v16 = v0[13];
  v10 = v0[11];
  v11 = v0[9];
  v12 = v0[7];
  v13 = v0[4];

  sub_100038554(v11, v12, type metadata accessor for CustodianRecoveryRecords);
  swift_storeEnumTagMultiPayload();
  v13(v12);

  sub_100008D3C(v12, &unk_1003D9210, &qword_10033ECA8);
  sub_1000385BC(v11, type metadata accessor for CustodianRecoveryRecords);
  sub_1000385BC(v10, type metadata accessor for CustodianHealthRecord);
  sub_1000385BC(v9, type metadata accessor for CustodianRecoveryInfoRecord);
  sub_1000385BC(v16, type metadata accessor for CustodianshipInfoRecord);
  v19(v18, v17);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000200BC()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);
  (*(v0 + 152))(*(v0 + 136), *(v0 + 112));
  *v2 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v3(v2);

  sub_100008D3C(v2, &unk_1003D9210, &qword_10033ECA8);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000201DC()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  sub_1000385BC(v1, type metadata accessor for CustodianRecoveryInfoRecord);
  sub_1000385BC(v2, type metadata accessor for CustodianshipInfoRecord);
  v3 = *(v0 + 216);
  v4 = *(v0 + 56);
  v5 = *(v0 + 32);
  (*(v0 + 152))(*(v0 + 136), *(v0 + 112));
  *v4 = v3;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v5(v4);

  sub_100008D3C(v4, &unk_1003D9210, &qword_10033ECA8);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100020340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_100020364, 0, 0);
}

uint64_t sub_100020364()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = type metadata accessor for CustodianHealthRecord(0);
  *v2 = v0;
  v2[1] = sub_100020460;
  v4 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000021, 0x800000010032CD80, sub_100038978, v1, v3);
}

uint64_t sub_100020460()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10002059C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10002059C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100020600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v51 = a3;
  v49 = a2;
  v4 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v54 = *(v4 - 8);
  v55 = v4;
  __chkstk_darwin(v4);
  v52 = &v42 - v5;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v48 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v53 = &v42 - v10;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v46 = v14;
  v47 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v42 - v15;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100008D04(v17, qword_1003FAA88);
  v45 = *(v12 + 16);
  v45(v16, a1, v11);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v43 = a1;
    v21 = v20;
    v42 = swift_slowAlloc();
    v56[0] = v42;
    *v21 = 136315138;
    sub_100039268(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v7;
    v23 = v6;
    v25 = v24;
    (*(v12 + 8))(v16, v11);
    v26 = sub_10021145C(v22, v25, v56);
    v6 = v23;
    v7 = v44;

    *(v21 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v18, v19, "Fetching recovery info with ID: %s", v21, 0xCu);
    sub_10000839C(v42);

    a1 = v43;
  }

  else
  {

    (*(v12 + 8))(v16, v11);
  }

  v27 = v47;
  v45(v47, a1, v11);
  v28 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v29 = (v46 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v12 + 32))(v30 + v28, v27, v11);
  v31 = (v30 + v29);
  v32 = v51;
  *v31 = v49;
  v31[1] = v32;
  v33 = sub_1000080F8((v50 + 16), *(v50 + 40));
  type metadata accessor for LocalCache();

  v34 = v48;
  sub_100307F40();
  v35 = v53;
  URL.appendingPathComponent(_:isDirectory:)();
  v36 = *(v7 + 8);
  v36(v34, v6);
  v37 = *v33;
  v39 = v54;
  v38 = v55;
  v40 = v52;
  (*(v54 + 16))(v52, v37 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v55);
  Dependency.wrappedValue.getter();
  (*(v39 + 8))(v40, v38);
  sub_1000080F8(v56, v56[3]);
  sub_100032500(v35, sub_10003973C, v30, &unk_1003A52A8, sub_1000398C8, &unk_1003A52C0);

  v36(v35, v6);
  return sub_10000839C(v56);
}

uint64_t sub_100020BA8(uint64_t a1, char a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v72 = a5;
  v73 = a4;
  v70 = sub_100005814(&unk_1003DB610, &unk_10033FA90);
  __chkstk_darwin(v70);
  v71 = &v65[-v8];
  v9 = type metadata accessor for UUID();
  v68 = *(v9 - 8);
  v69 = v9;
  v10 = __chkstk_darwin(v9);
  v12 = &v65[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v65[-v13];
  v15 = sub_100005814(&unk_1003D91B0, qword_1003444F0);
  __chkstk_darwin(v15 - 8);
  v17 = &v65[-v16];
  v18 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v65[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = __chkstk_darwin(v20);
  if (a2)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100008D04(v25, qword_1003FAA88);
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    sub_1000399DC(a1, 1);
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      v30 = _convertErrorToNSError(_:)();
      *(v28 + 4) = v30;
      *v29 = v30;
      _os_log_impl(&_mh_execute_header, v26, v27, "Error fetching recovery info records: %@", v28, 0xCu);
      sub_100008D3C(v29, &unk_1003D9140, &qword_10033E640);
    }

    v31 = v71;
    *v71 = a1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v73(v31);
    v32 = v31;
    return sub_100008D3C(v32, &unk_1003DB610, &unk_10033FA90);
  }

  v33 = &v65[-v24];
  __chkstk_darwin(v23);
  v67 = a3;
  *&v65[-16] = a3;
  sub_100213EF4(sub_1000399E8, a1, v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_100008D3C(v17, &unk_1003D91B0, qword_1003444F0);
    v34 = v68;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100008D04(v35, qword_1003FAA88);
    v36 = v69;
    (*(v34 + 16))(v14, v67, v69);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v75[0] = v40;
      *v39 = 136315138;
      sub_100039268(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v34;
      v44 = v43;
      (*(v42 + 8))(v14, v36);
      v45 = sub_10021145C(v41, v44, v75);

      *(v39 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v37, v38, "No recovery info with id %s found.", v39, 0xCu);
      sub_10000839C(v40);
    }

    else
    {

      (*(v34 + 8))(v14, v36);
    }

    type metadata accessor for AACustodianError(0);
    v74 = -7062;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    v60 = v75[0];
    v61 = v71;
    *v71 = v75[0];
    swift_storeEnumTagMultiPayload();
    v62 = v60;
    v73(v61);

    v32 = v61;
    return sub_100008D3C(v32, &unk_1003DB610, &unk_10033FA90);
  }

  sub_100039200(v17, v33, type metadata accessor for CustodianRecoveryInfoRecord);
  v46 = v68;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  sub_100008D04(v47, qword_1003FAA88);
  v48 = v69;
  (*(v46 + 16))(v12, v67, v69);
  sub_100038554(v33, v22, type metadata accessor for CustodianRecoveryInfoRecord);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v75[0] = v67;
    *v51 = 136315394;
    sub_100039268(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v66 = v50;
    v52 = dispatch thunk of CustomStringConvertible.description.getter();
    v54 = v53;
    (*(v46 + 8))(v12, v48);
    v55 = sub_10021145C(v52, v54, v75);

    *(v51 + 4) = v55;
    *(v51 + 12) = 2080;
    v56 = dispatch thunk of CustomStringConvertible.description.getter();
    v58 = v57;
    sub_1000385BC(v22, type metadata accessor for CustodianRecoveryInfoRecord);
    v59 = sub_10021145C(v56, v58, v75);

    *(v51 + 14) = v59;
    _os_log_impl(&_mh_execute_header, v49, v66, "Found recovery info for id %s: %s", v51, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1000385BC(v22, type metadata accessor for CustodianRecoveryInfoRecord);
    (*(v46 + 8))(v12, v48);
  }

  v64 = v71;
  sub_100038554(v33, v71, type metadata accessor for CustodianRecoveryInfoRecord);
  swift_storeEnumTagMultiPayload();
  v73(v64);
  sub_100008D3C(v64, &unk_1003DB610, &unk_10033FA90);
  return sub_1000385BC(v33, type metadata accessor for CustodianRecoveryInfoRecord);
}

uint64_t sub_100021548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[21] = a4;
  v5[22] = v4;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  type metadata accessor for CustodianRecoveryInfoRecord(0);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();

  return _swift_task_switch(sub_1000215EC, 0, 0);
}

uint64_t sub_1000215EC()
{
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[25] = sub_100008D04(v1, qword_1003FAA88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching CustodianRecoveryInfoRecord from local disk", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = sub_100021748;
  v6 = v0[24];
  v7 = v0[22];
  v8 = v0[19];

  return sub_10002291C(v6, v7, v8);
}

uint64_t sub_100021748()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_100021968;
  }

  else
  {
    v2 = sub_10002185C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10002185C(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "CustodianRecoveryInfoRecord found on the local disk, no need to fetch from cloud", v4, 2u);
  }

  v5 = v1[24];
  v6 = v1[18];

  sub_100039200(v5, v6, type metadata accessor for CustodianRecoveryInfoRecord);

  v7 = v1[1];

  return v7();
}

uint64_t sub_100021968()
{
  v0[5] = v0[27];
  swift_errorRetain();
  v0[28] = sub_100005814(&unk_1003DBB60, &unk_10033E740);
  type metadata accessor for AACustodianError(0);
  v0[29] = v1;
  if (swift_dynamicCast())
  {
    v2 = v0[6];
    v0[7] = v2;
    v0[30] = v2;
    v0[31] = sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.code.getter();
    if (v0[8] == -7062)
    {
      v3 = v0[19];
      RecoveryRecordsRequest = type metadata accessor for FetchRecoveryRecordsRequest(0);
      if (*(v3 + *(RecoveryRecordsRequest + 20)))
      {
        v5 = RecoveryRecordsRequest;
        v6 = Logger.logObject.getter();
        v7 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          *v8 = 0;
          _os_log_impl(&_mh_execute_header, v6, v7, "CustodianRecoveryInfoRecord not found on the local disk, fetching the record from cloud", v8, 2u);
        }

        v9 = v0[22];
        v10 = v0[19];

        v0[32] = *(v9 + 56);
        v11 = kAAAnalyticsEventCustodianRecoveryExperimentalRecoveryInfoNotFoundFetchFromCloud;
        v12 = (v10 + *(v5 + 32));
        v13 = *v12;
        v0[33] = *v12;
        v14 = v12[1];
        v0[34] = v14;
        v15 = (v10 + *(v5 + 36));
        v16 = *v15;
        v0[35] = *v15;
        v17 = v15[1];
        v0[36] = v17;
        v0[37] = sub_100016034(0, &qword_1003D8B40, AAFAnalyticsEvent_ptr);

        v18 = v11;

        v19 = sub_100245D38(v18, v13, v14, v16, v17);
        v0[38] = v19;
        if (v19)
        {
          v20 = v19;
          sub_100016034(0, &qword_1003D9250, NSString_ptr);
          v21 = v20;
          v22 = NSString.init(stringLiteral:)();
          [v21 setObject:0 forKeyedSubscript:v22];
        }

        sub_100257274(v18);
        sub_1000080F8((v0[22] + 16), *(v0[22] + 40));
        v30 = swift_task_alloc();
        v0[39] = v30;
        *v30 = v0;
        v30[1] = sub_100021EC8;

        return sub_10030D2B0();
      }
    }
  }

  swift_errorRetain();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    swift_errorRetain();
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 4) = v27;
    *v26 = v27;
    _os_log_impl(&_mh_execute_header, v23, v24, "Error occured fetching CustodianRecoveryInfoRecord from local disk %@", v25, 0xCu);
    sub_100008D3C(v26, &unk_1003D9140, &qword_10033E640);
  }

  swift_willThrow();

  v28 = v0[1];

  return v28();
}

uint64_t sub_100021EC8()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_10002214C;
  }

  else
  {
    v2 = sub_100021FDC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100021FDC(uint64_t a1)
{
  v2 = *(v1 + 304);
  if (v2)
  {
    [*(v1 + 304) updateTaskResultWithError:0];
    swift_getObjectType();
    v3 = v2;
    sub_100246FA8(v2);
  }

  v4 = *(v1 + 160);
  if (v4)
  {
    v4(a1);
  }

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Fetching CustodianRecoveryInfoRecord from local disk after fetching from cloud", v7, 2u);
  }

  v8 = swift_task_alloc();
  *(v1 + 328) = v8;
  *v8 = v1;
  v8[1] = sub_1000222B8;
  v10 = *(v1 + 176);
  v9 = *(v1 + 184);
  v11 = *(v1 + 152);

  return sub_10002291C(v9, v10, v11);
}

uint64_t sub_10002214C()
{
  v1 = v0[38];
  swift_getErrorValue();
  sub_1002DEA80(v0[3], v0[4]);
  if (v1)
  {
    v2 = v0[38];
    v3 = v0[30];
    v4 = v2;
    swift_errorRetain();
    v5 = _convertErrorToNSError(_:)();
    [v4 updateTaskResultWithError:v5];

    swift_getObjectType();
    v6 = v4;
    sub_100246FA8(v2);
    swift_willThrow();
  }

  else
  {
    v3 = v0[30];
    swift_willThrow();
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000222B8()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_1000225D8;
  }

  else
  {
    v2 = sub_1000223CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000223CC(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "CustodianRecoveryInfoRecord found on the local disk, after fetching from cloud", v4, 2u);
  }

  v5 = v1[36];
  v7 = v1[34];
  v6 = v1[35];
  v8 = v1[33];

  v9 = kAAAnalyticsEventCustodianSystemSync;

  v10 = sub_100245D38(v9, v8, v7, v6, v5);
  v1[17] = -7755;
  sub_100212324(_swiftEmptyArrayStorage);
  _BridgedStoredNSError.init(_:userInfo:)();
  v11 = v1[16];
  if (v10)
  {
    v12 = v10;
    v13 = v11;
    v14 = _convertErrorToNSError(_:)();

    [v12 updateTaskResultWithError:v14];
  }

  v15 = v1[30];
  v16 = v1[23];
  v17 = v1[18];
  swift_getObjectType();
  sub_100246FA8(v10);

  sub_100039200(v16, v17, type metadata accessor for CustodianRecoveryInfoRecord);

  v18 = v1[1];

  return v18();
}

uint64_t sub_1000225D8()
{
  v0[10] = v0[42];
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    v1 = v0[11];
    v0[12] = v1;
    _BridgedStoredNSError.code.getter();
    if (v0[13] == -7062)
    {
      v23 = v1;
      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        _os_log_impl(&_mh_execute_header, v2, v3, "🚨 CustodianRecoveryInfoRecord not found on the local disk, even after fetching from cloud", v4, 2u);
      }

      v5 = v0[36];
      v7 = v0[34];
      v6 = v0[35];
      v8 = v0[33];

      v9 = kAAAnalyticsEventCustodianSystemSync;

      v10 = sub_100245D38(v9, v8, v7, v6, v5);
      v0[15] = -7755;
      sub_100212324(_swiftEmptyArrayStorage);
      _BridgedStoredNSError.init(_:userInfo:)();
      v11 = v0[14];
      if (v10)
      {
        v12 = v10;
        v13 = v11;
        v14 = _convertErrorToNSError(_:)();

        [v12 updateTaskResultWithError:v14];
      }

      swift_getObjectType();
      sub_100246FA8(v10);
    }

    else
    {
    }
  }

  swift_errorRetain();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v19;
    *v18 = v19;
    _os_log_impl(&_mh_execute_header, v15, v16, "Error fetching CustodianRecoveryInfoRecord from the local disk, after fetching from cloud: %@", v17, 0xCu);
    sub_100008D3C(v18, &unk_1003D9140, &qword_10033E640);
  }

  v20 = v0[30];

  swift_willThrow();

  v21 = v0[1];

  return v21();
}

uint64_t sub_10002291C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_100022940, 0, 0);
}

uint64_t sub_100022940()
{
  v1 = v0[4];
  RecoveryRecordsRequest = type metadata accessor for FetchRecoveryRecordsRequest(0);
  if (*(v1 + *(RecoveryRecordsRequest + 28)) == 1)
  {
    v3 = RecoveryRecordsRequest;
    v4 = kAAAnalyticsEventFetchRecoveryInfo;
    sub_100016034(0, &qword_1003D8B40, AAFAnalyticsEvent_ptr);
    v5 = *(v3 + 36);
    v6 = (v1 + *(v3 + 32));
    v7 = *v6;
    v8 = v6[1];
    v9 = v1 + v5;
    v10 = *(v1 + v5);
    v11 = *(v9 + 8);

    v12 = v4;

    v13 = sub_100245D38(v12, v7, v8, v10, v11);
    v1 = v0[4];
  }

  else
  {
    v13 = 0;
  }

  v0[5] = v13;
  v14 = v0[3];
  v15 = swift_task_alloc();
  v0[6] = v15;
  v15[2] = v14;
  v15[3] = v1;
  v15[4] = v13;
  v16 = swift_task_alloc();
  v0[7] = v16;
  v17 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  *v16 = v0;
  v16[1] = sub_100022AEC;
  v18 = v0[2];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v18, 0, 0, 0xD00000000000001CLL, 0x800000010032CEC0, sub_100039500, v15, v17);
}

uint64_t sub_100022AEC()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_100022C6C;
  }

  else
  {

    v2 = sub_100022C08;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100022C08()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100022C6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100022CD8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_100005814(&unk_1003D91F0, &unk_10033EC80);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  (*(v9 + 16))(&v16 - v10, a1, v8);
  v12 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  *(v13 + 24) = a2;
  (*(v9 + 32))(v13 + v12, v11, v8);
  v14 = a4;

  sub_100020600(a3, sub_1000395E8, v13);
}

uint64_t sub_100022E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  __chkstk_darwin(v5 - 8);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005814(&unk_1003DB610, &unk_10033FA90);
  __chkstk_darwin(v8);
  v10 = (v12 - v9);
  if (a2)
  {
    sub_1000D258C(a1);
  }

  swift_getObjectType();
  sub_100246FA8(a2);
  sub_100012D04(a1, v10, &unk_1003DB610, &unk_10033FA90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12[1] = *v10;
    sub_100005814(&unk_1003D91F0, &unk_10033EC80);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100039200(v10, v7, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_100005814(&unk_1003D91F0, &unk_10033EC80);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100022FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v51 = a3;
  v49 = a2;
  v4 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v54 = *(v4 - 8);
  v55 = v4;
  __chkstk_darwin(v4);
  v52 = &v42 - v5;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v48 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v53 = &v42 - v10;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v46 = v14;
  v47 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v42 - v15;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100008D04(v17, qword_1003FAA88);
  v45 = *(v12 + 16);
  v45(v16, a1, v11);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v43 = a1;
    v21 = v20;
    v42 = swift_slowAlloc();
    v56[0] = v42;
    *v21 = 136315138;
    sub_100039268(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v7;
    v23 = v6;
    v25 = v24;
    (*(v12 + 8))(v16, v11);
    v26 = sub_10021145C(v22, v25, v56);
    v6 = v23;
    v7 = v44;

    *(v21 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v18, v19, "Fetching custodian with ID: %s", v21, 0xCu);
    sub_10000839C(v42);

    a1 = v43;
  }

  else
  {

    (*(v12 + 8))(v16, v11);
  }

  v27 = v47;
  v45(v47, a1, v11);
  v28 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v29 = (v46 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v12 + 32))(v30 + v28, v27, v11);
  v31 = (v30 + v29);
  v32 = v51;
  *v31 = v49;
  v31[1] = v32;
  v33 = sub_1000080F8((v50 + 16), *(v50 + 40));
  type metadata accessor for LocalCache();

  v34 = v48;
  sub_100307F40();
  v35 = v53;
  URL.appendingPathComponent(_:isDirectory:)();
  v36 = *(v7 + 8);
  v36(v34, v6);
  v37 = *v33;
  v39 = v54;
  v38 = v55;
  v40 = v52;
  (*(v54 + 16))(v52, v37 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v55);
  Dependency.wrappedValue.getter();
  (*(v39 + 8))(v40, v38);
  sub_1000080F8(v56, v56[3]);
  sub_100032500(v35, sub_1000394B8, v30, &unk_1003A4D58, sub_1000383B4, &unk_1003A4D70);

  v36(v35, v6);
  return sub_10000839C(v56);
}