uint64_t sub_118D94()
{
  v1 = v0;
  v2 = sub_16A164();
  __chkstk_darwin(v2 - 8);
  sub_A138();
  v3 = sub_5758(&qword_1ED838, &qword_17B8D0);
  sub_37404();
  v41 = v4;
  v6 = __chkstk_darwin(v5);
  v40 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = v39 - v8;
  if (qword_1E5908 != -1)
  {
    sub_48134(&qword_1E5908);
  }

  v10 = qword_1F0C70;
  v47 = type metadata accessor for WalletService();
  v48 = &off_1D7C28;
  *&v46 = v10;
  type metadata accessor for CarCommandsCATs(0);

  sub_16A154();
  sub_16A094();
  sub_16528C();

  sub_D13C(&v46);
  sub_1693F4();
  v11 = type metadata accessor for FeatureFlagHelper();
  v12 = swift_allocObject();
  v13 = sub_168E34();
  sub_483C8(v13);

  v14 = sub_168E24();
  type metadata accessor for SnippetManager();
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v16 = sub_11A064(&v46, v12, 2, v14, v15);

  v45[0] = v16;
  v17 = swift_allocObject();
  swift_weakInit();
  sub_10824(v1 + 72, &v46);
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  sub_D124(&v46, v18 + 24);
  type metadata accessor for SetClimateStatusConfirmIntentFlowStrategy(0);
  sub_11A390(&qword_1ED840, 255, type metadata accessor for SetClimateStatusConfirmIntentFlowStrategy, &unk_16D808);
  sub_168854();
  v20 = v19;

  sub_1688A4();

  sub_1693F4();
  v21 = swift_allocObject();
  swift_allocObject();

  sub_168E24();
  v45[3] = v11;
  v45[4] = &off_1D9AF0;
  v45[0] = v21;
  v22 = type metadata accessor for SetClimateStatusHandleIntentFlowStrategy(0);
  v23 = sub_483C8(v22);
  sub_2F8D0(v45, v11);
  v39[1] = v39;
  sub_37404();
  __chkstk_darwin(v24);
  sub_A138();
  v26 = sub_11A3F0(v25);
  v27(v26);
  v28 = *v20;
  v44[3] = v11;
  v44[4] = &off_1D9AF0;
  v44[0] = v28;
  *(v23 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin40SetClimateStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler) = 0;
  sub_10824(&v46, v43);
  sub_10824(v44, v42);
  sub_2F8D0(v42, v42[3]);
  sub_37404();
  __chkstk_darwin(v29);
  sub_A138();
  v31 = sub_11A3F0(v30);
  v32(v31);

  sub_1668CC();
  v34 = v33;
  sub_D13C(&v46);
  sub_D13C(v44);
  sub_D13C(v42);
  sub_D13C(v45);

  *&v46 = v34;
  sub_11A390(&qword_1ED848, 255, type metadata accessor for SetClimateStatusHandleIntentFlowStrategy, &unk_173538);
  sub_1687E4();

  sub_168884();
  v35 = v41;
  (*(v41 + 16))(v40, v9, v3);
  v36 = sub_5758(&qword_1ED850, &qword_178AF0);
  sub_483C8(v36);
  v37 = sub_168914();
  (*(v35 + 8))(v9, v3);
  return v37;
}

uint64_t sub_1193B8(uint64_t a1, uint64_t a2, void *a3)
{
  sub_5758(&qword_1E62D8, &qword_16D898);
  v4 = sub_1690A4();
  v5 = [v4 isSetCarActivationStatusRequest];

  if (v5)
  {
    v6 = [v5 BOOLValue];

    if (v6)
    {
      if (qword_1E58E8 != -1)
      {
        swift_once();
      }

      v7 = sub_16A584();
      sub_9DA0(v7, qword_1E65C0);
      v8 = sub_16A9A4();
      sub_386D8(v8, 0x4002uLL, 0xD000000000000087, 0x800000000018F2A0, 0xD000000000000012, 0x8000000000188A30, 56, 0xD00000000000005ELL, 0x800000000018F3E0);
LABEL_15:
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v22 = *(Strong + 112);

        *(v22 + 16) = 0;
      }

      return 1;
    }
  }

  v9 = sub_1690A4();
  v10 = [v9 enabled];

  if (v10)
  {
    v11 = [v10 BOOLValue];

    if (v11)
    {
      v12 = a3[3];
      v13 = a3[4];
      sub_D084(a3, v12);
      if ((sub_E2B40(v12, v13) & 1) == 0)
      {
        v17 = a3[3];
        v18 = a3[4];
        sub_D084(a3, v17);
        sub_E2B68(v17, v18);
        if (qword_1E58E8 != -1)
        {
          swift_once();
        }

        v19 = sub_16A584();
        sub_9DA0(v19, qword_1E65C0);
        v20 = sub_16A9A4();
        sub_386D8(v20, 0x4002uLL, 0xD000000000000087, 0x800000000018F2A0, 0xD000000000000012, 0x8000000000188A30, 63, 0xD00000000000004CLL, 0x800000000018F390);
        goto LABEL_15;
      }
    }
  }

  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v14 = sub_16A584();
  sub_9DA0(v14, qword_1E65C0);
  v15 = sub_16A9A4();
  sub_386D8(v15, 0x4002uLL, 0xD000000000000087, 0x800000000018F2A0, 0xD000000000000012, 0x8000000000188A30, 68, 0xD000000000000050, 0x800000000018F330);
  return 0;
}

uint64_t sub_119718()
{

  sub_D13C((v0 + 32));
  sub_D13C((v0 + 72));

  return v0;
}

uint64_t sub_119758()
{
  sub_119718();

  return _swift_deallocClassInstance(v0, 128, 7);
}

uint64_t sub_1197B0(uint64_t a1, uint64_t a2)
{
  result = sub_11A390(&qword_1ED820, a2, type metadata accessor for SetClimateRCHFlowStrategy, &unk_178990);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_119820()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_7971C;

  return sub_1188FC();
}

uint64_t sub_1198B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SetClimateRCHFlowStrategy();

  return RCHFlowStrategyAsync.makeParameterMetadata(intent:)(a1, v5, a3);
}

uint64_t sub_119924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for SetClimateRCHFlowStrategy();
  *v10 = v5;
  v10[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)(a1, a2, a3, v11, a5);
}

uint64_t sub_1199F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for SetClimateRCHFlowStrategy();
  *v10 = v5;
  v10[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)(a1, a2, a3, v11, a5);
}

uint64_t sub_119ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for SetClimateRCHFlowStrategy();
  *v10 = v5;
  v10[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)(a1, a2, a3, v11, a5);
}

uint64_t sub_119B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for SetClimateRCHFlowStrategy();
  *v12 = v6;
  v12[1] = sub_6F428;

  return ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)(a1, a2, a3, a4, v13, a6);
}

uint64_t sub_119C64()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_6F850;

  return sub_40AF4();
}

uint64_t sub_119D3C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_79DCC;

  return sub_465E0();
}

uint64_t sub_119E88(uint64_t a1, uint64_t a2)
{
  result = sub_11A390(&qword_1ED828, a2, type metadata accessor for SetClimateRCHFlowStrategy, &unk_1789C8);
  *(a1 + 8) = result;
  return result;
}

id sub_119F28(uint64_t a1)
{
  v2 = type metadata accessor for WalletService();
  v15[3] = v2;
  v15[4] = &off_1D7C28;
  v15[0] = a1;
  v3 = type metadata accessor for SESetClimateStatusIntentHandler();
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
  sub_10824(v14, v4 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin31SESetClimateStatusIntentHandler_carKeyService);
  v13.receiver = v4;
  v13.super_class = v3;
  v11 = objc_msgSendSuper2(&v13, "init");
  sub_D13C(v14);
  sub_D13C(v15);
  return v11;
}

uint64_t sub_11A064(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_16A164();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for FeatureFlagHelper();
  v27[3] = v8;
  v27[4] = &off_1D9AF0;
  v27[0] = a2;
  type metadata accessor for SetClimateStatusConfirmIntentFlowStrategy(0);
  v9 = swift_allocObject();
  v10 = sub_2F8D0(v27, v8);
  __chkstk_darwin(v10);
  v12 = (v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = *v12;
  v26[3] = v8;
  v26[4] = &off_1D9AF0;
  v26[0] = v14;
  v15 = (v9 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin41SetClimateStatusConfirmIntentFlowStrategy_commonPatterns);
  v16 = type metadata accessor for CarCommandsCATPatternsExecutor(0);
  sub_16A154();
  v17 = sub_16A094();
  v15[3] = v16;
  v15[4] = &off_1DA7E8;
  *v15 = v17;
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

uint64_t sub_11A30C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_11A344()
{

  sub_D13C((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_11A390(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void *sub_11A408(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); ; i = sub_16ADC4())
  {
    result = _swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    v9 = _swiftEmptyArrayStorage;
    sub_16AD54();
    if (i < 0)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        sub_16AD04();
      }

      else
      {
        if (j >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_15;
        }
      }

      sub_11AFE8(a2, &v8);

      sub_16AD34();
      sub_16AD64();
      sub_16AD74();
      sub_16AD44();
      if (v7 == i)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return result;
}

uint64_t sub_11A570()
{
  sub_D2DC();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  sub_168B74();
  v0[5] = sub_D3C8();
  v4 = sub_1691E4();
  sub_11B4B4(v4);
  v0[7] = v5;
  v0[8] = sub_D3C8();
  sub_10B4C();

  return _swift_task_switch(v6);
}

uint64_t sub_11A63C(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_168B34();
  sub_634F4();
  sub_1691A4();
  sub_1691C4();
  sub_D084(v2, v2[3]);
  v3 = swift_task_alloc();
  *(v1 + 72) = v3;
  *v3 = v1;
  v4 = sub_11B498(v3);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v4, v5, v6, v7, v8);
}

uint64_t sub_11A70C()
{
  sub_D2DC();
  sub_D2A4();
  *v3 = v2;
  v4 = *v1;
  sub_D2A4();
  *v5 = v4;
  *(v6 + 80) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_11A810()
{
  sub_D2DC();
  v1 = sub_11B4C8();
  v2(v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_11A888()
{
  sub_D2DC();
  v1 = sub_11B4C8();
  v2(v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_11A904(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_16ADC4();
  }

  else
  {
    return *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }
}

void *sub_11A928(uint64_t a1, int a2)
{
  v37 = a2;
  v3 = sub_5758(&qword_1E6300, &qword_16ECE0);
  v4 = __chkstk_darwin(v3 - 8);
  v36 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v32 - v7;
  __chkstk_darwin(v6);
  v10 = &v32 - v9;
  v11 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v11)
  {
    v42 = _swiftEmptyArrayStorage;
    sub_16AD54();
    v33 = objc_opt_self();
    v13 = (a1 + 40);
    v32 = xmmword_16D9A0;
    v35 = v8;
    v34 = v10;
    do
    {
      v14 = *(v13 - 1);
      v15 = *v13;
      v39 = &type metadata for String;
      v38[0] = v14;
      v38[1] = v15;
      sub_FD2E0(v37);
      v16 = objc_allocWithZone(SKIDirectInvocationPayload);
      swift_bridgeObjectRetain_n();
      v17 = sub_16A644();

      v18 = [v16 initWithIdentifier:v17];

      sub_5758(&qword_1E6350, &unk_177CB0);
      inited = swift_initStackObject();
      *(inited + 16) = v32;
      v40 = 0x79654B65756C6176;
      v41 = 0xE800000000000000;
      sub_16AC84();
      sub_16138(v38, inited + 72);
      v20 = sub_16A5C4();
      sub_FD618(v20, v18);
      sub_D13C(v38);
      v21 = [objc_allocWithZone(SKIDirectInvocationContext) init];
      sub_1693F4();
      v22 = [v33 runSiriKitExecutorCommandWithContext:v21 payload:v18];
      sub_D084(v38, v39);
      sub_168B04();
      if (v23)
      {
        v24 = sub_16A644();
      }

      else
      {
        v24 = 0;
      }

      [v22 setSessionHandOffContinuityID:{v24, v32}];

      sub_D13C(v38);
      sub_16AAE4();
      v26 = v25;

      v27 = v34;
      sub_16A6E4();
      v28 = sub_16A0C4();
      v29 = 1;
      sub_5370(v27, 0, 1, v28);
      v30 = v35;
      if (v26)
      {
        sub_16A6E4();

        v29 = 0;
      }

      sub_5370(v30, v29, 1, v28);
      v31 = v36;
      sub_5370(v36, 1, 1, v28);
      type metadata accessor for TappableCommand(0);
      swift_allocObject();
      sub_6BA1C(v27, v30, v31);

      sub_16AD34();
      sub_16AD64();
      sub_16AD74();
      sub_16AD44();
      v13 += 2;
      --v11;
    }

    while (v11);
    return v42;
  }

  return result;
}

uint64_t sub_11AD48()
{
  sub_D2DC();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  sub_168B74();
  v0[5] = sub_D3C8();
  v4 = sub_1691E4();
  sub_11B4B4(v4);
  v0[7] = v5;
  v0[8] = sub_D3C8();
  sub_10B4C();

  return _swift_task_switch(v6);
}

uint64_t sub_11AE14(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_168B34();
  sub_634F4();
  sub_1691A4();
  sub_1691C4();
  sub_D084(v2, v2[3]);
  v3 = swift_task_alloc();
  *(v1 + 72) = v3;
  *v3 = v1;
  v4 = sub_11B498(v3);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v4, v5, v6, v7, v8);
}

uint64_t sub_11AEE4()
{
  sub_D2DC();
  sub_D2A4();
  *v3 = v2;
  v4 = *v1;
  sub_D2A4();
  *v5 = v4;
  *(v6 + 80) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_11AFE8@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v47 = a3;
  v4 = sub_5758(&qword_1E6300, &qword_16ECE0);
  v5 = __chkstk_darwin(v4 - 8);
  v46 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v45 = v41 - v8;
  __chkstk_darwin(v7);
  v44 = v41 - v9;
  v42 = sub_168454();
  v10 = *(v42 - 8);
  __chkstk_darwin(v42);
  v12 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_16A0C4();
  v49 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v41[0] = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v41 - v16;
  v18 = sub_16A1B4();
  v48[3] = &type metadata for String;
  if (v19)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0;
  }

  v21 = 0xE000000000000000;
  if (v19)
  {
    v21 = v19;
  }

  v48[0] = v20;
  v48[1] = v21;
  v22 = sub_FD1F4(v48, a2);
  sub_D13C(v48);
  v23 = [objc_allocWithZone(SKIDirectInvocationContext) init];
  sub_1693F4();
  v43 = v22;
  v24 = sub_FD41C(v22, v23, v48);
  sub_D13C(v48);
  v41[1] = sub_16AAE4();
  v26 = v25;

  sub_16A6E4();
  sub_169074();
  swift_allocObject();

  sub_169064();
  sub_168444();
  v27 = sub_169054();
  v29 = v28;
  v30 = v49;

  (*(v10 + 8))(v12, v42);
  if (v29)
  {
    v31 = HIBYTE(v29) & 0xF;
    if ((v29 & 0x2000000000000000) == 0)
    {
      v31 = v27 & 0xFFFFFFFFFFFFLL;
    }

    if (v31)
    {
      v32 = v41[0];
      sub_16A6E4();

      (*(v30 + 8))(v17, v13);
      (*(v30 + 32))(v17, v32, v13);
    }

    else
    {
    }
  }

  v33 = v44;
  (*(v30 + 16))(v44, v17, v13);
  v34 = 1;
  sub_5370(v33, 0, 1, v13);
  v35 = v45;
  if (v26)
  {
    sub_16A6E4();

    v34 = 0;
  }

  v36 = v46;
  v37 = 1;
  sub_5370(v35, v34, 1, v13);
  sub_16A1B4();
  if (v38)
  {
    sub_16A6E4();

    v37 = 0;
  }

  sub_5370(v36, v37, 1, v13);
  type metadata accessor for TappableCommand(0);
  swift_allocObject();
  v39 = sub_6BA1C(v33, v35, v36);

  result = (*(v49 + 8))(v17, v13);
  *v47 = v39;
  return result;
}

Swift::Int sub_11B52C()
{
  sub_16AF14();
  sub_16AF24(0);
  return sub_16AF54();
}

Swift::Int sub_11B578()
{
  sub_16AF14();
  sub_16AF24(0);
  return sub_16AF54();
}

uint64_t sub_11B5C0()
{
  v2[3] = &type metadata for ResponseFramework;
  v2[4] = sub_11B634();
  v0 = sub_169444();
  sub_D13C(v2);
  return v0 & 1;
}

unint64_t sub_11B634()
{
  result = qword_1ED8F8;
  if (!qword_1ED8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8F8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ResponseFramework(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x11B724);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_11B760()
{
  result = qword_1ED900;
  if (!qword_1ED900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED900);
  }

  return result;
}

id sub_11B7B4()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 56);
  }

  else
  {
    if (qword_1E5908 != -1)
    {
      sub_48134(&qword_1E5908);
    }

    v4 = sub_11CC54(v3);
    v5 = *(v0 + 56);
    *(v0 + 56) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t sub_11B838(uint64_t a1)
{
  v36 = sub_1693E4();
  sub_37404();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_A138();
  v6 = (v5 - v4);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v7 = sub_16A584();
  v39 = sub_9DA0(v7, qword_1E65C0);
  v8 = sub_16A9A4();
  v44 = 0xD000000000000093;
  v45 = 0x800000000018F4D0;
  v50 = (&stru_20 + 15);
  v51 = 0xE100000000000000;
  sub_D030();
  v9 = sub_16AB34();
  v10 = sub_15AE4(v9);
  v12 = v11;

  if (v12)
  {
    v60._countAndFlagsBits = 32;
    v60._object = 0xE100000000000000;
    sub_16A744(v60);
    v61._countAndFlagsBits = 0xD000000000000016;
    v61._object = 0x800000000017FD50;
    sub_16A744(v61);
    v13 = v10;
    v14 = v12;
  }

  else
  {
    v13 = 0xD000000000000016;
    v14 = 0x800000000017FD50;
  }

  v44 = v13;
  v45 = v14;
  v50 = (&stru_20 + 26);
  v51 = 0xE100000000000000;
  v49 = 26;
  v62._countAndFlagsBits = sub_16AE24();
  sub_16A744(v62);

  v63._countAndFlagsBits = 58;
  v63._object = 0xE100000000000000;
  sub_16A744(v63);

  v15._countAndFlagsBits = sub_378D0(0x2002uLL);
  if (v15._object)
  {
    v50 = &stru_20;
    v51 = 0xE100000000000000;
    sub_16A744(v15);

    v64._countAndFlagsBits = 32;
    v64._object = 0xE100000000000000;
    sub_16A744(v64);
  }

  v16 = v44;
  v17 = v45;
  v18 = sub_16A574();
  if (os_log_type_enabled(v18, v8))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v50 = v20;
    *v19 = 136315138;
    v21 = sub_15BC8(v16, v17, &v50);

    *(v19 + 4) = v21;
    _os_log_impl(&dword_0, v18, v8, "%s", v19, 0xCu);
    sub_D13C(v20);
    sub_D494(v20);
    sub_D494(v19);
  }

  else
  {
  }

  sub_169384();
  sub_8F624(&v44, 10, v22, v23, v24, v25, v26, v27, 0x800000000017FD50, v36, a1, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, &_swiftEmptySetSingleton, v51, v52, v53, v54, v55, v56, v57, v58, v59);
  sub_86E4(v6, v50, &v44);

  (*(v2 + 8))(v6, v37);
  v28 = v47;
  sub_57A80(&v44);
  if (v28)
  {
    return sub_168C64();
  }

  type metadata accessor for CarCommandsError(0);
  sub_11D08C();
  sub_11D044(v30, 255, v31, &unk_17A85C);
  swift_allocError();
  sub_169384();
  swift_storeEnumTagMultiPayload();
  v32 = sub_16A9A4();
  swift_getErrorValue();
  v33 = sub_16AEB4();
  sub_386D8(v32, 0x2000uLL, 0xD000000000000093, 0x800000000018F4D0, 0xD000000000000016, v35, 28, v33, v34);

  return sub_168C74();
}

uint64_t sub_11BCAC()
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

uint64_t sub_11BD88()
{
  sub_D2DC();
  v0[7] = v1;
  v2 = sub_1693E4();
  v0[8] = v2;
  v0[9] = *(v2 - 8);
  v0[10] = swift_task_alloc();

  return _swift_task_switch(sub_11BE44);
}

uint64_t sub_11BE44()
{
  v30 = v0;
  v1 = 0x80000000001888B0;
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v2 = 0xD000000000000029;
  v3 = sub_16A584();
  sub_9DA0(v3, qword_1E65C0);
  v4 = sub_16A9A4();
  v0[2] = 0xD000000000000093;
  v0[3] = 0x800000000018F4D0;
  v0[4] = 47;
  v0[5] = 0xE100000000000000;
  sub_D030();
  v5 = sub_16AB34();
  v6 = sub_15AE4(v5);
  v8 = v7;

  if (v8)
  {
    v32._countAndFlagsBits = 32;
    v32._object = 0xE100000000000000;
    sub_16A744(v32);
    v33._countAndFlagsBits = 0xD000000000000029;
    v33._object = 0x80000000001888B0;
    sub_16A744(v33);
    v2 = v6;
    v1 = v8;
  }

  v29._countAndFlagsBits = 58;
  v29._object = 0xE100000000000000;
  v0[6] = 51;
  v34._countAndFlagsBits = sub_16AE24();
  sub_16A744(v34);

  sub_16A744(v29);

  v9._countAndFlagsBits = sub_378D0(0x2002uLL);
  if (v9._object)
  {
    v29._countAndFlagsBits = 32;
    v29._object = 0xE100000000000000;
    sub_16A744(v9);

    v35._countAndFlagsBits = 32;
    v35._object = 0xE100000000000000;
    sub_16A744(v35);
  }

  v10 = sub_16A574();
  if (os_log_type_enabled(v10, v4))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29._countAndFlagsBits = v12;
    *v11 = 136315138;
    v13 = sub_15BC8(v2, v1, &v29._countAndFlagsBits);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_0, v10, v4, "%s", v11, 0xCu);
    sub_D13C(v12);
    sub_D494(v12);
    sub_D494(v11);
  }

  else
  {
  }

  v15 = v0[9];
  v14 = v0[10];
  v17 = v0[7];
  v16 = v0[8];
  sub_16A384();
  v18 = *(v15 + 16);
  v18(v14, v17, v16);
  v19 = sub_5AFEC(v14);
  if (v19)
  {
    v20 = v19;

    v21 = v0[1];

    return v21(v20);
  }

  else
  {
    v24 = v0[7];
    v23 = v0[8];
    type metadata accessor for CarCommandsError(0);
    sub_11D08C();
    sub_11D044(v25, 255, v26, &unk_17A85C);
    swift_allocError();
    v18(v27, v24, v23);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_11C220()
{
  v0 = sub_16A164();
  __chkstk_darwin(v0 - 8);
  sub_A138();
  v1 = sub_5758(&qword_1EDA18, &qword_178E28);
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
  sub_164C14();

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
  v15 = sub_11CD90(v20, v11, 0x2000, v13, v14);

  v20[0] = v15;
  type metadata accessor for GetClimateStatusHandleIntentFlowStrategy(0);
  sub_11D044(&qword_1EDA20, 255, type metadata accessor for GetClimateStatusHandleIntentFlowStrategy, &unk_1733C8);
  sub_1687E4();
  sub_168884();
  (*(v3 + 16))(v7, v9, v1);
  v16 = sub_5758(&qword_1EDA28, &qword_178E30);
  sub_483C8(v16);
  v17 = sub_168914();

  (*(v3 + 8))(v9, v1);
  return v17;
}

uint64_t sub_11C534(uint64_t a1, uint64_t a2)
{
  result = sub_11D044(&qword_1EDA00, a2, type metadata accessor for GetClimateStatusRCHFlowStrategy, &unk_178CD0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_11C5A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_7971C;

  return sub_11BD88();
}

uint64_t sub_11C650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  ClimateStatusRCHFlowStrategy = type metadata accessor for GetClimateStatusRCHFlowStrategy();
  *v10 = v5;
  v10[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)(a1, a2, a3, ClimateStatusRCHFlowStrategy, a5);
}

uint64_t sub_11C71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  ClimateStatusRCHFlowStrategy = type metadata accessor for GetClimateStatusRCHFlowStrategy();
  *v10 = v5;
  v10[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)(a1, a2, a3, ClimateStatusRCHFlowStrategy, a5);
}

uint64_t sub_11C7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  ClimateStatusRCHFlowStrategy = type metadata accessor for GetClimateStatusRCHFlowStrategy();
  *v10 = v5;
  v10[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)(a1, a2, a3, ClimateStatusRCHFlowStrategy, a5);
}

uint64_t sub_11C8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  ClimateStatusRCHFlowStrategy = type metadata accessor for GetClimateStatusRCHFlowStrategy();
  *v12 = v6;
  v12[1] = sub_6F428;

  return ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)(a1, a2, a3, a4, ClimateStatusRCHFlowStrategy, a6);
}

