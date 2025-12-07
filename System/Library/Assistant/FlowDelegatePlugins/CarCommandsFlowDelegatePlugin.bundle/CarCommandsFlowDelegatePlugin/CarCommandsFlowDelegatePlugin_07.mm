uint64_t sub_BEC38()
{
  sub_D2DC();
  v0[2] = v1;
  v2 = sub_1693E4();
  v0[3] = v2;
  v0[4] = *(v2 - 8);
  v0[5] = swift_task_alloc();

  return _swift_task_switch(sub_BECF4);
}

uint64_t sub_BECF4()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_16A484();
  v5 = *(v2 + 16);
  v5(v1, v4, v3);
  v6 = sub_95374(v1);
  if (v6)
  {
    v7 = v6;

    v8 = v0[1];

    return v8(v7);
  }

  else
  {
    v11 = v0[2];
    v10 = v0[3];
    type metadata accessor for CarCommandsError(0);
    sub_BFD54(&qword_1E92F0, 255, type metadata accessor for CarCommandsError, &unk_17A85C);
    swift_allocError();
    v5(v12, v11, v10);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_BEEA0()
{
  v0 = sub_16A164();
  __chkstk_darwin(v0 - 8);
  sub_A138();
  v1 = sub_5758(&qword_1EA760, &qword_17B9F0);
  sub_37404();
  v3 = v2;
  v5 = __chkstk_darwin(v4);
  v7 = &v20[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v20[-1] - v8;
  if (qword_1E5908 != -1)
  {
    sub_48134(&qword_1E5908);
  }

  v10 = qword_1F0C70;
  v20[3] = type metadata accessor for WalletService();
  v20[4] = &off_1D7C28;
  v20[0] = v10;
  type metadata accessor for CarCommandsCATs(0);

  sub_16A154();
  sub_16A094();
  sub_162510();

  sub_D13C(v20);
  sub_1693F4();
  type metadata accessor for FeatureFlagHelper();
  v11 = swift_allocObject();
  v12 = sub_168E34();
  sub_483C8(v12);

  v13 = sub_168E24();
  type metadata accessor for SnippetManager();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v15 = sub_BFAA0(v20, v11, 0x10000, v13, v14);

  v20[0] = v15;
  type metadata accessor for GetTrunkStatusHandleIntentFlowStrategy(0);
  sub_BFD54(&qword_1EA768, 255, type metadata accessor for GetTrunkStatusHandleIntentFlowStrategy, &unk_16F540);
  sub_1687E4();

  sub_168884();
  (*(v3 + 16))(v7, v9, v1);
  v16 = sub_5758(&qword_1EA770, &unk_1748B0);
  sub_483C8(v16);
  v17 = sub_168914();
  (*(v3 + 8))(v9, v1);
  return v17;
}

uint64_t sub_BF1A0()
{
  sub_D13C((v0 + 16));

  return _swift_deallocClassInstance(v0, 64, 7);
}

uint64_t sub_BF204(uint64_t a1, uint64_t a2)
{
  result = sub_BFD54(&qword_1EA748, a2, type metadata accessor for GetTrunkStatusRCHFlowStrategy, &unk_174750);
  *(a1 + 8) = result;
  return result;
}

void *sub_BF25C()
{
  v1 = sub_168E34();
  sub_483C8(v1);
  v2 = sub_168E24();
  v0[5] = v1;
  v0[6] = &protocol witness table for ResponseFactory;
  v0[2] = v2;
  v0[7] = 0;
  return v0;
}

uint64_t sub_BF2CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_7971C;

  return sub_BEC38();
}

uint64_t sub_BF360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  TrunkStatusRCHFlowStrategy = type metadata accessor for GetTrunkStatusRCHFlowStrategy();
  *v10 = v5;
  v10[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)(a1, a2, a3, TrunkStatusRCHFlowStrategy, a5);
}

uint64_t sub_BF42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  TrunkStatusRCHFlowStrategy = type metadata accessor for GetTrunkStatusRCHFlowStrategy();
  *v10 = v5;
  v10[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)(a1, a2, a3, TrunkStatusRCHFlowStrategy, a5);
}

uint64_t sub_BF4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  TrunkStatusRCHFlowStrategy = type metadata accessor for GetTrunkStatusRCHFlowStrategy();
  *v10 = v5;
  v10[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)(a1, a2, a3, TrunkStatusRCHFlowStrategy, a5);
}

uint64_t sub_BF5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  TrunkStatusRCHFlowStrategy = type metadata accessor for GetTrunkStatusRCHFlowStrategy();
  *v12 = v6;
  v12[1] = sub_6F428;

  return ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)(a1, a2, a3, a4, TrunkStatusRCHFlowStrategy, a6);
}

uint64_t sub_BF6A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_6F850;

  return sub_3F724();
}

uint64_t sub_BF778()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_79DCC;

  return sub_457EC();
}

uint64_t sub_BF8C4(uint64_t a1, uint64_t a2)
{
  result = sub_BFD54(&qword_1EA750, a2, type metadata accessor for GetTrunkStatusRCHFlowStrategy, &unk_174788);
  *(a1 + 8) = result;
  return result;
}

id sub_BF964(uint64_t a1)
{
  v2 = type metadata accessor for WalletService();
  v15[3] = v2;
  v15[4] = &off_1D7C28;
  v15[0] = a1;
  v3 = type metadata accessor for SEGetTrunkStatusIntentHandler();
  v4 = objc_allocWithZone(v3);
  sub_2F8D0(v15, v2);
  sub_37404();
  __chkstk_darwin(v5);
  sub_A138();
  v8 = (v7 - v6);
  (*(v9 + 16))(v7 - v6);
  v10 = *v8;
  v14[3] = v2;
  v14[4] = &off_1D7C28;
  v14[0] = v10;
  sub_10824(v14, v4 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin29SEGetTrunkStatusIntentHandler_carKeyService);
  v13.receiver = v4;
  v13.super_class = v3;
  v11 = objc_msgSendSuper2(&v13, "init");
  sub_D13C(v14);
  sub_D13C(v15);
  return v11;
}

uint64_t sub_BFAA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_16A164();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for FeatureFlagHelper();
  v27[3] = v8;
  v27[4] = &off_1D9AF0;
  v27[0] = a2;
  type metadata accessor for GetTrunkStatusHandleIntentFlowStrategy(0);
  v9 = swift_allocObject();
  v10 = sub_2F8D0(v27, v8);
  __chkstk_darwin(v10);
  v12 = (v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = *v12;
  v26[3] = v8;
  v26[4] = &off_1D9AF0;
  v26[0] = v14;
  v15 = (v9 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin38GetTrunkStatusHandleIntentFlowStrategy_commonPatterns);
  v16 = type metadata accessor for CarCommandsCATPatternsExecutor(0);
  sub_16A154();
  v17 = sub_16A094();
  v15[3] = v16;
  v15[4] = &off_1DA7E8;
  *v15 = v17;
  *(v9 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin38GetTrunkStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler) = 0;
  sub_10824(a1, v25);
  sub_10824(v26, v24);
  v18 = sub_2F8D0(v24, v24[3]);
  __chkstk_darwin(v18);
  (*(v20 + 16))(v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1668CC();
  v22 = v21;
  sub_D13C(a1);
  sub_D13C(v26);
  sub_D13C(v24);
  sub_D13C(v27);
  return v22;
}

uint64_t sub_BFD54(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t SEGetClimateStatusIntentHandler.resolveCarName(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_BFDB0()
{
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v1 = v0[2];
  v2 = sub_16A584();
  sub_9DA0(v2, qword_1E65C0);
  v3 = sub_16A9A4();
  sub_386D8(v3, 0x22000uLL, 0xD0000000000000B9, 0x8000000000189D60, 0xD000000000000014, 0x8000000000185FE0, 21, 0xD000000000000013, 0x8000000000189E20);
  v0[4] = [v1 carName];
  sub_3024C(&unk_16DAD0);
  v8 = v4;
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v6 = sub_615AC(v5);

  return v8(v6, 10);
}

uint64_t sub_BFF34(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_60398;

  return SEGetClimateStatusIntentHandler.resolveCarName(for:)(v6);
}

uint64_t SEGetClimateStatusIntentHandler.confirm(intent:)(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return sub_D2B0();
}

uint64_t sub_C000C()
{
  sub_1696C();
  v1 = [*(v0 + 40) carName];
  *(v0 + 56) = v1;
  sub_3024C(&unk_16DAC8);
  v5 = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_C00D4;

  return v5(v1, 1, 1);
}

uint64_t sub_C00D4()
{
  sub_D2DC();
  sub_D358();
  *(v2 + 32) = v1;
  *(v2 + 24) = v3;
  *(v2 + 16) = v0;
  v4 = *(v2 + 56);
  v5 = *v0;
  sub_D254();
  *v6 = v5;
  *(v8 + 72) = v7;

  return _swift_task_switch(sub_C01EC);
}

uint64_t sub_C01EC()
{
  sub_D2DC();
  sub_16A3A4();
  v1 = sub_16A394();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_C0294(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_612B8;

  return SEGetClimateStatusIntentHandler.confirm(intent:)(v6);
}

uint64_t SEGetClimateStatusIntentHandler.handle(intent:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_C036C()
{
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v1 = v0[2];
  v2 = sub_16A584();
  sub_9DA0(v2, qword_1E65C0);
  v3 = sub_16A9A4();
  sub_386D8(v3, 0x22000uLL, 0xD0000000000000B9, 0x8000000000189D60, 0x6928656C646E6168, 0xEF293A746E65746ELL, 42, 0xD00000000000002DLL, 0x8000000000189E40);
  v0[4] = [v1 carName];
  sub_3024C(&unk_16F8E8);
  v8 = v4;
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v6 = sub_615AC(v5);

  return v8(v6, 1);
}

uint64_t sub_C04D8()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 32);
  v3 = *v0;
  sub_D254();
  *v4 = v3;
  *(v6 + 56) = v5;
  *(v6 + 48) = v7;

  return _swift_task_switch(sub_C05E8);
}

uint64_t sub_C05E8()
{
  sub_1696C();
  v1 = *(v0 + 56);
  v2 = *(v0 + 48);
  switch(v1 >> 8)
  {
    case 3u:
      sub_16A3A4();
      v3 = v2;
      v4 = sub_16A394();
      v5 = [objc_allocWithZone(NSNumber) initWithBool:v1 & 1];
      [v4 setEnabled:v5];

      break;
    default:
      sub_16A3A4();
      v4 = sub_16A394();
      break;
  }

  v6 = *(v0 + 8);

  return v6(v4);
}

uint64_t sub_C0764(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_612B8;

  return SEGetClimateStatusIntentHandler.handle(intent:)(v6);
}

id SEGetClimateStatusIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SEGetClimateStatusIntentHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_C08D4()
{
  sub_1696C();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_120FC(v1);

  return v3(v2);
}

uint64_t sub_C096C()
{
  sub_1696C();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_120FC(v1);

  return v3(v2);
}

uint64_t sub_C0A04()
{
  sub_1696C();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_120FC(v1);

  return v3(v2);
}

uint64_t type metadata accessor for CarCommandsSetSteeringWheelTemperatureCATsSimple(uint64_t a1)
{
  result = qword_1EA7A8;
  if (!qword_1EA7A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_C0B30(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return _swift_task_switch(sub_C0B54);
}

uint64_t sub_C0B54()
{
  v1 = *(v0 + 48);
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v2 = swift_allocObject();
  *(v2 + 32) = 0x64656C62616E65;
  *(v2 + 40) = 0xE700000000000000;
  *(v2 + 72) = &type metadata for Bool;
  *(v2 + 48) = v1;
  v5 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  *(v0 + 24) = v2;
  *(v2 + 16) = xmmword_16D9A0;
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_49014;

  return v5(0xD00000000000003CLL, 0x800000000018A020, v2);
}

uint64_t sub_C0CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_16A164();
  sub_5B1C();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  __chkstk_darwin(v11 - 8);
  sub_57A0(a1, &v15 - v12);
  (*(v7 + 16))(v10, a2, v3);
  v13 = sub_16A0D4();
  (*(v7 + 8))(a2, v3);
  sub_5810(a1);
  return v13;
}

uint64_t sub_C0E2C(uint64_t a1, uint64_t a2)
{
  sub_16A164();
  sub_5B1C();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_16A0E4();
  (*(v5 + 8))(a2, v2);
  return v9;
}

uint64_t sub_C0F34()
{
  sub_D2DC();
  v1[7] = v2;
  v1[8] = v0;
  sub_16A164();
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_C0FC0);
}

uint64_t sub_C0FC0()
{
  sub_D2DC();
  type metadata accessor for CarCommandsCATPatternsExecutor(0);
  sub_16A154();
  *(v0 + 80) = sub_16A094();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_C1084;

  return sub_156570(31, _swiftEmptyArrayStorage);
}

uint64_t sub_C1084()
{
  sub_D2DC();
  v2 = *v1;
  sub_D2A4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 96) = v4;
  *(v2 + 104) = v0;

  if (v0)
  {
    v5 = sub_4FFD4;
  }

  else
  {

    v5 = sub_C1198;
  }

  return _swift_task_switch(v5);
}

uint64_t sub_C1198()
{
  sub_D2DC();
  sub_10824(*(v0 + 64) + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin27CommonUnsupportedActionFlow_responseGenerator, v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_4FEC4;

  return sub_11A570();
}

uint64_t sub_C1248(__int128 *a1, __int128 *a2)
{
  v3 = v2;
  v6 = (v2 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin27CommonUnsupportedActionFlow_featureFlagHelper);
  v7 = type metadata accessor for FeatureFlagHelper();
  v8 = swift_allocObject();
  v6[3] = v7;
  v6[4] = &off_1D9AF0;
  *v6 = v8;
  v9 = (v3 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin27CommonUnsupportedActionFlow_responseGenerator);
  v10 = sub_168E34();
  swift_allocObject();
  v11 = sub_168E24();
  v9[3] = v10;
  v9[4] = &protocol witness table for ResponseFactory;
  *v9 = v11;

  return sub_74260(a1, a2);
}

uint64_t sub_C1308()
{
  sub_D13C((v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin27CommonUnsupportedActionFlow_featureFlagHelper));
  v1 = (v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin27CommonUnsupportedActionFlow_responseGenerator);

  return sub_D13C(v1);
}

uint64_t sub_C1348()
{
  v0 = sub_735DC();
  v1 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin27CommonUnsupportedActionFlow_featureFlagHelper;

  sub_D13C((v2 + v1));
  sub_D13C((v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin27CommonUnsupportedActionFlow_responseGenerator));

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for CommonUnsupportedActionFlow(uint64_t a1)
{
  result = qword_1EA820;
  if (!qword_1EA820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_C1470()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_503C8;

  return sub_C0F34();
}

id sub_C15EC()
{
  v1 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin40DeactivateSignalHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler;
  v2 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin40DeactivateSignalHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin40DeactivateSignalHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
  }

  else
  {
    if (qword_1E5908 != -1)
    {
      swift_once();
    }

    v4 = sub_166CB4();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_C1688()
{
  sub_D2DC();
  v1[37] = v2;
  v1[38] = v0;
  v1[36] = v3;
  sub_5758(&qword_1E6300, &qword_16ECE0);
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = type metadata accessor for SignalActivationParameters(0);
  v1[42] = swift_task_alloc();
  sub_10B4C();

  return _swift_task_switch(v4);
}

uint64_t sub_C175C()
{
  sub_10824(v0[38] + 16, (v0 + 2));
  sub_D084(v0 + 2, v0[5]);
  sub_5758(&qword_1EABB0, &unk_174CD0);
  sub_169094();
  sub_D2604();

  sub_D13C(v0 + 2);
  v1 = 0x8000000000182560;
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v2 = sub_16A584();
  sub_9DA0(v2, qword_1E65C0);
  v3 = sub_16A9A4();
  v0[31] = 0xD00000000000009CLL;
  v0[32] = 0x800000000018A100;
  v0[33] = 47;
  v0[34] = 0xE100000000000000;
  sub_D030();
  v4 = sub_16AB34();
  sub_15AE4(v4);
  v6 = v5;

  if (v6)
  {
    sub_7C764();
    v86._countAndFlagsBits = 0xD000000000000025;
    v86._object = 0x8000000000182560;
    sub_16A744(v86);
    v7 = v81;
    v1 = v84;
  }

  else
  {
    v7 = 0xD000000000000025;
  }

  v78 = v7;
  v0[35] = 25;
  v87._countAndFlagsBits = sub_16AE24();
  sub_16A744(v87);

  sub_7C724(v8, v9, v10, v11, v12, v13, v14, v15, v78, v1, 58, 0xE100000000000000);

  v16._countAndFlagsBits = sub_378D0(0x40002uLL);
  if (v16._object)
  {
    sub_7C740(v16);

    sub_7C724(v17, v18, v19, v20, v21, v22, v23, v24, v79, v80, v82, v85);
  }

  v25 = sub_16A574();
  if (os_log_type_enabled(v25, v3))
  {
    v26 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v30 = sub_7C7A4(4.8149e-34, v83, v27, v28, v29);

    *(v26 + 4) = v30;
    sub_7C784(&dword_0, v31, v32, "%s");
    sub_D13C(v83);
    sub_D494(v83);
    sub_D494(v26);
  }

  else
  {
  }

  v33 = v0[38];
  sub_3CF7C(v33 + 136, (v0 + 22));
  sub_D084((v33 + 136), *(v33 + 160));
  if (sub_11B5C0())
  {
    sub_169094();
    sub_16A1B4();
    v35 = v34;

    v0[43] = v35;
    if (!v35)
    {
      type metadata accessor for CarCommandsError(0);
      sub_C2E6C();
      v46 = sub_C2E24(v44, v45, &unk_17A85C);
      sub_5A144(v46);
      *v47 = 0xD00000000000002DLL;
      v47[1] = 0x8000000000182590;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      sub_D37C();
      sub_D2C0();

      __asm { BRAA            X1, X16 }
    }

    v36 = sub_1690A4();
    v0[44] = [v36 carName];

    v37 = sub_169084();
    v38 = [v37 carSignal];

    if (v38)
    {
      [v38 unsignedIntegerValue];
    }

    v71 = sub_169084();
    v72 = [v71 signalActivated];

    sub_76D10();
    v73.super.super.isa = sub_16AAB4(1).super.super.isa;
    isa = v73.super.super.isa;
    if (v72)
    {
      sub_16AAD4();
    }

    else
    {
    }

    v75 = v0[38];
    type metadata accessor for SignalStatusSnippetFactory();
    sub_3CF7C(v75 + 184, (v0 + 28));
    sub_10824(v75 + 184, (v0 + 17));
    v76 = swift_task_alloc();
    v0[45] = v76;
    *v76 = v0;
    v76[1] = sub_584A8;
    sub_D2C0();

    return sub_126E58();
  }

  else
  {
    v39 = sub_1690A4();
    v0[47] = v39;
    v40 = sub_169084();
    v0[48] = v40;
    v41 = [v39 carName];
    if (v41)
    {
      v42 = v41;
      sub_99C94();

      v43 = 0;
    }

    else
    {
      v43 = 1;
    }

    v50 = v0[40];
    v51 = sub_16A0C4();
    sub_5370(v50, v43, 1, v51);
    v52 = [v40 signalActivated];
    sub_76D10();
    v53.super.super.isa = sub_16AAB4(1).super.super.isa;
    if (v52)
    {
      v54 = sub_16AAD4();
    }

    else
    {
      v54 = 0;
    }

    v55 = [v40 carSignal];
    if (v55)
    {
      v56 = v55;
      v57 = [v55 unsignedIntegerValue];

      v58 = v57 == &dword_0 + 2;
    }

    else
    {
      v58 = 0;
    }

    sub_169094();
    sub_16A1B4();
    v60 = v59;

    if (v60)
    {
      sub_16A6E4();

      v61 = 0;
    }

    else
    {
      v61 = 1;
    }

    v63 = v0[41];
    v62 = v0[42];
    v65 = v0[39];
    v64 = v0[40];
    v66 = v0[38];
    sub_5370(v65, v61, 1, v51);
    sub_16304(v64, v62);
    *(v62 + v63[5]) = v54 & 1;
    *(v62 + v63[6]) = v58;
    sub_16304(v65, v62 + v63[7]);
    sub_D084((v66 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin40DeactivateSignalHandleIntentFlowStrategy_commonPatterns), *(v66 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin40DeactivateSignalHandleIntentFlowStrategy_commonPatterns + 24));
    v67 = swift_task_alloc();
    v0[49] = v67;
    *v67 = v0;
    v67[1] = sub_C1ED8;
    sub_D2C0();

    return sub_156A48(v68);
  }
}

uint64_t sub_C1ED8()
{
  sub_D2DC();
  sub_D358();
  *(v2 + 400) = v1;
  *(v2 + 408) = v0;

  sub_10B4C();

  return _swift_task_switch(v3);
}

uint64_t sub_C1FE0()
{
  sub_D2DC();
  v1 = *(v0 + 304);
  sub_3CF7C(v1 + 184, v0 + 200);
  sub_10824(v1 + 184, v0 + 96);
  v2 = swift_task_alloc();
  *(v0 + 416) = v2;
  *v2 = v0;
  v2[1] = sub_C2094;

  return sub_11A570();
}

uint64_t sub_C2094()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v3 + 424) = v0;

  sub_D13C((v3 + 96));
  sub_10B4C();

  return _swift_task_switch(v6);
}

uint64_t sub_C219C(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  sub_10B4C();
  return _swift_task_switch(v4);
}

uint64_t sub_C21CC()
{
  sub_10824(v0[25] + 16, (v0 + 2));
  sub_D084(v0 + 2, v0[5]);
  sub_5758(&qword_1EABB0, &unk_174CD0);
  sub_169094();
  sub_D2604();

  sub_D13C(v0 + 2);
  v1 = 0x8000000000185C90;
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v2 = sub_16A584();
  sub_9DA0(v2, qword_1E65C0);
  v3 = sub_16A9A4();
  v0[18] = 0xD00000000000009CLL;
  v0[19] = 0x800000000018A100;
  v0[20] = 47;
  v0[21] = 0xE100000000000000;
  sub_D030();
  v4 = sub_16AB34();
  sub_15AE4(v4);
  v6 = v5;

  if (v6)
  {
    sub_7C764();
    v54._countAndFlagsBits = 0xD00000000000002DLL;
    v54._object = 0x8000000000185C90;
    sub_16A744(v54);
    v7 = v49;
    v1 = v52;
  }

  else
  {
    v7 = 0xD00000000000002DLL;
  }

  v46 = v7;
  v0[22] = 62;
  v55._countAndFlagsBits = sub_16AE24();
  sub_16A744(v55);

  sub_7C724(v8, v9, v10, v11, v12, v13, v14, v15, v46, v1, 58, 0xE100000000000000);

  v16._countAndFlagsBits = sub_378D0(0x40002uLL);
  if (v16._object)
  {
    sub_7C740(v16);

    sub_7C724(v17, v18, v19, v20, v21, v22, v23, v24, v47, v48, v50, v53);
  }

  v25 = sub_16A574();
  if (os_log_type_enabled(v25, v3))
  {
    v26 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v30 = sub_7C7A4(4.8149e-34, v51, v27, v28, v29);

    *(v26 + 4) = v30;
    sub_7C784(&dword_0, v31, v32, "%s");
    sub_D13C(v51);
    sub_D494(v51);
    sub_D494(v26);
  }

  else
  {
  }

  v33 = v0[25];
  if (*(v33[28] + 16) != 1 || (sub_3CF7C((v33 + 17), (v0 + 12)), sub_D084(v33 + 17, v33[20]), (sub_11B5C0() & 1) == 0))
  {
    sub_168BB4();
    sub_168BA4();
    sub_D37C();
    goto LABEL_18;
  }

  sub_169094();
  sub_16A1B4();
  v35 = v34;

  if (!v35)
  {
    type metadata accessor for CarCommandsError(0);
    sub_C2E6C();
    v44 = sub_C2E24(v42, v43, &unk_17A85C);
    sub_5A144(v44);
    *v45 = 0xD00000000000002DLL;
    v45[1] = 0x8000000000182590;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_D37C();
LABEL_18:
    sub_D2C0();

    __asm { BRAA            X1, X16 }
  }

  v36 = v0[25];

  type metadata accessor for SignalStatusSnippetFactory();
  sub_3CF7C(v36 + 184, (v0 + 15));
  sub_10824(v36 + 184, (v0 + 7));
  v37 = swift_task_alloc();
  v0[26] = v37;
  *v37 = v0;
  v37[1] = sub_7BC20;
  sub_D2C0();

  return sub_127848();
}

void sub_C2614()
{
  sub_D13C((v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin40DeactivateSignalHandleIntentFlowStrategy_commonPatterns));
  v1 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin40DeactivateSignalHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
}

void *sub_C2654()
{
  v0 = sub_3D044();
  sub_D13C((v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin40DeactivateSignalHandleIntentFlowStrategy_commonPatterns));

  return v0;
}

uint64_t sub_C269C()
{
  v0 = sub_C2654();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for DeactivateSignalHandleIntentFlowStrategy(uint64_t a1)
{
  result = qword_1EA990;
  if (!qword_1EA990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_C2790(uint64_t a1)
{
  result = sub_C2E24(&qword_1EABA8, type metadata accessor for DeactivateSignalHandleIntentFlowStrategy, &unk_174BF8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_C27E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for DeactivateSignalHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(a1, a2, v9, a4);
}

uint64_t sub_C28B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for DeactivateSignalHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, v9, a4);
}

uint64_t sub_C2978()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10A9C;

  return sub_4B544();
}

uint64_t sub_C2A38()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10A9C;

  return sub_C1688();
}

uint64_t sub_C2AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for DeactivateSignalHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, v9, a4);
}

uint64_t sub_C2BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for DeactivateSignalHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, v9, a4);
}

