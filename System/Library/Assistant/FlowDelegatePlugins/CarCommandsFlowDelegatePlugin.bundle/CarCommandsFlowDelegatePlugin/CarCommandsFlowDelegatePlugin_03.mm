uint64_t sub_61324()
{
  sub_D250((v0 + 528), v0 + 488);
  v1 = *(v0 + 520);
  sub_D084((v0 + 488), *(v0 + 512));
  return v1 + 24;
}

void sub_61360(os_log_type_t a1)
{

  sub_386D8(a1, 0x20000uLL, 0xD0000000000000B9, v3 | 0x8000000000000000, 0xD00000000000002ALL, (v2 | 0x8000000000000000), 111, 0xD000000000000035, v1);
}

uint64_t sub_61400()
{

  return sub_16A584();
}

__n128 sub_61420(void *a1)
{
  sub_D13C(a1);
  result = *v1;
  v4 = *(v1 + 16);
  *(v2 + 368) = *v1;
  *(v2 + 384) = v4;
  return result;
}

void sub_6143C()
{
  v2 = *(v0 + 928);
}

void sub_61464(uint64_t a1@<X8>)
{
  v1[12] = v2;
  v1[9] = v3 - 7;
  v1[10] = (a1 - 32) | 0x8000000000000000;
}

void sub_6147C(uint64_t a1@<X8>)
{
  v1[12] = v2;
  v1[9] = v3 - 7;
  v1[10] = (a1 - 32) | 0x8000000000000000;
}

uint64_t sub_614B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

unint64_t sub_614E4()
{

  return sub_61200();
}

void sub_61504(os_log_type_t a1, Swift::UInt64 a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, unint64_t a9)
{

  sub_386D8(a1, a2, a3, a4, a5, a6, 126, v9, a9);
}

double sub_61520()
{

  return sub_93A6C(v0, v1 + 328);
}

id sub_6153C@<X0>(uint64_t a1@<X8>)
{

  return sub_61244(v1 - 9, (a1 - 32) | 0x8000000000000000);
}

id sub_61558(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

id sub_61588()
{

  return sub_61244(v1 - 9, v0 | 0x8000000000000000);
}

id sub_615F0()
{
  v1 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin46SetCarPlaySeatSettingsHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler;
  v2 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin46SetCarPlaySeatSettingsHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin46SetCarPlaySeatSettingsHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
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
    v8 = sub_1538C8(v6, 14, v7 & 1);

    v9 = *(v4 + v1);
    *(v4 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

uint64_t sub_616C0()
{
  sub_D2DC();
  v1[42] = v2;
  v1[43] = v0;
  v1[41] = v3;
  v4 = sub_16A164();
  sub_D414(v4);
  v1[44] = sub_D3C8();
  v5 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v5);
  v1[45] = sub_D3C8();
  v6 = type metadata accessor for SetCarPlaySeatSettingsParameters(0);
  v1[46] = v6;
  sub_D414(v6);
  v1[47] = sub_D3C8();
  v7 = sub_168B74();
  sub_D414(v7);
  v1[48] = sub_D3C8();
  v8 = sub_1691E4();
  v1[49] = v8;
  v1[50] = *(v8 - 8);
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  sub_10B4C();

  return _swift_task_switch(v9);
}

uint64_t sub_61818()
{
  v44 = v0;
  sub_10824(*(v0 + 344) + 16, v0 + 16);
  sub_D084((v0 + 16), *(v0 + 40));
  sub_5758(&qword_1E7DD8, &qword_16FA98);
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
  *(v0 + 288) = 0xD0000000000000A4;
  *(v0 + 296) = 0x8000000000183950;
  *(v0 + 304) = 47;
  *(v0 + 312) = 0xE100000000000000;
  sub_D030();
  v5 = sub_16AB34();
  v6 = sub_15AE4(v5);
  v8 = v7;

  if (v8)
  {
    v45._countAndFlagsBits = 32;
    v45._object = 0xE100000000000000;
    sub_16A744(v45);
    v46._countAndFlagsBits = 0xD000000000000025;
    v46._object = 0x8000000000182560;
    sub_16A744(v46);
    v2 = v6;
    v1 = v8;
  }

  v43._countAndFlagsBits = 58;
  v43._object = 0xE100000000000000;
  *(v0 + 320) = 25;
  v47._countAndFlagsBits = sub_16AE24();
  sub_16A744(v47);

  sub_16A744(v43);

  v9._countAndFlagsBits = sub_378D0(0x200002uLL);
  if (v9._object)
  {
    v43._countAndFlagsBits = 32;
    v43._object = 0xE100000000000000;
    sub_16A744(v9);

    v48._countAndFlagsBits = 32;
    v48._object = 0xE100000000000000;
    sub_16A744(v48);
  }

  v10 = sub_16A574();
  if (os_log_type_enabled(v10, v4))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v43._countAndFlagsBits = v12;
    *v11 = 136315138;
    v13 = sub_15BC8(v2, v1, &v43._countAndFlagsBits);

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
    v16 = *(v0 + 344);
    sub_168B34();
    sub_634F4();
    swift_beginAccess();
    sub_10824(v16 + 184, v0 + 176);
    v17 = *(v0 + 200);
    *(v0 + 424) = v17;
    *(v0 + 440) = sub_D084((v0 + 176), v17);
    sub_5758(&qword_1EA2B0, &qword_16DFB0);
    v18 = swift_allocObject();
    *(v0 + 448) = v18;
    *(v18 + 16) = xmmword_16D440;
    v19 = sub_6355C();
    *(v0 + 456) = v19;
    *v19 = v0;
    v19[1] = sub_61F2C;
    sub_D2C0();

    __asm { BR              X1 }
  }

  v22 = sub_169084();
  v23 = (*(&stru_20.maxprot + (swift_isaMask & *v22)))();

  if (v23 == 101)
  {
    v24 = *(v0 + 344);
    sub_168B34();
    sub_634F4();
    swift_beginAccess();
    sub_10824(v24 + 184, v0 + 136);
    v25 = *(v0 + 160);
    *(v0 + 488) = v25;
    *(v0 + 504) = sub_D084((v0 + 136), v25);
    sub_5758(&qword_1EA2B0, &qword_16DFB0);
    v26 = swift_allocObject();
    *(v0 + 512) = v26;
    *(v26 + 16) = xmmword_16D440;
    v27 = sub_6355C();
    *(v0 + 520) = v27;
    *v27 = v0;
    v27[1] = sub_622A0;
    sub_D2C0();

    __asm { BR              X0 }
  }

  v30 = sub_1690A4();
  *(v0 + 552) = v30;
  v31 = [v30 enableSeatTemperature];
  if (v31)
  {
    v32 = v31;
    v33 = [v31 BOOLValue];
  }

  else
  {
    v33 = 2;
  }

  v35 = *(v0 + 368);
  v34 = *(v0 + 376);
  v36 = *(v0 + 360);
  [v30 seat];
  sub_AFE80();
  sub_16A6E4();

  v37 = sub_16A0C4();
  sub_5370(v36, 0, 1, v37);
  v38 = *(v35 + 24);
  sub_153A20([v30 temperatureChange]);
  sub_16A6E4();

  sub_5370(&v34[v38], 0, 1, v37);
  *v34 = v33;
  sub_16304(v36, &v34[*(v35 + 20)]);
  type metadata accessor for CarCommandsCATPatternsExecutor(0);
  sub_16A154();
  *(v0 + 560) = sub_16A094();
  v39 = swift_task_alloc();
  *(v0 + 568) = v39;
  *v39 = v0;
  v39[1] = sub_62614;
  sub_D2C0();

  return sub_1576D0(v40);
}

uint64_t sub_61F2C(uint64_t a1)
{
  sub_D358();
  v5 = v4;
  sub_D2A4();
  *v6 = v5;
  v7 = *v2;
  sub_D254();
  *v8 = v7;
  *(v5 + 464) = v1;

  if (!v1)
  {
    *(v5 + 472) = a1;
  }

  sub_10B4C();

  return _swift_task_switch(v9);
}

uint64_t sub_62040()
{
  sub_D2DC();
  *(v0[56] + 32) = v0[59];
  v1 = swift_task_alloc();
  v0[60] = v1;
  *v1 = v0;
  v1[1] = sub_620EC;
  v2 = v0[56];
  v3 = v0[53];
  v4 = v0[54];
  v5 = v0[52];
  v6 = v0[41];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v6, v2, v5, v3, v4);
}

uint64_t sub_620EC()
{
  sub_D2DC();
  sub_D358();
  v1 = *v0;
  sub_D254();
  *v2 = v1;

  sub_10B4C();

  return _swift_task_switch(v3);
}

uint64_t sub_621F0()
{
  sub_D3A4();
  (*(v0[50] + 8))(v0[52], v0[49]);
  sub_D13C(v0 + 22);
  sub_63540();

  sub_D37C();

  return v1();
}

uint64_t sub_622A0(uint64_t a1)
{
  sub_D358();
  v5 = v4;
  sub_D2A4();
  *v6 = v5;
  v7 = *v2;
  sub_D254();
  *v8 = v7;
  *(v5 + 528) = v1;

  if (!v1)
  {
    *(v5 + 536) = a1;
  }

  sub_10B4C();

  return _swift_task_switch(v9);
}

uint64_t sub_623B4()
{
  sub_D2DC();
  *(v0[64] + 32) = v0[67];
  v1 = swift_task_alloc();
  v0[68] = v1;
  *v1 = v0;
  v1[1] = sub_62460;
  v2 = v0[64];
  v3 = v0[61];
  v4 = v0[62];
  v5 = v0[51];
  v6 = v0[41];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v6, v2, v5, v3, v4);
}

uint64_t sub_62460()
{
  sub_D2DC();
  sub_D358();
  v1 = *v0;
  sub_D254();
  *v2 = v1;

  sub_10B4C();

  return _swift_task_switch(v3);
}

uint64_t sub_62564()
{
  sub_D3A4();
  (*(v0[50] + 8))(v0[51], v0[49]);
  sub_D13C(v0 + 17);
  sub_63540();

  sub_D37C();

  return v1();
}

uint64_t sub_62614()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v7 + 576) = v6;
  *(v7 + 584) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_62734()
{
  sub_D2DC();
  v1 = *(v0 + 344);
  swift_beginAccess();
  sub_10824(v1 + 184, v0 + 96);
  v2 = swift_task_alloc();
  *(v0 + 592) = v2;
  *v2 = v0;
  v2[1] = sub_627F0;

  return sub_11A570();
}

uint64_t sub_627F0()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 600) = v0;

  sub_D13C((v3 + 96));
  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_628F4()
{
  sub_D3A4();
  v1 = *(v0 + 552);
  v2 = *(v0 + 376);
  v3 = *(v0 + 328);

  sub_63498(v2);
  sub_D250((v0 + 56), v3);
  sub_63540();

  sub_D37C();

  return v4();
}

uint64_t sub_629B0()
{
  sub_D3A4();
  v1 = v0[56];
  (*(v0[50] + 8))(v0[52], v0[49]);
  *(v1 + 16) = 0;

  sub_D13C(v0 + 22);
  sub_63524();

  sub_D37C();

  return v2();
}

uint64_t sub_62A70()
{
  sub_D3A4();
  v1 = v0[64];
  (*(v0[50] + 8))(v0[51], v0[49]);
  *(v1 + 16) = 0;

  sub_D13C(v0 + 17);
  sub_63524();

  sub_D37C();

  return v2();
}

uint64_t sub_62B30()
{
  sub_D3A4();
  v1 = *(v0 + 376);

  sub_63498(v1);
  sub_63524();

  sub_D37C();

  return v2();
}

uint64_t sub_62BD4()
{
  sub_D3A4();
  v1 = *(v0 + 552);
  v2 = *(v0 + 376);

  sub_63498(v2);
  sub_63524();

  sub_D37C();

  return v3();
}

uint64_t sub_62C90()
{
  v0 = sub_3D044();

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for SetCarPlaySeatSettingsHandleIntentFlowStrategy(uint64_t a1)
{
  result = qword_1E7BE0;
  if (!qword_1E7BE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_62D9C(uint64_t a1)
{
  result = sub_62DC4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_62DC4()
{
  result = qword_1E7DD0;
  if (!qword_1E7DD0)
  {
    type metadata accessor for SetCarPlaySeatSettingsHandleIntentFlowStrategy(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E7DD0);
  }

  return result;
}

uint64_t sub_62E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SetCarPlaySeatSettingsHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(a1, a2, v9, a4);
}

uint64_t sub_62EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SetCarPlaySeatSettingsHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, v9, a4);
}

uint64_t sub_62FAC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10A9C;

  return sub_4B544();
}

uint64_t sub_6306C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10A9C;

  return sub_616C0();
}

uint64_t sub_63118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SetCarPlaySeatSettingsHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, v9, a4);
}

uint64_t sub_631E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SetCarPlaySeatSettingsHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, v9, a4);
}

uint64_t sub_632A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SetCarPlaySeatSettingsHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_1039C;

  return HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:)(a1, a2, v9, a4);
}

uint64_t sub_63370()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_36648;

  return sub_447F8();
}

uint64_t sub_63430()
{
  sub_10824(v0 + 96, v3);
  sub_D084(v3, v3[3]);
  v1 = sub_168B24();
  sub_D13C(v3);
  return v1 & 1;
}

uint64_t sub_63498(uint64_t a1)
{
  v2 = type metadata accessor for SetCarPlaySeatSettingsParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_634F4()
{

  return sub_169164();
}

uint64_t sub_63524()
{
}

uint64_t sub_63540()
{
}

uint64_t sub_6355C()
{

  return swift_task_alloc();
}

void *sub_6357C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5758(&qword_1E7DE0, &unk_16FB30);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v41[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v41[-v10];
  v12 = (*(a3 + 16))(a2, a3);
  v13 = a1 - 2;
  if (a1 >= 2)
  {
    v15 = 0;
    v53 = *(v12 + 16);
    v16 = v12 + 32;
    v48 = enum case for CAUVehicleLayoutKey.seat_3rdRow_right(_:);
    v47 = enum case for CAUVehicleLayoutKey.seat_3rdRow_left(_:);
    v46 = enum case for CAUVehicleLayoutKey.seat_3rdRow(_:);
    v45 = enum case for CAUVehicleLayoutKey.seat_2ndRow_right(_:);
    v44 = enum case for CAUVehicleLayoutKey.seat_2ndRow_left(_:);
    v43 = enum case for CAUVehicleLayoutKey.seat_2ndRow(_:);
    v49 = enum case for CAUVehicleLayoutKey.seat_front_right(_:);
    v50 = enum case for CAUVehicleLayoutKey.seat_front_left(_:);
    v42 = enum case for CAUVehicleLayoutKey.seat_front(_:);
    v14 = _swiftEmptyArrayStorage;
    v51 = v13;
    v52 = v12;
    while (1)
    {
      if (v53 == v15)
      {

        return v14;
      }

      if (v15 >= *(v12 + 16))
      {
        __break(1u);
        JUMPOUT(0x63A54);
      }

      sub_10824(v16, &v57);
      v17 = sub_169E84();
      v18 = v17;
      v19 = v50;
      switch(v13)
      {
        case 0:
        case 2:
          goto LABEL_15;
        case 1:
        case 3:
          v19 = v49;
          goto LABEL_15;
        case 4:
          v19 = v42;
          goto LABEL_15;
        case 5:
          v19 = v44;
          goto LABEL_15;
        case 6:
          v19 = v45;
          goto LABEL_15;
        case 7:
          v19 = v43;
          goto LABEL_15;
        case 8:
          v19 = v47;
          goto LABEL_15;
        case 9:
          v19 = v48;
          goto LABEL_15;
        case 10:
          v19 = v46;
LABEL_15:
          (*(*(v17 - 8) + 104))(v11, v19, v17);
          v20 = 0;
          break;
        default:
          v20 = 1;
          break;
      }

      sub_5370(v11, v20, 1, v18);
      v21 = v58;
      v22 = v59;
      sub_D084(&v57, v58);
      v23 = (*(v22 + 16))(v21, v22);
      v25 = v24;
      sub_63A84(v11, v9);
      if (sub_9E2C(v9, 1, v18) == 1)
      {
        sub_63AF4(v9);
        v26 = 0;
        v27 = 0xE000000000000000;
      }

      else
      {
        v26 = sub_169E74();
        v27 = v28;
        (*(*(v18 - 8) + 8))(v9, v18);
      }

      if (v23 == v26 && v25 == v27)
      {

        sub_63AF4(v11);
      }

      else
      {
        v30 = sub_16AE54();

        sub_63AF4(v11);
        if ((v30 & 1) == 0)
        {
          sub_D13C(&v57);
          goto LABEL_31;
        }
      }

      sub_D124(&v57, v54);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v60 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1469F0(0, v14[2] + 1, 1);
        v14 = v60;
      }

      v33 = v14[2];
      v32 = v14[3];
      if (v33 >= v32 >> 1)
      {
        sub_1469F0((v32 > 1), v33 + 1, 1);
      }

      v34 = v55;
      v35 = v56;
      v36 = sub_2F8D0(v54, v55);
      __chkstk_darwin(v36);
      v38 = &v41[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v39 + 16))(v38);
      sub_63B5C(v33, v38, &v60, v34, v35);
      sub_D13C(v54);
      v14 = v60;
LABEL_31:
      v13 = v51;
      v12 = v52;
      v16 += 40;
      ++v15;
    }
  }

  return v12;
}