uint64_t sub_11C990()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_6F850;

  return sub_419F8();
}

uint64_t sub_11CA68()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_79DCC;

  return sub_467D8();
}

uint64_t sub_11CBB4(uint64_t a1, uint64_t a2)
{
  result = sub_11D044(&qword_1EDA08, a2, type metadata accessor for GetClimateStatusRCHFlowStrategy, &unk_178D08);
  *(a1 + 8) = result;
  return result;
}

id sub_11CC54(uint64_t a1)
{
  v2 = type metadata accessor for WalletService();
  v15[3] = v2;
  v15[4] = &off_1D7C28;
  v15[0] = a1;
  v3 = type metadata accessor for SEGetClimateStatusIntentHandler();
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
  sub_10824(v14, v4 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin31SEGetClimateStatusIntentHandler_carKeyService);
  v13.receiver = v4;
  v13.super_class = v3;
  v11 = objc_msgSendSuper2(&v13, "init");
  sub_D13C(v14);
  sub_D13C(v15);
  return v11;
}

uint64_t sub_11CD90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_16A164();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for FeatureFlagHelper();
  v27[3] = v8;
  v27[4] = &off_1D9AF0;
  v27[0] = a2;
  type metadata accessor for GetClimateStatusHandleIntentFlowStrategy(0);
  v9 = swift_allocObject();
  v10 = sub_2F8D0(v27, v8);
  __chkstk_darwin(v10);
  v12 = (v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = *v12;
  v26[3] = v8;
  v26[4] = &off_1D9AF0;
  v26[0] = v14;
  v15 = (v9 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin40GetClimateStatusHandleIntentFlowStrategy_commonPatterns);
  v16 = type metadata accessor for CarCommandsCATPatternsExecutor(0);
  sub_16A154();
  v17 = sub_16A094();
  v15[3] = v16;
  v15[4] = &off_1DA7E8;
  *v15 = v17;
  *(v9 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin40GetClimateStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler) = 0;
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

uint64_t sub_11D044(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void *sub_11D0A4(char *a1, char a2)
{
  v4 = v2;
  type metadata accessor for CarCommandsError(0);
  sub_10AFC();
  __chkstk_darwin(v8);
  sub_5A0F8();
  if ((a2 & 0xF0) != 0x90)
  {
    LOBYTE(v43[0]) = a2;
    v13 = sub_16A694();
    sub_11DE3C(v13, v14);
    v15 = sub_11D28();
    sub_5A144(v15);
    sub_548D0(v3, v16);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v17 = sub_16A584();
    sub_9DA0(v17, qword_1E65C0);
    sub_16A9A4();
    swift_getErrorValue();
    sub_16AEB4();
    v18 = sub_11DD90();
    v25 = 17;
    goto LABEL_18;
  }

  sub_86E4(a1, &_swiftEmptySetSingleton, v39);
  if (!v39[3])
  {
    sub_109A0(v39, &qword_1E5F80, &unk_16E7E0);
    v40 = 0u;
    v41 = 0u;
    v42 = 0;
    goto LABEL_15;
  }

  sub_5758(&qword_1E5F90, &qword_170270);
  sub_5758(&qword_1EDA38, &unk_178E50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    goto LABEL_15;
  }

  if (!*(&v41 + 1))
  {
LABEL_15:
    sub_109A0(&v40, &qword_1EDA30, &qword_178E48);
    sub_1693E4();
    sub_10AFC();
    (*(v26 + 16))(v3, a1);
    swift_storeEnumTagMultiPayload();
    v27 = sub_11D28();
    sub_5A144(v27);
    sub_548D0(v3, v28);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v29 = sub_16A584();
    sub_9DA0(v29, qword_1E65C0);
    sub_16A9A4();
    swift_getErrorValue();
    sub_16AEB4();
    v18 = sub_11DD90();
    v25 = 23;
LABEL_18:
    sub_386D8(v18, v19, v20, v21, v22, v23, v25, v24, v38);

    sub_5A09C(v3);
    v30 = v2;
    return v4;
  }

  sub_D124(&v40, v43);
  sub_D084(v43, v43[3]);
  if ((a2 & 0xF) != 0)
  {
    if ((a2 & 0xF) == 1)
    {
      v9 = sub_11DDE4();
      v11 = v10(v9);
      if (v12)
      {
        v11 = [v2 seat];
      }

      [v2 setSeat:v11];
    }

    else
    {
      v35 = sub_11DDE4();
      [v2 setTemperatureChange:v36(v35)];
    }
  }

  else
  {
    v32 = sub_11DDE4();
    v34 = v33(v32);
    if (!v34)
    {
      v34 = [v4 enableSeatTemperature];
    }

    [v4 setEnableSeatTemperature:v34];
  }

  v37 = v4;
  sub_D13C(v43);
  return v4;
}

id sub_11D494(uint64_t a1, char a2)
{
  type metadata accessor for CarCommandsError(0);
  sub_10AFC();
  __chkstk_darwin(v5);
  sub_5A0F8();
  if ((a2 & 0xF0) == 0x90)
  {
    v6 = sub_11DE10();
    if ((a2 & 0xF) != 0)
    {
      if ((a2 & 0xF) == 1)
      {
        v8 = sub_16138(v6, v7);
        if (sub_11DDC4(v8, v9, v10, &type metadata for Int))
        {
          v11 = sub_16A474();
          if ((v12 & 1) == 0)
          {
            [v46 setSeat:v11];
          }
        }

        v13 = sub_11DE10();
        v15 = sub_16138(v13, v14);
        if (sub_11DDC4(v15, v16, v17, &type metadata for IntentSeatType))
        {
          [v46 setSeat:v47];
        }
      }

      else
      {
        v35 = sub_16138(v6, v7);
        if (sub_11DDC4(v35, v36, v37, &type metadata for Int))
        {
          v38 = sub_16A4B4();
          if ((v39 & 1) == 0)
          {
            [v46 setTemperatureChange:v38];
          }
        }

        v40 = sub_11DE10();
        v42 = sub_16138(v40, v41);
        if (sub_11DDC4(v42, v43, v44, &type metadata for IntentTemperatureChange))
        {
          [v46 setTemperatureChange:v47];
        }
      }
    }

    else
    {
      v26 = sub_16138(v6, v7);
      if (sub_11DE1C(v26, v27, v28, &type metadata for Bool))
      {
        v29 = [objc_allocWithZone(NSNumber) initWithBool:v47];
        [v46 setEnableSeatTemperature:v29];
      }

      v30 = sub_11DE10();
      sub_16138(v30, v31);
      v32 = sub_76D10();
      if (sub_11DE1C(v32, v33, v34, v32))
      {
        [v46 setEnableSeatTemperature:v47];
      }
    }
  }

  else
  {
    v18 = sub_16A694();
    sub_11DE3C(v18, v19);
    v20 = sub_11D28();
    sub_5A144(v20);
    sub_548D0(v2, v21);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v22 = sub_16A584();
    sub_9DA0(v22, qword_1E65C0);
    v23 = sub_16A9A4();
    swift_getErrorValue();
    v24 = sub_16AEB4();
    sub_386D8(v23, 0x200000uLL, 0xD0000000000000A9, 0x800000000018F570, 0xD000000000000018, 0x8000000000183260, 64, v24, v25);

    sub_5A09C(v2);
  }

  return v46;
}

id sub_11D794@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  type metadata accessor for CarCommandsError(0);
  sub_10AFC();
  __chkstk_darwin(v7);
  sub_5A0F8();
  if ((a1 & 0xF0) != 0x90)
  {
    *v3 = sub_16A694();
    v3[1] = v10;
    swift_storeEnumTagMultiPayload();
    sub_11D28();
    swift_allocError();
    sub_548D0(v3, v11);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v12 = sub_16A584();
    sub_9DA0(v12, qword_1E65C0);
    v13 = sub_16A9A4();
    swift_getErrorValue();
    v14 = sub_16AEB4();
    sub_386D8(v13, 0x200000uLL, 0xD0000000000000A9, 0x800000000018F570, 0x6F662865756C6176, 0xEB00000000293A72, 80, v14, v15);

    result = sub_5A09C(v3);
    goto LABEL_8;
  }

  if ((a1 & 0xF) == 0)
  {
    result = [v2 enableSeatTemperature];
    if (result)
    {
      v16 = result;
      result = sub_76D10();
      *(a2 + 24) = result;
      *a2 = v16;
      return result;
    }

LABEL_8:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  if ((a1 & 0xF) == 1)
  {
    result = [v2 seat];
    v9 = &type metadata for IntentSeatType;
  }

  else
  {
    result = [v2 temperatureChange];
    v9 = &type metadata for IntentTemperatureChange;
  }

  *(a2 + 24) = v9;
  *a2 = result;
  return result;
}

id sub_11D9C0(char *a1)
{
  v4 = type metadata accessor for CarCommandsError(0);
  sub_10AFC();
  __chkstk_darwin(v5);
  sub_5A0F8();
  sub_86E4(a1, &_swiftEmptySetSingleton, v23);
  if (v23[3])
  {
    v6 = sub_5758(&qword_1E5F90, &qword_170270);
    sub_5758(&qword_1EDA38, &unk_178E50);
    if (swift_dynamicCast())
    {
      if (*(&v25 + 1))
      {
        sub_D124(&v24, v27);
        v7 = [objc_allocWithZone(v1) init];
        sub_11DDF4();
        v8 = *(v4 + 16);
        v9 = v7;
        v10 = v8(v6, v4);
        [v9 setEnableSeatTemperature:v10];

        sub_11DDF4();
        v11 = (*(v4 + 24))(v6, v4);
        if (v12)
        {
          v13 = 0;
        }

        else
        {
          v13 = v11;
        }

        [v9 setSeat:v13];
        sub_11DDF4();
        [v9 setTemperatureChange:{(*(v4 + 32))(v6, v4)}];

        sub_1693E4();
        sub_10AFC();
        (*(v14 + 8))(a1);
        sub_D13C(v27);
        return v9;
      }
    }

    else
    {
      v26 = 0;
      v24 = 0u;
      v25 = 0u;
    }
  }

  else
  {
    sub_109A0(v23, &qword_1E5F80, &unk_16E7E0);
    v24 = 0u;
    v25 = 0u;
    v26 = 0;
  }

  sub_109A0(&v24, &qword_1EDA30, &qword_178E48);
  v15 = sub_1693E4();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v2, a1, v15);
  swift_storeEnumTagMultiPayload();
  sub_11D28();
  swift_allocError();
  sub_548D0(v2, v17);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v18 = sub_16A584();
  sub_9DA0(v18, qword_1E65C0);
  v19 = sub_16A9A4();
  swift_getErrorValue();
  v20 = sub_16AEB4();
  sub_386D8(v19, 0x200000uLL, 0xD0000000000000A9, 0x800000000018F570, 0x293A5F2874696E69, 0xE800000000000000, 88, v20, v21);

  (*(v16 + 8))(a1, v15);
  sub_5A09C(v2);
  return 0;
}

uint64_t sub_11DDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

void *sub_11DDF4()
{
  v2 = *(v0 - 104);

  return sub_D084((v0 - 128), v2);
}

uint64_t sub_11DE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t sub_11DE3C(uint64_t a1, uint64_t a2)
{
  *v2 = a1;
  v2[1] = a2;

  return swift_storeEnumTagMultiPayload();
}

uint64_t type metadata accessor for CarCommandsGetClimateStatusCATsSimple(uint64_t a1)
{
  result = qword_1EDA40;
  if (!qword_1EDA40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_11DEE8(uint64_t a1, char a2, char a3)
{
  *(v4 + 65) = a3;
  *(v4 + 64) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  sub_5758(&qword_1E6300, &qword_16ECE0);
  *(v4 + 32) = swift_task_alloc();

  return _swift_task_switch(sub_11DF8C);
}

uint64_t sub_11DF8C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v3 = swift_allocObject();
  *(v0 + 40) = v3;
  *(v3 + 16) = xmmword_16EE50;
  *(v3 + 32) = 0x656D614E726163;
  *(v3 + 40) = 0xE700000000000000;
  sub_2F868(v2, v1, &qword_1E6300, &qword_16ECE0);
  v4 = sub_16A0C4();
  v5 = sub_9E2C(v1, 1, v4);
  v6 = *(v0 + 32);
  if (v5 == 1)
  {
    sub_D188(*(v0 + 32), &qword_1E6300, &qword_16ECE0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    v7 = sub_10888((v3 + 48));
    (*(*(v4 - 8) + 32))(v7, v6, v4);
  }

  v8 = *(v0 + 65);
  v9 = *(v0 + 64);
  strcpy((v3 + 80), "climateEnabled");
  *(v3 + 95) = -18;
  *(v3 + 96) = v9;
  *(v3 + 120) = &type metadata for Bool;
  *(v3 + 128) = 0xD00000000000001CLL;
  *(v3 + 136) = 0x800000000018F6B0;
  *(v3 + 168) = &type metadata for Bool;
  *(v3 + 144) = v8;
  v12 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v10 = swift_task_alloc();
  *(v0 + 48) = v10;
  *v10 = v0;
  v10[1] = sub_31B04;

  return v12(0xD000000000000038, 0x800000000018F670, v3);
}

uint64_t sub_11E204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_16A164();
  sub_5B1C();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  __chkstk_darwin(v11 - 8);
  sub_2F868(a1, &v15 - v12, &qword_1E5B48, &unk_16DDB0);
  (*(v7 + 16))(v10, a2, v3);
  v13 = sub_16A0D4();
  (*(v7 + 8))(a2, v3);
  sub_D188(a1, &qword_1E5B48, &unk_16DDB0);
  return v13;
}

uint64_t sub_11E380(uint64_t a1, uint64_t a2)
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

uint64_t type metadata accessor for CarCommandsChangeAudioSourceCATsSimple(uint64_t a1)
{
  result = qword_1EDA90;
  if (!qword_1EDA90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_11E568(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_11E6C4(uint64_t a1, uint64_t a2)
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

uint64_t type metadata accessor for CarCommandsGetLockStatusCATs(uint64_t a1)
{
  result = qword_1EDAE0;
  if (!qword_1EDAE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_11E8AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_16A164();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  __chkstk_darwin(v9 - 8);
  sub_57A0(a1, &v13 - v10);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_16A084();
  (*(v6 + 8))(a2, v5);
  sub_5810(a1);
  return v11;
}

unint64_t sub_11EA20(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1D37C0;
  v6._object = a2;
  v4 = sub_16ADE4(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_11EA6C(char a1)
{
  if (!a1)
  {
    return 7562617;
  }

  if (a1 == 1)
  {
    return 28526;
  }

  return 0x6C65636E6163;
}

unint64_t sub_11EAD0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_11EA20(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_11EB00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_11EA6C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for CarCommandsConfirmationNLv3Value(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x11EC08);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_11EC44()
{
  result = qword_1EDB30;
  if (!qword_1EDB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB30);
  }

  return result;
}

uint64_t sub_11EC98(uint64_t a1, uint64_t a2)
{
  v4 = sub_11EE24();
  v5 = sub_11EE78();
  v6 = sub_11EECC();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5, v6);
}

unint64_t sub_11ED10()
{
  result = qword_1EDB38;
  if (!qword_1EDB38)
  {
    sub_37130(&qword_1EDB40, &qword_178F88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB38);
  }

  return result;
}

unint64_t sub_11ED78()
{
  result = qword_1EDB48;
  if (!qword_1EDB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB48);
  }

  return result;
}

unint64_t sub_11EDD0()
{
  result = qword_1EDB50;
  if (!qword_1EDB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB50);
  }

  return result;
}

unint64_t sub_11EE24()
{
  result = qword_1EDB58;
  if (!qword_1EDB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB58);
  }

  return result;
}

unint64_t sub_11EE78()
{
  result = qword_1EDB60;
  if (!qword_1EDB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB60);
  }

  return result;
}

unint64_t sub_11EECC()
{
  result = qword_1EDB68;
  if (!qword_1EDB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB68);
  }

  return result;
}

uint64_t sub_11EF34()
{
  sub_D2DC();
  v1 = [*(v0 + 16) levelRange];
  v2 = [v1 stepValue];

  v3 = *(v0 + 8);

  return v3(v2 != 0);
}

uint64_t CAFDefrost.setActivated(_:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  return sub_D2B0();
}

uint64_t sub_11EFDC()
{
  sub_D2DC();
  if (*(v0 + 24) == 1)
  {
    v1 = [*(v0 + 16) levelRange];
    v2 = [v1 maximumValue];
  }

  else
  {
    v2 = 0;
  }

  [*(v0 + 16) setLevel:v2];
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_11F0A4(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_6F428;

  return CAFDefrost.setActivated(_:)(a1);
}

uint64_t sub_11F13C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_11F1CC;

  return CAFDefrost.isActivated()();
}

uint64_t sub_11F1CC()
{
  sub_D2DC();
  v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;

  v6 = *(v4 + 8);
  if (v0)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3 & 1;
  }

  return v6(v7);
}

uint64_t sub_11F2C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_79DCC;

  return CAFRecirculation.isConnected()();
}

BOOL sub_11F3A4(uint64_t a1)
{
  sub_16A1B4();
  v3._countAndFlagsBits = 0x6C7070612E6D6F63;
  v3._object = 0xEA00000000002E65;
  v1 = sub_16A764(v3);

  return v1;
}

uint64_t sub_11F404(uint64_t a1)
{
  sub_16A1B4();
  if (!v1)
  {
    goto LABEL_32;
  }

  sub_10C060();
  if (v4 == 0xD000000000000012 && v2 == v3)
  {
    goto LABEL_26;
  }

  v6 = sub_16AE54();

  if ((v6 & 1) == 0)
  {
LABEL_32:
    sub_16A1B4();
    if (!v7)
    {
      goto LABEL_13;
    }

    sub_10C060();
    if (v10 == 0xD000000000000029 && v8 == v9)
    {
      goto LABEL_26;
    }

    v12 = sub_16AE54();

    if ((v12 & 1) == 0)
    {
LABEL_13:
      sub_16A1B4();
      if (v13)
      {
        sub_10C060();
        if (v16 == 0xD000000000000016 && v14 == v15)
        {
          goto LABEL_26;
        }

        v18 = sub_16AE54();

        if (v18)
        {
          goto LABEL_19;
        }
      }

      sub_16A1B4();
      if (!v20)
      {
        v19 = 0;
        return v19 & 1;
      }

      sub_10C060();
      if (v23 != 0xD00000000000002CLL || v21 != v22)
      {
        v19 = sub_16AE54();
LABEL_27:

        return v19 & 1;
      }

LABEL_26:
      v19 = 1;
      goto LABEL_27;
    }
  }

LABEL_19:
  v19 = 1;
  return v19 & 1;
}

uint64_t CAFRecirculation.setActivated(_:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  return sub_D2B0();
}

uint64_t sub_11F574()
{
  sub_D2DC();
  [*(v0 + 16) setOn:*(v0 + 24)];
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_11F5F4()
{
  sub_D2DC();
  [*(v0 + 16) on];
  sub_30AEC();

  return v1();
}

uint64_t sub_11F66C()
{
  sub_D2DC();
  if ([*(v0 + 16) onDisabled])
  {
    [*(v0 + 16) onInvalid];
  }

  sub_30AEC();

  return v1();
}

uint64_t sub_11F74C(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_6F428;

  return CAFRecirculation.setActivated(_:)(a1);
}

uint64_t sub_11F7E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_6F5A0;

  return CAFZonesSynced.isActivated()();
}

uint64_t sub_11F874()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_11F904;

  return CAFZonesSynced.isConnected()();
}

uint64_t sub_11F904()
{
  sub_D2DC();
  v2 = v1;
  v3 = *v0;
  sub_D254();
  *v4 = v3;

  sub_30AEC();

  return v5(v2);
}

uint64_t sub_11F9F0()
{
  if ([v0 onDisabled])
  {
    return 0;
  }

  else
  {
    return [v0 onInvalid] ^ 1;
  }
}