uint64_t sub_C2C74(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1039C;

  return sub_C219C(a1, a2);
}

uint64_t sub_C2D20()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_36648;

  return sub_459E4();
}

uint64_t sub_C2E24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for CarCommandsSetTrunkStatusCATsSimple(uint64_t a1)
{
  result = qword_1EABB8;
  if (!qword_1EABB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_C2F10(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1D3120;
  v6._object = a2;
  v4 = sub_16ADE4(v3, v6);

  return v4 != 0;
}

BOOL sub_C2F68@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_C2F10(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_C2FC4()
{
  sub_3024C(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v5 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  v3 = sub_C3A4C();
  *v2 = v0;
  v2[1] = sub_7971C;

  return v5(0xD000000000000023, 0x800000000018A270, _swiftEmptyArrayStorage, &type metadata for CarCommandsSetTrunkStatusCATsSimple.OpenTrunkDialogIds, v3);
}

uint64_t sub_C3098()
{
  sub_D2DC();
  v1[2] = v2;
  v1[3] = v0;
  sub_5758(&qword_1E6300, &qword_16ECE0);
  v1[4] = swift_task_alloc();
  sub_10B4C();

  return _swift_task_switch(v3);
}

uint64_t sub_C312C()
{
  v1 = v0[4];
  v2 = v0[2];
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v3 = swift_allocObject();
  v0[5] = v3;
  sub_AE798(v3, xmmword_16D9A0);
  sub_4EA90(v2, v1, &qword_1E6300, &qword_16ECE0);
  v4 = sub_16A0C4();
  sub_AE7CC(v4);
  if (v5)
  {
    sub_4EAF4(v1, &qword_1E6300, &qword_16ECE0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v2;
    sub_10888((v3 + 48));
    sub_4EB50();
    (*(v6 + 32))();
  }

  sub_3024C(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v10 = v7;
  v8 = swift_task_alloc();
  v0[6] = v8;
  *v8 = v0;
  sub_AE7B8(v8);

  return v10(0xD000000000000034);
}

uint64_t sub_C32A8()
{
  v2 = *v1;
  sub_D254();
  *v3 = v2;
  *(v2 + 56) = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v4);
  }

  else
  {

    v5 = sub_9F020();

    return v6(v5);
  }
}

uint64_t sub_C33EC()
{
  sub_D2DC();
  *(v1 + 64) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v0;
  sub_5758(&qword_1E6300, &qword_16ECE0);
  *(v1 + 32) = swift_task_alloc();
  sub_10B4C();

  return _swift_task_switch(v4);
}

uint64_t sub_C3484()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v3 = swift_allocObject();
  *(v0 + 40) = v3;
  sub_AE798(v3, xmmword_16D3A0);
  sub_4EA90(v2, v1, &qword_1E6300, &qword_16ECE0);
  v4 = sub_16A0C4();
  sub_AE7CC(v4);
  if (v5)
  {
    sub_4EAF4(v1, &qword_1E6300, &qword_16ECE0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v2;
    sub_10888((v3 + 48));
    sub_4EB50();
    (*(v6 + 32))();
  }

  v7 = *(v0 + 64);
  *(v3 + 80) = 0x75725465736F6C63;
  *(v3 + 88) = 0xEA00000000006B6ELL;
  *(v3 + 120) = &type metadata for Bool;
  *(v3 + 96) = v7;
  sub_3024C(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v11 = v8;
  v9 = swift_task_alloc();
  *(v0 + 48) = v9;
  *v9 = v0;
  sub_AE7B8(v9);

  return v11(0xD000000000000036);
}

uint64_t sub_C3630()
{
  v2 = *v1;
  sub_D254();
  *v3 = v2;
  *(v2 + 56) = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v4);
  }

  else
  {

    v5 = sub_9F020();

    return v6(v5);
  }
}

uint64_t sub_C37C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_16A164();
  sub_5B1C();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  __chkstk_darwin(v11 - 8);
  sub_4EA90(a1, &v15 - v12, &qword_1E5B48, &unk_16DDB0);
  (*(v7 + 16))(v10, a2, v3);
  v13 = sub_16A0D4();
  (*(v7 + 8))(a2, v3);
  sub_4EAF4(a1, &qword_1E5B48, &unk_16DDB0);
  return v13;
}

uint64_t sub_C3944(uint64_t a1, uint64_t a2)
{
  sub_16A164();
  sub_5B1C();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_16A0E4();
  (*(v5 + 8))(a2, v2);
  return v9;
}

unint64_t sub_C3A4C()
{
  result = qword_1EAC08;
  if (!qword_1EAC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC08);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CarCommandsSetTrunkStatusCATsSimple.OpenTrunkDialogIds(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for CarCommandsSetTrunkStatusCATsSimple.OpenTrunkDialogIds(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0xC3B90);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_C3BCC()
{
  result = qword_1EAC10;
  if (!qword_1EAC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC10);
  }

  return result;
}

uint64_t sub_C3C30(char a1)
{
  *(v2 + 56) = v1;
  *(v2 + 96) = a1;
  sub_16A164();
  *(v2 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_C3CC4);
}

uint64_t sub_C3CC4()
{
  sub_1696C();
  sub_C5D00();
  sub_132B1C(v0);
  sub_C5CC8();
  v1 = sub_9F300();
  sub_482AC(v1);
  v2 = sub_9F3C8();
  sub_C5DB4(v2);
  v3 = swift_task_alloc();
  v4 = sub_C5DA8(v3);
  *v4 = v5;
  sub_3099C(v4);

  return sub_DFBEC();
}

uint64_t sub_C3D68()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = sub_9F020();

    return v9(v8);
  }
}

uint64_t sub_C3E9C()
{
  sub_D2DC();

  sub_D37C();

  return v0();
}

uint64_t sub_C3F00()
{
  sub_D2DC();
  v2 = sub_C5D74(v1);
  sub_D414(v2);
  *(v0 + 64) = sub_D3C8();
  sub_10B4C();

  return _swift_task_switch(v3);
}

uint64_t sub_C3F74()
{
  sub_1696C();
  sub_C5D00();
  sub_132B1C(v0);
  sub_C5CC8();
  v1 = sub_9F300();
  sub_482AC(v1);
  v2 = sub_9F3C8();
  sub_C5DB4(v2);
  v3 = swift_task_alloc();
  v4 = sub_C5DA8(v3);
  *v4 = v5;
  sub_3099C(v4);

  return sub_DFBEC();
}

uint64_t sub_C4018()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = sub_9F020();

    return v9(v8);
  }
}

uint64_t sub_C414C(uint64_t a1)
{
  *(v2 + 536) = v1;
  *(v2 + 528) = a1;
  sub_10B4C();
  return _swift_task_switch(v3);
}

uint64_t sub_C44EC()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 552) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_C45E4()
{
  v1 = v0[29];
  v2 = v0[30];
  sub_D084(v0 + 26, v1);
  v5 = (*(v2 + 64) + **(v2 + 64));
  v3 = swift_task_alloc();
  v0[70] = v3;
  *v3 = v0;
  v3[1] = sub_C4710;

  return v5(v0 + 41, v1, v2);
}

uint64_t sub_C4710()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 568) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_C4928()
{
  if (!*(v0 + 352))
  {
    sub_D188(v0 + 328, &qword_1E83D0, &qword_174EE0);
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0;
    goto LABEL_9;
  }

  sub_D084((v0 + 328), *(v0 + 352));
  v1 = sub_C5D4C();
  v2(v1);
  sub_D13C((v0 + 328));
  if (!*(v0 + 312))
  {
LABEL_9:
    sub_D188(v0 + 288, &qword_1EAC28, &qword_1774E0);
    goto LABEL_11;
  }

  sub_D124((v0 + 288), v0 + 248);
  sub_D084((v0 + 248), *(v0 + 272));
  v3 = sub_C5D4C();
  if (v4(v3))
  {
    v5 = sub_D084((*(v0 + 536) + 48), *(*(v0 + 536) + 72));
    sub_5758(&qword_1E83E0, &unk_170410);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_16D9A0;
    v7 = *(v0 + 272);
    v8 = *(v0 + 280);
    v9 = sub_D084((v0 + 248), v7);
    *(inited + 56) = v7;
    *(inited + 64) = *(v8 + 8);
    v10 = sub_10888((inited + 32));
    v11.n128_f64[0] = (*(*(v7 - 8) + 16))(v10, v9, v7);
    v12 = sub_948E4(inited, *v5, v11);
    swift_setDeallocating();
    sub_EFFF4();
    v13 = v12[2];

    if (v13)
    {
      v14 = *(v0 + 272);
      v15 = *(v0 + 280);
      v16 = *(v0 + 664);
      sub_D084((v0 + 248), v14);
      (*(v15 + 24))(v16 & 1, v14, v15);
      v17 = swift_task_alloc();
      *(v0 + 592) = v17;
      *v17 = v0;
      v17[1] = sub_C4DFC;

      return sub_C5900();
    }

    else
    {
      sub_89054(&qword_179C20);
      v27 = swift_task_alloc();
      *(v0 + 576) = v27;
      *v27 = v0;
      v27[1] = sub_C4D00;

      return v29();
    }
  }

  sub_D13C((v0 + 248));
LABEL_11:
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v19 = sub_16A584();
  sub_9DA0(v19, qword_1E65C0);
  sub_16A9A4();
  sub_C5D2C();
  sub_386D8(v21, 0x80000000uLL, v22, v23, 0xD000000000000012, v24, 31, v20 + 20, v28);
  sub_89054(&unk_179C28);
  v25 = swift_task_alloc();
  *(v0 + 608) = v25;
  *v25 = v0;
  v26 = sub_C5C70(v25);

  return (v29)(v26);
}

uint64_t sub_C4D00()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[46] = v1;
  v2[47] = v4;
  v2[48] = v0;
  sub_71940();
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v7 + 584) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_C4DFC()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[49] = v1;
  v2[50] = v4;
  v2[51] = v0;
  sub_71940();
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v7 + 600) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_C4EF8()
{
  sub_D2DC();
  sub_9F200();
  v0 = sub_9F080();

  return v1(v0);
}

uint64_t sub_C4F50()
{
  sub_D2DC();
  sub_9F200();
  v0 = sub_9F080();

  return v1(v0);
}

uint64_t sub_C4FA8()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[52] = v1;
  v2[53] = v4;
  v2[54] = v0;
  sub_71940();
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v7 + 616) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_C50A4()
{
  sub_D2DC();
  sub_D13C((v0 + 208));
  v1 = sub_9F080();

  return v2(v1);
}

uint64_t sub_C5100()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[55] = v1;
  v2[56] = v4;
  v2[57] = v0;
  sub_71940();
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v7 + 632) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_C51FC()
{
  sub_D2DC();
  v0 = sub_9F080();

  return v1(v0);
}

uint64_t sub_C5250()
{
  sub_D2DC();
  sub_D13C((v0 + 88));
  sub_D37C();

  return v1();
}

uint64_t sub_C52AC()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[58] = v1;
  v2[59] = v4;
  v2[60] = v0;
  sub_71940();
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v7 + 656) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_C53A8()
{
  sub_D2DC();

  v0 = sub_9F080();

  return v1(v0);
}

uint64_t sub_C589C()
{
  sub_D2DC();

  sub_D13C((v0 + 88));
  sub_D37C();

  return v1();
}

uint64_t sub_C5900()
{
  sub_D2DC();
  *(v0 + 48) = v1;
  v2 = sub_16A164();
  sub_D414(v2);
  *(v0 + 16) = sub_D3C8();
  sub_10B4C();

  return _swift_task_switch(v3);
}

uint64_t sub_C597C()
{
  sub_D2DC();
  type metadata accessor for CarCommandsSetMaxACCATsSimple(0);
  sub_16A154();
  *(v0 + 24) = sub_16A0F4();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_C5A3C;
  v2 = *(v0 + 48);

  return sub_138A08(v2);
}

uint64_t sub_C5A3C()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 40) = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = sub_9F020();

    return v9(v8);
  }
}

uint64_t sub_C5B70(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_3E08C;

  return sub_C414C(a1);
}

void sub_C5C38(os_log_type_t a1)
{

  sub_386D8(a1, 0x80000000uLL, v3 + 100, v5 | 0x8000000000000000, 0xD000000000000012, (v4 | 0x8000000000000000), 43, v2, v1);
}

void sub_C5C84()
{
  *(v1 + 640) = v0;

  sub_16ACF4(27);
}

void sub_C5CA8(uint64_t a1@<X8>)
{

  v3._countAndFlagsBits = v1 + 7;
  v3._object = ((a1 - 32) | 0x8000000000000000);
  sub_16A744(v3);
}

uint64_t sub_C5CC8()
{
  sub_D084((v1 + 16), *(v1 + 40));

  return sub_D2B90(1, v0);
}

uint64_t sub_C5D10()
{

  return sub_16A584();
}

uint64_t sub_C5D74(char a1)
{
  *(v2 + 56) = v1;
  *(v2 + 96) = a1;

  return sub_16A164();
}

uint64_t sub_C5D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_16AD84();
}

uint64_t sub_C5DC0@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() sharedStream];
  v3 = [objc_opt_self() sharedManager];
  sub_1689F4();
  v4 = type metadata accessor for CarCommandsLoggingProducer();
  swift_allocObject();
  result = sub_D230C(v2, v3, v6);
  a1[3] = v4;
  a1[4] = &off_1D7DF0;
  *a1 = result;
  return result;
}

uint64_t sub_C5EC8()
{
  sub_5758(&qword_1EAC98, &qword_174F50);
  sub_37404();
  sub_CA380();
  __chkstk_darwin(v0);
  sub_CA0E8();
  type metadata accessor for GetSignalActivationStatusRCHFlowStrategy();
  sub_CA2E0();
  swift_allocObject();
  v1 = sub_EC4FC();
  sub_CA540(v1);
  sub_EC180();
  v2 = sub_C9F48(&qword_1EACA0, type metadata accessor for GetSignalActivationStatusRCHFlowStrategy, &unk_177410);
  sub_CA128(v2);
  sub_CA558();
  v3 = sub_CA114();
  v4(v3);
  v5 = sub_3CFF0();
  sub_5758(v5, v6);
  v7 = sub_CA470(&qword_1EACB0);
  sub_CA38C(v7);
  sub_CA510();

  return sub_CA448();
}

void sub_C6018()
{
  sub_CA350();
  if (qword_1E5968 != -1)
  {
    sub_CA040(&qword_1E5968);
  }

  v2 = qword_1F0E10;
  v35 = type metadata accessor for CarPlayService(0);
  v36 = &off_1DA3F0;
  v34 = v2;
  v33[0] = 0;
  v3 = v2;
  sub_C5DC0(v32);
  sub_1690C4();
  v4 = sub_168E34();
  sub_CA1B0(v4);
  v5 = sub_168E24();
  v29 = v0;
  v30 = &protocol witness table for ResponseFactory;
  *&v28 = v5;
  sub_2F8D0(v32, v32[3]);
  sub_CA094();
  __chkstk_darwin(v6);
  v8 = sub_CA01C(v7, v21);
  v9(v8);
  v10 = *v0;
  v26 = &type metadata for GetCarPlayDoorLockStatusAction;
  v27 = &off_1D6398;
  sub_CA594();
  *&v25 = swift_allocObject();
  sub_C960C(v33, v25 + 16);
  v11 = type metadata accessor for CarCommandsLoggingProducer();
  v24[3] = v11;
  v24[4] = &off_1D7DF0;
  v24[0] = v10;
  v12 = type metadata accessor for CarCommandsActionFlow();
  v13 = sub_CA220(v12);
  sub_2F8D0(v24, v11);
  sub_CA078();
  __chkstk_darwin(v14);
  v16 = sub_C9FD4(v15, v21);
  v17(v16);
  v18 = *v1;
  v22 = v11;
  v23 = &off_1D7DF0;
  *&v21 = v18;
  sub_C9FF8();
  sub_D124(&v25, v13 + 224);
  sub_D124(&v21, v13 + 144);
  sub_D124(&v31, v13 + 64);
  sub_D124(&v28, v13 + 104);
  sub_D13C(v24);
  sub_D13C(v32);
  v32[0] = v13;
  sub_C9FBC();
  sub_C9F48(v19, v20, &unk_16DF38);
  sub_168924();
  sub_CA1CC();

  sub_C9668(v33);
  sub_CA23C();
  sub_CA368();
}

uint64_t sub_C62A8()
{
  sub_5758(&qword_1EAC38, &qword_174F20);
  sub_37404();
  sub_CA380();
  __chkstk_darwin(v0);
  sub_CA0E8();
  type metadata accessor for GetLockStatusRCHFlowStrategy();
  sub_CA2E0();
  swift_allocObject();
  v1 = sub_DC78C();
  sub_CA540(v1);
  sub_DC3AC();
  v2 = sub_C9F48(&qword_1EAC40, type metadata accessor for GetLockStatusRCHFlowStrategy, &unk_1762C0);
  sub_CA128(v2);
  sub_CA558();
  v3 = sub_CA114();
  v4(v3);
  v5 = sub_3CFF0();
  sub_5758(v5, v6);
  v7 = sub_CA470(&qword_1EAC50);
  sub_CA38C(v7);
  sub_CA510();

  return sub_CA448();
}

uint64_t sub_C63F8()
{
  sub_5758(&qword_1EAC58, &qword_174F30);
  sub_37404();
  sub_CA380();
  __chkstk_darwin(v0);
  sub_CA0E8();
  type metadata accessor for GetClimateStatusRCHFlowStrategy();
  sub_CA594();
  swift_allocObject();
  v1 = sub_BF25C();
  sub_CA540(v1);
  sub_11C220();
  v2 = sub_C9F48(&qword_1EAC60, type metadata accessor for GetClimateStatusRCHFlowStrategy, &unk_178DE0);
  sub_CA128(v2);
  sub_CA558();
  v3 = sub_CA114();
  v4(v3);
  v5 = sub_3CFF0();
  sub_5758(v5, v6);
  v7 = sub_CA470(&qword_1EAC70);
  sub_CA38C(v7);
  sub_CA510();

  return sub_CA448();
}

void sub_C6548()
{
  sub_CA350();
  CarRemainingRangeAction = type metadata accessor for GetCarRemainingRangeAction(0);
  sub_10AFC();
  __chkstk_darwin(v2);
  sub_A138();
  v5 = (v4 - v3);
  if (qword_1E5968 != -1)
  {
    sub_CA040(&qword_1E5968);
  }

  v6 = type metadata accessor for CarPlayService(0);
  sub_CA5E0(v6, &off_1DA3F0);
  sub_168444();
  sub_169EB4();
  sub_169EA4();
  sub_169E94();

  type metadata accessor for LocalizedMeasurementUnitProvider(0);
  sub_169ED4();

  *v5 = 3;
  sub_C5DC0(v33);
  sub_1690C4();
  v7 = sub_168E34();
  sub_483C8(v7);
  v30 = v7;
  v31 = &protocol witness table for ResponseFactory;
  *&v29 = sub_168E24();
  sub_CA270();
  sub_CA078();
  __chkstk_darwin(v8);
  sub_A138();
  v10 = sub_CA488(v9);
  v11(v10);
  v27 = CarRemainingRangeAction;
  v28 = &off_1D6C08;
  v12 = sub_10888(&v26);
  sub_C976C(v5, v12);
  v13 = type metadata accessor for CarCommandsLoggingProducer();
  sub_CA5A0(v13);
  v14 = swift_allocObject();
  sub_CA618();
  sub_CA0B0();
  __chkstk_darwin(v15);
  sub_A138();
  v17 = sub_CA2F8(v16);
  v18(v17);
  v19 = *v0;
  v24 = &off_1D7DF0;
  *&v20 = sub_CA0FC(v19);
  *(v14 + 16) = v20;
  *(v14 + 32) = v20;
  *(v14 + 48) = 0;
  *(v14 + 184) = v20;
  *(v14 + 200) = v20;
  *(v14 + 216) = 0;
  *(v14 + 56) = 5;
  sub_D124(&v26, v14 + 224);
  sub_D124(&v23, v14 + 144);
  sub_D124(&v32, v14 + 64);
  sub_D124(&v29, v14 + 104);
  sub_D13C(&v25);
  sub_D13C(v33);
  v33[0] = v14;
  sub_C9FBC();
  sub_C9F48(v21, v22, &unk_16DF38);
  sub_CA2EC();
  sub_168924();

  sub_C97C4(v5, type metadata accessor for GetCarRemainingRangeAction);
  sub_CA23C();
  sub_CA368();
}

uint64_t sub_C687C()
{
  sub_5758(&qword_1EAC78, &qword_174F40);
  sub_37404();
  sub_CA380();
  __chkstk_darwin(v0);
  sub_CA0E8();
  type metadata accessor for GetPowerLevelRCHFlowStrategy();
  v1 = swift_allocObject();
  sub_CA540(v1);
  sub_78994();
  v2 = sub_C9F48(&qword_1EAC80, type metadata accessor for GetPowerLevelRCHFlowStrategy, &unk_170BD0);
  sub_CA128(v2);
  sub_CA558();
  v3 = sub_CA114();
  v4(v3);
  v5 = sub_3CFF0();
  sub_5758(v5, v6);
  v7 = sub_CA470(&qword_1EAC90);
  sub_CA38C(v7);
  sub_CA510();

  return sub_CA448();
}

uint64_t sub_C69C8()
{
  sub_5758(&qword_1EACD8, &qword_174F70);
  sub_37404();
  sub_CA380();
  __chkstk_darwin(v0);
  sub_CA0E8();
  type metadata accessor for GetTrunkStatusRCHFlowStrategy();
  sub_CA594();
  swift_allocObject();
  v1 = sub_BF25C();
  sub_CA540(v1);
  sub_BEEA0();
  v2 = sub_C9F48(&qword_1EACE0, type metadata accessor for GetTrunkStatusRCHFlowStrategy, &unk_174860);
  sub_CA128(v2);
  sub_CA558();
  v3 = sub_CA114();
  v4(v3);
  v5 = sub_3CFF0();
  sub_5758(v5, v6);
  v7 = sub_CA470(&qword_1EACF0);
  sub_CA38C(v7);
  sub_CA510();

  return sub_CA448();
}

void sub_C6B18()
{
  sub_CA350();
  sub_5758(&qword_1EAD00, &qword_174F80);
  sub_37404();
  sub_CA380();
  v3 = __chkstk_darwin(v2);
  sub_CA3FC(v3);
  v4 = type metadata accessor for FeatureFlagHelper();
  v5 = sub_CA4BC(v4);
  v6 = sub_168E34();
  sub_483C8(v6);
  sub_CA1CC();

  sub_168E24();
  sub_47FC4();
  type metadata accessor for SnippetManager();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v32 = v0;
  v33 = &off_1D9AF0;
  v31 = v5;
  v8 = type metadata accessor for SetRadioStationRCHFlowStrategy(0);
  sub_CA3A8(v8);
  sub_CA4A0();
  sub_37404();
  __chkstk_darwin(v9);
  v11 = sub_CA0C4(v10, v25);
  v12(v11);
  v13 = *v1;
  v29 = v0;
  v30 = &off_1D9AF0;
  v28 = v13;
  sub_CA4F4(OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin30SetRadioStationRCHFlowStrategy____lazy_storage___inProcessIntentHandler);
  sub_10824(&v28, &v27);
  sub_CA41C();
  sub_37404();
  __chkstk_darwin(v14);
  v16 = sub_CA0C4(v15, v26);
  v17(v16);

  sub_CA248();
  sub_CA3C4();
  sub_D13C(&v31);

  v34 = v7;

  sub_A9880();
  v18 = sub_C9F48(&qword_1EAD08, type metadata accessor for SetRadioStationRCHFlowStrategy, &unk_173888);
  sub_CA32C(v18);
  v19 = sub_CA5C0();
  v20 = sub_CA57C();
  v21(v20);
  v34 = v19;
  v22 = sub_3CFF0();
  sub_5758(v22, v23);
  v24 = sub_CA470(&qword_1EAD18);
  sub_CA4D8(v24);
  sub_CA528();

  sub_CA368();
}