uint64_t sub_63A84(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1E7DE0, &unk_16FB30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_63AF4(uint64_t a1)
{
  v2 = sub_5758(&qword_1E7DE0, &unk_16FB30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_63B5C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_10888(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_D124(&v12, v10 + 40 * a1 + 32);
}

uint64_t type metadata accessor for CarCommandsCannedDialogCATsSimple(uint64_t a1)
{
  result = qword_1E7DE8;
  if (!qword_1E7DE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_63CD4(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_63E30(uint64_t a1, uint64_t a2)
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

uint64_t sub_63F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_5758(&qword_1E66C0, &qword_16FE00);
  v11 = sub_D414(v10);
  __chkstk_darwin(v11);
  sub_67CD8(v12, v21);
  v13 = sub_16A884();
  v14 = sub_9E2C(v5, 1, v13);

  if (v14 == 1)
  {
    sub_4EAF4(v5, &qword_1E66C0, &qword_16FE00);
  }

  else
  {
    sub_16A874();
    sub_4EB50();
    (*(v15 + 8))(v5, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (!v16)
  {
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_4EAF4(a3, &qword_1E66C0, &qword_16FE00);
    sub_67CA8();
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;
    return swift_task_create();
  }

  swift_getObjectType();
  sub_16A844();
  swift_unknownObjectRelease();
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_16A6C4();
  sub_67CA8();
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;

  v19 = swift_task_create();

  sub_4EAF4(a3, &qword_1E66C0, &qword_16FE00);

  return v19;
}

uint64_t sub_64240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_5758(&qword_1E66C0, &qword_16FE00);
  v11 = sub_D414(v10);
  __chkstk_darwin(v11);
  sub_67CD8(v12, v21);
  v13 = sub_16A884();
  v14 = sub_9E2C(v5, 1, v13);

  if (v14 == 1)
  {
    sub_4EAF4(v5, &qword_1E66C0, &qword_16FE00);
  }

  else
  {
    sub_16A874();
    sub_4EB50();
    (*(v15 + 8))(v5, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (!v16)
  {
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_4EAF4(a3, &qword_1E66C0, &qword_16FE00);
    sub_67CA8();
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;
    sub_5758(&qword_1E77D0, &unk_179A60);
    return swift_task_create();
  }

  swift_getObjectType();
  sub_16A844();
  swift_unknownObjectRelease();
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_16A6C4();
  sub_67CA8();
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;

  sub_5758(&qword_1E77D0, &unk_179A60);
  v18 = swift_task_create();

  sub_4EAF4(a3, &qword_1E66C0, &qword_16FE00);

  return v18;
}

uint64_t sub_64504()
{
  v1 = sub_5758(&qword_1E66C0, &qword_16FE00);
  v2 = sub_D414(v1);
  __chkstk_darwin(v2);
  v4 = &v10 - v3;
  v5 = qword_1E7E38;
  if (*(v0 + qword_1E7E38))
  {
    v6 = *(v0 + qword_1E7E38);
  }

  else
  {
    v7 = sub_16A884();
    sub_5370(v4, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v0;

    v6 = sub_64240(0, 0, v4, &unk_16FE10, v8);
    *(v0 + v5) = v6;
  }

  return v6;
}

uint64_t sub_64618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *(v4 + 16) = a1;
  v5 = *a4;
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  v9 = type metadata accessor for CarCommandsWalletAppResolutionFlowStrategy(0, *(v5 + 416), v7, v8);
  WitnessTable = swift_getWitnessTable();
  *v6 = v4;
  v6[1] = sub_64700;

  return sub_BE1C(v9, WitnessTable);
}

uint64_t sub_64700()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 32) = v3;

  v4 = sub_D388();

  return _swift_task_switch(v4);
}

uint64_t sub_647EC()
{
  sub_D2DC();
  v1[11] = v2;
  v1[12] = v0;
  v1[10] = v3;
  v4 = sub_168B74();
  sub_D414(v4);
  v1[13] = sub_D3C8();
  v5 = sub_1691E4();
  v1[14] = v5;
  v1[15] = *(v5 - 8);
  v1[16] = sub_D3C8();
  v6 = sub_16A164();
  sub_D414(v6);
  v1[17] = sub_D3C8();
  v7 = sub_D388();

  return _swift_task_switch(v7);
}

uint64_t sub_648DC()
{
  sub_1696C();
  sub_168FB4();
  sub_168F74();
  v1 = sub_168F94();

  if (v1)
  {
    type metadata accessor for CarCommandsCATPatternsExecutor(0);
    sub_16A154();
    v0[18] = sub_16A094();
    v2 = swift_task_alloc();
    v0[19] = v2;
    *v2 = v0;
    v2[1] = sub_64A50;

    return sub_156570(19, _swiftEmptyArrayStorage);
  }

  else
  {
    v4 = swift_task_alloc();
    v0[24] = v4;
    *v4 = v0;
    v4[1] = sub_55C50;

    return sub_647EC();
  }
}

uint64_t sub_64A50()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 160) = v5;
  *(v3 + 168) = v0;

  if (v0)
  {
    v6 = sub_55B50;
  }

  else
  {

    v6 = sub_64B60;
  }

  return _swift_task_switch(v6);
}

uint64_t sub_64B60()
{
  v1 = v0[12];
  swift_beginAccess();
  sub_6765C(v1 + 184, (v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  sub_D084(v0 + 2, v2);
  sub_168B34();
  sub_169164();
  v4 = swift_task_alloc();
  v0[22] = v4;
  *v4 = v0;
  v4[1] = sub_64C84;
  v5 = v0[20];
  v6 = v0[16];
  v7 = v0[10];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v7, v5, v6, v2, v3);
}

uint64_t sub_64C84()
{
  sub_1696C();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v5 = v4[16];
  v6 = v4[15];
  v7 = v4[14];
  v8 = *v1;
  sub_D254();
  *v9 = v8;
  *(v10 + 184) = v0;

  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v11 = sub_55D94;
  }

  else
  {
    v11 = sub_55BD0;
  }

  return _swift_task_switch(v11);
}

uint64_t sub_64DE0()
{
  sub_D2DC();
  v1[41] = v2;
  v1[42] = v0;
  v1[43] = *v0;
  v3 = sub_1693E4();
  v1[44] = v3;
  v1[45] = *(v3 - 8);
  v1[46] = sub_D3C8();
  v4 = sub_D388();

  return _swift_task_switch(v4);
}

uint64_t sub_64EB4()
{
  v1 = v0[42];
  sub_16ACF4(71);
  v27._countAndFlagsBits = 0xD000000000000044;
  v27._object = 0x8000000000183F20;
  sub_16A744(v27);
  v2 = v1 + qword_1F0B30;
  v28._countAndFlagsBits = *(v1 + qword_1F0B30);
  v0[47] = v28._countAndFlagsBits;
  v28._object = *(v2 + 8);
  v0[48] = v28._object;
  sub_16A744(v28);
  sub_57C30();
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v4 = v0[45];
  v3 = v0[46];
  v5 = v0[44];
  v6 = v0[42];
  v7 = sub_16A584();
  v0[49] = sub_9DA0(v7, qword_1E65C0);
  sub_16A9A4();
  sub_57C04();
  sub_386D8(v8, v9, v10, v11, v12, v13, 43, 0, 0xE000000000000000);

  sub_6765C(v6 + 16, (v0 + 10));
  sub_D084(v0 + 10, v0[13]);
  sub_6765C(v6 + 56, (v0 + 15));
  sub_D084(v0 + 15, v0[18]);
  sub_6765C(v6 + 96, (v0 + 20));
  v14 = sub_DBB34(v0 + 20);
  sub_D13C(v0 + 20);
  sub_D2338(v14);
  sub_D13C(v0 + 15);
  sub_D13C(v0 + 10);
  sub_169384();
  sub_86E4(v3, &_swiftEmptySetSingleton, v0 + 30);
  (*(v4 + 8))(v3, v5);
  if (v0[33])
  {
    sub_D124(v0 + 15, (v0 + 25));
    v15 = swift_task_alloc();
    v0[50] = v15;
    *v15 = v0;
    v15[1] = sub_65210;

    return sub_66024((v0 + 25));
  }

  else
  {
    sub_4EAF4((v0 + 30), &qword_1E5F80, &unk_16E7E0);
    sub_16A9A4();
    sub_57C04();
    sub_386D8(v17, v18, v19, v20, v21, v22, 47, v23, 0x8000000000182F10);
    sub_168FB4();
    sub_168F74();

    v24 = sub_120EC();

    return v25(v24);
  }
}

uint64_t sub_65210()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 408) = v3;

  v4 = sub_D388();

  return _swift_task_switch(v4);
}

uint64_t sub_6551C()
{
  sub_D2DC();
  sub_D358();
  v1 = *v0;
  sub_D254();
  *v2 = v1;

  v3 = sub_D388();

  return _swift_task_switch(v3);
}

void sub_6561C()
{
  v1 = *(v0 + 312);
  sub_16ACF4(18);

  sub_16A1C4();
  v37._countAndFlagsBits = sub_16A7E4();
  sub_16A744(v37);

  sub_57C30();
  sub_16A9A4();
  sub_57C04();
  sub_386D8(v2, v3, v4, v5, v6, v7, 58, 0x6574726F70707553, 0xEF3A737070612064);

  v8 = sub_11B48C();
  v9 = 0;
  sub_D434();
  v33 = v10;
LABEL_2:
  for (i = v9; v8 != i; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      sub_16AD04();
    }

    else
    {
      if (i >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_18;
      }
    }

    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      return;
    }

    v12 = sub_16A1B4();
    if (v13)
    {
      v14 = v12;
      v15 = v13;
      sub_5758(&qword_1E5F70, &unk_16F3F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_16D3A0;
      *(inited + 32) = 0xD000000000000012;
      *(inited + 40) = v33;
      *(inited + 48) = 0x6C7070612E6D6F63;
      *(inited + 56) = 0xEF64737361702E65;
      v34[35] = v14;
      v34[36] = v15;
      v31 = swift_task_alloc();
      *(v31 + 16) = v0 + 280;
      v32 = sub_100D74(sub_D010, v31, inited);
      swift_setDeallocating();
      sub_EFFB0();

      if (v32)
      {
      }

      else
      {
        sub_16AD34();
        sub_16AD64();
        sub_16AD74();
        sub_16AD44();
      }

      goto LABEL_2;
    }
  }

  v17 = v34[42];

  v34[54] = _swiftEmptyArrayStorage;
  sub_16ACF4(20);

  sub_D434();
  v35 = v18;
  v38._countAndFlagsBits = sub_16A7E4();
  sub_16A744(v38);

  sub_57C30();
  sub_16A9A4();
  sub_57C04();
  sub_386D8(v19, v20, v21, v22, v23, v24, 68, 0xD000000000000011, v35);

  v25 = qword_1F0B28;
  v34[55] = qword_1F0B28;
  sub_D084((v17 + v25), *(v17 + v25 + 24));
  v26 = v34[29];
  sub_D084(v34 + 25, v34[28]);
  v27 = sub_67CB4();
  v29 = v28(v27, v26);
  v30 = swift_task_alloc();
  v34[56] = v30;
  *v30 = v34;
  v30[1] = sub_65A94;

  sub_CC4E4(v29);
}

uint64_t sub_65A94()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 456) = v5;
  *(v3 + 464) = v0;

  if (v0)
  {

    v6 = sub_65E84;
  }

  else
  {
    v6 = sub_65BA4;
  }

  return _swift_task_switch(v6);
}

uint64_t sub_65BA4()
{
  v1 = *(v0[57] + 16);
  v2 = sub_11B48C();
  v3 = v2;
  if (v1)
  {
    if (!v2)
    {
      v13 = v0[43];

      sub_31350(v14);
      sub_67C8C();
      sub_57C04();
      v22 = 77;
LABEL_12:
      sub_386D8(v15, v16, v17, v18, v19, v20, v22, v21, v39);
      v27 = type metadata accessor for CarCommandsWalletAppResolutionFlowStrategy(0, *(v13 + 416), v25, v26);
      sub_67C1C();
      WitnessTable = swift_getWitnessTable();
      sub_BB0C(v27, WitnessTable);
      goto LABEL_14;
    }

    if (sub_11B48C())
    {
      sub_66C04(v0[57], v0[54]);
      sub_67CB4();

LABEL_7:

      goto LABEL_14;
    }
  }

  else
  {

    v5 = v0[54];
    if (v3)
    {
      sub_31350(v4);
      sub_67C8C();
      sub_57C04();
      sub_386D8(v6, v7, v8, v9, v10, v11, 74, v12, v39);
      sub_667F8(v5);
      goto LABEL_7;
    }
  }

  v23 = (v0[42] + v0[55]);
  sub_D084(v23, v23[3]);
  v24 = sub_CCFA8()[2];

  if (v24)
  {
    v13 = v0[43];
    sub_16A9A4();
    v39 = 0x8000000000183FC0;
    sub_57C04();
    v22 = 85;
    goto LABEL_12;
  }

  sub_16A9A4();
  sub_57C04();
  sub_386D8(v29, v30, v31, v32, v33, v34, 92, v35, 0x8000000000183F90);
  sub_168FB4();
  sub_168F74();
LABEL_14:
  sub_D13C(v0 + 25);

  v36 = sub_120EC();

  return v37(v36);
}

uint64_t sub_66024(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = *v1;
  return _swift_task_switch(sub_6606C);
}

uint64_t sub_663E4()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v7 + 120) = v6;
  *(v7 + 128) = v0;

  if (v0)
  {
    v8 = sub_666F4;
  }

  else
  {
    v8 = sub_66504;
  }

  return _swift_task_switch(v8);
}

uint64_t sub_66504()
{
  v1 = v0[15];
  if (*(v1 + 16) != 1)
  {

    goto LABEL_5;
  }

  sub_6765C(v1 + 32, (v0 + 2));

  sub_D084(v0 + 2, v0[5]);
  sub_16A1C4();
  sub_67C60();

  sub_16A1A4();
  v2 = sub_110748();
  v3 = sub_1109B4();

  if ((v2 & 1) == 0)
  {
    sub_D13C(v0 + 2);
    if (v3)
    {

      goto LABEL_8;
    }

LABEL_5:
    sub_67D08(v5, v6, v0[9]);
    sub_67C1C();
    swift_getWitnessTable();
    sub_67C6C();
    sub_67C60();

    goto LABEL_9;
  }

  v4 = sub_D13C(v0 + 2);
LABEL_8:
  v7 = v0[9];
  sub_31350(v4);
  sub_67CC0();
  sub_67C54();
  sub_386D8(v8, v9, v10, v11, v12, v13, 108, v14, v30);
  sub_31350(v15);
  sub_67CC0();
  sub_67C54();
  sub_386D8(v16, v17, v18, v19, v20, v21, 109, v22, v31);
  v25 = type metadata accessor for CarCommandsWalletAppResolutionFlowStrategy(0, *(v7 + 416), v23, v24);
  sub_67C1C();
  WitnessTable = swift_getWitnessTable();
  sub_BB0C(v25, WitnessTable);
LABEL_9:
  v27 = sub_120EC();

  return v28(v27);
}

uint64_t sub_666F4(uint64_t a1)
{
  sub_16A9A4();
  sub_67C54();
  sub_386D8(v2, v3, v4, v5, v6, v7, 113, v8, 0x8000000000183E00);

  sub_67D08(v9, v10, *(v1 + 72));
  sub_67C1C();
  swift_getWitnessTable();
  sub_67C6C();
  sub_67C60();

  v11 = sub_120EC();

  return v12(v11);
}

uint64_t sub_667F8(uint64_t a1)
{
  if (sub_11B48C() != 1)
  {
    sub_16ACF4(44);

    sub_D434();
    v37 = v8;
    sub_16A1C4();
    v38._countAndFlagsBits = sub_16A7E4();
    sub_16A744(v38);

    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v9 = sub_16A584();
    sub_9DA0(v9, qword_1E65C0);
    sub_16A9A4();
    sub_67C54();
    sub_386D8(v10, v11, v12, v13, v14, v15, 121, 0xD00000000000002ALL, v37);

    v16 = sub_168FB4();
    sub_5758(&qword_1EA2B0, &qword_16DFB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_16D440;
    *(inited + 32) = sub_F3020();

    sub_13F914(inited);
    v18 = v16;
    sub_168F84();
    sub_67C60();

    return v18;
  }

  v2 = a1 & 0xC000000000000001;
  sub_1487EC();
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_67D20();
  }

  else
  {
  }

  v3 = sub_16A1B4();
  v5 = v4;

  if (v5)
  {

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      sub_16ACF4(24);

      sub_D434();
      v36 = v7;
      if (v2)
      {
        sub_67D20();
      }

      else
      {
      }

      sub_16A1C4();
      sub_67604();
      v39._countAndFlagsBits = sub_16AE24();
      sub_16A744(v39);

      if (qword_1E58E8 != -1)
      {
        sub_9ED4(&qword_1E58E8);
      }

      v28 = sub_16A584();
      v29 = sub_9DA0(v28, qword_1E65C0);
      sub_16A9A4();
      sub_67C54();
      v18 = v29;
      sub_386D8(v30, v31, v32, v33, v34, v35, 130, 0xD000000000000016, v36);

      if (v2)
      {
        sub_67D20();
      }

      else
      {
      }

      sub_168FB4();
      sub_67C60();
      sub_168FA4();
      sub_67C60();

      return v18;
    }
  }

  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v19 = sub_16A584();
  sub_9DA0(v19, qword_1E65C0);
  sub_16A9A4();
  sub_67C54();
  sub_386D8(v20, v21, v22, v23, v24, v25, 126, v26, 0x8000000000183CD0);
  sub_168FB4();
  return sub_168F74();
}

uint64_t sub_66C04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v25 = *v2;
  p_weak_ivar_lyt = (&SetCarPlayClimateRCHFlowStrategy + 56);
  if (*(a1 + 16) != 1)
  {
    goto LABEL_9;
  }

  v7 = sub_11B48C();
  p_weak_ivar_lyt = &SetCarPlayClimateRCHFlowStrategy.weak_ivar_lyt;
  if (v7 != 1)
  {
    goto LABEL_9;
  }

  v8 = v2[22];
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v9 = sub_16A584();
  sub_9DA0(v9, qword_1E65C0);
  v10 = sub_16A9A4();
  sub_386D8(v10, v8 | 0x80000, 0xD00000000000009BLL, 0x8000000000183A60, 0xD000000000000046, 0x8000000000183B00, 136, 0xD00000000000006CLL, 0x8000000000183B80);
  sub_6765C(a1 + 32, v26);
  sub_D084(v26, v26[3]);
  sub_1487EC();
  if ((a2 & 0xC000000000000001) != 0)
  {
    sub_67D20();
  }

  else
  {
  }

  v11 = sub_110748();
  v12 = sub_1109B4();

  sub_D13C(v26);
  p_weak_ivar_lyt = &SetCarPlayClimateRCHFlowStrategy.weak_ivar_lyt;
  if ((v11 & 1) != 0 || v12)
  {
    v19 = v3[22];
    v20 = sub_16A9A4();
    sub_386D8(v20, v19 | 0x80000, 0xD00000000000009BLL, 0x8000000000183A60, 0xD000000000000046, 0x8000000000183B00, 138, 0xD000000000000077, 0x8000000000183BF0);
    v23 = sub_67D08(v21, v22, v25);
    sub_67C1C();
    WitnessTable = swift_getWitnessTable();
    return sub_BB0C(v23, WitnessTable);
  }

  else
  {
LABEL_9:
    v13 = v3[22];
    if (p_weak_ivar_lyt[285] != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v14 = sub_16A584();
    sub_9DA0(v14, qword_1E65C0);
    v15 = sub_16A9A4();
    sub_386D8(v15, v13 | 0x80000, 0xD00000000000009BLL, 0x8000000000183A60, 0xD000000000000046, 0x8000000000183B00, 143, 0xD00000000000002FLL, 0x8000000000183B50);
    sub_5758(&qword_1EA2B0, &qword_16DFB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_16D440;
    *(inited + 32) = sub_F3020();
    v26[0] = a2;

    sub_13F914(inited);
    sub_168FB4();
    sub_67CB4();
    v17 = sub_168F84();
  }

  return v17;
}

uint64_t sub_66F28()
{
  sub_D13C((v0 + qword_1F0B28));
}

void *sub_66F7C()
{
  v0 = sub_3D044();
  sub_D13C((v0 + qword_1F0B28));

  return v0;
}

uint64_t sub_66FD8()
{
  v0 = sub_66F7C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_67044()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_43F64;

  return sub_64DE0();
}

uint64_t sub_670DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10A9C;

  return sub_647EC();
}

uint64_t sub_671E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  swift_getWitnessTable();
  *v4 = v3;
  v4[1] = sub_10A9C;

  return sub_B93C();
}

uint64_t sub_67314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  swift_getWitnessTable();
  *v4 = v3;
  v4[1] = sub_10A9C;

  return sub_A2A8();
}

uint64_t sub_67428(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_67520;

  return v6(a1);
}

uint64_t sub_67520()
{
  sub_D2DC();
  sub_D358();
  v1 = *v0;
  sub_D254();
  *v2 = v1;

  sub_D37C();

  return v3();
}

unint64_t sub_67604()
{
  result = qword_1E5FA8[0];
  if (!qword_1E5FA8[0])
  {
    sub_16A1C4();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1E5FA8);
  }

  return result;
}

uint64_t sub_6765C(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  sub_4EB50();
  (*v3)(a2);
  return a2;
}

uint64_t sub_676BC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_676FC()
{
  sub_1696C();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = sub_16998(v6);
  *v7 = v8;
  v7[1] = sub_1039C;

  return sub_64618(v2, v3, v4, v5);
}

uint64_t sub_677A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1E66C0, &qword_16FE00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_67814(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_67908;

  return v5(v2 + 16);
}

uint64_t sub_67908()
{
  sub_1696C();
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *v0;
  sub_D254();
  *v4 = v3;

  *v2 = *(v1 + 16);
  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_67A2C()
{

  sub_67CA8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_67A60()
{
  sub_1696C();
  sub_67CFC();
  v0 = swift_task_alloc();
  v1 = sub_16998(v0);
  *v1 = v2;
  v3 = sub_67C34(v1);

  return v4(v3);
}

uint64_t sub_67AF0()
{
  sub_1696C();
  sub_67CFC();
  v0 = swift_task_alloc();
  v1 = sub_16998(v0);
  *v1 = v2;
  v3 = sub_67C34(v1);

  return v4(v3);
}

uint64_t sub_67B80()
{
  sub_1696C();
  sub_67CFC();
  v0 = swift_task_alloc();
  v1 = sub_16998(v0);
  *v1 = v2;
  v3 = sub_67C34(v1);

  return v4(v3);
}

uint64_t sub_67C6C()
{

  return sub_BB40(v1, v0);
}

uint64_t sub_67CD8@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_677A4(v2, &a2 - a1);
}

uint64_t sub_67D08@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *(a3 + 416);

  return type metadata accessor for CarCommandsWalletAppResolutionFlowStrategy(0, v4, a1, a2);
}

uint64_t sub_67D20()
{

  return sub_16AD04();
}

uint64_t sub_67D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_168B74();
  __chkstk_darwin(v3 - 8);
  sub_168B34();
  return sub_169164();
}

uint64_t sub_67DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_5758(&qword_1E5F78, &unk_16D400);
  __chkstk_darwin(v5 - 8);
  v7 = &v9 - v6;

  sub_169194();

  sub_169184();
  sub_1691D4();
  sub_67EF4(a4, v7);
  return sub_1691B4();
}