uint64_t sub_11FA5C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_11FA7C);
}

uint64_t sub_11FA7C()
{
  sub_11FCC0(v0[3] + 96, v0[2]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_11FAEC()
{
  sub_D13C((v0 + 16));
  sub_D13C((v0 + 56));
  sub_A72B0(v0 + 96);
  return v0;
}

uint64_t sub_11FB1C()
{
  sub_11FAEC();

  return _swift_deallocClassInstance(v0, 137, 7);
}

uint64_t sub_11FB74(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_4D8D0;

  return sub_11FA5C(a1);
}

uint64_t sub_11FC10()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_4D8D0;

  return sub_EB928();
}

uint64_t sub_11FCC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1E9AE0, &unk_1736B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_11FD40(uint64_t a1)
{
  *(v2 + 344) = a1;
  *(v2 + 352) = v1;
  sub_10B4C();
  return _swift_task_switch(v3);
}

uint64_t sub_11FD6C()
{
  sub_D2DC();
  sub_D084((*(v0 + 352) + 8), *(*(v0 + 352) + 32));
  v1 = swift_task_alloc();
  *(v0 + 360) = v1;
  *v1 = v0;
  v1[1] = sub_11FE14;

  return sub_13AB58(v0 + 16, 1);
}

uint64_t sub_11FE14()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 368) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_11FF10()
{
  sub_10824(*(v0 + 344), v0 + 96);
  sub_5758(&qword_1E5F90, &qword_170270);
  sub_5758(&qword_1EDC70, &qword_179258);
  if (swift_dynamicCast())
  {
    sub_D124((v0 + 136), v0 + 56);
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    sub_D084((v0 + 16), v1);
    v9 = (*(v2 + 64) + **(v2 + 64));
    v3 = swift_task_alloc();
    *(v0 + 376) = v3;
    *v3 = v0;
    v3[1] = sub_12020C;

    return v9(v0 + 216, v1, v2);
  }

  else
  {
    *(v0 + 136) = 0u;
    *(v0 + 152) = 0u;
    *(v0 + 168) = 0;
    sub_D188(v0 + 136, &qword_1EDC78, &unk_179260);
    type metadata accessor for CarCommandsError(0);
    sub_11D28();
    swift_allocError();
    v6 = v5;
    sub_16ACF4(61);
    *(v0 + 328) = 0;
    *(v0 + 336) = 0xE000000000000000;
    v11._object = 0x8000000000184C00;
    v11._countAndFlagsBits = 0xD000000000000016;
    sub_16A744(v11);
    sub_16AD84();
    v12._countAndFlagsBits = 0xD000000000000025;
    v12._object = 0x800000000018F820;
    sub_16A744(v12);
    v7 = *(v0 + 336);
    *v6 = *(v0 + 328);
    v6[1] = v7;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_D13C((v0 + 16));
    sub_D37C();

    return v8();
  }
}

uint64_t sub_12020C()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 384) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_120308()
{
  if (!*(v0 + 240))
  {
    sub_D188(v0 + 216, &qword_1E83D0, &qword_174EE0);
    if (qword_1E58E8 != -1)
    {
      sub_B4F54();
      swift_once();
    }

    v8 = sub_16A584();
    sub_9DA0(v8, qword_1E65C0);
    v9 = sub_16A9A4();
    sub_386D8(v9, 0x40000000uLL, 0xD00000000000008ALL, 0x800000000018F850, 0xD000000000000012, 0x8000000000184BB0, 25, 0xD000000000000021, 0x8000000000184C50);
    v13 = sub_12F9C4;
    v6 = swift_task_alloc();
    *(v0 + 424) = v6;
    *v6 = v0;
    v7 = sub_120880;
    goto LABEL_8;
  }

  sub_D124((v0 + 216), v0 + 176);
  v1 = sub_D084((v0 + 56), *(v0 + 80));
  v2 = sub_8F110(v1);
  if (v2 == 2 || (v3 = v2, v4 = sub_D084((v0 + 56), *(v0 + 80)), v5 = sub_8F058(v4), v5 == 6))
  {
    v13 = sub_C3F00;
    v6 = swift_task_alloc();
    *(v0 + 408) = v6;
    *v6 = v0;
    v7 = sub_120714;
LABEL_8:
    v6[1] = v7;

    return v13();
  }

  v11 = v5;
  v12 = swift_task_alloc();
  *(v0 + 392) = v12;
  *v12 = v0;
  v12[1] = sub_1205A8;

  return sub_120B54(v11, v0 + 176, v3 & 1);
}

uint64_t sub_1205A8()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v2[32] = v1;
  v2[33] = v4;
  v2[34] = v0;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v7 + 400) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_1206AC()
{
  sub_D2DC();
  sub_D13C((v0 + 176));
  v1 = *(v0 + 264);
  sub_1226F0();
  sub_30AEC();

  return v2(v1);
}

uint64_t sub_120714()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v2[35] = v1;
  v2[36] = v4;
  v2[37] = v0;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v7 + 416) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_120818()
{
  sub_D2DC();
  sub_D13C((v0 + 176));
  v1 = *(v0 + 288);
  sub_1226F0();
  sub_30AEC();

  return v2(v1);
}

uint64_t sub_120880()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v2[38] = v1;
  v2[39] = v4;
  v2[40] = v0;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v7 + 432) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_120984()
{
  sub_D2DC();
  v1 = *(v0 + 312);
  sub_1226F0();
  sub_30AEC();

  return v2(v1);
}

uint64_t sub_1209E4()
{
  sub_D2DC();
  sub_1226F0();
  sub_D37C();

  return v0();
}

uint64_t sub_120A3C()
{
  sub_D2DC();
  sub_1226F0();
  sub_D37C();

  return v0();
}

uint64_t sub_120A94()
{
  sub_D2DC();
  sub_D13C((v0 + 176));
  sub_1226F0();
  sub_D37C();

  return v1();
}

uint64_t sub_120AF4()
{
  sub_D2DC();
  sub_D13C((v0 + 176));
  sub_1226F0();
  sub_D37C();

  return v1();
}

uint64_t sub_120B54(char a1, uint64_t a2, char a3)
{
  *(v4 + 467) = a3;
  *(v4 + 416) = a2;
  *(v4 + 424) = v3;
  *(v4 + 466) = a1;
  return _swift_task_switch(sub_120B7C);
}

uint64_t sub_120B7C()
{
  v123 = v0;
  v1 = *(v0 + 416);
  v2 = v1[3];
  v3 = v1[4];
  sub_D084(v1, v2);
  v4 = (*(v3 + 80))(v2, v3);
  if (!v4)
  {
    v90 = swift_task_alloc();
    *(v0 + 456) = v90;
    *v90 = v0;
    v91 = sub_121934;
    goto LABEL_45;
  }

  v5 = *(v4 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v7 = v4 + 32;
    do
    {
      v8 = *(v0 + 466);
      sub_10824(v7, v0 + 256);
      v9 = *(v0 + 280);
      v10 = *(v0 + 288);
      sub_D084((v0 + 256), v9);
      v11 = (*(v10 + 16))(v8, v9, v10);
      if (v12)
      {
        v13 = 0;
        *(v0 + 48) = 0;
        *(v0 + 16) = 0u;
        *(v0 + 32) = 0u;
      }

      else
      {
        v13 = v11;
        sub_10824(v0 + 256, v0 + 16);
      }

      *(v0 + 56) = v13;
      sub_D13C((v0 + 256));
      if (*(v0 + 40))
      {
        v14 = *(v0 + 32);
        v118 = *(v0 + 16);
        v119 = v14;
        v120 = *(v0 + 48);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_108AF4();
          v6 = v19;
        }

        v15 = v6[2];
        if (v15 >= v6[3] >> 1)
        {
          sub_108AF4();
          v6 = v20;
        }

        v6[2] = v15 + 1;
        v16 = &v6[6 * v15];
        v17 = v118;
        v18 = v120;
        v16[3] = v119;
        v16[4] = v18;
        v16[2] = v17;
      }

      else
      {
        sub_D188(v0 + 16, &qword_1EDC80, &qword_179278);
      }

      v7 += 40;
      --v5;
    }

    while (v5);
  }

  v21 = v6[2];
  if (!v21)
  {
    v97 = *(v0 + 466);

    *&v118 = 0;
    *(&v118 + 1) = 0xE000000000000000;
    sub_16ACF4(46);
    *(v0 + 384) = 0;
    *(v0 + 392) = 0xE000000000000000;
    v131._countAndFlagsBits = 0xD00000000000002CLL;
    v131._object = 0x800000000018F950;
    sub_16A744(v131);
    *(v0 + 465) = v97;
    sub_16AD84();
    v99 = *(v0 + 384);
    v98 = *(v0 + 392);
    if (qword_1E58E8 != -1)
    {
      sub_B4F54();
      swift_once();
    }

    v100 = sub_16A584();
    sub_9DA0(v100, qword_1E65C0);
    v101 = sub_16A9A4();
    sub_386D8(v101, 0x40000000uLL, 0xD00000000000008ALL, 0x800000000018F850, 0xD000000000000022, 0x800000000018F8E0, 53, v99, v98);

    v90 = swift_task_alloc();
    *(v0 + 448) = v90;
    *v90 = v0;
    v91 = sub_12184C;
LABEL_45:
    v90[1] = v91;
    sub_122768();

    __asm { BR              X1 }
  }

  *&v118 = _swiftEmptyArrayStorage;
  sub_146970(0, v21, 0);
  v22 = _swiftEmptyArrayStorage;
  v108 = v6;
  v23 = (v6 + 4);
  v24 = (v6 + 4);
  v117 = v21;
  do
  {
    sub_122668(v24, v0 + 64);
    v25 = *(v0 + 80);
    *(v0 + 112) = *(v0 + 64);
    *(v0 + 128) = v25;
    *(v0 + 144) = *(v0 + 96);
    sub_D124((v0 + 112), v0 + 296);
    *&v118 = v22;
    v27 = v22[2];
    v26 = v22[3];
    if (v27 >= v26 >> 1)
    {
      sub_146970((v26 > 1), v27 + 1, 1);
    }

    v29 = *(v0 + 320);
    v28 = *(v0 + 328);
    v30 = sub_2F8D0(v0 + 296, v29);
    v31 = *(v29 - 8);
    v32 = swift_task_alloc();
    (*(v31 + 16))(v32, v30, v29);
    sub_135730(v27, v32, &v118, v29, v28);
    sub_D13C((v0 + 296));

    v22 = v118;
    v24 += 48;
    --v21;
  }

  while (v21);
  v33 = *(v0 + 424);
  v34 = sub_D084((v33 + 48), *(v33 + 72));
  v35 = sub_1330E8(v22);

  v37 = sub_948E4(v35, *v34, v36);

  v38 = v37[2];

  if (!v38)
  {

    sub_D084((v33 + 48), *(v33 + 72));
    v104 = swift_task_alloc();
    *(v0 + 440) = v104;
    *v104 = v0;
    v104[1] = sub_121764;
    sub_122768();

    __asm { BRAA            X2, X16 }
  }

  v115 = 0x800000000018F8E0;
  v116 = 0x800000000018F850;
  v113 = "Setting vent to ";
  v114 = "rClimate:enabled:)";
  v112 = 0xD000000000000010;
  *&v39 = 136315138;
  v109 = v39;
  v40 = v117;
  do
  {
    v41 = *(v0 + 466);
    sub_122668(v23, v0 + 160);
    v42 = *(v0 + 200);
    sub_D124((v0 + 160), v0 + 208);
    *(v0 + 248) = v42;
    *&v118 = 0;
    *(&v118 + 1) = 0xE000000000000000;
    sub_16ACF4(36);
    v43 = *(&v118 + 1);
    *(v0 + 336) = v118;
    *(v0 + 344) = v43;
    v124._object = (v114 | 0x8000000000000000);
    v124._countAndFlagsBits = v112;
    sub_16A744(v124);
    *(v0 + 464) = v41;
    sub_16AD84();
    v125._object = (v113 | 0x8000000000000000);
    v125._countAndFlagsBits = v112;
    sub_16A744(v125);
    *(v0 + 400) = v42;
    v126._countAndFlagsBits = sub_16AE24();
    sub_16A744(v126);

    v45 = *(v0 + 336);
    v44 = *(v0 + 344);
    if (qword_1E58E8 != -1)
    {
      sub_B4F54();
      swift_once();
    }

    v46 = sub_16A584();
    sub_9DA0(v46, qword_1E65C0);
    LODWORD(v117) = sub_16A9A4();
    *(v0 + 352) = 0xD00000000000008ALL;
    *(v0 + 360) = v116;
    *(v0 + 368) = 47;
    *(v0 + 376) = 0xE100000000000000;
    sub_D030();
    v47 = (sub_16AB34() + 16);
    if (*v47)
    {
      v48 = &v47[2 * *v47];
      v50 = *v48;
      v49 = v48[1];

      *&v118 = v50;
      *(&v118 + 1) = v49;
      v127._countAndFlagsBits = 32;
      v127._object = 0xE100000000000000;
      sub_16A744(v127);
      v128._countAndFlagsBits = 0xD000000000000022;
      v128._object = v115;
      sub_16A744(v128);
      v52 = *(&v118 + 1);
      v51 = v118;
    }

    else
    {

      v51 = 0xD000000000000022;
      v52 = v115;
    }

    v121 = v51;
    v122 = v52;
    *&v118 = 58;
    *(&v118 + 1) = 0xE100000000000000;
    *(v0 + 408) = 64;
    v129._countAndFlagsBits = sub_16AE24();
    sub_16A744(v129);

    sub_12271C(v53, v54, v55, v56, v57, v58, v59, v60, v107, v108, v109, *(&v109 + 1), v110, v111, v112, v113, v114, v115, v116, v117, v118, *(&v118 + 1));

    v61._countAndFlagsBits = sub_378D0(0x40000000uLL);
    if (v61._object)
    {
      *&v118 = 32;
      *(&v118 + 1) = 0xE100000000000000;
      sub_16A744(v61);

      sub_12271C(v62, v63, v64, v65, v66, v67, v68, v69, v107, v108, v109, *(&v109 + 1), v110, v111, v112, v113, v114, v115, v116, v117, v118, *(&v118 + 1));
    }

    v70 = HIBYTE(v44) & 0xF;
    if ((v44 & 0x2000000000000000) == 0)
    {
      v70 = v45 & 0xFFFFFFFFFFFFLL;
    }

    if (v70)
    {
      *&v118 = 32;
      *(&v118 + 1) = 0xE100000000000000;
      v130._countAndFlagsBits = v45;
      v130._object = v44;
      sub_16A744(v130);
      sub_12271C(v71, v72, v73, v74, v75, v76, v77, v78, v107, v108, v109, *(&v109 + 1), v110, v111, v112, v113, v114, v115, v116, v117, v118, *(&v118 + 1));
    }

    v79 = v121;
    v80 = v122;
    v81 = sub_16A574();
    if (os_log_type_enabled(v81, v117))
    {
      v82 = swift_slowAlloc();
      v111 = v44;
      v83 = v23;
      v84 = v42;
      v85 = v40;
      v86 = swift_slowAlloc();
      *&v118 = v86;
      *v82 = v109;
      v87 = sub_15BC8(v79, v80, &v118);

      *(v82 + 4) = v87;
      _os_log_impl(&dword_0, v81, v117, "%s", v82, 0xCu);
      sub_D13C(v86);
      v40 = v85;
      v42 = v84;
      v23 = v83;
    }

    else
    {
    }

    v88 = *(v0 + 232);
    v89 = *(v0 + 240);
    sub_2F8D0(v0 + 208, v88);
    (*(v89 + 32))(v42, v88, v89);
    sub_D188(v0 + 208, &qword_1ED1C0, &qword_179280);
    v23 += 48;
    --v40;
  }

  while (v40);

  v92 = swift_task_alloc();
  *(v0 + 432) = v92;
  *v92 = v0;
  v92[1] = sub_12167C;
  sub_122768();

  return sub_121A1C(v93, v94);
}

uint64_t sub_12167C()
{
  sub_D2DC();
  sub_FC7B8();
  v3 = *v2;
  sub_D254();
  *v4 = v3;

  sub_30AEC();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_121764()
{
  sub_D2DC();
  sub_FC7B8();
  v3 = *v2;
  sub_D254();
  *v4 = v3;

  sub_30AEC();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_12184C()
{
  sub_D2DC();
  sub_FC7B8();
  v3 = *v2;
  sub_D254();
  *v4 = v3;

  sub_30AEC();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_121934()
{
  sub_D2DC();
  sub_FC7B8();
  v3 = *v2;
  sub_D254();
  *v4 = v3;

  sub_30AEC();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_121A1C(char a1, char a2)
{
  *(v2 + 145) = a2;
  *(v2 + 144) = a1;
  sub_16A164();
  *(v2 + 16) = swift_task_alloc();

  return _swift_task_switch(sub_121AB0);
}

uint64_t sub_121AB0()
{
  sub_1696C();
  switch(*(v0 + 145))
  {
    case 1:
      v15 = sub_122750();
      sub_122738(v15);
      *(v0 + 48) = sub_52464();
      v16 = swift_task_alloc();
      *(v0 + 56) = v16;
      *v16 = v0;
      v4 = sub_1226D8(v16);
      v5 = 1;
      goto LABEL_7;
    case 2:
      v10 = sub_122750();
      sub_122738(v10);
      *(v0 + 72) = sub_52464();
      v11 = swift_task_alloc();
      *(v0 + 80) = v11;
      *v11 = v0;
      v4 = sub_1226D8(v11);
      v5 = 2;
      v8 = 1;
      goto LABEL_8;
    case 3:
      v12 = sub_122750();
      sub_122738(v12);
      *(v0 + 96) = sub_52464();
      v13 = swift_task_alloc();
      *(v0 + 104) = v13;
      *v13 = v0;
      v4 = sub_1226D8(v13);
      v5 = 2;
      v8 = 2;
      v9 = 2;
      v14 = 1;
      goto LABEL_10;
    case 4:
      v6 = sub_122750();
      sub_122738(v6);
      *(v0 + 120) = sub_52464();
      v7 = swift_task_alloc();
      *(v0 + 128) = v7;
      *v7 = v0;
      v4 = sub_1226D8(v7);
      v5 = 2;
      v8 = 2;
      v9 = 1;
      goto LABEL_9;
    case 5:
      type metadata accessor for CarCommandsError(0);
      sub_11D28();
      swift_allocError();
      *v18 = 0xD000000000000016;
      v18[1] = 0x800000000018F980;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      sub_D37C();

      return v19();
    default:
      v1 = sub_122750();
      sub_122738(v1);
      *(v0 + 24) = sub_52464();
      v2 = swift_task_alloc();
      *(v0 + 32) = v2;
      *v2 = v0;
      v2[1] = sub_121DCC;
      v3 = 1;
      v4 = *(v0 + 144);
      v5 = 2;
LABEL_7:
      v8 = 2;
LABEL_8:
      v9 = 2;
LABEL_9:
      v14 = 2;
LABEL_10:

      return sub_1594F0(v4, v3, v5, v8, v9, v14);
  }
}

uint64_t sub_121DCC()
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

uint64_t sub_121F00()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 64) = v0;

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

uint64_t sub_122038()
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

uint64_t sub_122170()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 112) = v0;

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

uint64_t sub_1222A8()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 136) = v0;

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

uint64_t sub_1223E0()
{
  sub_D2DC();

  sub_D37C();

  return v0();
}

uint64_t sub_122444()
{
  sub_D2DC();

  sub_D37C();

  return v0();
}

uint64_t sub_1224A8()
{
  sub_D2DC();

  sub_D37C();

  return v0();
}

uint64_t sub_12250C()
{
  sub_D2DC();

  sub_D37C();

  return v0();
}

uint64_t sub_122570()
{
  sub_D2DC();

  sub_D37C();

  return v0();
}

uint64_t sub_1225D4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_FC5D4;

  return sub_11FD40(a1);
}

uint64_t sub_122668(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1ED1C0, &qword_179280);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1226F0()
{
  sub_D13C((v0 + 56));

  return sub_D13C((v0 + 16));
}

void sub_12271C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  v23._countAndFlagsBits = a21;
  v23._object = a22;

  sub_16A744(v23);
}

uint64_t sub_122738(uint64_t a1)
{

  return sub_16A154();
}

uint64_t sub_122750()
{

  return type metadata accessor for CarCommandsSetCarPlayVentModeCATsSimple(0);
}

_BYTE *storeEnumTagSinglePayload for CarCommandsCannedActionNLv3Value(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEB)
  {
    v6 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
        JUMPOUT(0x122850);
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
          *result = a2 + 20;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_12288C()
{
  result = qword_1EDC88;
  if (!qword_1EDC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC88);
  }

  return result;
}

unint64_t sub_1228E0(uint64_t a1, uint64_t a2)
{
  v2 = sub_16AE64();

  if (v2 >= 0x15)
  {
    return 21;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_122934(char a1)
{
  result = 0x6C6F46676E696562;
  switch(a1)
  {
    case 1:
      return 0x6F72427365756C62;
    case 2:
      return 0x654D6576697264;
    case 3:
      return 0x7463656A65;
    case 4:
      return 0x654D726574736166;
    case 5:
      v5 = 1702125928;
      return v5 | 0x72614300000000;
    case 6:
      v3 = 0x6C6F43737469;
      return v3 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
    case 7:
      return 0x746F48737469;
    case 8:
      v5 = 1702260588;
      return v5 | 0x72614300000000;
    case 9:
      v3 = 0x65657053796DLL;
      return v3 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
    case 10:
      return 0xD000000000000011;
    case 11:
      return 0x67754268636E7570;
    case 12:
      return 0x726F6C6F43797073;
    case 13:
      return 0x6C6174654D797073;
    case 14:
      return 0x74656D6F53797073;
    case 15:
      v4 = 1936287860;
      goto LABEL_14;
    case 16:
      return 0x755179746E657774;
    case 17:
      v4 = 1952540791;
LABEL_14:
      result = v4 | 0x4972614300000000;
      break;
    case 18:
      result = 0xD000000000000012;
      break;
    case 19:
      result = 0x6D6F436C6176616ELL;
      break;
    case 20:
      result = 0x676E69636172;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_122BFC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1228E0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_122C2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_122934(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_122C68(uint64_t a1, uint64_t a2)
{
  v4 = sub_122DF4();
  v5 = sub_122E48();
  v6 = sub_122E9C();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5, v6);
}

unint64_t sub_122CE0()
{
  result = qword_1EDC90;
  if (!qword_1EDC90)
  {
    sub_37130(&qword_1EDC98, &qword_1792E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC90);
  }

  return result;
}

unint64_t sub_122D48()
{
  result = qword_1EDCA0;
  if (!qword_1EDCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCA0);
  }

  return result;
}

unint64_t sub_122DA0()
{
  result = qword_1EDCA8;
  if (!qword_1EDCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCA8);
  }

  return result;
}

unint64_t sub_122DF4()
{
  result = qword_1EDCB0;
  if (!qword_1EDCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCB0);
  }

  return result;
}

unint64_t sub_122E48()
{
  result = qword_1EDCB8;
  if (!qword_1EDCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCB8);
  }

  return result;
}