void sub_C6E0C()
{
  sub_CA350();
  TirePressureStatusAction = type metadata accessor for GetTirePressureStatusAction(0);
  sub_10AFC();
  __chkstk_darwin(v2);
  sub_A138();
  v5 = (v4 - v3);
  sub_1693F4();
  sub_D084(&v37, v38);
  sub_CA1CC();
  v6 = sub_168B24();
  sub_D13C(&v37);
  if (v6)
  {
    if (qword_1E5968 != -1)
    {
      sub_CA040(&qword_1E5968);
    }

    v7 = type metadata accessor for CarPlayService(0);
    sub_CA5E0(v7, &off_1DA3F0);
    sub_168444();
    sub_169EB4();
    sub_169EA4();
    sub_169E94();

    type metadata accessor for LocalizedMeasurementUnitProvider(0);
    sub_169ED4();

    *v5 = 16;
    sub_C5DC0(&v37);
    sub_1690C4();
    v8 = sub_168E34();
    sub_483C8(v8);
    v34 = v8;
    v35 = &protocol witness table for ResponseFactory;
    *&v33 = sub_168E24();
    sub_CA270();
    sub_CA078();
    __chkstk_darwin(v9);
    sub_A138();
    v11 = sub_CA488(v10);
    v12(v11);
    v31 = TirePressureStatusAction;
    v32 = &off_1D7288;
    v13 = sub_10888(&v30);
    sub_C976C(v5, v13);
    v14 = type metadata accessor for CarCommandsLoggingProducer();
    sub_CA5A0(v14);
    v15 = swift_allocObject();
    sub_CA618();
    sub_CA0B0();
    __chkstk_darwin(v16);
    sub_A138();
    v18 = sub_CA2F8(v17);
    v19(v18);
    v20 = *v0;
    v28 = &off_1D7DF0;
    *&v21 = sub_CA0FC(v20);
    *(v15 + 16) = v21;
    *(v15 + 32) = v21;
    *(v15 + 48) = 0;
    *(v15 + 184) = v21;
    *(v15 + 200) = v21;
    *(v15 + 216) = 0;
    *(v15 + 56) = 5;
    sub_D124(&v30, v15 + 224);
    sub_D124(&v27, v15 + 144);
    sub_D124(v36, v15 + 64);
    sub_D124(&v33, v15 + 104);
    sub_D13C(&v29);
    sub_D13C(&v37);
    *&v37 = v15;
    sub_C9FBC();
    sub_C9F48(v22, v23, &unk_16DF38);
    sub_CA2EC();
    sub_168924();

    sub_C97C4(v5, type metadata accessor for GetTirePressureStatusAction);
  }

  else
  {
    sub_1693F4();
    sub_1690C4();
    v24 = type metadata accessor for CommonUnsupportedActionFlow(0);
    sub_483C8(v24);
    *&v37 = sub_C1248(&v37, v36);
    sub_CA060();
    sub_C9F48(v25, v26, &unk_170628);
    sub_CA2EC();
    sub_168924();
  }

  sub_CA23C();
  sub_CA368();
}

void sub_C71EC()
{
  sub_CA350();
  sub_1693F4();
  sub_CA14C();
  sub_CA630();
  if (v0)
  {
    if (qword_1E5968 != -1)
    {
      sub_CA040(&qword_1E5968);
    }

    v3 = qword_1F0E10;
    v4 = type metadata accessor for CarPlayService(0);
    v41 = &off_1DA3F0;
    sub_CA31C(v4, &type metadata for ServiceAvailabilityGate);
    v42 = 22;
    v40[0] = 22;
    v5 = v3;
    sub_C5DC0(v43);
    sub_1690C4();
    v6 = sub_168E34();
    sub_CA1B0(v6);
    v7 = sub_168E24();
    sub_CA1FC(v7, &protocol witness table for ResponseFactory);
    sub_CA094();
    __chkstk_darwin(v8);
    v10 = sub_CA01C(v9, v29);
    v11(v10);
    v36 = &type metadata for SetCarPlayFanIntensityAction;
    v37 = &off_1D9770;
    sub_CA2E0();
    v12 = swift_allocObject();
    v13 = sub_CA188(v12);
    sub_C9E98(v13, v14);
    v15 = type metadata accessor for CarCommandsLoggingProducer();
    v16 = sub_CA2C4(v15);
    sub_CA220(v16);
    sub_CA2A8();
    sub_CA078();
    __chkstk_darwin(v17);
    v19 = sub_C9FD4(v18, v30);
    v20(v19);
    v21 = *v2;
    v32 = v15;
    v33 = &off_1D7DF0;
    *&v31 = v21;
    sub_C9FF8();
    sub_D124(&v35, v1 + 224);
    sub_D124(&v31, v1 + 144);
    sub_D124(&v39, v1 + 64);
    sub_D124(&v38, v1 + 104);
    sub_D13C(&v34);
    sub_D13C(v43);
    sub_CA43C();
    sub_C9FBC();
    sub_C9F48(v22, v23, &unk_16DF38);
    sub_CA2EC();
    sub_168924();
    sub_CA1CC();

    sub_C9EF4(v40);
  }

  else
  {
    sub_1693F4();
    sub_1690C4();
    v24 = type metadata accessor for CommonUnsupportedActionFlow(0);
    sub_CA1B0(v24);
    v25 = sub_CA454();
    sub_CA588(v25);
    sub_CA060();
    v28 = sub_C9F48(v26, v27, &unk_170628);
    sub_CA28C(v28);
    sub_CA1CC();
  }

  sub_CA23C();
  sub_CA368();
}

void sub_C74C0()
{
  sub_CA350();
  sub_1693F4();
  sub_CA14C();
  sub_CA630();
  if (v0)
  {
    if (qword_1E5968 != -1)
    {
      sub_CA040(&qword_1E5968);
    }

    v3 = qword_1F0E10;
    v4 = type metadata accessor for CarPlayService(0);
    v41 = &off_1DA3F0;
    sub_CA31C(v4, &type metadata for ServiceAvailabilityGate);
    v42 = 12;
    v40[0] = 12;
    v5 = v3;
    sub_C5DC0(v43);
    sub_1690C4();
    v6 = sub_168E34();
    sub_CA1B0(v6);
    v7 = sub_168E24();
    sub_CA1FC(v7, &protocol witness table for ResponseFactory);
    sub_CA094();
    __chkstk_darwin(v8);
    v10 = sub_CA01C(v9, v29);
    v11(v10);
    v36 = &type metadata for SetCarPlayMaxACAction;
    v37 = &off_1D7880;
    sub_CA2E0();
    v12 = swift_allocObject();
    v13 = sub_CA188(v12);
    sub_C96BC(v13, v14);
    v15 = type metadata accessor for CarCommandsLoggingProducer();
    v16 = sub_CA2C4(v15);
    sub_CA220(v16);
    sub_CA2A8();
    sub_CA078();
    __chkstk_darwin(v17);
    v19 = sub_C9FD4(v18, v30);
    v20(v19);
    v21 = *v2;
    v32 = v15;
    v33 = &off_1D7DF0;
    *&v31 = v21;
    sub_C9FF8();
    sub_D124(&v35, v1 + 224);
    sub_D124(&v31, v1 + 144);
    sub_D124(&v39, v1 + 64);
    sub_D124(&v38, v1 + 104);
    sub_D13C(&v34);
    sub_D13C(v43);
    sub_CA43C();
    sub_C9FBC();
    sub_C9F48(v22, v23, &unk_16DF38);
    sub_CA2EC();
    sub_168924();
    sub_CA1CC();

    sub_C9718(v40);
  }

  else
  {
    sub_1693F4();
    sub_1690C4();
    v24 = type metadata accessor for CommonUnsupportedActionFlow(0);
    sub_CA1B0(v24);
    v25 = sub_CA454();
    sub_CA588(v25);
    sub_CA060();
    v28 = sub_C9F48(v26, v27, &unk_170628);
    sub_CA28C(v28);
    sub_CA1CC();
  }

  sub_CA23C();
  sub_CA368();
}

void sub_C7794()
{
  sub_CA350();
  sub_1693F4();
  sub_CA14C();
  sub_CA630();
  if (v0)
  {
    if (qword_1E5968 != -1)
    {
      sub_CA040(&qword_1E5968);
    }

    v3 = qword_1F0E10;
    v4 = type metadata accessor for CarPlayService(0);
    v41 = &off_1DA3F0;
    sub_CA31C(v4, &type metadata for ServiceAvailabilityGate);
    v42 = 7;
    v40[0] = 7;
    v5 = v3;
    sub_C5DC0(v43);
    sub_1690C4();
    v6 = sub_168E34();
    sub_CA1B0(v6);
    v7 = sub_168E24();
    sub_CA1FC(v7, &protocol witness table for ResponseFactory);
    sub_CA094();
    __chkstk_darwin(v8);
    v10 = sub_CA01C(v9, v29);
    v11(v10);
    v36 = &type metadata for SetDefrosterAction;
    v37 = &off_1D95D8;
    sub_CA2E0();
    v12 = swift_allocObject();
    v13 = sub_CA188(v12);
    sub_C981C(v13, v14);
    v15 = type metadata accessor for CarCommandsLoggingProducer();
    v16 = sub_CA2C4(v15);
    sub_CA220(v16);
    sub_CA2A8();
    sub_CA078();
    __chkstk_darwin(v17);
    v19 = sub_C9FD4(v18, v30);
    v20(v19);
    v21 = *v2;
    v32 = v15;
    v33 = &off_1D7DF0;
    *&v31 = v21;
    sub_C9FF8();
    sub_D124(&v35, v1 + 224);
    sub_D124(&v31, v1 + 144);
    sub_D124(&v39, v1 + 64);
    sub_D124(&v38, v1 + 104);
    sub_D13C(&v34);
    sub_D13C(v43);
    sub_CA43C();
    sub_C9FBC();
    sub_C9F48(v22, v23, &unk_16DF38);
    sub_CA2EC();
    sub_168924();
    sub_CA1CC();

    sub_C9878(v40);
  }

  else
  {
    sub_1693F4();
    sub_1690C4();
    v24 = type metadata accessor for CommonUnsupportedActionFlow(0);
    sub_CA1B0(v24);
    v25 = sub_CA454();
    sub_CA588(v25);
    sub_CA060();
    v28 = sub_C9F48(v26, v27, &unk_170628);
    sub_CA28C(v28);
    sub_CA1CC();
  }

  sub_CA23C();
  sub_CA368();
}

void sub_C7A68()
{
  sub_CA350();
  sub_5758(&qword_1EACB8, &qword_174F60);
  sub_37404();
  sub_CA380();
  v3 = __chkstk_darwin(v2);
  sub_CA3FC(v3);
  v4 = type metadata accessor for FeatureFlagHelper();
  v5 = sub_CA4BC(v4);
  v6 = sub_168E34();
  sub_483C8(v6);
  sub_CA1CC();

  sub_168E24();
  sub_47FC4();
  type metadata accessor for SnippetManager();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v32 = v0;
  v33 = &off_1D9AF0;
  v31 = v5;
  v8 = type metadata accessor for SetCarPlayClimateRCHFlowStrategy(0);
  sub_CA3A8(v8);
  sub_CA4A0();
  sub_37404();
  __chkstk_darwin(v9);
  v11 = sub_CA0C4(v10, v25);
  v12(v11);
  v13 = *v1;
  v29 = v0;
  v30 = &off_1D9AF0;
  v28 = v13;
  sub_CA4F4(OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin32SetCarPlayClimateRCHFlowStrategy____lazy_storage___inProcessIntentHandler);
  sub_10824(&v28, &v27);
  sub_CA41C();
  sub_37404();
  __chkstk_darwin(v14);
  v16 = sub_CA0C4(v15, v26);
  v17(v16);

  sub_CA248();
  sub_CA3C4();
  sub_D13C(&v31);

  v34 = v7;

  sub_F7A14();
  v18 = sub_C9F48(&qword_1EACC0, type metadata accessor for SetCarPlayClimateRCHFlowStrategy, &unk_1779C0);
  sub_CA32C(v18);
  v19 = sub_CA5C0();
  v20 = sub_CA57C();
  v21(v20);
  v34 = v19;
  v22 = sub_3CFF0();
  sub_5758(v22, v23);
  v24 = sub_CA470(&qword_1EACD0);
  sub_CA4D8(v24);
  sub_CA528();

  sub_CA368();
}

void sub_C7D38()
{
  sub_CA350();
  sub_5758(&qword_1EAD20, &qword_174F90);
  sub_37404();
  v3 = v2;
  sub_CA380();
  v5 = __chkstk_darwin(v4);
  sub_CA3FC(v5);
  sub_D084(&v37, v38);
  sub_CA1CC();
  v6 = sub_168B24();
  sub_D13C(&v37);
  sub_1693F4();
  if (v6)
  {
    v7 = type metadata accessor for FeatureFlagHelper();
    v8 = sub_CA4BC(v7);
    v9 = sub_168E34();
    sub_483C8(v9);
    sub_CA1CC();

    sub_168E24();
    sub_47FC4();
    type metadata accessor for SnippetManager();
    v31[1] = v3;
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    v35 = v0;
    v36 = &off_1D9AF0;
    *&v34 = v8;
    v11 = type metadata accessor for SetCarPlaySeatSettingsRCHFlowStrategy(0);
    sub_CA3A8(v11);
    sub_CA4A0();
    v31[0] = v31;
    sub_37404();
    __chkstk_darwin(v12);
    v14 = sub_CA0C4(v13, v31[0]);
    v15(v14);
    v16 = *v1;
    v33[3] = v0;
    v33[4] = &off_1D9AF0;
    v33[0] = v16;
    sub_CA4F4(OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin37SetCarPlaySeatSettingsRCHFlowStrategy____lazy_storage___inProcessIntentHandler);
    sub_10824(v33, &v32);
    sub_CA41C();
    sub_37404();
    __chkstk_darwin(v17);
    v19 = sub_CA0C4(v18, v31[0]);
    v20(v19);

    sub_CA248();
    sub_CA3C4();
    sub_D13C(&v34);

    *&v37 = v10;

    sub_152B60();
    v21 = sub_C9F48(&qword_1EAD28, type metadata accessor for SetCarPlaySeatSettingsRCHFlowStrategy, &unk_17ABD0);
    sub_CA32C(v21);
    v22 = sub_168CC4();
    v23 = sub_CA57C();
    v24(v23);
    *&v37 = v22;
    v25 = sub_3CFF0();
    sub_5758(v25, v26);
    v27 = sub_CA470(&qword_1EAD38);
    sub_CA4D8(v27);
    sub_CA528();
  }

  else
  {
    sub_1690C4();
    v28 = type metadata accessor for CommonUnsupportedActionFlow(0);
    sub_483C8(v28);
    *&v37 = sub_C1248(&v37, &v34);
    sub_CA060();
    sub_C9F48(v29, v30, &unk_170628);
    sub_168924();
  }

  sub_CA368();
}

void sub_C80E4()
{
  sub_CA350();
  sub_1693F4();
  sub_CA14C();
  sub_CA630();
  if (v0)
  {
    if (qword_1E5968 != -1)
    {
      sub_CA040(&qword_1E5968);
    }

    v3 = qword_1F0E10;
    v4 = type metadata accessor for CarPlayService(0);
    v41 = &off_1DA3F0;
    sub_CA31C(v4, &type metadata for ServiceAvailabilityGate);
    v42 = 15;
    v40[0] = 15;
    v5 = v3;
    sub_C5DC0(v43);
    sub_1690C4();
    v6 = sub_168E34();
    sub_CA1B0(v6);
    v7 = sub_168E24();
    sub_CA1FC(v7, &protocol witness table for ResponseFactory);
    sub_CA094();
    __chkstk_darwin(v8);
    v10 = sub_CA01C(v9, v29);
    v11(v10);
    v36 = &type metadata for SetCarPlaySteeringWheelTemperatureAction;
    v37 = &off_1D5420;
    sub_CA2E0();
    v12 = swift_allocObject();
    v13 = sub_CA188(v12);
    sub_C9920(v13, v14);
    v15 = type metadata accessor for CarCommandsLoggingProducer();
    v16 = sub_CA2C4(v15);
    sub_CA220(v16);
    sub_CA2A8();
    sub_CA078();
    __chkstk_darwin(v17);
    v19 = sub_C9FD4(v18, v30);
    v20(v19);
    v21 = *v2;
    v32 = v15;
    v33 = &off_1D7DF0;
    *&v31 = v21;
    sub_C9FF8();
    sub_D124(&v35, v1 + 224);
    sub_D124(&v31, v1 + 144);
    sub_D124(&v39, v1 + 64);
    sub_D124(&v38, v1 + 104);
    sub_D13C(&v34);
    sub_D13C(v43);
    sub_CA43C();
    sub_C9FBC();
    sub_C9F48(v22, v23, &unk_16DF38);
    sub_CA2EC();
    sub_168924();
    sub_CA1CC();

    sub_C997C(v40);
  }

  else
  {
    sub_1693F4();
    sub_1690C4();
    v24 = type metadata accessor for CommonUnsupportedActionFlow(0);
    sub_CA1B0(v24);
    v25 = sub_CA454();
    sub_CA588(v25);
    sub_CA060();
    v28 = sub_C9F48(v26, v27, &unk_170628);
    sub_CA28C(v28);
    sub_CA1CC();
  }

  sub_CA23C();
  sub_CA368();
}

void sub_C83B8()
{
  sub_CA350();
  if (qword_1E5968 != -1)
  {
    sub_CA040(&qword_1E5968);
  }

  v2 = type metadata accessor for CarPlayService(0);
  v34[5] = &off_1DA3F0;
  sub_CA30C(v2, &type metadata for ServiceAvailabilityGate);
  sub_CA600(17);
  sub_C5DC0(v33);
  sub_1690C4();
  v3 = sub_168E34();
  sub_CA1B0(v3);
  v4 = sub_168E24();
  sub_CA1D8(v4, &protocol witness table for ResponseFactory);
  sub_CA094();
  __chkstk_darwin(v5);
  v7 = sub_CA01C(v6, v22);
  v8(v7);
  v29 = &type metadata for SetCarPlayFanSettingsAction;
  v30 = &off_1D4EF8;
  sub_CA2E0();
  v9 = swift_allocObject();
  v10 = sub_CA19C(v9);
  sub_C9B9C(v10, v11);
  v12 = type metadata accessor for CarCommandsLoggingProducer();
  v13 = sub_CA2C4(v12);
  sub_CA220(v13);
  sub_CA2A8();
  sub_CA078();
  __chkstk_darwin(v14);
  v16 = sub_C9FD4(v15, v23);
  v17(v16);
  v18 = *v1;
  v25 = v12;
  v26 = &off_1D7DF0;
  *&v24 = v18;
  sub_C9FF8();
  sub_D124(&v28, v0 + 224);
  sub_D124(&v24, v0 + 144);
  sub_D124(&v32, v0 + 64);
  sub_D124(&v31, v0 + 104);
  sub_D13C(&v27);
  sub_D13C(v33);
  sub_CA570();
  sub_C9FBC();
  v21 = sub_C9F48(v19, v20, &unk_16DF38);
  sub_CA28C(v21);
  sub_CA1CC();

  sub_C9BF8(v34);
  sub_CA23C();
  sub_CA368();
}

void sub_C8610()
{
  sub_CA350();
  sub_1693F4();
  v1 = v37;
  sub_D084(&v35, v36);
  v2 = sub_168B24();
  sub_D13C(&v35);
  if (v2)
  {
    if (qword_1E5968 != -1)
    {
      sub_CA040(&qword_1E5968);
    }

    v3 = sub_C9A48(qword_1F0E10, 18);

    sub_C5DC0(&v35);
    sub_1690C4();
    v4 = sub_168E34();
    sub_CA1B0(v4);
    v32 = v1;
    v33 = &protocol witness table for ResponseFactory;
    *&v31 = sub_168E24();
    sub_CA270();
    sub_CA094();
    __chkstk_darwin(v5);
    v7 = sub_CA01C(v6, v22);
    v8(v7);
    v9 = *v1;
    v29 = type metadata accessor for SetVolumeAction();
    v30 = &off_1D6998;
    *&v28 = v3;
    v26 = type metadata accessor for CarCommandsLoggingProducer();
    v27 = &off_1D7DF0;
    v25 = v9;
    v10 = type metadata accessor for CarCommandsActionFlow();
    v11 = sub_CA220(v10);
    sub_CA618();
    sub_CA078();
    __chkstk_darwin(v12);
    v14 = sub_C9FD4(v13, v22);
    v15(v14);
    v16 = *v0;
    v24 = &off_1D7DF0;
    v23 = v26;
    *&v22 = v16;
    sub_C9FF8();
    sub_D124(&v28, v11 + 224);
    sub_D124(&v22, v11 + 144);
    sub_D124(v34, v11 + 64);
    sub_D124(&v31, v11 + 104);
    sub_D13C(&v25);
    sub_D13C(&v35);
    sub_CA43C();
    sub_C9FBC();
    sub_C9F48(v17, v18, &unk_16DF38);
    sub_CA2EC();
    sub_168924();
    sub_CA1CC();
  }

  else
  {
    sub_1693F4();
    sub_1690C4();
    v19 = type metadata accessor for CommonUnsupportedActionFlow(0);
    sub_483C8(v19);
    *&v35 = sub_C1248(&v35, v34);
    sub_CA060();
    sub_C9F48(v20, v21, &unk_170628);
    sub_CA2EC();
    sub_168924();
  }

  sub_CA23C();
  sub_CA368();
}

void sub_C8914()
{
  sub_CA350();
  if (qword_1E5968 != -1)
  {
    sub_CA040(&qword_1E5968);
  }

  v2 = type metadata accessor for CarPlayService(0);
  v34[5] = &off_1DA3F0;
  sub_CA30C(v2, &type metadata for ServiceAvailabilityGate);
  sub_CA600(19);
  sub_C5DC0(v33);
  sub_1690C4();
  v3 = sub_168E34();
  sub_CA1B0(v3);
  v4 = sub_168E24();
  sub_CA1D8(v4, &protocol witness table for ResponseFactory);
  sub_CA094();
  __chkstk_darwin(v5);
  v7 = sub_CA01C(v6, v22);
  v8(v7);
  v29 = &type metadata for SetCarPlayAutoModeAction;
  v30 = &off_1D6FA8;
  sub_CA2E0();
  v9 = swift_allocObject();
  v10 = sub_CA19C(v9);
  sub_C9C4C(v10, v11);
  v12 = type metadata accessor for CarCommandsLoggingProducer();
  v13 = sub_CA2C4(v12);
  sub_CA220(v13);
  sub_CA2A8();
  sub_CA078();
  __chkstk_darwin(v14);
  v16 = sub_C9FD4(v15, v23);
  v17(v16);
  v18 = *v1;
  v25 = v12;
  v26 = &off_1D7DF0;
  *&v24 = v18;
  sub_C9FF8();
  sub_D124(&v28, v0 + 224);
  sub_D124(&v24, v0 + 144);
  sub_D124(&v32, v0 + 64);
  sub_D124(&v31, v0 + 104);
  sub_D13C(&v27);
  sub_D13C(v33);
  sub_CA570();
  sub_C9FBC();
  v21 = sub_C9F48(v19, v20, &unk_16DF38);
  sub_CA28C(v21);
  sub_CA1CC();

  sub_C9CA8(v34);
  sub_CA23C();
  sub_CA368();
}

void sub_C8B6C()
{
  sub_CA350();
  if (qword_1E5968 != -1)
  {
    sub_CA040(&qword_1E5968);
  }

  v2 = type metadata accessor for CarPlayService(0);
  v34[5] = &off_1DA3F0;
  sub_CA30C(v2, &type metadata for ServiceAvailabilityGate);
  sub_CA600(21);
  sub_C5DC0(v33);
  sub_1690C4();
  v3 = sub_168E34();
  sub_CA1B0(v3);
  v4 = sub_168E24();
  sub_CA1D8(v4, &protocol witness table for ResponseFactory);
  sub_CA094();
  __chkstk_darwin(v5);
  v7 = sub_CA01C(v6, v22);
  v8(v7);
  v29 = &type metadata for SetCarPlayVentModeAction;
  v30 = &off_1D9E10;
  sub_CA2E0();
  v9 = swift_allocObject();
  v10 = sub_CA19C(v9);
  sub_C9DAC(v10, v11);
  v12 = type metadata accessor for CarCommandsLoggingProducer();
  v13 = sub_CA2C4(v12);
  sub_CA220(v13);
  sub_CA2A8();
  sub_CA078();
  __chkstk_darwin(v14);
  v16 = sub_C9FD4(v15, v23);
  v17(v16);
  v18 = *v1;
  v25 = v12;
  v26 = &off_1D7DF0;
  *&v24 = v18;
  sub_C9FF8();
  sub_D124(&v28, v0 + 224);
  sub_D124(&v24, v0 + 144);
  sub_D124(&v32, v0 + 64);
  sub_D124(&v31, v0 + 104);
  sub_D13C(&v27);
  sub_D13C(v33);
  sub_CA570();
  sub_C9FBC();
  v21 = sub_C9F48(v19, v20, &unk_16DF38);
  sub_CA28C(v21);
  sub_CA1CC();

  sub_C9E08(v34);
  sub_CA23C();
  sub_CA368();
}