uint64_t sub_67EF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1E5F78, &unk_16D400);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_67F64(uint64_t a1, uint64_t *a2)
{
  result = sub_11B48C();
  v5 = result;
  v6 = 0;
  v16 = a1 & 0xC000000000000001;
  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = a1 + 32;
  while (1)
  {
LABEL_2:
    if (v6 == v5)
    {

      return _swiftEmptyArrayStorage;
    }

    if (v16)
    {
      result = sub_16AD04();
    }

    else
    {
      if (v6 >= *(v7 + 16))
      {
        goto LABEL_15;
      }

      result = *(v8 + 8 * v6);
    }

    v9 = result;
    if (__OFADD__(v6++, 1))
    {
      break;
    }

    v11 = *a2;

    v12 = [v9 mediaSourceSemanticType];
    v13 = *(v11 + 16);
    v14 = (v11 + 32);
    while (v13)
    {
      v15 = *v14++;
      --v13;
      if (v15 == v12)
      {

        sub_16AD34();
        sub_16AD64();
        sub_16AD74();
        result = sub_16AD44();
        goto LABEL_2;
      }
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_680C0(unint64_t a1, uint64_t a2, void *a3)
{
  v39 = a3;
  v6 = sub_16A9B4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_6B7F4(v3);
  if (v10)
  {
    v11 = v10;
    v36 = v9;
    v37 = v7;
    v38 = v6;
    HIDWORD(v35) = a1;
    v12 = sub_11B48C();
    v13 = 0;
    v14 = v11 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v12 == v13)
      {

        goto LABEL_16;
      }

      if ((v11 & 0xC000000000000001) != 0)
      {
        v15 = sub_16AD04();
      }

      else
      {
        if (v13 >= *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_28;
        }

        v15 = *(v11 + 8 * v13 + 32);
      }

      a1 = v15;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v16 = [v15 identifier];
      v17 = sub_16A664();
      v19 = v18;

      v20 = v39;
      if (v17 == a2 && v19 == v39)
      {

        goto LABEL_22;
      }

      v6 = sub_16AE54();

      if (v6)
      {
        break;
      }

      ++v13;
    }

    v20 = v39;
LABEL_22:
    v41 = 0;
    v42 = 0xE000000000000000;
    sub_16ACF4(59);
    v45._countAndFlagsBits = 0xD000000000000021;
    v45._object = 0x8000000000184270;
    sub_16A744(v45);
    v26 = BYTE4(v35) & 1;
    v40 = BYTE4(v35) & 1;
    sub_16AD84();
    v46._countAndFlagsBits = 0xD000000000000016;
    v46._object = 0x80000000001842A0;
    sub_16A744(v46);
    v47._countAndFlagsBits = a2;
    v47._object = v20;
    sub_16A744(v47);
    v27 = v41;
    v28 = v42;
    v29 = v38;
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v30 = sub_16A584();
    sub_9DA0(v30, qword_1E65C0);
    v31 = sub_16A9A4();
    sub_386D8(v31, 0x200000000uLL, 0xD00000000000008DLL, 0x8000000000184180, 0xD000000000000020, 0x8000000000184210, 20, v27, v28);

    v33 = v36;
    v32 = v37;
    v34 = &enum case for CAFMediaSource.SeekDirection.previous(_:);
    if (v26)
    {
      v34 = &enum case for CAFMediaSource.SeekDirection.next(_:);
    }

    (*(v37 + 104))(v36, *v34, v29);
    *(swift_allocObject() + 16) = v26;
    sub_16A9C4();

    return (*(v32 + 8))(v33, v29);
  }

  else
  {
LABEL_16:
    v14 = 0xD000000000000020;
    a1 = "gin18SnippetFactoryBase";
    v12 = "Radio/CAFMedia+CarRadio.swift";
    v41 = 0;
    v42 = 0xE000000000000000;
    sub_16ACF4(39);

    sub_D434();
    v41 = 0xD000000000000025;
    v42 = v22;
    v44._countAndFlagsBits = a2;
    v44._object = v39;
    sub_16A744(v44);
    v11 = v41;
    v6 = v42;
    if (qword_1E58E8 != -1)
    {
LABEL_29:
      sub_9ED4(&qword_1E58E8);
    }

    v23 = sub_16A584();
    sub_9DA0(v23, qword_1E65C0);
    v24 = sub_16A9A4();
    sub_386D8(v24, 0x200000000uLL, v14 + 109, a1 | 0x8000000000000000, 0xD000000000000020, (v12 | 0x8000000000000000), 16, v11, v6);
  }
}

uint64_t sub_68564(uint64_t a1, char a2)
{
  if (a1)
  {
    swift_errorRetain();
    sub_16ACF4(48);
    v7._countAndFlagsBits = 0xD00000000000002ALL;
    v7._object = 0x80000000001842F0;
    sub_16A744(v7);
    sub_16AD84();
    v8._countAndFlagsBits = 8250;
    v8._object = 0xE200000000000000;
    sub_16A744(v8);
    sub_5758(&qword_1E6360, &qword_16E3B0);
    sub_16AD84();
    if (qword_1E58E8 != -1)
    {
      swift_once();
    }

    v2 = sub_16A584();
    sub_9DA0(v2, qword_1E65C0);
    v3 = sub_16A9A4();
    sub_386D8(v3, 0x200000000uLL, 0xD00000000000008DLL, 0x8000000000184180, 0xD000000000000020, 0x8000000000184210, 23, 0, 0xE000000000000000);
  }

  else
  {
    sub_16ACF4(45);
    v9._countAndFlagsBits = 0xD00000000000002BLL;
    v9._object = 0x80000000001842C0;
    sub_16A744(v9);
    sub_16AD84();
    if (qword_1E58E8 != -1)
    {
      swift_once();
    }

    v5 = sub_16A584();
    sub_9DA0(v5, qword_1E65C0);
    v6 = sub_16A9A4();
    sub_386D8(v6, 0x200000000uLL, 0xD00000000000008DLL, 0x8000000000184180, 0xD000000000000020, 0x8000000000184210, 25, 0, 0xE000000000000000);
  }
}

uint64_t sub_6880C(uint64_t a1)
{
  *(v2 + 224) = a1;
  *(v2 + 232) = v1;
  return sub_D2B0();
}

uint64_t sub_68820()
{
  v1 = v0[28];
  sub_37474();
  sub_16ACF4(35);

  sub_D434();
  v21 = v2;
  sub_10824(v1, (v0 + 18));
  v0[30] = sub_5758(&qword_1E8000, &qword_16FF20);
  v23._countAndFlagsBits = sub_16A694();
  sub_16A744(v23);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v3 = v0[28];
  v4 = sub_16A584();
  v0[31] = sub_9DA0(v4, qword_1E65C0);
  v5 = sub_16A9A4();
  sub_386D8(v5, 0x800uLL, 0xD00000000000008DLL, 0x8000000000184180, 0xD000000000000013, 0x8000000000184440, 31, 0xD000000000000021, v21);

  sub_D084(v3, v3[3]);
  v0[32] = sub_5B65C();
  if (v6)
  {
    v7 = sub_D084(v0[28], *(v0[28] + 24));
    v0[38] = sub_11D80(*v7);
    v0[39] = v8;
    if (v8)
    {
      v9 = [*sub_D084(v0[28] *(v0[28] + 24))];
      v10 = sub_5B994(v9);
      v11 = sub_6A210(v10);
      v0[40] = v11;
      if (v11)
      {
        v12 = swift_task_alloc();
        v0[41] = v12;
        *v12 = v0;
        v13 = sub_6B954(v12);

        return sub_95F70(v13);
      }

      type metadata accessor for CarCommandsError(0);
      v19 = sub_11D28();
      sub_16924(v19);
      sub_6B99C();
      sub_37474();
      sub_16ACF4(70);
      v0[25] = 0xD000000000000021;
      v0[26] = v21;
      v25._countAndFlagsBits = 0xD000000000000024;
      v25._object = 0x80000000001844E0;
      sub_16A744(v25);
      sub_16AD84();
      sub_6B9DC(" and no media sources on the car");
      v18 = v0[25];
    }

    else
    {
      type metadata accessor for CarCommandsError(0);
      v17 = sub_11D28();
      sub_16924(v17);
      sub_6B99C();
      sub_37474();
      sub_16ACF4(69);
      v0[23] = 0xD000000000000021;
      v0[24] = v21;
      v24._countAndFlagsBits = 0xD000000000000017;
      v24._object = 0x8000000000184490;
      sub_16A744(v24);
      sub_16AD84();
      sub_6B9FC(". Siri cannot tune to a station without one.");
      v18 = v0[23];
    }

    sub_6B9BC(v18);
    swift_willThrow();
    sub_D37C();

    return v20();
  }

  else
  {
    v15 = swift_task_alloc();
    v0[33] = v15;
    *v15 = v0;
    v15[1] = sub_68BEC;
    v16 = v0[28];

    return sub_69D3C(v16);
  }
}

uint64_t sub_68BEC()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 272) = v4;
  *(v2 + 280) = v5;

  if (v0)
  {
    sub_D37C();

    return v6();
  }

  else
  {

    return _swift_task_switch(sub_68D0C);
  }
}

uint64_t sub_68D0C()
{
  v1 = *(v0 + 280);
  if (v1)
  {
    v2 = *(v0 + 272);
    v3 = *(v0 + 256);
    sub_3060C();
    sub_16ACF4(45);

    sub_D434();
    v29 = v4;
    *(v0 + 216) = v3;
    v30._countAndFlagsBits = sub_16AE24();
    sub_16A744(v30);

    v31._countAndFlagsBits = 0x72756F73206E6F20;
    v31._object = 0xEF203A6469206563;
    sub_16A744(v31);
    v32._countAndFlagsBits = v2;
    v32._object = v1;
    sub_16A744(v32);
    v5 = sub_16A9A4();
    sub_386D8(v5, 0x800uLL, 0xD00000000000008DLL, 0x8000000000184180, 0xD000000000000013, 0x8000000000184440, 36, 0x100000000000001ALL, v29);

    if (v3 < 0)
    {
      __break(1u);
    }

    else
    {
      v7 = *(v0 + 256);
      if (!HIDWORD(v7))
      {
        v8 = *(v0 + 232);
        v9 = sub_16A644();
        *(v0 + 288) = v9;

        *(v0 + 16) = v0;
        *(v0 + 24) = sub_69154;
        v10 = swift_continuation_init();
        *(v0 + 136) = sub_5758(&qword_1E7FF8, &qword_16FF08);
        *(v0 + 80) = _NSConcreteStackBlock;
        *(v0 + 88) = 1107296256;
        sub_6B940();
        *(v0 + 104) = v11;
        *(v0 + 112) = v10;
        [v8 tuneToFrequency:v7 inSourceWithIdentifier:v9 completion:v0 + 80];
        sub_375B0();

        return _swift_continuation_await(v6);
      }
    }

    __break(1u);
    return _swift_continuation_await(v6);
  }

  v13 = sub_D084(*(v0 + 224), *(*(v0 + 224) + 24));
  *(v0 + 304) = sub_11D80(*v13);
  *(v0 + 312) = v14;
  if (!v14)
  {
    type metadata accessor for CarCommandsError(0);
    v22 = sub_11D28();
    sub_16924(v22);
    sub_6B99C();
    sub_3060C();
    sub_16ACF4(69);
    *(v0 + 184) = v27;
    *(v0 + 192) = v28;
    v33._countAndFlagsBits = 0xD000000000000017;
    v33._object = 0x8000000000184490;
    sub_16A744(v33);
    sub_16AD84();
    sub_6B9FC(". Siri cannot tune to a station without one.");
    v23 = *(v0 + 184);
    goto LABEL_14;
  }

  v15 = [*sub_D084(*(v0 + 224) *(*(v0 + 224) + 24))];
  v16 = sub_5B994(v15);
  v17 = sub_6A210(v16);
  *(v0 + 320) = v17;
  if (!v17)
  {

    type metadata accessor for CarCommandsError(0);
    v24 = sub_11D28();
    sub_16924(v24);
    sub_6B99C();
    sub_3060C();
    sub_16ACF4(70);
    *(v0 + 200) = v27;
    *(v0 + 208) = v28;
    v34._countAndFlagsBits = 0xD000000000000024;
    v34._object = 0x80000000001844E0;
    sub_16A744(v34);
    sub_16AD84();
    sub_6B9DC(" and no media sources on the car");
    v23 = *(v0 + 200);
LABEL_14:
    sub_6B9BC(v23);
    swift_willThrow();
    sub_D37C();
    sub_375B0();

    __asm { BRAA            X1, X16 }
  }

  v18 = swift_task_alloc();
  *(v0 + 328) = v18;
  *v18 = v0;
  sub_6B954(v18);
  sub_375B0();

  return sub_95F70(v19);
}

uint64_t sub_69154()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 296) = v4;
  if (v4)
  {
    v5 = sub_69B14;
  }

  else
  {
    v5 = sub_69254;
  }

  return _swift_task_switch(v5);
}

uint64_t sub_69254()
{
  sub_D2DC();

  sub_D37C();

  return v1();
}

uint64_t sub_692B0()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 336) = v4;
  *(v2 + 344) = v0;

  if (v0)
  {
    v5 = sub_69B7C;
  }

  else
  {
    v5 = sub_693B4;
  }

  return _swift_task_switch(v5);
}

uint64_t sub_693B4()
{
  sub_10B8C();
  v1 = v0[39];
  if (*(v0[42] + 16))
  {

    v2 = swift_task_alloc();
    v0[44] = v2;
    *v2 = v0;
    v2[1] = sub_69570;
    v3 = v0[42];
    v4 = v0[38];

    return sub_9677C(v4, v1, v3);
  }

  else
  {

    type metadata accessor for CarCommandsError(0);
    v6 = sub_11D28();
    sub_16924(v6);
    v8 = v7;
    sub_16ACF4(36);

    sub_D434();
    v14 = v9;
    sub_6B86C();
    v10 = sub_16A7E4();
    v12 = v11;

    v16._countAndFlagsBits = v10;
    v16._object = v12;
    sub_16A744(v16);

    *v8 = 0xD000000000000022;
    v8[1] = v14;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_D37C();

    return v13();
  }
}

uint64_t sub_69570()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  *v4 = *v1;
  v3[45] = v5;
  v3[46] = v6;
  v3[47] = v0;

  if (v0)
  {
    v7 = sub_69BE0;
  }

  else
  {

    v7 = sub_69680;
  }

  return _swift_task_switch(v7);
}

uint64_t sub_69680()
{
  sub_10B8C();
  v2 = *(v0 + 360);
  if (!v2)
  {
    v8 = *(v0 + 304);
    v7 = *(v0 + 312);
    type metadata accessor for CarCommandsError(0);
    sub_11D28();
    swift_allocError();
    v10 = v9;
    sub_3060C();
    sub_16ACF4(49);

    sub_D434();
    v21 = v11;
    v22._countAndFlagsBits = v8;
    v22._object = v7;
    sub_16A744(v22);

    *v10 = 0xD00000000000002FLL;
    v10[1] = v21;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_D37C();
    sub_375E4();

    __asm { BRAA            X1, X16 }
  }

  v3 = *(v0 + 368);
  v4 = [*(v0 + 360) identifier];
  sub_16A664();
  sub_6B99C();

  *(v0 + 384) = v1;
  sub_9694C(v3, v2);
  *(v0 + 392) = v5;
  if (v5)
  {

    v6 = swift_task_alloc();
    *(v0 + 400) = v6;
    *v6 = v0;
    v6[1] = sub_69898;
  }

  else
  {
    v14 = swift_task_alloc();
    *(v0 + 416) = v14;
    *v14 = v0;
    v14[1] = sub_69A04;
  }

  sub_6B9A8();
  sub_375E4();

  return sub_6A518(v15, v16, v17, v18);
}

uint64_t sub_69898()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 408) = v0;

  if (v0)
  {
    v7 = sub_69C48;
  }

  else
  {

    v7 = sub_699A4;
  }

  return _swift_task_switch(v7);
}

uint64_t sub_699A4()
{
  sub_D2DC();
  v1 = *(v0 + 360);

  sub_D37C();

  return v2();
}

uint64_t sub_69A04()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 424) = v0;

  if (v0)
  {
    v7 = sub_69CC0;
  }

  else
  {

    v7 = sub_6B93C;
  }

  return _swift_task_switch(v7);
}

uint64_t sub_69B14()
{
  sub_1696C();
  v1 = *(v0 + 288);
  swift_willThrow();

  sub_D37C();

  return v2();
}

uint64_t sub_69B7C()
{
  sub_D2DC();

  sub_D37C();

  return v0();
}

uint64_t sub_69BE0()
{
  sub_D2DC();

  sub_D37C();

  return v0();
}

uint64_t sub_69C48()
{
  sub_1696C();
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);

  sub_D37C();

  return v3();
}

uint64_t sub_69CC0()
{
  sub_1696C();
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);

  sub_D37C();

  return v3();
}

uint64_t sub_69D3C(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return sub_D2B0();
}

uint64_t sub_69D50()
{
  sub_10B8C();
  v2 = *(v0 + 32);
  v3 = sub_D084(v2, v2[3]);
  sub_11D80(*v3);
  if (v4)
  {

    v5 = "gin18SnippetFactoryBase";
    v6 = "✅ Tuning via frequency: ";
    v1 = 0x80000000001846A0;
    if (qword_1E58E8 != -1)
    {
LABEL_35:
      sub_9ED4(&qword_1E58E8);
    }

    v7 = sub_16A584();
    sub_9DA0(v7, qword_1E65C0);
    v8 = sub_16A9A4();
    sub_386D8(v8, 0x800uLL, 0xD00000000000008DLL, v5 | 0x8000000000000000, 0xD00000000000002BLL, (v6 | 0x8000000000000000), 99, 0xD00000000000003BLL, v1);
    goto LABEL_10;
  }

  v9 = [*sub_D084(*(v0 + 32) v2[3])];
  v10 = sub_5B994(v9);
  if (v10 == 6 || (v11 = v10, sub_D084(*(v0 + 32), v2[3]), sub_5B65C(), (v12 & 1) != 0))
  {
    sub_3060C();
    sub_16ACF4(81);
    *(v0 + 16) = v37;
    *(v0 + 24) = v38;
    v40._countAndFlagsBits = 0x3A6E6F6974617453;
    v40._object = 0xE900000000000020;
    sub_16A744(v40);
    sub_5758(&qword_1E8000, &qword_16FF20);
    sub_16AD84();
    v41._countAndFlagsBits = 0xD000000000000046;
    v41._object = 0x80000000001845F0;
    sub_16A744(v41);
    v13 = *(v0 + 16);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v14 = sub_16A584();
    sub_9DA0(v14, qword_1E65C0);
    sub_16A9A4();
    sub_6B97C();
    v21 = 105;
LABEL_9:
    sub_386D8(v15, v16, v17, v18, v19, v20, v21, v13, v36);

LABEL_10:
    v22 = 0;
    v5 = 0;
    goto LABEL_11;
  }

  v25 = sub_6AE30(v11);
  if (!v25)
  {
    sub_3060C();
    sub_16ACF4(75);
    *(v0 + 16) = v37;
    *(v0 + 24) = v38;
    v42._countAndFlagsBits = 0xD000000000000024;
    v42._object = 0x8000000000184640;
    sub_16A744(v42);
    *(v0 + 48) = v11;
    sub_16AD84();
    v43._countAndFlagsBits = 0xD000000000000025;
    v43._object = 0x8000000000184670;
    sub_16A744(v43);
    v13 = *(v0 + 16);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v29 = sub_16A584();
    sub_9DA0(v29, qword_1E65C0);
    sub_16A9A4();
    sub_6B97C();
    v21 = 110;
    goto LABEL_9;
  }

  v26 = v25;
  v5 = sub_11B48C();
  v6 = 0;
  v27 = v26 & 0xC000000000000001;
  while (v5 != v6)
  {
    if (v27)
    {
      v28 = sub_16AD04();
    }

    else
    {
      if (v6 >= *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_34;
      }

      v28 = *(v26 + 8 * v6 + 32);
    }

    v1 = v28;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if ([v28 mediaSourceSemanticType] == 8)
    {

      v34 = [v1 identifier];
      v22 = sub_16A664();
      v5 = v35;

      goto LABEL_11;
    }

    ++v6;
  }

  if (v5)
  {
    sub_1487EC();
    if (v27)
    {
      v30 = sub_16AD04();
    }

    else
    {
      v30 = *(v26 + 32);
    }

    v31 = v30;

    v32 = [v31 identifier];

    v22 = sub_16A664();
    v5 = v33;
  }

  else
  {

    v22 = 0;
  }

LABEL_11:
  v23 = *(v0 + 8);

  return v23(v22, v5);
}

uint64_t sub_6A210(uint64_t a1)
{
  if (a1 != 6)
  {
    v2 = sub_6AE30(a1);
    if (v2)
    {
      v3 = v2;

      sub_16ACF4(52);
      v15._object = 0x80000000001847B0;
      v15._countAndFlagsBits = 0xD000000000000012;
      sub_16A744(v15);
      sub_6B86C();
      v4 = sub_16A7E4();
      v6 = v5;

      v16._countAndFlagsBits = v4;
      v16._object = v6;
      sub_16A744(v16);

      v17._countAndFlagsBits = 0x6162206D6F726620;
      v17._object = 0xEC000000203A646ELL;
      sub_16A744(v17);
      sub_16AD84();
      v18._object = 0x80000000001847D0;
      v18._countAndFlagsBits = 0xD000000000000012;
      sub_16A744(v18);
      if (qword_1E58E8 != -1)
      {
        swift_once();
      }

      v7 = sub_16A584();
      sub_9DA0(v7, qword_1E65C0);
      v8 = sub_16A9A4();
      sub_386D8(v8, 0x800uLL, 0xD00000000000008DLL, 0x8000000000184180, 0xD000000000000017, 0x8000000000184730, 134, 0, 0xE000000000000000);
LABEL_10:

      return v3;
    }
  }

  v3 = sub_6B7F4(v1);
  if (v3)
  {

    sub_16ACF4(88);
    v19._object = 0x8000000000184750;
    v19._countAndFlagsBits = 0x1000000000000056;
    sub_16A744(v19);
    sub_6B86C();
    v9 = sub_16A7E4();
    v11 = v10;

    v20._countAndFlagsBits = v9;
    v20._object = v11;
    sub_16A744(v20);

    if (qword_1E58E8 != -1)
    {
      swift_once();
    }

    v12 = sub_16A584();
    sub_9DA0(v12, qword_1E65C0);
    v13 = sub_16A9A4();
    sub_386D8(v13, 0x800uLL, 0xD00000000000008DLL, 0x8000000000184180, 0xD000000000000017, 0x8000000000184730, 137, 0, 0xE000000000000000);
    goto LABEL_10;
  }

  return v3;
}

uint64_t sub_6A518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[21] = a4;
  v5[22] = v4;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  return _swift_task_switch(sub_6A540);
}

uint64_t sub_6A540()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  sub_16ACF4(66);
  v14._object = 0x8000000000184380;
  v14._countAndFlagsBits = 0x100000000000002BLL;
  sub_16A744(v14);
  v15._countAndFlagsBits = v2;
  v15._object = v1;
  sub_16A744(v15);
  v16._object = 0x80000000001843B0;
  v16._countAndFlagsBits = 0xD000000000000013;
  sub_16A744(v16);
  v17._countAndFlagsBits = v4;
  v17._object = v3;
  sub_16A744(v17);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v5 = sub_16A584();
  sub_9DA0(v5, qword_1E65C0);
  v6 = sub_16A9A4();
  sub_386D8(v6, 0x800uLL, 0xD00000000000008DLL, 0x8000000000184180, 0xD000000000000034, 0x8000000000184340, 162, 0, 0xE000000000000000);

  v7 = sub_16A644();
  v0[23] = v7;
  v8 = sub_16A644();
  v0[24] = v8;
  v0[2] = v0;
  v0[3] = sub_6A7A8;
  v9 = swift_continuation_init();
  v0[17] = sub_5758(&qword_1E7FF8, &qword_16FF08);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  sub_6B940();
  v0[13] = v10;
  v0[14] = v9;
  [v11 tuneToMediaItemIdentifier:v7 inSourceWithIdentifier:v8 completion:?];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_6A7A8()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 200) = v4;
  if (v4)
  {
    v5 = sub_6A908;
  }

  else
  {
    v5 = sub_6A8A8;
  }

  return _swift_task_switch(v5);
}

uint64_t sub_6A8A8()
{
  sub_D2DC();
  v1 = *(v0 + 184);

  sub_D37C();

  return v2();
}

uint64_t sub_6A908()
{
  sub_1696C();
  v1 = *(v0 + 192);
  v2 = *(v0 + 184);
  swift_willThrow();

  sub_D37C();

  return v3();
}

uint64_t sub_6A978(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return sub_D2B0();
}

uint64_t sub_6A98C()
{
  sub_10B8C();
  v1 = *(v0 + 80);
  if (!*(v1 + 5))
  {
    type metadata accessor for CarCommandsError(0);
    v9 = sub_11D28();
    sub_16924(v9);
    v11 = v10;
    sub_3060C();
    sub_16ACF4(30);
    *(v0 + 64) = v17;
    *(v0 + 72) = v18;
    v19._object = 0x8000000000184320;
    v19._countAndFlagsBits = 0xD00000000000001CLL;
    sub_16A744(v19);
    v12 = *v1;
    v13 = v1[2];
    *(v0 + 32) = v1[1];
    *(v0 + 48) = v13;
    *(v0 + 16) = v12;
    sub_16AD84();
    v14 = *(v0 + 72);
    *v11 = *(v0 + 64);
    v11[1] = v14;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_D37C();
    sub_375E4();

    __asm { BRAA            X1, X16 }
  }

  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_6AB2C;
  sub_375E4();

  return sub_6A518(v3, v4, v5, v6);
}

uint64_t sub_6AB2C()
{
  sub_D2DC();
  sub_D358();
  v1 = *v0;
  sub_D254();
  *v2 = v1;

  sub_D37C();

  return v3();
}