unint64_t sub_122E9C()
{
  result = qword_1EDCC0;
  if (!qword_1EDCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC0);
  }

  return result;
}

uint64_t sub_122EF0()
{
  sub_D2DC();
  v1[287] = v0;
  v1[281] = v2;
  v1[275] = v3;
  v4 = sub_168E14();
  v1[293] = v4;
  sub_10AEC(v4);
  v1[299] = v5;
  v1[305] = swift_task_alloc();
  sub_16A164();
  v1[311] = swift_task_alloc();
  v6 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_10AEC(v6);
  v1[317] = v7;
  v1[323] = *(v8 + 64);
  v1[329] = swift_task_alloc();
  v1[335] = swift_task_alloc();

  return _swift_task_switch(sub_123048);
}

uint64_t sub_123048()
{
  sub_124EFC();
  sub_30C80();
  sub_5758(&qword_1E62E8, &qword_16D8B0);
  v1 = sub_1690A4();
  v0[341] = v1;
  v2 = [v1 carName];
  if (v2)
  {
    v3 = v2;
    sub_99C94();

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v0[335];
  v6 = v0[329];
  v7 = v0[317];
  v8 = sub_16A0C4();
  sub_5370(v5, v4, 1, v8);
  type metadata accessor for CarCommandsSetTrunkStatusCATsSimple(0);
  sub_16A154();
  v9 = sub_16A0F4();
  v0[347] = v9;
  type metadata accessor for CarCommandsCATsSimple(0);
  sub_16A154();
  v0[353] = sub_16A0F4();
  sub_16198(v5, v6);
  v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v11 = swift_allocObject();
  v0[359] = v11;
  *(v11 + 16) = v9;
  sub_16304(v6, v11 + v10);

  sub_124D1C();
  swift_asyncLet_begin();

  swift_asyncLet_begin();

  v12 = swift_asyncLet_begin();
  sub_12C0B0(v12);
  sub_F38BC();
  sub_168D84();
  sub_124EE4();

  return _swift_asyncLet_get_throwing(v13);
}

uint64_t sub_123290()
{
  sub_D2DC();
  v1[360] = v0;
  if (v0)
  {

    return _swift_task_switch(sub_1238A4);
  }

  else
  {
    v2 = v1[269];
    v1[361] = v2;
    v3 = v2;

    return _swift_asyncLet_get_throwing(v1 + 2);
  }
}

uint64_t sub_12333C()
{
  sub_D2DC();
  *(v1 + 2896) = v0;
  if (v0)
  {

    return _swift_task_switch(sub_123A38);
  }

  else
  {
    *(v1 + 2904) = *(v1 + 2136);
    *(v1 + 2912) = *(v1 + 2144);

    v2 = sub_124EB0();

    return _swift_asyncLet_get_throwing(v2);
  }
}

uint64_t sub_1233F0()
{
  sub_D2DC();
  v1[365] = v0;
  if (v0)
  {
    v2 = v1[361];

    v3 = sub_123BCC;
  }

  else
  {
    v1[366] = type metadata accessor for ConfirmationSnippetFactory();
    v3 = sub_123480;
  }

  return _swift_task_switch(v3);
}

uint64_t sub_123480()
{
  sub_1696C();
  v1 = v0[287];
  v0[367] = v0[266];
  swift_beginAccess();
  sub_10824(v1 + 184, (v0 + 247));

  v2 = swift_task_alloc();
  v0[368] = v2;
  *v2 = v0;
  v2[1] = sub_123574;

  return sub_14A94C();
}

uint64_t sub_123574()
{
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 2888);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 2952) = v0;

  sub_D13C((v3 + 1976));

  if (v0)
  {
    v9 = sub_123D60;
  }

  else
  {
    v9 = sub_1236E0;
  }

  return _swift_task_switch(v9);
}

uint64_t sub_1236E0()
{
  sub_D2DC();
  v0 = sub_124E9C();
  v1(v0);
  v2 = sub_124EB0();

  return _swift_asyncLet_finish(v2);
}

uint64_t sub_1237C4()
{
  sub_30C80();
  v1 = *(v0 + 2680);

  sub_4FAB4(v1);

  sub_D37C();

  return v2();
}

uint64_t sub_1238A4()
{
  sub_D2DC();
  v0 = sub_124E9C();
  v1(v0);
  v2 = sub_124EB0();

  return _swift_asyncLet_finish(v2);
}

uint64_t sub_123988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_124EFC();
  sub_30C80();
  sub_124E6C();

  sub_4FAB4(v10);

  sub_D37C();
  sub_124EE4();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_123A38()
{
  sub_D2DC();
  v0 = sub_124E9C();
  v1(v0);
  v2 = sub_124EB0();

  return _swift_asyncLet_finish(v2);
}

uint64_t sub_123B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_124EFC();
  sub_30C80();
  sub_124E6C();

  sub_4FAB4(v10);

  sub_D37C();
  sub_124EE4();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_123BCC()
{
  sub_D2DC();
  v0 = sub_124E9C();
  v1(v0);
  v2 = sub_124EB0();

  return _swift_asyncLet_finish(v2);
}

uint64_t sub_123CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_124EFC();
  sub_30C80();
  sub_124E6C();

  sub_4FAB4(v10);

  sub_D37C();
  sub_124EE4();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_123D60()
{
  sub_D2DC();
  v0 = sub_124E9C();
  v1(v0);
  v2 = sub_124EB0();

  return _swift_asyncLet_finish(v2);
}

uint64_t sub_123E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_124EFC();
  sub_30C80();
  sub_124E6C();

  sub_4FAB4(v10);

  sub_D37C();
  sub_124EE4();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_123EF4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_123F94;

  return sub_C3098();
}

uint64_t sub_123F94()
{
  sub_1696C();
  v3 = v2;
  sub_D358();
  v5 = v4;
  sub_D2A4();
  *v6 = v5;
  v7 = *v1;
  sub_D254();
  *v8 = v7;

  if (v0)
  {
    sub_124ED4();

    return v9();
  }

  else
  {
    *(v5 + 32) = v3;
    v11 = sub_124EC0();

    return _swift_task_switch(v11);
  }
}

uint64_t sub_1240B8()
{
  **(v0 + 16) = *(v0 + 32);
  sub_D37C();
  return v1();
}

uint64_t sub_1240E8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_12417C;

  return sub_C2FC4();
}

uint64_t sub_12417C()
{
  sub_1696C();
  v3 = v2;
  sub_D358();
  v5 = v4;
  sub_D2A4();
  *v6 = v5;
  v7 = *v1;
  sub_D254();
  *v8 = v7;

  if (v0)
  {
    sub_124ED4();

    return v9();
  }

  else
  {
    *(v5 + 32) = v3;
    v11 = sub_124EC0();

    return _swift_task_switch(v11);
  }
}

uint64_t sub_1242A0()
{
  sub_1696C();
  v1 = *(v0 + 16);
  v2 = sub_16A134();
  v4 = v3;

  *v1 = v2;
  v1[1] = v4;
  sub_D37C();

  return v5();
}

uint64_t sub_12431C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1243B0;

  return sub_DD4F0();
}

uint64_t sub_1243B0()
{
  sub_1696C();
  v3 = v2;
  sub_D358();
  v5 = v4;
  sub_D2A4();
  *v6 = v5;
  v7 = *v1;
  sub_D254();
  *v8 = v7;

  if (v0)
  {
    sub_124ED4();

    return v9();
  }

  else
  {
    *(v5 + 32) = v3;
    v11 = sub_124EC0();

    return _swift_task_switch(v11);
  }
}

uint64_t sub_1244D4()
{
  v0 = sub_3D044();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for SetTrunkStatusConfirmIntentFlowStrategy(uint64_t a1)
{
  result = qword_1EDCF0;
  if (!qword_1EDCF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1245D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10A9C;

  return (sub_14B48)(a1, a2, a3);
}

uint64_t sub_1246A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10A9C;

  return sub_122EF0();
}

uint64_t sub_124750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SetTrunkStatusConfirmIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return ConfirmIntentFlowStrategyAsync.makeRepromptOnEmptyParse(confirmParameters:)(a1, a2, v9, a4);
}

uint64_t sub_124818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SetTrunkStatusConfirmIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return ConfirmIntentFlowStrategyAsync.makeRepromptOnLowConfidence(confirmParameters:)(a1, a2, v9, a4);
}

uint64_t sub_1248E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SetTrunkStatusConfirmIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return ConfirmIntentFlowStrategyAsync.makeConfirmationRejectedResponse(confirmParameters:)(a1, a2, v9, a4);
}

uint64_t sub_1249A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SetTrunkStatusConfirmIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_1039C;

  return ConfirmIntentFlowStrategyAsync.makeFlowCancelledResponse(confirmParameters:)(a1, a2, v9, a4);
}

uint64_t sub_124A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for SetTrunkStatusConfirmIntentFlowStrategy(0);
  *v10 = v5;
  v10[1] = sub_10A9C;

  return ConfirmIntentFlowStrategyAsync.makeErrorResponse(error:confirmParameters:)(a1, a2, a3, v11, a5);
}

uint64_t sub_124B40()
{
  v1 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_10AEC(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v6 = *(v5 + 64);

  v7 = sub_16A0C4();
  if (!sub_9E2C(v0 + v4, 1, v7))
  {
    (*(*(v7 - 8) + 8))(v0 + v4, v7);
  }

  return _swift_deallocObject(v0, v4 + v6, v3 | 7);
}

uint64_t sub_124C38()
{
  sub_1696C();
  v1 = v0;
  sub_5758(&qword_1E6300, &qword_16ECE0);
  v2 = swift_task_alloc();
  v3 = sub_16998(v2);
  *v3 = v4;
  v3[1] = sub_10A9C;

  return sub_123EF4(v1);
}

unint64_t sub_124D1C()
{
  result = qword_1E6308;
  if (!qword_1E6308)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1E6308);
  }

  return result;
}

uint64_t sub_124D60()
{
  sub_D2DC();
  v0 = swift_task_alloc();
  v1 = sub_16998(v0);
  *v1 = v2;
  v3 = sub_124F14(v1);

  return sub_1240E8(v3);
}

uint64_t sub_124DE4()
{
  sub_D2DC();
  v0 = swift_task_alloc();
  v1 = sub_16998(v0);
  *v1 = v2;
  v3 = sub_124F14(v1);

  return sub_12431C(v3);
}

void sub_124E6C()
{
  v2 = *(v0 + 2728);
}

id sub_124F28()
{
  v1 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin37SetLockStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler;
  v2 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin37SetLockStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin37SetLockStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
  }

  else
  {
    if (qword_1E5908 != -1)
    {
      swift_once();
    }

    v5 = sub_12685C(v4);
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_124FC4()
{
  sub_D2DC();
  v1[37] = v2;
  v1[38] = v0;
  v1[36] = v3;
  sub_16A164();
  v1[39] = swift_task_alloc();
  sub_5758(&qword_1E6300, &qword_16ECE0);
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = type metadata accessor for LockStatusParameters(0);
  v1[43] = swift_task_alloc();
  sub_10B4C();

  return _swift_task_switch(v4);
}

uint64_t sub_1250C4()
{
  sub_10824(v0[38] + 16, (v0 + 2));
  sub_D084(v0 + 2, v0[5]);
  sub_5758(&qword_1EE118, &unk_179660);
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
  v0[31] = 0xD000000000000096;
  v0[32] = 0x800000000018FA40;
  v0[33] = 47;
  v0[34] = 0xE100000000000000;
  sub_D030();
  v4 = sub_16AB34();
  sub_15AE4(v4);
  v6 = v5;

  if (v6)
  {
    sub_7C764();
    v75._countAndFlagsBits = 0xD000000000000025;
    v75._object = 0x8000000000182560;
    sub_16A744(v75);
    v7 = v70;
    v1 = v73;
  }

  else
  {
    v7 = 0xD000000000000025;
  }

  v67 = v7;
  v0[35] = 26;
  v76._countAndFlagsBits = sub_16AE24();
  sub_16A744(v76);

  sub_7C724(v8, v9, v10, v11, v12, v13, v14, v15, v67, v1, 58, 0xE100000000000000);

  v16._countAndFlagsBits = sub_378D0(0x42uLL);
  if (v16._object)
  {
    sub_7C740(v16);

    sub_7C724(v17, v18, v19, v20, v21, v22, v23, v24, v68, v69, v71, v74);
  }

  v25 = sub_16A574();
  if (os_log_type_enabled(v25, v3))
  {
    v26 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v30 = sub_7C7A4(4.8149e-34, v72, v27, v28, v29);

    *(v26 + 4) = v30;
    sub_7C784(&dword_0, v31, v32, "%s");
    sub_D13C(v72);
    sub_D494(v72);
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

    v0[44] = v35;
    if (!v35)
    {
      goto LABEL_15;
    }

    v36 = sub_1690A4();
    v37 = sub_16AA14();

    if (v37 == 2)
    {

LABEL_15:
      type metadata accessor for CarCommandsError(0);
      sub_1269A8();
      v40 = sub_126814(v38, v39, &unk_17A85C);
      sub_5A144(v40);
      *v41 = 0xD00000000000002DLL;
      v41[1] = 0x8000000000182590;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      sub_D37C();
      sub_D2C0();

      __asm { BRAA            X1, X16 }
    }

    v63 = v0[38];
    type metadata accessor for LockStatusSnippetFactory();
    v64 = sub_1690A4();
    v0[45] = [v64 carName];

    sub_3CF7C(v63 + 184, (v0 + 28));
    sub_10824(v63 + 184, (v0 + 17));
    v65 = swift_task_alloc();
    v0[46] = v65;
    *v65 = v0;
    v65[1] = sub_A2E38;
    sub_D2C0();

    return sub_7C7C4();
  }

  else
  {
    v44 = sub_1690A4();
    v45 = sub_16AA14();

    v46 = sub_1690A4();
    v47 = [v46 carName];

    if (v47)
    {
      sub_99C94();

      v48 = 0;
    }

    else
    {
      v48 = 1;
    }

    v49 = v0[41];
    v50 = sub_16A0C4();
    v51 = 1;
    sub_5370(v49, v48, 1, v50);
    sub_169094();
    sub_16A1B4();
    v53 = v52;

    if (v53)
    {
      sub_16A6E4();

      v51 = 0;
    }

    v54 = (v45 == 2) | v45;
    v56 = v0[42];
    v55 = v0[43];
    v58 = v0[40];
    v57 = v0[41];
    sub_5370(v58, v51, 1, v50);
    sub_16304(v57, v55);
    *(v55 + *(v56 + 20)) = v54 & 1;
    sub_16304(v58, v55 + *(v56 + 24));
    type metadata accessor for CarCommandsCATPatternsExecutor(0);
    sub_16A154();
    v0[48] = sub_16A094();
    v59 = swift_task_alloc();
    v0[49] = v59;
    *v59 = v0;
    v59[1] = sub_12573C;
    sub_D2C0();

    return sub_157224(v60);
  }
}

uint64_t sub_12573C()
{
  sub_D2DC();
  sub_D358();
  *(v2 + 400) = v1;
  *(v2 + 408) = v0;

  sub_10B4C();

  return _swift_task_switch(v3);
}

uint64_t sub_125844()
{
  sub_D2DC();
  v1 = *(v0 + 304);
  sub_3CF7C(v1 + 184, v0 + 200);
  sub_10824(v1 + 184, v0 + 96);
  v2 = swift_task_alloc();
  *(v0 + 416) = v2;
  *v2 = v0;
  v2[1] = sub_1258F8;

  return sub_11AD48();
}

uint64_t sub_1258F8()
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

uint64_t sub_125A00()
{
  sub_1696C();
  v1 = *(v0 + 344);

  sub_73538(v1);
  sub_A4350();

  sub_D37C();

  return v2();
}

uint64_t sub_125A8C()
{
  sub_1696C();
  v1 = *(v0 + 400);
  v2 = *(v0 + 344);
  v3 = *(v0 + 288);

  sub_73538(v2);
  sub_D250((v0 + 56), v3);

  sub_D37C();

  return v4();
}

uint64_t sub_125B3C()
{
  sub_1696C();
  v1 = *(v0 + 400);
  v2 = *(v0 + 344);

  sub_73538(v2);
  sub_A4350();

  sub_D37C();

  return v3();
}

uint64_t sub_125BD0(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  sub_10B4C();
  return _swift_task_switch(v4);
}

uint64_t sub_125C00()
{
  sub_10824(v0[25] + 16, (v0 + 2));
  sub_D084(v0 + 2, v0[5]);
  sub_5758(&qword_1EE118, &unk_179660);
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
  v0[18] = 0xD000000000000096;
  v0[19] = 0x800000000018FA40;
  v0[20] = 47;
  v0[21] = 0xE100000000000000;
  sub_D030();
  v4 = sub_16AB34();
  sub_15AE4(v4);
  v6 = v5;

  if (v6)
  {
    sub_7C764();
    v56._countAndFlagsBits = 0xD00000000000002DLL;
    v56._object = 0x8000000000185C90;
    sub_16A744(v56);
    v7 = v51;
    v1 = v54;
  }

  else
  {
    v7 = 0xD00000000000002DLL;
  }

  v48 = v7;
  v0[22] = 64;
  v57._countAndFlagsBits = sub_16AE24();
  sub_16A744(v57);

  sub_7C724(v8, v9, v10, v11, v12, v13, v14, v15, v48, v1, 58, 0xE100000000000000);

  v16._countAndFlagsBits = sub_378D0(0x42uLL);
  if (v16._object)
  {
    sub_7C740(v16);

    sub_7C724(v17, v18, v19, v20, v21, v22, v23, v24, v49, v50, v52, v55);
  }

  v25 = sub_16A574();
  if (os_log_type_enabled(v25, v3))
  {
    v26 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v30 = sub_7C7A4(4.8149e-34, v53, v27, v28, v29);

    *(v26 + 4) = v30;
    sub_7C784(&dword_0, v31, v32, "%s");
    sub_D13C(v53);
    sub_D494(v53);
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
LABEL_17:
    sub_D2C0();

    __asm { BRAA            X1, X16 }
  }

  sub_169094();
  sub_16A1B4();
  v35 = v34;

  if (!v35 || (, v36 = sub_1690A4(), v37 = sub_16AA14(), v36, v37 == 2))
  {
    type metadata accessor for CarCommandsError(0);
    sub_1269A8();
    v40 = sub_126814(v38, v39, &unk_17A85C);
    sub_5A144(v40);
    *v41 = 0xD00000000000002DLL;
    v41[1] = 0x8000000000182590;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_D37C();
    goto LABEL_17;
  }

  v44 = v0[25];
  type metadata accessor for LockStatusSnippetFactory();
  sub_3CF7C(v44 + 184, (v0 + 15));
  sub_10824(v44 + 184, (v0 + 7));
  v45 = swift_task_alloc();
  v0[26] = v45;
  *v45 = v0;
  v45[1] = sub_7BC20;
  sub_D2C0();

  return sub_7D848();
}

uint64_t sub_126074()
{
  v0 = sub_3D044();

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for SetLockStatusHandleIntentFlowStrategy(uint64_t a1)
{
  result = qword_1EDF18;
  if (!qword_1EDF18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_126180(uint64_t a1)
{
  result = sub_126814(&qword_1EE110, type metadata accessor for SetLockStatusHandleIntentFlowStrategy, &unk_179588);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1261D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SetLockStatusHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(a1, a2, v9, a4);
}

uint64_t sub_1262A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SetLockStatusHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, v9, a4);
}

uint64_t sub_126368()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10A9C;

  return sub_4B544();
}

uint64_t sub_126428()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10A9C;

  return sub_124FC4();
}

uint64_t sub_1264D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SetLockStatusHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, v9, a4);
}

uint64_t sub_12659C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SetLockStatusHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, v9, a4);
}

uint64_t sub_126664(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1039C;

  return sub_125BD0(a1, a2);
}

uint64_t sub_126710()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_36648;

  return sub_469D0();
}