void sub_C8DC4()
{
  sub_CA350();
  if (qword_1E5968 != -1)
  {
    sub_CA040(&qword_1E5968);
  }

  v2 = type metadata accessor for CarPlayService(0);
  v34[5] = &off_1DA3F0;
  sub_CA30C(v2, &type metadata for ServiceAvailabilityGate);
  sub_CA600(20);
  sub_C5DC0(v33);
  sub_1690C4();
  v3 = sub_168E34();
  sub_CA1B0(v3);
  v4 = sub_168E24();
  sub_CA1D8(v4, &protocol witness table for ResponseFactory);
  sub_CA094();
  __chkstk_darwin(v5);
  v7 = sub_CA01C(v6, v22);
  v8(v7);
  v29 = &type metadata for SetCarPlayClimateSyncAction;
  v30 = &off_1DA058;
  sub_CA2E0();
  v9 = swift_allocObject();
  v10 = sub_CA19C(v9);
  sub_C9CFC(v10, v11);
  v12 = type metadata accessor for CarCommandsLoggingProducer();
  v13 = sub_CA2C4(v12);
  sub_CA220(v13);
  sub_CA2A8();
  sub_CA078();
  __chkstk_darwin(v14);
  v16 = sub_C9FD4(v15, v23);
  v17(v16);
  v18 = *v1;
  v25 = v12;
  v26 = &off_1D7DF0;
  *&v24 = v18;
  sub_C9FF8();
  sub_D124(&v28, v0 + 224);
  sub_D124(&v24, v0 + 144);
  sub_D124(&v32, v0 + 64);
  sub_D124(&v31, v0 + 104);
  sub_D13C(&v27);
  sub_D13C(v33);
  sub_CA570();
  sub_C9FBC();
  v21 = sub_C9F48(v19, v20, &unk_16DF38);
  sub_CA28C(v21);
  sub_CA1CC();

  sub_C9D58(v34);
  sub_CA23C();
  sub_CA368();
}

void sub_C9040(uint64_t a1)
{
  sub_CA350();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  if (qword_1E5968 != -1)
  {
    sub_CA040(&qword_1E5968);
  }

  v8 = qword_1F0E10;
  v9 = type metadata accessor for CarPlayService(0);
  v48[3] = v9;
  v48[4] = &off_1DA3F0;
  v48[0] = v8;
  v10 = v7(0);
  v11 = swift_allocObject();
  sub_2F8D0(v48, v9);
  sub_37404();
  __chkstk_darwin(v12);
  sub_A138();
  v14 = sub_CA2F8(v13);
  v15(v14);
  v16 = *v1;
  v46 = v9;
  v47 = &off_1DA3F0;
  *&v45 = v16;
  *(v11 + 16) = v5;
  *(v11 + 64) = 0;
  *(v11 + 72) = 0;
  *(v11 + 80) = 0;
  *(v11 + 88) = 1;
  *(v11 + 96) = 0u;
  *(v11 + 112) = 0u;
  *(v11 + 128) = 0u;
  sub_D124(&v45, v11 + 24);
  v17 = v8;
  sub_D13C(v48);

  sub_C5DC0(v48);
  sub_1690C4();
  v18 = sub_168E34();
  sub_CA3A8(v18);
  v43 = v9;
  v44 = &protocol witness table for ResponseFactory;
  *&v42 = sub_168E24();
  sub_CA270();
  sub_CA094();
  __chkstk_darwin(v19);
  v21 = sub_C9FD4(v20, v33);
  v22(v21);
  v23 = *v9;
  v40 = v10;
  v41 = v3;
  *&v39 = v11;
  v37 = type metadata accessor for CarCommandsLoggingProducer();
  v38 = &off_1D7DF0;
  v36 = v23;
  v24 = type metadata accessor for CarCommandsActionFlow();
  v25 = sub_CA220(v24);
  sub_CA618();
  sub_CA078();
  __chkstk_darwin(v26);
  v28 = sub_C9FD4(v27, v33);
  v29(v28);
  v30 = *v23;
  v35 = &off_1D7DF0;
  v34 = v37;
  *&v33 = v30;
  sub_C9FF8();
  sub_D124(&v39, v25 + 224);
  sub_D124(&v33, v25 + 144);
  sub_D124(&v45, v25 + 64);
  sub_D124(&v42, v25 + 104);
  sub_D13C(&v36);
  sub_D13C(v48);
  sub_CA43C();
  sub_C9FBC();
  sub_C9F48(v31, v32, &unk_16DF38);
  sub_CA2EC();
  sub_168924();
  sub_CA1CC();

  sub_CA23C();
  sub_CA368();
}

uint64_t sub_C93CC(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t *, uint64_t *), uint64_t a3, uint64_t a4)
{
  sub_1693F4();
  sub_1690C4();
  v7 = a1(0);
  sub_CA3A8(v7);
  v13[0] = a2(v13, &v12);
  v8 = sub_CA57C();
  sub_C9F48(v8, v9, v10);
  sub_168924();
  sub_CA528();
  return a4;
}

uint64_t sub_C94C8(uint64_t a1)
{
  v2 = sub_168F64();
  __chkstk_darwin(v2 - 8);
  sub_A138();
  v5 = v4 - v3;
  sub_1693F4();
  sub_1690C4();
  sub_168F54();
  v6 = type metadata accessor for CommonCheckLockScreenFlow(0);
  sub_CA1B0(v6);
  *&v9 = sub_4CA24(a1, &v9, &v8, v5);
  sub_C9F48(&qword_1E6F78, type metadata accessor for CommonCheckLockScreenFlow, &unk_16EDD8);

  sub_168924();
  sub_CA528();
  return sub_CA448();
}

uint64_t sub_C95D8()
{
  sub_D13C((v0 + 24));
  sub_CA594();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_C976C(uint64_t a1, uint64_t a2)
{
  v3 = sub_47FC4();
  v4(v3);
  sub_10AFC();
  v5 = sub_3CFF0();
  v6(v5);
  return a2;
}

uint64_t sub_C97C4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_10AFC();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_C98CC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_37130(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_C99D0(uint64_t a1, char a2, uint64_t a3)
{
  *(a3 + 48) = type metadata accessor for CarPlayService(0);
  *(a3 + 56) = &off_1DA3F0;
  *(a3 + 24) = a1;
  *(a3 + 88) = &type metadata for ServiceAvailabilityGate;
  *(a3 + 96) = &off_1D6810;
  *(a3 + 64) = a2;
  *(a3 + 16) = 18;
  *(a3 + 104) = 0;
  *(a3 + 112) = 1;
  return a3;
}

uint64_t sub_C9A48(uint64_t a1, char a2)
{
  v17 = &off_1DA3F0;
  v16 = type metadata accessor for CarPlayService(0);
  v15[0] = a1;
  v13 = &type metadata for ServiceAvailabilityGate;
  v14 = &off_1D6810;
  LOBYTE(v12[0]) = a2;
  type metadata accessor for SetVolumeAction();
  v4 = swift_allocObject();
  v5 = sub_2F8D0(v15, v16);
  __chkstk_darwin(v5);
  v7 = (v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = sub_2F8D0(v12, v13);
  v10 = sub_C99D0(*v7, *v9, v4);
  sub_D13C(v12);
  sub_D13C(v15);
  return v10;
}

uint64_t sub_C9E5C()
{
  sub_D13C((v0 + 24));
  sub_D13C((v0 + 64));
  sub_CA2E0();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_C9F48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_C9FF8()
{
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0u;
  *(v0 + 216) = 0;
  *(v0 + 56) = 5;
  return result;
}

uint64_t sub_CA040(uint64_t a1)
{

  return swift_once();
}

double sub_CA0FC@<D0>(uint64_t a1@<X8>)
{
  *(v2 - 296) = v1;
  *(v2 - 320) = a1;
  return 0.0;
}

uint64_t sub_CA128(uint64_t a1)
{

  return sub_168CD4();
}

uint64_t sub_CA14C()
{
  sub_D084((v0 + 208), *(v0 + 232));

  return sub_168B24();
}

uint64_t sub_CA1B0(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_CA1D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[19] = v3;
  v2[20] = a2;
  v2[16] = a1;
  v5 = v2[29];

  return sub_2F8D0((v2 + 26), v5);
}

uint64_t sub_CA1FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[19] = v3;
  v2[20] = a2;
  v2[16] = a1;
  v6 = *(v4 - 96);

  return sub_2F8D0(v4 - 120, v6);
}

uint64_t sub_CA220(uint64_t a1)
{

  return swift_allocObject();
}

void sub_CA248()
{

  sub_1668CC();
}

uint64_t sub_CA270()
{
  v2 = *(v0 - 96);

  return sub_2F8D0(v0 - 120, v2);
}

uint64_t sub_CA28C(uint64_t a1)
{

  return sub_168924();
}

uint64_t sub_CA2A8()
{

  return sub_2F8D0(v0 + 48, v1);
}

uint64_t sub_CA2C4(uint64_t a1)
{
  v1[9] = a1;
  v1[10] = v3;
  v1[6] = v2;

  return type metadata accessor for CarCommandsActionFlow();
}

uint64_t sub_CA30C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v4 - 136) = result;
  *(v4 - 160) = v3;
  *(v4 - 96) = a2;
  *(v4 - 88) = v2;
  return result;
}

uint64_t sub_CA31C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3[30] = result;
  v3[27] = v4;
  v3[35] = a2;
  v3[36] = v2;
  return result;
}

uint64_t sub_CA32C(uint64_t a1)
{

  return sub_168CD4();
}

uint64_t sub_CA38C(uint64_t a1)
{

  return sub_168924();
}

uint64_t sub_CA3A8(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_CA3C4()
{
  sub_D13C((v0 - 128));
  sub_D13C((v0 - 208));

  return sub_D13C((v0 - 288));
}

void *sub_CA3FC(uint64_t a1)
{

  return sub_1693F4();
}

uint64_t sub_CA41C()
{
  v2 = *(v0 - 264);

  return sub_2F8D0(v0 - 288, v2);
}

uint64_t sub_CA454()
{

  return sub_C1248((v0 + 208), (v1 - 120));
}

uint64_t sub_CA470(unint64_t *a1)
{

  return sub_C98CC(a1, v1, v2);
}

uint64_t sub_CA4A0()
{

  return sub_2F8D0(v1 - 168, v0);
}

uint64_t sub_CA4BC(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_CA4D8(uint64_t a1)
{

  return sub_168924();
}

uint64_t sub_CA4F4@<X0>(uint64_t a1@<X8>)
{
  *(v1 + a1) = 0;

  return sub_10824(v2 - 128, v2 - 248);
}

uint64_t sub_CA510()
{
}

uint64_t sub_CA528()
{
}

uint64_t sub_CA540(uint64_t a1)
{
  *(v1 - 56) = a1;
}

uint64_t sub_CA558()
{

  return sub_168CC4();
}

uint64_t sub_CA5A0(uint64_t a1)
{
  *(v3 - 256) = a1;
  *(v3 - 248) = v2;
  *(v3 - 280) = v1;

  return type metadata accessor for CarCommandsActionFlow();
}

uint64_t sub_CA5C0()
{

  return sub_168CC4();
}

id sub_CA5E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[4] = a1;
  v2[5] = a2;
  v2[1] = v3;

  return v3;
}

id sub_CA600@<X0>(char a1@<W8>)
{
  *(v2 - 120) = a1;
  *(v2 - 168) = a1;

  return v1;
}

uint64_t sub_CA618()
{

  return sub_2F8D0(v1 - 280, v0);
}

uint64_t sub_CA630()
{

  return sub_D13C((v0 + 208));
}

id sub_CA648()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    v2 = *(v0 + 96);
  }

  else
  {
    if (qword_1E5908 != -1)
    {
      sub_48134(&qword_1E5908);
    }

    v4 = sub_12685C(v3);
    v5 = *(v0 + 96);
    *(v0 + 96) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

void *sub_CA6CC(uint64_t a1)
{
  v3 = sub_16A164();
  __chkstk_darwin(v3 - 8);
  sub_A138();
  v4 = type metadata accessor for CarCommandsCATPatternsExecutor(0);
  sub_16A154();
  v5 = sub_16A094();
  v1[5] = v4;
  v1[6] = &off_1DA7E8;
  v1[2] = v5;
  v6 = sub_168E34();
  sub_483C8(v6);
  v7 = sub_168E24();
  v1[10] = v6;
  v1[11] = &protocol witness table for ResponseFactory;
  v1[7] = v7;
  v1[12] = 0;
  v1[13] = a1;
  return v1;
}

uint64_t sub_CA968()
{
  sub_5758(&qword_1EA2B0, &qword_16DFB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_16E450;
  v1 = sub_168A44();
  sub_483C8(v1);
  *(v0 + 32) = sub_168A34();
  swift_allocObject();
  *(v0 + 40) = sub_168A34();
  return v0;
}

uint64_t sub_CAA34()
{
  sub_D2DC();
  v0[2] = v1;
  v2 = sub_1693E4();
  v0[3] = v2;
  v0[4] = *(v2 - 8);
  v0[5] = swift_task_alloc();

  return _swift_task_switch(sub_CAAF0);
}

uint64_t sub_CAAF0()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_CB8E0();
  v5 = *(v2 + 16);
  v5(v1, v4, v3);
  v6 = sub_FDFF8(v1);
  if (v6)
  {
    v7 = v6;

    v8 = v0[1];

    return v8(v7);
  }

  else
  {
    v11 = v0[2];
    v10 = v0[3];
    type metadata accessor for CarCommandsError(0);
    sub_CB924(&qword_1E92F0, 255, type metadata accessor for CarCommandsError, &unk_17A85C);
    swift_allocError();
    v5(v12, v11, v10);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_CAC9C()
{
  v1 = sub_16A164();
  __chkstk_darwin(v1 - 8);
  sub_A138();
  v33 = sub_5758(&qword_1EAE88, &qword_1751D0);
  sub_37404();
  v32 = v2;
  v4 = __chkstk_darwin(v3);
  v31 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v30 - v6;
  if (qword_1E5908 != -1)
  {
    sub_48134(&qword_1E5908);
  }

  v8 = qword_1F0C70;
  v38[3] = type metadata accessor for WalletService();
  v38[4] = &off_1D7C28;
  v38[0] = v8;
  type metadata accessor for CarCommandsCATs(0);

  sub_16A154();
  sub_16A094();
  sub_164564();

  sub_D13C(v38);

  sub_1693F4();
  v9 = type metadata accessor for FeatureFlagHelper();
  v10 = swift_allocObject();
  v11 = sub_168E34();
  sub_483C8(v11);

  sub_168E24();
  v37[3] = v9;
  v37[4] = &off_1D9AF0;
  v37[0] = v10;
  v12 = type metadata accessor for SetLockStatusHandleIntentFlowStrategy(0);
  v13 = sub_483C8(v12);
  sub_2F8D0(v37, v9);
  sub_37404();
  __chkstk_darwin(v14);
  sub_A138();
  v16 = sub_CB96C(v15);
  v17(v16);
  v18 = *v0;
  v36[3] = v9;
  v36[4] = &off_1D9AF0;
  v36[0] = v18;
  *(v13 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin37SetLockStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler) = 0;
  sub_10824(v38, v35);
  sub_10824(v36, v34);
  sub_2F8D0(v34, v34[3]);
  sub_37404();
  __chkstk_darwin(v19);
  sub_A138();
  v21 = sub_CB96C(v20);
  v22(v21);

  sub_1668CC();
  v24 = v23;
  sub_D13C(v38);
  sub_D13C(v36);
  sub_D13C(v34);
  sub_D13C(v37);

  v38[0] = v24;
  sub_CB924(&qword_1EAE90, 255, type metadata accessor for SetLockStatusHandleIntentFlowStrategy, &unk_1795F0);
  sub_1687E4();

  v25 = v33;
  sub_168884();
  v26 = v32;
  (*(v32 + 16))(v31, v7, v25);
  v27 = sub_5758(&qword_1EAE98, &qword_1751D8);
  sub_483C8(v27);
  v28 = sub_168914();
  (*(v26 + 8))(v7, v25);
  return v28;
}

uint64_t sub_CB16C(uint64_t a1, uint64_t a2)
{
  result = sub_CB924(&qword_1EAE68, a2, type metadata accessor for SetLockStatusRCHFlowStrategy, &unk_175060);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_CB1DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_7971C;

  return sub_CAA34();
}

uint64_t sub_CB288()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_6F850;

  return sub_3FC18();
}

uint64_t sub_CB360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for SetLockStatusRCHFlowStrategy();
  *v10 = v5;
  v10[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)(a1, a2, a3, v11, a5);
}

uint64_t sub_CB42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for SetLockStatusRCHFlowStrategy();
  *v10 = v5;
  v10[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)(a1, a2, a3, v11, a5);
}

uint64_t sub_CB4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for SetLockStatusRCHFlowStrategy();
  *v10 = v5;
  v10[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)(a1, a2, a3, v11, a5);
}

uint64_t sub_CB5C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_6F428;

  return sub_43114();
}

uint64_t sub_CB69C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_79DCC;

  return sub_45BDC();
}

uint64_t sub_CB830(uint64_t a1, uint64_t a2)
{
  result = sub_CB924(&qword_1EAE70, a2, type metadata accessor for SetLockStatusRCHFlowStrategy, &unk_175108);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_CB888(uint64_t a1, uint64_t a2)
{
  result = sub_CB924(&qword_1EAE80, a2, type metadata accessor for SetLockStatusRCHFlowStrategy, &unk_175150);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_CB8E0()
{
  result = qword_1E6A50;
  if (!qword_1E6A50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1E6A50);
  }

  return result;
}

uint64_t sub_CB924(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_CB984()
{
  v1 = [v0 mediaSourceSemanticType];
  if (((v1 - 1) & 0xF8) != 0)
  {
    return 5;
  }

  else
  {
    return (0x405030505020001uLL >> (8 * (v1 - 1)));
  }
}

uint64_t sub_CB9F0()
{
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  if (qword_1E58F8 != -1)
  {
    swift_once();
  }

  v0 = qword_1F0BE8;
  v16 = type metadata accessor for CarKeyPassManager();
  v17 = &off_1D6C40;
  v15[0] = v0;
  v1 = type metadata accessor for WalletPassLibrary();
  v2 = swift_allocObject();
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  *(v2 + 16) = 0u;
  swift_beginAccess();
  v3 = v0;
  sub_CD04C(v15, v2 + 16);
  swift_endAccess();
  v16 = v1;
  v17 = &off_1D9410;
  v15[0] = v2;
  type metadata accessor for WalletService();
  v4 = swift_allocObject();
  sub_2F8D0(v15, v1);
  sub_37404();
  __chkstk_darwin(v5);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = *v7;
  v13 = v1;
  v14 = &off_1D9410;
  *&v12 = v9;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0;
  *(v4 + 16) = 0u;
  swift_beginAccess();

  sub_CD04C(v18, v4 + 16);
  swift_endAccess();
  sub_D124(&v12, v4 + 56);
  sub_D13C(v15);

  qword_1F0C70 = v4;
  return result;
}

void *sub_CBC08(char *a1)
{
  v2 = v1;
  v4 = 0xD000000000000016;
  v5 = "carKeyPassManager";
  v6 = " supports useCase ";
  *&v63 = 0;
  *(&v63 + 1) = 0xE000000000000000;
  sub_16ACF4(61);
  v66._countAndFlagsBits = 0xD00000000000002ALL;
  v66._object = 0x800000000018A640;
  sub_16A744(v66);
  *&v61 = sub_CD180(a1);
  *(&v61 + 1) = v7;
  sub_5758(&qword_1E5FA0, &qword_172DD0);
  v67._countAndFlagsBits = sub_16A694();
  sub_16A744(v67);

  v68._countAndFlagsBits = 0x506E656B6F707320;
  v68._object = 0xEF203A6573617268;
  sub_16A744(v68);
  v8 = [a1 spokenPhrase];
  v9 = sub_16A664();
  v11 = v10;

  v69._countAndFlagsBits = v9;
  v69._object = v11;
  sub_16A744(v69);

  v12 = 0;
  v13 = 0xE000000000000000;
  if (qword_1E58E8 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v14 = sub_16A584();
    v15 = sub_9DA0(v14, qword_1E65C0);
    v16 = sub_16A9A4();
    v54 = v6;
    v55 = v5;
    v53 = v15;
    sub_386D8(v16, 0x20000uLL, v4 + 112, v5 | 0x8000000000000000, 0xD000000000000016, (v6 | 0x8000000000000000), 24, v12, v13);

    v17 = sub_CD180(a1);
    if (!v18)
    {
      goto LABEL_10;
    }

    v19 = v17;
    v20 = v18;
    v21 = a1;
    v22 = [a1 spokenPhrase];
    v23 = sub_16A664();
    v25 = v24;

    if (v19 == v23 && v20 == v25)
    {

      a1 = v21;
      goto LABEL_10;
    }

    v27 = sub_16AE54();

    a1 = v21;
    if (v27)
    {

      goto LABEL_10;
    }

    sub_D084(v2 + 7, v2[10]);
    sub_F57D8(v19, v20, &v61);

    if (v62)
    {
      break;
    }

    sub_D188(&v61, &qword_1E6358, &unk_16DA90);
LABEL_10:
    v52 = a1;
    v28 = [a1 spokenPhrase];
    sub_16A664();

    v29 = sub_16A6A4();
    v13 = v30;

    v12 = *sub_D084(v2 + 7, v2[10]);
    v6 = sub_F6174();
    v4 = 0;
    v5 = *(v6 + 16);
    v2 = _swiftEmptyArrayStorage;
    a1 = (v6 + 32);
    v56 = v5;
    v57 = v13;
    while (1)
    {
      if (v5 == v4)
      {

        *&v63 = 0;
        *(&v63 + 1) = 0xE000000000000000;
        sub_16ACF4(38);

        *&v63 = 0x20646E756F46;
        *(&v63 + 1) = 0xE600000000000000;
        *&v61 = v2[2];
        v70._countAndFlagsBits = sub_16AE24();
        sub_16A744(v70);

        v71._countAndFlagsBits = 0xD00000000000001CLL;
        v71._object = 0x800000000018A670;
        sub_16A744(v71);
        v44 = [v52 description];
        v45 = sub_16A664();
        v47 = v46;

        v72._countAndFlagsBits = v45;
        v72._object = v47;
        sub_16A744(v72);

        v48 = v63;
        v49 = sub_16A9A4();
        sub_386D8(v49, 0x20000uLL, 0xD000000000000086, v55 | 0x8000000000000000, 0xD000000000000016, (v54 | 0x8000000000000000), 38, v48, *(&v48 + 1));

        return v2;
      }

      if (v4 >= *(v6 + 16))
      {
        break;
      }

      sub_10824(a1, &v63);
      v31 = sub_D084(&v63, v64);
      v32 = sub_110574(v31);
      v33 = [v32 spokenPhrase];

      sub_16A664();
      v34 = sub_16A6A4();
      v36 = v35;

      *&v61 = v34;
      *(&v61 + 1) = v36;
      *&v58 = v29;
      *(&v58 + 1) = v13;
      sub_D030();
      v12 = sub_16AB54();

      if (v12)
      {
        sub_D124(&v63, &v61);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v65 = v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1468D8(0, v2[2] + 1, 1);
          v2 = v65;
        }

        v39 = v2[2];
        v38 = v2[3];
        if (v39 >= v38 >> 1)
        {
          sub_1468D8((v38 > 1), v39 + 1, 1);
          v2 = v65;
        }

        sub_2F8D0(&v61, v62);
        sub_37404();
        __chkstk_darwin(v40);
        v42 = (&v51 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v43 + 16))(v42);
        v12 = *v42;
        v59 = type metadata accessor for WalletCarKey();
        v60 = &off_1D9928;
        *&v58 = v12;
        v2[2] = v39 + 1;
        sub_D124(&v58, &v2[5 * v39 + 4]);
        sub_D13C(&v61);
        v5 = v56;
        v13 = v57;
      }

      else
      {
        sub_D13C(&v63);
      }

      a1 += 40;
      ++v4;
    }

    __break(1u);
LABEL_27:
    sub_9ED4(&qword_1E58E8);
  }

  sub_D124(&v61, &v63);
  sub_5758(&qword_1EAFA8, &unk_178270);
  v2 = swift_allocObject();
  *(v2 + 1) = xmmword_16D9A0;
  sub_D124(&v63, (v2 + 4));
  return v2;
}

uint64_t sub_CC2C0(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 56) = a3;
  *(v4 + 16) = a1;
  return sub_D2B0();
}

uint64_t sub_CC2DC()
{
  sub_1696C();
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = objc_allocWithZone(INSpeakableString);
  swift_bridgeObjectRetain_n();
  v4 = sub_CD0BC(v2, v1, v2, v1, 0, 0);
  v5 = sub_CBC08(v4);
  *(v0 + 40) = v5;

  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_CC3D4;
  v7 = *(v0 + 56);

  return sub_CC6B0(v7, v5);
}

uint64_t sub_CC3D4()
{
  sub_1696C();
  v3 = v2;
  sub_D358();
  v4 = *v1;
  sub_D254();
  *v5 = v4;

  sub_30AEC();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_CC4E4(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 40) = a1;
  return sub_D2B0();
}

uint64_t sub_CC4FC()
{
  sub_D2DC();
  v1 = sub_CCFA8();
  *(v0 + 24) = v1;
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_CC5A0;
  v3 = *(v0 + 40);

  return sub_CC6B0(v3, v1);
}