void sub_6AC20()
{
  v1 = sub_6B7F4(*(v0 + 16));
  if (v1)
  {
    v2 = v1;
    v3 = sub_11B48C();
    v4 = 0;
    v26 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v3 == v4)
      {

        v1 = v26;
        goto LABEL_17;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = sub_16AD04();
      }

      else
      {
        if (v4 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_21;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = sub_CB984();
      if (v8 == 6)
      {

        ++v4;
      }

      else
      {
        v9 = v8;
        v10 = [v6 identifier];
        v11 = sub_16A664();
        v25 = v12;

        v24 = [v6 currentFrequency];
        v13 = sub_6B8B0(v6);
        v22 = v14;
        v23 = v13;

        v15 = v26;
        v16 = v11;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_108A18();
          v15 = v19;
        }

        v17 = v15[2];
        v26 = v15;
        if (v17 >= v15[3] >> 1)
        {
          sub_108A18();
          v26 = v20;
        }

        v26[2] = v17 + 1;
        v18 = &v26[6 * v17];
        v18[4] = v16;
        v18[5] = v25;
        *(v18 + 48) = v9;
        *(v18 + 13) = v24;
        *(v18 + 56) = 0;
        v18[8] = v23;
        v18[9] = v22;
        v4 = v7;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_17:
    v21 = *(v0 + 8);

    v21(v1);
  }
}

void *sub_6AE30(uint64_t a1)
{
  v2 = a1;
  if (sub_BE77C(a1) == 0x6261646D66 && v3 == 0xE500000000000000)
  {
    goto LABEL_12;
  }

  v5 = sub_16AE54();

  if (v5)
  {
    goto LABEL_13;
  }

  if (sub_BE77C(v2) == 6447460 && v6 == 0xE300000000000000)
  {
LABEL_12:

    goto LABEL_13;
  }

  v8 = sub_16AE54();

  if ((v8 & 1) == 0)
  {
    sub_5758(&qword_1E8008, &qword_16FF30);
    v9 = swift_allocObject();
    *(v9 + 1) = xmmword_16D9A0;
    sub_6B86C();
    *(v9 + 32) = sub_CB9D4(v2);
    goto LABEL_14;
  }

LABEL_13:
  v9 = &off_1D1890;
LABEL_14:
  v15 = v9;
  v10 = sub_6B7F4(v1);
  if (v10)
  {
    v11 = sub_67F64(v10, &v15);
  }

  else
  {
    v11 = 0;
  }

  sub_16ACF4(45);
  v16._object = 0x8000000000184710;
  v16._countAndFlagsBits = 0xD00000000000001ELL;
  sub_16A744(v16);

  sub_5758(&qword_1E8010, &qword_16FF38);
  v17._countAndFlagsBits = sub_16A694();
  sub_16A744(v17);

  v18._countAndFlagsBits = 0x6E616220726F6620;
  v18._object = 0xEB00000000203A64;
  sub_16A744(v18);
  sub_16AD84();
  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v12 = sub_16A584();
  sub_9DA0(v12, qword_1E65C0);
  v13 = sub_16A9A4();
  sub_386D8(v13, 0x800uLL, 0xD00000000000008DLL, 0x8000000000184180, 0xD000000000000020, 0x80000000001846E0, 156, 0, 0xE000000000000000);

  return v11;
}

uint64_t sub_6B100(uint64_t a1, uint64_t a2, int a3)
{
  *(v4 + 152) = a2;
  *(v4 + 160) = v3;
  *(v4 + 184) = a3;
  *(v4 + 144) = a1;
  return sub_D2B0();
}

uint64_t sub_6B11C()
{
  v1 = *(v0 + 184);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  sub_16ACF4(36);

  sub_D434();
  v13 = v4;
  v15._countAndFlagsBits = v3;
  v15._object = v2;
  sub_16A744(v15);
  v16._countAndFlagsBits = 0x7165726620746120;
  v16._object = 0xEF203A79636E6575;
  sub_16A744(v16);
  *(v0 + 80) = v1;
  v17._countAndFlagsBits = sub_16AE24();
  sub_16A744(v17);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v11 = *(v0 + 160);
  v12 = *(v0 + 184);
  v5 = sub_16A584();
  sub_9DA0(v5, qword_1E65C0);
  v6 = sub_16A9A4();
  sub_386D8(v6, 0x800uLL, 0xD00000000000008DLL, 0x8000000000184180, 0xD000000000000025, 0x80000000001843F0, 126, 0xD000000000000011, v13);

  v7 = sub_16A644();
  *(v0 + 168) = v7;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_6B398;
  v8 = swift_continuation_init();
  *(v0 + 136) = sub_5758(&qword_1E7FF8, &qword_16FF08);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  sub_6B940();
  *(v0 + 104) = v9;
  *(v0 + 112) = v8;
  [v11 tuneToFrequency:v12 inSourceWithIdentifier:v7 completion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_6B398()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 176) = v4;
  if (v4)
  {
    v5 = sub_6B4F4;
  }

  else
  {
    v5 = sub_6B498;
  }

  return _swift_task_switch(v5);
}

uint64_t sub_6B498()
{
  sub_D2DC();

  sub_D37C();

  return v1();
}

uint64_t sub_6B4F4()
{
  sub_1696C();
  v1 = *(v0 + 168);
  swift_willThrow();

  sub_D37C();

  return v2();
}

uint64_t sub_6B55C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1039C;

  return sub_6880C(a1);
}

uint64_t sub_6B5F4(uint64_t a1, uint64_t a2, int a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10A9C;

  return sub_6B100(a1, a2, a3);
}

uint64_t sub_6B6A4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10A9C;

  return sub_6A978(a1);
}

uint64_t sub_6B73C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_3E08C;

  return sub_6AC0C();
}

uint64_t sub_6B7F4(void *a1)
{
  v1 = [a1 mediaSources];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_6B86C();
  v3 = sub_16A7D4();

  return v3;
}

unint64_t sub_6B86C()
{
  result = qword_1E7FF0;
  if (!qword_1E7FF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1E7FF0);
  }

  return result;
}

uint64_t sub_6B8B0(void *a1)
{
  v1 = [a1 currentMediaItemIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_16A664();

  return v3;
}

uint64_t sub_6B9BC@<X0>(uint64_t a1@<X8>)
{
  *v2 = a1;
  v2[1] = v1;

  return swift_storeEnumTagMultiPayload();
}

void sub_6B9DC(uint64_t a1@<X8>)
{

  v3._countAndFlagsBits = v1 + 13;
  v3._object = ((a1 - 32) | 0x8000000000000000);
  sub_16A744(v3);
}

void sub_6B9FC(uint64_t a1@<X8>)
{

  v3._countAndFlagsBits = v1 + 25;
  v3._object = ((a1 - 32) | 0x8000000000000000);
  sub_16A744(v3);
}

uint64_t sub_6BA1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin15TappableCommand_title;
  v8 = sub_16A0C4();
  sub_3CFE4();
  sub_5370(v9, v10, v11, v8);
  v12 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin15TappableCommand_command;
  sub_3CFE4();
  sub_5370(v13, v14, v15, v8);
  v16 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin15TappableCommand_appID;
  sub_3CFE4();
  sub_5370(v17, v18, v19, v8);
  *(v3 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin15TappableCommand_mockGlobals) = 0;
  sub_6CEB0();
  swift_beginAccess();
  sub_6CAE4(a1, v3 + v7);
  swift_endAccess();
  sub_6CEB0();
  swift_beginAccess();
  sub_6CAE4(a2, v3 + v12);
  swift_endAccess();
  sub_6CEB0();
  swift_beginAccess();
  sub_6CAE4(a3, v3 + v16);
  swift_endAccess();
  return v3;
}