uint64_t sub_126814(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_12685C(uint64_t a1)
{
  v2 = type metadata accessor for WalletService();
  v14[3] = v2;
  v14[4] = &off_1D7C28;
  v14[0] = a1;
  v3 = type metadata accessor for SESetCarLockStatusIntentHandler();
  v4 = objc_allocWithZone(v3);
  v5 = sub_2F8D0(v14, v2);
  __chkstk_darwin(v5);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = *v7;
  v13[3] = v2;
  v13[4] = &off_1D7C28;
  v13[0] = v9;
  sub_10824(v13, v4 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin31SESetCarLockStatusIntentHandler_carKeyService);
  v12.receiver = v4;
  v12.super_class = v3;
  v10 = objc_msgSendSuper2(&v12, "init");
  sub_D13C(v13);
  sub_D13C(v14);
  return v10;
}

uint64_t type metadata accessor for CarCommandsSetCarPlayFanSettingsCATsSimple(uint64_t a1)
{
  result = qword_1EE120;
  if (!qword_1EE120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_126A4C(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return _swift_task_switch(sub_126A70);
}

uint64_t sub_126A70()
{
  v1 = *(v0 + 48);
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v2 = swift_allocObject();
  *(v2 + 32) = 0xD000000000000013;
  *(v2 + 40) = 0x800000000018FB70;
  *(v2 + 72) = &type metadata for Bool;
  *(v2 + 48) = v1;
  v5 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  *(v0 + 24) = v2;
  *(v2 + 16) = xmmword_16D9A0;
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_49014;

  return v5(0xD000000000000036, 0x800000000018FB30, v2);
}

uint64_t sub_126BF4(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_126D50(uint64_t a1, uint64_t a2)
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

uint64_t sub_126E58()
{
  sub_D2DC();
  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  *(v1 + 248) = v3;
  *(v1 + 112) = v4;
  *(v1 + 120) = v5;
  *(v1 + 250) = v6;
  *(v1 + 96) = v7;
  *(v1 + 104) = v8;
  sub_5758(&qword_1E5F78, &unk_16D400);
  *(v1 + 144) = sub_D3C8();
  v9 = sub_1691E4();
  *(v1 + 152) = v9;
  *(v1 + 160) = *(v9 - 8);
  *(v1 + 168) = sub_D3C8();
  v10 = sub_16A284();
  *(v1 + 176) = v10;
  *(v1 + 184) = *(v10 - 8);
  *(v1 + 192) = sub_D3C8();
  sub_10B4C();

  return _swift_task_switch(v11);
}

uint64_t sub_126F9C()
{
  if ((*(v0 + 250) & 1) != 0 && ((*(v0 + 248) & 0x100) == 0) | *(v0 + 248) & 1)
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v1 = *(v0 + 128);
    v2 = sub_16A584();
    sub_9DA0(v2, qword_1E65C0);
    sub_16A9A4();
    sub_128D54();
    sub_386D8(v3, v4, v5, v6, v7, v8, 34, v9, 0x800000000018FD80);
    sub_D084(v1, v1[3]);
    *(v0 + 80) = sub_16A2E4();
    *(v0 + 88) = sub_52248(&qword_1E7408, &type metadata accessor for CarCommandsToggleSnippetUpdateValue, &protocol conformance descriptor for CarCommandsToggleSnippetUpdateValue);
    sub_10888((v0 + 56));
    sub_16A2D4();
    sub_168F04();
    sub_D13C((v0 + 56));

    sub_D37C();
    sub_7DDB4();

    __asm { BRAA            X1, X16 }
  }

  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v10 = sub_16A584();
  sub_9DA0(v10, qword_1E65C0);
  sub_16A9A4();
  sub_128D54();
  sub_386D8(v11, v12, v13, v14, v15, v16, 40, v17, 0x800000000018FD30);
  v18 = swift_task_alloc();
  *(v0 + 200) = v18;
  *v18 = v0;
  v18[1] = sub_127264;
  sub_7DDB4();

  return sub_127C94(v19, v20, v21, v22, v23);
}

uint64_t sub_127264()
{
  sub_1696C();
  sub_D358();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 208) = v6;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    v9 = *(v3 + 248);
    v10 = swift_task_alloc();
    *(v3 + 216) = v10;
    *v10 = v5;
    v10[1] = sub_1273FC;
    v11 = *(v3 + 192);
    v12 = *(v3 + 112);
    v13 = *(v3 + 120);
    v14 = *(v3 + 104);

    return sub_128638(v11, v14, v12, v13, v9 & 0x101);
  }
}

uint64_t sub_1273FC()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 224) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_1274F4()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[22];
  v5 = v0[18];
  v6 = v0[16];
  v7 = v6[3];
  v16 = v6[4];
  sub_D084(v6, v7);
  v0[5] = v4;
  v0[6] = sub_52248(&qword_1E7118, &type metadata accessor for CarCommandsSnippetsPluginModel, &protocol conformance descriptor for CarCommandsSnippetsPluginModel);
  v8 = sub_10888(v0 + 2);
  (*(v2 + 16))(v8, v3, v4);
  sub_5758(&qword_1EA2B0, &qword_16DFB0);
  v9 = swift_allocObject();
  v0[29] = v9;
  *(v9 + 16) = xmmword_16D440;
  *(v9 + 32) = v1;
  v10 = sub_168E14();
  sub_5370(v5, 1, 1, v10);
  v11 = v1;
  sub_67D38(0xD000000000000027, 0x800000000018FD00, v5);
  sub_D188(v5, &qword_1E5F78, &unk_16D400);
  v12 = swift_task_alloc();
  v0[30] = v12;
  *v12 = v0;
  v12[1] = sub_1276DC;
  v13 = v0[21];
  v14 = v0[12];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v14, v0 + 2, v9, v13, v7, v16);
}

uint64_t sub_1276DC()
{
  sub_D358();
  v2 = v1;
  sub_10AA4();
  *v3 = v2;
  v5 = v4[21];
  v6 = v4[20];
  v7 = v4[19];
  v8 = *v0;
  sub_D254();
  *v9 = v8;

  (*(v6 + 8))(v5, v7);
  sub_D13C((v2 + 16));
  sub_10B4C();

  return _swift_task_switch(v10);
}

uint64_t sub_127848()
{
  sub_D2DC();
  v0[7] = v1;
  v0[8] = v2;
  sub_16A164();
  v0[9] = sub_D3C8();
  sub_10B4C();

  return _swift_task_switch(v3);
}

uint64_t sub_1278C8()
{
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v1 = sub_16A584();
  sub_9DA0(v1, qword_1E65C0);
  v2 = sub_16A9A4();
  sub_386D8(v2, 2uLL, 0xD000000000000093, 0x800000000018FBD0, 0xD000000000000036, 0x800000000018FC70, 64, 0xD000000000000044, 0x800000000018FCB0);
  type metadata accessor for CarCommandsCATsSimple(0);
  sub_16A154();
  *(v0 + 80) = sub_16A0F4();
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_127A24;

  return sub_DDC04();
}

uint64_t sub_127A24()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 96) = v5;
  *(v3 + 104) = v0;

  if (!v0)
  {
  }

  sub_10B4C();

  return _swift_task_switch(v6);
}

void sub_127B2C()
{
  sub_D084(*(v0 + 64), *(*(v0 + 64) + 24));
  sub_16A134();
  *(v0 + 40) = sub_16A354();
  *(v0 + 48) = sub_52248(&qword_1E7400, &type metadata accessor for CarCommandsToggleSnippetUpdateFailure, &protocol conformance descriptor for CarCommandsToggleSnippetUpdateFailure);
  sub_10888((v0 + 16));
  sub_16A344();
  sub_168F04();

  sub_D13C((v0 + 16));

  sub_7DDB4();

  __asm { BRAA            X0, X16 }
}

uint64_t sub_127C94(char a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  *(v5 + 208) = a5;
  *(v5 + 96) = a3;
  *(v5 + 104) = a4;
  *(v5 + 88) = a2;
  *(v5 + 210) = a1;
  sub_5758(&qword_1E6300, &qword_16ECE0);
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = swift_task_alloc();
  sub_16A164();
  *(v5 + 128) = swift_task_alloc();

  return _swift_task_switch(sub_127D74);
}

uint64_t sub_127D74()
{
  if (*(v0 + 210) == 2)
  {
    v1 = *(v0 + 104);
    SignalActivationStatusCATsSimple = type metadata accessor for CarCommandsGetSignalActivationStatusCATsSimple(0);
    sub_122738(SignalActivationStatusCATsSimple);
    *(v0 + 184) = sub_52464();
    if (v1)
    {
      sub_99C94();
      v3 = 0;
    }

    else
    {
      v3 = 1;
    }

    v10 = *(v0 + 112);
    v9 = *(v0 + 120);
    v11 = *(v0 + 208);
    v12 = sub_16A0C4();
    sub_5370(v9, v3, 1, v12);
    sub_16A6E4();
    sub_5370(v10, 0, 1, v12);
    v13 = swift_task_alloc();
    *(v0 + 192) = v13;
    *v13 = v0;
    v13[1] = sub_1282D8;
    v14 = *(v0 + 112);
    v15 = *(v0 + 120);

    return sub_E2258(v15, HIBYTE(v11) & 1, v11 & 1, v14);
  }

  else if ((*(v0 + 208) & 0x100) != 0)
  {
    v7 = type metadata accessor for CarCommandsActivateSignalCATsSimple(0);
    sub_122738(v7);
    *(v0 + 136) = sub_52464();
    v8 = swift_task_alloc();
    *(v0 + 144) = v8;
    *v8 = v0;
    v8[1] = sub_127FDC;

    return sub_31CCC(v8);
  }

  else
  {
    v4 = type metadata accessor for CarCommandsDeactivateSignalCATsSimple(0);
    sub_122738(v4);
    *(v0 + 160) = sub_52464();
    v5 = swift_task_alloc();
    *(v0 + 168) = v5;
    *v5 = v0;
    v5[1] = sub_12815C;

    return sub_7A7FC();
  }
}

uint64_t sub_127FDC()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v0;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v7 + 152) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_1280DC()
{
  sub_1696C();

  v0 = sub_302B8();

  return v1(v0);
}

uint64_t sub_12815C()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[5] = v1;
  v2[6] = v4;
  v2[7] = v0;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v7 + 176) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_12825C()
{
  sub_1696C();
  sub_128D70(*(v0 + 160));

  v1 = sub_302B8();

  return v2(v1);
}

uint64_t sub_1282D8()
{
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[8] = v1;
  v2[9] = v4;
  v2[10] = v0;
  v6 = *(v5 + 120);
  v7 = *(v5 + 112);
  v8 = *v1;
  sub_D254();
  *v9 = v8;
  *(v10 + 200) = v0;

  sub_D188(v7, &qword_1E6300, &qword_16ECE0);
  sub_D188(v6, &qword_1E6300, &qword_16ECE0);
  sub_10B4C();

  return _swift_task_switch(v11);
}

uint64_t sub_128444()
{
  sub_1696C();
  sub_128D70(*(v0 + 184));

  v1 = sub_302B8();

  return v2(v1);
}

uint64_t sub_1284C0()
{
  sub_1696C();

  sub_D37C();

  return v0();
}

uint64_t sub_128540()
{
  sub_1696C();
  sub_128D70(*(v0 + 160));

  sub_D37C();

  return v1();
}

uint64_t sub_1285BC()
{
  sub_1696C();
  sub_128D70(*(v0 + 184));

  sub_D37C();

  return v1();
}

uint64_t sub_128638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  *(v5 + 120) = a5;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = sub_16A274();
  *(v5 + 48) = v6;
  *(v5 + 56) = *(v6 - 8);
  *(v5 + 64) = swift_task_alloc();
  sub_5758(&qword_1E6300, &qword_16ECE0);
  *(v5 + 72) = swift_task_alloc();
  sub_16A164();
  *(v5 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_128764);
}

uint64_t sub_128764()
{
  sub_1696C();
  v1 = v0[5];
  v2 = type metadata accessor for CarCommandsCATsSimple(0);
  sub_122738(v2);
  v0[11] = sub_52464();
  if (v1)
  {
    sub_99C94();
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v0[9];
  v5 = sub_16A0C4();
  sub_5370(v4, v3, 1, v5);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_128864;

  return sub_DE480();
}

uint64_t sub_128864()
{
  sub_1696C();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v9 + 104) = v8;
  *(v9 + 112) = v0;

  sub_D188(v5, &qword_1E6300, &qword_16ECE0);

  sub_10B4C();

  return _swift_task_switch(v10);
}

uint64_t sub_1289B0()
{
  v1 = *(v0 + 40);
  *(v0 + 122) = 0;
  sub_16A134();
  *(v0 + 123) = 2;
  sub_16A134();
  *(v0 + 124) = 1;
  sub_16A134();
  *(v0 + 125) = 4;
  sub_16A134();
  *(v0 + 126) = 3;
  sub_16A134();
  if (v1)
  {
    v2 = *(v0 + 40);

    v3 = [v2 spokenPhrase];
    sub_16A664();
  }

  else
  {
  }

  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 48);
  v7 = *(v0 + 120);
  v8 = *(v0 + 16);
  sub_16A264();

  (*(v4 + 32))(v8, v5, v6);
  v9 = sub_16A284();
  v10 = &enum case for CarCommandsSnippetsPluginModel.visibleSignalStatusModel(_:);
  if ((v7 & 1) == 0)
  {
    v10 = &enum case for CarCommandsSnippetsPluginModel.audibleSignalStatusModel(_:);
  }

  (*(*(v9 - 8) + 104))(v8, *v10, v9);

  sub_D37C();

  return v11();
}

uint64_t sub_128BBC()
{
  sub_D2DC();

  sub_D37C();

  return v0();
}

uint64_t storeEnumTagSinglePayload for SignalStatusSnippetFactory.SignalStatusParameters(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x128D1CLL);
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

uint64_t sub_128D70(uint64_t a1)
{
}

uint64_t type metadata accessor for CarCommandsGetTrunkStatusCATsSimple(uint64_t a1)
{
  result = qword_1EE220;
  if (!qword_1EE220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_128E14(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 80) = a2;
  *(v4 + 16) = a1;
  sub_5758(&qword_1E6300, &qword_16ECE0);
  *(v4 + 40) = swift_task_alloc();
  *(v4 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_128EC4);
}

uint64_t sub_128EC4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v3 = swift_allocObject();
  *(v0 + 56) = v3;
  *(v3 + 16) = xmmword_16EE50;
  *(v3 + 32) = 0x656D614E726163;
  *(v3 + 40) = 0xE700000000000000;
  sub_4EA90(v2, v1, &qword_1E6300, &qword_16ECE0);
  v4 = sub_16A0C4();
  if (sub_9E2C(v1, 1, v4) == 1)
  {
    sub_4EAF4(*(v0 + 48), &qword_1E6300, &qword_16ECE0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    sub_10888((v3 + 48));
    sub_4EB50();
    (*(v5 + 32))();
  }

  v6 = *(v0 + 40);
  v7 = *(v0 + 24);
  v8 = *(v0 + 80);
  *(v3 + 80) = 0x6F6C436B6E757274;
  *(v3 + 88) = 0xEB00000000646573;
  *(v3 + 96) = v8;
  *(v3 + 120) = &type metadata for Bool;
  strcpy((v3 + 128), "appIdentifer");
  *(v3 + 141) = 0;
  *(v3 + 142) = -5120;
  sub_4EA90(v7, v6, &qword_1E6300, &qword_16ECE0);
  if (sub_9E2C(v6, 1, v4) == 1)
  {
    sub_4EAF4(*(v0 + 40), &qword_1E6300, &qword_16ECE0);
    *(v3 + 144) = 0u;
    *(v3 + 160) = 0u;
  }

  else
  {
    *(v3 + 168) = v4;
    sub_10888((v3 + 144));
    sub_4EB50();
    (*(v9 + 32))();
  }

  v12 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_4E5D8;

  return v12(0xD00000000000002FLL, 0x800000000018FE10, v3);
}

uint64_t sub_1291C4(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_129340(uint64_t a1, uint64_t a2)
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

uint64_t sub_129458()
{
  sub_D2DC();
  v1[57] = v2;
  v1[58] = v0;
  sub_16A164();
  v1[59] = swift_task_alloc();
  sub_10B4C();

  return _swift_task_switch(v3);
}

uint64_t sub_1294E0()
{
  sub_10824(*(v0 + 456), v0 + 56);
  sub_5758(&qword_1E5F90, &qword_170270);
  sub_5758(&qword_1EE270, &qword_179828);
  if (!swift_dynamicCast())
  {
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0;
    sub_D188(v0 + 96, &qword_1EE278, &qword_179830);
    type metadata accessor for CarCommandsError(0);
    sub_11D28();
    swift_allocError();
    v14 = v13;
    sub_16ACF4(64);
    *(v0 + 416) = 0;
    *(v0 + 424) = 0xE000000000000000;
    v25._countAndFlagsBits = 0xD000000000000016;
    v25._object = 0x8000000000184C00;
    sub_16A744(v25);
    sub_16AD84();
    v26._countAndFlagsBits = 0xD000000000000028;
    v26._object = 0x800000000018FE40;
    sub_16A744(v26);
    v15 = *(v0 + 424);
    *v14 = *(v0 + 416);
    v14[1] = v15;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_D37C();
    sub_30DE4();

    __asm { BRAA            X1, X16 }
  }

  sub_D124((v0 + 96), v0 + 16);
  sub_D084((v0 + 16), *(v0 + 40));
  v1 = sub_8EF6C();
  *(v0 + 640) = v1;
  if (v1 == 2)
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v2 = sub_16A584();
    sub_9DA0(v2, qword_1E65C0);
    sub_16A9A4();
    sub_71904();
    sub_12AF44();
    sub_386D8(v3, v4, v5, v6, v7, v8, 21, v9, v24);
    sub_3024C(&unk_179C58);
    v10 = swift_task_alloc();
    *(v0 + 608) = v10;
    *v10 = v0;
    sub_12AED4(v10);
    sub_30DE4();

    __asm { BR              X1 }
  }

  sub_D084((*(v0 + 464) + 8), *(*(v0 + 464) + 32));
  swift_task_alloc();
  sub_D3E0();
  *(v0 + 480) = v18;
  *v18 = v19;
  v18[1] = sub_129838;
  sub_30DE4();

  return sub_13AB58(v20, v21);
}

uint64_t sub_129838()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 488) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_129930()
{
  v1 = v0[20];
  v2 = v0[21];
  sub_D084(v0 + 17, v1);
  sub_12AF54();
  v7 = (v3 + *v3);
  swift_task_alloc();
  sub_D3E0();
  v0[62] = v4;
  *v4 = v5;
  v4[1] = sub_129A50;

  return (v7)(v0 + 27, v1, v2);
}

uint64_t sub_129A50()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 504) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_129B48()
{
  sub_D2DC();
  sub_D13C((v0 + 16));

  sub_D37C();

  return v1();
}

uint64_t sub_129BAC()
{
  if (!*(v0 + 240))
  {
    sub_D188(v0 + 216, &qword_1E83D0, &qword_174EE0);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v16 = sub_16A584();
    sub_9DA0(v16, qword_1E65C0);
    sub_16A9A4();
    sub_71904();
    sub_12AF44();
    sub_386D8(v17, v18, v19, v20, v21, v22, 28, v23, v34);
    sub_3024C(&unk_172FB8);
    v35 = v24;
    v25 = swift_task_alloc();
    *(v0 + 592) = v25;
    *v25 = v0;
    v15 = sub_12AED4(v25);

    return v35(v15);
  }

  v1 = *(v0 + 464);
  sub_D124((v0 + 216), v0 + 176);
  v2 = *(v0 + 200);
  v3 = *(v0 + 208);
  sub_D084((v0 + 176), v2);
  v4 = (*(v3 + 72))(v2, v3);
  *(v0 + 512) = v4;
  v5 = sub_D084((v1 + 48), *(v1 + 72));
  v6 = sub_13324C(v4);
  v8 = sub_948E4(v6, *v5, v7);

  v9 = v8[2];

  if (v9)
  {
    v10 = *(v4 + 16);
    *(v0 + 520) = v10;
    *(v0 + 528) = 0;
    result = *(v0 + 512);
    if (v10)
    {
      if (*(result + 16))
      {
        sub_10824(result + 32, v0 + 256);
        sub_D084((v0 + 256), *(v0 + 280));
        sub_71920();
        sub_12AF54();
        v35 = (v12 + *v12);
        swift_task_alloc();
        sub_D3E0();
        *(v0 + 536) = v13;
        *v13 = v14;
        v15 = sub_12AE7C(v13);

        return v35(v15);
      }

      __break(1u);
    }

    else
    {

      type metadata accessor for CarCommandsSetCarPlayClimateSyncCATsSimple(0);
      sub_16A154();
      *(v0 + 552) = sub_16A0F4();
      swift_task_alloc();
      sub_D3E0();
      *(v0 + 560) = v31;
      *v31 = v32;
      v33 = sub_12AEAC(v31);

      return sub_15F73C(v33);
    }
  }

  else
  {
    v26 = *(v0 + 464);

    v27 = *(v1 + 72);
    v28 = *(v26 + 80);
    sub_D084((v1 + 48), v27);
    sub_71920();
    sub_12AF54();
    v36 = (v29 + *v29);
    v30 = swift_task_alloc();
    *(v0 + 576) = v30;
    *v30 = v0;
    v30[1] = sub_12A450;

    return v36(v27, v28);
  }

  return result;
}

uint64_t sub_129FFC()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v3 + 544) = v0;

  sub_D13C((v3 + 256));
  if (v0)
  {
  }

  sub_10B4C();

  return _swift_task_switch(v6);
}

uint64_t sub_12A118()
{
  v1 = v0[66] + 1;
  v0[66] = v1;
  result = v0[64];
  if (v1 == v0[65])
  {

    type metadata accessor for CarCommandsSetCarPlayClimateSyncCATsSimple(0);
    sub_16A154();
    v0[69] = sub_16A0F4();
    swift_task_alloc();
    sub_D3E0();
    v0[70] = v3;
    *v3 = v4;
    v5 = sub_12AEAC(v3);

    return sub_15F73C(v5);
  }

  else if (v1 >= *(result + 16))
  {
    __break(1u);
  }

  else
  {
    sub_10824(result + 40 * v1 + 32, (v0 + 32));
    sub_D084(v0 + 32, v0[35]);
    v9 = (sub_71920() + 16);
    v10 = (*v9 + **v9);
    swift_task_alloc();
    sub_D3E0();
    v0[67] = v6;
    *v6 = v7;
    v8 = sub_12AE7C(v6);

    return v10(v8);
  }

  return result;
}

uint64_t sub_12A2E8()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  v2[37] = v1;
  v2[38] = v4;
  v2[39] = v0;
  sub_71940();
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  v3[71] = v0;

  if (!v0)
  {
  }

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_12A3F4()
{
  sub_D2DC();
  sub_12AF18();
  sub_12AEE8();
  v0 = sub_302B8();

  return v1(v0);
}

uint64_t sub_12A450()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[40] = v1;
  v2[41] = v4;
  v2[42] = v0;
  sub_71940();
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v7 + 584) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_12A54C()
{
  sub_D2DC();
  sub_12AF18();
  sub_12AEE8();
  v0 = sub_302B8();

  return v1(v0);
}

uint64_t sub_12A5A8()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[43] = v1;
  v2[44] = v4;
  v2[45] = v0;
  sub_71940();
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v7 + 600) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_12A6A4()
{
  sub_D2DC();
  sub_D13C((v0 + 136));
  sub_12AEE8();
  v1 = sub_302B8();

  return v2(v1);
}

uint64_t sub_12A704()
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
  *(v7 + 616) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_12A800()
{
  sub_D2DC();
  sub_12AEE8();
  v0 = sub_302B8();

  return v1(v0);
}

uint64_t sub_12A858()
{
  sub_D2DC();
  sub_D13C((v0 + 16));

  sub_D37C();

  return v1();
}

uint64_t sub_12A8BC()
{
  sub_D2DC();
  sub_D13C((v0 + 136));
  sub_D13C((v0 + 16));

  sub_D37C();

  return v1();
}

uint64_t sub_12A928()
{
  sub_D2DC();
  sub_D13C((v0 + 136));
  sub_D13C((v0 + 16));

  sub_D37C();

  return v1();
}

uint64_t sub_12A994()
{
  sub_D2DC();
  sub_12AF18();
  sub_D13C((v0 + 16));

  sub_D37C();

  return v1();
}