uint64_t sub_CC5A0()
{
  sub_1696C();
  v3 = v2;
  sub_D358();
  v4 = *v1;
  sub_D254();
  *v5 = v4;

  sub_30AEC();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_CC6B0(char a1, uint64_t a2)
{
  *(v2 + 168) = a2;
  *(v2 + 225) = a1;
  return sub_D2B0();
}

uint64_t sub_CC6C8()
{
  v1 = *(v0 + 168);
  v2 = *(v1 + 16);
  *(v0 + 184) = 0;
  *(v0 + 192) = _swiftEmptyArrayStorage;
  *(v0 + 176) = v2;
  if (v2)
  {
    sub_10824(v1 + 32, v0 + 16);
    sub_2FFF0();
    v3 = swift_task_alloc();
    *(v0 + 200) = v3;
    *v3 = v0;
    sub_CD1E4(v3);

    return sub_111544();
  }

  else
  {
    v5 = *(v0 + 225);
    sub_16ACF4(38);
    *(v0 + 136) = 0;
    *(v0 + 144) = 0xE000000000000000;
    v12._object = 0x800000000018A5E0;
    v12._countAndFlagsBits = 0xD000000000000010;
    sub_16A744(v12);
    sub_5758(&qword_1E6380, &qword_16DAC0);
    v13._countAndFlagsBits = sub_16A7E4();
    sub_16A744(v13);

    v14._countAndFlagsBits = 0xD000000000000012;
    v14._object = 0x800000000018A600;
    sub_16A744(v14);
    *(v0 + 224) = v5;
    sub_16AD84();
    v6 = *(v0 + 136);
    v7 = *(v0 + 144);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v8 = sub_16A584();
    sub_9DA0(v8, qword_1E65C0);
    v9 = sub_16A9A4();
    sub_386D8(v9, 0x20000uLL, 0xD000000000000086, 0x800000000018A510, 0xD000000000000037, 0x800000000018A5A0, 62, v6, v7);

    sub_30AEC();

    return v10(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_CC90C()
{
  sub_D2DC();
  sub_D358();
  *(v2 + 160) = v1;
  *(v2 + 152) = v0;
  v3 = *v0;
  sub_D254();
  *v4 = v3;

  return _swift_task_switch(sub_CCA00);
}

uint64_t sub_CCA00()
{
  sub_D2DC();
  sub_2FFF0();
  v1 = swift_task_alloc();
  *(v0 + 208) = v1;
  *v1 = v0;
  v1[1] = sub_CCA94;

  return sub_110D28();
}

uint64_t sub_CCA94()
{
  sub_1696C();
  v3 = v2;
  sub_D358();
  v5 = v4;
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v5 + 216) = v0;

  if (v0)
  {

    v8 = sub_CCF48;
  }

  else
  {
    v9 = *(v5 + 160);
    *(v5 + 226) = v3 & 1;
    *(v5 + 227) = v9;
    v8 = sub_CCBC0;
  }

  return _swift_task_switch(v8);
}

uint64_t sub_CCBC0()
{
  v1 = *(v0 + 192);
  if (*(v0 + 226) == 1 && (*(v0 + 227) & 1) != 0)
  {
    sub_10824(v0 + 16, v0 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v1 = *(v0 + 192);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10890C();
      v1 = v20;
    }

    v3 = *(v1 + 16);
    if (v3 >= *(v1 + 24) >> 1)
    {
      sub_10890C();
      v1 = v21;
    }

    v4 = *(v0 + 80);
    v5 = sub_2F8D0(v0 + 56, v4);
    sub_37404();
    v7 = v6;
    v8 = swift_task_alloc();
    (*(v7 + 16))(v8, v5, v4);
    v9 = *v8;
    *(v0 + 120) = type metadata accessor for WalletCarKey();
    *(v0 + 128) = &off_1D9928;
    *(v0 + 96) = v9;
    *(v1 + 16) = v3 + 1;
    sub_D124((v0 + 96), v1 + 40 * v3 + 32);
    sub_D13C((v0 + 56));
  }

  sub_D13C((v0 + 16));
  v10 = *(v0 + 176);
  v11 = *(v0 + 184) + 1;
  *(v0 + 184) = v11;
  *(v0 + 192) = v1;
  if (v11 == v10)
  {
    v12 = *(v0 + 225);
    sub_16ACF4(38);
    *(v0 + 136) = 0;
    *(v0 + 144) = 0xE000000000000000;
    v23._object = 0x800000000018A5E0;
    v23._countAndFlagsBits = 0xD000000000000010;
    sub_16A744(v23);
    sub_5758(&qword_1E6380, &qword_16DAC0);
    v24._countAndFlagsBits = sub_16A7E4();
    sub_16A744(v24);

    v25._countAndFlagsBits = 0xD000000000000012;
    v25._object = 0x800000000018A600;
    sub_16A744(v25);
    *(v0 + 224) = v12;
    sub_16AD84();
    v13 = *(v0 + 136);
    v14 = *(v0 + 144);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v15 = sub_16A584();
    sub_9DA0(v15, qword_1E65C0);
    v16 = sub_16A9A4();
    sub_386D8(v16, 0x20000uLL, 0xD000000000000086, 0x800000000018A510, 0xD000000000000037, 0x800000000018A5A0, 62, v13, v14);

    sub_30AEC();

    return v17(v1);
  }

  else
  {
    sub_10824(*(v0 + 168) + 40 * v11 + 32, v0 + 16);
    sub_2FFF0();
    v19 = swift_task_alloc();
    *(v0 + 200) = v19;
    *v19 = v0;
    sub_CD1E4(v19);

    return sub_111544();
  }
}

uint64_t sub_CCF48()
{
  sub_D2DC();
  sub_D13C((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_CCFD8()
{
  sub_D188(v0 + 16, &qword_1EAFA0, &qword_175890);
  sub_D13C((v0 + 56));

  return _swift_deallocClassInstance(v0, 96, 7);
}

uint64_t sub_CD04C(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1EAFA0, &qword_175890);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_CD0BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_16A644();

  v9 = sub_16A644();

  if (a6)
  {
    v10 = sub_16A644();
  }

  else
  {
    v10 = 0;
  }

  v11 = [v6 initWithVocabularyIdentifier:v8 spokenPhrase:v9 pronunciationHint:v10];

  return v11;
}

uint64_t sub_CD180(void *a1)
{
  v1 = [a1 vocabularyIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_16A664();

  return v3;
}

uint64_t sub_CD208(uint64_t a1)
{
  *(v2 + 568) = v1;
  *(v2 + 560) = a1;
  return sub_D2B0();
}

uint64_t sub_CD220()
{
  sub_D2DC();
  v1 = v0[71];
  sub_10824(v0[70], (v0 + 37));
  sub_5758(&qword_1E5F90, &qword_170270);
  sub_5758(&unk_1E9020, &qword_172608);
  swift_dynamicCast();
  sub_D084((v1 + 24), *(v1 + 48));
  swift_task_alloc();
  sub_D3E0();
  v0[72] = v2;
  *v2 = v3;
  v2[1] = sub_CD314;

  return sub_13AB58((v0 + 42), 0);
}

uint64_t sub_CD314()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 584) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_CD410()
{
  v1 = v0[45];
  v2 = v0[46];
  sub_D084(v0 + 42, v1);
  v6 = (*(v2 + 56) + **(v2 + 56));
  swift_task_alloc();
  sub_D3E0();
  v0[74] = v3;
  *v3 = v4;
  v3[1] = sub_CD538;

  return v6(v0 + 52, v1, v2);
}

uint64_t sub_CD538()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 600) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_CD634()
{
  sub_D2DC();
  sub_CECF4();

  return v0();
}

uint64_t sub_CD688()
{
  if (*(v0 + 440))
  {
    sub_D124((v0 + 416), v0 + 376);
    v1 = *(v0 + 360);
    v2 = *(v0 + 368);
    sub_D084((v0 + 336), v1);
    v11 = (*(v2 + 88) + **(v2 + 88));
    swift_task_alloc();
    sub_D3E0();
    *(v0 + 608) = v3;
    *v3 = v4;
    v3[1] = sub_CD860;

    return v11(v0 + 496, v1, v2);
  }

  else
  {
    sub_CEBE8(v0 + 416, &qword_1E6060);
    type metadata accessor for CarCommandsError(0);
    v6 = sub_11D28();
    v7 = sub_5A144(v6);
    sub_CED14(v7, v8);
    *v9 = 0xD000000000000040;
    v9[1] = 0x800000000018A800;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_D13C((v0 + 336));
    sub_CECF4();

    return v10();
  }
}

uint64_t sub_CD860()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 616) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_CD95C()
{
  if (!*(v0 + 520))
  {
    sub_D13C((v0 + 376));
    sub_CEBE8(v0 + 496, &qword_1EA118);
    type metadata accessor for CarCommandsError(0);
    v8 = sub_11D28();
    v9 = sub_5A144(v8);
    sub_CED14(v9, v10);
    *v11 = 0xD000000000000040;
    v11[1] = 0x800000000018A800;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_D13C((v0 + 336));
    sub_CECF4();
    sub_CED20();

    __asm { BRAA            X1, X16 }
  }

  v1 = *(v0 + 568);
  sub_D124((v0 + 496), v0 + 456);
  sub_10824(v0 + 376, v0 + 16);
  sub_10824(v0 + 456, v0 + 56);
  swift_beginAccess();
  sub_B176C(v0 + 16, v1 + 64);
  swift_endAccess();
  v2 = sub_D084((v0 + 256), *(v0 + 280));
  if (sub_CEC44(*v2))
  {
    swift_task_alloc();
    sub_D3E0();
    *(v0 + 640) = v3;
    *v3 = v4;
    v3[1] = sub_CDE2C;
    sub_CED20();

    return sub_CE12C(v5);
  }

  else
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v14 = sub_16A584();
    sub_9DA0(v14, qword_1E65C0);
    v15 = sub_16A9A4();
    sub_386D8(v15, 0x800uLL, 0xD00000000000008ELL, 0x800000000018A730, 0xD000000000000012, 0x8000000000184BB0, 35, 0xD000000000000025, 0x800000000018A850);
    sub_B17DC(v1 + 64, v0 + 96);
    if (*(v0 + 120) == 1)
    {
      sub_CEBE8(v0 + 96, &qword_1EA120);
      [objc_allocWithZone(DialogExecutionResult) init];
      sub_CECB4();
      sub_CED20();

      __asm { BRAA            X2, X16 }
    }

    sub_B184C(v0 + 96, v0 + 176);
    sub_CEBE8(v0 + 96, &qword_1EA120);
    v18 = swift_task_alloc();
    *(v0 + 624) = v18;
    *v18 = v0;
    v18[1] = sub_CDCB8;
    sub_CED20();

    return sub_10CBE8();
  }
}

uint64_t sub_CDCB8()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 632) = v0;

  sub_B18A8(v3 + 176);
  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_CDDC0()
{
  sub_D2DC();
  [objc_allocWithZone(DialogExecutionResult) init];
  v0 = sub_CECB4();

  return v1(v0);
}

uint64_t sub_CDE2C(uint64_t a1)
{
  sub_D358();
  v5 = v4;
  sub_D2A4();
  *v6 = v5;
  v7 = *v2;
  sub_D254();
  *v8 = v7;
  *(v5 + 648) = v1;

  if (!v1)
  {
    *(v5 + 656) = a1;
  }

  sub_10B4C();

  return _swift_task_switch(v9);
}

uint64_t sub_CDF40()
{
  sub_D2DC();
  v0 = sub_CECB4();

  return v1(v0);
}

uint64_t sub_CDF94()
{
  sub_D2DC();
  sub_D13C((v0 + 336));
  sub_CECF4();

  return v1();
}

uint64_t sub_CDFF0()
{
  sub_D2DC();
  sub_D13C((v0 + 376));
  sub_D13C((v0 + 336));
  sub_CECF4();

  return v1();
}

uint64_t sub_CE054()
{
  sub_D2DC();
  sub_D13C(v0 + 57);
  sub_D13C(v0 + 47);
  sub_D13C(v0 + 42);
  sub_CECF4();

  return v1();
}

uint64_t sub_CE0C0()
{
  sub_D2DC();
  sub_D13C(v0 + 57);
  sub_D13C(v0 + 47);
  sub_D13C(v0 + 42);
  sub_CECF4();

  return v1();
}

uint64_t sub_CE12C(uint64_t a1)
{
  *(v2 + 640) = v1;
  *(v2 + 632) = a1;
  return sub_D2B0();
}

uint64_t sub_CE144()
{
  v1 = *(v0 + 632);
  v2 = sub_D084(v1, v1[3]);
  if (!sub_8E748(v2) || (v3 = sub_D084(*(v0 + 632), v1[3]), v4 = sub_8E748(v3), v5 = sub_5B994(v4), *(v0 + 681) = v5, v5 == 6))
  {
    type metadata accessor for CarCommandsError(0);
    v6 = sub_11D28();
    v7 = sub_5A144(v6);
    sub_CED14(v7, v8);
    *v9 = 0xD000000000000023;
    v9[1] = 0x800000000018A6D0;
    goto LABEL_4;
  }

  v12 = *(v0 + 640);
  swift_beginAccess();
  sub_B17DC(v12 + 64, v0 + 16);
  if (*(v0 + 40) == 1)
  {
    sub_CEBE8(v0 + 16, &qword_1EA120);
    v13 = *(v0 + 681);
    type metadata accessor for CarCommandsError(0);
    sub_11D28();
    swift_allocError();
    v15 = v14;
    sub_16ACF4(49);
    *(v0 + 600) = 0;
    *(v0 + 608) = 0xE000000000000000;
    v21._countAndFlagsBits = 0xD00000000000002FLL;
    v21._object = 0x800000000018A700;
    sub_16A744(v21);
    *(v0 + 680) = v13;
    sub_16AD84();
    v16 = *(v0 + 608);
    *v15 = *(v0 + 600);
    v15[1] = v16;
LABEL_4:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_CED20();

    __asm { BRAA            X1, X16 }
  }

  sub_B184C(v0 + 16, v0 + 96);
  sub_CEBE8(v0 + 16, &qword_1EA120);
  swift_task_alloc();
  sub_D3E0();
  *(v0 + 648) = v17;
  *v17 = v18;
  v17[1] = sub_CE3D0;
  sub_CED20();

  return sub_10D380();
}

uint64_t sub_CE3D0()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 656) = v0;

  sub_B18A8(v3 + 96);
  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_CE4D8()
{
  v1 = *(v0 + 392);
  if (v1)
  {
    *(v0 + 336) = *(v0 + 384);
    *(v0 + 344) = v1;
    v2 = *(v0 + 416);
    *(v0 + 352) = *(v0 + 400);
    *(v0 + 368) = v2;
    sub_16ACF4(28);
    *(v0 + 616) = 0;
    *(v0 + 624) = 0xE000000000000000;
    v20._object = 0x800000000018A7E0;
    v20._countAndFlagsBits = 0xD00000000000001ALL;
    sub_16A744(v20);
    v3 = *(v0 + 352);
    *(v0 + 432) = *(v0 + 336);
    *(v0 + 448) = v3;
    *(v0 + 464) = *(v0 + 368);
    sub_16AD84();
    v4 = *(v0 + 616);
    v5 = *(v0 + 624);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v6 = *(v0 + 640);
    v7 = sub_16A584();
    sub_9DA0(v7, qword_1E65C0);
    v8 = sub_16A9A4();
    sub_386D8(v8, 0x800uLL, 0xD00000000000008ELL, 0x800000000018A730, 0xD00000000000001FLL, 0x800000000018A7C0, 54, v4, v5);

    sub_B17DC(v6 + 64, v0 + 176);
    if (*(v0 + 200) == 1)
    {
      *(v0 + 552) = *(v0 + 336);
      sub_CEB94(v0 + 552);
      *(v0 + 536) = *(v0 + 368);
      sub_CEBE8(v0 + 536, &qword_1E5FA0);
      sub_CEBE8(v0 + 176, &qword_1EA120);
      v9 = [objc_allocWithZone(DialogExecutionResult) init];
      v10 = *(v0 + 8);

      return v10(v9);
    }

    else
    {
      sub_B184C(v0 + 176, v0 + 256);
      sub_CEBE8(v0 + 176, &qword_1EA120);
      swift_task_alloc();
      sub_D3E0();
      *(v0 + 664) = v17;
      *v17 = v18;
      v17[1] = sub_CE880;

      return sub_10D8F8(v0 + 336);
    }
  }

  else
  {
    v12 = *(v0 + 681);
    type metadata accessor for CarCommandsError(0);
    sub_11D28();
    swift_allocError();
    v14 = v13;
    sub_16ACF4(49);
    *(v0 + 600) = 0;
    *(v0 + 608) = 0xE000000000000000;
    v21._countAndFlagsBits = 0xD00000000000002FLL;
    v21._object = 0x800000000018A700;
    sub_16A744(v21);
    *(v0 + 680) = v12;
    sub_16AD84();
    v15 = *(v0 + 608);
    *v14 = *(v0 + 600);
    v14[1] = v15;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_CE880()
{
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 672) = v0;

  sub_B18A8(v3 + 256);
  if (v0)
  {
    *(v3 + 520) = *(v3 + 336);
    sub_CEB94(v3 + 520);
    *(v3 + 504) = *(v3 + 368);
    sub_CEBE8(v3 + 504, &qword_1E5FA0);
  }

  else
  {
    *(v3 + 584) = *(v3 + 336);
    sub_CEB94(v3 + 584);
    *(v3 + 568) = *(v3 + 368);
    sub_CEBE8(v3 + 568, &qword_1E5FA0);
  }

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_CEA08()
{
  sub_D2DC();
  v1 = [objc_allocWithZone(DialogExecutionResult) init];
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_CEA88()
{
  sub_D13C((v0 + 24));
  sub_CEBE8(v0 + 64, &qword_1EA120);

  return _swift_deallocClassInstance(v0, 144, 7);
}

uint64_t sub_CEAFC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_3E08C;

  return sub_CD208(a1);
}

uint64_t sub_CEBE8(uint64_t a1, uint64_t a2)
{
  v3 = sub_CED14(a1, a2);
  v5 = sub_5758(v3, v4);
  (*(*(v5 - 8) + 8))(v2, v5);
  return v2;
}

BOOL sub_CEC44(uint64_t a1)
{
  v6 = type metadata accessor for CarCommandsNLv4Intent(0);
  v7 = &off_1D6550;
  v5[0] = a1;
  sub_D084(v5, v6);

  v3 = sub_8E748(v2) != 0;
  sub_D13C(v5);
  return v3;
}

uint64_t sub_CECB4()
{
  sub_D13C(v1 + 57);
  sub_D13C(v1 + 47);
  sub_D13C(v1 + 42);
  sub_D13C(v1 + 32);
  return v0;
}

uint64_t sub_CED34@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 itemToConfirm];
  sub_16AB64();
  swift_unknownObjectRelease();
  if (swift_dynamicCast())
  {
    sub_16A0B4();
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_16A0C4();
  return sub_5370(a1, v4, 1, v5);
}

uint64_t SEGetCarLockStatusIntentHandler.resolveCarName(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_CEE4C()
{
  sub_1696C();
  *(v0 + 32) = [*(v0 + 16) carName];
  v1 = sub_37484();
  *(v0 + 40) = v1;
  *v1 = v0;
  v2 = sub_615AC(v1);

  return v4(v2, 0);
}

uint64_t sub_CEF1C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_60398;

  return SEGetCarLockStatusIntentHandler.resolveCarName(for:)(v6);
}

uint64_t SEGetCarLockStatusIntentHandler.confirm(intent:)(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return sub_D2B0();
}

uint64_t sub_CEFF4()
{
  sub_1696C();
  v1 = [*(v0 + 40) carName];
  *(v0 + 56) = v1;
  v2 = sub_37484();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_CF0B4;

  return v4(v1, 2, 1);
}

uint64_t sub_CF0B4()
{
  sub_D2DC();
  sub_D358();
  *(v2 + 32) = v1;
  *(v2 + 24) = v3;
  *(v2 + 16) = v0;
  v4 = *(v2 + 56);
  v5 = *v0;
  sub_D254();
  *v6 = v5;
  *(v8 + 72) = v7;

  return _swift_task_switch(sub_CF1CC);
}

uint64_t sub_CF1CC()
{
  sub_D2DC();
  v1 = *(v0 + 72);
  v2 = objc_allocWithZone(INGetCarLockStatusIntentResponse);
  if (v1 > 5)
  {
    v3 = 4;
  }

  else
  {
    v3 = qword_175398[v1];
  }

  v4 = *(v0 + 32);
  v5 = [v2 initWithCode:v3 userActivity:v4];

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_CF28C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_612B8;

  return SEGetCarLockStatusIntentHandler.confirm(intent:)(v6);
}

uint64_t SEGetCarLockStatusIntentHandler.handle(intent:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_CF364()
{
  sub_1696C();
  *(v0 + 32) = [*(v0 + 16) carName];
  v1 = sub_37484();
  *(v0 + 40) = v1;
  *v1 = v0;
  v2 = sub_615AC(v1);

  return v4(v2, 2);
}

uint64_t sub_CF414()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 32);
  v3 = *v0;
  sub_D254();
  *v4 = v3;
  *(v6 + 56) = v5;
  *(v6 + 48) = v7;

  return _swift_task_switch(sub_CF524);
}

uint64_t sub_CF524()
{
  sub_1696C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 57);
  v3 = objc_allocWithZone(INGetCarLockStatusIntentResponse);
  switch(v2)
  {
    case 0:
      v4 = 0;
      goto LABEL_6;
    case 3:
      v5 = [v3 initWithCode:3 userActivity:v1];
      sub_16AA34();
      goto LABEL_7;
    case 5:
      v4 = 5;
      goto LABEL_6;
    default:
      v4 = 4;
LABEL_6:
      v5 = [v3 initWithCode:v4 userActivity:v1];
LABEL_7:

      v6 = *(v0 + 8);

      return v6(v5);
  }
}

uint64_t sub_CF648(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_612B8;

  return SEGetCarLockStatusIntentHandler.handle(intent:)(v6);
}

id SEGetCarLockStatusIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SEGetCarLockStatusIntentHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_CF7B8()
{
  sub_1696C();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_120FC(v1);

  return v3(v2);
}

uint64_t sub_CF850()
{
  sub_1696C();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_120FC(v1);

  return v3(v2);
}

uint64_t sub_CF8E8()
{
  sub_1696C();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_120FC(v1);

  return v3(v2);
}

uint64_t sub_CF988()
{
  sub_D2DC();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[7] = v5;
  v6 = sub_1691E4();
  v1[12] = v6;
  sub_10AEC(v6);
  v1[13] = v7;
  v1[14] = sub_D3C8();
  v8 = sub_5758(&qword_1EB1E8, &qword_1753F8);
  sub_D414(v8);
  v1[15] = sub_D3C8();
  v9 = sub_16A314();
  v1[16] = v9;
  sub_10AEC(v9);
  v1[17] = v10;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v11 = sub_16A334();
  v1[20] = v11;
  sub_10AEC(v11);
  v1[21] = v12;
  v1[22] = sub_D3C8();
  v13 = sub_16A164();
  sub_D414(v13);
  v1[23] = sub_D3C8();
  v14 = sub_D388();

  return _swift_task_switch(v14);
}

uint64_t sub_CFB2C()
{
  v1 = v0[8];
  type metadata accessor for CarCommandsAppResolutionCATsSimple(0);
  sub_16A154();
  v0[24] = sub_16A0F4();
  sub_11A408(v1, 1);
  sub_132DB0();
  v3 = v2;
  v0[25] = v2;

  v4 = swift_task_alloc();
  v0[26] = v4;
  *v4 = v0;
  v4[1] = sub_CFC1C;

  return sub_FE9F8(v3);
}

uint64_t sub_CFC1C()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v4 = *v1;
  sub_D2A4();
  *v5 = v4;
  *(v7 + 216) = v6;
  *(v7 + 224) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_CFD3C()
{
  sub_D2DC();
  type metadata accessor for CarCommandsCATsSimple(0);
  sub_16A154();
  *(v0 + 232) = sub_16A0F4();
  v1 = swift_task_alloc();
  *(v0 + 240) = v1;
  *v1 = v0;
  v1[1] = sub_CFDF4;

  return sub_DFB30();
}

uint64_t sub_CFDF4()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 248) = v5;
  *(v3 + 256) = v0;

  if (!v0)
  {
  }

  sub_10B4C();

  return _swift_task_switch(v6);
}