uint64_t sub_6BB34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_5758(&qword_1E6300, &qword_16ECE0);
  __chkstk_darwin(v7 - 8);
  sub_A128();
  v10 = v8 - v9;
  v12 = __chkstk_darwin(v11);
  v14 = &v27 - v13;
  __chkstk_darwin(v12);
  v16 = &v27 - v15;
  v17 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v17 || (sub_6CEE8(0x656C746974, 0xE500000000000000) & 1) != 0)
  {
    v18 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin15TappableCommand_title;
    sub_6CEBC();
    swift_beginAccess();
    sub_16198(v3 + v18, v16);
    v19 = sub_16A0C4();
    sub_6CF10(v16);
    if (!v17)
    {
      goto LABEL_25;
    }

    v20 = v16;
    goto LABEL_9;
  }

  v22 = a1 == 0x646E616D6D6F63 && a2 == 0xE700000000000000;
  if (v22 || (sub_6CEE8(0x646E616D6D6F63, 0xE700000000000000) & 1) != 0)
  {
    v23 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin15TappableCommand_command;
    sub_6CEBC();
    swift_beginAccess();
    sub_16198(v3 + v23, v14);
    v19 = sub_16A0C4();
    sub_6CF10(v14);
    if (!v17)
    {
      goto LABEL_25;
    }

    v20 = v14;
    goto LABEL_9;
  }

  if (a1 != 0x4449707061 || a2 != 0xE500000000000000)
  {
    result = sub_6CEE8(0x4449707061, 0xE500000000000000);
    if ((result & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v25 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin15TappableCommand_appID;
  sub_6CEBC();
  swift_beginAccess();
  sub_16198(v3 + v25, v10);
  v19 = sub_16A0C4();
  sub_6CF10(v10);
  if (v17)
  {
    v20 = v10;
LABEL_9:
    result = sub_4FAB4(v20);
LABEL_10:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

LABEL_25:
  *(a3 + 24) = v19;
  sub_10888(a3);
  sub_6CED8();
  return (*(v26 + 32))();
}

unint64_t sub_6BDE0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1D1E80;
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

uint64_t sub_6BE2C(char a1)
{
  if (!a1)
  {
    return 0x656C746974;
  }

  if (a1 == 1)
  {
    return 0x646E616D6D6F63;
  }

  return 0x4449707061;
}

unint64_t sub_6BEA0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_6BDE0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_6BED0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_6BE2C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_6BF04@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_6BDE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_6BF38(uint64_t a1)
{
  v2 = sub_6CB54();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_6BF74(uint64_t a1)
{
  v2 = sub_6CB54();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_6BFB0()
{
  sub_4FAB4(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin15TappableCommand_title);
  sub_4FAB4(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin15TappableCommand_command);
  sub_4FAB4(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin15TappableCommand_appID);

  return v0;
}

uint64_t sub_6C008()
{
  sub_6BFB0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for TappableCommand(uint64_t a1)
{
  result = qword_1E8050;
  if (!qword_1E8050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_6C0B4(uint64_t a1)
{
  sub_6C464(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_6C150(void *a1)
{
  v2 = v1;
  v4 = sub_5758(&qword_1E6300, &qword_16ECE0);
  __chkstk_darwin(v4 - 8);
  sub_A128();
  v28 = v5 - v6;
  sub_6CF04();
  __chkstk_darwin(v7);
  v29 = &v28 - v8;
  sub_6CF04();
  __chkstk_darwin(v9);
  v11 = &v28 - v10;
  v12 = sub_5758(&qword_1E81A0, &qword_170068);
  sub_9F48();
  v14 = v13;
  __chkstk_darwin(v15);
  v17 = &v28 - v16;
  sub_D084(a1, a1[3]);
  sub_6CB54();
  sub_16AF74();
  v18 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin15TappableCommand_title;
  sub_6CEBC();
  swift_beginAccess();
  sub_16198(v1 + v18, v11);
  v32 = 0;
  sub_16A0C4();
  sub_6CE84();
  sub_6CBA8(v19, v20, &protocol conformance descriptor for SpeakableString);
  sub_6CE9C();
  v21 = v30;
  sub_16AE04();
  sub_4FAB4(v11);
  if (!v21)
  {
    v22 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin15TappableCommand_command;
    sub_6CEBC();
    swift_beginAccess();
    v23 = v29;
    sub_16198(v2 + v22, v29);
    v31 = 1;
    sub_6CE9C();
    sub_16AE04();
    sub_4FAB4(v23);
    v24 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin15TappableCommand_appID;
    sub_6CEBC();
    swift_beginAccess();
    v25 = v2 + v24;
    v26 = v28;
    sub_16198(v25, v28);
    v33 = 2;
    sub_6CE9C();
    sub_16AE04();
    sub_4FAB4(v26);
  }

  return (*(v14 + 8))(v17, v12);
}

uint64_t sub_6C414(void *a1)
{
  v2 = swift_allocObject();
  sub_6C4BC(a1);
  return v2;
}

void sub_6C464(uint64_t a1)
{
  if (!qword_1E8060)
  {
    sub_16A0C4();
    v1 = sub_16AB24();
    if (!v2)
    {
      atomic_store(v1, &qword_1E8060);
    }
  }
}

uint64_t sub_6C4BC(void *a1)
{
  v2 = v1;
  v4 = sub_5758(&qword_1E6300, &qword_16ECE0);
  __chkstk_darwin(v4 - 8);
  sub_A128();
  v43 = v5 - v6;
  sub_6CF04();
  __chkstk_darwin(v7);
  v45 = &v41 - v8;
  sub_6CF04();
  __chkstk_darwin(v9);
  v48 = &v41 - v10;
  v47 = sub_5758(&qword_1E8188, &qword_170060);
  sub_9F48();
  v44 = v11;
  __chkstk_darwin(v12);
  v14 = &v41 - v13;
  v15 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin15TappableCommand_title;
  v16 = sub_16A0C4();
  sub_3CFE4();
  sub_5370(v17, v18, v19, v16);
  v20 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin15TappableCommand_command;
  sub_3CFE4();
  sub_5370(v21, v22, v23, v16);
  v24 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin15TappableCommand_appID;
  sub_3CFE4();
  sub_5370(v25, v26, v27, v16);
  *(v2 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin15TappableCommand_mockGlobals) = 0;
  v28 = a1[3];
  v51 = a1;
  sub_D084(a1, v28);
  sub_6CB54();
  v46 = v14;
  v29 = v49;
  sub_16AF64();
  if (v29)
  {
  }

  else
  {
    v49 = v20;
    v42 = v24;
    v31 = v44;
    v30 = v45;
    v50 = 0;
    sub_6CE84();
    sub_6CBA8(v32, v33, &protocol conformance descriptor for SpeakableString);
    v34 = v47;
    sub_6CEC8();
    v35 = v46;
    sub_16ADF4();
    sub_6CEB0();
    swift_beginAccess();
    sub_6CAE4(v48, v2 + v15);
    swift_endAccess();
    v50 = 1;
    v36 = v30;
    sub_6CEC8();
    sub_16ADF4();
    v37 = v49;
    sub_6CEB0();
    swift_beginAccess();
    sub_6CAE4(v36, v2 + v37);
    swift_endAccess();
    v50 = 2;
    v38 = v43;
    sub_6CEC8();
    sub_16ADF4();
    (*(v31 + 8))(v35, v34);
    v40 = v42;
    sub_6CEB0();
    swift_beginAccess();
    sub_6CAE4(v38, v2 + v40);
    swift_endAccess();
  }

  sub_D13C(v51);
  return v2;
}

uint64_t sub_6C83C()
{
  v0 = qword_1E8018;

  return v0;
}

void *sub_6C874()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin15TappableCommand_mockGlobals;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_6C8C4(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin15TappableCommand_mockGlobals;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = a1;
}

uint64_t sub_6C9AC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_6C414(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_6CA8C(uint64_t a1)
{
  result = sub_6CBA8(&qword_1E8180, type metadata accessor for TappableCommand, &unk_16FFD0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_6CAE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1E6300, &qword_16ECE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_6CB54()
{
  result = qword_1E8190;
  if (!qword_1E8190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E8190);
  }

  return result;
}

uint64_t sub_6CBA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for TappableCommand.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TappableCommand.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x6CD44);
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

unint64_t sub_6CD80()
{
  result = qword_1E81B0;
  if (!qword_1E81B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E81B0);
  }

  return result;
}

unint64_t sub_6CDD8()
{
  result = qword_1E81B8;
  if (!qword_1E81B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E81B8);
  }

  return result;
}

unint64_t sub_6CE30()
{
  result = qword_1E81C0;
  if (!qword_1E81C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E81C0);
  }

  return result;
}

uint64_t sub_6CEE8(uint64_t a1, uint64_t a2)
{

  return sub_16AE54();
}

uint64_t type metadata accessor for CarCommandsSetCarPlayFanIntensityCATsSimple(uint64_t a1)
{
  result = qword_1E81C8;
  if (!qword_1E81C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_6CFBC(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return _swift_task_switch(sub_6CFE0);
}

uint64_t sub_6CFE0()
{
  v1 = *(v0 + 56);
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v2 = swift_allocObject();
  v3 = v2;
  *(v0 + 32) = v2;
  *(v2 + 16) = xmmword_16D9A0;
  strcpy((v2 + 32), "fanIntensity");
  *(v2 + 45) = 0;
  *(v2 + 46) = -5120;
  if (v1)
  {
    v4 = 0;
    v5 = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  else
  {
    v4 = *(v0 + 16);
    v5 = &type metadata for Double;
  }

  *(v2 + 48) = v4;
  *(v2 + 72) = v5;
  v8 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = sub_6D128;

  return v8(0xD000000000000037, 0x80000000001848D0, v3);
}

uint64_t sub_6D128(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_6D280);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_6D280()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_6D338(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_6D494(uint64_t a1, uint64_t a2)
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

uint64_t sub_6D59C()
{
  sub_D2DC();
  v1[23] = v2;
  v1[24] = v0;
  v1[22] = v3;
  v1[25] = type metadata accessor for CarCommandsError(0);
  v1[26] = swift_task_alloc();
  sub_16A164();
  v1[27] = swift_task_alloc();
  v4 = sub_1693E4();
  v1[28] = v4;
  v1[29] = *(v4 - 8);
  v1[30] = swift_task_alloc();

  return _swift_task_switch(sub_6D6B8);
}

uint64_t sub_6DA4C()
{
  sub_D2DC();
  v2 = *v1;
  sub_D2A4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 264) = v4;
  *(v2 + 272) = v0;

  if (v0)
  {
    v5 = sub_6DDA8;
  }

  else
  {

    v5 = sub_6DB60;
  }

  return _swift_task_switch(v5);
}

uint64_t sub_6DB60()
{
  sub_D2DC();
  sub_10824(*(v0 + 192) + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin15OpenCarPlayFlow_responseGenerator, v0 + 96);
  v1 = swift_task_alloc();
  *(v0 + 280) = v1;
  *v1 = v0;
  v1[1] = sub_6DC10;

  return sub_11A570();
}

uint64_t sub_6DC10()
{
  sub_D2DC();
  v2 = *v1;
  sub_D2A4();
  *v3 = v2;
  v4 = *v1;
  sub_D2A4();
  *v5 = v4;
  *(v2 + 288) = v0;

  sub_D13C((v2 + 96));
  if (v0)
  {
    v6 = sub_6DE2C;
  }

  else
  {
    v6 = sub_6DD20;
  }

  return _swift_task_switch(v6);
}

uint64_t sub_6DD20()
{

  sub_D37C();

  return v1();
}

uint64_t sub_6DDA8()
{

  sub_D37C();

  return v0();
}

uint64_t sub_6DE2C()
{

  sub_D37C();

  return v1();
}

uint64_t sub_6DEB0(__int128 *a1, __int128 *a2)
{
  v3 = v2;
  v6 = (v2 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin15OpenCarPlayFlow_featureFlagHelper);
  v7 = type metadata accessor for FeatureFlagHelper();
  v8 = swift_allocObject();
  v6[3] = v7;
  v6[4] = &off_1D9AF0;
  *v6 = v8;
  v9 = (v3 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin15OpenCarPlayFlow_responseGenerator);
  v10 = sub_168E34();
  swift_allocObject();
  v11 = sub_168E24();
  v9[3] = v10;
  v9[4] = &protocol witness table for ResponseFactory;
  *v9 = v11;

  return sub_74260(a1, a2);
}

uint64_t sub_6DF70()
{
  sub_D13C((v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin15OpenCarPlayFlow_featureFlagHelper));
  v1 = (v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin15OpenCarPlayFlow_responseGenerator);

  return sub_D13C(v1);
}

uint64_t sub_6DFB0()
{
  v0 = sub_735DC();
  v1 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin15OpenCarPlayFlow_featureFlagHelper;

  sub_D13C((v2 + v1));
  sub_D13C((v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin15OpenCarPlayFlow_responseGenerator));

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for OpenCarPlayFlow(uint64_t a1)
{
  result = qword_1E8240;
  if (!qword_1E8240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_6E0D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_503C8;

  return sub_6D59C();
}

uint64_t sub_6E184()
{
  sub_D2DC();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_169E44();
  sub_4BEE0(v3);
  v1[5] = v4;
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_6E234);
}

uint64_t sub_6E234()
{
  v1 = [*(v0 + 24) positionManager];
  if (v1)
  {
    v2 = v1;
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    v5 = *(v0 + 32);
    v6 = sub_6F898();
    v7(v6);
    v8 = swift_task_alloc();
    *(v8 + 16) = v3;
    sub_15A218(sub_6F854, v8);

    (*(v4 + 8))(v3, v5);
    if (sub_11B48C())
    {
      sub_6F8AC();
      v9 = sub_16AD04();
      v10 = *(v0 + 16);

      v10[3] = sub_16484(0, &qword_1E83B8, CAFDefrost_ptr);
      v10[4] = &off_1D9C90;
      *v10 = v9;
      goto LABEL_6;
    }
  }

  sub_6F884();
LABEL_6:

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_6E3B8()
{
  sub_D2DC();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_169E44();
  sub_4BEE0(v3);
  v1[5] = v4;
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_6E468);
}

uint64_t sub_6E468()
{
  v1 = [*(v0 + 24) positionManager];
  if (v1)
  {
    v2 = v1;
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    v5 = *(v0 + 32);
    v6 = sub_6F898();
    v7(v6);
    v8 = swift_task_alloc();
    *(v8 + 16) = v3;
    sub_15A218(sub_6F848, v8);

    (*(v4 + 8))(v3, v5);
    if (sub_11B48C())
    {
      sub_6F8AC();
      v9 = sub_16AD04();
      v10 = *(v0 + 16);

      v10[3] = sub_16484(0, &qword_1E83B8, CAFDefrost_ptr);
      v10[4] = &off_1D9C90;
      *v10 = v9;
      goto LABEL_6;
    }
  }

  sub_6F884();
LABEL_6:

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_6E5EC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_6E600()
{
  sub_D2DC();
  if ([*(v0 + 24) tire])
  {
    v1 = sub_16484(0, &qword_1E83B0, CAFTire_ptr);
    v2 = &off_1DA980;
  }

  else
  {
    sub_6F874();
  }

  sub_6F858(v1, v2);

  return v3();
}

uint64_t sub_6E698(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_6E6AC()
{
  sub_D2DC();
  if ([*(v0 + 24) closure])
  {
    v1 = sub_16484(0, &qword_1E83A8, CAFClosure_ptr);
    v2 = &off_1DA350;
  }

  else
  {
    sub_6F874();
  }

  sub_6F858(v1, v2);

  return v3();
}

uint64_t sub_6E758()
{
  sub_D2DC();
  v1 = [*(v0 + 16) climate];
  if (v1 && sub_6F7D0(v1))
  {
    sub_1334F4();
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  sub_30AEC();

  return v4(v3);
}

uint64_t sub_6E7F0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_6E804()
{
  sub_D2DC();
  if ([*(v0 + 24) tripComputer])
  {
    v1 = sub_16484(0, &qword_1E83A0, CAFTripComputer_ptr);
    v2 = &off_1D48C8;
  }

  else
  {
    sub_6F874();
  }

  sub_6F858(v1, v2);

  return v3();
}

uint64_t sub_6E89C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_6E8B0()
{
  sub_D2DC();
  if ([*(v0 + 24) media])
  {
    v1 = sub_16484(0, &qword_1E8398, CAFMedia_ptr);
    v2 = &off_1D4C18;
  }

  else
  {
    sub_6F874();
  }

  sub_6F858(v1, v2);

  return v3();
}

uint64_t sub_6E948(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_6E95C()
{
  sub_D2DC();
  v1 = [*(v0 + 24) nowPlayingInformation];
  if (v1)
  {
    v2 = v1;
    [v1 nowPlaying];

    v3 = sub_16484(0, &qword_1E8380, CAFNowPlaying_ptr);
    v4 = &off_1D6708;
  }

  else
  {
    sub_6F874();
  }

  sub_6F858(v3, v4);

  return v5();
}

uint64_t sub_6EA14(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_6EA28()
{
  sub_D2DC();
  if ([*(v0 + 24) climate])
  {
    v1 = sub_16484(0, &qword_1E8390, CAFClimate_ptr);
    v2 = &off_1DA8F0;
  }

  else
  {
    sub_6F874();
  }

  sub_6F858(v1, v2);

  return v3();
}

uint64_t sub_6EAD4()
{
  sub_D2DC();
  v1 = [*(v0 + 16) internalCombustionEngine];
  if (v1 || (v1 = [*(v0 + 16) fuel]) != 0)
  {
  }

  sub_30AEC();

  return v2();
}

uint64_t sub_6EB70(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_6EB84()
{
  sub_D2DC();
  if ([*(v0 + 24) audioSettings])
  {
    v1 = sub_16484(0, &qword_1E8388, CAFAudioSettings_ptr);
    v2 = &off_1D5150;
  }

  else
  {
    sub_6F874();
  }

  sub_6F858(v1, v2);

  return v3();
}

id sub_6EC1C(char a1)
{
  v1 = sub_6EDA0(a1);
  if (v1)
  {
    v2 = v1;
    v3 = [v1 receivedAllValues];
  }

  else
  {
    sub_16ACF4(93);
    v7._countAndFlagsBits = 0xD000000000000038;
    v7._object = 0x8000000000184AA0;
    sub_16A744(v7);
    sub_16AD84();
    v8._countAndFlagsBits = 0xD000000000000023;
    v8._object = 0x8000000000184AE0;
    sub_16A744(v8);
    if (qword_1E58E8 != -1)
    {
      swift_once();
    }

    v4 = sub_16A584();
    sub_9DA0(v4, qword_1E65C0);
    v5 = sub_16A9A4();
    sub_386D8(v5, 0x400000uLL, 0xD000000000000084, 0x80000000001849F0, 0xD000000000000014, 0x8000000000184A80, 65, 0, 0xE000000000000000);

    return &dword_0 + 1;
  }

  return v3;
}

id sub_6EDA0(char a1)
{
  v2 = &selRef_media;
  result = 0;
  switch(a1)
  {
    case 1:
    case 2:
      v2 = &selRef_climate;
      return [v1 *v2];
    case 3:
      v2 = &selRef_tire;
      return [v1 *v2];
    case 4:
      v2 = &selRef_tripComputer;
      return [v1 *v2];
    case 5:
      v2 = &selRef_closure;
      return [v1 *v2];
    case 6:
      v2 = &selRef_audioSettings;
      return [v1 *v2];
    case 7:
      v2 = &selRef_nowPlayingInformation;
      return [v1 *v2];
    case 8:
      return result;
    default:
      return [v1 *v2];
  }
}

uint64_t sub_6EE64()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_6F850;

  return sub_6E184();
}

uint64_t sub_6EF00()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_6F850;

  return sub_6E3B8();
}

uint64_t sub_6EF9C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_6F02C;

  return sub_6E744();
}

uint64_t sub_6F02C()
{
  sub_D2DC();
  v3 = v2;
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

uint64_t sub_6F11C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_6F850;

  return sub_6E5EC(a1);
}

uint64_t sub_6F1B8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_6F850;

  return sub_6E698(a1);
}

uint64_t sub_6F254(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_6F850;

  return sub_6E7F0(a1);
}

uint64_t sub_6F2F0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_6F850;

  return sub_6E89C(a1);
}

uint64_t sub_6F38C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_6F428;

  return sub_6EA14(a1);
}

uint64_t sub_6F428()
{
  sub_D2DC();
  v1 = *v0;
  sub_D254();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_6F510()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_6F5A0;

  return sub_6EAC0();
}

uint64_t sub_6F5A0()
{
  sub_D2DC();
  v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;

  sub_30AEC();
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

uint64_t sub_6F698(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_6F850;

  return sub_6EB70(a1);
}

uint64_t sub_6F734(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_6F850;

  return sub_6E948(a1);
}

uint64_t sub_6F7D0(void *a1)
{
  v2 = [a1 defrosts];

  if (!v2)
  {
    return 0;
  }

  sub_16484(0, &qword_1E83B8, CAFDefrost_ptr);
  v3 = sub_16A7D4();

  return v3;
}

uint64_t sub_6F858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v3 + 16);
  *v4 = v2;
  v4[3] = a1;
  v4[4] = a2;
  return v3 + 8;
}

void sub_6F874()
{
  v1 = *(v0 + 16);
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
}

double sub_6F884()
{
  v1 = *(v0 + 16);
  *(v1 + 32) = 0;
  result = 0.0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  return result;
}

uint64_t sub_6F8AC()
{

  return sub_1487EC();
}

uint64_t sub_6F8D4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_6F914(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_6F978()
{
  sub_D2DC();
  v1[45] = v2;
  v1[46] = v0;
  v1[47] = type metadata accessor for CarCommandsError(0);
  v1[48] = swift_task_alloc();
  sub_10B4C();

  return _swift_task_switch(v3);
}

uint64_t sub_6FA04()
{
  sub_10824(*(v0 + 360), v0 + 56);
  sub_5758(&qword_1E5F90, &qword_170270);
  sub_5758(&qword_1E83C0, &qword_1703E8);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 368);
    sub_D124((v0 + 96), v0 + 16);
    sub_D084((v1 + 8), *(v1 + 32));
    v2 = swift_task_alloc();
    *(v0 + 392) = v2;
    *v2 = v0;
    v2[1] = sub_6FD54;

    return sub_13AB58(v0 + 136, 1);
  }

  else
  {
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0;
    sub_D188(v0 + 96, &qword_1E83C8, &unk_1703F0);
    sub_16ACF4(35);
    *(v0 + 328) = 0;
    *(v0 + 336) = 0xE000000000000000;
    v18._countAndFlagsBits = 0xD000000000000021;
    v18._object = 0x8000000000184BD0;
    sub_16A744(v18);
    sub_16AD84();
    v4 = *(v0 + 328);
    v5 = *(v0 + 336);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v6 = *(v0 + 384);
    v7 = sub_16A584();
    sub_9DA0(v7, qword_1E65C0);
    sub_16A9A4();
    sub_71930();
    sub_386D8(v8, v9, v10, v11, v12, v13, 19, v4, v5);

    sub_16ACF4(64);
    *(v0 + 344) = 0;
    *(v0 + 352) = 0xE000000000000000;
    v19._countAndFlagsBits = 0xD000000000000016;
    v19._object = 0x8000000000184C00;
    sub_16A744(v19);
    sub_16AD84();
    v20._countAndFlagsBits = 0xD000000000000028;
    v20._object = 0x8000000000184C20;
    sub_16A744(v20);
    v14 = *(v0 + 352);
    *v6 = *(v0 + 344);
    v6[1] = v14;
    swift_storeEnumTagMultiPayload();
    sub_11D28();
    swift_allocError();
    sub_548D0(v6, v15);
    swift_willThrow();
    sub_5A09C(v6);

    sub_D37C();

    return v16();
  }
}

uint64_t sub_6FD54()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 400) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_6FE4C()
{
  v1 = v0[20];
  v2 = v0[21];
  sub_D084(v0 + 17, v1);
  sub_61494();
  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[51] = v4;
  *v4 = v0;
  v4[1] = sub_6FF74;

  return (v6)(v0 + 27, v1, v2);
}

uint64_t sub_6FF74()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 416) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_7006C()
{
  sub_D2DC();
  sub_D13C((v0 + 16));

  sub_D37C();

  return v1();
}

uint64_t sub_700D0()
{
  if (!*(v0 + 240))
  {
    sub_D188(v0 + 216, &qword_1E83D0, &qword_174EE0);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    sub_7194C();
    v17 = *(v0 + 368);
    v18 = sub_16A584();
    sub_9DA0(v18, qword_1E65C0);
    sub_16A9A4();
    sub_71904();
    sub_71930();
    sub_386D8(v19, v20, v21, v22, v23, v24, 27, v25, v30);
    sub_3024C(&unk_179C48);
    v31 = v26;
    v14 = *v17;
    v15 = swift_task_alloc();
    *(v0 + 456) = v15;
    *v15 = v0;
    v16 = sub_7065C;
    goto LABEL_9;
  }

  sub_D124((v0 + 216), v0 + 176);
  sub_D084((v0 + 16), *(v0 + 40));
  v1 = sub_37740();
  v3 = v2(v1);
  if (v3 == 2)
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    sub_7194C();
    v4 = *(v0 + 368);
    v5 = sub_16A584();
    sub_9DA0(v5, qword_1E65C0);
    sub_16A9A4();
    sub_71904();
    sub_71930();
    sub_386D8(v6, v7, v8, v9, v10, v11, 35, v12, v30);
    sub_3024C(&unk_174EF0);
    v31 = v13;
    v14 = *v4;
    v15 = swift_task_alloc();
    *(v0 + 440) = v15;
    *v15 = v0;
    v16 = sub_70500;
LABEL_9:
    v15[1] = v16;

    return v31(v14);
  }

  v28 = v3;
  v29 = swift_task_alloc();
  *(v0 + 424) = v29;
  *v29 = v0;
  v29[1] = sub_703A4;

  return sub_70940(v28 & 1, v0 + 176);
}

uint64_t sub_703A4()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[32] = v1;
  v2[33] = v4;
  v2[34] = v0;
  sub_71940();
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v7 + 432) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_704A0()
{
  sub_D2DC();
  sub_D13C((v0 + 176));
  sub_718A0();
  v1 = sub_302B8();

  return v2(v1);
}

uint64_t sub_70500()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[35] = v1;
  v2[36] = v4;
  v2[37] = v0;
  sub_71940();
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v7 + 448) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_705FC()
{
  sub_D2DC();
  sub_D13C((v0 + 176));
  sub_718A0();
  v1 = sub_302B8();

  return v2(v1);
}

uint64_t sub_7065C()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[38] = v1;
  v2[39] = v4;
  v2[40] = v0;
  sub_71940();
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v7 + 464) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_70758()
{
  sub_D2DC();
  sub_718A0();
  v0 = sub_302B8();

  return v1(v0);
}

uint64_t sub_707B0()
{
  sub_D2DC();
  sub_718D8();

  sub_D37C();

  return v0();
}

uint64_t sub_70810()
{
  sub_D2DC();
  sub_718D8();

  sub_D37C();

  return v0();
}

uint64_t sub_70870()
{
  sub_D2DC();
  sub_D13C((v0 + 176));
  sub_718D8();

  sub_D37C();

  return v1();
}

uint64_t sub_708D8()
{
  sub_D2DC();
  sub_D13C((v0 + 176));
  sub_718D8();

  sub_D37C();

  return v1();
}

uint64_t sub_70940(char a1, uint64_t a2)
{
  *(v3 + 216) = a2;
  *(v3 + 224) = v2;
  *(v3 + 312) = a1;
  sub_16A164();
  *(v3 + 232) = swift_task_alloc();

  return _swift_task_switch(sub_709D4);
}

uint64_t sub_709D4()
{
  sub_D084(*(v0 + 216), *(*(v0 + 216) + 24));
  v1 = sub_37740();
  v2(v1);
  if (*(v0 + 152))
  {
    sub_D124((v0 + 128), v0 + 88);
    sub_D084((v0 + 88), *(v0 + 112));
    sub_71920();
    sub_61494();
    v11 = (v3 + *v3);
    v4 = swift_task_alloc();
    *(v0 + 240) = v4;
    *v4 = v0;
    v4[1] = sub_70C18;
    v5 = sub_37740();
  }

  else
  {
    sub_D188(v0 + 128, &qword_1E83D8, &qword_170408);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    sub_7194C();
    v7 = sub_16A584();
    sub_9DA0(v7, qword_1E65C0);
    v8 = sub_16A9A4();
    sub_71864(v8);
    sub_3024C(&unk_179C48);
    v11 = v9;
    v10 = swift_task_alloc();
    *(v0 + 304) = v10;
    *v10 = v0;
    v5 = sub_71838(v10);
  }

  return v11(v5);
}

uint64_t sub_70C18()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 313) = v3;

  sub_10B4C();

  return _swift_task_switch(v4);
}

uint64_t sub_70D04()
{
  if (*(v0 + 313) != 1)
  {
    sub_D13C((v0 + 88));
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    sub_7194C();
    v17 = sub_16A584();
    sub_9DA0(v17, qword_1E65C0);
    v18 = sub_16A9A4();
    sub_71864(v18);
    sub_3024C(&unk_179C48);
    v25 = v19;
    v20 = swift_task_alloc();
    *(v0 + 304) = v20;
    *v20 = v0;
    v21 = sub_71838(v20);

    return v25(v21);
  }

  v1 = *(v0 + 224);
  v2 = sub_D084((v1 + 48), *(v1 + 72));
  sub_5758(&qword_1E83E0, &unk_170410);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_16D9A0;
  v4 = *(v0 + 112);
  v5 = *(v0 + 120);
  v6 = sub_D084((v0 + 88), v4);
  *(inited + 56) = v4;
  *(inited + 64) = *(*(v5 + 8) + 8);
  v7 = sub_10888((inited + 32));
  v8.n128_f64[0] = (*(*(v4 - 8) + 16))(v7, v6, v4);
  v9 = sub_948E4(inited, *v2, v8);
  swift_setDeallocating();
  sub_EFFF4();
  v10 = v9[2];

  if (!v10)
  {
    sub_D084((v1 + 48), *(v1 + 72));
    sub_71920();
    sub_61494();
    v25 = (v22 + *v22);
    v23 = swift_task_alloc();
    *(v0 + 288) = v23;
    *v23 = v0;
    v23[1] = sub_713EC;
    v21 = sub_37740();

    return v25(v21);
  }

  v11 = *(v0 + 112);
  v12 = *(v0 + 120);
  sub_D084((v0 + 88), v11);
  sub_71920();
  sub_61494();
  v24 = (v13 + *v13);
  v14 = swift_task_alloc();
  *(v0 + 248) = v14;
  *v14 = v0;
  v15 = sub_71958(v14);

  return v24(v15, v11, v12);
}

uint64_t sub_710D0()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 256) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_711C8()
{
  sub_D2DC();
  type metadata accessor for CarCommandsSetCarPlayFanSettingsCATsSimple(0);
  sub_16A154();
  *(v0 + 264) = sub_16A0F4();
  v1 = swift_task_alloc();
  *(v0 + 272) = v1;
  *v1 = v0;
  v2 = sub_71958(v1);

  return sub_126A4C(v2);
}

uint64_t sub_7127C()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  v2[21] = v1;
  v2[22] = v4;
  v2[23] = v0;
  sub_71940();
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  v3[35] = v0;

  if (!v0)
  {
  }

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_71388()
{
  sub_D2DC();
  sub_D13C((v0 + 88));

  v1 = sub_302B8();

  return v2(v1);
}

uint64_t sub_713EC()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[24] = v1;
  v2[25] = v4;
  v2[26] = v0;
  sub_71940();
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v7 + 296) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_714E8()
{
  sub_D2DC();
  sub_D13C((v0 + 88));

  v1 = sub_302B8();

  return v2(v1);
}

uint64_t sub_7154C(uint64_t a1)
{
  v4 = *v2;
  sub_D254();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v1)
  {
    v6 = a1;
  }

  return v7(v6);
}

uint64_t sub_71670()
{
  sub_D2DC();
  sub_D13C((v0 + 88));

  sub_D37C();

  return v1();
}

uint64_t sub_716D4()
{
  sub_D2DC();
  sub_D13C((v0 + 88));

  sub_D37C();

  return v1();
}

uint64_t sub_71738()
{
  sub_D2DC();

  sub_D13C((v0 + 88));

  sub_D37C();

  return v1();
}

uint64_t sub_717A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_3E08C;

  return sub_6F978();
}

void sub_71864(os_log_type_t a1)
{

  sub_386D8(a1, 0x4000000uLL, 0xD000000000000090, v3 | 0x8000000000000000, 0xD00000000000001FLL, (v2 | 0x8000000000000000), 44, 0xD000000000000027, v1);
}

uint64_t sub_718A0()
{
  sub_D13C((v0 + 136));
  sub_D13C((v0 + 16));
}

uint64_t sub_718D8()
{
  sub_D13C((v0 + 136));

  return sub_D13C((v0 + 16));
}

uint64_t sub_71970(uint64_t a1, uint64_t a2)
{
  v2 = sub_169E44();
  sub_9F48();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_169E54();
  v8 = sub_169E34();
  (*(v4 + 8))(v7, v2);
  return v8 & 1;
}

uint64_t sub_71A58()
{
  v0 = sub_169E44();
  sub_9F48();
  v2 = v1;
  v4 = __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  sub_169E54();
  (*(v2 + 104))(v6, enum case for CAUVehicleLayoutKey.End.front(_:), v0);
  v9 = sub_169E34();
  v10 = *(v2 + 8);
  v10(v6, v0);
  v10(v8, v0);
  return v9 & 1;
}

void sub_71B88(uint64_t a1)
{
  v27 = sub_169E84();
  sub_9F48();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    v29 = _swiftEmptyArrayStorage;
    sub_146878(0, v7, 0);
    v8 = v29;
    v10 = *(v3 + 16);
    v9 = v3 + 16;
    v11 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v25 = *(v9 + 56);
    v26 = v10;
    v24 = (v9 - 8);
    do
    {
      v12 = v27;
      v13 = v9;
      v26(v6, v11, v27);
      v14 = sub_169E74();
      v16 = v15;
      (*v24)(v6, v12);
      v29 = v8;
      v18 = v8[2];
      v17 = v8[3];
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        sub_146878(v17 > 1, v18 + 1, 1);
        v8 = v29;
      }

      v8[2] = v19;
      v20 = &v8[2 * v18];
      v20[4] = v14;
      v20[5] = v16;
      v11 += v25;
      --v7;
      v9 = v13;
    }

    while (v7);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
    v19 = _swiftEmptyArrayStorage[2];
  }

  v21 = 0;
  v29 = 0;
  v30 = 0xE000000000000000;
  for (i = (v8 + 5); ; i += 2)
  {
    if (v19 == v21)
    {

      return;
    }

    if (v21 >= v8[2])
    {
      break;
    }

    ++v21;
    v23 = *i;
    v28._countAndFlagsBits = *(i - 1);
    v28._object = v23;
    swift_bridgeObjectRetain_n();
    v31._countAndFlagsBits = 10;
    v31._object = 0xE100000000000000;
    sub_16A744(v31);
    sub_16A744(v28);
  }

  __break(1u);
}

id sub_71DC4()
{
  v1 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin37GetLockStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler;
  v2 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin37GetLockStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin37GetLockStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
  }

  else
  {
    if (qword_1E5908 != -1)
    {
      swift_once();
    }

    v5 = sub_DCF5C(v4);
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_71E60()
{
  sub_D2DC();
  v1[37] = v2;
  v1[38] = v0;
  v1[36] = v3;
  sub_5758(&qword_1E6300, &qword_16ECE0);
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = type metadata accessor for LockStatusParameters(0);
  v1[42] = swift_task_alloc();
  sub_10B4C();

  return _swift_task_switch(v4);
}

uint64_t sub_71F34()
{
  v45 = v0;
  sub_10824(v0[38] + 16, (v0 + 2));
  sub_D084(v0 + 2, v0[5]);
  sub_5758(&qword_1E8630, &qword_170588);
  sub_169094();
  sub_D2604();

  sub_D13C(v0 + 2);
  v1 = 0x8000000000182560;
  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v2 = sub_16A584();
  sub_9DA0(v2, qword_1E65C0);
  v3 = sub_16A9A4();
  v0[31] = 0xD000000000000096;
  v0[32] = 0x8000000000184D60;
  v0[33] = 47;
  v0[34] = 0xE100000000000000;
  sub_D030();
  v4 = sub_16AB34();
  v5 = sub_15AE4(v4);
  v7 = v6;

  if (v7)
  {
    v46._countAndFlagsBits = 32;
    v46._object = 0xE100000000000000;
    sub_16A744(v46);
    v47._countAndFlagsBits = 0xD000000000000025;
    v47._object = 0x8000000000182560;
    sub_16A744(v47);
    v8 = v5;
    v1 = v7;
  }

  else
  {
    v8 = 0xD000000000000025;
  }

  v43 = v8;
  v44._countAndFlagsBits = 58;
  v44._object = 0xE100000000000000;
  v0[35] = 27;
  v48._countAndFlagsBits = sub_16AE24();
  sub_16A744(v48);

  sub_16A744(v44);

  v9._countAndFlagsBits = sub_378D0(0x82uLL);
  if (v9._object)
  {
    v44._countAndFlagsBits = 32;
    v44._object = 0xE100000000000000;
    sub_16A744(v9);

    v49._countAndFlagsBits = 32;
    v49._object = 0xE100000000000000;
    sub_16A744(v49);
  }

  v10 = sub_16A574();
  if (os_log_type_enabled(v10, v3))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v44._countAndFlagsBits = v12;
    *v11 = 136315138;
    v13 = sub_15BC8(v43, v1, &v44._countAndFlagsBits);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_0, v10, v3, "%s", v11, 0xCu);
    sub_D13C(v12);
  }

  else
  {
  }

  v14 = v0[38];
  v15 = sub_1690A4();
  v0[43] = v15;
  v16 = sub_169084();
  v0[44] = v16;
  [v16 code];
  swift_beginAccess();
  sub_D084((v14 + 136), *(v14 + 160));
  if (sub_11B5C0())
  {
    sub_169094();
    sub_16A1B4();
    v18 = v17;

    v0[45] = v18;
    if (!v18)
    {
      goto LABEL_15;
    }

    if (sub_16AA24() == 2)
    {

LABEL_15:
      type metadata accessor for CarCommandsError(0);
      sub_73594(&qword_1E92F0, type metadata accessor for CarCommandsError, &unk_17A85C);
      swift_allocError();
      *v19 = 0xD00000000000002DLL;
      v19[1] = 0x8000000000182590;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      sub_D37C();
      sub_D2C0();

      __asm { BRAA            X1, X16 }
    }

    v40 = v0[38];
    type metadata accessor for LockStatusSnippetFactory();
    v0[46] = [v15 carName];
    swift_beginAccess();
    sub_10824(v40 + 184, (v0 + 17));
    v41 = swift_task_alloc();
    v0[47] = v41;
    *v41 = v0;
    v41[1] = sub_7261C;
    sub_D2C0();

    return sub_7C7C4();
  }

  else
  {
    v22 = [v15 carName];
    if (v22)
    {
      v23 = v22;
      sub_99C94();

      v24 = 0;
    }

    else
    {
      v24 = 1;
    }

    v25 = v0[40];
    v26 = sub_16A0C4();
    v27 = 1;
    sub_5370(v25, v24, 1, v26);
    v28 = sub_16AA24();
    sub_169094();
    sub_16A1B4();
    v30 = v29;

    if (v30)
    {
      sub_16A6E4();

      v27 = 0;
    }

    v32 = v0[41];
    v31 = v0[42];
    v34 = v0[39];
    v33 = v0[40];
    v35 = v0[38];
    sub_5370(v34, v27, 1, v26);
    sub_16304(v33, v31);
    *(v31 + *(v32 + 20)) = v28 & 1;
    sub_16304(v34, v31 + *(v32 + 24));
    sub_D084((v35 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin37GetLockStatusHandleIntentFlowStrategy_commonPatterns), *(v35 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin37GetLockStatusHandleIntentFlowStrategy_commonPatterns + 24));
    v36 = swift_task_alloc();
    v0[49] = v36;
    *v36 = v0;
    v36[1] = sub_727EC;
    sub_D2C0();

    return sub_156B98(v37);
  }
}

