uint64_t sub_4BAC4()
{
  sub_EF64();
  sub_2AD20();
  v1 = *v0;
  sub_EF2C();
  *v2 = v1;

  v3 = sub_2AC10();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_4BBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_4E73C();
  sub_4E7BC();
  sub_4E6B4();
  sub_253C((v23 + 1384));
  sub_4E6F0();

  sub_249A0();

  v25 = sub_23BC(v24 + 16, v23 + 1424);
  sub_2AE04(v25, &_swiftEmptyArrayStorage, v23 + 1424);
  sub_4E63C();
  v28 = sub_4E560(v26, 255, v27, &protocol conformance descriptor for OutputFlow);
  sub_2AE2C(v28);
  sub_4E624();
  sub_4E508(v22, v29);
  sub_4E5A8();

  sub_2AD68();
  sub_4E720();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_4BD3C()
{
  sub_2AD20();
  v2 = v1;
  v3 = *v0;
  sub_EF2C();
  *v4 = v3;
  *(v2 + 2168) = v5;

  sub_253C((v2 + 744));
  v6 = sub_4E7C8();
  v7(v6);
  v8 = sub_2AC10();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_4BE8C()
{
  v62 = v0;
  v1 = *(v0 + 2168);
  if (v1)
  {
    v60 = *(v0 + 2072);
    v2 = *(v0 + 2064);
    v3 = *(v0 + 1816);
    sub_2C83C(0, &qword_6D0D0, SKIDirectInvocationPayload_ptr);
    v4 = sub_48F24(0xD000000000000034, 0x80000000000563F0);
    *(v0 + 2176) = v4;
    v5 = sub_50B24();
    sub_4E3E8(v5, v4);
    v6 = objc_opt_self();
    sub_4E960((v3 + 16));
    v7 = sub_4E86C();
    v8(v7);
    sub_1FE8((v0 + 904), *(v0 + 928));
    v9 = sub_500E4();
    v10 = [v6 runSiriKitExecutorCommandWithContext:v9 payload:v4];
    *(v0 + 2184) = v10;

    sub_253C((v0 + 904));
    v11 = [v6 wrapCommandInStartLocalRequest:v10];
    *(v0 + 2192) = v11;
    v12 = [objc_allocWithZone(SAStartUIRequest) init];
    *(v0 + 2200) = v12;
    [v12 setStartLocalRequest:v11];
    sub_56AC(v2, v0 + 1648);
    v13 = sub_5668();
    v60(v13);
    v14 = v1;
    v15 = sub_50AF4();
    v16 = sub_50BD4();

    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 2088);
    if (v17)
    {
      v19 = sub_EFB0();
      v20 = sub_EFC8();
      *v19 = 136315138;
      v61 = v20;
      v21 = sub_50AB4();
      v23 = sub_4DE68(v21, v22, &v61);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_0, v15, v16, "#StartSirenFlow Submitting start siren direct invocation to remote with assistantId: %s", v19, 0xCu);
      sub_253C(v20);
      sub_5674(v20);
      sub_5674(v19);

      v24 = sub_4E860();
      v18(v24);
    }

    else
    {

      v47 = sub_4E860();
      v18(v47);
    }

    v48 = *(v0 + 1944);
    v49 = *(v0 + 1936);
    v50 = *(v0 + 1920);
    sub_4FFE4();
    sub_1FE8((v0 + 984), *(v0 + 1008));
    *(v0 + 2208) = sub_50034();
    *(v0 + 2384) = enum case for ActivityType.executeOnRemote(_:);
    v51 = *(v49 + 104);
    *(v0 + 2216) = v51;
    *(v0 + 2224) = (v49 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v51(v48);
    v52 = enum case for SiriKitReliabilityCodes.normal(_:);
    v53 = sub_50014();
    *(v0 + 2232) = v53;
    sub_569C();
    v55 = *(v54 + 104);
    *(v0 + 2240) = v55;
    *(v0 + 2248) = (v54 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v55(v50, v52, v53);
    sub_13D50();
    sub_28E0(v56, v57, v58, v53);
    sub_13B54();
    sub_4E68C();
    sub_4E91C();
    v44 = sub_50024();
    *(v0 + 2256) = v44;
    v45 = swift_task_alloc();
    *(v0 + 2264) = v45;
    *v45 = v0;
    v46 = sub_4C49C;
  }

  else
  {
    v25 = *(v0 + 2072);
    v26 = *(v0 + 2064);
    v27 = *(v0 + 2000);
    v28 = *(v0 + 1952);
    sub_56AC(v26, v0 + 1672);
    v25(v27, v26, v28);
    v29 = sub_50AF4();
    v30 = sub_50BE4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = sub_5718();
      sub_36FB8(v31);
      _os_log_impl(&dword_0, v29, v30, "#StartSirenFlow Failed to find remote device", v28, 2u);
      sub_4E7A0();
    }

    v32 = *(v0 + 2088);
    v33 = *(v0 + 1944);
    v34 = *(v0 + 1936);
    v35 = *(v0 + 1928);
    v36 = *(v0 + 1920);

    v37 = sub_4E860();
    v32(v37);
    sub_4FFE4();
    sub_1FE8((v0 + 824), *(v0 + 848));
    sub_50034();
    (*(v34 + 104))(v33, enum case for ActivityType.handoffToCompanion(_:), v35);
    v38 = enum case for SiriKitReliabilityCodes.companionUnavailable(_:);
    v39 = sub_50014();
    sub_569C();
    (*(v40 + 104))(v36, v38, v39);
    sub_13D50();
    sub_28E0(v41, v42, v43, v39);
    sub_13B54();
    sub_4E68C();
    sub_4E91C();
    v44 = sub_50024();
    *(v0 + 2304) = v44;
    v45 = swift_task_alloc();
    *(v0 + 2312) = v45;
    *v45 = v0;
    v46 = sub_4CA44;
  }

  v45[1] = v46;

  return dispatch thunk of SiriKitEventSending.sendAsync(_:)(v44);
}

uint64_t sub_4C49C()
{
  sub_EF64();
  sub_2AD20();
  v1 = *v0;
  sub_EF2C();
  *v2 = v1;

  v3 = sub_2AC10();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_4C59C()
{
  v1 = v0[227];
  sub_253C(v0 + 123);
  sub_1FE8((v1 + 16), *(v1 + 40));
  v2 = sub_5668();
  v3(v2);
  v4 = v0[131];
  v5 = v0[132];
  sub_1FE8(v0 + 128, v4);
  v6 = sub_50AB4();
  v8 = v7;
  v0[284] = v7;
  v9 = swift_task_alloc();
  v0[285] = v9;
  v10 = sub_2C83C(0, &qword_6BC20, SABaseCommand_ptr);
  *v9 = v0;
  v9[1] = sub_4C6E0;
  v11 = v0[275];

  return AceServiceInvokerAsync.submitToRemote<A>(_:_:)(v11, v6, v8, v4, v10, v5);
}

uint64_t sub_4C6E0()
{
  sub_EF64();
  sub_2AD20();
  *(v2 + 2288) = v1;
  *(v2 + 2296) = v0;

  if (v0)
  {
    v3 = sub_4D4A4;
  }

  else
  {

    v3 = sub_4C7F8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_4C7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_4E73C();
  sub_4E7BC();
  v23 = v22[286];
  v24 = v22[259];
  v25 = v22[258];
  v26 = v22[251];
  v27 = v22[244];
  sub_253C(v22 + 128);
  sub_56AC(v25, (v22 + 200));
  v24(v26, v25, v27);
  v28 = v23;
  v29 = sub_50AF4();
  v30 = sub_50BD4();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = v22[286];
    v32 = sub_EFB0();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    *(v32 + 4) = v31;
    *v33 = v31;
    v34 = v31;
    _os_log_impl(&dword_0, v29, v30, "#StartSirenFlow Received submitToRemote response: %@", v32, 0xCu);
    sub_51C0(v33, &qword_6DD20, &unk_547A0);
    sub_4E7A0();
    sub_EE58();
  }

  v35 = v22[286];
  v36 = v22[275];
  v37 = v22[274];
  v38 = v22[273];
  v39 = v22[272];
  v51 = v22[271];

  v40 = sub_4E7C8();
  v41(v40);
  sub_50194();

  sub_4E5A8();

  sub_2AD68();
  sub_4E720();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v51, a20, a21, a22);
}

uint64_t sub_4CA44()
{
  sub_EF64();
  sub_2AD20();
  v1 = *v0;
  sub_EF2C();
  *v2 = v1;

  v3 = sub_2AC10();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_4CB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_4E73C();
  sub_4E7BC();
  sub_4E6B4();
  sub_253C((v23 + 824));
  sub_4E6F0();

  sub_24920();

  v25 = sub_23BC(v24 + 16, v23 + 864);
  sub_2AE04(v25, &_swiftEmptyArrayStorage, v23 + 864);
  sub_4E63C();
  v28 = sub_4E560(v26, 255, v27, &protocol conformance descriptor for OutputFlow);
  sub_2AE2C(v28);
  sub_4E624();
  sub_4E508(v22, v29);
  sub_4E5A8();

  sub_2AD68();
  sub_4E720();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_4CCBC()
{
  sub_EF64();
  sub_2AD20();
  v1 = *v0;
  sub_EF2C();
  *v2 = v1;

  v3 = sub_2AC10();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_4CDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_4E73C();
  sub_4E7BC();
  sub_4E6B4();
  sub_253C((v23 + 664));
  sub_4E6F0();

  sub_248E0();

  v25 = sub_23BC(v24 + 16, v23 + 704);
  sub_2AE04(v25, &_swiftEmptyArrayStorage, v23 + 704);
  sub_4E63C();
  v28 = sub_4E560(v26, 255, v27, &protocol conformance descriptor for OutputFlow);
  sub_2AE2C(v28);
  sub_4E624();
  sub_4E508(v22, v29);
  sub_4E5A8();

  sub_2AD68();
  sub_4E720();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_4CF34()
{
  sub_EF64();
  sub_2AD20();
  v1 = *v0;
  sub_EF2C();
  *v2 = v1;

  v3 = sub_2AC10();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_4D034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_4E73C();
  sub_4E7BC();
  v23 = v22[227];
  sub_253C(v22 + 68);
  sub_1FE8(v23 + 18, v23[21]);
  v24 = sub_2D4D0();
  sub_1FE8(v23 + 7, v23[10]);

  if (v24)
  {
    sub_24920();
  }

  else
  {
    sub_249A0();
  }

  v25 = v22[239];
  v26 = v22[237];
  v27 = v22[236];
  v28 = v22[227];

  sub_234C(v27, v26);
  v29 = sub_23BC(v28 + 16, (v22 + 73));
  sub_2AE04(v29, &_swiftEmptyArrayStorage, (v22 + 73));
  sub_4E63C();
  sub_4E560(v30, 255, v31, &protocol conformance descriptor for OutputFlow);
  sub_4E854();
  sub_50174();
  sub_4E624();
  sub_4E508(v25, v32);
  sub_51C0(v27, &qword_6B988, &qword_530B0);
  sub_4E5A8();

  sub_2AD68();
  sub_4E720();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_4D22C()
{
  sub_EF64();
  sub_2AD20();
  v1 = *v0;
  sub_EF2C();
  *v2 = v1;

  v3 = sub_2AC10();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_4D32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_4E73C();
  sub_4E7BC();
  sub_4E6B4();
  sub_253C((v23 + 344));
  sub_4E6F0();

  sub_249A0();

  v25 = sub_23BC(v24 + 16, v23 + 384);
  sub_2AE04(v25, &_swiftEmptyArrayStorage, v23 + 384);
  sub_4E63C();
  v28 = sub_4E560(v26, 255, v27, &protocol conformance descriptor for OutputFlow);
  sub_2AE2C(v28);
  sub_4E624();
  sub_4E508(v22, v29);
  sub_4E5A8();

  sub_2AD68();
  sub_4E720();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_4D4A4()
{
  v1 = *(v0 + 2072);
  v2 = *(v0 + 2064);
  v3 = *(v0 + 1968);
  v4 = *(v0 + 1952);

  sub_253C((v0 + 1024));
  sub_56AC(v2, v0 + 1768);
  v1(v3, v2, v4);
  swift_errorRetain();
  v5 = sub_50AF4();
  v6 = sub_50BE4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = sub_EFB0();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_0, v5, v6, "#StartSirenFlow Error while submitting to remote: %@", v7, 0xCu);
    sub_51C0(v8, &qword_6DD20, &unk_547A0);
    sub_5674(v8);
    sub_4E7A0();
  }

  v25 = *(v0 + 2240);
  v10 = *(v0 + 2232);
  v11 = v5;
  v12 = *(v0 + 2216);
  v13 = *(v0 + 2384);
  v14 = *(v0 + 1944);
  v15 = *(v0 + 1928);
  v16 = *(v0 + 1920);

  v17 = sub_5668();
  v18(v17);
  sub_4FFE4();
  sub_1FE8((v0 + 1104), *(v0 + 1128));
  v12(v14, v13, v15);
  v25(v16, enum case for SiriKitReliabilityCodes.errorSendingExecuteOnRemoteRequest(_:), v10);
  sub_13D50();
  sub_28E0(v19, v20, v21, v10);
  sub_13B54();
  sub_4E68C();
  v22 = sub_50024();
  *(v0 + 2368) = v22;
  v23 = swift_task_alloc();
  *(v0 + 2376) = v23;
  *v23 = v0;
  v23[1] = sub_4D750;

  return dispatch thunk of SiriKitEventSending.sendAsync(_:)(v22);
}

uint64_t sub_4D750()
{
  sub_EF64();
  sub_2AD20();
  v1 = *v0;
  sub_EF2C();
  *v2 = v1;

  v3 = sub_2AC10();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_4D850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_4E73C();
  sub_4E7BC();
  v23 = v22[275];
  v40 = v22[274];
  v41 = v22[273];
  v24 = v22[272];
  v39 = v22[271];
  v25 = v22[239];
  v26 = v22[227];
  sub_253C(v22 + 138);
  sub_1FE8((v26 + 56), *(v26 + 80));

  sub_24920();

  sub_23BC(v26 + 16, (v22 + 143));
  sub_50874();
  sub_4E63C();
  sub_4E560(v27, 255, v28, &protocol conformance descriptor for OutputFlow);
  sub_4E854();
  sub_50174();

  sub_4E624();
  sub_4E508(v25, v29);
  sub_4E5A8();

  sub_2AD68();
  sub_4E720();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, v39, v40, v41, a20, a21, a22);
}

uint64_t sub_4DA44(uint64_t a1, uint64_t a2)
{
  type metadata accessor for StartSirenFlow();
  sub_4E560(&qword_6DA30, v2, type metadata accessor for StartSirenFlow, &unk_54740);
  return sub_4FF14();
}

void *sub_4DAD0()
{
  sub_253C(v0 + 2);
  sub_253C(v0 + 7);
  sub_55C8((v0 + 12));
  sub_253C(v0 + 18);
  sub_253C(v0 + 23);
  return v0;
}

uint64_t sub_4DB10()
{
  sub_4DAD0();

  return _swift_deallocClassInstance(v0, 224, 7);
}

_BYTE *storeEnumTagSinglePayload for StartSirenFlow.StartSirenFlowState(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x4DC34);
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

unint64_t sub_4DC70()
{
  result = qword_6DD18;
  if (!qword_6DD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6DD18);
  }

  return result;
}

uint64_t sub_4DD10()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2A96C;

  return sub_49B74();
}