uint64_t sub_CFF00()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 64);
  *(v0 + 280) = 0;
  sub_16A134();
  v3 = sub_11B48C();
  v9 = v3;
  v10 = 0;
  v11 = v2 & 0xC000000000000001;
  v39 = v1;
  v12 = (v1 + 32);
  v13 = _swiftEmptyArrayStorage;
  v38 = v3;
  while (v9 != v10)
  {
    if (v11)
    {
      v3 = sub_16AD04();
    }

    else
    {
      if (v10 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_20;
      }
    }

    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v3, v4, v5, v6, v7, v8);
    }

    v15 = *(v0 + 120);
    v14 = *(v0 + 128);
    sub_D1384(v15);

    if (sub_9E2C(v15, 1, v14) == 1)
    {
      v3 = sub_D188(*(v0 + 120), &qword_1EB1E8, &qword_1753F8);
    }

    else
    {
      v16 = v11;
      v17 = *(v0 + 144);
      v18 = *(v0 + 152);
      v19 = *(v0 + 128);
      v20 = *v12;
      (*v12)(v18, *(v0 + 120), v19);
      v20(v17, v18, v19);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_108760();
        v13 = v24;
      }

      v21 = *(v13 + 2);
      if (v21 >= *(v13 + 3) >> 1)
      {
        sub_108760();
        v13 = v25;
      }

      v22 = *(v0 + 144);
      v23 = *(v0 + 128);
      *(v13 + 2) = v21 + 1;
      v3 = v20(&v13[((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v21], v22, v23);
      v11 = v16;
      v9 = v38;
    }

    ++v10;
  }

  v26 = *(v0 + 216);
  v27 = *(v0 + 168);
  v28 = *(v0 + 176);
  v29 = *(v0 + 160);
  v30 = *(v0 + 80);
  v31 = *(v0 + 72);
  sub_16A324();
  v40 = v30[4];
  sub_D084(v30, v30[3]);
  v32 = sub_16A284();
  *(v0 + 40) = v32;
  *(v0 + 48) = sub_4FB1C();
  v33 = sub_10888((v0 + 16));
  (*(v27 + 16))(v33, v28, v29);
  (*(*(v32 - 8) + 104))(v33, enum case for CarCommandsSnippetsPluginModel.appDisambiguation(_:), v32);
  sub_5758(&qword_1EA2B0, &qword_16DFB0);
  v34 = swift_allocObject();
  *(v0 + 264) = v34;
  *(v34 + 16) = xmmword_16D440;
  *(v34 + 32) = v26;
  v35 = v26;
  sub_D12C8(0xD000000000000032, 0x800000000018AA20, v31);
  v36 = swift_task_alloc();
  *(v0 + 272) = v36;
  *v36 = v0;
  v36[1] = sub_D02B0;
  v3 = sub_D1AD8();
  v8 = v40;

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_D02B0()
{
  sub_D3A4();
  sub_D358();
  v2 = v1;
  sub_D2A4();
  *v3 = v2;
  v5 = v4[14];
  v6 = v4[13];
  v7 = v4[12];
  v8 = *v0;
  sub_D2A4();
  *v9 = v8;

  (*(v6 + 8))(v5, v7);
  sub_D13C((v2 + 16));
  v10 = sub_D388();

  return _swift_task_switch(v10);
}

uint64_t sub_D041C()
{
  v1 = v0[27];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];

  (*(v3 + 8))(v2, v4);

  sub_D37C();

  return v5();
}

uint64_t sub_D050C()
{

  sub_D37C();

  return v0();
}

uint64_t sub_D05C0()
{

  sub_D37C();

  return v1();
}

uint64_t sub_D0688()
{
  sub_D2DC();
  v1[12] = v2;
  v1[13] = v0;
  v1[10] = v3;
  v1[11] = v4;
  v1[8] = v5;
  v1[9] = v6;
  v1[7] = v7;
  v8 = sub_1691E4();
  v1[14] = v8;
  sub_10AEC(v8);
  v1[15] = v9;
  v1[16] = sub_D3C8();
  v10 = sub_16A314();
  v1[17] = v10;
  sub_10AEC(v10);
  v1[18] = v11;
  v1[19] = sub_D3C8();
  v12 = sub_16A334();
  v1[20] = v12;
  sub_10AEC(v12);
  v1[21] = v13;
  v1[22] = sub_D3C8();
  v14 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v14);
  v1[23] = sub_D3C8();
  v15 = sub_16A164();
  sub_D414(v15);
  v1[24] = sub_D3C8();
  v16 = sub_D388();

  return _swift_task_switch(v16);
}

uint64_t sub_D081C()
{
  sub_D3A4();
  v1 = v0[23];
  v2 = v0[8];
  v0[25] = type metadata accessor for CarCommandsCATsSimple(0);
  sub_16A154();
  v0[26] = sub_16A0F4();
  sub_11A928(v2, 0);
  sub_16A6E4();
  v3 = sub_16A0C4();
  sub_5370(v1, 0, 1, v3);
  sub_132DB0();
  v0[27] = v4;

  v5 = swift_task_alloc();
  v0[28] = v5;
  *v5 = v0;
  v5[1] = sub_D0950;

  return sub_E05FC();
}

uint64_t sub_D0950()
{
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v5 = *(v4 + 184);
  v6 = *v1;
  sub_D2A4();
  *v7 = v6;
  *(v9 + 232) = v8;
  *(v9 + 240) = v0;

  sub_D188(v5, &qword_1E6300, &qword_16ECE0);

  sub_10B4C();

  return _swift_task_switch(v10);
}

uint64_t sub_D0AA8()
{
  sub_D2DC();
  sub_16A154();
  *(v0 + 248) = sub_16A0F4();
  v1 = swift_task_alloc();
  *(v0 + 256) = v1;
  *v1 = v0;
  v1[1] = sub_D0B50;

  return sub_DFB30();
}

uint64_t sub_D0B50()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 264) = v5;
  *(v3 + 272) = v0;

  if (!v0)
  {
  }

  sub_10B4C();

  return _swift_task_switch(v6);
}

uint64_t sub_D0C5C()
{
  v1 = *(v0 + 64);
  *(v0 + 296) = 1;
  sub_16A134();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 144);
    v4 = *(v0 + 64);
    sub_146A10(0, v2, 0);
    v5 = v4 + 40;
    do
    {
      swift_bridgeObjectRetain_n();
      sub_16A304();
      v7 = _swiftEmptyArrayStorage[2];
      v6 = _swiftEmptyArrayStorage[3];
      if (v7 >= v6 >> 1)
      {
        sub_146A10(v6 > 1, v7 + 1, 1);
      }

      v8 = *(v0 + 152);
      v9 = *(v0 + 136);
      _swiftEmptyArrayStorage[2] = v7 + 1;
      (*(v3 + 32))(_swiftEmptyArrayStorage + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v7, v8, v9);
      v5 += 16;
      --v2;
    }

    while (v2);
  }

  v10 = *(v0 + 232);
  v11 = *(v0 + 168);
  v12 = *(v0 + 176);
  v13 = *(v0 + 160);
  v14 = *(v0 + 96);
  v15 = *(v0 + 88);
  sub_16A324();
  v27 = v14[4];
  sub_D084(v14, v14[3]);
  v16 = sub_16A284();
  *(v0 + 40) = v16;
  *(v0 + 48) = sub_4FB1C();
  v17 = sub_10888((v0 + 16));
  (*(v11 + 16))(v17, v12, v13);
  (*(*(v16 - 8) + 104))(v17, enum case for CarCommandsSnippetsPluginModel.carNameDisambiguation(_:), v16);
  sub_5758(&qword_1EA2B0, &qword_16DFB0);
  v18 = swift_allocObject();
  *(v0 + 280) = v18;
  *(v18 + 16) = xmmword_16D440;
  *(v18 + 32) = v10;
  v19 = v10;
  sub_D12C8(0xD000000000000027, 0x800000000018ABC0, v15);
  v20 = swift_task_alloc();
  *(v0 + 288) = v20;
  *v20 = v0;
  v20[1] = sub_D0F3C;
  v21 = sub_D1AD8();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v21, v22, v23, v24, v25, v27);
}

uint64_t sub_D0F3C()
{
  sub_D3A4();
  sub_D358();
  v2 = v1;
  sub_D2A4();
  *v3 = v2;
  v5 = v4[16];
  v6 = v4[15];
  v7 = v4[14];
  v8 = *v0;
  sub_D2A4();
  *v9 = v8;

  (*(v6 + 8))(v5, v7);
  sub_D13C((v2 + 16));
  v10 = sub_D388();

  return _swift_task_switch(v10);
}

uint64_t sub_D10A8()
{
  v1 = v0[29];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];

  (*(v3 + 8))(v2, v4);

  sub_D37C();

  return v5();
}

uint64_t sub_D118C()
{
  sub_D3A4();
  sub_D1B0C(*(v0 + 208));

  sub_D37C();

  return v1();
}

uint64_t sub_D1220()
{
  sub_D3A4();

  sub_D1B0C(*(v0 + 248));

  sub_D37C();

  return v1();
}

uint64_t sub_D12C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_168B74();
  __chkstk_darwin(v3 - 8);
  sub_168B54();
  return sub_169164();
}

uint64_t sub_D1384@<X0>(uint64_t a2@<X8>)
{
  v26 = a2;
  v2 = sub_168454();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_16A1B4();
  if (v6)
  {
    sub_169074();
    swift_allocObject();

    sub_169064();
    sub_168444();
    sub_169054();
    v8 = v7;

    (*(v3 + 8))(v5, v2);
    if (v8)
    {

      v9 = v26;
      sub_16A2F4();
      v10 = sub_16A314();
      v11 = v9;
      v12 = 0;
    }

    else
    {

      object = 0xE000000000000000;
      v24 = 0;
      v25 = 0xE000000000000000;
      sub_16ACF4(49);

      v24 = 0xD00000000000002FLL;
      v25 = 0x800000000018AB90;
      v18._countAndFlagsBits = sub_16A1B4();
      if (v18._object)
      {
        object = v18._object;
      }

      else
      {
        v18._countAndFlagsBits = 0;
      }

      v18._object = object;
      sub_16A744(v18);

      v19 = v24;
      v20 = v25;
      if (qword_1E58E8 != -1)
      {
        swift_once();
      }

      v21 = sub_16A584();
      sub_9DA0(v21, qword_1E65C0);
      v22 = sub_16A9A4();
      sub_386D8(v22, 4uLL, 0xD000000000000095, 0x800000000018AA60, 0xD00000000000004BLL, 0x800000000018AB00, 75, v19, v20);

      v10 = sub_16A314();
      v11 = v26;
      v12 = 1;
    }

    return sub_5370(v11, v12, 1, v10);
  }

  else
  {
    if (qword_1E58E8 != -1)
    {
      swift_once();
    }

    v13 = sub_16A584();
    sub_9DA0(v13, qword_1E65C0);
    v14 = sub_16A9A4();
    sub_386D8(v14, 4uLL, 0xD000000000000095, 0x800000000018AA60, 0xD00000000000004BLL, 0x800000000018AB00, 71, 0xD000000000000034, 0x800000000018AB50);
    v15 = sub_16A314();
    return sub_5370(v26, 1, 1, v15);
  }
}

uint64_t sub_D1708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_168BC4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_5758(&qword_1E5F78, &unk_16D400);
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - v10;

  sub_169194();

  sub_169184();
  sub_1691D4();
  v12 = sub_168E14();
  (*(*(v12 - 8) + 16))(v11, a4, v12);
  sub_5370(v11, 0, 1, v12);
  sub_1691B4();
  sub_1691C4();
  (*(v6 + 104))(v8, enum case for ResponseType.disambiguation(_:), v5);
  return sub_169174();
}

uint64_t sub_D1904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_D1A98(a1, a2, a3);
  sub_1487EC();
  if (v4)
  {
  }

  else
  {
    v5 = sub_D1AF4();
  }

  *v3 = v5;
  return sub_D1ACC();
}

uint64_t sub_D196C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_D1A98(a1, a2, a3);
  sub_1487EC();
  if (v4)
  {
  }

  else
  {
    v5 = sub_D1AF4();
  }

  *v3 = v5;
  return sub_D1ACC();
}

uint64_t sub_D19D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_D1A98(a1, a2, a3);
  sub_1487EC();
  if (v4)
  {
    v5 = sub_D1B2C();
  }

  else
  {
    v5 = sub_D1AF4();
  }

  *v3 = v5;
  return sub_D1ACC();
}

uint64_t sub_D1A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_D1A98(a1, a2, a3);
  sub_1487EC();
  if (v4)
  {
    v5 = sub_D1B2C();
  }

  else
  {
    v5 = sub_D1AF4();
  }

  *v3 = v5;
  return sub_D1ACC();
}

uint64_t sub_D1AF4()
{

  return sub_16AD04();
}

uint64_t sub_D1B0C(uint64_t a1)
{
}

id sub_D1B2C()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

id sub_D1B44(char *a1)
{
  sub_86E4(a1, &_swiftEmptySetSingleton, &v16);
  if (v17)
  {
    sub_D124(&v16, v18);
    v4 = v19;
    v5 = v20;
    sub_D084(v18, v19);
    v6 = (*(v5 + 8))(v4, v5);
    v8 = v7;
    if (v7)
    {
      v9 = v6;
      sub_95578();
      v8 = sub_99BFC(v9, v8);
    }

    v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCarName:v8];

    sub_1693E4();
    sub_955E4();
    (*(v11 + 8))(a1);
    sub_D13C(v18);
  }

  else
  {
    sub_57A80(&v16);
    sub_93C20();
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v12 = sub_16A584();
    sub_9DA0(v12, qword_1E65C0);
    v13 = sub_16A9A4();
    sub_386D8(v13, 0x10uLL, 0xD0000000000000ABLL, v1 | 0x8000000000000000, 0x293A5F2874696E69, 0xE800000000000000, 60, 0xD000000000000016, v2);
    sub_1693E4();
    sub_955E4();
    (*(v14 + 8))(a1);
    return 0;
  }

  return v10;
}

id sub_D1D24(char *a1, unsigned __int8 a2)
{
  v3 = v2;
  v5 = a2;
  v27 = v3;
  swift_getObjectType();
  if (v5 == 161)
  {
    sub_86E4(a1, &_swiftEmptySetSingleton, &v28);
    if (v29)
    {
      sub_D124(&v28, v30);
      v6 = v31;
      v7 = v32;
      sub_D084(v30, v31);
      v8 = (*(v7 + 8))(v6, v7);
      if (v9)
      {
        v10 = v8;
        v11 = v9;
        sub_95578();
        v12 = sub_99BFC(v10, v11);
      }

      else
      {
        v12 = 0;
      }

      v24 = [objc_allocWithZone(INGetCarPowerLevelStatusIntent) initWithCarName:v12];

      v25 = swift_dynamicCastUnknownClass();
      if (!v25)
      {

        v25 = v27;
      }

      sub_D13C(v30);
      return v25;
    }

    sub_57A80(&v28);
    sub_93C20();
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v22 = sub_16A584();
    sub_9DA0(v22, qword_1E65C0);
    sub_16A9A4();
    sub_D21A4();
    sub_D2194();
    v21 = 23;
  }

  else
  {
    sub_93C20();
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v13 = sub_16A584();
    sub_9DA0(v13, qword_1E65C0);
    sub_16A9A4();
    sub_D21A4();
    sub_D2194();
    v21 = 18;
  }

  sub_386D8(v14, v15, v16, v17, v18, v19, v21, v20, v26);

  return v27;
}

id sub_D1F74(uint64_t a1, unsigned __int8 a2)
{
  v3 = a2;
  swift_getObjectType();
  v4 = [v15 carName];
  if (v3 == 161)
  {
    sub_16138(a1, v17);
    sub_95578();
    if (swift_dynamicCast())
    {

      v4 = v16;
    }
  }

  else
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v5 = sub_16A584();
    sub_9DA0(v5, qword_1E65C0);
    sub_16A9A4();
    sub_D2194();
    sub_386D8(v6, v7, v8, v9, v10, v11, 39, v12, 0x8000000000186FF0);
  }

  v13 = [objc_allocWithZone(INGetCarPowerLevelStatusIntent) initWithCarName:v4];

  result = swift_dynamicCastUnknownClass();
  if (!result)
  {

    return v15;
  }

  return result;
}

double sub_D2120@<D0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 == 161 && (v4 = [v2 carName]) != 0)
  {
    v5 = v4;
    *(a2 + 24) = sub_95578();
    *a2 = v5;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

void *sub_D21B8(void *a1)
{
  if (!sub_D2210(a1))
  {
    return 0;
  }

  v3 = *(v1 + 16);

  v4 = sub_13F594(a1, v3);

  return v4;
}

BOOL sub_D2210(void *a1)
{
  v3 = *(v1 + 16);

  v4 = sub_13F594(a1, v3);

  if (v4)
  {
  }

  return v4 != 0;
}

uint64_t sub_D2264()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_D230C(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *(v3 + 16) = a1;
  *(v3 + 64) = a2;
  sub_D124(a3, v3 + 24);
  return v3;
}

void sub_D2338(unsigned __int8 a1)
{
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v3 = sub_16A584();
  sub_9DA0(v3, qword_1E65C0);
  sub_16A9A4();
  sub_D2FA8();
  sub_D2FBC();
  sub_386D8(v4, v5, v6, v7, v8, v9, 44, v10, v51);
  v11 = [objc_allocWithZone(SISchemaUEISiriCarCommandStarted) init];
  v54 = v11;
  if (a1 >= 2u)
  {
    if (a1 == 2)
    {
      sub_D2FEC(v11);
      sub_D2FA8();
      sub_D2FBC();
      sub_386D8(v19, v20, v21, v22, v23, v24, 52, v25, v52);
      if (v54)
      {
        [v54 setCarPlayConnection:2];
      }
    }

    else
    {
      if (v11)
      {
        v11 = [v11 setCarPlayConnection:0];
      }

      sub_D2FEC(v11);
      sub_D2FA8();
      sub_D2FBC();
      sub_386D8(v26, v27, v28, v29, v30, v31, 56, v32, v52);
    }
  }

  else
  {
    sub_D2FEC(v11);
    sub_D2FA8();
    sub_D2FBC();
    sub_386D8(v12, v13, v14, v15, v16, v17, 49, v18, v52);
    if (v54)
    {
      [v54 setCarPlayConnection:1];
    }
  }

  v33 = [objc_allocWithZone(SISchemaUEISiriCarCommandContext) init];
  [v33 setStartedOrChanged:v54];
  v34 = [objc_allocWithZone(SISchemaClientEvent) init];
  [v34 setUeiSiriCarCommandContext:v33];
  v35 = sub_D2880();
  if (v35)
  {
    v36 = v35;
    if (v34)
    {
      sub_D2FEC([v34 setEventMetadata:v35]);
      sub_D2FA8();
      sub_D2FBC();
      sub_386D8(v37, v38, v39, v40, v41, v42, 71, v43, v53);
      [*(v1 + 16) emitMessage:v34];
    }
  }

  else
  {
    sub_16A9A4();
    sub_D2FE0();
    sub_D2FBC();
    sub_386D8(v44, v45, v46, v47, v48, v49, 65, v50, 0x800000000018AF40);
    v36 = v54;
    v54 = v34;
  }
}

void sub_D2604()
{
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v1 = sub_16A584();
  sub_9DA0(v1, qword_1E65C0);
  sub_16A9A4();
  sub_D2FE0();
  sub_D2FCC();
  sub_386D8(v2, v3, v4, v5, v6, v7, 77, v8, 0x800000000018AF10);
  v9 = [objc_allocWithZone(SISchemaUEISiriCarCommandEnded) init];
  v33 = v9;
  if (v9)
  {
    v10 = v9;
    v11 = sub_16A1B4();
    if (v12)
    {
      if (v11 == 0xD000000000000012 && v12 == 0x800000000017F6B0)
      {
        v14 = 1;
      }

      else
      {
        v14 = sub_16AE54();
      }
    }

    else
    {
      v14 = 0;
    }

    [v10 setIsSiriDigitalCarKeyRequest:v14 & 1];
  }

  v15 = [objc_allocWithZone(SISchemaUEISiriCarCommandContext) init];
  [v15 setEnded:v33];
  v16 = [objc_allocWithZone(SISchemaClientEvent) init];
  [v16 setUeiSiriCarCommandContext:v15];
  v17 = sub_D2880();
  if (v17)
  {
    v18 = v17;
    if (v16)
    {
      sub_D2FEC([v16 setEventMetadata:v17]);
      sub_D2FE0();
      sub_D2FCC();
      sub_386D8(v19, v20, v21, v22, v23, v24, 93, v25, v0);
      [*(v0 + 16) emitMessage:v16];
    }
  }

  else
  {
    sub_16A9A4();
    sub_D2FE0();
    sub_D2FCC();
    sub_386D8(v26, v27, v28, v29, v30, v31, 87, v32, 0x800000000018AF40);
    v18 = v33;
    v33 = v16;
  }
}

id sub_D2880()
{
  v1 = sub_168414();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v21 - v6;
  v8 = [objc_allocWithZone(SISchemaClientEventMetadata) init];
  v9 = [*(v0 + 64) latestStoredTurn];
  if (v9)
  {
    v10 = v9;
    sub_1683F4();

    (*(v2 + 32))(v7, v5, v1);
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_16ACF4(30);

    v21 = 0xD00000000000001CLL;
    v22 = 0x800000000018AEC0;
    sub_D2E80();
    v23._countAndFlagsBits = sub_16AE24();
    sub_16A744(v23);

    v11 = v21;
    v12 = v22;
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v13 = sub_16A584();
    sub_9DA0(v13, qword_1E65C0);
    v14 = sub_16A9A4();
    sub_386D8(v14, 0x800000000uLL, 0xD00000000000009DLL, 0x800000000018ADA0, 0xD000000000000017, 0x800000000018AE40, 105, v11, v12);

    if (v8)
    {
      v15 = v8;
      v16 = sub_1683E4();
      sub_D2ED8(v16, v17, v15);
    }

    (*(v2 + 8))(v7, v1);
  }

  else
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v18 = sub_16A584();
    sub_9DA0(v18, qword_1E65C0);
    v19 = sub_16A9A4();
    sub_386D8(v19, 0x800000000uLL, 0xD00000000000009DLL, 0x800000000018ADA0, 0xD000000000000017, 0x800000000018AE40, 101, 0xD000000000000054, 0x800000000018AE60);

    return 0;
  }

  return v8;
}

uint64_t sub_D2B90(char a1, char a2)
{
  v3 = v2;
  sub_168AC4();
  CarCommandsUseCase.rawValue.getter(a2);
  sub_168AB4();
  sub_D084((v3 + 24), *(v3 + 48));
  sub_168A04();
}

uint64_t sub_D2CE0(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_168AC4();
  CarCommandsUseCase.rawValue.getter(a1);
  sub_168AB4();
  sub_D084((v4 + 24), *(v4 + 48));
  sub_168A04();
}

uint64_t sub_D2DA8()
{
  sub_16A1C4();
  sub_16A1A4();
  return sub_168AA4();
}

uint64_t sub_D2DF8()
{
  swift_unknownObjectRelease();
  sub_D13C((v0 + 24));

  return v0;
}

uint64_t sub_D2E28()
{
  sub_D2DF8();

  return _swift_deallocClassInstance(v0, 72, 7);
}

unint64_t sub_D2E80()
{
  result = qword_1EB3B0;
  if (!qword_1EB3B0)
  {
    sub_168414();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B0);
  }

  return result;
}

void sub_D2ED8(uint64_t a1, unint64_t a2, void *a3)
{
  isa = sub_1683C4().super.isa;
  sub_D2F4C(a1, a2);
  [a3 setTurnID:isa];
}

uint64_t sub_D2F4C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_D2FEC(uint64_t a1)
{

  return sub_16A9A4();
}

uint64_t getEnumTagSinglePayload for NLDefroster(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for NLDefroster(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0xD3158);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_D3194()
{
  result = qword_1EB3C0;
  if (!qword_1EB3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3C0);
  }

  return result;
}

Swift::Int sub_D31F8(unsigned __int8 a1)
{
  sub_16AF14();
  sub_16AF24(a1);
  return sub_16AF54();
}

Swift::Int sub_D325C()
{
  v1 = *v0;
  sub_16AF14();
  sub_16AF24(v1);
  return sub_16AF54();
}

uint64_t getEnumTagSinglePayload for SeekDirection(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for SeekDirection(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0xD33F4);
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

unint64_t sub_D343C()
{
  result = qword_1EB3C8;
  if (!qword_1EB3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3C8);
  }

  return result;
}

Swift::Int sub_D34C8(char a1)
{
  sub_16AF14();
  sub_16AF24(a1 & 1);
  return sub_16AF54();
}