uint64_t sub_7261C()
{
  v2 = *v1;
  v3 = *v1;
  sub_D254();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 384) = v0;

  v5 = *(v2 + 368);
  sub_D13C((v3 + 136));

  sub_10B4C();

  return _swift_task_switch(v6);
}

uint64_t sub_72770()
{
  sub_D2DC();
  v1 = *(v0 + 344);

  sub_D37C();

  return v2();
}

uint64_t sub_727EC()
{
  sub_D2DC();
  sub_D358();
  *(v2 + 400) = v1;
  *(v2 + 408) = v0;

  sub_10B4C();

  return _swift_task_switch(v3);
}

uint64_t sub_728F4()
{
  sub_D2DC();
  v1 = *(v0 + 304);
  swift_beginAccess();
  sub_10824(v1 + 184, v0 + 96);
  v2 = swift_task_alloc();
  *(v0 + 416) = v2;
  *v2 = v0;
  v2[1] = sub_729B0;

  return sub_11A570();
}

uint64_t sub_729B0()
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

uint64_t sub_72AB8()
{
  sub_1696C();
  v1 = *(v0 + 344);
  v2 = *(v0 + 336);

  sub_73538(v2);

  sub_D37C();

  return v3();
}

uint64_t sub_72B48()
{
  sub_1696C();
  v1 = *(v0 + 400);
  v2 = *(v0 + 344);
  v3 = *(v0 + 336);
  v4 = *(v0 + 288);

  sub_73538(v3);
  sub_D250((v0 + 56), v4);

  sub_D37C();

  return v5();
}

uint64_t sub_72BF0()
{
  sub_1696C();
  v1 = *(v0 + 344);

  sub_D37C();

  return v2();
}

uint64_t sub_72C74()
{
  sub_1696C();
  v1 = *(v0 + 400);
  v2 = *(v0 + 344);
  v3 = *(v0 + 336);

  sub_73538(v3);

  sub_D37C();

  return v4();
}

void sub_72D0C()
{
  sub_D13C((v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin37GetLockStatusHandleIntentFlowStrategy_commonPatterns));
  v1 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin37GetLockStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
}

void *sub_72D4C()
{
  v0 = sub_3D044();
  sub_D13C((v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin37GetLockStatusHandleIntentFlowStrategy_commonPatterns));

  return v0;
}

uint64_t sub_72D94()
{
  v0 = sub_72D4C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for GetLockStatusHandleIntentFlowStrategy(uint64_t a1)
{
  result = qword_1E8418;
  if (!qword_1E8418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_72E88(uint64_t a1)
{
  result = sub_73594(&qword_1E8628, type metadata accessor for GetLockStatusHandleIntentFlowStrategy, &unk_1704A8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_72EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  LockStatusHandleIntentFlowStrategy = type metadata accessor for GetLockStatusHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(a1, a2, LockStatusHandleIntentFlowStrategy, a4);
}

uint64_t sub_72FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  LockStatusHandleIntentFlowStrategy = type metadata accessor for GetLockStatusHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, LockStatusHandleIntentFlowStrategy, a4);
}

uint64_t sub_73070()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10A9C;

  return sub_4B5DC();
}

uint64_t sub_73130()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10A9C;

  return sub_71E60();
}

uint64_t sub_731DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  LockStatusHandleIntentFlowStrategy = type metadata accessor for GetLockStatusHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, LockStatusHandleIntentFlowStrategy, a4);
}

uint64_t sub_732A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  LockStatusHandleIntentFlowStrategy = type metadata accessor for GetLockStatusHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, LockStatusHandleIntentFlowStrategy, a4);
}

uint64_t sub_7336C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  LockStatusHandleIntentFlowStrategy = type metadata accessor for GetLockStatusHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_1039C;

  return HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:)(a1, a2, LockStatusHandleIntentFlowStrategy, a4);
}

uint64_t sub_73434()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_36648;

  return sub_449F4();
}

uint64_t sub_73538(uint64_t a1)
{
  v2 = type metadata accessor for LockStatusParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_73594(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_735DC()
{
  sub_D13C((v0 + 16));
  sub_D13C((v0 + 56));
  sub_D188(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin20BasicOutputFlowClass_input, &qword_1E6F70, &qword_16EE30);
  return v0;
}

uint64_t sub_73624(uint64_t a1)
{
  v3 = sub_5758(&qword_1E6F70, &qword_16EE30);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_1693A4();
  (*(*(v6 - 8) + 16))(v5, a1, v6);
  sub_5370(v5, 0, 1, v6);
  v7 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin20BasicOutputFlowClass_input;
  swift_beginAccess();
  sub_4DBA0(v5, v1 + v7);
  swift_endAccess();
  return 1;
}

uint64_t sub_73728(uint64_t a1, uint64_t a2)
{
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v2 = sub_16A584();
  sub_9DA0(v2, qword_1E65C0);
  v3 = sub_16A9A4();
  sub_386D8(v3, 2uLL, 0xD000000000000075, 0x8000000000184E40, 0xD000000000000014, 0x8000000000182830, 37, 0xD000000000000049, 0x8000000000184F20);
  type metadata accessor for BasicOutputFlowClass(0);
  sub_74538();
  return sub_168934();
}

uint64_t sub_73834()
{
  sub_D2DC();
  v1[29] = v2;
  v1[30] = v0;
  sub_5758(&qword_1E6F70, &qword_16EE30);
  v1[31] = swift_task_alloc();
  v3 = sub_1693A4();
  v1[32] = v3;
  v1[33] = *(v3 - 8);
  v1[34] = swift_task_alloc();

  return _swift_task_switch(sub_73928);
}

uint64_t sub_73928()
{
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 240);
  v4 = sub_16A584();
  *(v0 + 280) = sub_9DA0(v4, qword_1E65C0);
  sub_16A9A4();
  sub_74590();
  sub_386D8(v5, v6, v7, v8, v9, v10, 42, v11, 0x8000000000184EC0);
  v12 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin20BasicOutputFlowClass_input;
  swift_beginAccess();
  sub_4DA70(v3 + v12, v2);
  if (sub_9E2C(v2, 1, v1) == 1)
  {
    sub_D188(*(v0 + 248), &qword_1E6F70, &qword_16EE30);
    sub_16A9A4();
    sub_74590();
    sub_386D8(v13, v14, v15, v16, v17, v18, 45, v19, 0xEE00646E756F6620);
    sub_168D54();
LABEL_10:

    sub_D37C();

    return v36();
  }

  v20 = *(v0 + 240);
  (*(*(v0 + 264) + 32))(*(v0 + 272), *(v0 + 248), *(v0 + 256));
  *(v0 + 216) = v20;
  type metadata accessor for BasicOutputFlowClass(0);

  sub_5758(&qword_1E8758, &qword_170688);
  if (!swift_dynamicCast())
  {
    v27 = *(v0 + 264);
    v26 = *(v0 + 272);
    v28 = *(v0 + 256);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    sub_D188(v0 + 56, &qword_1E8760, &unk_170690);
    sub_16A9A4();
    sub_74590();
    sub_386D8(v29, v30, v31, v32, v33, v34, 50, v35, 0x8000000000184EE0);
    sub_168D54();
    (*(v27 + 8))(v26, v28);
    goto LABEL_10;
  }

  sub_D124((v0 + 56), v0 + 16);
  v21 = *(v0 + 40);
  v22 = *(v0 + 48);
  sub_D084((v0 + 16), v21);
  v37 = (*(v22 + 8) + **(v22 + 8));
  v23 = swift_task_alloc();
  *(v0 + 288) = v23;
  *v23 = v0;
  v23[1] = sub_73CD8;
  v24 = *(v0 + 272);

  return v37(v0 + 96, v24, v21, v22);
}

uint64_t sub_73CD8()
{
  sub_D2DC();
  sub_D358();
  v2 = *v1;
  sub_D254();
  *v3 = v2;
  *(v4 + 296) = v0;

  if (v0)
  {
    v5 = sub_74038;
  }

  else
  {
    v5 = sub_73DDC;
  }

  return _swift_task_switch(v5);
}

uint64_t sub_73DDC()
{
  sub_10824(v0[30] + 56, (v0 + 17));
  sub_D084(v0 + 17, v0[20]);
  v1 = swift_task_alloc();
  v0[38] = v1;
  *v1 = v0;
  v1[1] = sub_73EA8;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 12);
}

uint64_t sub_73EA8()
{
  sub_D2DC();
  sub_D358();
  v2 = *v1;
  sub_D254();
  *v3 = v2;
  *(v4 + 312) = v0;

  if (v0)
  {
    v5 = sub_74144;
  }

  else
  {
    v5 = sub_73FAC;
  }

  return _swift_task_switch(v5);
}

uint64_t sub_73FAC()
{
  sub_D13C((v0 + 96));
  v1 = sub_D13C((v0 + 136));
  sub_7462C(v1);
  v2 = sub_745F4();
  v3(v2);
  sub_7466C();

  sub_D37C();

  return v4();
}

uint64_t sub_74038()
{
  v1 = *(v0 + 296);
  sub_74648();
  sub_7469C(v2, v3, v4, v5, v6, v7, v8, v9, v16, v17, v18, v19);
  sub_74604("Error making output: ");
  *(v0 + 224) = v1;
  sub_5758(&qword_1E6360, &qword_16E3B0);
  sub_16AD84();
  v10 = sub_16A9A4();
  sub_745B0(v10);

  sub_7462C(v11);
  v12 = sub_745F4();
  v13(v12);
  sub_7466C();

  sub_D37C();

  return v14();
}

uint64_t sub_74144()
{
  sub_D13C(v0 + 12);
  sub_D13C(v0 + 17);
  v1 = v0[39];
  sub_74648();
  sub_7469C(v2, v3, v4, v5, v6, v7, v8, v9, v16, v17, v18, v19);
  sub_74604("Error making output: ");
  v0[28] = v1;
  sub_5758(&qword_1E6360, &qword_16E3B0);
  sub_16AD84();
  v10 = sub_16A9A4();
  sub_745B0(v10);

  sub_7462C(v11);
  v12 = sub_745F4();
  v13(v12);
  sub_7466C();

  sub_D37C();

  return v14();
}

uint64_t sub_74260(__int128 *a1, __int128 *a2)
{
  v5 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin20BasicOutputFlowClass_input;
  v6 = sub_1693A4();
  sub_5370(v2 + v5, 1, 1, v6);
  sub_D124(a2, v2 + 56);
  sub_D124(a1, v2 + 16);
  return v2;
}

uint64_t sub_742CC()
{
  sub_735DC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for BasicOutputFlowClass(uint64_t a1)
{
  result = qword_1E8660;
  if (!qword_1E8660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_74378(uint64_t a1)
{
  sub_4D5E4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_74460()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1039C;

  return sub_73834();
}

uint64_t sub_744FC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for BasicOutputFlowClass(0);

  return Flow<>.exitValue.getter(v3, a2);
}

unint64_t sub_74538()
{
  result = qword_1E8768;
  if (!qword_1E8768)
  {
    type metadata accessor for BasicOutputFlowClass(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E8768);
  }

  return result;
}

void sub_745B0(os_log_type_t a1)
{

  sub_386D8(a1, 2uLL, v4 | 0x60, v3 | 0x8000000000000000, 0x2865747563657865, 0xE900000000000029, 58, v1, v2);
}

void sub_74604(uint64_t a1@<X8>)
{
  v2._countAndFlagsBits = 0xD000000000000015;

  v2._object = ((a1 - 32) | 0x8000000000000000);
  sub_16A744(v2);
}

uint64_t sub_7462C(uint64_t a1)
{

  return sub_168D54();
}

void sub_74648()
{

  sub_16ACF4(23);
}

uint64_t sub_7466C()
{
  sub_D13C((v0 + 16));
}

uint64_t SESetCarLockStatusIntentHandler.resolveCarName(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_746C4()
{
  sub_1696C();
  v1 = [*(v0 + 16) carName];
  *(v0 + 32) = v1;
  sub_3024C(&unk_16DB90);
  v5 = v2;
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_601B4;

  return v5(v1, 1);
}

uint64_t sub_747A8(void *a1, void *aBlock, void *a3)
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

  return SESetCarLockStatusIntentHandler.resolveCarName(for:)(v6);
}

uint64_t SESetCarLockStatusIntentHandler.confirm(intent:)(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return sub_D2B0();
}

uint64_t sub_74880()
{
  sub_1696C();
  v1 = [*(v0 + 40) carName];
  *(v0 + 56) = v1;
  sub_3024C(&unk_16DB88);
  v5 = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_74948;

  return v5(v1, 2, 0);
}

uint64_t sub_74948()
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

  return _swift_task_switch(sub_74A60);
}

uint64_t sub_74B1C(void *a1, void *aBlock, void *a3)
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

  return SESetCarLockStatusIntentHandler.confirm(intent:)(v6);
}

uint64_t SESetCarLockStatusIntentHandler.handle(intent:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_74BF4()
{
  v1 = sub_16AA14();
  if (v1 == 2)
  {
    if (qword_1E58E8 != -1)
    {
      swift_once();
    }

    v2 = sub_16A584();
    sub_9DA0(v2, qword_1E65C0);
    v3 = sub_16A9A4();
    sub_386D8(v3, 0x20040uLL, 0xD0000000000000B9, 0x8000000000184F70, 0x6928656C646E6168, 0xEF293A746E65746ELL, 40, 0xD000000000000016, 0x8000000000185030);
    [objc_allocWithZone(INSetCarLockStatusIntentResponse) initWithCode:4 userActivity:0];
    sub_30AEC();

    return v4();
  }

  else
  {
    v6 = v1;
    v7 = [*(v0 + 16) carName];
    *(v0 + 32) = v7;
    sub_3024C(&unk_16DB80);
    v10 = v8;
    v9 = swift_task_alloc();
    *(v0 + 40) = v9;
    *v9 = v0;
    v9[1] = sub_74DE4;

    return v10(v6 & 1, v7, 2);
  }
}

uint64_t sub_74DE4()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 32);
  v3 = *v0;
  sub_D254();
  *v4 = v3;
  *(v6 + 56) = v5;
  *(v6 + 48) = v7;

  return _swift_task_switch(sub_74EF4);
}

uint64_t sub_74FB0(void *a1, void *aBlock, void *a3)
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

  return SESetCarLockStatusIntentHandler.handle(intent:)(v6);
}

id SESetCarLockStatusIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SESetCarLockStatusIntentHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_75120()
{
  sub_1696C();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_120FC(v1);

  return v3(v2);
}

uint64_t sub_751B8()
{
  sub_1696C();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_120FC(v1);

  return v3(v2);
}

uint64_t sub_75250()
{
  sub_1696C();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_120FC(v1);

  return v3(v2);
}

uint64_t sub_752F0(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return sub_D2B0();
}

uint64_t sub_75308()
{
  v1 = *(v0 + 80);
  v2 = v1[5];
  v3 = v1[6];
  sub_D084(v1 + 2, v2);
  p_weak_ivar_lyt = &SetCarPlayClimateRCHFlowStrategy.weak_ivar_lyt;
  v11 = (*(v3 + 40))(v2, v3);
  v12 = "retrieveVehicleReport(carKeyPass:)";
  v13 = *(v0 + 72);
  v14 = v13[3];
  v15 = v13[4];
  sub_D084(v13, v14);
  v16 = (*(v15 + 40))(v14, v15);
  v5 = v16;
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = 0;
    v19 = (v16 + 40);
    while (v18 < *(v5 + 16))
    {
      if (*(v11 + 16))
      {
        v20 = *(v19 - 1);
        v15 = *v19;

        v21 = sub_146404(v20, v15);
        v23 = v22;

        if (v23)
        {
          v24 = *(v0 + 64);

          sub_10824(*(v11 + 56) + 40 * v21, v0 + 16);

          sub_D124((v0 + 16), v24);
          goto LABEL_4;
        }
      }

      ++v18;
      v19 += 2;
      if (v17 == v18)
      {

        p_weak_ivar_lyt = (&SetCarPlayClimateRCHFlowStrategy + 56);
        goto LABEL_2;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_2:
    v5 = "onServiceHelper";
    v11 = "l that request is completed";
    v15 = 0x8000000000185840;
    v12 = 0xD000000000000022;
    if (p_weak_ivar_lyt[285] == -1)
    {
      goto LABEL_3;
    }
  }

  sub_9ED4(&qword_1E58E8);
LABEL_3:
  v6 = *(v0 + 64);
  v7 = sub_16A584();
  v8 = sub_48154(v7, qword_1E65C0);
  sub_386D8(v8, 0x20000uLL, (v12 + 113), v5 | 0x8000000000000000, 0xD000000000000022, (v11 | 0x8000000000000000), 30, (v12 + 30), v15);
  *(v6 + 32) = 0;
  *v6 = 0u;
  *(v6 + 16) = 0u;
LABEL_4:
  sub_D37C();

  return v9();
}

uint64_t sub_7565C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  return sub_D2B0();
}

uint64_t sub_75678()
{
  v1 = *(v0 + 10);
  sub_16ACF4(65);
  *(v0 + 2) = 0;
  *(v0 + 3) = 0xE000000000000000;
  v44._countAndFlagsBits = 0xD00000000000003FLL;
  v44._object = 0x8000000000185730;
  sub_16A744(v44);
  v2 = v1[3];
  v3 = v1[4];
  sub_D084(v1, v2);
  v41 = *(v3 + 104);
  *(v0 + 7) = v41(v2, v3);
  *(v0 + 8) = v4;
  sub_5758(&qword_1E5FA0, &qword_172DD0);
  sub_16AD84();

  v5 = *(v0 + 2);
  v6 = *(v0 + 3);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v7 = sub_16A584();
  sub_48154(v7, qword_1E65C0);
  sub_76FE4();
  sub_386D8(v8, v9, v10, v11, v12, v13, 36, v5, v6);

  v14 = v41(v2, v3);
  if (v15)
  {
    v16 = v14;
    v17 = v15;
    v18 = *(v0 + 13);
    v42 = *(v0 + 12);
    v19 = *(v0 + 11);
    sub_16A9A4();
    sub_76FF4();
    sub_76FE4();
    sub_386D8(v20, v21, v22, v23, v24, v25, 41, v26, v40);
    v28 = v18[5];
    v27 = v18[6];
    sub_D084(v18 + 2, v28);
    (*(v27 + 48))(v19, v42, v16, v17, v28, v27);
    v29 = *(v0 + 9);

    sub_D124(v0 + 1, v29);
  }

  else
  {
    v30 = *(v0 + 9);
    sub_16A9A4();
    sub_76FF4();
    sub_76FE4();
    sub_386D8(v31, v32, v33, v34, v35, v36, 45, v37, v40);
    *(v30 + 32) = 0;
    *v30 = 0u;
    *(v30 + 16) = 0u;
  }

  sub_D37C();

  return v38();
}

uint64_t sub_75A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  return sub_D2B0();
}

uint64_t sub_75A34()
{
  v1 = v0[11];
  v2 = v1[5];
  v3 = v1[6];
  sub_D084(v1 + 2, v2);
  v7 = (*(v3 + 32) + **(v3 + 32));
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_75B64;
  v5 = v0[8];

  return v7(v5, v2, v3);
}

uint64_t sub_75B64(uint64_t a1)
{
  *(*v1 + 104) = a1;

  return _swift_task_switch(sub_75C64);
}

uint64_t sub_75C64()
{
  if (v0[13])
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v1 = sub_16A584();
    v2 = sub_48154(v1, qword_1E65C0);
    sub_386D8(v2, 0x20000uLL, 0xD000000000000093, 0x80000000001851F0, 0xD00000000000002FLL, 0x8000000000185600, 58, 0xD000000000000062, 0x8000000000185690);
LABEL_5:
    v3 = sub_3CC14();
    sub_77030(&type metadata for DigitalCarKeyError, v3);
    *v4 = xmmword_16E2A0;
    swift_willThrow();

    sub_76DD4(v0[8]);
    sub_D37C();
    goto LABEL_13;
  }

  sub_76D64(v0[8], (v0 + 2));
  v6 = v0[5];
  if (v6)
  {
    v8 = v0[9];
    v7 = v0[10];
    v9 = v0[6];
    sub_D084(v0 + 2, v0[5]);
    v10 = (*(v9 + 40))(v8, v7, v6, v9);
    sub_D13C(v0 + 2);
    if (v10)
    {
      sub_37474();
      sub_16ACF4(91);
      sub_77048();
      v11._countAndFlagsBits = 0xD000000000000059;
      sub_77054(v11, "eySessionAndActivateKey(keyID:)");
      v0[7] = v10;
      swift_errorRetain();
      sub_5758(qword_1EA220, &qword_1708D8);
      v18._countAndFlagsBits = sub_16A694();
      sub_16A744(v18);

      if (qword_1E58E8 != -1)
      {
        sub_9ED4(&qword_1E58E8);
      }

      v12 = sub_16A584();
      sub_9DA0(v12, qword_1E65C0);
      v13 = sub_16A9A4();
      sub_31008(v13, 0x20000uLL, 0xD000000000000093, 0x80000000001851F0, 0xD00000000000002FLL, 0x8000000000185600, 64, v14, v16);

      goto LABEL_5;
    }
  }

  else
  {
    sub_76DD4((v0 + 2));
  }

  sub_D37C();