void sub_12A9FC()
{
  v1 = v0[68];
  sub_16ACF4(35);
  v0[54] = 0;
  v0[55] = 0xE000000000000000;
  v14._countAndFlagsBits = 0xD000000000000021;
  v14._object = 0x800000000018FF60;
  sub_16A744(v14);
  v0[56] = v1;
  sub_5758(&qword_1E6360, &qword_16E3B0);
  sub_16AD84();
  v3 = v0[54];
  v2 = v0[55];
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v4 = sub_16A584();
  sub_9DA0(v4, qword_1E65C0);
  sub_16A9A4();
  sub_12AF44();
  sub_386D8(v5, v6, v7, v8, v9, v10, 44, v3, v2);

  sub_3024C(&unk_174EF8);
  v11 = swift_task_alloc();
  v0[78] = v11;
  *v11 = v0;
  sub_12AED4(v11);
  sub_30DE4();

  __asm { BR              X1 }
}

uint64_t sub_12ABA8()
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
  *(v7 + 632) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_12ACA4()
{
  sub_D2DC();

  sub_12AF18();
  sub_12AEE8();
  v0 = sub_302B8();

  return v1(v0);
}

uint64_t sub_12AD08()
{
  sub_D2DC();

  sub_12AF18();
  sub_D13C((v0 + 16));

  sub_D37C();

  return v1();
}

uint64_t sub_12AD78()
{
  sub_D2DC();

  sub_12AF18();
  sub_D13C((v0 + 16));

  sub_D37C();

  return v1();
}

uint64_t sub_12ADE8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_3E08C;

  return sub_129458();
}

uint64_t sub_12AEE8()
{
  sub_D13C((v0 + 16));
}

uint64_t sub_12AF18()
{
  sub_D13C((v0 + 176));

  return sub_D13C((v0 + 136));
}

uint64_t sub_12AF64(unint64_t a1, void *a2)
{
  v22 = a1;
  v21 = sub_168454();
  sub_9F48();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_168E04();
  if (qword_1E5960 != -1)
  {
    sub_12D7A4(&qword_1E5960);
  }

  sub_12B5F8();
  sub_168DB4();
  v8 = sub_5758(&qword_1E5F70, &unk_16F3F0);
  v9 = sub_12D81C(v8);
  *(v9 + 16) = xmmword_16D9A0;
  v23 = sub_12CFD4(&type metadata for CarCommandsConfirmationNLv3Value, &qword_1EE290, &qword_179840);
  v24 = v10;

  v25._countAndFlagsBits = sub_12D7C4();
  v25._object = 0xE700000000000000;
  sub_16A744(v25);

  v11 = v23;
  v12 = v24;
  v13 = sub_12D7EC();
  v15 = v14;
  v23 = v11;
  v24 = v12;

  v26._countAndFlagsBits = v13;
  v26._object = v15;
  sub_16A744(v26);

  v16 = v24;
  *(v9 + 32) = v23;
  *(v9 + 40) = v16;
  sub_168DA4();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_16D3A0;
  if (qword_1E5910 != -1)
  {
    sub_12D7D8();
    swift_once();
  }

  *(v17 + 32) = sub_12B738(&qword_1EBC70, &qword_176FE8, &qword_1EBC78);
  *(v17 + 40) = v18;
  if (qword_1E5930 != -1)
  {
    swift_once();
  }

  *(v17 + 48) = sub_12B738(&qword_1EBC20, &qword_176FC0, &qword_1EBC28);
  *(v17 + 56) = v19;
  sub_168DE4();
  sub_168D94();
  sub_D084(a2, a2[3]);
  sub_168AD4();
  sub_12CAE4(v22, v7);
  (*(v4 + 8))(v7, v21);
  sub_168D74();
  sub_F3214();
  return sub_168D84();
}

void sub_12B25C()
{
  v0 = [objc_allocWithZone(SAAceConfirmationContext) init];
  v1 = sub_16A664();
  sub_12D6EC(v1, v2, v0);
  sub_12C0B0(v3);
  sub_5758(&qword_1EA2B0, &qword_16DFB0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_16D440;
  *(v4 + 32) = v0;
  v5 = v0;
  sub_168DC4();
  sub_169134();
  swift_allocObject();
  sub_169124();
  sub_16A1B4();
  sub_169104();

  sub_169114();

  sub_168DF4();
  sub_F4CF4();
  sub_168D84();
}

uint64_t sub_12B3C4(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_16A724();
    v3 = sub_16A794();

    return v3;
  }

  return result;
}

uint64_t sub_12B484(uint64_t a1)
{
  v1 = a1;
  sub_168E04();
  if (qword_1E5960 != -1)
  {
    sub_12D7A4(&qword_1E5960);
  }

  sub_12B5F8();
  sub_168DB4();
  if (v1 <= 0xF7u)
  {
    sub_12B898(v1);
    sub_168DE4();
    sub_12BBA4(v1);
    sub_168DD4();
  }

  v2 = sub_5758(&qword_1E5F70, &unk_16F3F0);
  v3 = sub_12D81C(v2);
  *(v3 + 16) = xmmword_16D9A0;
  v9 = sub_12CFD4(&type metadata for CarCommandsConfirmationNLv3Value, &qword_1EE290, &qword_179840);
  v10 = v4;

  v11._countAndFlagsBits = sub_12D7C4();
  v11._object = 0xE700000000000000;
  sub_16A744(v11);

  v5 = sub_12D7EC();
  v7 = v6;

  v12._countAndFlagsBits = v5;
  v12._object = v7;
  sub_16A744(v12);

  *(v3 + 32) = v9;
  *(v3 + 40) = v10;
  sub_168DA4();
  sub_168D94();
  sub_F483C();
  return sub_168D84();
}

unint64_t sub_12B5F8()
{
  sub_1696B4();
  v0 = sub_1696E4();
  sub_8A160(v0, v1);
  v3 = v2;

  if (v3)
  {
    v4 = sub_16A5E4();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xE000000000000000;
  }

  v10._countAndFlagsBits = v4;
  v10._object = v6;
  sub_16A744(v10);

  v7 = sub_1696E4();
  sub_12D618(1uLL, v7, v8);
  sub_12D750();

  sub_16A734();

  return 0xD000000000000012;
}

unint64_t sub_12B738(uint64_t *a1, uint64_t *a2, unint64_t *a3)
{
  sub_5758(a1, a2);
  sub_EAA28(a3, a1, a2);
  v6 = sub_1696E4();
  sub_8A160(v6, v7);
  v9 = v8;

  if (v9)
  {
    v10 = sub_16A5E4();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xE000000000000000;
  }

  v16._countAndFlagsBits = v10;
  v16._object = v12;
  sub_16A744(v16);

  v13 = sub_1696E4();
  sub_12D618(1uLL, v13, v14);
  sub_12D750();

  sub_16A734();

  return 0xD000000000000012;
}

uint64_t sub_12B898(unsigned __int8 a1)
{
  switch(a1 >> 4)
  {
    case 0:
      if ((a1 & 1) == 0)
      {
        goto LABEL_17;
      }

      sub_5758(&qword_1E5F70, &unk_16F3F0);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_16D9A0;
      v4 = &type metadata for CarCommandsNounNLv3Value;
      v5 = &unk_1EE298;
      v6 = &unk_179848;
      goto LABEL_16;
    case 1:
    case 2:
    case 4:
      if ((a1 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_9;
    case 3:
      if ((a1 & 1) == 0)
      {
        goto LABEL_17;
      }

      sub_5758(&qword_1E5F70, &unk_16F3F0);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_16D9A0;
      v4 = &type metadata for CarCommandsSettingsStateNLv3Value;
      v5 = qword_1EE2A0;
      v6 = &unk_179850;
LABEL_16:
      v7 = sub_12CFD4(v4, v5, v6);
      goto LABEL_20;
    case 5:
      if ((a1 & 0xF) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_9;
    case 6:
      if (a1)
      {
        goto LABEL_17;
      }

      goto LABEL_9;
    case 10:
      if ((a1 + 96) >= 3u)
      {
        goto LABEL_9;
      }

LABEL_17:
      sub_5758(&qword_1E5F70, &unk_16F3F0);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_16D9A0;
      if (qword_1E5958 != -1)
      {
        swift_once();
      }

      v7 = sub_12B738(&qword_1EBC70, &qword_176FE8, &qword_1EBC78);
LABEL_20:
      *(v3 + 32) = v7;
      *(v3 + 40) = v8;
      break;
    default:
LABEL_9:
      sub_16ACF4(24);
      v10._object = 0x8000000000190050;
      v10._countAndFlagsBits = 0xD000000000000015;
      sub_16A744(v10);
      sub_16AD84();
      v11._countAndFlagsBits = 34;
      v11._object = 0xE100000000000000;
      sub_16A744(v11);
      if (qword_1E58E8 != -1)
      {
        swift_once();
      }

      v1 = sub_16A584();
      sub_9DA0(v1, qword_1E65C0);
      v2 = sub_16A9A4();
      sub_386D8(v2, 8uLL, 0xD000000000000077, 0x800000000018FFB0, 0xD000000000000015, 0x8000000000190070, 201, 0, 0xE000000000000000);

      v3 = 0;
      break;
  }

  return v3;
}

void *sub_12BBA4(unsigned __int8 a1)
{
  switch(a1 >> 4)
  {
    case 0:
      if ((a1 & 1) == 0)
      {
        goto LABEL_20;
      }

      sub_5758(&qword_1E5F70, &unk_16F3F0);
      v3 = swift_allocObject();
      *(v3 + 1) = xmmword_175690;
      v3[4] = sub_12BFD4(30);
      v3[5] = v10;
      v3[6] = sub_12BFD4(16);
      v3[7] = v11;
      v3[8] = sub_12BFD4(1);
      v3[9] = v12;
      v3[10] = sub_12BFD4(7);
      v3[11] = v13;
      v3[12] = sub_12BFD4(19);
      v3[13] = v14;
      v3[14] = sub_12BFD4(6);
      v3[15] = v15;
      v3[16] = sub_12BFD4(37);
      v3[17] = v16;
      v25 = sub_12CFD4(&type metadata for CarCommandsConfirmationNLv3Value, &qword_1EE290, &qword_179840);
      v27 = v17;

      v32._countAndFlagsBits = 0x2E65756C61562ELL;
      v32._object = 0xE700000000000000;
      sub_16A744(v32);

      v18 = sub_16A6B4();
      v20 = v19;

      v33._countAndFlagsBits = v18;
      v33._object = v20;
      sub_16A744(v33);

      v3[18] = v25;
      v3[19] = v27;
      return v3;
    case 1:
    case 2:
    case 4:
      if (a1)
      {
        goto LABEL_9;
      }

      goto LABEL_20;
    case 3:
      if ((a1 & 1) == 0)
      {
        goto LABEL_20;
      }

      v3 = sub_12D33C();
      v24 = sub_12CFD4(&type metadata for CarCommandsConfirmationNLv3Value, &qword_1EE290, &qword_179840);
      v26 = v4;

      v30._countAndFlagsBits = 0x2E65756C61562ELL;
      v30._object = 0xE700000000000000;
      sub_16A744(v30);

      v5 = sub_16A6B4();
      v7 = v6;

      v31._countAndFlagsBits = v5;
      v31._object = v7;
      sub_16A744(v31);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1084D8();
        v3 = v22;
      }

      v8 = v3[2];
      if (v8 >= v3[3] >> 1)
      {
        sub_1084D8();
        v3 = v23;
      }

      v3[2] = v8 + 1;
      v9 = &v3[2 * v8];
      v9[4] = v24;
      v9[5] = v26;
      break;
    case 5:
      if ((a1 & 0xF) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_9;
    case 6:
      if (a1)
      {
        goto LABEL_20;
      }

      goto LABEL_9;
    case 10:
      if ((a1 + 96) >= 3u)
      {
        goto LABEL_9;
      }

LABEL_20:
      v3 = _swiftEmptyArrayStorage;
      break;
    default:
LABEL_9:
      sub_16ACF4(24);
      v28._object = 0x8000000000190050;
      v28._countAndFlagsBits = 0xD000000000000015;
      sub_16A744(v28);
      sub_16AD84();
      v29._countAndFlagsBits = 34;
      v29._object = 0xE100000000000000;
      sub_16A744(v29);
      if (qword_1E58E8 != -1)
      {
        swift_once();
      }

      v1 = sub_16A584();
      sub_9DA0(v1, qword_1E65C0);
      v2 = sub_16A9A4();
      sub_386D8(v2, 8uLL, 0xD000000000000077, 0x800000000018FFB0, 0xD000000000000015, 0x8000000000190030, 235, 0, 0xE000000000000000);

      v3 = 0;
      break;
  }

  return v3;
}

unint64_t sub_12BFD4(char a1)
{
  v6 = sub_12CFD4(&type metadata for CarCommandsNounNLv3Value, &qword_1EE298, &qword_179848);

  v7._countAndFlagsBits = 0x2E65756C61562ELL;
  v7._object = 0xE700000000000000;
  sub_16A744(v7);

  sub_77154(a1);
  v2 = sub_16A6B4();
  v4 = v3;

  v8._countAndFlagsBits = v2;
  v8._object = v4;
  sub_16A744(v8);

  return v6;
}

uint64_t sub_12C0B0(uint64_t a1)
{
  sub_168E04();
  if (qword_1E5960 != -1)
  {
    sub_12D7A4(&qword_1E5960);
  }

  sub_12B5F8();
  sub_168DB4();
  v1 = sub_5758(&qword_1E5F70, &unk_16F3F0);
  v2 = sub_12D81C(v1);
  *(v2 + 16) = xmmword_16D9A0;
  *(v2 + 32) = sub_12CFD4(&type metadata for CarCommandsConfirmationNLv3Value, &qword_1EE290, &qword_179840);
  *(v2 + 40) = v3;
  sub_168DE4();
  sub_12D09C();
  sub_168DD4();
  *(sub_12D81C(v1) + 16) = xmmword_16D9A0;
  v8 = sub_12CFD4(&type metadata for CarCommandsConfirmationNLv3Value, &qword_1EE290, &qword_179840);

  v9._countAndFlagsBits = sub_12D7C4();
  v9._object = 0xE700000000000000;
  sub_16A744(v9);

  v4 = sub_12D7EC();
  v6 = v5;

  v10._countAndFlagsBits = v4;
  v10._object = v6;
  sub_16A744(v10);

  sub_12D80C(v8);
  sub_168DA4();
  return sub_168D94();
}

uint64_t sub_12C22C(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  sub_168E04();
  if (qword_1E5960 != -1)
  {
    sub_12D7A4(&qword_1E5960);
  }

  sub_12B5F8();
  sub_168DB4();
  v3 = sub_5758(&qword_1E5F70, &unk_16F3F0);
  *(sub_12D81C(v3) + 16) = xmmword_16D9A0;
  v12 = sub_12CFD4(&type metadata for CarCommandsConfirmationNLv3Value, &qword_1EE290, &qword_179840);

  v14._countAndFlagsBits = sub_12D7C4();
  v14._object = 0xE700000000000000;
  sub_16A744(v14);

  v4 = sub_16A6B4();
  v6 = v5;

  v15._countAndFlagsBits = v4;
  v15._object = v6;
  sub_16A744(v15);

  sub_12D80C(v12);
  sub_168DD4();
  *(sub_12D81C(v3) + 16) = xmmword_16D9A0;
  v13 = sub_12CFD4(&type metadata for CarCommandsConfirmationNLv3Value, &qword_1EE290, &qword_179840);

  v16._countAndFlagsBits = sub_12D7C4();
  v16._object = 0xE700000000000000;
  sub_16A744(v16);

  v7 = sub_16A6B4();
  v9 = v8;

  v17._countAndFlagsBits = v7;
  v17._object = v9;
  sub_16A744(v17);

  sub_12D80C(v13);
  sub_168DA4();
  sub_168D94();
  if (v2 <= 0xF7u)
  {
    sub_12B898(v2);
    sub_168DE4();
  }

  sub_12C478(a2, v2);
  sub_168D74();
  sub_F4044();
  return sub_168D84();
}

void *sub_12C478(uint64_t a1, unsigned __int8 a2)
{
  v4 = a2;
  v5 = sub_5758(&qword_1EE280, &qword_179838);
  __chkstk_darwin(v5 - 8);
  v44 = &v36 - v6;
  v43 = sub_168C44();
  v7 = *(v43 - 8);
  v8 = __chkstk_darwin(v43);
  v41 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v36 - v10;
  v42 = sub_168B94();
  v12 = *(v42 - 8);
  v13 = __chkstk_darwin(v42);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  if (v4 <= 0xF7)
  {
    switch(a2 >> 4)
    {
      case 0:
      case 1:
      case 2:
      case 3:
      case 4:
        if (a2)
        {
          goto LABEL_13;
        }

        goto LABEL_4;
      case 5:
        if ((a2 & 0xF) != 0)
        {
          goto LABEL_13;
        }

        goto LABEL_4;
      case 6:
        if ((a2 & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_4;
      case 10:
        if ((a2 + 96) >= 3u)
        {
          goto LABEL_13;
        }

LABEL_4:
        v17 = *(a1 + 16);
        v18 = _swiftEmptyArrayStorage;
        if (v17)
        {
          v40 = &v36 - v16;
          v46 = _swiftEmptyArrayStorage;
          sub_146AC0(0, v17, 0);
          v38 = v12;
          v39 = (v7 + 16);
          v18 = v46;
          v36 = v12 + 32;
          v37 = (v7 + 8);
          v19 = a1 + 40;
          do
          {
            v20 = qword_1E5958;

            if (v20 != -1)
            {
              swift_once();
            }

            sub_1696D4();
            sub_12B738(&qword_1EBC70, &qword_176FE8, &qword_1EBC78);
            sub_168C24();
            v21 = *v39;
            v23 = v43;
            v22 = v44;
            (*v39)(v44, v11, v43);
            sub_5370(v22, 0, 1, v23);
            v21(v41, v11, v23);
            v24 = v40;
            sub_168B84();

            (*v37)(v11, v23);
            v46 = v18;
            v26 = v18[2];
            v25 = v18[3];
            if (v26 >= v25 >> 1)
            {
              sub_146AC0(v25 > 1, v26 + 1, 1);
              v24 = v40;
              v18 = v46;
            }

            v18[2] = v26 + 1;
            (*(v38 + 32))(v18 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v26, v24, v42);
            v19 += 16;
            --v17;
          }

          while (v17);
        }

        return v18;
      default:
LABEL_13:
        v46 = 0;
        v47 = 0xE000000000000000;
        sub_16ACF4(24);
        v48._object = 0x8000000000190050;
        v48._countAndFlagsBits = 0xD000000000000015;
        sub_16A744(v48);
        v45 = a2;
        sub_16AD84();
        v49._countAndFlagsBits = 34;
        v49._object = 0xE100000000000000;
        sub_16A744(v49);
        v27 = v46;
        v28 = v47;
        if (qword_1E58E8 != -1)
        {
          swift_once();
        }

        v29 = sub_16A584();
        sub_9DA0(v29, qword_1E65C0);
        v30 = sub_16A9A4();
        sub_386D8(v30, 8uLL, 0xD000000000000077, 0x800000000018FFB0, 0xD000000000000017, 0x8000000000190090, 175, v27, v28);

        break;
    }
  }

  v31 = *(a1 + 16);
  v18 = _swiftEmptyArrayStorage;
  if (v31)
  {
    v46 = _swiftEmptyArrayStorage;
    sub_146AC0(0, v31, 0);
    v18 = v46;
    v32 = a1 + 40;
    do
    {
      sub_5370(v44, 1, 1, v43);
      swift_bridgeObjectRetain_n();
      sub_168C34();
      sub_168B84();

      v46 = v18;
      v34 = v18[2];
      v33 = v18[3];
      if (v34 >= v33 >> 1)
      {
        sub_146AC0(v33 > 1, v34 + 1, 1);
        v18 = v46;
      }

      v18[2] = v34 + 1;
      (*(v12 + 32))(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v34, v15, v42);
      v32 += 16;
      --v31;
    }

    while (v31);
  }

  return v18;
}

void *sub_12CAE4(unint64_t a1, uint64_t a2)
{
  v42 = a2;
  v3 = sub_5758(&qword_1EE280, &qword_179838);
  __chkstk_darwin(v3 - 8);
  v39 = &v33 - v4;
  v38 = sub_168B94();
  sub_9F48();
  v40 = v5;
  __chkstk_darwin(v6);
  v47 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_168C44();
  sub_9F48();
  v9 = v8;
  v11 = __chkstk_darwin(v10);
  v37 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v45 = &v33 - v14;
  result = __chkstk_darwin(v13);
  v17 = &v33 - v16;
  if (!(a1 >> 62))
  {
    v18 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v18)
    {
      goto LABEL_3;
    }

    return _swiftEmptyArrayStorage;
  }

  result = sub_16ADC4();
  v18 = result;
  if (!result)
  {
    return _swiftEmptyArrayStorage;
  }

LABEL_3:
  if (v18 >= 1)
  {
    v44 = v17;
    v19 = 0;
    v48 = a1 & 0xC000000000000001;
    v34 = (v9 + 8);
    v35 = (v9 + 16);
    v33 = v40 + 32;
    v20 = _swiftEmptyArrayStorage;
    v41 = a1;
    v36 = v18;
    do
    {
      if (v48)
      {
        sub_16AD04();
      }

      else
      {
      }

      sub_169074();
      swift_allocObject();

      sub_169064();
      sub_16A1B4();
      if (v21)
      {
        sub_169054();
        if (v22)
        {
          if (qword_1E5918 != -1)
          {
            swift_once();
          }

          v43 = v20;
          sub_1696D4();
          v23 = v44;
          sub_168C34();
          if (qword_1E5910 != -1)
          {
            sub_12D7D8();
            swift_once();
          }

          sub_1696D4();
          v24 = v45;
          sub_168C34();
          v25 = *v35;
          v26 = v39;
          v27 = v46;
          (*v35)(v39, v23, v46);
          sub_5370(v26, 0, 1, v27);
          v25(v37, v24, v27);
          sub_168B84();
          v20 = v43;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1085A8();
            v20 = v31;
          }

          v18 = v36;
          v28 = v20[2];
          if (v28 >= v20[3] >> 1)
          {
            sub_1085A8();
            v20 = v32;
          }

          v29 = *v34;
          v30 = v46;
          (*v34)(v45, v46);
          v29(v44, v30);
          v20[2] = v28 + 1;
          (*(v40 + 32))(v20 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v28, v47, v38);
        }

        else
        {
        }
      }

      else
      {
      }

      v19 = (v19 + 1);
    }

    while (v18 != v19);
    return v20;
  }

  __break(1u);
  return result;
}

unint64_t sub_12CFD4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_5758(a2, a3);
  v3 = sub_16A694();
  v5 = v4;
  v6 = sub_16A704();
  sub_12B3C4(v6, v3, v5);
  sub_12D750();
  sub_16A734();

  return 0xD000000000000012;
}

uint64_t sub_12D09C()
{
  sub_146878(0, 3, 0);
  v0 = 0;
  while (1)
  {
    sub_5758(&qword_1EE290, &qword_179840);
    sub_16A694();
    result = sub_16A704();
    if (result < 0)
    {
      break;
    }

    sub_16A724();
    sub_16A794();

    sub_12D750();
    sub_16A734();

    v8._countAndFlagsBits = 0x2E65756C61562ELL;
    v8._object = 0xE700000000000000;
    sub_16A744(v8);

    v2 = sub_16A6B4();
    v4 = v3;

    v9._countAndFlagsBits = v2;
    v9._object = v4;
    sub_16A744(v9);

    v6 = _swiftEmptyArrayStorage[2];
    v5 = _swiftEmptyArrayStorage[3];
    if (v6 >= v5 >> 1)
    {
      sub_146878(v5 > 1, v6 + 1, 1);
    }

    ++v0;
    _swiftEmptyArrayStorage[2] = v6 + 1;
    v7 = &_swiftEmptyArrayStorage[2 * v6];
    v7[4] = 0xD000000000000012;
    v7[5] = 0x800000000018FF90;
    if (v0 == 3)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
  return result;
}

void *sub_12D33C()
{
  sub_146878(0, 4, 0);
  v0 = 0;
  do
  {
    sub_5758(qword_1EE2A0, &unk_179850);
    sub_16A694();
    if (sub_16A704() < 0)
    {
      __break(1u);
      JUMPOUT(0x12D608);
    }

    sub_16A724();
    sub_16A794();

    sub_12D750();
    sub_16A734();

    v8._countAndFlagsBits = 0x2E65756C61562ELL;
    v8._object = 0xE700000000000000;
    sub_16A744(v8);

    v1 = sub_16A6B4();
    v3 = v2;

    v9._countAndFlagsBits = v1;
    v9._object = v3;
    sub_16A744(v9);

    v5 = _swiftEmptyArrayStorage[2];
    v4 = _swiftEmptyArrayStorage[3];
    if (v5 >= v4 >> 1)
    {
      sub_146878(v4 > 1, v5 + 1, 1);
    }

    ++v0;
    _swiftEmptyArrayStorage[2] = v5 + 1;
    v6 = &_swiftEmptyArrayStorage[2 * v5];
    v6[4] = 0xD000000000000012;
    v6[5] = 0x800000000018FF90;
  }

  while (v0 != 4);
  return _swiftEmptyArrayStorage;
}

unint64_t sub_12D618(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_16A724();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_16A794();

      return v7;
    }
  }

  __break(1u);
  return result;
}

void sub_12D6EC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_16A644();

  [a3 setReason:v4];
}