uint64_t type metadata accessor for CarCommandsSetCarPlayClimateStatusCATsSimple(uint64_t a1)
{
  result = qword_1EB3D0;
  if (!qword_1EB3D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_D360C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_16A164();
  sub_5B1C();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  __chkstk_darwin(v11 - 8);
  sub_57A0(a1, &v15 - v12);
  (*(v7 + 16))(v10, a2, v3);
  v13 = sub_16A0D4();
  (*(v7 + 8))(a2, v3);
  sub_5810(a1);
  return v13;
}

uint64_t sub_D3768(uint64_t a1, uint64_t a2)
{
  sub_16A164();
  sub_5B1C();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_16A0E4();
  (*(v5 + 8))(a2, v2);
  return v9;
}

uint64_t sub_D3870()
{
  sub_D3A4();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v1[12] = v12;
  v1[13] = v0;
  v1[10] = v4;
  v1[11] = v2;
  v1[8] = v8;
  v1[9] = v6;
  v1[7] = v13;
  sub_5758(&qword_1E5F78, &unk_16D400);
  v1[14] = swift_task_alloc();
  v14 = sub_1691E4();
  v1[15] = v14;
  v1[16] = *(v14 - 8);
  v1[17] = swift_task_alloc();
  v15 = sub_16A284();
  v1[18] = v15;
  v1[19] = *(v15 - 8);
  v1[20] = swift_task_alloc();
  v16 = swift_task_alloc();
  v1[21] = v16;
  *v16 = v1;
  v16[1] = sub_D3A30;

  return sub_D411C(v11, v9, v7, v5, v3);
}

uint64_t sub_D3A30()
{
  sub_1696C();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  v3[22] = v6;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    v9 = swift_task_alloc();
    v3[23] = v9;
    *v9 = v5;
    v9[1] = sub_D3BC4;
    v10 = v3[20];
    v11 = v3[10];
    v12 = v3[11];
    v13 = v3[8];
    v14 = v3[9];

    return sub_D4824(v10, v13, v14, v11, v12);
  }
}

uint64_t sub_D3BC4()
{
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v4 = *v1;
  sub_D2A4();
  *v5 = v4;
  *(v6 + 192) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_D3CC8()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[18];
  v5 = v0[14];
  v6 = v0[12];
  v7 = v6[3];
  v16 = v6[4];
  sub_D084(v6, v7);
  v0[5] = v4;
  v0[6] = sub_4FB1C();
  v8 = sub_10888(v0 + 2);
  (*(v2 + 16))(v8, v3, v4);
  sub_5758(&qword_1EA2B0, &qword_16DFB0);
  v9 = swift_allocObject();
  v0[25] = v9;
  *(v9 + 16) = xmmword_16D440;
  *(v9 + 32) = v1;
  v10 = sub_168E14();
  sub_5370(v5, 1, 1, v10);
  v11 = v1;
  sub_67D38(0xD00000000000002ELL, 0x800000000018B1C0, v5);
  sub_109A0(v5, &qword_1E5F78, &unk_16D400);
  v12 = swift_task_alloc();
  v0[26] = v12;
  *v12 = v0;
  v12[1] = sub_D3E80;
  v13 = v0[17];
  v14 = v0[7];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v14, v0 + 2, v9, v13, v7, v16);
}

uint64_t sub_D3E80()
{
  sub_D3A4();
  sub_D358();
  v2 = v1;
  sub_D2A4();
  *v3 = v2;
  v5 = v4[17];
  v6 = v4[16];
  v7 = v4[15];
  v8 = *v0;
  sub_D2A4();
  *v9 = v8;

  (*(v6 + 8))(v5, v7);
  sub_D13C((v2 + 16));
  sub_10B4C();

  return _swift_task_switch(v10);
}

uint64_t sub_D3FF0()
{
  sub_D3A4();
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);

  (*(v2 + 8))(v1, v3);

  sub_D37C();

  return v4();
}

uint64_t sub_D4098()
{
  sub_1696C();

  sub_D37C();

  return v1();
}

uint64_t sub_D411C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[12] = a2;
  v5[13] = a3;
  sub_16A164();
  v5[16] = swift_task_alloc();
  v6 = sub_16A0C4();
  v5[17] = v6;
  v5[18] = *(v6 - 8);
  v5[19] = swift_task_alloc();

  return _swift_task_switch(sub_D420C);
}

uint64_t sub_D420C()
{
  v1 = v0[14];
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v2 = swift_allocObject();
  v3 = v2;
  v0[20] = v2;
  *(v2 + 16) = xmmword_175690;
  *(v2 + 32) = 0x656D614E726163;
  *(v2 + 40) = 0xE700000000000000;
  if (v1)
  {
    v5 = v0[18];
    v4 = v0[19];
    v6 = v0[17];
    sub_99C94();
    *(v3 + 72) = v6;
    v7 = sub_10888((v3 + 48));
    (*(v5 + 32))(v7, v4, v6);
  }

  else
  {
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
  }

  v8 = v0[17];
  v9 = v0[15];
  strcpy((v3 + 80), "appIdentifier");
  *(v3 + 94) = -4864;
  *(v3 + 120) = v8;
  sub_10888((v3 + 96));
  sub_16A6E4();
  *(v3 + 128) = 0xD000000000000011;
  *(v3 + 136) = 0x800000000017E650;
  v10 = *v9;
  v0[2] = v10;
  v11 = 0;
  if (v10)
  {
    v11 = sub_169FD4();
  }

  else
  {
    *(v3 + 152) = 0;
    *(v3 + 160) = 0;
  }

  v12 = v0[15];
  *(v3 + 144) = v10;
  *(v3 + 168) = v11;
  strcpy((v3 + 176), "remainingFuel");
  *(v3 + 190) = -4864;
  v13 = *(v12 + 8);
  v0[3] = v13;
  v14 = 0;
  if (v13)
  {
    v14 = sub_16A004();
  }

  else
  {
    *(v3 + 200) = 0;
    *(v3 + 208) = 0;
  }

  *(v3 + 192) = v13;
  *(v3 + 216) = v14;
  *(v3 + 224) = 0x6E696E69616D6572;
  *(v3 + 232) = 0xEF65677261684367;
  v15 = *(v12 + 16);
  v0[4] = v15;
  v16 = 0;
  if (v15)
  {
    v16 = sub_16A004();
  }

  else
  {
    *(v3 + 248) = 0;
    *(v3 + 256) = 0;
  }

  *(v3 + 240) = v15;
  *(v3 + 264) = v16;
  *(v3 + 272) = 0x676E696772616863;
  *(v3 + 280) = 0xE800000000000000;
  v17 = *(v12 + 24);
  if (v17 == 2)
  {
    v18 = 0;
    *(v3 + 288) = 0;
    *(v3 + 296) = 0;
    *(v3 + 304) = 0;
  }

  else
  {
    *(v3 + 288) = v17;
    v18 = &type metadata for Bool;
  }

  *(v3 + 312) = v18;
  *(v3 + 320) = 0x75466F54656D6974;
  *(v3 + 328) = 0xEA00000000006C6CLL;
  v19 = *(v12 + 32);
  v0[5] = v19;
  v20 = 0;
  if (v19)
  {
    v20 = sub_16A054();
  }

  else
  {
    *(v3 + 344) = 0;
    *(v3 + 352) = 0;
  }

  *(v3 + 336) = v19;
  *(v3 + 360) = v20;
  *(v3 + 368) = 0x7453656369766564;
  *(v3 + 376) = 0xEB00000000657461;
  v21 = *(v12 + 40);
  v0[6] = v21;
  v22 = 0;
  if (v21)
  {
    v22 = sub_16A124();
  }

  else
  {
    *(v3 + 392) = 0;
    *(v3 + 400) = 0;
  }

  *(v3 + 384) = v21;
  *(v3 + 408) = v22;
  type metadata accessor for CarCommandsGetPowerLevelCATsSimple(0);
  sub_D4DC4((v0 + 2), (v0 + 7), &qword_1EB4D0, &qword_1756F8);
  sub_D4DC4((v0 + 3), (v0 + 8), &qword_1EB4D8, &qword_175700);
  sub_D4DC4((v0 + 4), (v0 + 9), &qword_1EB4D8, &qword_175700);
  sub_D4DC4((v0 + 5), (v0 + 10), &qword_1EB4E0, &qword_175708);
  sub_D4DC4((v0 + 6), (v0 + 11), &qword_1EB4E8, &qword_175710);
  sub_16A154();
  v0[21] = sub_16A0F4();
  v25 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v23 = swift_task_alloc();
  v0[22] = v23;
  *v23 = v0;
  v23[1] = sub_D4604;

  return v25(0xD00000000000002ELL, 0x800000000018B1C0, v3);
}

uint64_t sub_D4604()
{
  sub_1696C();
  v3 = v2;
  sub_D358();
  v5 = v4;
  sub_D2A4();
  *v6 = v5;
  v7 = *v1;
  sub_D2A4();
  *v8 = v7;
  *(v5 + 184) = v0;

  if (!v0)
  {

    *(v5 + 192) = v3;
  }

  sub_10B4C();

  return _swift_task_switch(v9);
}

uint64_t sub_D4720()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 192);

  return v1(v2);
}

uint64_t sub_D47A0()
{
  sub_1696C();

  sub_D37C();

  return v0();
}

uint64_t sub_D4824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  sub_5758(&qword_1E6300, &qword_16ECE0);
  v5[10] = swift_task_alloc();
  sub_16A164();
  v5[11] = swift_task_alloc();

  return _swift_task_switch(sub_D48F4);
}

uint64_t sub_D48F4()
{
  sub_D3A4();
  v1 = *(v0 + 64);
  type metadata accessor for CarCommandsCATsSimple(0);
  sub_16A154();
  *(v0 + 96) = sub_16A0F4();
  if (v1)
  {
    sub_99C94();
    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = sub_16A0C4();
  sub_5370(v3, v2, 1, v5);
  *(v0 + 139) = *(v4 + 24);
  *(v0 + 104) = *(v4 + 8);
  *(v0 + 112) = *(v4 + 16);
  v6 = swift_task_alloc();
  *(v0 + 120) = v6;
  *v6 = v0;
  v6[1] = sub_D4A38;

  return sub_DDDE4();
}

uint64_t sub_D4A38()
{
  sub_1696C();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v0;
  v6 = *(v5 + 80);
  v7 = *v1;
  sub_D2A4();
  *v8 = v7;
  *(v9 + 128) = v0;

  sub_109A0(v6, &qword_1E6300, &qword_16ECE0);

  sub_10B4C();

  return _swift_task_switch(v10);
}

uint64_t sub_D4B90()
{
  if (!*(v0 + 104) || (sub_169F34(), (v1 & 1) != 0))
  {
    if (*(v0 + 112))
    {
      sub_169F34();
    }
  }

  v6 = *(v0 + 40);
  *(v0 + 136) = 0;
  sub_16A134();
  *(v0 + 137) = 1;
  sub_16A134();
  *(v0 + 138) = 2;
  sub_16A134();

  sub_16A254();

  v2 = enum case for CarCommandsSnippetsPluginModel.powerLevelStatusModel(_:);
  sub_16A284();
  sub_10AFC();
  (*(v3 + 104))(v6, v2);

  sub_D37C();

  return v4();
}

uint64_t sub_D4D38()
{

  sub_D37C();

  return v0();
}

uint64_t sub_D4DC4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_5758(a3, a4);
  sub_10AFC();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_D4E24(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_D4E78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_D4EE8(char *a1, char a2)
{
  v3 = v2;
  v32 = v3;
  swift_getObjectType();
  if ((a2 & 0xF0) != 0x10)
  {
    sub_93C20();
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v9 = sub_16A584();
    sub_9DA0(v9, qword_1E65C0);
    sub_16A9A4();
    sub_D5930();
    sub_D5908();
    v17 = 17;
    goto LABEL_16;
  }

  sub_86E4(a1, &_swiftEmptySetSingleton, v33);
  if (!v33[3])
  {
    sub_99140(v33, &qword_1E5F80, &unk_16E7E0);
    v34 = 0u;
    v35 = 0u;
    v36 = 0;
    goto LABEL_13;
  }

  sub_5758(&qword_1E5F90, &qword_170270);
  sub_5758(&qword_1E9378, &qword_172E58);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    goto LABEL_13;
  }

  if (!*(&v35 + 1))
  {
LABEL_13:
    sub_99140(&v34, &qword_1E9370, &unk_172E48);
    sub_93C20();
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v18 = sub_16A584();
    sub_9DA0(v18, qword_1E65C0);
    sub_16A9A4();
    sub_D5930();
    sub_D5908();
    v17 = 22;
LABEL_16:
    sub_386D8(v10, v11, v12, v13, v14, v15, v17, v16, v31);

    return v32;
  }

  sub_D124(&v34, v37);
  v6 = [objc_allocWithZone(sub_16A524()) init];
  if (a2)
  {
    v7 = sub_16AE54();

    if ((v7 & 1) == 0)
    {
      v8 = [v32 carName];
LABEL_22:
      v25 = v8;
      goto LABEL_24;
    }
  }

  else
  {
  }

  v21 = v38;
  v20 = v39;
  sub_D084(v37, v38);
  v8 = (*(*(v20 + 8) + 8))(v21);
  if (v22)
  {
    v23 = v8;
    v24 = v22;
    sub_16484(0, &qword_1E6378, INSpeakableString_ptr);
    v8 = sub_99BFC(v23, v24);
    goto LABEL_22;
  }

  v25 = 0;
LABEL_24:
  sub_86138(v8, "setCarName:");

  if (a2 & 1) != 0 || (sub_16AE54())
  {
    sub_D084(v37, v38);
    v26 = sub_D5918();
    result = v27(v26);
    if (result < 0)
    {
      __break(1u);
      return result;
    }

    v28 = [objc_allocWithZone(NSNumber) initWithInteger:result];
  }

  else
  {
    v28 = [v32 carSignal];
  }

  v29 = v28;
  sub_86138(v28, "setCarSignal:");

  v30 = swift_dynamicCastClass();
  if (!v30)
  {

    v30 = v32;
  }

  sub_D13C(v37);
  return v30;
}

id sub_D5308(uint64_t a1, char a2)
{
  swift_getObjectType();
  v4 = [v22 carName];
  v5 = [v22 carSignal];
  if ((a2 & 0xF0) == 0x10)
  {
    if (a2)
    {
      sub_16138(a1, v24);
      v6 = sub_16484(0, &qword_1E6310, NSNumber_ptr);
      if (sub_991D0(v6, v7, v8, v6))
      {

        v5 = v23;
      }
    }

    else
    {
      sub_16138(a1, v24);
      v19 = sub_16484(0, &qword_1E6378, INSpeakableString_ptr);
      if (sub_991D0(v19, v20, v21, v19))
      {

        v4 = v23;
      }
    }
  }

  else
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v9 = sub_16A584();
    sub_9DA0(v9, qword_1E65C0);
    sub_16A9A4();
    sub_D5908();
    sub_386D8(v10, v11, v12, v13, v14, v15, 42, v16, 0x8000000000186FF0);
  }

  v17 = [objc_allocWithZone(sub_16A524()) init];
  [v17 setCarName:v4];
  [v17 setCarSignal:v5];

  result = swift_dynamicCastClass();
  if (!result)
  {

    return v22;
  }

  return result;
}

double sub_D5548@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if ((a1 & 0xF0) == 0x10)
  {
    if (a1)
    {
      v4 = [v2 carSignal];
      if (v4)
      {
        v5 = v4;
        v6 = &qword_1E6310;
        v7 = NSNumber_ptr;
LABEL_7:
        *(a2 + 24) = sub_16484(0, v6, v7);
        *a2 = v5;
        return result;
      }
    }

    else
    {
      v8 = [v2 carName];
      if (v8)
      {
        v5 = v8;
        v6 = &qword_1E6378;
        v7 = INSpeakableString_ptr;
        goto LABEL_7;
      }
    }
  }

  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_D55F8(char *a1)
{
  sub_86E4(a1, &_swiftEmptySetSingleton, v24);
  if (!v24[3])
  {
    sub_99140(v24, &qword_1E5F80, &unk_16E7E0);
    v25 = 0u;
    v26 = 0u;
    v27 = 0;
    goto LABEL_8;
  }

  v2 = sub_5758(&qword_1E5F90, &qword_170270);
  sub_5758(&qword_1E9378, &qword_172E58);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    goto LABEL_8;
  }

  if (!*(&v26 + 1))
  {
LABEL_8:
    sub_99140(&v25, &qword_1E9370, &unk_172E48);
    sub_93C20();
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v16 = sub_16A584();
    sub_9DA0(v16, qword_1E65C0);
    v17 = sub_16A9A4();
    sub_386D8(v17, 0x8000uLL, 0xD0000000000000ACLL, v2 | 0x8000000000000000, 0x293A5F2874696E69, 0xE800000000000000, 64, 0xD000000000000016, v3);
    sub_1693E4();
    sub_955E4();
    (*(v18 + 8))(a1);
    return 0;
  }

  sub_D124(&v25, v28);
  v5 = [objc_allocWithZone(v1) init];
  v7 = v29;
  v6 = v30;
  sub_D084(v28, v29);
  v8 = *(v6 + 8);
  v9 = *(v8 + 8);
  v10 = v5;
  v11 = v9(v7, v8);
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    sub_16484(0, &qword_1E6378, INSpeakableString_ptr);
    v11 = sub_99BFC(v13, v14);
    v15 = v11;
  }

  else
  {
    v15 = 0;
  }

  sub_86138(v11, "setCarName:");

  sub_D084(v28, v29);
  v20 = sub_D5918();
  result = v21(v20);
  if ((result & 0x8000000000000000) == 0)
  {
    v22 = [objc_allocWithZone(NSNumber) initWithInteger:result];
    sub_86138(v22, "setCarSignal:");

    sub_1693E4();
    sub_955E4();
    (*(v23 + 8))(a1);
    sub_D13C(v28);
    return v10;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for CarCommandsGetPowerLevelCATsSimple(uint64_t a1)
{
  result = qword_1EB4F0;
  if (!qword_1EB4F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_D5A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_16A164();
  sub_5B1C();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  __chkstk_darwin(v11 - 8);
  sub_57A0(a1, &v15 - v12);
  (*(v7 + 16))(v10, a2, v3);
  v13 = sub_16A0D4();
  (*(v7 + 8))(a2, v3);
  sub_5810(a1);
  return v13;
}

uint64_t sub_D5B80(uint64_t a1, uint64_t a2)
{
  sub_16A164();
  sub_5B1C();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_16A0E4();
  (*(v5 + 8))(a2, v2);
  return v9;
}

BOOL sub_D5C88(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = sub_16AC04();
  }

  else
  {
    v1 = *(a1 + 16);
  }

  return v1 == 0;
}

uint64_t sub_D5CC8(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  v16 = *(a2 + 16);
  *(v9 + 16) = *a2;
  *(v9 + 32) = v16;
  *(v9 + 48) = *(a2 + 32);
  sub_D124(a1, v9 + 56);
  *(v9 + 96) = a5;
  *(v9 + 104) = a6;
  *(v9 + 112) = a7;
  *(v9 + 120) = a8;
  *(v9 + 128) = a9;
  return v9;
}

uint64_t sub_D5D4C()
{
  *(v1 + 96) = v0;
  v2 = sub_D388();
  return _swift_task_switch(v2);
}

uint64_t sub_D5D74()
{
  sub_D8400(*(v0 + 96) + 16, v0 + 56);
  if (*(v0 + 80))
  {
    v1 = *(v0 + 96);
    sub_D124((v0 + 56), v0 + 16);
    sub_D084((v0 + 16), *(v0 + 40));
    v2 = *(v1 + 96);
    v3 = *(v2 + 16);
    if (v3)
    {
      sub_16AD54();
      v4 = (v2 + 32);
      do
      {
        v5 = *v4++;
        [objc_allocWithZone(NSNumber) initWithInteger:v5];
        sub_16AD34();
        sub_16AD64();
        sub_16AD74();
        sub_16AD44();
        --v3;
      }

      while (v3);
    }

    v6 = *(v0 + 96);
    sub_138ED4(_swiftEmptyArrayStorage);
    v8 = v7;
    *(v0 + 104) = v7;
    v9 = swift_task_alloc();
    *(v0 + 112) = v9;
    *v9 = v0;
    v9[1] = sub_D5FE0;

    return sub_A6674(v8, v6 + 56);
  }

  else
  {
    sub_D8470(v0 + 56);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v11 = sub_16A584();
    sub_9DA0(v11, qword_1E65C0);
    v12 = sub_16A9A4();
    sub_386D8(v12, 0x20000uLL, 0xD000000000000096, 0x800000000018B3D0, 0xD000000000000021, 0x800000000018B720, 39, 0xD00000000000004CLL, 0x800000000018B750);
    sub_30AEC();

    return v13(&_swiftEmptySetSingleton);
  }
}

uint64_t sub_D5FE0()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v2 = v1;
  v3 = *v0;
  sub_D254();
  *v4 = v3;
  *(v6 + 120) = v5;

  v7 = sub_D388();

  return _swift_task_switch(v7);
}

uint64_t sub_D60E0()
{
  sub_D2DC();
  sub_D13C((v0 + 16));
  sub_30AEC();

  return v1();
}

uint64_t sub_D613C()
{
  *(v1 + 16) = v0;
  v2 = sub_D388();
  return _swift_task_switch(v2);
}

uint64_t sub_D6164()
{
  v1 = *(v0 + 16);
  v2 = v1[10];
  v3 = v1[11];
  sub_D084(v1 + 7, v2);
  v4 = (*(v3 + 96))(v2, v3);
  LOBYTE(v2) = sub_D5C88(v4);

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  if (v2)
  {
    v6 = sub_D6260;
  }

  else
  {
    v6 = sub_D63C0;
  }

  v5[1] = v6;

  return sub_D5D4C();
}

uint64_t sub_D6260()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 32) = v3;

  v4 = sub_D388();

  return _swift_task_switch(v4);
}

uint64_t sub_D6348()
{
  sub_D2DC();
  v1 = sub_D7D9C(*(*(v0 + 16) + 96), *(v0 + 32));

  sub_30AEC();

  return v2(v1);
}

uint64_t sub_D63C0()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 40) = v3;

  v4 = sub_D388();

  return _swift_task_switch(v4);
}

uint64_t sub_D64A8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = v2[10];
  v4 = v2[11];
  sub_D084(v2 + 7, v3);
  v5 = (*(v4 + 96))(v3, v4);
  v6 = sub_D84D8(v5, v1);

  v7 = sub_D7D9C(*(*(v0 + 16) + 96), v6);

  sub_30AEC();

  return v8(v7);
}

uint64_t sub_D6578()
{
  sub_D2DC();
  *(v1 + 96) = v0;
  *(v1 + 176) = v2;
  v3 = swift_task_alloc();
  *(v1 + 104) = v3;
  *v3 = v1;
  v3[1] = sub_D6608;

  return sub_D774C();
}

uint64_t sub_D6608()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 177) = v4;

  if (v0)
  {
    sub_D37C();

    return v5();
  }

  else
  {

    return _swift_task_switch(sub_D6728);
  }
}

uint64_t sub_D6728()
{
  v1 = *(v0 + 177);
  v2 = *(v0 + 176);
  if (v1 == v2)
  {
    sub_16ACF4(43);

    if (v2)
    {
      v16._countAndFlagsBits = 1702195828;
    }

    else
    {
      v16._countAndFlagsBits = 0x65736C6166;
    }

    if (v2)
    {
      v17 = 0xE400000000000000;
    }

    else
    {
      v17 = 0xE500000000000000;
    }

    v16._object = v17;
    sub_16A744(v16);

    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v18 = sub_16A584();
    sub_9DA0(v18, qword_1E65C0);
    sub_16A9A4();
    sub_D9298();
    sub_D9230();
    sub_386D8(v19, v20, v21, v22, v23, v24, 54, 0xD000000000000029, 0x800000000018B6F0);

    sub_D37C();

    return v25();
  }

  else
  {
    sub_16ACF4(117);
    v27._countAndFlagsBits = 0xD000000000000048;
    v27._object = 0x800000000018B600;
    sub_16A744(v27);
    if (v1)
    {
      v3._countAndFlagsBits = 1702195828;
    }

    else
    {
      v3._countAndFlagsBits = 0x65736C6166;
    }

    if (v1)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE500000000000000;
    }

    v3._object = v4;
    sub_16A744(v3);

    v28._countAndFlagsBits = 0xD00000000000001ALL;
    v28._object = 0x800000000018B650;
    sub_16A744(v28);
    if (v2)
    {
      v5._countAndFlagsBits = 1702195828;
    }

    else
    {
      v5._countAndFlagsBits = 0x65736C6166;
    }

    if (v2)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }

    v5._object = v6;
    sub_16A744(v5);

    v29._countAndFlagsBits = 0x6E69746E6F43202ELL;
    v29._object = 0xEF2E2E2E676E6975;
    sub_16A744(v29);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v7 = sub_16A584();
    *(v0 + 112) = sub_9DA0(v7, qword_1E65C0);
    sub_16A9A4();
    sub_D9298();
    sub_D9230();
    sub_386D8(v8, v9, v10, v11, v12, v13, 58, 0, 0xE000000000000000);

    v14 = swift_task_alloc();
    *(v0 + 120) = v14;
    *v14 = v0;
    v14[1] = sub_D6A64;

    return sub_D613C();
  }
}

uint64_t sub_D6A64(char a1)
{
  sub_D358();
  v5 = v4;
  v6 = *v2;
  sub_D254();
  *v7 = v6;

  if (v1)
  {
    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    *(v5 + 178) = a1 & 1;

    return _swift_task_switch(sub_D6BA8);
  }
}