LABEL_13:

  return v5();
}

uint64_t sub_75F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[6] = a6;
  v7[7] = v6;
  v7[4] = a3;
  v7[5] = a4;
  v7[2] = a1;
  v7[3] = a2;
  return sub_D2B0();
}

uint64_t sub_75F2C()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v7 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v4 = *(v0 + 16);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  *(v3 + 40) = v7;
  *(v3 + 56) = v1;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_76044;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD00000000000004CLL, 0x80000000001854F0, sub_76D54, v3, &type metadata for () + 8);
}

uint64_t sub_76044()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_76184;
  }

  else
  {

    v2 = sub_76160;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_76184()
{

  sub_D37C();

  return v0();
}

uint64_t sub_761E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a3;
  v26 = a4;
  v11 = sub_5758(&qword_1E88D0, &qword_1708D0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v23 - v13;
  sub_76D64(a2, v27);
  v15 = v28;
  if (!v28)
  {
    return sub_76DD4(v27);
  }

  v24 = a5;
  v16 = v29;
  v23[1] = sub_D084(v27, v28);
  v17 = a6;
  v18 = swift_allocObject();
  swift_weakInit();
  (*(v12 + 16))(v14, a1, v11);
  v19 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  (*(v12 + 32))(v20 + v19, v14, v11);
  v21 = *(v16 + 32);

  v21(v25, v26, v24, v17, sub_76F44, v20, v15, v16);

  return sub_D13C(v27);
}

void sub_763E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong() && (v6 = sub_766AC(a2), , !v6))
  {
    swift_beginAccess();
    if (swift_weakLoadStrong() && (v9 = sub_7687C(a1), , (v9 & 1) == 0))
    {
      if (qword_1E58E8 != -1)
      {
        swift_once();
      }

      v12 = sub_16A584();
      sub_9DA0(v12, qword_1E65C0);
      v13 = sub_16A9A4();
      sub_386D8(v13, 0x20000uLL, 0xD000000000000093, 0x80000000001851F0, 0xD00000000000004CLL, 0x80000000001854F0, 85, 0xD000000000000056, 0x8000000000185540);
      sub_5758(&qword_1E88D0, &qword_1708D0);
      sub_16A864();
    }

    else
    {
      if (qword_1E58E8 != -1)
      {
        swift_once();
      }

      v10 = sub_16A584();
      sub_9DA0(v10, qword_1E65C0);
      v11 = sub_16A9A4();
      sub_386D8(v11, 0x20000uLL, 0xD000000000000093, 0x80000000001851F0, 0xD00000000000004CLL, 0x80000000001854F0, 80, 0xD00000000000002DLL, 0x80000000001855A0);
    }
  }

  else
  {
    if (qword_1E58E8 != -1)
    {
      swift_once();
    }

    v7 = sub_16A584();
    sub_9DA0(v7, qword_1E65C0);
    v8 = sub_16A9A4();
    sub_386D8(v8, 0x20000uLL, 0xD000000000000093, 0x80000000001851F0, 0xD00000000000004CLL, 0x80000000001854F0, 75, 0xD00000000000002BLL, 0x80000000001855D0);
  }
}

BOOL sub_766AC(uint64_t a1)
{
  if (a1)
  {
    sub_37474();
    sub_16ACF4(51);
    sub_77048();
    v2._countAndFlagsBits = 0xD000000000000031;
    sub_77054(v2, "ing RKE command. Proceeding...");
    swift_errorRetain();
    sub_5758(qword_1EA220, &qword_1708D8);
    v23._countAndFlagsBits = sub_16A694();
    sub_16A744(v23);

    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v3 = sub_16A584();
    sub_9DA0(v3, qword_1E65C0);
    sub_16A9A4();
    sub_77014();
    sub_31008(v4, v5, v6, v7, v8, v9, 94, v10, v22);

    v11 = sub_3CC14();
    sub_77030(&type metadata for DigitalCarKeyError, v11);
    *v12 = xmmword_170840;
    sub_5758(&qword_1E88D0, &qword_1708D0);
    sub_16A854();
  }

  else
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v13 = sub_16A584();
    sub_48154(v13, qword_1E65C0);
    sub_77014();
    sub_386D8(v14, v15, v16, v17, v18, v19, 98, v20, 0x8000000000185480);
  }

  return a1 != 0;
}

uint64_t sub_7687C(void *a1)
{
  if (!a1)
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v21 = sub_16A584();
    sub_48154(v21, qword_1E65C0);
    sub_76FD4();
    sub_386D8(v22, v23, v24, v25, v26, v27, 104, v28, 0x80000000001852E0);
    v29 = sub_3CC14();
    sub_77030(&type metadata for DigitalCarKeyError, v29);
    *v30 = xmmword_170850;
    sub_5758(&qword_1E88D0, &qword_1708D0);
    sub_16A854();
    return 1;
  }

  sub_76D10();
  v2 = a1;
  isa = sub_16AAB4(19).super.super.isa;
  v4 = sub_16AAD4();

  if (v4)
  {
    sub_37474();
    sub_16ACF4(102);
    sub_77048();
    v5._countAndFlagsBits = 0xD000000000000064;
    sub_77054(v5, "urned. Proceeding...");
    v6 = [v2 description];
    v7 = sub_16A664();
    v9 = v8;

    v56._countAndFlagsBits = v7;
    v56._object = v9;
    sub_16A744(v56);

    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v10 = sub_16A584();
    sub_9DA0(v10, qword_1E65C0);
    sub_16A9A4();
    sub_76FD4();
    sub_31008(v11, v12, v13, v14, v15, v16, 110, v17, v55);

    v18 = sub_3CC14();
    sub_77030(&type metadata for DigitalCarKeyError, v18);
    v20 = xmmword_170860;
LABEL_17:
    *v19 = v20;
    sub_5758(&qword_1E88D0, &qword_1708D0);
    sub_16A854();

    return 1;
  }

  v2 = v2;
  v31 = sub_A5B98();
  if (v31 == 5 || !sub_E6624(v31, &off_1D1EE8))
  {
    sub_37474();
    sub_16ACF4(71);
    sub_77048();
    v41._countAndFlagsBits = 0xD000000000000045;
    sub_77054(v41, "on and ending session.");
    v42 = [v2 description];
    v43 = sub_16A664();
    v45 = v44;

    v57._countAndFlagsBits = v43;
    v57._object = v45;
    sub_16A744(v57);

    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v46 = sub_16A584();
    sub_9DA0(v46, qword_1E65C0);
    sub_16A9A4();
    sub_76FD4();
    sub_31008(v47, v48, v49, v50, v51, v52, 120, v53, v55);

    v54 = sub_3CC14();
    sub_77030(&type metadata for DigitalCarKeyError, v54);
    v20 = xmmword_170850;
    goto LABEL_17;
  }

  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v32 = sub_16A584();
  sub_48154(v32, qword_1E65C0);
  sub_76FD4();
  sub_386D8(v33, v34, v35, v36, v37, v38, 125, v39, 0x8000000000185390);

  return 0;
}

uint64_t sub_76CB4()
{
  sub_D13C((v0 + 16));

  return _swift_deallocClassInstance(v0, 56, 7);
}

unint64_t sub_76D10()
{
  result = qword_1E6310;
  if (!qword_1E6310)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1E6310);
  }

  return result;
}