unint64_t sub_12D750()
{
  result = qword_1EE288;
  if (!qword_1EE288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288);
  }

  return result;
}

uint64_t sub_12D7A4(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_12D7EC()
{

  return sub_16A6B4();
}

uint64_t sub_12D80C@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return v2;
}

uint64_t sub_12D81C(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_12D884()
{
  *(v1 + 32) = v0;
  *(v1 + 40) = *v0;
  return sub_16620(sub_12D8C4);
}

uint64_t sub_12D8C4()
{
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v1 = v0[4];
  v2 = v0[5];
  v3 = sub_16A584();
  v0[6] = sub_9DA0(v3, qword_1E65C0);
  sub_16A9A4();
  sub_12F260();
  sub_386D8(v4, v5, v6, v7, v8, v9, 33, v10, 0x80000000001901B0);
  v0[2] = *(v2 + 416);
  swift_getMetatypeMetadata();
  v0[7] = sub_16A694();
  v0[8] = v11;
  v12 = *(v1 + qword_1F0DE8);
  v0[9] = v12;

  v13 = swift_task_alloc();
  v0[10] = v13;
  v14 = sub_5758(&qword_1E77D0, &unk_179A60);
  *v13 = v0;
  v13[1] = sub_12DA60;

  return Task<>.value.getter(v0 + 3, v12, v14);
}

uint64_t sub_12DA60()
{
  sub_D2DC();
  sub_D358();
  v1 = *v0;
  sub_D254();
  *v2 = v1;

  return _swift_task_switch(sub_12DB68);
}

uint64_t sub_12DB68()
{
  v1 = *(v0 + 24);
  result = sub_11B48C();
  v3 = result;
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {
      v9 = v27;
      v11 = *(v27 + 56);
      v10 = *(v27 + 64);

      sub_16ACF4(69);
      v29._countAndFlagsBits = 0xD000000000000042;
      v29._object = 0x8000000000190250;
      sub_16A744(v29);
      v30._countAndFlagsBits = v11;
      v30._object = v10;
      sub_16A744(v30);

      v31._countAndFlagsBits = 46;
      v31._object = 0xE100000000000000;
      sub_16A744(v31);
      sub_16A9A4();
      sub_12F260();
      sub_386D8(v12, v13, v14, v15, v16, v17, 41, 0, 0xE000000000000000);

      sub_168FB4();
      v18 = sub_168F74();
      goto LABEL_18;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      result = sub_16AD04();
    }

    else
    {
      if (i >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_22;
      }
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

    v5 = sub_16A1B4();
    if (!v6)
    {
      goto LABEL_13;
    }

    if (v5 == 0xD00000000000001FLL && v6 == 0x8000000000190200)
    {
      break;
    }

    v8 = sub_16AE54();

    if (v8)
    {
      goto LABEL_17;
    }

LABEL_13:
  }

LABEL_17:

  v9 = v27;

  sub_16A9A4();
  sub_12F260();
  sub_386D8(v19, v20, v21, v22, v23, v24, 38, v25, 0x8000000000190220);
  sub_168FB4();
  v18 = sub_168FA4();

LABEL_18:
  v26 = *(v9 + 8);

  return v26(v18);
}

uint64_t sub_12DE80()
{
  sub_D2DC();
  sub_168BB4();
  sub_168BA4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_12DF34()
{
  sub_D2DC();
  v1[17] = v2;
  v1[18] = v0;
  v3 = sub_1693E4();
  v1[19] = v3;
  v1[20] = *(v3 - 8);
  v1[21] = swift_task_alloc();
  v4 = sub_1693A4();
  v1[22] = v4;
  v1[23] = *(v4 - 8);
  v1[24] = swift_task_alloc();

  return _swift_task_switch(sub_12E04C);
}

uint64_t sub_12E04C()
{
  v21 = v0;
  v1 = *(*(v0 + 144) + 176);
  v2 = 0x8000000000190180;
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v3 = 0xD00000000000002ELL;
  v4 = sub_16A584();
  sub_9DA0(v4, qword_1E65C0);
  v5 = sub_16A9A4();
  *(v0 + 96) = 0xD000000000000099;
  *(v0 + 104) = 0x80000000001900E0;
  *(v0 + 112) = 47;
  *(v0 + 120) = 0xE100000000000000;
  sub_D030();
  v6 = sub_16AB34();
  v7 = sub_15AE4(v6);
  v9 = v8;

  if (v9)
  {
    v23._countAndFlagsBits = 32;
    v23._object = 0xE100000000000000;
    sub_16A744(v23);
    v24._countAndFlagsBits = 0xD00000000000002ELL;
    v24._object = 0x8000000000190180;
    sub_16A744(v24);
    v3 = v7;
    v2 = v9;
  }

  v20._countAndFlagsBits = 58;
  v20._object = 0xE100000000000000;
  *(v0 + 128) = 67;
  v25._countAndFlagsBits = sub_16AE24();
  sub_16A744(v25);

  sub_16A744(v20);

  v10._countAndFlagsBits = sub_378D0(v1);
  if (v10._object)
  {
    v20._countAndFlagsBits = 32;
    v20._object = 0xE100000000000000;
    sub_16A744(v10);

    v26._countAndFlagsBits = 32;
    v26._object = 0xE100000000000000;
    sub_16A744(v26);
  }

  v11 = sub_16A574();
  if (os_log_type_enabled(v11, v5))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20._countAndFlagsBits = v13;
    *v12 = 136315138;
    v14 = sub_15BC8(v3, v2, &v20._countAndFlagsBits);

    *(v12 + 4) = v14;
    _os_log_impl(&dword_0, v11, v5, "%s", v12, 0xCu);
    sub_D13C(v13);
  }

  else
  {
  }

  v16 = *(v0 + 160);
  v15 = *(v0 + 168);
  v17 = *(v0 + 152);
  sub_10824(*(v0 + 144) + qword_1F0DE0, v0 + 16);
  sub_1693F4();
  type metadata accessor for CommonUnsupportedActionFlow(0);
  swift_allocObject();
  *(v0 + 200) = sub_C1248((v0 + 56), (v0 + 16));
  (*(v16 + 104))(v15, enum case for Parse.empty(_:), v17);
  sub_169394();
  v18 = swift_task_alloc();
  *(v0 + 208) = v18;
  *v18 = v0;
  v18[1] = sub_12E3E0;

  return sub_C0F34();
}

uint64_t sub_12E3E0()
{
  sub_D358();
  v3 = v2;
  v4 = v2[24];
  v5 = v2[23];
  v6 = v2[22];
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  v3[27] = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {

    return _swift_task_switch(sub_12E5BC);
  }

  else
  {

    v9 = *(v7 + 8);

    return v9();
  }
}

uint64_t sub_12E5BC()
{
  sub_D2DC();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_12E628()
{
  sub_D13C((v0 + qword_1F0DE0));
}

void *sub_12E668()
{
  v0 = sub_3D044();
  sub_D13C((v0 + qword_1F0DE0));

  return v0;
}

uint64_t sub_12E6B0()
{
  v0 = sub_12E668();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_12E71C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_36648;

  return sub_12D884();
}

uint64_t sub_12E7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_12078;

  return AppResolutionOnDeviceFlowStrategyAsync.makeAppResolutionSuccessfulResponse(app:)(a1, a2, a3, a4);
}

uint64_t sub_12E870()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_12078;

  return sub_12DF34();
}

uint64_t sub_12E90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_12078;

  return AppResolutionOnDeviceFlowStrategyAsync.makeErrorResponse(error:)(a1, a2, a3, a4);
}

uint64_t sub_12E9E8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_12078;

  return sub_12DE68(a1);
}

uint64_t sub_12EA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_12078;

  return AppConfirmationStrategyAsync.makeRepromptOnEmptyParse(app:)(a1, a2, a3, a4);
}

uint64_t sub_12EB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_12078;

  return AppConfirmationStrategyAsync.makeRepromptOnLowConfidence(app:)(a1, a2, a3, a4);
}

uint64_t sub_12EC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_12078;

  return AppConfirmationStrategyAsync.makeConfirmationRejectedResponse(app:)(a1, a2, a3, a4);
}

uint64_t sub_12ECCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_12078;

  return AppConfirmationStrategyAsync.makeConfirmationCancelledResponse(app:)(a1, a2, a3, a4);
}

uint64_t sub_12ED90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_11F8C;

  return AppConfirmationStrategyAsync.makeConfirmationErrorResponse(error:app:)(a1, a2, a3, a4, a5);
}

uint64_t sub_12EE74(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_12078;

  return sub_12DF1C(a1);
}

uint64_t sub_12EF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_12078;

  return AppDisambiguationStrategyAsync.makeRepromptOnEmptyParse(apps:)(a1, a2, a3, a4);
}

uint64_t sub_12EFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_12078;

  return AppDisambiguationStrategyAsync.makeRepromptOnLowConfidence(apps:)(a1, a2, a3, a4);
}

uint64_t sub_12F094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_12078;

  return AppDisambiguationStrategyAsync.makeDisambiguationCancelResponse(apps:)(a1, a2, a3, a4);
}

uint64_t sub_12F158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_12078;

  return AppDisambiguationStrategyAsync.makeDisambiguationErrorResponse(error:apps:)(a1, a2, a3, a4, a5);
}

uint64_t sub_12F270(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v3 = sub_5758(&qword_1E76A0, &qword_172B00);
  v32 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v32 - v4;
  v6 = sub_5758(&qword_1E6300, &qword_16ECE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v32 - v7;
  v9 = sub_5758(&qword_1EE558, &qword_179BF0);
  __chkstk_darwin(v9 - 8);
  v10 = sub_168454();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_55158();
  (*(v11 + 16))(v13, a1, v10);
  sub_1683A4();
  v14 = sub_16A9D4();
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 celsius];
  LOBYTE(v14) = sub_16AAD4();

  if (v14 & 1) != 0 || (v18 = v16, v19 = [v15 fahrenheit], v20 = sub_16AAD4(), v18, v19, (v20) || (v21 = v18, v22 = objc_msgSend(v15, "kelvin"), v23 = sub_16AAD4(), v21, v22, (v23))
  {
    sub_168314();
    v24 = sub_1682F4();
    v25 = sub_16AAD4();

    if ((v25 & 1) == 0)
    {
      v26 = v16;
      sub_168344();
      sub_168314();

      (*(v32 + 8))(v5, v3);
    }

    sub_169F04();
    swift_allocObject();
    sub_169EF4();
    sub_169FA4();

    sub_16A6E4();

    v27 = sub_16A0C4();
    sub_5370(v8, 0, 1, v27);
    sub_169F94();

    sub_D188(v8, &qword_1E6300, &qword_16ECE0);
    v28 = sub_169F84();

    sub_54A30(v33, &v34);
    if (v35)
    {
      sub_D124(&v34, v36);
      sub_16A074();
      sub_10824(v36, &v34);
      v29 = sub_16A064();

      v30 = v29;
      sub_169F74();

      sub_D13C(v36);
    }

    else
    {

      sub_D188(&v34, &qword_1E6030, &unk_173620);
    }
  }

  else
  {

    return 0;
  }

  return v28;
}

uint64_t sub_12F780()
{
  sub_D2DC();
  v2 = sub_C5D74(v1);
  sub_D414(v2);
  *(v0 + 64) = sub_D3C8();
  v3 = sub_D388();

  return _swift_task_switch(v3);
}

uint64_t sub_12F7F0()
{
  sub_1696C();
  sub_C5D00();
  sub_13067C();
  sub_132B24();
  v0 = sub_9F300();
  sub_482AC(v0);
  v1 = sub_9F3C8();
  sub_C5DB4(v1);
  v2 = swift_task_alloc();
  v3 = sub_C5DA8(v2);
  *v3 = v4;
  sub_3099C(v3);

  return sub_DF654();
}

uint64_t sub_12F894()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
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

uint64_t sub_12F9C4()
{
  sub_D2DC();
  v2 = sub_C5D74(v1);
  sub_D414(v2);
  *(v0 + 64) = sub_D3C8();
  v3 = sub_D388();

  return _swift_task_switch(v3);
}

uint64_t sub_12FA34()
{
  sub_1696C();
  sub_C5D00();
  sub_13067C();
  sub_132B24();
  v0 = sub_9F300();
  sub_482AC(v0);
  v1 = sub_9F3C8();
  sub_C5DB4(v1);
  v2 = swift_task_alloc();
  v3 = sub_C5DA8(v2);
  *v3 = v4;
  sub_3099C(v3);

  return sub_DF654();
}

uint64_t sub_12FAD8()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
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

uint64_t sub_12FC08()
{
  sub_D2DC();
  *(v0 + 88) = v1;
  v2 = sub_16A164();
  sub_D414(v2);
  *(v0 + 56) = sub_D3C8();
  v3 = sub_D388();

  return _swift_task_switch(v3);
}

uint64_t sub_12FC80()
{
  sub_1696C();
  sub_132C60();
  sub_132B24();
  v1 = sub_9F300();
  sub_482AC(v1);
  *(v0 + 64) = sub_9F3C8();
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  sub_3099C(v2);

  return sub_DF654();
}

uint64_t sub_12FD28()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 80) = v0;

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

uint64_t sub_12FE58(char a1)
{
  *(v1 + 88) = a1;
  sub_16A164();
  *(v1 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_12FEE8);
}

uint64_t sub_12FEE8()
{
  sub_1696C();
  sub_132C60();
  sub_132B24();
  v1 = sub_9F300();
  sub_482AC(v1);
  *(v0 + 64) = sub_9F3C8();
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  sub_3099C(v2);

  return sub_DF654();
}

uint64_t sub_12FF90()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 80) = v0;

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

uint64_t sub_1300C0()
{
  sub_D2DC();

  sub_D37C();

  return v0();
}

uint64_t sub_130124()
{
  sub_D2DC();
  v1 = sub_16A164();
  sub_D414(v1);
  *(v0 + 16) = sub_D3C8();
  v2 = sub_D388();

  return _swift_task_switch(v2);
}

uint64_t sub_130198()
{
  sub_D2DC();
  v0 = sub_132C2C();
  sub_122738(v0);
  sub_132B5C();
  v1 = sub_16A0F4();
  sub_132C20(v1);
  v2 = swift_task_alloc();
  v3 = sub_132C14(v2);
  *v3 = v4;
  sub_3099C(v3);

  return sub_E0B3C();
}

uint64_t sub_13022C()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
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

uint64_t sub_13035C()
{
  sub_D2DC();
  v1 = sub_16A164();
  sub_D414(v1);
  *(v0 + 16) = sub_D3C8();
  v2 = sub_D388();

  return _swift_task_switch(v2);
}

uint64_t sub_1303D0()
{
  sub_D2DC();
  v0 = sub_132C2C();
  sub_122738(v0);
  sub_132B5C();
  v1 = sub_16A0F4();
  sub_132C20(v1);
  v2 = swift_task_alloc();
  v3 = sub_132C14(v2);
  *v3 = v4;
  sub_3099C(v3);

  return sub_E0B3C();
}

uint64_t sub_130464()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
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

uint64_t sub_130594()
{
  sub_16A164();
  *(v0 + 16) = swift_task_alloc();

  return _swift_task_switch(sub_130198);
}

uint64_t sub_130620()
{
  v0 = sub_16A164();
  v1 = sub_D414(v0);
  __chkstk_darwin(v1);
  v2 = sub_132B9C();
  sub_482AC(v2);
  return sub_9F3C8();
}

void *sub_13067C()
{
  v0 = [objc_opt_self() sharedStream];
  v1 = [objc_opt_self() sharedManager];
  sub_132C88(v1);
  v2 = type metadata accessor for CarCommandsLoggingProducer();
  v3 = sub_132C44(v2);
  v11 = sub_132BC4(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14);
  return sub_132C7C(v11, &off_1D7DF0);
}