uint64_t sub_4DDAC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for StartSirenFlow();

  return sub_4FF64();
}

uint64_t sub_4DE0C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_4DE68(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_4DE68(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_4DF2C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_2C5D0(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_253C(v11);
  return v7;
}

unint64_t sub_4DF2C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_4E02C(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_50C74();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_4E02C(uint64_t a1, unint64_t a2)
{
  v3 = sub_4E078(a1, a2);
  sub_4E190(&off_65860);
  return v3;
}

char *sub_4E078(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_50BB4())
  {
    result = sub_4E274(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_50C54();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = sub_50C74();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_4E190(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_4E2E4(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_4E274(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_2208(&qword_6DD30, qword_547B0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_4E2E4(char *result, int64_t a2, char a3, char *a4)
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
    sub_2208(&qword_6DD30, qword_547B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_4E3D8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_4E3E8(uint64_t a1, void *a2)
{
  isa = sub_50B14().super.isa;

  [a2 setUserData:isa];
}

uint64_t sub_4E468()
{

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_4E508(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_569C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_4E560(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_4E5A8()
{
}

uint64_t sub_4E654()
{

  return sub_50024();
}

uint64_t sub_4E6CC(uint64_t a1, uint64_t a2)
{

  return sub_50024();
}

uint64_t sub_4E758(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_4E774()
{
  v2 = *(v0 - 288);

  return sub_4E508(v2, &type metadata accessor for EmergencyDialogAct);
}

uint64_t sub_4E7A0()
{
}

void sub_4E818(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

void sub_4E8D0()
{
}

BOOL sub_4E8EC(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_4E980(char a1)
{
  result = 0x535F48434E55414CLL;
  switch(a1)
  {
    case 3:
      return result;
    default:
      result = sub_50B54();
      break;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ConfirmationType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x4EADCLL);
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

unint64_t sub_4EB18()
{
  result = qword_6DD38;
  if (!qword_6DD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6DD38);
  }

  return result;
}

uint64_t type metadata accessor for PoisonControlCATs(uint64_t a1)
{
  result = qword_6DD40;
  if (!qword_6DD40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_4ECAC(uint64_t a1, char a2)
{
  v4 = sub_2208(&qword_6B998, qword_51850);
  sub_72B0(v4);
  sub_72A4();
  __chkstk_darwin(v5);
  v7 = &v12 - v6;
  sub_2208(&qword_6BBC8, &unk_518B0);
  v8 = swift_allocObject();
  sub_7260(v8, xmmword_517A0);
  sub_71A0(a1, v7, &qword_6B998, qword_51850);
  v9 = sub_50804();
  if (sub_513C(v7, 1, v9) == 1)
  {
    sub_7204(v7, &qword_6B998, qword_51850);
    *(v8 + 48) = 0u;
    *(v8 + 64) = 0u;
  }

  else
  {
    *(v8 + 72) = v9;
    sub_530C((v8 + 48));
    sub_7298();
    (*(v10 + 32))();
  }

  *(v8 + 80) = 0xD000000000000012;
  *(v8 + 88) = 0x8000000000054BF0;
  *(v8 + 120) = &type metadata for Bool;
  *(v8 + 96) = a2 & 1;
  sub_50794();
}

uint64_t sub_4EE58(uint64_t a1)
{
  v3 = sub_2208(&qword_6B998, qword_51850);
  sub_72B0(v3);
  sub_72A4();
  __chkstk_darwin(v4);
  sub_7C2C();
  sub_2208(&qword_6BBC8, &unk_518B0);
  v5 = swift_allocObject();
  sub_7BAC(v5, xmmword_51780);
  v6 = sub_50804();
  sub_7BF4(v6);
  if (v7)
  {
    sub_7204(v1, &qword_6B998, qword_51850);
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
  }

  else
  {
    *(v5 + 72) = a1;
    sub_530C((v5 + 48));
    sub_7298();
    (*(v8 + 32))();
  }

  sub_7C1C();
  sub_50794();
}

uint64_t sub_4EF9C(uint64_t a1)
{
  v3 = sub_2208(&qword_6B998, qword_51850);
  sub_72B0(v3);
  sub_72A4();
  __chkstk_darwin(v4);
  sub_7C2C();
  sub_2208(&qword_6BBC8, &unk_518B0);
  v5 = swift_allocObject();
  sub_7260(v5, xmmword_51780);
  sub_71A0(a1, v1, &qword_6B998, qword_51850);
  v6 = sub_50804();
  sub_7BF4(v6);
  if (v7)
  {
    sub_7204(v1, &qword_6B998, qword_51850);
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
  }

  else
  {
    *(v5 + 72) = a1;
    sub_530C((v5 + 48));
    sub_7298();
    (*(v8 + 32))();
  }

  sub_7C1C();
  sub_50794();
}

uint64_t sub_4F0F4(uint64_t a1)
{
  v3 = sub_2208(&qword_6B998, qword_51850);
  sub_72B0(v3);
  sub_72A4();
  __chkstk_darwin(v4);
  sub_7C2C();
  sub_2208(&qword_6BBC8, &unk_518B0);
  v5 = swift_allocObject();
  sub_7BAC(v5, xmmword_51780);
  v6 = sub_50804();
  sub_7BF4(v6);
  if (v7)
  {
    sub_7204(v1, &qword_6B998, qword_51850);
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
  }

  else
  {
    *(v5 + 72) = a1;
    sub_530C((v5 + 48));
    sub_7298();
    (*(v8 + 32))();
  }

  sub_7C1C();
  sub_50794();
}

uint64_t sub_4F2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_50864();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2208(&unk_6D680, &qword_515B0);
  sub_72B0(v9);
  sub_72A4();
  __chkstk_darwin(v10);
  sub_71A0(a1, &v14 - v11, &unk_6D680, &qword_515B0);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_50784();
  (*(v6 + 8))(a2, v5);
  sub_7204(a1, &unk_6D680, &qword_515B0);
  return v12;
}

uint64_t type metadata accessor for EmergencySexualAssaultBasicIntentCATs(uint64_t a1)
{
  result = qword_6DD90;
  if (!qword_6DD90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_4F534(uint64_t a1, char a2)
{
  v3 = sub_2208(&qword_6B998, qword_51850);
  sub_72B0(v3);
  sub_72A4();
  __chkstk_darwin(v4);
  v6 = &v11 - v5;
  sub_2208(&qword_6BBC8, &unk_518B0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_517A0;
  strcpy((v7 + 32), "webSearchQuery");
  *(v7 + 47) = -18;
  sub_72BC();
  v8 = sub_50804();
  if (sub_513C(v6, 1, v8) == 1)
  {
    sub_7204(v6, &qword_6B998, qword_51850);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
  }

  else
  {
    *(v7 + 72) = v8;
    sub_530C((v7 + 48));
    sub_7298();
    (*(v9 + 32))();
  }

  sub_7280();
  *(v7 + 120) = &type metadata for Bool;
  *(v7 + 96) = a2 & 1;
  sub_50794();
}

uint64_t sub_4F6E4(uint64_t a1, char a2)
{
  v3 = sub_2208(&qword_6B998, qword_51850);
  sub_72B0(v3);
  sub_72A4();
  __chkstk_darwin(v4);
  v6 = &v11 - v5;
  sub_2208(&qword_6BBC8, &unk_518B0);
  v7 = swift_allocObject();
  sub_7260(v7, xmmword_517A0);
  sub_72BC();
  v8 = sub_50804();
  if (sub_513C(v6, 1, v8) == 1)
  {
    sub_7204(v6, &qword_6B998, qword_51850);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
  }

  else
  {
    *(v7 + 72) = v8;
    sub_530C((v7 + 48));
    sub_7298();
    (*(v9 + 32))();
  }

  sub_7280();
  *(v7 + 120) = &type metadata for Bool;
  *(v7 + 96) = a2 & 1;
  sub_50794();
}

uint64_t sub_4F870(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_2208(&qword_6B998, qword_51850);
  sub_72B0(v6);
  sub_72A4();
  __chkstk_darwin(v7);
  v9 = &v16 - v8;
  sub_2208(&qword_6BBC8, &unk_518B0);
  v10 = swift_allocObject();
  sub_7260(v10, xmmword_517D0);
  sub_71A0(a1, v9, &qword_6B998, qword_51850);
  v11 = sub_50804();
  if (sub_513C(v9, 1, v11) == 1)
  {
    sub_7204(v9, &qword_6B998, qword_51850);
    *(v10 + 48) = 0u;
    *(v10 + 64) = 0u;
  }

  else
  {
    *(v10 + 72) = v11;
    sub_530C((v10 + 48));
    sub_7298();
    (*(v12 + 32))();
  }

  *(v10 + 80) = 0x65626D754E67726FLL;
  *(v10 + 88) = 0xE900000000000072;
  if (a2)
  {
    v13 = sub_50754();
    v14 = a2;
  }

  else
  {
    v14 = 0;
    v13 = 0;
    *(v10 + 104) = 0;
    *(v10 + 112) = 0;
  }

  *(v10 + 96) = v14;
  *(v10 + 120) = v13;
  *(v10 + 128) = 0xD000000000000012;
  *(v10 + 136) = 0x8000000000054BF0;
  *(v10 + 168) = &type metadata for Bool;
  *(v10 + 144) = a3 & 1;

  sub_50794();
}

uint64_t sub_4FAC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_50864();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2208(&unk_6D680, &qword_515B0);
  sub_72B0(v9);
  sub_72A4();
  __chkstk_darwin(v10);
  sub_71A0(a1, &v14 - v11, &unk_6D680, &qword_515B0);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_50784();
  (*(v6 + 8))(a2, v5);
  sub_7204(a1, &unk_6D680, &qword_515B0);
  return v12;
}