uint64_t sub_76D64(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1EA210, &unk_1708E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_76DD4(uint64_t a1)
{
  v2 = sub_5758(&qword_1EA210, &unk_1708E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_76E3C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_76E74()
{
  v1 = sub_5758(&qword_1E88D0, &qword_1708D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_76F44(void *a1, uint64_t a2)
{
  v5 = *(sub_5758(&qword_1E88D0, &qword_1708D0) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  sub_763E8(a1, a2, v6, v7);
}

uint64_t sub_77030(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

void sub_77054(Swift::String a1@<X1:X0>, uint64_t a2@<X8>)
{

  a1._object = (a2 | 0x8000000000000000);
  sub_16A744(a1);
}

uint64_t sub_7706C(uint64_t result)
{
  if ((result * 60) >> 64 == (60 * result) >> 63)
  {
    sub_16A044();
    swift_allocObject();
    sub_16A034();
    sub_16A024();

    v1 = sub_16A014();

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_77100(uint64_t a1, uint64_t a2)
{
  v2 = sub_16AE64();

  if (v2 >= 0x27)
  {
    return 39;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_77154(char a1)
{
  result = 1935762529;
  switch(a1)
  {
    case 1:
      v3 = 1768191329;
      goto LABEL_4;
    case 2:
      result = 0x7563726943726961;
      break;
    case 3:
      result = 0x69646E6F43726961;
      break;
    case 4:
      result = 0x756F536F69647561;
      break;
    case 5:
      result = 0x79726574746162;
      break;
    case 6:
      result = 0x694C6472617A6168;
      break;
    case 7:
      result = 0x6E6769536E727574;
      break;
    case 8:
      result = 7496035;
      break;
    case 9:
      result = 0x436574616D696C63;
      break;
    case 10:
      result = 0x6F43657369757263;
      break;
    case 11:
      result = 0x6574736F72666564;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 7233894;
      break;
    case 14:
      result = 1818588518;
      break;
    case 15:
      result = 1685024616;
      break;
    case 16:
      result = 1852993384;
      break;
    case 17:
      result = 0xD000000000000013;
      break;
    case 18:
      result = 0x6E6F697461636F6CLL;
      break;
    case 19:
      result = 0x73746867696CLL;
      break;
    case 20:
      result = 0x616E65746E69616DLL;
      break;
    case 21:
      result = 0x73726F7272696DLL;
      break;
    case 22:
      result = 0x42676E696B726170;
      break;
    case 23:
      result = 0x6165537265776F70;
      break;
    case 24:
      result = 0x656C69666F7270;
      break;
    case 25:
      result = 0xD000000000000011;
      break;
    case 26:
      result = 1952540019;
      break;
    case 27:
      result = 0x6C6F6F4374616573;
      break;
    case 28:
      result = 0x7461654874616573;
      break;
    case 29:
      result = 0x7373614D74616573;
      break;
    case 30:
      result = 0x6C616E676973;
      break;
    case 31:
      result = 0x666F6F726E7573;
      break;
    case 32:
      result = 0x7365726974;
      break;
    case 33:
      result = 0x6B6E757274;
      break;
    case 34:
      result = 0x776F646E6977;
      break;
    case 35:
      result = 0x737265706977;
      break;
    case 36:
      result = 0x656C6553746E6576;
      break;
    case 37:
      v3 = 1769171318;
LABEL_4:
      result = v3 | 0x53656C6200000000;
      break;
    case 38:
      result = 0x656D756C6F76;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_77600@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_77100(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_77630@<X0>(uint64_t *a1@<X8>)
{
  result = sub_77154(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for CarCommandsNounNLv3Value(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDA)
  {
    if (a2 + 38 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 38) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 39;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x27;
  v5 = v6 - 39;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CarCommandsNounNLv3Value(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 38 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 38) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xD9)
  {
    v6 = ((a2 - 218) >> 8) + 1;
    *result = a2 + 38;
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
        JUMPOUT(0x777B0);
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
          *result = a2 + 38;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_777EC()
{
  result = qword_1E88D8;
  if (!qword_1E88D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E88D8);
  }

  return result;
}

uint64_t sub_77850(uint64_t a1, uint64_t a2)
{
  v4 = sub_779DC();
  v5 = sub_77A30();
  v6 = sub_77A84();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5, v6);
}

unint64_t sub_778C8()
{
  result = qword_1E88E0;
  if (!qword_1E88E0)
  {
    sub_37130(&qword_1E88E8, &qword_170940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E88E0);
  }

  return result;
}

unint64_t sub_77930()
{
  result = qword_1E88F0;
  if (!qword_1E88F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E88F0);
  }

  return result;
}

unint64_t sub_77988()
{
  result = qword_1E88F8;
  if (!qword_1E88F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E88F8);
  }

  return result;
}

unint64_t sub_779DC()
{
  result = qword_1E8900;
  if (!qword_1E8900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E8900);
  }

  return result;
}

unint64_t sub_77A30()
{
  result = qword_1E8908;
  if (!qword_1E8908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E8908);
  }

  return result;
}

unint64_t sub_77A84()
{
  result = qword_1E8910;
  if (!qword_1E8910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E8910);
  }

  return result;
}

uint64_t sub_77AD8@<X0>(uint64_t *a1@<X8>, unint64_t a2@<X0>)
{
  result = sub_77B28(a2);
  v4 = result;
  if (result)
  {
    result = sub_783F8();
    v5 = &off_1D5170;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

void *sub_77B28(unint64_t a1)
{
  v2 = v1;
  v4 = [v1 volumes];
  sub_783F8();
  sub_16A7D4();

  v5 = sub_11B48C();

  if (v5)
  {
    v6 = sub_78314(a1);
    v7 = [v2 volumes];
    v8 = sub_16A7D4();

    v9 = sub_11B48C();
    for (i = 0; v9 != i; ++i)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = sub_16AD04();
      }

      else
      {
        if (i >= *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_20;
        }

        v11 = *(v8 + 8 * i + 32);
      }

      v12 = v11;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if ([v11 volumeType] == v6)
      {

        return v12;
      }
    }

    sub_16ACF4(36);
    v18._countAndFlagsBits = 0xD000000000000022;
    v18._object = 0x8000000000185950;
    sub_16A744(v18);
    sub_16AD84();
    if (qword_1E58E8 != -1)
    {
      swift_once();
    }

    v15 = sub_16A584();
    sub_9DA0(v15, qword_1E65C0);
    v16 = sub_16A9A4();
    sub_386D8(v16, 0x400uLL, 0xD00000000000009BLL, 0x8000000000185890, 0xD000000000000017, 0x8000000000185930, 71, 0, 0xE000000000000000);
  }

  else
  {
    a1 = "given carKeyPass";
    v8 = "ings+CarAudioSettings.swift";
    v9 = 0x8000000000185980;
    if (qword_1E58E8 != -1)
    {
LABEL_21:
      swift_once();
    }

    v13 = sub_16A584();
    sub_9DA0(v13, qword_1E65C0);
    v14 = sub_16A9A4();
    sub_386D8(v14, 0x400uLL, 0xD00000000000009BLL, a1 | 0x8000000000000000, 0xD000000000000017, (v8 | 0x8000000000000000), 64, 0xD000000000000028, v9);
  }

  return 0;
}

void sub_77E4C(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = sub_77B28(a1);
  if (!v4)
  {
LABEL_6:
    sub_78470();
    return;
  }

  v32 = v4;
  v5 = sub_78088(v4);
  if ((v5 & 0x10000) == 0)
  {
    v6 = v5;
    [v32 setVolume:{sub_14BD28(a2, v5)}];
    sub_16ACF4(50);
    sub_7848C(v7, v8, &type metadata for VolumeType, v9, v10, v11, v12, v13, v28, v30, v32, *v35, *&v35[4], v3, v38, 0);
    v41._countAndFlagsBits = 0x73206C6576656C20;
    v41._object = 0xEE00206F74207465;
    sub_16A744(v41);
    [v33 volume];
    v42._countAndFlagsBits = sub_16AE24();
    sub_16A744(v42);

    v43._object = 0x80000000001859F0;
    v43._countAndFlagsBits = 0xD000000000000010;
    sub_16A744(v43);
    v44._countAndFlagsBits = sub_16AE24();
    sub_16A744(v44);

    v45._countAndFlagsBits = sub_7843C();
    sub_16A744(v45);
    sub_7848C(v14, v15, &type metadata for UInt8Range, v16, v17, v18, v19, v20, v29, v31, v33, v36, v37, v6, SHIBYTE(v6), v39);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v21 = sub_16A584();
    sub_9DA0(v21, qword_1E65C0);
    sub_16A9A4();
    sub_7845C();
    sub_386D8(v23, 0x400uLL, v24, v25, v22 + 6, 0x8000000000185A10, 25, v40, 0xE000000000000000);

    goto LABEL_6;
  }

  sub_78470();
}

uint64_t sub_78088(void *a1)
{
  v1 = [a1 volumeRange];
  v2 = [v1 minimumValue];
  v3 = [v1 maximumValue];

  return v2 | (v3 << 8);
}

void sub_780F8(unint64_t a1)
{
  v1 = a1;
  v2 = sub_77B28(a1);
  if (v2)
  {
    v3 = v2;
    v4 = sub_78088(v2);
    if ((v4 & 0x10000) != 0)
    {
    }

    else
    {
      v5 = v4;
      sub_14BDBC([v3 volume], v4);
      sub_16ACF4(53);
      sub_784AC(v6, v7, &type metadata for VolumeType, v8, v9, v10, v11, v12, v25, "s not have audio volumes", *v29, *&v29[4], v1, v32, 0);
      v35._countAndFlagsBits = 0xD000000000000011;
      v35._object = 0x80000000001859D0;
      sub_16A744(v35);
      v36._countAndFlagsBits = sub_16AE24();
      sub_16A744(v36);

      v37._object = 0x80000000001859F0;
      v37._countAndFlagsBits = 0xD000000000000010;
      sub_16A744(v37);
      v38._countAndFlagsBits = sub_16AE24();
      sub_16A744(v38);

      v39._countAndFlagsBits = sub_7843C();
      sub_16A744(v39);
      sub_784AC(v13, v14, &type metadata for UInt8Range, v15, v16, v17, v18, v19, v26, v27, v30, v31, v5, SHIBYTE(v5), v33);
      if (qword_1E58E8 != -1)
      {
        sub_9ED4(&qword_1E58E8);
      }

      v20 = sub_16A584();
      sub_9DA0(v20, qword_1E65C0);
      sub_16A9A4();
      sub_7845C();
      sub_386D8(v22, 0x400uLL, v23, v24, v21 + 5, (v28 | 0x8000000000000000), 39, v34, 0xE000000000000000);
    }
  }

  sub_78470();
}

unint64_t sub_783F8()
{
  result = qword_1E8918;
  if (!qword_1E8918)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1E8918);
  }

  return result;
}

uint64_t sub_7848C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{

  return sub_16AD84();
}

uint64_t sub_784AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{

  return sub_16AD84();
}

uint64_t sub_78698()
{
  sub_5758(&qword_1EA2B0, &qword_16DFB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_16D440;
  v1 = sub_168A44();
  sub_483C8(v1);
  *(v0 + 32) = sub_168A34();
  return v0;
}

uint64_t sub_78720()
{
  sub_D2DC();
  v0[2] = v1;
  v2 = sub_1693E4();
  v0[3] = v2;
  v0[4] = *(v2 - 8);
  v0[5] = swift_task_alloc();

  return _swift_task_switch(sub_787DC);
}

uint64_t sub_787DC()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_16484(0, &qword_1E89F8, INGetCarPowerLevelStatusIntent_ptr);
  v3 = *(v2 + 16);
  v4 = sub_30AF8();
  v3(v4);
  v5 = sub_D1B44(v1);
  if (v5)
  {
    v6 = v5;

    v7 = v0[1];

    return v7(v6);
  }

  else
  {
    v10 = v0[2];
    v9 = v0[3];
    type metadata accessor for CarCommandsError(0);
    sub_7A5E4(&qword_1E92F0, 255, type metadata accessor for CarCommandsError, &unk_17A85C);
    swift_allocError();
    (v3)(v11, v10, v9);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_78994()
{
  v0 = sub_16A164();
  __chkstk_darwin(v0 - 8);
  sub_A138();
  v88 = sub_5758(&qword_1E89F0, &qword_170C18);
  sub_37404();
  v85 = v1;
  v3 = __chkstk_darwin(v2);
  v84 = v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v89 = v83 - v5;
  v6 = sub_16484(0, &qword_1E89F8, INGetCarPowerLevelStatusIntent_ptr);
  v83[2] = sub_16484(0, &qword_1E8A00, INGetCarPowerLevelStatusIntentResponse_ptr);
  sub_168904();
  sub_1693F4();
  v7 = type metadata accessor for FeatureFlagHelper();
  v86 = v7;
  v8 = sub_7A728(v7);
  v9 = sub_168E34();
  sub_483C8(v9);
  sub_168E24();
  v87 = type metadata accessor for SnippetManager();
  *(sub_7A710(v87) + 16) = 0;
  v10 = sub_5758(&qword_1E8A08, &qword_170C20);
  v11 = sub_483C8(v10);
  v94 = v7;
  v95 = &off_1D9AF0;
  v93[0] = v8;
  v12 = (v11 + qword_1F0AE0);
  v92 = v6;

  sub_5758(&qword_1E8A10, &qword_170C28);
  *v12 = sub_16A694();
  v12[1] = v13;
  *(v11 + qword_1E76B0) = 0;
  v14 = qword_1F0AE8;
  *(v11 + v14) = sub_F3020();
  sub_7A740();
  sub_7A758();
  sub_2F8D0(v90, v91);
  sub_37404();
  __chkstk_darwin(v15);
  sub_A138();
  (*(v18 + 16))(v17 - v16);
  sub_1668CC();
  v20 = v19;

  sub_7A648();
  *&v96[0] = v20;
  sub_37284(&qword_1E8A18, &qword_1E8A08, &qword_170C20, &unk_16F380);
  sub_168804();
  sub_7A62C();
  sub_30AF8();
  sub_168894();
  sub_1693F4();
  v21 = v86;
  v22 = sub_7A728(v86);
  sub_7A67C();
  sub_168E24();
  v23 = v87;
  *(sub_7A710(v87) + 16) = 0;
  v24 = sub_5758(&qword_1E8A20, &qword_170C30);
  v25 = sub_483C8(v24);
  v94 = v21;
  v95 = &off_1D9AF0;
  v93[0] = v22;
  v26 = (v25 + qword_1F0DF0);
  v83[1] = type metadata accessor for CarCommandsCATs(0);

  sub_16A154();
  sub_7A6A8();
  *v26 = sub_16A094();
  v26[1] = &off_1D4830;
  v27 = (v25 + qword_1F0DF8);
  v28 = type metadata accessor for CarCommandsCATPatternsExecutor(0);
  sub_16A154();
  sub_7A6A8();
  v29 = sub_16A094();
  v27[3] = v28;
  v27[4] = &off_1DA7E8;
  *v27 = v29;
  sub_7A740();
  sub_7A758();
  sub_7A6F4();
  sub_37404();
  __chkstk_darwin(v30);
  sub_A138();
  v32 = sub_7A6DC(v31);
  v33(v32);
  sub_7A6B4();
  v35 = v34;

  sub_7A648();
  *&v96[0] = v35;
  sub_37284(&qword_1E8A28, &qword_1E8A20, &qword_170C30, &unk_179F58);
  sub_7A698();
  sub_168824();
  sub_7A62C();
  sub_30AF8();
  sub_1688D4();
  sub_1693F4();
  v36 = v86;
  v37 = sub_7A728(v86);
  sub_7A67C();
  sub_168E24();
  *(sub_7A710(v23) + 16) = 0;
  v38 = sub_5758(&qword_1E8A30, &qword_170C38);
  v39 = sub_483C8(v38);
  v94 = v36;
  v95 = &off_1D9AF0;
  v93[0] = v37;
  v40 = (v39 + qword_1F0E38);

  sub_16A154();
  sub_7A6A8();
  v83[0] = v28;
  v41 = sub_16A094();
  v40[3] = v28;
  v40[4] = &off_1DA7E8;
  *v40 = v41;
  sub_7A740();
  sub_7A758();
  sub_7A6F4();
  sub_37404();
  __chkstk_darwin(v42);
  sub_A138();
  (*(v45 + 16))(v44 - v43);
  sub_1668CC();
  v47 = v46;

  sub_7A648();
  *&v96[0] = v47;
  sub_37284(&qword_1E8A38, &qword_1E8A30, &qword_170C38, &unk_17A9B0);
  sub_7A698();
  sub_168834();

  sub_1688E4();
  sub_16A154();
  sub_7A6A8();
  v48 = sub_16A094();
  sub_1693F4();
  *&v96[0] = sub_79F94(v48, 16, v96);
  v49 = sub_30AF8();
  sub_5758(v49, v50);
  sub_37284(&qword_1E8A48, &qword_1E8A40, &qword_170C40, &unk_1740F8);
  sub_7A698();
  sub_1687D4();
  sub_7A62C();
  sub_30AF8();
  sub_168874();
  sub_1693F4();
  v51 = v36;
  v52 = sub_7A728(v36);
  sub_7A67C();
  sub_168E24();
  *(sub_7A710(v87) + 16) = 0;
  v53 = sub_5758(&qword_1E8A50, &qword_170C48);
  v54 = sub_483C8(v53);
  v94 = v36;
  v95 = &off_1D9AF0;
  v93[0] = v52;
  v55 = (v54 + qword_1F0E60);

  sub_16A154();
  sub_7A6A8();
  v56 = v83[0];
  v57 = sub_16A094();
  v55[3] = v56;
  v55[4] = &off_1DA7E8;
  *v55 = v57;
  v58 = (v54 + qword_1F0E68);
  sub_16A154();
  sub_7A6A8();
  *v58 = sub_16A094();
  v58[1] = &off_1D4800;
  sub_7A740();
  sub_7A758();
  sub_7A6F4();
  sub_37404();
  __chkstk_darwin(v59);
  sub_A138();
  v61 = sub_7A6DC(v60);
  v62(v61);
  sub_7A6B4();
  v64 = v63;

  sub_7A648();
  *&v96[0] = v64;
  sub_37284(&qword_1E8A58, &qword_1E8A50, &qword_170C48, &unk_17B3A8);
  sub_7A698();
  sub_168864();
  sub_7A62C();
  sub_30AF8();
  v65 = v88;
  v66 = v89;
  sub_1688C4();
  sub_1693F4();
  sub_7A67C();
  v67 = sub_168E24();
  v68 = sub_30AF8();
  sub_5758(v68, v69);
  v70 = swift_allocObject();
  *&v96[0] = sub_7A268(v96, v67, v70);
  sub_37284(&qword_1E8A68, &qword_1E8A60, &qword_170C50, &unk_177678);
  sub_168814();
  sub_7A62C();
  sub_30AF8();
  sub_1688B4();
  sub_1693F4();
  v71 = sub_7A728(v51);
  sub_7A67C();
  v72 = sub_168E24();
  v73 = v87;
  v74 = sub_7A710(v87);
  *(v74 + 16) = 0;
  *&v96[0] = sub_7A33C(v96, v71, 16, v72, v74);
  type metadata accessor for GetPowerLevelHandleIntentFlowStrategy(0);
  sub_7A5E4(&qword_1E8A70, 255, type metadata accessor for GetPowerLevelHandleIntentFlowStrategy, &unk_16F0D8);
  sub_1687E4();
  sub_7A62C();
  sub_30AF8();
  sub_168884();
  sub_1693F4();
  v75 = sub_5758(&qword_1E8A78, &qword_170C58);
  v76 = sub_483C8(v75);
  v94 = &type metadata for TCCTemplatesProvider;
  v95 = &off_1D4118;
  *(v76 + qword_1F0A50) = 0;
  sub_10824(v93, v76 + qword_1F0A58);
  sub_7A740();
  sub_7A728(v51);
  sub_7A67C();

  sub_168E24();
  *(sub_7A710(v73) + 16) = 0;

  sub_1668CC();
  v78 = v77;

  sub_D13C(v96);
  sub_D13C(v93);
  *&v96[0] = v78;
  sub_37284(&qword_1E8A80, &qword_1E8A78, &qword_170C58, &unk_16D5A8);
  sub_168844();
  sub_7A62C();
  sub_30AF8();
  sub_1688F4();
  v79 = v85;
  (*(v85 + 16))(v84, v66, v65);
  v80 = sub_5758(&qword_1E8A88, &unk_170C60);
  sub_483C8(v80);
  v81 = sub_168914();
  (*(v79 + 8))(v66, v65);
  return v81;
}

uint64_t sub_79688()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_7971C;

  return sub_78720();
}

uint64_t sub_7971C()
{
  sub_D2DC();
  v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_79828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_6F850;

  return RCHFlowStrategyAsync.makeErrorResponse(error:)(a1, a2, a3, a4);
}

uint64_t sub_798EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  PowerLevelRCHFlowStrategy = type metadata accessor for GetPowerLevelRCHFlowStrategy();
  *v10 = v5;
  v10[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)(a1, a2, a3, PowerLevelRCHFlowStrategy, a5);
}

uint64_t sub_799B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  PowerLevelRCHFlowStrategy = type metadata accessor for GetPowerLevelRCHFlowStrategy();
  *v10 = v5;
  v10[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)(a1, a2, a3, PowerLevelRCHFlowStrategy, a5);
}

uint64_t sub_79A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  PowerLevelRCHFlowStrategy = type metadata accessor for GetPowerLevelRCHFlowStrategy();
  *v10 = v5;
  v10[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)(a1, a2, a3, PowerLevelRCHFlowStrategy, a5);
}

uint64_t sub_79B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  PowerLevelRCHFlowStrategy = type metadata accessor for GetPowerLevelRCHFlowStrategy();
  *v12 = v6;
  v12[1] = sub_6F428;

  return ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)(a1, a2, a3, a4, PowerLevelRCHFlowStrategy, a6);
}

uint64_t sub_79C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v18 = swift_task_alloc();
  *(v12 + 16) = v18;
  PowerLevelRCHFlowStrategy = type metadata accessor for GetPowerLevelRCHFlowStrategy();
  *v18 = v12;
  v18[1] = sub_6F850;

  return RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(a1, a2, a3, a4, PowerLevelRCHFlowStrategy, a6, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_79D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  PowerLevelRCHFlowStrategy = type metadata accessor for GetPowerLevelRCHFlowStrategy();
  *v8 = v4;
  v8[1] = sub_79DCC;

  return IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)(a1, a2, PowerLevelRCHFlowStrategy, a4);
}

uint64_t sub_79DCC()
{
  sub_D2DC();
  v2 = v1;
  v3 = *v0;
  sub_D254();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_79F94(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = a1;
  v4 = sub_16A164();
  __chkstk_darwin(v4 - 8);
  sub_10824(a3, v23);
  v5 = type metadata accessor for FeatureFlagHelper();
  v6 = swift_allocObject();
  sub_168E34();
  swift_allocObject();
  sub_168E24();
  type metadata accessor for SnippetManager();
  *(swift_allocObject() + 16) = 0;
  sub_5758(&qword_1E8A40, &qword_170C40);
  v7 = swift_allocObject();
  v22[3] = v5;
  v22[4] = &off_1D9AF0;
  v22[0] = v6;
  v8 = (v7 + qword_1F0C28);
  v9 = type metadata accessor for CarCommandsCATPatternsExecutor(0);

  sub_16A154();
  v10 = sub_16A094();
  v8[3] = v9;
  v8[4] = &off_1DA7E8;
  *v8 = v10;
  v11 = (v7 + qword_1F0C30);
  type metadata accessor for CarCommandsCATs(0);
  sub_16A154();
  *v11 = sub_16A094();
  v11[1] = &off_1D4818;
  sub_10824(v23, v21);
  sub_10824(v22, v20);
  v12 = sub_2F8D0(v20, v20[3]);
  __chkstk_darwin(v12);
  (*(v14 + 16))(&v20[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1668CC();
  v16 = v15;

  sub_D13C(a3);
  sub_D13C(v23);
  sub_D13C(v22);
  sub_D13C(v20);
  v17 = (v16 + qword_1F0C30);
  *v17 = v19;
  v17[1] = &off_1D4818;

  return v16;
}

uint64_t sub_7A268(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_16A164();
  __chkstk_darwin(v6 - 8);
  v9 = sub_168E34();
  v10 = &protocol witness table for ResponseFactory;
  *&v8 = a2;
  type metadata accessor for CarCommandsCATsSimple(0);
  sub_16A154();
  *(a3 + 96) = sub_16A0F4();
  sub_D124(a1, a3 + 16);
  sub_D124(&v8, a3 + 56);
  return a3;
}

uint64_t sub_7A33C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_16A164();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for FeatureFlagHelper();
  v27[3] = v8;
  v27[4] = &off_1D9AF0;
  v27[0] = a2;
  type metadata accessor for GetPowerLevelHandleIntentFlowStrategy(0);
  v9 = swift_allocObject();
  v10 = sub_2F8D0(v27, v8);
  __chkstk_darwin(v10);
  v12 = (v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = *v12;
  v26[3] = v8;
  v26[4] = &off_1D9AF0;
  v26[0] = v14;
  v15 = (v9 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin37GetPowerLevelHandleIntentFlowStrategy_commonPatterns);
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

uint64_t sub_7A5E4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_7A62C()
{
}

uint64_t sub_7A648()
{
  sub_D13C((v0 - 128));
  sub_D13C((v0 - 168));

  return sub_D13C((v0 - 248));
}

uint64_t sub_7A67C()
{

  return swift_allocObject();
}

void sub_7A6B4()
{

  sub_1668CC();
}

uint64_t sub_7A6F4()
{
  v2 = *(v0 - 224);

  return sub_2F8D0(v0 - 248, v2);
}

uint64_t sub_7A710(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_7A728(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_7A740()
{

  return sub_10824(v0 - 128, v0 - 208);
}

uint64_t sub_7A758()
{

  return sub_10824(v0 - 168, v0 - 248);
}

uint64_t type metadata accessor for CarCommandsDeactivateSignalCATsSimple(uint64_t a1)
{
  result = qword_1E8A90;
  if (!qword_1E8A90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_7A7FC()
{
  v3 = &async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_31D84;

  return (v3)(0xD000000000000031, 0x8000000000185B60, _swiftEmptyArrayStorage);
}

uint64_t sub_7A914(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_7AA70(uint64_t a1, uint64_t a2)
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

id sub_7AB78()
{
  v1 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin38ActivateSignalHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler;
  v2 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin38ActivateSignalHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin38ActivateSignalHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
  }

  else
  {
    if (qword_1E5908 != -1)
    {
      swift_once();
    }

    v5 = sub_7C5C0(v4);
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_7AC14()
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

uint64_t sub_7ACE8()
{
  sub_10824(v0[38] + 16, (v0 + 2));
  sub_D084(v0 + 2, v0[5]);
  sub_5758(&qword_1E62F0, &unk_16D8C0);
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
  v0[31] = 0xD000000000000098;
  v0[32] = 0x8000000000185BF0;
  v0[33] = 47;
  v0[34] = 0xE100000000000000;
  sub_D030();
  v4 = sub_16AB34();
  sub_15AE4(v4);
  v6 = v5;

  if (v6)
  {
    sub_7C764();
    v74._countAndFlagsBits = 0xD000000000000025;
    v74._object = 0x8000000000182560;
    sub_16A744(v74);
    v7 = v69;
    v1 = v72;
  }

  else
  {
    v7 = 0xD000000000000025;
  }

  v66 = v7;
  v0[35] = 26;
  v75._countAndFlagsBits = sub_16AE24();
  sub_16A744(v75);

  sub_7C724(v8, v9, v10, v11, v12, v13, v14, v15, v66, v1, 58, 0xE100000000000000);

  v16._countAndFlagsBits = sub_378D0(0x82uLL);
  if (v16._object)
  {
    sub_7C740(v16);

    sub_7C724(v17, v18, v19, v20, v21, v22, v23, v24, v67, v68, v70, v73);
  }

  v25 = sub_16A574();
  if (os_log_type_enabled(v25, v3))
  {
    v26 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v30 = sub_7C7A4(4.8149e-34, v71, v27, v28, v29);

    *(v26 + 4) = v30;
    sub_7C784(&dword_0, v31, v32, "%s");
    sub_D13C(v71);
    sub_D494(v71);
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
      sub_7C70C();
      v48 = sub_7C578(v46, v47, &unk_17A85C);
      sub_5A144(v48);
      *v49 = 0xD00000000000002DLL;
      v49[1] = 0x8000000000182590;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      sub_D37C();
      sub_D2C0();

      __asm { BRAA            X1, X16 }
    }

    v36 = v0[38];
    type metadata accessor for SignalStatusSnippetFactory();
    v37 = sub_1690A4();
    v0[44] = [v37 carName];

    v38 = sub_1690A4();
    [v38 signals];

    sub_3CF7C(v36 + 184, (v0 + 28));
    sub_10824(v36 + 184, (v0 + 17));
    v39 = swift_task_alloc();
    v0[45] = v39;
    *v39 = v0;
    v39[1] = sub_584A8;
    sub_D2C0();

    return sub_126E58();
  }

  else
  {
    v42 = sub_1690A4();
    v0[47] = v42;
    v43 = [v42 carName];
    if (v43)
    {
      v44 = v43;
      sub_99C94();

      v45 = 0;
    }

    else
    {
      v45 = 1;
    }

    v52 = v0[40];
    v53 = sub_16A0C4();
    sub_5370(v52, v45, 1, v53);
    v54 = [v42 signals];
    sub_169094();
    sub_16A1B4();
    v56 = v55;

    if (v56)
    {
      sub_16A6E4();

      v57 = 0;
    }

    else
    {
      v57 = 1;
    }

    v59 = v0[41];
    v58 = v0[42];
    v61 = v0[39];
    v60 = v0[40];
    v62 = v0[38];
    sub_5370(v61, v57, 1, v53);
    sub_16304(v60, v58);
    *(v58 + v59[5]) = 1;
    *(v58 + v59[6]) = (v54 & 2) != 0;
    sub_16304(v61, v58 + v59[7]);
    sub_D084((v62 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin38ActivateSignalHandleIntentFlowStrategy_commonPatterns), *(v62 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin38ActivateSignalHandleIntentFlowStrategy_commonPatterns + 24));
    v63 = swift_task_alloc();
    v0[48] = v63;
    *v63 = v0;
    v63[1] = sub_7B324;
    sub_D2C0();

    return sub_1567D0(v64);
  }
}

uint64_t sub_7B324()
{
  sub_D2DC();
  sub_D358();
  *(v2 + 392) = v1;
  *(v2 + 400) = v0;

  sub_10B4C();

  return _swift_task_switch(v3);
}

uint64_t sub_7B42C()
{
  sub_D2DC();
  v1 = *(v0 + 304);
  sub_3CF7C(v1 + 184, v0 + 200);
  sub_10824(v1 + 184, v0 + 96);
  v2 = swift_task_alloc();
  *(v0 + 408) = v2;
  *v2 = v0;
  v2[1] = sub_7B4E0;

  return sub_11A570();
}

uint64_t sub_7B4E0()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v3 + 416) = v0;

  sub_D13C((v3 + 96));
  sub_10B4C();

  return _swift_task_switch(v6);
}

uint64_t sub_7B5E8()
{
  sub_1696C();
  v1 = *(v0 + 336);

  sub_4BE38(v1);

  sub_D37C();

  return v2();
}

uint64_t sub_7B674()
{
  sub_1696C();
  v1 = *(v0 + 392);
  v2 = *(v0 + 336);
  v3 = *(v0 + 288);

  sub_4BE38(v2);
  sub_D250((v0 + 56), v3);

  sub_D37C();

  return v4();
}

uint64_t sub_7B718()
{
  sub_1696C();
  v1 = *(v0 + 392);
  v2 = *(v0 + 336);

  sub_4BE38(v2);

  sub_D37C();

  return v3();
}

uint64_t sub_7B7AC(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  sub_10B4C();
  return _swift_task_switch(v4);
}

uint64_t sub_7B7DC()
{
  sub_10824(v0[25] + 16, (v0 + 2));
  sub_D084(v0 + 2, v0[5]);
  sub_5758(&qword_1E62F0, &unk_16D8C0);
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
  v0[18] = 0xD000000000000098;
  v0[19] = 0x8000000000185BF0;
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
  v0[22] = 63;
  v55._countAndFlagsBits = sub_16AE24();
  sub_16A744(v55);

  sub_7C724(v8, v9, v10, v11, v12, v13, v14, v15, v46, v1, 58, 0xE100000000000000);

  v16._countAndFlagsBits = sub_378D0(0x82uLL);
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
    sub_7C70C();
    v44 = sub_7C578(v42, v43, &unk_17A85C);
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

uint64_t sub_7BC20()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v3 + 216) = v0;

  sub_D13C((v3 + 56));
  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v6);
  }

  else
  {
    sub_D37C();

    return v7();
  }
}

void sub_7BD68()
{
  sub_D13C((v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin38ActivateSignalHandleIntentFlowStrategy_commonPatterns));
  v1 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin38ActivateSignalHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
}

void *sub_7BDA8()
{
  v0 = sub_3D044();
  sub_D13C((v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin38ActivateSignalHandleIntentFlowStrategy_commonPatterns));

  return v0;
}

uint64_t sub_7BDF0()
{
  v0 = sub_7BDA8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for ActivateSignalHandleIntentFlowStrategy(uint64_t a1)
{
  result = qword_1E8B10;
  if (!qword_1E8B10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_7BEE4(uint64_t a1)
{
  result = sub_7C578(&qword_1E8D28, type metadata accessor for ActivateSignalHandleIntentFlowStrategy, &unk_170D50);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_7BF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for ActivateSignalHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(a1, a2, v9, a4);
}

uint64_t sub_7C004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for ActivateSignalHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, v9, a4);
}

uint64_t sub_7C0CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10A9C;

  return sub_4B544();
}

uint64_t sub_7C18C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10A9C;

  return sub_7AC14();
}

uint64_t sub_7C238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for ActivateSignalHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, v9, a4);
}

uint64_t sub_7C300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for ActivateSignalHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, v9, a4);
}

uint64_t sub_7C3C8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1039C;

  return sub_7B7AC(a1, a2);
}

uint64_t sub_7C474()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_36648;

  return sub_44C00();
}

uint64_t sub_7C578(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_7C5C0(uint64_t a1)
{
  v2 = type metadata accessor for WalletService();
  v14[3] = v2;
  v14[4] = &off_1D7C28;
  v14[0] = a1;
  v3 = type metadata accessor for SEActivateSignalIntentHandler();
  v4 = objc_allocWithZone(v3);
  v5 = sub_2F8D0(v14, v2);
  __chkstk_darwin(v5);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = *v7;
  v13[3] = v2;
  v13[4] = &off_1D7C28;
  v13[0] = v9;
  sub_10824(v13, v4 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin29SEActivateSignalIntentHandler_carKeyService);
  v12.receiver = v4;
  v12.super_class = v3;
  v10 = objc_msgSendSuper2(&v12, "init");
  sub_D13C(v13);
  sub_D13C(v14);
  return v10;
}

void sub_7C724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v13._countAndFlagsBits = a11;
  v13._object = a12;

  sub_16A744(v13);
}

void sub_7C740(Swift::String a1)
{

  sub_16A744(a1);
}

void sub_7C764()
{
  v1._countAndFlagsBits = 32;
  v1._object = 0xE100000000000000;

  sub_16A744(v1);
}

void sub_7C784(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

unint64_t sub_7C7A4(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *v5 = a1;

  return sub_15BC8(v7, v6, va);
}

uint64_t sub_7C7C4()
{
  sub_D2DC();
  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  *(v1 + 249) = v3;
  *(v1 + 112) = v4;
  *(v1 + 120) = v5;
  *(v1 + 248) = v6;
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

uint64_t sub_7C908()
{
  v1 = *(v0 + 248);
  if (v1 != 2 && (v1 & 1) != 0)
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v2 = *(v0 + 128);
    v3 = sub_16A584();
    sub_9DA0(v3, qword_1E65C0);
    v4 = sub_16A9A4();
    sub_386D8(v4, 2uLL, 0xD000000000000091, 0x8000000000185D00, 0xD00000000000004CLL, 0x8000000000182B90, 30, 0xD000000000000044, 0x8000000000185E80);
    sub_D084(v2, v2[3]);
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

  v5 = sub_16A584();
  sub_9DA0(v5, qword_1E65C0);
  v6 = sub_16A9A4();
  sub_386D8(v6, 2uLL, 0xD000000000000091, 0x8000000000185D00, 0xD00000000000004CLL, 0x8000000000182B90, 36, 0xD000000000000051, 0x8000000000185E20);
  v7 = swift_task_alloc();
  *(v0 + 200) = v7;
  *v7 = v0;
  v7[1] = sub_7CBFC;
  sub_7DDB4();

  return sub_7D078(v8, v9, v10, v11, v12);
}