id sub_130710()
{
  v1 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin41SetCarPlayClimateHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler;
  v2 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin41SetCarPlayClimateHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin41SetCarPlayClimateHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
  }

  else
  {
    v4 = v0;
    if (qword_1E5968 != -1)
    {
      swift_once();
    }

    v5 = qword_1F0E10;
    sub_D084((v0 + 56), *(v0 + 80));
    v6 = v5;
    v7 = sub_DB860();
    v8 = sub_1329C4(v6, 9, v7 & 1);

    v9 = *(v4 + v1);
    *(v4 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

uint64_t sub_1307E0()
{
  sub_D2DC();
  v1[47] = v2;
  v1[48] = v0;
  v1[46] = v3;
  v4 = sub_16A164();
  sub_D414(v4);
  v1[49] = sub_D3C8();
  v5 = sub_168454();
  v1[50] = v5;
  sub_10AEC(v5);
  v1[51] = v6;
  v1[52] = sub_D3C8();
  v7 = sub_5758(&qword_1E76A0, &qword_172B00);
  v1[53] = v7;
  sub_10AEC(v7);
  v1[54] = v8;
  v1[55] = sub_D3C8();
  v9 = sub_5758(&qword_1EA178, &unk_1774D0);
  sub_D414(v9);
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v10 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v10);
  v1[58] = sub_D3C8();
  v11 = type metadata accessor for SetCarPlayClimateStatusParameters(0);
  v1[59] = v11;
  sub_D414(v11);
  v1[60] = sub_D3C8();
  v12 = sub_168B74();
  sub_D414(v12);
  v1[61] = sub_D3C8();
  v13 = sub_1691E4();
  v1[62] = v13;
  sub_10AEC(v13);
  v1[63] = v14;
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v15 = sub_D388();

  return _swift_task_switch(v15);
}

uint64_t sub_130A10()
{
  v61 = v0;
  sub_10824(*(v0 + 384) + 16, v0 + 16);
  sub_D084((v0 + 16), *(v0 + 40));
  sub_5758(&qword_1EE550, &qword_179BD8);
  sub_169094();
  sub_D2604();

  sub_D13C((v0 + 16));
  v1 = 0x8000000000182560;
  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v2 = 0xD000000000000025;
  v3 = sub_16A584();
  sub_9DA0(v3, qword_1E65C0);
  v4 = sub_16A9A4();
  *(v0 + 328) = 0xD0000000000000A4;
  *(v0 + 336) = 0x80000000001902F0;
  *(v0 + 344) = 47;
  *(v0 + 352) = 0xE100000000000000;
  sub_D030();
  v5 = sub_16AB34();
  v6 = sub_15AE4(v5);
  v8 = v7;

  if (v8)
  {
    v62._countAndFlagsBits = 32;
    v62._object = 0xE100000000000000;
    sub_16A744(v62);
    v63._countAndFlagsBits = 0xD000000000000025;
    v63._object = 0x8000000000182560;
    sub_16A744(v63);
    v2 = v6;
    v1 = v8;
  }

  v60._countAndFlagsBits = 58;
  v60._object = 0xE100000000000000;
  *(v0 + 360) = 25;
  v64._countAndFlagsBits = sub_16AE24();
  sub_16A744(v64);

  sub_16A744(v60);

  v9._countAndFlagsBits = sub_378D0(0x4002uLL);
  if (v9._object)
  {
    v60._countAndFlagsBits = 32;
    v60._object = 0xE100000000000000;
    sub_16A744(v9);

    v65._countAndFlagsBits = 32;
    v65._object = 0xE100000000000000;
    sub_16A744(v65);
  }

  v10 = sub_16A574();
  if (os_log_type_enabled(v10, v4))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v60._countAndFlagsBits = v12;
    *v11 = 136315138;
    v13 = sub_15BC8(v2, v1, &v60._countAndFlagsBits);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_0, v10, v4, "%s", v11, 0xCu);
    sub_D13C(v12);
  }

  else
  {
  }

  v14 = sub_169084();
  v15 = (*(&stru_20.maxprot + (swift_isaMask & *v14)))();

  if (v15 == 100)
  {
    v16 = *(v0 + 384);
    sub_168B34();
    sub_634F4();
    swift_beginAccess();
    sub_10824(v16 + 184, v0 + 216);
    v17 = *(v0 + 240);
    *(v0 + 528) = v17;
    *(v0 + 544) = sub_D084((v0 + 216), v17);
    sub_5758(&qword_1EA2B0, &qword_16DFB0);
    v18 = swift_allocObject();
    *(v0 + 552) = v18;
    *(v18 + 16) = xmmword_16D440;
    v19 = sub_6355C();
    *(v0 + 560) = v19;
    *v19 = v0;
    v19[1] = sub_131274;
    sub_D2C0();

    __asm { BR              X1 }
  }

  v22 = sub_169084();
  v23 = (*(&stru_20.maxprot + (swift_isaMask & *v22)))();

  if (v23 == 101)
  {
    v24 = *(v0 + 384);
    sub_168B34();
    sub_634F4();
    swift_beginAccess();
    sub_10824(v24 + 184, v0 + 176);
    v25 = *(v0 + 200);
    *(v0 + 592) = v25;
    *(v0 + 608) = sub_D084((v0 + 176), v25);
    sub_5758(&qword_1EA2B0, &qword_16DFB0);
    v26 = swift_allocObject();
    *(v0 + 616) = v26;
    *(v26 + 16) = xmmword_16D440;
    v27 = sub_6355C();
    *(v0 + 624) = v27;
    *v27 = v0;
    v27[1] = sub_1315F8;
    sub_D2C0();

    __asm { BR              X0 }
  }

  v30 = sub_1690A4();
  *(v0 + 656) = v30;
  v31 = [v30 enableClimateControl];
  if (v31)
  {
    v32 = v31;
    v33 = [v31 BOOLValue];
  }

  else
  {
    v33 = 2;
  }

  v34 = *(v0 + 464);
  [v30 climateZone];
  sub_AFE80();
  sub_16A6E4();

  v35 = sub_16A0C4();
  v36 = 1;
  sub_5370(v34, 0, 1, v35);
  v37 = [v30 targetTemperature];
  if (v37)
  {
    v38 = v37;
    sub_55158();
    sub_1682E4();

    v36 = 0;
  }

  v40 = *(v0 + 448);
  v39 = *(v0 + 456);
  v41 = *(v0 + 424);
  sub_5370(v40, v36, 1, v41);
  sub_132820(v40, v39, &qword_1EA178, &unk_1774D0);
  v42 = sub_9E2C(v39, 1, v41);
  v43 = *(v0 + 456);
  if (v42)
  {
    sub_D188(*(v0 + 456), &qword_1EA178, &unk_1774D0);
    v44 = 0;
  }

  else
  {
    v46 = *(v0 + 432);
    v45 = *(v0 + 440);
    v48 = *(v0 + 416);
    v47 = *(v0 + 424);
    v49 = *(v0 + 400);
    v50 = *(v0 + 408);
    v51 = *(v0 + 384);
    (*(v46 + 16))(v45, *(v0 + 456), v47);
    sub_D188(v43, &qword_1EA178, &unk_1774D0);
    (*(v50 + 16))(v48, v51 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin27CarCommandsBaseFlowStrategy_unitProvider, v49);
    *(v0 + 136) = 0u;
    *(v0 + 152) = 0u;
    *(v0 + 168) = 0;
    v44 = sub_12F270(v48, v0 + 136);
    sub_D188(v0 + 136, &qword_1E6030, &unk_173620);
    (*(v50 + 8))(v48, v49);
    (*(v46 + 8))(v45, v47);
  }

  v53 = *(v0 + 472);
  v52 = *(v0 + 480);
  v54 = *(v0 + 464);
  *v52 = v33;
  sub_132820(v54, &v52[*(v53 + 20)], &qword_1E6300, &qword_16ECE0);
  *&v52[*(v53 + 24)] = v44;
  v55 = type metadata accessor for CarCommandsCATPatternsExecutor(0);
  sub_122738(v55);
  sub_132B5C();
  *(v0 + 664) = sub_16A094();
  v56 = swift_task_alloc();
  *(v0 + 672) = v56;
  *v56 = v0;
  v56[1] = sub_13197C;
  sub_D2C0();

  return sub_157628(v57);
}

uint64_t sub_131274()
{
  sub_1696C();
  sub_30480();
  v4 = v3;
  sub_10AA4();
  *v5 = v4;
  v6 = *v2;
  sub_D254();
  *v7 = v6;
  *(v4 + 568) = v0;

  if (!v0)
  {
    *(v4 + 576) = v1;
  }

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_13137C()
{
  sub_D2DC();
  *(v0[69] + 32) = v0[72];
  v1 = swift_task_alloc();
  v0[73] = v1;
  *v1 = v0;
  v1[1] = sub_131430;
  v2 = v0[69];
  v3 = v0[67];
  v4 = v0[66];
  v5 = v0[65];
  v6 = v0[46];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v6, v2, v5, v4, v3);
}

uint64_t sub_131430()
{
  sub_D2DC();
  sub_D358();
  v1 = *v0;
  sub_D254();
  *v2 = v1;

  v3 = sub_D388();

  return _swift_task_switch(v3);
}

uint64_t sub_131530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  (*(v12[63] + 8))(v12[65], v12[62]);
  sub_D13C(v12 + 27);
  sub_132BE8();

  sub_D37C();
  sub_10B0C();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

uint64_t sub_1315F8()
{
  sub_1696C();
  sub_30480();
  v4 = v3;
  sub_10AA4();
  *v5 = v4;
  v6 = *v2;
  sub_D254();
  *v7 = v6;
  *(v4 + 632) = v0;

  if (!v0)
  {
    *(v4 + 640) = v1;
  }

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_131700()
{
  sub_D2DC();
  *(v0[77] + 32) = v0[80];
  v1 = swift_task_alloc();
  v0[81] = v1;
  *v1 = v0;
  v1[1] = sub_1317B4;
  v2 = v0[77];
  v3 = v0[75];
  v4 = v0[74];
  v5 = v0[64];
  v6 = v0[46];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v6, v2, v5, v4, v3);
}

uint64_t sub_1317B4()
{
  sub_D2DC();
  sub_D358();
  v1 = *v0;
  sub_D254();
  *v2 = v1;

  v3 = sub_D388();

  return _swift_task_switch(v3);
}

uint64_t sub_1318B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  (*(v12[63] + 8))(v12[64], v12[62]);
  sub_D13C(v12 + 22);
  sub_132BE8();

  sub_D37C();
  sub_10B0C();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

uint64_t sub_13197C()
{
  sub_D2DC();
  sub_D358();
  v2 = *v1;
  sub_D254();
  *v3 = v2;
  *(v5 + 680) = v4;
  *(v5 + 688) = v0;

  sub_10B4C();

  return _swift_task_switch(v6);
}

uint64_t sub_131AA0()
{
  sub_D2DC();
  v1 = *(v0 + 384);
  swift_beginAccess();
  sub_10824(v1 + 184, v0 + 96);
  v2 = swift_task_alloc();
  *(v0 + 696) = v2;
  *v2 = v0;
  v2[1] = sub_131B5C;

  return sub_11A570();
}

uint64_t sub_131B5C()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 704) = v0;

  sub_D13C((v3 + 96));
  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_131C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  v13 = *(v12 + 656);
  v14 = *(v12 + 480);
  v15 = *(v12 + 368);

  sub_132888(v14);
  sub_D124((v12 + 56), v15);
  sub_132BE8();

  sub_D37C();
  sub_10B0C();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_131D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  v13 = v12[69];
  (*(v12[63] + 8))(v12[65], v12[62]);
  *(v13 + 16) = 0;

  sub_D13C(v12 + 27);
  sub_132B6C();

  sub_D37C();
  sub_10B0C();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_131E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  v13 = v12[77];
  (*(v12[63] + 8))(v12[64], v12[62]);
  *(v13 + 16) = 0;

  sub_D13C(v12 + 22);
  sub_132B6C();

  sub_D37C();
  sub_10B0C();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_131EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  v13 = *(v12 + 480);

  sub_132888(v13);
  sub_132B6C();

  sub_D37C();
  sub_10B0C();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_131FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  v13 = *(v12 + 656);
  v14 = *(v12 + 480);

  sub_132888(v14);
  sub_132B6C();

  sub_D37C();
  sub_10B0C();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_132080()
{
  v0 = sub_3D044();

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for SetCarPlayClimateHandleIntentFlowStrategy(uint64_t a1)
{
  result = qword_1EE358;
  if (!qword_1EE358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_13218C(uint64_t a1)
{
  result = sub_1321B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1321B4()
{
  result = qword_1EE548;
  if (!qword_1EE548)
  {
    type metadata accessor for SetCarPlayClimateHandleIntentFlowStrategy(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE548);
  }

  return result;
}

uint64_t sub_13220C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SetCarPlayClimateHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(a1, a2, v9, a4);
}

uint64_t sub_1322D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SetCarPlayClimateHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, v9, a4);
}

uint64_t sub_13239C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10A9C;

  return sub_4B544();
}

uint64_t sub_13245C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10A9C;

  return sub_1307E0();
}

uint64_t sub_132508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SetCarPlayClimateHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, v9, a4);
}

uint64_t sub_1325D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SetCarPlayClimateHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, v9, a4);
}

uint64_t sub_132698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SetCarPlayClimateHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_1039C;

  return HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:)(a1, a2, v9, a4);
}

uint64_t sub_132760()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_36648;

  return sub_46BDC();
}

uint64_t sub_132820(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_5758(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_132888(uint64_t a1)
{
  v2 = type metadata accessor for SetCarPlayClimateStatusParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1328E4(uint64_t a1, char a2, char a3, _BYTE *a4)
{
  v12[3] = type metadata accessor for CarPlayService(0);
  v12[4] = &off_1DA3F0;
  v12[0] = a1;
  v11[3] = &type metadata for ServiceAvailabilityGate;
  v11[4] = &off_1D6810;
  LOBYTE(v11[0]) = a2;
  sub_10824(v12, &a4[OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin30SetCarPlayClimateIntentHandler_service]);
  sub_10824(v11, &a4[OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin30SetCarPlayClimateIntentHandler_serviceAvailabilityGate]);
  a4[OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin30SetCarPlayClimateIntentHandler_isRHD] = a3;
  v10.receiver = a4;
  v10.super_class = type metadata accessor for SetCarPlayClimateIntentHandler();
  v8 = objc_msgSendSuper2(&v10, "init");
  sub_D13C(v11);
  sub_D13C(v12);
  return v8;
}

id sub_1329C4(uint64_t a1, char a2, char a3)
{
  v19 = &off_1DA3F0;
  v18 = type metadata accessor for CarPlayService(0);
  v17[0] = a1;
  v15 = &type metadata for ServiceAvailabilityGate;
  v16 = &off_1D6810;
  LOBYTE(v14[0]) = a2;
  v6 = objc_allocWithZone(type metadata accessor for SetCarPlayClimateIntentHandler());
  v7 = sub_2F8D0(v17, v18);
  __chkstk_darwin(v7);
  v9 = (v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = sub_2F8D0(v14, v15);
  v12 = sub_1328E4(*v9, *v11, a3, v6);
  sub_D13C(v14);
  sub_D13C(v17);
  return v12;
}

uint64_t sub_132B24()
{
  sub_D084((v1 + 16), *(v1 + 40));

  return sub_D2B90(2, v0);
}

uint64_t sub_132B6C()
{
}

uint64_t sub_132B9C()
{

  return type metadata accessor for CarCommandsCATsSimple(0);
}

uint64_t sub_132BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10)
{

  return sub_D230C(v10, v11, &a10);
}

uint64_t sub_132BE8()
{
}

uint64_t sub_132C2C()
{

  return type metadata accessor for CarCommandsCATsSimple(0);
}

uint64_t sub_132C44(uint64_t a1)
{

  return swift_allocObject();
}

void *sub_132C60()
{

  return sub_13067C();
}

uint64_t sub_132C7C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2[3] = v3;
  v2[4] = a2;
  *v2 = result;
  return result;
}

void *sub_132C88(uint64_t a1, ...)
{

  return sub_1689F4();
}

uint64_t sub_132CA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1E66C0, &qword_16FE00);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_16A884();
  sub_5370(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_179D38;
  v9[5] = v8;
  sub_134FB0(0, 0, v6, &unk_179D48, v9);
}

void sub_132DB0()
{
  sub_CA350();
  sub_1358EC();
  if (v1)
  {
    v2 = sub_1358B4();
  }

  else
  {
    v2 = *(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8));
  }

  if (!v2)
  {
LABEL_12:
    sub_CA23C();
    sub_CA368();
    return;
  }

  v23 = _swiftEmptyArrayStorage;
  sub_146898(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = 0;
    v4 = v23;
    v16 = v0 & 0xC000000000000001;
    do
    {
      if (v16)
      {
        v5 = sub_135974();
      }

      else
      {
        v5 = *(v0 + 8 * v3 + 32);
      }

      v6 = type metadata accessor for TappableCommand(0);
      v21 = v6;
      v7 = sub_13527C();
      v22 = v7;
      v23 = v4;
      v20[0] = v5;
      v9 = v4[2];
      v8 = v4[3];
      v10 = v6;
      if (v9 >= v8 >> 1)
      {
        sub_146898((v8 > 1), v9 + 1, 1);
        v10 = v21;
      }

      ++v3;
      v11 = sub_2F8D0(v20, v10);
      __chkstk_darwin(v11);
      v13 = (&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v14 + 16))(v13);
      v15 = *v13;
      v18 = v6;
      v19 = v7;
      *&v17 = v15;
      v4 = v23;
      v23[2] = v9 + 1;
      sub_D124(&v17, &v4[5 * v9 + 4]);
      sub_D13C(v20);
    }

    while (v2 != v3);
    goto LABEL_12;
  }

  __break(1u);
}

void sub_132F98()
{
  sub_CA350();
  sub_1358EC();
  if (v2)
  {
    v0 = sub_1358B4();
  }

  else
  {
    sub_135958();
  }

  if (!v0)
  {
LABEL_15:
    sub_CA23C();
    sub_CA368();
    return;
  }

  v3 = sub_13586C();
  sub_146970(v3, v4, v5);
  if ((v0 & 0x8000000000000000) == 0)
  {
    sub_1358A4();
    do
    {
      if (v1)
      {
        sub_135974();
      }

      else
      {
        sub_13598C();
      }

      v6 = sub_135930();
      v7 = sub_16484(v6, &qword_1EE5B8, CAFVent_ptr);
      sub_135854(v7);
      if (v8)
      {
        sub_135884();
        sub_146970(v20, v21, v22);
      }

      else
      {
        sub_135924();
      }

      sub_1358D0();
      sub_135820();
      __chkstk_darwin(v9);
      v11 = sub_1357FC(v10, v23);
      v12(v11);
      v13 = sub_13583C();
      sub_135748(v13, v14, v15, v16, v17, v18);
      sub_D13C(&v23);
      sub_135894();
    }

    while (!v19);
    goto LABEL_15;
  }

  __break(1u);
}

void sub_1330FC()
{
  sub_CA350();
  sub_1358EC();
  if (v2)
  {
    v0 = sub_1358B4();
  }

  else
  {
    sub_135958();
  }

  if (!v0)
  {
LABEL_15:
    sub_CA23C();
    sub_CA368();
    return;
  }

  v3 = sub_13586C();
  sub_146990(v3, v4, v5);
  if ((v0 & 0x8000000000000000) == 0)
  {
    sub_1358A4();
    do
    {
      if (v1)
      {
        sub_135974();
      }

      else
      {
        sub_13598C();
      }

      v6 = sub_135930();
      v7 = sub_16484(v6, &qword_1EE5C0, CAFZonesSynced_ptr);
      sub_135854(v7);
      if (v8)
      {
        sub_135884();
        sub_146990(v20, v21, v22);
      }

      else
      {
        sub_135924();
      }

      sub_1358D0();
      sub_135820();
      __chkstk_darwin(v9);
      v11 = sub_1357FC(v10, v23);
      v12(v11);
      v13 = sub_13583C();
      sub_135748(v13, v14, v15, v16, v17, v18);
      sub_D13C(&v23);
      sub_135894();
    }

    while (!v19);
    goto LABEL_15;
  }

  __break(1u);
}

void *sub_133260(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  v4 = _swiftEmptyArrayStorage;
  if (v3)
  {
    v14 = _swiftEmptyArrayStorage;
    sub_1468F8(0, v3, 0);
    v4 = _swiftEmptyArrayStorage;
    v8 = a1 + 32;
    do
    {
      sub_10824(v8, v12);
      sub_5758(a2, a3);
      sub_5758(&qword_1E91C0, &qword_172C40);
      swift_dynamicCast();
      v14 = v4;
      v10 = v4[2];
      v9 = v4[3];
      if (v10 >= v9 >> 1)
      {
        sub_1468F8((v9 > 1), v10 + 1, 1);
        v4 = v14;
      }

      v4[2] = v10 + 1;
      sub_D124(&v13, &v4[5 * v10 + 4]);
      v8 += 40;
      --v3;
    }

    while (v3);
  }

  return v4;
}

void sub_133390()
{
  sub_CA350();
  sub_1358EC();
  if (v2)
  {
    v0 = sub_1358B4();
  }

  else
  {
    sub_135958();
  }

  if (!v0)
  {
LABEL_15:
    sub_CA23C();
    sub_CA368();
    return;
  }

  v3 = sub_13586C();
  sub_1469B0(v3, v4, v5);
  if ((v0 & 0x8000000000000000) == 0)
  {
    sub_1358A4();
    do
    {
      if (v1)
      {
        sub_135974();
      }

      else
      {
        sub_13598C();
      }

      v6 = sub_135930();
      v7 = sub_16484(v6, &qword_1EE5B0, CAFFan_ptr);
      sub_135854(v7);
      if (v8)
      {
        sub_135884();
        sub_1469B0(v20, v21, v22);
      }

      else
      {
        sub_135924();
      }

      sub_1358D0();
      sub_135820();
      __chkstk_darwin(v9);
      v11 = sub_1357FC(v10, v23);
      v12(v11);
      v13 = sub_13583C();
      sub_135748(v13, v14, v15, v16, v17, v18);
      sub_D13C(&v23);
      sub_135894();
    }

    while (!v19);
    goto LABEL_15;
  }

  __break(1u);
}

void sub_1334F4()
{
  sub_CA350();
  sub_1358EC();
  if (v2)
  {
    v0 = sub_1358B4();
  }

  else
  {
    sub_135958();
  }

  if (!v0)
  {
LABEL_15:
    sub_CA23C();
    sub_CA368();
    return;
  }

  v3 = sub_13586C();
  sub_1469D0(v3, v4, v5);
  if ((v0 & 0x8000000000000000) == 0)
  {
    sub_1358A4();
    do
    {
      if (v1)
      {
        sub_135974();
      }

      else
      {
        sub_13598C();
      }

      v6 = sub_135930();
      v7 = sub_16484(v6, &qword_1E83B8, CAFDefrost_ptr);
      sub_135854(v7);
      if (v8)
      {
        sub_135884();
        sub_1469D0(v20, v21, v22);
      }

      else
      {
        sub_135924();
      }

      sub_1358D0();
      sub_135820();
      __chkstk_darwin(v9);
      v11 = sub_1357FC(v10, v23);
      v12(v11);
      v13 = sub_13583C();
      sub_135748(v13, v14, v15, v16, v17, v18);
      sub_D13C(&v23);
      sub_135894();
    }

    while (!v19);
    goto LABEL_15;
  }

  __break(1u);
}

void sub_133658()
{
  sub_CA350();
  sub_1358EC();
  if (v2)
  {
    v0 = sub_1358B4();
  }

  else
  {
    sub_135958();
  }

  if (!v0)
  {
LABEL_15:
    sub_CA23C();
    sub_CA368();
    return;
  }

  v3 = sub_13586C();
  sub_1469F0(v3, v4, v5);
  if ((v0 & 0x8000000000000000) == 0)
  {
    sub_1358A4();
    do
    {
      if (v1)
      {
        sub_135974();
      }

      else
      {
        sub_13598C();
      }

      v6 = sub_135930();
      v7 = sub_16484(v6, &qword_1EE5C8, CAFTemperature_ptr);
      sub_135854(v7);
      if (v8)
      {
        sub_135884();
        sub_1469F0(v19, v20, v21);
      }

      else
      {
        sub_135924();
      }

      sub_1358D0();
      sub_135820();
      __chkstk_darwin(v9);
      v11 = sub_1357FC(v10, v22);
      v12(v11);
      v13 = sub_13583C();
      sub_63B5C(v13, v14, v15, v16, v17);
      sub_D13C(&v22);
      sub_135894();
    }

    while (!v18);
    goto LABEL_15;
  }

  __break(1u);
}

void sub_133794()
{
  sub_CA350();
  sub_1358EC();
  if (v2)
  {
    v0 = sub_1358B4();
  }

  else
  {
    sub_135958();
  }

  if (!v0)
  {
LABEL_15:
    sub_CA23C();
    sub_CA368();
    return;
  }

  v3 = sub_13586C();
  sub_146B18(v3, v4, v5);
  if ((v0 & 0x8000000000000000) == 0)
  {
    sub_1358A4();
    do
    {
      if (v1)
      {
        sub_135974();
      }

      else
      {
        sub_13598C();
      }

      v6 = sub_135930();
      v7 = sub_16484(v6, &qword_1EE5A8, CAFSeatHeatingCooling_ptr);
      sub_135854(v7);
      if (v8)
      {
        sub_135884();
        sub_146B18(v20, v21, v22);
      }

      else
      {
        sub_135924();
      }

      sub_1358D0();
      sub_135820();
      __chkstk_darwin(v9);
      v11 = sub_1357FC(v10, v23);
      v12(v11);
      v13 = sub_13583C();
      sub_135748(v13, v14, v15, v16, v17, v18);
      sub_D13C(&v23);
      sub_135894();
    }

    while (!v19);
    goto LABEL_15;
  }

  __break(1u);
}

uint64_t SetCarPlaySeatSettingsIntentHandler.handle(intent:)(uint64_t a1)
{
  *(v2 + 272) = a1;
  *(v2 + 280) = v1;
  return sub_D2B0();
}