uint64_t sub_D6BA8(uint64_t a1)
{
  if (*(v1 + 178) == 1)
  {
    v2 = *(v1 + 96);
    v3 = *(v1 + 176);
    sub_16A9A4();
    sub_D9230();
    sub_386D8(v4, v5, v6, v7, v8, v9, 64, v10, 0x800000000018B690);
    v11 = 120;
    if (v3)
    {
      v11 = 104;
    }

    *(v1 + 128) = [objc_allocWithZone(NSNumber) initWithInteger:*(v2 + v11)];
    v12 = swift_task_alloc();
    *(v1 + 136) = v12;
    *v12 = v1;
    v12[1] = sub_D6D74;

    return sub_D5D4C();
  }

  else
  {
    type metadata accessor for PKCarFunction(0);
    v15 = sub_D92A4(v14);
    v17 = v16;
    v18 = sub_3CC14();
    sub_77030(&type metadata for DigitalCarKeyError, v18);
    *v19 = v15;
    v19[1] = v17;
    swift_willThrow();
    sub_D37C();

    return v20();
  }
}

uint64_t sub_D6D74()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 144) = v3;

  v4 = sub_D388();

  return _swift_task_switch(v4);
}

uint64_t sub_D6E5C()
{
  v1 = sub_8A268(v0[18]);
  v0[19] = v1;

  v2 = v0[12];
  if (v1)
  {
    sub_16A9A4();
    sub_D9298();
    sub_D9230();
    sub_386D8(v3, v4, v5, v6, v7, v8, 72, v9, 0x800000000018B6D0);
    sub_D8400(v2 + 16, (v0 + 7));
    if (v0[10])
    {
      sub_D9240();
      v10 = swift_task_alloc();
      v0[20] = v10;
      *v10 = v0;
      v10[1] = sub_D7098;
      v11 = v0[16];

      return sub_A6BA4(v1, v11, 0, 0xF000000000000000, 0xD000000000000048);
    }

    v13 = v0[16];
    sub_D8470((v0 + 7));
    sub_16A9A4();
    sub_D9298();
    sub_D9230();
    sub_386D8(v20, v21, v22, v23, v24, v25, 75, v26, 0x800000000018B560);
    v27 = sub_3CC14();
    sub_77030(&type metadata for DigitalCarKeyError, v27);
    *v28 = xmmword_170840;
    swift_willThrow();
  }

  else
  {
    v13 = v0[16];
    type metadata accessor for PKCarFunction(0);
    v15 = sub_D92A4(v14);
    v17 = v16;
    v18 = sub_3CC14();
    sub_77030(&type metadata for DigitalCarKeyError, v18);
    *v19 = v15;
    v19[1] = v17;
    swift_willThrow();
  }

  sub_D37C();

  return v29();
}

uint64_t sub_D7098()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 168) = v0;

  if (v0)
  {
    v7 = sub_D725C;
  }

  else
  {
    v7 = sub_D7194;
  }

  return _swift_task_switch(v7);
}

uint64_t sub_D7194()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = (*sub_D084(v0 + 2, v0[5]) + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin17CarKeyPassManager_carKeySessionService);
  v4 = v3[3];
  v5 = v3[4];
  sub_D084(v3, v4);
  (*(v5 + 24))(v4, v5);

  sub_D13C(v0 + 2);
  sub_D37C();

  return v6();
}

uint64_t sub_D725C()
{
  sub_D2DC();
  v1 = *(v0 + 152);

  sub_D13C((v0 + 16));
  sub_D37C();

  return v2();
}

uint64_t sub_D72C8()
{
  sub_D2DC();
  *(v1 + 96) = v0;
  v2 = swift_task_alloc();
  *(v1 + 104) = v2;
  *v2 = v1;
  v2[1] = sub_D7354;

  return sub_D5D4C();
}

uint64_t sub_D7354()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 112) = v3;

  v4 = sub_D388();

  return _swift_task_switch(v4);
}

uint64_t sub_D743C()
{
  v1 = sub_8A268(v0[14]);
  v0[15] = v1;

  if (v1)
  {
    sub_D8400(v0[12] + 16, (v0 + 7));
    if (v0[10])
    {
      sub_D9240();
      v2 = swift_task_alloc();
      v0[16] = v2;
      *v2 = v0;
      v3 = sub_D9284(v2);

      return sub_A5FD8(v3, v4);
    }

    sub_D8470((v0 + 7));
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v6 = sub_16A584();
    sub_9DA0(v6, qword_1E65C0);
    sub_16A9A4();
    sub_D9270();
    sub_386D8(v8, 0x20000uLL, v7 + 80, 0x800000000018B3D0, v9, v10, 89, 0xD000000000000046, 0x800000000018B5B0);
  }

  sub_30AEC();

  return v11(0);
}

uint64_t sub_D75E8()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 136) = v3;

  v4 = sub_D388();

  return _swift_task_switch(v4);
}

uint64_t sub_D76D0()
{
  sub_D2DC();
  v1 = *(v0 + 136);

  if (v1)
  {
  }

  sub_D13C((v0 + 16));
  sub_30AEC();

  return v2(v1 != 0);
}

uint64_t sub_D774C()
{
  sub_D2DC();
  *(v1 + 96) = v0;
  v2 = swift_task_alloc();
  *(v1 + 104) = v2;
  *v2 = v1;
  v2[1] = sub_D77D8;

  return sub_D5D4C();
}

uint64_t sub_D77D8()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 112) = v3;

  v4 = sub_D388();

  return _swift_task_switch(v4);
}

uint64_t sub_D78C0()
{
  v1 = sub_8A268(v0[14]);
  v0[15] = v1;

  if (v1)
  {
    sub_D8400(v0[12] + 16, (v0 + 7));
    if (v0[10])
    {
      sub_D9240();
      v2 = swift_task_alloc();
      v0[16] = v2;
      *v2 = v0;
      v3 = sub_D9284(v2);

      return sub_A5FD8(v3, v4);
    }

    sub_D8470((v0 + 7));
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v12 = sub_16A584();
    sub_9DA0(v12, qword_1E65C0);
    sub_16A9A4();
    sub_D9270();
    sub_386D8(v14, 0x20000uLL, v13 + 78, 0x800000000018B3D0, v15, v16, 102, 0xD000000000000048, 0x800000000018B560);
    type metadata accessor for PKCarFunction(0);
    v18 = sub_D92A4(v17);
    v20 = v19;
    v21 = sub_3CC14();
    sub_77030(&type metadata for DigitalCarKeyError, v21);
    *v22 = v18;
    v22[1] = v20;
    swift_willThrow();
  }

  else
  {
    type metadata accessor for PKCarFunction(0);
    v7 = sub_D92A4(v6);
    v9 = v8;
    v10 = sub_3CC14();
    sub_77030(&type metadata for DigitalCarKeyError, v10);
    *v11 = v7;
    v11[1] = v9;
    swift_willThrow();
  }

  sub_30AEC();

  return v23(0);
}

uint64_t sub_D7AEC()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 136) = v3;

  v4 = sub_D388();

  return _swift_task_switch(v4);
}

void sub_D7BD4()
{
  v1 = v0[17];
  if (v1)
  {
    v2 = 0;
    v3 = *(v0[12] + 112);
    v4 = *(v3 + 16);
    while (1)
    {
      v5 = v2;
      if (v4 == v2)
      {
        v13 = (*sub_D084(v17 + 2, v17[5]) + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin17CarKeyPassManager_carKeySessionService);
        v14 = v13[3];
        v15 = v13[4];
        sub_D084(v13, v14);
        (*(v15 + 24))(v14, v15);
LABEL_9:
        v16 = v17[15];

        sub_D13C(v17 + 2);
        sub_30AEC();
        v12 = v4 != v5;
        goto LABEL_10;
      }

      if (v2 >= *(v3 + 16))
      {
        break;
      }

      ++v2;
      v6 = *(v3 + 32 + 8 * v5);
      sub_16484(0, &qword_1EB640, NSObject_ptr);
      v7 = [objc_allocWithZone(NSNumber) initWithInteger:v6];
      LOBYTE(v6) = sub_16AAD4();

      if (v6)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = v0[15];
    v9 = sub_3CC14();
    sub_77030(&type metadata for DigitalCarKeyError, v9);
    *v10 = 0;
    v10[1] = 0;
    swift_willThrow();

    sub_D13C(v0 + 2);
    sub_30AEC();
    v12 = 0;
LABEL_10:

    v11(v12);
  }
}

BOOL sub_D7D9C(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a1 + 16);
  v5 = a1 + 32;
  v23 = a2 & 0xC000000000000001;
  v6 = a2 + 56;
  v22 = v4;
  v21 = a1 + 32;
  while (1)
  {
    v7 = v3;
    if (v3 == v4)
    {
      break;
    }

    v8 = *(v5 + 8 * v3++);
    v9 = [objc_allocWithZone(NSNumber) initWithInteger:v8];
    if (v23)
    {
      v10 = sub_16AC44();

      if (v10)
      {
LABEL_12:
        sub_16ACF4(68);
        v24._countAndFlagsBits = 0xD000000000000015;
        v24._object = 0x800000000018B4C0;
        sub_16A744(v24);
        type metadata accessor for PKCarFunction(0);
        sub_16AD84();
        v25._countAndFlagsBits = 0xD00000000000002DLL;
        v25._object = 0x800000000018B4E0;
        sub_16A744(v25);
        if (qword_1E58E8 != -1)
        {
          sub_9ED4(&qword_1E58E8);
        }

        v16 = sub_16A584();
        sub_9DA0(v16, qword_1E65C0);
        v17 = sub_16A9A4();
        sub_386D8(v17, 0x20000uLL, 0xD000000000000096, 0x800000000018B3D0, 0xD000000000000043, 0x800000000018B470, 123, 0, 0xE000000000000000);

        return v7 != v4;
      }
    }

    else
    {
      if (*(a2 + 16))
      {
        sub_16484(0, &qword_1E6310, NSNumber_ptr);
        v11 = sub_16AAC4(*(a2 + 40));
        v12 = ~(-1 << *(a2 + 32));
        while (1)
        {
          v13 = v11 & v12;
          if (((*(v6 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
          {
            break;
          }

          v14 = *(*(a2 + 48) + 8 * v13);
          v15 = sub_16AAD4();

          v11 = v13 + 1;
          if (v15)
          {

            v4 = v22;
            goto LABEL_12;
          }
        }
      }

      v4 = v22;
      v5 = v21;
    }
  }

  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v19 = sub_16A584();
  sub_9DA0(v19, qword_1E65C0);
  v20 = sub_16A9A4();
  sub_386D8(v20, 0x20000uLL, 0xD000000000000096, 0x800000000018B3D0, 0xD000000000000043, 0x800000000018B470, 128, 0xD000000000000046, 0x800000000018B510);
  return v7 != v4;
}

uint64_t sub_D80C8()
{
  sub_D8470(v0 + 16);
  sub_D13C((v0 + 56));

  return v0;
}

uint64_t sub_D8108()
{
  sub_D80C8();

  return _swift_deallocClassInstance(v0, 136, 7);
}

uint64_t sub_D8160()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1039C;

  return sub_D6578();
}

uint64_t sub_D81F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_9EDAC;

  return sub_D774C();
}

uint64_t sub_D8288()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_D8318;

  return sub_D72C8();
}

uint64_t sub_D8318()
{
  sub_D2DC();
  v2 = v1;
  sub_D358();
  v3 = *v0;
  sub_D254();
  *v4 = v3;

  sub_30AEC();

  return v5(v2);
}

uint64_t sub_D8400(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1EAFA0, &qword_175890);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_D8470(uint64_t a1)
{
  v2 = sub_5758(&qword_1EAFA0, &qword_175890);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t *sub_D84D8(uint64_t a1, Swift::Int a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a1 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (v4)
    {
      if (a2 >= 0)
      {
        v2 = a2 & 0xFFFFFFFFFFFFFF8;
      }

      v5 = sub_16AC04();
      a2 = sub_8FB48(v2, v5);
      a1 = v3;
      goto LABEL_7;
    }

    sub_16484(0, &qword_1E6310, NSNumber_ptr);
    sub_16ABC4();
LABEL_11:
    while (sub_16AC34())
    {
      swift_dynamicCast();
      if (*(v3 + 16))
      {
        v7 = sub_16AAC4(*(v3 + 40));
        v8 = ~(-1 << *(v3 + 32));
        while (1)
        {
          v9 = v7 & v8;
          if (((*(v3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
          {
            break;
          }

          v10 = *(*(v3 + 48) + 8 * v9);
          v11 = sub_16AAD4();

          v7 = v9 + 1;
          if (v11)
          {
            if (*(&_swiftEmptySetSingleton + 3) <= *(&_swiftEmptySetSingleton + 2))
            {
              sub_8FD24();
            }

            sub_902DC(v12, &_swiftEmptySetSingleton);
            goto LABEL_11;
          }
        }
      }
    }

    return &_swiftEmptySetSingleton;
  }

  else
  {
    if (v4)
    {
LABEL_7:

      return sub_D86E8(a1, a2);
    }

    return sub_D8888(a1, a2);
  }
}

void *sub_D86E8(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v12[0] = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v12[3] = v12;
  v12[4] = a2;
  v5 = ((1 << v4) + 63) >> 6;
  if (v4 & 0x3Fu) <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    __chkstk_darwin(isStackAllocationSafe);
    v6 = (&v12[-1] - ((8 * v5 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_90A58(0, v5, v6);
    sub_D8A50(v6, v5, v3, a2);
    v8 = v7;
  }

  else
  {
    v10 = swift_slowAlloc();
    v8 = sub_D8DD0(v10, v5, sub_D9214);
  }

  return v8;
}

unint64_t *sub_D8888(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    v8 = (&v13 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_90A58(0, v6, v8);
    sub_D8E4C(v8, v6, a2, a1);
    v10 = v9;
  }

  else
  {
    v12 = swift_slowAlloc();

    v10 = sub_D8D40(v12, v6, a2, a1);
  }

  return v10;
}

void sub_D8A50(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_16ABC4();
    sub_16484(0, &qword_1E6310, NSNumber_ptr);
    sub_A7318();
    sub_16A944();
    v4 = v36;
    v5 = v37;
    v6 = v38;
    v7 = v39;
    v8 = v40;
  }

  else
  {
    v9 = -1 << *(a3 + 32);
    v5 = a3 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a3 + 56);

    v7 = 0;
  }

  v30 = 0;
  v12 = (v6 + 64) >> 6;
  v32 = v5;
  v33 = v4;
  while (1)
  {
    v13 = v7;
    v14 = v8;
LABEL_9:
    if (v4 < 0)
    {
      if (!sub_16AC34())
      {
        goto LABEL_28;
      }

      sub_16484(0, &qword_1E6310, NSNumber_ptr);
      swift_dynamicCast();
      v18 = v41;
      v7 = v13;
      v17 = v14;
      if (!v41)
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }

    v15 = v13;
    v16 = v14;
    v7 = v13;
    if (!v14)
    {
      break;
    }

LABEL_14:
    v17 = (v16 - 1) & v16;
    v18 = *(*(v4 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v18)
    {
      goto LABEL_28;
    }

LABEL_18:
    v34 = v17;
    v19 = sub_16AAC4(*(a4 + 40));
    v20 = ~(-1 << *(a4 + 32));
    do
    {
      v21 = v19 & v20;
      v22 = (v19 & v20) >> 6;
      v23 = 1 << (v19 & v20);
      if ((v23 & *(a4 + 56 + 8 * v22)) == 0)
      {

        v13 = v7;
        v4 = v33;
        v14 = v34;
        v12 = (v6 + 64) >> 6;
        v5 = v32;
        goto LABEL_9;
      }

      sub_16484(0, &qword_1E6310, NSNumber_ptr);
      v24 = *(*(a4 + 48) + 8 * v21);
      v25 = sub_16AAD4();

      v19 = v21 + 1;
    }

    while ((v25 & 1) == 0);

    v12 = (v6 + 64) >> 6;
    v26 = a1[v22];
    a1[v22] = v26 | v23;
    v4 = v33;
    v8 = v34;
    v14 = v34;
    v27 = (v26 & v23) == 0;
    v13 = v7;
    v5 = v32;
    if (!v27)
    {
      goto LABEL_9;
    }

    if (__OFADD__(v30++, 1))
    {
      __break(1u);
LABEL_28:
      sub_4A004(v4);

      sub_933A0(a1, a2, v30, a4);
      return;
    }
  }

  while (1)
  {
    v7 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_28;
    }

    v16 = *(v5 + 8 * v7);
    ++v15;
    if (v16)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

unint64_t *sub_D8D40(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_D8E4C(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void *sub_D8DD0(void *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, void *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    result = a3(&v7, v6, a2);
    if (!v3)
    {
      return v7;
    }
  }

  return result;
}

void sub_D8E4C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v49 = 0;
    v25 = 0;
    v42 = a3 + 56;
    v26 = 1 << *(a3 + 32);
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v28 = v27 & *(a3 + 56);
    v29 = (v26 + 63) >> 6;
    v30 = a4 + 56;
    v45 = v29;
LABEL_24:
    while (v28)
    {
      v31 = __clz(__rbit64(v28));
      v51 = (v28 - 1) & v28;
LABEL_31:
      v48 = v31 | (v25 << 6);
      v34 = *(v4 + 40);
      v35 = *(*(v5 + 48) + 8 * v48);
      v36 = sub_16AAC4(v34);
      v37 = ~(-1 << *(v4 + 32));
      do
      {
        v38 = v36 & v37;
        if (((*(v30 + (((v36 & v37) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v36 & v37)) & 1) == 0)
        {

          v4 = a4;
          v29 = v45;
          v28 = v51;
          goto LABEL_24;
        }

        sub_16484(0, &qword_1E6310, NSNumber_ptr);
        v39 = *(*(a4 + 48) + 8 * v38);
        v40 = sub_16AAD4();

        v36 = v38 + 1;
      }

      while ((v40 & 1) == 0);

      *(a1 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
      v28 = v51;
      v24 = __OFADD__(v49++, 1);
      v4 = a4;
      v29 = v45;
      if (v24)
      {
        goto LABEL_42;
      }
    }

    v32 = v25;
    while (1)
    {
      v25 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v25 >= v29)
      {
LABEL_38:

        sub_933A0(a1, a2, v49, v5);
        return;
      }

      v33 = *(v42 + 8 * v25);
      ++v32;
      if (v33)
      {
        v31 = __clz(__rbit64(v33));
        v51 = (v33 - 1) & v33;
        goto LABEL_31;
      }
    }
  }

  else
  {
    v6 = 0;
    v41 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v49 = 0;
    v50 = a3 + 56;
    v44 = v10;
LABEL_6:
    while (v9)
    {
      v11 = __clz(__rbit64(v9));
      v47 = (v9 - 1) & v9;
LABEL_13:
      v14 = *(v5 + 40);
      v15 = *(*(v4 + 48) + 8 * (v11 | (v6 << 6)));
      v16 = sub_16AAC4(v14);
      v17 = v5;
      v18 = ~(-1 << *(v5 + 32));
      do
      {
        v19 = v16 & v18;
        v20 = (v16 & v18) >> 6;
        v21 = 1 << (v16 & v18);
        if ((v21 & *(v50 + 8 * v20)) == 0)
        {

          v5 = v17;
          v4 = a4;
          v10 = v44;
          v9 = v47;
          goto LABEL_6;
        }

        sub_16484(0, &qword_1E6310, NSNumber_ptr);
        v22 = *(*(v17 + 48) + 8 * v19);
        v23 = sub_16AAD4();

        v16 = v19 + 1;
      }

      while ((v23 & 1) == 0);

      v10 = v44;
      a1[v20] |= v21;
      v9 = v47;
      v24 = __OFADD__(v49++, 1);
      v5 = v17;
      v4 = a4;
      if (v24)
      {
        goto LABEL_41;
      }
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_38;
      }

      v13 = *(v41 + 8 * v6);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v47 = (v13 - 1) & v13;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
}

void sub_D91E4(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_D8A50(a1, a2, *a3, a4);
  if (!v5)
  {
    *a5 = v7;
  }
}

uint64_t sub_D92A4(uint64_t a1)
{

  return sub_16A7E4();
}

id sub_D9368(char a1)
{
  if (CarCommandsUseCase.rawValue.getter(a1) == 0x434178614D746573 && v3 == 0xE800000000000000)
  {

LABEL_13:
    result = [v1 hasMaxACOn];
    if (!result)
    {
      return result;
    }

    if (([v1 maxACOnInvalid] & 1) == 0)
    {
      v10 = &selRef_maxACOnDisabled;
      return ([v1 *v10] ^ 1);
    }

    return 0;
  }

  v5 = sub_16AE54();

  if (v5)
  {
    goto LABEL_13;
  }

  if (CarCommandsUseCase.rawValue.getter(a1) == 0x616D696C43746573 && v6 == 0xEA00000000006574)
  {
  }

  else
  {
    v8 = sub_16AE54();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  result = [v1 hasHvacOn];
  if (result)
  {
    result = [v1 hasCompressorOn];
    if (result)
    {
      if (([v1 compressorOnInvalid] & 1) == 0 && (objc_msgSend(v1, "compressorOnDisabled") & 1) == 0)
      {
        v10 = &selRef_hvacOnInvalid;
        return ([v1 *v10] ^ 1);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_D9524()
{
  v1 = [objc_allocWithZone(NSNumberFormatter) init];
  [v1 setMaximumFractionDigits:1];
  v2 = [v1 stringFromNumber:v0];
  if (v2)
  {
    v3 = v2;
    v4 = sub_16A664();
  }

  else
  {

    return 0;
  }

  return v4;
}

uint64_t sub_D95C4(char a1)
{
  if (a1)
  {
    return 0x736C616E676973;
  }

  else
  {
    return 0x656D614E726163;
  }
}

void *sub_D95F4(void *a1, uint64_t a2, void *a3)
{
  objc_opt_self();
  sub_DB250();
  if (swift_dynamicCastObjCClass())
  {
    sub_DB25C();
    sub_83D98();
    sub_DB268();
    if (a2 != 2)
    {
      return a3;
    }

    return &stru_B8 + 64;
  }

  sub_16A524();
  sub_DB250();
  if (!swift_dynamicCastClass())
  {
    sub_16A4A4();
    sub_DB250();
    if (swift_dynamicCastClass())
    {
      sub_DB25C();
      sub_83D98();
      sub_DB268();
      if (a2 != 2)
      {
        return (a3 | 0x20);
      }

      return &stru_B8 + 64;
    }

    objc_opt_self();
    sub_DB250();
    if (swift_dynamicCastObjCClass())
    {
      v6._rawValue = &off_1D2C38;
      v14._countAndFlagsBits = a2;
      v14._object = a3;
      v7 = sub_16ADE4(v6, v14);

      if (!v7)
      {
        return &stru_68 + 56;
      }

      return &stru_B8 + 64;
    }

    objc_opt_self();
    sub_DB250();
    if (swift_dynamicCastObjCClass())
    {
      v8._rawValue = &off_1D2C70;
      v15._countAndFlagsBits = a2;
      v15._object = a3;
      v9 = sub_16ADE4(v8, v15);

      if (!v9)
      {
        return &stru_68 + 57;
      }

      return &stru_B8 + 64;
    }

    objc_opt_self();
    sub_DB250();
    if (swift_dynamicCastObjCClass())
    {
      sub_DB25C();
      sub_83D98();
      sub_DB268();
      if (a2 != 2)
      {
        return (a3 | 0x30);
      }

      return &stru_B8 + 64;
    }

    sub_16A3B4();
    sub_DB250();
    if (swift_dynamicCastClass())
    {
      sub_DB25C();
      sub_D9ADC();
      sub_DB268();
      if (a2 == 3)
      {
        return &stru_B8 + 64;
      }

      v10 = 80;
    }

    else
    {
      sub_16A384();
      sub_DB250();
      if (swift_dynamicCastClass())
      {
        sub_DB25C();
        sub_83D98();
        sub_DB268();
        if (a2 != 2)
        {
          return (a3 | 0x40);
        }

        return &stru_B8 + 64;
      }

      sub_16A484();
      sub_DB250();
      if (swift_dynamicCastClass())
      {
        v11._rawValue = &off_1D2DB0;
        v16._countAndFlagsBits = a2;
        v16._object = a3;
        v12 = sub_16ADE4(v11, v16);

        if (!v12)
        {
          return &stru_68 + 58;
        }

        return &stru_B8 + 64;
      }

      sub_16A494();
      sub_DB250();
      if (swift_dynamicCastClass())
      {
        sub_DB25C();
        sub_83D98();
        sub_DB268();
        if (a2 != 2)
        {
          return (a3 | 0x60);
        }

        return &stru_B8 + 64;
      }

      sub_16A3C4();
      sub_DB250();
      if (swift_dynamicCastClass())
      {
        sub_DB25C();
        sub_D9BB4();
        sub_DB268();
        if (a2 != 6)
        {
          return (a3 | 0xFFFFFF80);
        }

        return &stru_B8 + 64;
      }

      sub_16A404();
      sub_DB250();
      if (!swift_dynamicCastClass())
      {

        return &stru_B8 + 64;
      }

      sub_DB25C();
      sub_D9CE0();
      sub_DB268();
      if (a2 == 3)
      {
        return &stru_B8 + 64;
      }

      v10 = -112;
    }

    return (a3 | v10);
  }

  sub_DB25C();
  sub_83D98();
  sub_DB268();
  if (a2 == 2)
  {
    return &stru_B8 + 64;
  }

  return (a3 | 0x10);
}