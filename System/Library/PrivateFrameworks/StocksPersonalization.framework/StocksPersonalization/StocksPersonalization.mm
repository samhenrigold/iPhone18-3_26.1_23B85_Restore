uint64_t Assembly.init()()
{
  sub_2203BF3A4(0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_22042D3E0;
  v2 = type metadata accessor for UserEventHistoryAssembly();
  v3 = swift_allocObject();
  *(v1 + 56) = v2;
  *(v1 + 64) = sub_2203BF484(qword_280FA0B78, type metadata accessor for UserEventHistoryAssembly, &unk_220430A5C);
  *(v1 + 32) = v3;
  v4 = type metadata accessor for WorkServiceAssembly();
  v5 = swift_allocObject();
  *(v1 + 96) = v4;
  *(v1 + 104) = sub_2203BF484(qword_280FA0FB8, type metadata accessor for WorkServiceAssembly, &unk_2204310C4);
  *(v1 + 72) = v5;
  *(v0 + 16) = v1;
  return v0;
}

void sub_2203BF3A4(uint64_t a1)
{
  if (!qword_280FA0260)
  {
    sub_2203BF3FC();
    v1 = sub_22042BF30();
    if (!v2)
    {
      atomic_store(v1, &qword_280FA0260);
    }
  }
}

unint64_t sub_2203BF3FC()
{
  result = qword_280FA2420;
  if (!qword_280FA2420)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280FA2420);
  }

  return result;
}

uint64_t sub_2203BF484(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2203BF500()
{
  v0 = sub_22042AD40();
  v15 = *(v0 - 8);
  v16 = v0;
  MEMORY[0x28223BE20](v0);
  v14 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_22042AE80();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22042AD70();
  sub_2203BFB80(0, &qword_280FA23E8, MEMORY[0x277D681E0], 0);
  sub_22042AE40();

  v6 = *MEMORY[0x277D6CF00];
  v7 = *(v3 + 104);
  v7(v5, v6, v2);
  sub_22042ACC0();

  v8 = *(v3 + 8);
  v8(v5, v2);
  sub_22042AD70();
  sub_22042AE40();

  v7(v5, v6, v2);
  sub_22042ACC0();

  v8(v5, v2);
  sub_22042AD80();
  sub_2203BFB80(0, &unk_280FA07E0, &protocol descriptor for GroupIDStockMessageTranslatorType, 1);
  sub_22042AE40();

  v7(v5, v6, v2);
  sub_22042ACC0();

  v8(v5, v2);
  sub_22042AD80();
  sub_2203BFBDC(0);
  sub_22042AE30();

  sub_22042AD70();
  _s7FactoryCMa();
  sub_22042AE30();

  v9 = *MEMORY[0x277D6CF10];
  v7(v5, v9, v2);
  sub_22042ACC0();

  v8(v5, v2);
  sub_22042AD70();
  sub_2203BFB80(0, &qword_280FA22A8, MEMORY[0x277D34B28], 1);
  sub_22042AE40();

  v7(v5, v9, v2);
  sub_22042ACC0();

  v8(v5, v2);
  sub_22042AD70();
  sub_2203BFCDC(0);
  sub_22042AE30();

  sub_22042AD80();
  type metadata accessor for StocksUserEventHistorySessionUnarchiver();
  sub_22042AE30();

  v7(v5, v9, v2);
  sub_22042ACC0();

  v8(v5, v2);
  sub_22042AD80();
  sub_22042B920();
  sub_22042AE30();

  sub_22042AD90();
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  sub_22042AE00();
  v11 = v14;
  v10 = v15;
  v12 = v16;
  (*(v15 + 104))(v14, *MEMORY[0x277D6CB30], v16);
  sub_22042AE50();
  (*(v10 + 8))(v11, v12);
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_2203BFB80(uint64_t a1, unint64_t *a2, uint64_t a3, char a4)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_2203BFBDC(uint64_t a1)
{
  if (!qword_280FA22C8)
  {
    _s7FactoryCMa();
    sub_2203BFC94(qword_280FA16F0, _s7FactoryCMa, &unk_22042EF34);
    v1 = sub_22042B420();
    if (!v2)
    {
      atomic_store(v1, &qword_280FA22C8);
    }
  }
}

uint64_t sub_2203BFC94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2203BFCDC(uint64_t a1)
{
  if (!qword_280FA2290)
  {
    type metadata accessor for StocksUserEventHistorySessionUnarchiver();
    sub_2203BFD94(qword_280FA11F0, type metadata accessor for StocksUserEventHistorySessionUnarchiver, &protocol conformance descriptor for StocksUserEventHistorySessionUnarchiver);
    v1 = sub_22042B4C0();
    if (!v2)
    {
      atomic_store(v1, &qword_280FA2290);
    }
  }
}

uint64_t sub_2203BFD94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

uint64_t sub_2203BFE70(uint64_t a1)
{
  v2 = sub_22042AD40();
  v24 = *(v2 - 8);
  v25 = v2;
  MEMORY[0x28223BE20](v2);
  v23 = &v20[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_22042AE80();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22042AD70();
  sub_220429A10(0, &qword_280FA2328, MEMORY[0x277CFBB00]);
  sub_22042AE30();

  v8 = *(v5 + 104);
  v9 = *MEMORY[0x277D6CF10];
  v8(v7);
  sub_22042ACC0();

  v10 = *(v5 + 8);
  v10(v7, v4);
  sub_22042AD80();
  type metadata accessor for ComputeServiceRetentionTokenVendor();
  sub_22042AE30();

  sub_22042AD80();
  type metadata accessor for StocksAppFeatureResolvers();
  sub_22042AE30();

  sub_22042AD70();
  sub_2203CFDB8(0, qword_280FA1148, &protocol descriptor for StocksComputeServiceConfigurationReporter);
  sub_22042AE40();

  (v8)(v7, v9, v4);
  sub_22042ACC0();

  v10(v7, v4);
  sub_22042AD80();
  type metadata accessor for UserEventsFeatureResolver();
  sub_22042AE30();

  (v8)(v7, v9, v4);
  sub_22042ACC0();

  v10(v7, v4);
  sub_22042AD80();
  sub_220429A10(0, &qword_280FA2260, MEMORY[0x277D34BC0]);
  sub_22042AE30();

  (v8)(v7, v9, v4);
  sub_22042ACC0();

  v10(v7, v4);
  sub_22042AD80();
  type metadata accessor for UserEventFeaturesFactory();
  sub_22042AE30();

  v30 = v9;
  (v8)(v7, v9, v4);
  sub_22042ACC0();

  v10(v7, v4);
  sub_22042AD80();
  sub_220429A74(0);
  sub_22042AE30();

  (v8)(v7, v9, v4);
  sub_22042ACC0();

  v10(v7, v4);
  sub_22042AD80();
  sub_22042B290();
  sub_22042AE40();

  sub_22042AD70();
  sub_2203CFDB8(0, &qword_280FA04B0, MEMORY[0x277D341C8]);
  sub_22042AE40();

  sub_22042AD80();
  type metadata accessor for ComputeServiceScoringService();
  sub_22042AE30();

  v27 = v8;
  (v8)(v7, v30, v4);
  sub_22042ACC0();

  v10(v7, v4);
  sub_22042AD70();
  sub_2203CFDB8(0, qword_280FA13B8, &protocol descriptor for ComputeServiceUnloaderServiceType);
  sub_22042AE40();

  v21 = *MEMORY[0x277D6CF00];
  v8(v7);
  sub_22042ACC0();

  v10(v7, v4);
  v29 = v5 + 8;
  sub_22042AD80();
  type metadata accessor for ComputeServiceConfigurationManager();
  sub_22042AE30();

  v11 = v30;
  v12 = v27;
  v27(v7, v30, v4);
  sub_22042ACC0();

  v10(v7, v4);
  sub_22042AD80();
  sub_22042B3D0();
  sub_22042AE30();

  v12(v7, v11, v4);
  v22 = v5 + 104;
  sub_22042ACC0();

  v28 = v10;
  v10(v7, v4);
  sub_22042AD80();
  sub_2203CFDB8(0, &qword_280FA09F0, &protocol descriptor for ArticleFeaturesFactoryType);
  sub_22042AE40();

  sub_22042AD80();
  type metadata accessor for ComputeServiceUnloaderService();
  sub_22042AE30();

  v12(v7, v21, v4);
  sub_22042ACC0();

  v10(v7, v4);
  sub_22042AD80();
  sub_2203CFDB8(0, &qword_280FA2288, MEMORY[0x277D34B70]);
  sub_22042AE40();

  sub_22042AD80();
  sub_22042B4D0();
  sub_22042AE30();

  sub_22042AD80();
  type metadata accessor for StocksComputeServiceStartupTask();
  sub_22042AE30();

  sub_22042AD90();
  __swift_project_boxed_opaque_existential_1(v31, v31[3]);
  sub_22042AE00();
  v13 = v23;
  v14 = v24;
  v15 = v25;
  (*(v24 + 104))(v23, *MEMORY[0x277D6CB30], v25);
  sub_22042AE50();
  (*(v14 + 8))(v13, v15);
  __swift_destroy_boxed_opaque_existential_1(v31);
  sub_22042AD80();
  sub_22042B2F0();
  sub_22042AE30();

  v16 = v30;
  v17 = v27;
  v27(v7, v30, v4);
  sub_22042ACC0();

  v28(v7, v4);
  sub_22042ACB0();

  sub_22042AD80();
  type metadata accessor for ArticleScoringRequestEventProcessor(0);
  sub_22042AE30();

  sub_22042AD70();
  sub_2203C109C(0, &unk_280FA2240, MEMORY[0x277D34C00], MEMORY[0x277D83D88]);
  sub_22042AE40();

  v26 = a1;
  sub_22042AD70();
  sub_2203CFDB8(0, &qword_280FA24B8, MEMORY[0x277D69748]);
  sub_22042AE40();

  sub_22042AD80();
  sub_22042A500();
  sub_22042AE40();

  v17(v7, v16, v4);
  sub_22042ACC0();

  v18 = v28;
  v28(v7, v4);
  sub_22042AD80();
  sub_22042AE40();

  v17(v7, v16, v4);
  sub_22042ACC0();

  v18(v7, v4);
  sub_22042AD80();
  sub_22042AE40();

  v17(v7, v16, v4);
  sub_22042ACC0();

  v18(v7, v4);
  sub_22042AD80();
  sub_22042AE40();

  v17(v7, v16, v4);
  sub_22042ACC0();

  return (v18)(v7, v4);
}

unint64_t sub_2203C0E7C()
{
  result = qword_280FA08E0;
  if (!qword_280FA08E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA08E0);
  }

  return result;
}

unint64_t sub_2203C0ED4()
{
  result = qword_280FA08D0;
  if (!qword_280FA08D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA08D0);
  }

  return result;
}

unint64_t sub_2203C0F94()
{
  result = qword_280FA0498;
  if (!qword_280FA0498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA0498);
  }

  return result;
}

unint64_t sub_2203C0FEC()
{
  result = qword_280FA08D8;
  if (!qword_280FA08D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA08D8);
  }

  return result;
}

uint64_t sub_2203C1064(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2203C109C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void *sub_2203C1100(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2203BFB80(0, &unk_280FA24E0, MEMORY[0x277D69608], 1);
  result = sub_22042AD30();
  if (!v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(v7, v8);
  v4 = sub_22042A9F0();
  result = __swift_destroy_boxed_opaque_existential_1(v7);
  if ((v4 & 1) == 0)
  {
    return result;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v5 = sub_22042B920();
  result = sub_22042AD00();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  v8 = v5;
  v9 = sub_2203BFC94(qword_280FA04C8, MEMORY[0x277D304B8], MEMORY[0x277D304B0]);
  v7[0] = v6;
  sub_22042ADF0();
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

void sub_2203C12B0(uint64_t a1)
{
  if (!qword_280FA2558)
  {
    sub_2203C1318(255, &qword_280FA0370, 0x277CCAE18);
    v1 = sub_22042A400();
    if (!v2)
    {
      atomic_store(v1, &qword_280FA2558);
    }
  }
}

uint64_t sub_2203C1318(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_2203C1360(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_2203CFDB8(255, a3, a4);
    v5 = sub_22042BF30();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2203C13B8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203C14A4();
  sub_22042B900();
  v2 = sub_22042AD00();

  if (v2)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    type metadata accessor for StocksUserEventHistorySessionUnarchiver();
    result = sub_22042AD20();
    if (result)
    {
      sub_2203BFCDC(0);
      swift_allocObject();
      return sub_22042B4B0();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_2203C14A4()
{
  result = qword_280FA0368;
  if (!qword_280FA0368)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280FA0368);
  }

  return result;
}

uint64_t sub_2203C1508()
{
  type metadata accessor for StocksUserEventHistorySessionUnarchiver();

  return swift_allocObject();
}

void sub_2203C153C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_2203C15B4()
{
  result = qword_280FA0AC0;
  if (!qword_280FA0AC0)
  {
    type metadata accessor for UserEventsFeatureResolver();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA0AC0);
  }

  return result;
}

unint64_t sub_2203C1608(uint64_t a1)
{
  result = sub_2203C15B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2203C1630()
{
  result = qword_280FA2270;
  if (!qword_280FA2270)
  {
    sub_220429A10(255, &qword_280FA2260, MEMORY[0x277D34BC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA2270);
  }

  return result;
}

unint64_t sub_2203C16A4()
{
  result = qword_280FA2278;
  if (!qword_280FA2278)
  {
    sub_2203C1724(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA2278);
  }

  return result;
}

unint64_t sub_2203C16FC(uint64_t a1)
{
  result = sub_2203C16A4();
  *(a1 + 8) = result;
  return result;
}

void sub_2203C1724(uint64_t a1)
{
  if (!qword_280FA2260)
  {
    sub_2203C0E7C();
    v1 = sub_22042B510();
    if (!v2)
    {
      atomic_store(v1, &qword_280FA2260);
    }
  }
}

uint64_t sub_2203C1790@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D6CE30];
  v3 = sub_22042AE60();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

double sub_2203C180C(uint64_t a1)
{
  *(a1 + 224) = 0;
  result = 0.0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_2203C1834(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 232))
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

uint64_t sub_2203C1894(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_22042A420();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22042A410();
  v10 = a1;
  a4(v9);

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2203C1984()
{
  v1 = v0;
  v24 = sub_22042A790();
  v2 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280FA0CE8 != -1)
  {
    swift_once();
  }

  v5 = qword_280FA0CF0;
  sub_2203C1EE8(0);
  v23 = v6;
  v7 = swift_allocObject();
  v22 = xmmword_22042D3F0;
  *(v7 + 16) = xmmword_22042D3F0;
  sub_22042A420();
  sub_2203C1F50();
  v8 = sub_22042BF20();
  v10 = v9;
  *(v7 + 56) = MEMORY[0x277D837D0];
  v11 = sub_2203C1FA8();
  *(v7 + 64) = v11;
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  v12 = sub_22042BCA0();
  v25 = v5;
  sub_22042B8D0("applicationDidBecomeActive, notification=%{public}@", 51, 2, &dword_2203BD000, v5, v12, v7);

  v21[1] = v1;
  __swift_project_boxed_opaque_existential_1((*(v1 + OBJC_IVAR____TtC21StocksPersonalization29ComputeServiceUnloaderService_configurationManager) + 16), *(*(v1 + OBJC_IVAR____TtC21StocksPersonalization29ComputeServiceUnloaderService_configurationManager) + 40));
  sub_22042AA40();
  sub_2203C1FFC(&v27);
  (*(v2 + 8))(v4, v24);
  v42[12] = v39;
  v42[13] = v40;
  v42[8] = v35;
  v42[9] = v36;
  v42[10] = v37;
  v42[11] = v38;
  v42[4] = v31;
  v42[5] = v32;
  v42[6] = v33;
  v42[7] = v34;
  v42[0] = v27;
  v42[1] = v28;
  v42[2] = v29;
  v42[3] = v30;
  v45 = v39;
  v46 = v40;
  v44[8] = v35;
  v44[9] = v36;
  v44[10] = v37;
  v44[11] = v38;
  v44[4] = v31;
  v44[5] = v32;
  v44[6] = v33;
  v44[7] = v34;
  v44[0] = v27;
  v44[1] = v28;
  v43 = v41;
  v47 = v41;
  v44[2] = v29;
  v44[3] = v30;
  if (sub_2203C30A8(v44) == 1)
  {
    sub_2203C30C0();
    v13 = swift_allocError();
    swift_willThrow();
    v14 = sub_22042BC80();
    v15 = swift_allocObject();
    *(v15 + 16) = v22;
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    v26 = v13;
    sub_2203CFDB8(0, &unk_280FA01A0, MEMORY[0x277D84948]);
    sub_22042BDF0();
    v16 = v27;
    *(v15 + 56) = MEMORY[0x277D837D0];
    *(v15 + 64) = v11;
    *(v15 + 32) = v16;
    sub_22042B8D0("Encountered an error checking unloadGraphOnBackgroundConfiguration enablement: %{public}@", 89, 2, &dword_2203BD000, v25, v14, v15);

    return MEMORY[0x223D7C730](v13);
  }

  else
  {
    v18 = v25;
    sub_2203E34AC(v42);
    v19 = BYTE8(v45);
    v20 = sub_22042BCA0();
    if (v19 == 1)
    {
      sub_22042B8D0("See app becoming active", 23, 2, &dword_2203BD000, v18, v20, MEMORY[0x277D84F90]);
      return sub_22042B190();
    }

    else
    {
      return sub_22042B8D0("See app becoming active but unload graph on background as disabled, doing nothing to work service", 97, 2, &dword_2203BD000, v18, v20, MEMORY[0x277D84F90]);
    }
  }
}

uint64_t sub_2203C1DC4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_22042BA30();
  }

  sub_2203C1E9C();
  result = sub_22042BCE0();
  qword_280FA0CF0 = result;
  return result;
}

unint64_t sub_2203C1E9C()
{
  result = qword_280FA0340;
  if (!qword_280FA0340)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280FA0340);
  }

  return result;
}

void sub_2203C1EE8(uint64_t a1)
{
  if (!qword_280FA01B0)
  {
    sub_2203CFDB8(255, &qword_280FA0190, MEMORY[0x277D84D98]);
    v1 = sub_22042BF30();
    if (!v2)
    {
      atomic_store(v1, &qword_280FA01B0);
    }
  }
}

unint64_t sub_2203C1F50()
{
  result = qword_280FA2548;
  if (!qword_280FA2548)
  {
    sub_22042A420();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA2548);
  }

  return result;
}

unint64_t sub_2203C1FA8()
{
  result = qword_280FA0490;
  if (!qword_280FA0490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA0490);
  }

  return result;
}

void sub_2203C1FFC(uint64_t a1@<X8>)
{
  sub_2203C2CFC(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22042AE70();
  v57 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v56 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22042BA70();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22042ACE0();
  if (sub_22042ACD0())
  {
    v55 = v5;
    sub_22042AB70();
    sub_22042AB60();
    if (qword_280FA2498 != -1)
    {
      swift_once();
    }

    sub_22042AB50();

    if (v90 == 1)
    {
      sub_22042AB60();
      if (qword_27CF51EF0 != -1)
      {
        swift_once();
      }

      sub_22042AB50();

      v11 = v90;
      v12 = HIBYTE(*(&v90 + 1)) & 0xFLL;
      if ((*(&v90 + 1) & 0x2000000000000000) == 0)
      {
        v12 = v90 & 0xFFFFFFFFFFFFLL;
      }

      if (v12)
      {
        sub_22042BA60();
        v54 = sub_22042BA40();
        v13 = v10;
        v15 = v14;
        (*(v8 + 8))(v13, v7);
        if (v15 >> 60 != 15)
        {

          sub_22042A380();
          swift_allocObject();
          sub_22042A370();
          sub_2203C0ED4();
          v21 = v54;
          sub_22042A360();

          v72 = v102;
          v73 = v103;
          v74 = v104;
          v68 = v98;
          v69 = v99;
          v70 = v100;
          v71 = v101;
          v64 = v94;
          v65 = v95;
          v66 = v96;
          v67 = v97;
          v60 = v90;
          v61 = v91;
          v62 = v92;
          v63 = v93;
          if (qword_280FA07C8 != -1)
          {
            swift_once();
          }

          v42 = qword_280FA07D0;
          sub_2203C1EE8(0);
          v43 = swift_allocObject();
          *(v43 + 16) = xmmword_22042D3F0;
          v58 = 0;
          v59 = 0xE000000000000000;
          v87 = v72;
          v88 = v73;
          v89 = v74;
          v83 = v68;
          v84 = v69;
          v85 = v70;
          v86 = v71;
          v79 = v64;
          v80 = v65;
          v81 = v66;
          v82 = v67;
          v75 = v60;
          v76 = v61;
          v77 = v62;
          v78 = v63;
          sub_22042BDF0();
          v44 = v58;
          v45 = v59;
          *(v43 + 56) = MEMORY[0x277D837D0];
          *(v43 + 64) = sub_2203C1FA8();
          *(v43 + 32) = v44;
          *(v43 + 40) = v45;
          v46 = sub_22042BCA0();
          sub_22042B8D0("Found ComputeServiceConfiguration %{public}@", 44, 2, &dword_2203BD000, v42, v46, v43);
          sub_2203DF298(v21, v15);

          goto LABEL_29;
        }

        if (qword_280FA07C8 != -1)
        {
          swift_once();
        }

        v16 = qword_280FA07D0;
        v17 = sub_22042BC80();
        sub_2203C1EE8(0);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_22042D3F0;
        *(v18 + 56) = MEMORY[0x277D837D0];
        *(v18 + 64) = sub_2203C1FA8();
        *(v18 + 32) = v11;
        sub_22042B8D0("Failed to get data from user defaults provided configuration string, proceeding with live configuration. String=%{public}@", 122, 2, &dword_2203BD000, v16, v17, v18);
      }

      else
      {

        if (qword_280FA07C8 != -1)
        {
          swift_once();
        }

        v19 = qword_280FA07D0;
        v20 = sub_22042BC80();
        sub_22042B8D0("Failed to find a configuration override specified in user defaults despite Settings.ComputationalGraph.supplyConfigurationFromUserDefaults being true, proceeding with live configuration", 185, 2, &dword_2203BD000, v19, v20, MEMORY[0x277D84F90]);
      }
    }

    v5 = v55;
  }

  sub_22042A760();
  v22 = v57;
  if ((*(v57 + 48))(v4, 1, v5) != 1)
  {
    (*(v22 + 32))(v56, v4, v5);
    sub_22042A3E0();
    swift_allocObject();
    sub_22042A3D0();
    sub_2204225B8();
    v33 = sub_22042A3C0();
    v35 = v34;

    sub_22042A380();
    swift_allocObject();
    sub_22042A370();
    sub_2203C0ED4();
    sub_22042A360();
    v36 = v5;

    v72 = v102;
    v73 = v103;
    v74 = v104;
    v68 = v98;
    v69 = v99;
    v70 = v100;
    v71 = v101;
    v64 = v94;
    v65 = v95;
    v66 = v96;
    v67 = v97;
    v60 = v90;
    v61 = v91;
    v62 = v92;
    v63 = v93;
    if (qword_280FA07C8 != -1)
    {
      swift_once();
    }

    v37 = qword_280FA07D0;
    sub_2203C1EE8(0);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_22042D3F0;
    v58 = 0;
    v59 = 0xE000000000000000;
    v87 = v72;
    v88 = v73;
    v89 = v74;
    v83 = v68;
    v84 = v69;
    v85 = v70;
    v86 = v71;
    v79 = v64;
    v80 = v65;
    v81 = v66;
    v82 = v67;
    v75 = v60;
    v76 = v61;
    v77 = v62;
    v78 = v63;
    sub_22042BDF0();
    v39 = v58;
    v40 = v59;
    *(v38 + 56) = MEMORY[0x277D837D0];
    *(v38 + 64) = sub_2203C1FA8();
    *(v38 + 32) = v39;
    *(v38 + 40) = v40;
    v41 = sub_22042BCA0();
    sub_22042B8D0("Found ComputeServiceConfiguration %{public}@", 44, 2, &dword_2203BD000, v37, v41, v38);

    sub_2203DF1B0(v33, v35);
    (*(v57 + 8))(v56, v36);
LABEL_29:
    v87 = v72;
    v88 = v73;
    v89 = v74;
    v83 = v68;
    v84 = v69;
    v85 = v70;
    v86 = v71;
    v79 = v64;
    v80 = v65;
    v81 = v66;
    v82 = v67;
    v75 = v60;
    v76 = v61;
    v77 = v62;
    v78 = v63;
    nullsub_1();
    v47 = v88;
    *(a1 + 192) = v87;
    *(a1 + 208) = v47;
    *(a1 + 224) = v89;
    v48 = v84;
    *(a1 + 128) = v83;
    *(a1 + 144) = v48;
    v49 = v86;
    *(a1 + 160) = v85;
    *(a1 + 176) = v49;
    v50 = v80;
    *(a1 + 64) = v79;
    *(a1 + 80) = v50;
    v51 = v82;
    *(a1 + 96) = v81;
    *(a1 + 112) = v51;
    v52 = v76;
    *a1 = v75;
    *(a1 + 16) = v52;
    v32 = v77;
    v31 = v78;
    goto LABEL_30;
  }

  sub_2203C2F70(v4, sub_2203C2CFC);
  if (qword_280FA07C8 != -1)
  {
    swift_once();
  }

  v23 = qword_280FA07D0;
  v24 = sub_22042BCA0();
  sub_22042B8D0("Found nil computational graph configuration in app config", 57, 2, &dword_2203BD000, v23, v24, MEMORY[0x277D84F90]);
  sub_2203C180C(&v90);
  v25 = v103;
  *(a1 + 192) = v102;
  *(a1 + 208) = v25;
  *(a1 + 224) = v104;
  v26 = v99;
  *(a1 + 128) = v98;
  *(a1 + 144) = v26;
  v27 = v101;
  *(a1 + 160) = v100;
  *(a1 + 176) = v27;
  v28 = v95;
  *(a1 + 64) = v94;
  *(a1 + 80) = v28;
  v29 = v97;
  *(a1 + 96) = v96;
  *(a1 + 112) = v29;
  v30 = v91;
  *a1 = v90;
  *(a1 + 16) = v30;
  v32 = v92;
  v31 = v93;
LABEL_30:
  *(a1 + 32) = v32;
  *(a1 + 48) = v31;
}

void sub_2203C2CFC(uint64_t a1)
{
  if (!qword_280FA2400)
  {
    sub_22042AE70();
    v1 = sub_22042BCF0();
    if (!v2)
    {
      atomic_store(v1, &qword_280FA2400);
    }
  }
}

uint64_t sub_2203C2D54()
{
  v0 = sub_22042AB90();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_22042AB80();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D090]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v8[15] = 0;
  sub_2203C2F20(0, &qword_280FA2488, MEMORY[0x277D839B0], MEMORY[0x277D6D0E8]);
  swift_allocObject();
  result = sub_22042ABB0();
  qword_280FA24A0 = result;
  return result;
}

void sub_2203C2F20(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = sub_22042ABA0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2203C2F70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2203C2FD0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_22042BA30();
  }

  sub_2203C1E9C();
  result = sub_22042BCE0();
  qword_280FA07D0 = result;
  return result;
}

uint64_t sub_2203C30A8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_2203C30C0()
{
  result = qword_280FA07B8;
  if (!qword_280FA07B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA07B8);
  }

  return result;
}

void sub_2203C3120(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2203C3184()
{
  sub_2203C3120(0, &unk_280FA25E0, MEMORY[0x277D69810], MEMORY[0x277D83940]);
  sub_22042AF00();

  v0 = sub_22042AEA0();
  sub_2203C33A4(0);
  sub_22042AED0();

  v1 = sub_22042AEA0();
  sub_2203CFDB8(0, &unk_280FA2890, MEMORY[0x277D695D8]);
  v2 = sub_22042AED0();

  return v2;
}

uint64_t sub_2203C3314(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_2203C33A4(uint64_t a1)
{
  if (!qword_280FA25D8)
  {
    sub_2203C3120(255, &unk_280FA25E0, MEMORY[0x277D69810], MEMORY[0x277D83940]);
    sub_22042A830();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280FA25D8);
    }
  }
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_2203C34EC(uint64_t *a1, uint64_t a2)
{
  v36 = sub_22042AAC0();
  v5 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  sub_2203C37C0(a2 + 16, v37);
  v8 = v38;
  v9 = v39;
  v10 = __swift_project_boxed_opaque_existential_1(v37, v38);
  v11 = *(v7 + 16);
  if (v11)
  {
    v29[1] = v10;
    v29[2] = v9;
    v29[3] = v8;
    v31 = v2;
    v40 = MEMORY[0x277D84F90];
    sub_2203C3A84(0, v11, 0);
    v12 = v40;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v15 = *(v13 + 64);
    v30 = v7;
    v16 = v7 + ((v15 + 32) & ~v15);
    v33 = *(v13 + 56);
    v34 = v14;
    v32 = (v13 - 8);
    do
    {
      v17 = v35;
      v18 = v36;
      v19 = v13;
      v34(v35, v16, v36);
      v20 = sub_22042AAB0();
      v22 = v21;
      (*v32)(v17, v18);
      v40 = v12;
      v24 = *(v12 + 16);
      v23 = *(v12 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_2203C3A84((v23 > 1), v24 + 1, 1);
        v12 = v40;
      }

      *(v12 + 16) = v24 + 1;
      v25 = v12 + 16 * v24;
      *(v25 + 32) = v20;
      *(v25 + 40) = v22;
      v16 += v33;
      --v11;
      v13 = v19;
    }

    while (v11);
    v7 = v30;
  }

  sub_22042A9E0();

  *(swift_allocObject() + 16) = v7;

  v26 = sub_22042AEA0();
  sub_2203C33A4(0);
  v27 = sub_22042AEE0();

  __swift_destroy_boxed_opaque_existential_1(v37);
  return v27;
}

uint64_t sub_2203C3788()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2203C37C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2203C3824()
{
  result = qword_280FA0440;
  if (!qword_280FA0440)
  {
    sub_2203C109C(255, &unk_280FA0448, MEMORY[0x277D6CD10], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA0440);
  }

  return result;
}

void sub_2203C38AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2203C38FC()
{
  if (!qword_280FA2418)
  {
    v0 = sub_22042AD60();
    if (!v1)
    {
      atomic_store(v0, &qword_280FA2418);
    }
  }
}

char *sub_2203C3960(char *result, int64_t a2, char a3, char *a4)
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
    sub_2203CFE74(0, &qword_280FA2560, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_2203C3A84(char *a1, int64_t a2, char a3)
{
  result = sub_2203C3960(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2203C3AD0()
{
  sub_2203C3C64(0, &unk_280FA23F0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);

  return sub_22042AEC0();
}

uint64_t sub_2203C3B48()
{
  *(*v1 + 536) = v0;

  if (v0)
  {
    v2 = sub_220421B84;
  }

  else
  {

    v2 = sub_2203C3CB4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_2203C3C64(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2203C3CB4()
{
  v2 = *(v0 + 504);
  v1 = *(v0 + 512);
  v3 = *(v0 + 496);
  sub_2203C1FFC(v0 + 248);
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 424);
  v5 = *(v0 + 456);
  *(v0 + 208) = *(v0 + 440);
  *(v0 + 224) = v5;
  v6 = *(v0 + 360);
  v7 = *(v0 + 392);
  v8 = *(v0 + 408);
  *(v0 + 144) = *(v0 + 376);
  *(v0 + 160) = v7;
  *(v0 + 176) = v8;
  *(v0 + 192) = v4;
  v9 = *(v0 + 296);
  v10 = *(v0 + 328);
  v11 = *(v0 + 344);
  *(v0 + 80) = *(v0 + 312);
  *(v0 + 96) = v10;
  *(v0 + 112) = v11;
  *(v0 + 128) = v6;
  v12 = *(v0 + 264);
  v13 = *(v0 + 280);
  *(v0 + 16) = *(v0 + 248);
  *(v0 + 32) = v12;
  *(v0 + 240) = *(v0 + 472);
  *(v0 + 48) = v13;
  *(v0 + 64) = v9;
  if (sub_2203C30A8(v0 + 16) == 1)
  {
    sub_2203C30C0();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v15 = *(v0 + 480);
    v16 = *(v0 + 112);
    v18 = *(v0 + 64);
    v17 = *(v0 + 80);
    *(v15 + 80) = *(v0 + 96);
    *(v15 + 96) = v16;
    *(v15 + 48) = v18;
    *(v15 + 64) = v17;
    v19 = *(v0 + 176);
    v21 = *(v0 + 128);
    v20 = *(v0 + 144);
    *(v15 + 144) = *(v0 + 160);
    *(v15 + 160) = v19;
    *(v15 + 112) = v21;
    *(v15 + 128) = v20;
    v23 = *(v0 + 208);
    v22 = *(v0 + 224);
    v24 = *(v0 + 192);
    *(v15 + 224) = *(v0 + 240);
    *(v15 + 192) = v23;
    *(v15 + 208) = v22;
    *(v15 + 176) = v24;
    v25 = *(v0 + 16);
    v26 = *(v0 + 48);
    *(v15 + 16) = *(v0 + 32);
    *(v15 + 32) = v26;
    *v15 = v25;
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_2203C3E30()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2203C3F24@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 64))(*(a1 + a2 - 16));
  *a3 = result;
  return result;
}

__n128 sub_2203C3F78(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2203C3F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_2203D1504(0, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 104);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2203C4064(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_2203D1504(0, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 104);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2203C4124(uint64_t a1, uint64_t a2)
{
  v4 = sub_22042AAC0();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2203C4190(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_22042AAC0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_2203C421C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22042B680();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_2203E16A8(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_2203C433C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22042B680();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_2203E16A8(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_2203C4470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22042B680();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_2203E16A8(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_2203C4590(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22042B680();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_2203E16A8(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_2203C46CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22042B680();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_2203C4798(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22042B680();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t _s21StocksPersonalization27ComputeServiceConfigurationV32FeedPersonalizationConfigurationV22UserEventConfigurationV15EventConditionsV17DurationConditionVwet_0(uint64_t a1, int a2)
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

uint64_t _s21StocksPersonalization27ComputeServiceConfigurationV32FeedPersonalizationConfigurationV22UserEventConfigurationV15EventConditionsV17DurationConditionVwst_0(uint64_t result, int a2, int a3)
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

uint64_t sub_2203C496C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_2203EEEF0(0, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata, MEMORY[0x277D83D88]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_22042B680();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_2203C4AC0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_2203EEEF0(0, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata, MEMORY[0x277D83D88]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_22042B680();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2203C4C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22042B680();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2203C4CD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22042B680();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2203C4D88(uint64_t a1, uint64_t a2)
{
  v4 = sub_22042AAC0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2203C4DF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22042AAC0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2203C4E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22042B680();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_2203F2458(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_2203F2458(0, &qword_280FA2210, MEMORY[0x277D21628], MEMORY[0x277D83D88]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_2203C5014(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22042B680();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  sub_2203F2458(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_2203F2458(0, &qword_280FA2210, MEMORY[0x277D21628], MEMORY[0x277D83D88]);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_2203C5338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2203F2FE0(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_22042B680();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_2203F2FE0(0, &qword_280FA2228, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_2203C54D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2203F2FE0(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_22042B680();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_2203F2FE0(0, &qword_280FA2228, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_2203C5684(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_22042B680();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 52)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_2203C5730(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_22042B680();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 52)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2203C57D0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22042B680();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_2203C5888(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_22042B680();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2203C5934(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2203C594C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2203C5984()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2203C59D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22042B680();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_220406D48(0, &qword_280FA2228, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 36);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_2203C5B24(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_22042B680();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_220406D48(0, &qword_280FA2228, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 36);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_2203C5CB0@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20));
  v4 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__length;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_2203C5E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22042B680();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2203C5F28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22042B680();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2203C5FE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22042AAC0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2203C604C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22042AAC0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2203C60BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22042AAC0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2203C6128(uint64_t a1, uint64_t a2)
{
  v4 = sub_22042AAC0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2203C61A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22042B680();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_220411E24(0, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle, MEMORY[0x277D83D88]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_220411E24(0, &qword_280FA2210, MEMORY[0x277D21628], MEMORY[0x277D83D88]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_2203C6348(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22042B680();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  sub_220411E24(0, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle, MEMORY[0x277D83D88]);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_220411E24(0, &qword_280FA2210, MEMORY[0x277D21628], MEMORY[0x277D83D88]);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_2203C64F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22042B460();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 56);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2203C65A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22042B460();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 56);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2203C6644()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2203C667C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2203C66B4()
{
  sub_220416944(0, &qword_280FA03B8, type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent, MEMORY[0x277D857B8]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v4 | 7);
}

uint64_t sub_2203C67BC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2203C67F8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22042A5B0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

void *sub_2203C68A4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_22042A5B0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2203C6948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22042A750();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2203C69F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22042A750();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

__n128 sub_2203C6AA8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2203C6AC4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2203C6B00()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2203C6B58()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2203C6B90@<X0>(uint64_t isUniquelyReferenced_nonNull_native@<X0>, uint64_t a2@<X8>)
{
  v300 = a2;
  v4 = MEMORY[0x277D83D88];
  sub_2203CB524(0, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v305 = &v291 - v6;
  v7 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v313 = *(v7 - 8);
  v314 = v7;
  MEMORY[0x28223BE20](v7);
  v324 = &v291 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203CB524(0, &unk_280FA22F8, MEMORY[0x277CFBB58], v4);
  MEMORY[0x28223BE20](v9 - 8);
  v292 = (&v291 - v10);
  v11 = sub_22042B130();
  MEMORY[0x28223BE20](v11 - 8);
  v301 = &v291 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v299 = sub_22042B370();
  v298 = *(v299 - 8);
  MEMORY[0x28223BE20](v299);
  v302 = &v291 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v312 = type metadata accessor for EventArticleFeatures(0);
  v322 = *(v312 - 8);
  v14 = MEMORY[0x28223BE20](v312);
  v323 = &v291 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v321 = &v291 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v320 = &v291 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v297 = &v291 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v319 = &v291 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v291 - v25;
  MEMORY[0x28223BE20](v24);
  v318 = &v291 - v27;
  if (qword_280FA07F0 != -1)
  {
LABEL_164:
    swift_once();
  }

  v28 = qword_280FA07F8;
  v29 = sub_22042BCA0();
  v30 = MEMORY[0x277D84F90];
  sub_22042B8D0("Creating a user event history features request", 46, 2, &dword_2203BD000, v28, v29, MEMORY[0x277D84F90]);
  v327 = 0;
  v328 = 0;
  v31 = sub_22042BCA0();
  v32 = sub_22042B8D0("Processing user event history sessions", 38, 2, &dword_2203BD000, v28, v31, v30);
  v326 = v30;
  v33 = *(isUniquelyReferenced_nonNull_native + 24);
  v325 = v2[2];
  MEMORY[0x28223BE20](v32);
  *(&v291 - 6) = &v328;
  *(&v291 - 5) = &v326;
  *(&v291 - 4) = v33;
  *(&v291 - 3) = &v327;
  *(&v291 - 2) = v2;
  *(&v291 - 1) = isUniquelyReferenced_nonNull_native;
  v303 = isUniquelyReferenced_nonNull_native;
  sub_2203BFCDC(0);
  isUniquelyReferenced_nonNull_native = v34;
  sub_2203BFD94(&qword_280FA22A0, sub_2203BFCDC, MEMORY[0x277D34B30]);

  sub_22042B4F0();

  sub_2203CB524(0, &qword_280FA01B0, sub_2203CAFEC, MEMORY[0x277D84560]);
  v310 = v35;
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_22042D3E0;
  v38 = v327;
  v37 = v328;
  v39 = MEMORY[0x277D83B88];
  v40 = MEMORY[0x277D83C10];
  *(v36 + 56) = MEMORY[0x277D83B88];
  *(v36 + 64) = v40;
  *(v36 + 32) = v38;
  *(v36 + 96) = v39;
  *(v36 + 104) = v40;
  *(v36 + 72) = v37;
  sub_22042BCA0();
  v311 = v28;
  sub_22042B8D0("Processed %ld events and %ld sessions", v291, v292);

  sub_22042ACE0();
  v41 = sub_22042ACD0();
  v42 = v314;
  if (v41)
  {
    v309 = v33;
    v43 = v326;
    v317 = *(v326 + 16);
    if (v317)
    {
      v44 = 0;
      v316 = v326 + ((*(v322 + 80) + 32) & ~*(v322 + 80));
      v2 = MEMORY[0x277D84F98];
      v315 = v326;
      do
      {
        if (v44 >= *(v43 + 16))
        {
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
          goto LABEL_164;
        }

        v45 = v318;
        sub_2203CB3DC(v316 + *(v322 + 72) * v44, v318, type metadata accessor for EventArticleFeatures);
        v47 = v45[2];
        v46 = v45[3];
        v49 = *v45;
        v48 = v45[1];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v325 = v2;
        v51 = sub_2203FFB78(v47, v46);
        v52 = v2[2];
        v53 = (v50 & 1) == 0;
        v54 = v52 + v53;
        if (__OFADD__(v52, v53))
        {
          goto LABEL_162;
        }

        v55 = v50;
        if (v2[3] >= v54)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v50)
            {
              goto LABEL_13;
            }
          }

          else
          {
            sub_220400E6C();
            v2 = v325;
            if (v55)
            {
              goto LABEL_13;
            }
          }
        }

        else
        {
          sub_2203FFBF0(v54, isUniquelyReferenced_nonNull_native);
          v2 = v325;
          v56 = sub_2203FFB78(v47, v46);
          if ((v55 & 1) != (v57 & 1))
          {
            result = sub_22042BF70();
            __break(1u);
            return result;
          }

          v51 = v56;
          if (v55)
          {
LABEL_13:

            goto LABEL_17;
          }
        }

        v2[(v51 >> 6) + 8] |= 1 << v51;
        v58 = (v2[6] + 16 * v51);
        *v58 = v47;
        v58[1] = v46;
        *(v2[7] + 8 * v51) = MEMORY[0x277D84F90];
        v59 = v2[2];
        v60 = __OFADD__(v59, 1);
        v61 = v59 + 1;
        if (v60)
        {
          goto LABEL_163;
        }

        v2[2] = v61;
LABEL_17:
        isUniquelyReferenced_nonNull_native = v2[7];
        v62 = *(isUniquelyReferenced_nonNull_native + 8 * v51);
        v63 = swift_isUniquelyReferenced_nonNull_native();
        *(isUniquelyReferenced_nonNull_native + 8 * v51) = v62;
        if ((v63 & 1) == 0)
        {
          v62 = sub_22041ECD0(0, *(v62 + 2) + 1, 1, v62);
          *(isUniquelyReferenced_nonNull_native + 8 * v51) = v62;
        }

        v65 = *(v62 + 2);
        v64 = *(v62 + 3);
        if (v65 >= v64 >> 1)
        {
          *(isUniquelyReferenced_nonNull_native + 8 * v51) = sub_22041ECD0((v64 > 1), v65 + 1, 1, v62);
        }

        ++v44;
        sub_2203CB444(v318, type metadata accessor for EventArticleFeatures);
        v66 = *(isUniquelyReferenced_nonNull_native + 8 * v51);
        *(v66 + 16) = v65 + 1;
        v67 = v66 + 16 * v65;
        *(v67 + 32) = v49;
        *(v67 + 40) = v48;
        v43 = v315;
      }

      while (v317 != v44);
    }

    v68 = MEMORY[0x277D837D0];
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_22042D3F0;
    sub_2203C153C(0, &qword_280FA25C8, v68, MEMORY[0x277D83940]);
    v70 = sub_22042B9C0();
    v72 = v71;

    *(v69 + 56) = v68;
    *(v69 + 64) = sub_2203C1FA8();
    *(v69 + 32) = v70;
    *(v69 + 40) = v72;
    v73 = sub_22042BCA0();
    sub_22042B8D0("Running event aggregation with history %{public}@", 49, 2, &dword_2203BD000, v311, v73, v69);

    v42 = v314;
    v33 = v309;
  }

  v74 = *(v326 + 16);
  v75 = v33 - v74;
  if (v33 > v74)
  {
    v76 = v303[4];
    v77 = *v303;
    *v26 = 0;
    *(v26 + 1) = 0xE000000000000000;
    *(v26 + 2) = 0;
    *(v26 + 3) = 0xE000000000000000;
    *(v26 + 4) = 0;
    *(v26 + 5) = 0xE000000000000000;
    *(v26 + 6) = 0;
    *(v26 + 7) = 0xE000000000000000;
    *(v26 + 8) = 0;
    *(v26 + 9) = 0xE000000000000000;
    *(v26 + 10) = sub_2203CB2EC(0, 0xE000000000000000, v76);
    v78 = MEMORY[0x277D84F90];
    *(v26 + 11) = MEMORY[0x277D84F90];
    *(v26 + 12) = 0;
    *(v26 + 13) = 0xE000000000000000;
    *(v26 + 28) = 0;
    *(v26 + 25) = v77;
    (*(v313 + 56))(&v26[*(v312 + 104)], 1, 1, v42);
    *(v26 + 116) = 0u;
    *(v26 + 132) = 0u;
    *(v26 + 19) = 0;
    *(v26 + 20) = 0xE000000000000000;
    *(v26 + 21) = 0;
    *(v26 + 22) = 0xE000000000000000;
    *(v26 + 23) = v78;
    *(v26 + 24) = v78;
    v79 = sub_2203CAE5C(v26, v75);
    sub_2204127C4(v79);
  }

  sub_2203CB524(0, &unk_280FA0248, sub_2203CB050, MEMORY[0x277D84560]);
  sub_2203CB050(0);
  v318 = v80;
  v81 = (*(*(v80 - 8) + 80) + 32) & ~*(*(v80 - 8) + 80);
  v316 = *(*(v80 - 8) + 72);
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_22042D400;
  v296 = v82;
  v315 = v82 + v81;
  sub_22042B120();
  v83 = v326;
  v84 = *(v326 + 16);
  v311 = v326;
  v310 = v84;
  if (v84)
  {
    v325 = MEMORY[0x277D84F90];
    sub_2203C3A84(0, v84, 0);
    v85 = v325;
    v86 = v83 + ((*(v322 + 80) + 32) & ~*(v322 + 80));
    v87 = *(v322 + 72);
    do
    {
      sub_2203CB3DC(v86, v26, type metadata accessor for EventArticleFeatures);
      v89 = *(v26 + 2);
      v88 = *(v26 + 3);

      sub_2203CB444(v26, type metadata accessor for EventArticleFeatures);
      v325 = v85;
      v91 = v85[2];
      v90 = v85[3];
      if (v91 >= v90 >> 1)
      {
        sub_2203C3A84((v90 > 1), v91 + 1, 1);
        v85 = v325;
      }

      v85[2] = v91 + 1;
      v92 = &v85[2 * v91];
      v92[4] = v89;
      v92[5] = v88;
      v86 += v87;
      --v84;
    }

    while (v84);
    v83 = v311;
    v84 = v310;
  }

  v93 = v315;
  sub_22042B300();
  v94 = v93 + v316;
  sub_22042B120();
  v95 = MEMORY[0x277D84F90];
  if (v84)
  {
    v325 = MEMORY[0x277D84F90];
    sub_2203CE85C(0, v84, 0);
    v95 = v325;
    v96 = v83 + ((*(v322 + 80) + 32) & ~*(v322 + 80));
    v97 = *(v322 + 72);
    v98 = v84;
    do
    {
      sub_2203CB3DC(v96, v26, type metadata accessor for EventArticleFeatures);
      v99 = *(v26 + 35);
      sub_2203CB444(v26, type metadata accessor for EventArticleFeatures);
      v325 = v95;
      v101 = v95[2];
      v100 = v95[3];
      if (v101 >= v100 >> 1)
      {
        sub_2203CE85C((v100 > 1), v101 + 1, 1);
        v95 = v325;
      }

      v95[2] = v101 + 1;
      *(v95 + v101 + 8) = v99;
      v96 += v97;
      --v98;
    }

    while (v98);
    v84 = v310;
  }

  v102 = *(v318 + 48);
  *(v94 + v102) = v95;
  v103 = *MEMORY[0x277CFBB50];
  v104 = sub_22042B310();
  v291 = *(v104 - 8);
  v105 = *(v291 + 104);
  v306 = v103;
  v309 = v104;
  v308 = v291 + 104;
  v307 = v105;
  (v105)(v94 + v102, v103);
  v106 = v315 + 2 * v316;
  sub_22042B120();
  v107 = MEMORY[0x277D84F90];
  if (v84)
  {
    v325 = MEMORY[0x277D84F90];
    sub_2203CE83C(0, v84, 0);
    v107 = v325;
    v108 = v83 + ((*(v322 + 80) + 32) & ~*(v322 + 80));
    v109 = *(v322 + 72);
    v110 = v84;
    do
    {
      sub_2203CB3DC(v108, v26, type metadata accessor for EventArticleFeatures);
      v111 = *(v26 + 36);
      sub_2203CB444(v26, type metadata accessor for EventArticleFeatures);
      v325 = v107;
      v113 = v107[2];
      v112 = v107[3];
      if (v113 >= v112 >> 1)
      {
        sub_2203CE83C((v112 > 1), v113 + 1, 1);
        v107 = v325;
      }

      v107[2] = v113 + 1;
      *(v107 + v113 + 8) = v111;
      v108 += v109;
      --v110;
    }

    while (v110);
  }

  v114 = *(v318 + 48);
  *(v106 + v114) = v107;
  v307(v106 + v114, *MEMORY[0x277CFBB48], v309);
  v295 = 0xD000000000000012;
  sub_22042B120();
  if (v84)
  {
    v325 = MEMORY[0x277D84F90];
    sub_2203C3A84(0, v84, 0);
    v115 = v325;
    v116 = v83 + ((*(v322 + 80) + 32) & ~*(v322 + 80));
    v117 = *(v322 + 72);
    do
    {
      sub_2203CB3DC(v116, v26, type metadata accessor for EventArticleFeatures);
      v119 = *(v26 + 4);
      v118 = *(v26 + 5);

      sub_2203CB444(v26, type metadata accessor for EventArticleFeatures);
      v325 = v115;
      v121 = v115[2];
      v120 = v115[3];
      if (v121 >= v120 >> 1)
      {
        sub_2203C3A84((v120 > 1), v121 + 1, 1);
        v115 = v325;
      }

      v115[2] = v121 + 1;
      v122 = &v115[2 * v121];
      v122[4] = v119;
      v122[5] = v118;
      v116 += v117;
      --v84;
    }

    while (v84);
    v83 = v311;
    v84 = v310;
  }

  sub_22042B300();
  sub_22042B120();
  if (v84)
  {
    v325 = MEMORY[0x277D84F90];
    sub_2203C3A84(0, v84, 0);
    v123 = v325;
    v124 = v83 + ((*(v322 + 80) + 32) & ~*(v322 + 80));
    v125 = *(v322 + 72);
    do
    {
      sub_2203CB3DC(v124, v26, type metadata accessor for EventArticleFeatures);
      v127 = *(v26 + 6);
      v126 = *(v26 + 7);

      sub_2203CB444(v26, type metadata accessor for EventArticleFeatures);
      v325 = v123;
      v129 = v123[2];
      v128 = v123[3];
      if (v129 >= v128 >> 1)
      {
        sub_2203C3A84((v128 > 1), v129 + 1, 1);
        v123 = v325;
      }

      v123[2] = v129 + 1;
      v130 = &v123[2 * v129];
      v130[4] = v127;
      v130[5] = v126;
      v124 += v125;
      --v84;
    }

    while (v84);
    v83 = v311;
    v84 = v310;
  }

  sub_22042B300();
  v294 = 0xD000000000000017;
  sub_22042B120();
  if (v84)
  {
    v325 = MEMORY[0x277D84F90];
    sub_2203C3A84(0, v84, 0);
    v131 = v325;
    v132 = v83 + ((*(v322 + 80) + 32) & ~*(v322 + 80));
    v133 = *(v322 + 72);
    do
    {
      sub_2203CB3DC(v132, v26, type metadata accessor for EventArticleFeatures);
      v135 = *(v26 + 8);
      v134 = *(v26 + 9);

      sub_2203CB444(v26, type metadata accessor for EventArticleFeatures);
      v325 = v131;
      v137 = v131[2];
      v136 = v131[3];
      if (v137 >= v136 >> 1)
      {
        sub_2203C3A84((v136 > 1), v137 + 1, 1);
        v131 = v325;
      }

      v131[2] = v137 + 1;
      v138 = &v131[2 * v137];
      v138[4] = v135;
      v138[5] = v134;
      v132 += v133;
      --v84;
    }

    while (v84);
    v83 = v311;
  }

  sub_22042B300();
  v293 = v315 + 6 * v316;
  sub_22042B120();
  v139 = *(v83 + 16);
  v304 = v139;
  v140 = v297;
  if (v139)
  {
    v141 = v83 + ((*(v322 + 80) + 32) & ~*(v322 + 80));
    v142 = MEMORY[0x277D84F90];
    v317 = *(v322 + 72);
    v143 = v319;
    do
    {
      sub_2203CB3DC(v141, v143, type metadata accessor for EventArticleFeatures);
      v325 = *(v143 + 80);
      sub_2203C153C(0, &qword_280FA25C8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
      sub_2203CB0C0();

      v144 = sub_22042BA00();
      v146 = v145;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v142 = sub_22041ECD0(0, *(v142 + 2) + 1, 1, v142);
      }

      v148 = *(v142 + 2);
      v147 = *(v142 + 3);
      v143 = v319;
      if (v148 >= v147 >> 1)
      {
        v142 = sub_22041ECD0((v147 > 1), v148 + 1, 1, v142);
        v143 = v319;
      }

      sub_2203CB444(v143, type metadata accessor for EventArticleFeatures);
      *(v142 + 2) = v148 + 1;
      v149 = &v142[16 * v148];
      *(v149 + 4) = v144;
      *(v149 + 5) = v146;
      v141 += v317;
      --v139;
    }

    while (v139);
  }

  sub_22042B300();
  v317 = v315 - v316;
  v293 = v315 - v316 + 8 * v316;
  v319 = 0xD000000000000019;
  sub_22042B120();
  v150 = v304;
  if (v304)
  {
    v151 = v311 + ((*(v322 + 80) + 32) & ~*(v322 + 80));
    v152 = MEMORY[0x277D84F90];
    v153 = *(v322 + 72);
    do
    {
      sub_2203CB3DC(v151, v140, type metadata accessor for EventArticleFeatures);
      v325 = *(v140 + 88);
      sub_2203C153C(0, &qword_280FA25C8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
      sub_2203CB0C0();

      v154 = sub_22042BA00();
      v156 = v155;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v152 = sub_22041ECD0(0, *(v152 + 2) + 1, 1, v152);
      }

      v158 = *(v152 + 2);
      v157 = *(v152 + 3);
      if (v158 >= v157 >> 1)
      {
        v152 = sub_22041ECD0((v157 > 1), v158 + 1, 1, v152);
      }

      sub_2203CB444(v140, type metadata accessor for EventArticleFeatures);
      *(v152 + 2) = v158 + 1;
      v159 = &v152[16 * v158];
      *(v159 + 4) = v154;
      *(v159 + 5) = v156;
      v151 += v153;
      --v150;
    }

    while (v150);
  }

  sub_22042B300();
  sub_22042B120();
  v160 = v310;
  if (v310)
  {
    v325 = MEMORY[0x277D84F90];
    sub_2203C3A84(0, v310, 0);
    v161 = v325;
    v162 = v311 + ((*(v322 + 80) + 32) & ~*(v322 + 80));
    v163 = *(v322 + 72);
    v164 = v160;
    do
    {
      sub_2203CB3DC(v162, v26, type metadata accessor for EventArticleFeatures);
      v166 = *(v26 + 12);
      v165 = *(v26 + 13);

      sub_2203CB444(v26, type metadata accessor for EventArticleFeatures);
      v325 = v161;
      v168 = v161[2];
      v167 = v161[3];
      if (v168 >= v167 >> 1)
      {
        sub_2203C3A84((v167 > 1), v168 + 1, 1);
        v161 = v325;
      }

      v161[2] = v168 + 1;
      v169 = &v161[2 * v168];
      v169[4] = v166;
      v169[5] = v165;
      v162 += v163;
      --v164;
    }

    while (v164);
    v170 = v311;
    v160 = v310;
  }

  else
  {
    v170 = v311;
  }

  sub_22042B300();
  v171 = v315 + 9 * v316;
  sub_22042B120();
  v172 = MEMORY[0x277D84F90];
  if (v160)
  {
    v325 = MEMORY[0x277D84F90];
    sub_2203CE85C(0, v160, 0);
    v172 = v325;
    v173 = v170 + ((*(v322 + 80) + 32) & ~*(v322 + 80));
    v174 = *(v322 + 72);
    v175 = v160;
    do
    {
      sub_2203CB3DC(v173, v26, type metadata accessor for EventArticleFeatures);
      v176 = *(v26 + 28);
      sub_2203CB444(v26, type metadata accessor for EventArticleFeatures);
      v325 = v172;
      v178 = v172[2];
      v177 = v172[3];
      if (v178 >= v177 >> 1)
      {
        sub_2203CE85C((v177 > 1), v178 + 1, 1);
        v172 = v325;
      }

      v172[2] = v178 + 1;
      *(v172 + v178 + 8) = v176;
      v173 += v174;
      --v175;
    }

    while (v175);
    v160 = v310;
  }

  v179 = *(v318 + 48);
  *(v171 + v179) = v172;
  v307(v171 + v179, v306, v309);
  v180 = v315 + 10 * v316;
  sub_22042B120();
  v181 = MEMORY[0x277D84F90];
  if (v160)
  {
    v325 = MEMORY[0x277D84F90];
    sub_2203CE85C(0, v160, 0);
    v181 = v325;
    v182 = v170 + ((*(v322 + 80) + 32) & ~*(v322 + 80));
    v183 = *(v322 + 72);
    v184 = v160;
    do
    {
      sub_2203CB3DC(v182, v26, type metadata accessor for EventArticleFeatures);
      v185 = *(v26 + 29);
      sub_2203CB444(v26, type metadata accessor for EventArticleFeatures);
      v325 = v181;
      v187 = v181[2];
      v186 = v181[3];
      if (v187 >= v186 >> 1)
      {
        sub_2203CE85C((v186 > 1), v187 + 1, 1);
        v181 = v325;
      }

      v181[2] = v187 + 1;
      *(v181 + v187 + 8) = v185;
      v182 += v183;
      --v184;
    }

    while (v184);
    v170 = v311;
    v160 = v310;
  }

  v188 = *(v318 + 48);
  *(v180 + v188) = v181;
  v307(v180 + v188, v306, v309);
  v189 = v315 + 11 * v316;
  sub_22042B120();
  v190 = MEMORY[0x277D84F90];
  if (v160)
  {
    v325 = MEMORY[0x277D84F90];
    sub_2203CE85C(0, v160, 0);
    v190 = v325;
    v191 = v170 + ((*(v322 + 80) + 32) & ~*(v322 + 80));
    v192 = *(v322 + 72);
    v193 = v160;
    do
    {
      sub_2203CB3DC(v191, v26, type metadata accessor for EventArticleFeatures);
      v194 = *(v26 + 30);
      sub_2203CB444(v26, type metadata accessor for EventArticleFeatures);
      v325 = v190;
      v196 = v190[2];
      v195 = v190[3];
      if (v196 >= v195 >> 1)
      {
        sub_2203CE85C((v195 > 1), v196 + 1, 1);
        v190 = v325;
      }

      v190[2] = v196 + 1;
      *(v190 + v196 + 8) = v194;
      v191 += v192;
      --v193;
    }

    while (v193);
    v170 = v311;
    v160 = v310;
  }

  v197 = *(v318 + 48);
  *(v189 + v197) = v190;
  v307(v189 + v197, v306, v309);
  v198 = v315 + 12 * v316;
  sub_22042B120();
  v199 = MEMORY[0x277D84F90];
  if (v160)
  {
    v325 = MEMORY[0x277D84F90];
    sub_2203CE85C(0, v160, 0);
    v199 = v325;
    v200 = v170 + ((*(v322 + 80) + 32) & ~*(v322 + 80));
    v201 = *(v322 + 72);
    v202 = v160;
    do
    {
      sub_2203CB3DC(v200, v26, type metadata accessor for EventArticleFeatures);
      v203 = *(v26 + 31);
      sub_2203CB444(v26, type metadata accessor for EventArticleFeatures);
      v325 = v199;
      v205 = v199[2];
      v204 = v199[3];
      if (v205 >= v204 >> 1)
      {
        sub_2203CE85C((v204 > 1), v205 + 1, 1);
        v199 = v325;
      }

      v199[2] = v205 + 1;
      *(v199 + v205 + 8) = v203;
      v200 += v201;
      --v202;
    }

    while (v202);
    v170 = v311;
    v160 = v310;
  }

  v206 = *(v318 + 48);
  *(v198 + v206) = v199;
  v307(v198 + v206, v306, v309);
  v207 = v315 + 13 * v316;
  sub_22042B120();
  v208 = MEMORY[0x277D84F90];
  if (v160)
  {
    v325 = MEMORY[0x277D84F90];
    sub_2203CE85C(0, v160, 0);
    v208 = v325;
    v209 = v170 + ((*(v322 + 80) + 32) & ~*(v322 + 80));
    v210 = *(v322 + 72);
    v211 = v160;
    do
    {
      sub_2203CB3DC(v209, v26, type metadata accessor for EventArticleFeatures);
      v212 = *(v26 + 32);
      sub_2203CB444(v26, type metadata accessor for EventArticleFeatures);
      v325 = v208;
      v214 = v208[2];
      v213 = v208[3];
      if (v214 >= v213 >> 1)
      {
        sub_2203CE85C((v213 > 1), v214 + 1, 1);
        v208 = v325;
      }

      v208[2] = v214 + 1;
      *(v208 + v214 + 8) = v212;
      v209 += v210;
      --v211;
    }

    while (v211);
    v170 = v311;
    v160 = v310;
  }

  v215 = *(v318 + 48);
  *(v207 + v215) = v208;
  v307(v207 + v215, v306, v309);
  v216 = v315 + 14 * v316;
  sub_22042B120();
  v217 = MEMORY[0x277D84F90];
  if (v160)
  {
    v325 = MEMORY[0x277D84F90];
    sub_2203CE85C(0, v160, 0);
    v217 = v325;
    v218 = v170 + ((*(v322 + 80) + 32) & ~*(v322 + 80));
    v219 = *(v322 + 72);
    v220 = v160;
    do
    {
      sub_2203CB3DC(v218, v26, type metadata accessor for EventArticleFeatures);
      v221 = *(v26 + 33);
      sub_2203CB444(v26, type metadata accessor for EventArticleFeatures);
      v325 = v217;
      v223 = v217[2];
      v222 = v217[3];
      if (v223 >= v222 >> 1)
      {
        sub_2203CE85C((v222 > 1), v223 + 1, 1);
        v217 = v325;
      }

      v217[2] = v223 + 1;
      *(v217 + v223 + 8) = v221;
      v218 += v219;
      --v220;
    }

    while (v220);
    v170 = v311;
    v160 = v310;
  }

  v224 = *(v318 + 48);
  *(v216 + v224) = v217;
  v307(v216 + v224, v306, v309);
  v225 = v317 + 16 * v316;
  sub_22042B120();
  v226 = MEMORY[0x277D84F90];
  if (v160)
  {
    v325 = MEMORY[0x277D84F90];
    sub_2203CE85C(0, v160, 0);
    v226 = v325;
    v227 = v170 + ((*(v322 + 80) + 32) & ~*(v322 + 80));
    v228 = *(v322 + 72);
    v229 = v160;
    do
    {
      sub_2203CB3DC(v227, v26, type metadata accessor for EventArticleFeatures);
      v230 = *(v26 + 34);
      sub_2203CB444(v26, type metadata accessor for EventArticleFeatures);
      v325 = v226;
      v232 = v226[2];
      v231 = v226[3];
      if (v232 >= v231 >> 1)
      {
        sub_2203CE85C((v231 > 1), v232 + 1, 1);
        v226 = v325;
      }

      v226[2] = v232 + 1;
      *(v226 + v232 + 8) = v230;
      v227 += v228;
      --v229;
    }

    while (v229);
    v160 = v310;
  }

  v233 = *(v318 + 48);
  *(v225 + v233) = v226;
  v307(v225 + v233, v306, v309);
  sub_22042B120();
  if (v160)
  {
    v325 = MEMORY[0x277D84F90];
    sub_2203C3A84(0, v160, 0);
    v234 = v325;
    v235 = v170 + ((*(v322 + 80) + 32) & ~*(v322 + 80));
    v236 = *(v322 + 72);
    v237 = v160;
    do
    {
      sub_2203CB3DC(v235, v26, type metadata accessor for EventArticleFeatures);
      v239 = *(v26 + 19);
      v238 = *(v26 + 20);

      sub_2203CB444(v26, type metadata accessor for EventArticleFeatures);
      v325 = v234;
      v241 = v234[2];
      v240 = v234[3];
      if (v241 >= v240 >> 1)
      {
        sub_2203C3A84((v240 > 1), v241 + 1, 1);
        v234 = v325;
      }

      v234[2] = v241 + 1;
      v242 = &v234[2 * v241];
      v242[4] = v239;
      v242[5] = v238;
      v235 += v236;
      --v237;
    }

    while (v237);
    v170 = v311;
    v160 = v310;
  }

  sub_22042B300();
  sub_22042B120();
  if (v160)
  {
    v325 = MEMORY[0x277D84F90];
    sub_2203C3A84(0, v160, 0);
    v243 = v325;
    v244 = v170 + ((*(v322 + 80) + 32) & ~*(v322 + 80));
    v245 = *(v322 + 72);
    do
    {
      v246 = v160;
      sub_2203CB3DC(v244, v26, type metadata accessor for EventArticleFeatures);
      v248 = *(v26 + 21);
      v247 = *(v26 + 22);

      sub_2203CB444(v26, type metadata accessor for EventArticleFeatures);
      v325 = v243;
      v250 = v243[2];
      v249 = v243[3];
      if (v250 >= v249 >> 1)
      {
        sub_2203C3A84((v249 > 1), v250 + 1, 1);
        v243 = v325;
      }

      v243[2] = v250 + 1;
      v251 = &v243[2 * v250];
      v251[4] = v248;
      v251[5] = v247;
      v244 += v245;
      v160 = v246 - 1;
    }

    while (v246 != 1);
    v170 = v311;
  }

  sub_22042B300();
  v317 = v315 + 18 * v316;
  sub_22042B120();
  v252 = v304;
  if (v304)
  {
    v253 = v170 + ((*(v322 + 80) + 32) & ~*(v322 + 80));
    v254 = MEMORY[0x277D84F90];
    v255 = *(v322 + 72);
    v256 = MEMORY[0x277D837D0];
    v257 = v320;
    do
    {
      sub_2203CB3DC(v253, v257, type metadata accessor for EventArticleFeatures);
      v325 = *(v257 + 184);
      sub_2203C153C(0, &qword_280FA25C8, v256, MEMORY[0x277D83940]);
      sub_2203CB0C0();

      v258 = sub_22042BA00();
      v260 = v259;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v254 = sub_22041ECD0(0, *(v254 + 2) + 1, 1, v254);
      }

      v262 = *(v254 + 2);
      v261 = *(v254 + 3);
      v257 = v320;
      if (v262 >= v261 >> 1)
      {
        v254 = sub_22041ECD0((v261 > 1), v262 + 1, 1, v254);
        v257 = v320;
      }

      sub_2203CB444(v257, type metadata accessor for EventArticleFeatures);
      *(v254 + 2) = v262 + 1;
      v263 = &v254[16 * v262];
      *(v263 + 4) = v258;
      *(v263 + 5) = v260;
      v253 += v255;
      --v252;
    }

    while (v252);
  }

  sub_22042B300();
  v320 = (v315 + 19 * v316);
  sub_22042B120();
  v264 = v304;
  if (v304)
  {
    v265 = v321;
    v266 = v311 + ((*(v322 + 80) + 32) & ~*(v322 + 80));
    v267 = *(v322 + 72);
    v268 = MEMORY[0x277D84F90];
    v269 = MEMORY[0x277D837D0];
    do
    {
      sub_2203CB3DC(v266, v265, type metadata accessor for EventArticleFeatures);
      v325 = *(v265 + 192);
      sub_2203C153C(0, &qword_280FA25C8, v269, MEMORY[0x277D83940]);
      sub_2203CB0C0();

      v270 = sub_22042BA00();
      v272 = v271;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v268 = sub_22041ECD0(0, *(v268 + 2) + 1, 1, v268);
      }

      v274 = *(v268 + 2);
      v273 = *(v268 + 3);
      v265 = v321;
      if (v274 >= v273 >> 1)
      {
        v268 = sub_22041ECD0((v273 > 1), v274 + 1, 1, v268);
        v265 = v321;
      }

      sub_2203CB444(v265, type metadata accessor for EventArticleFeatures);
      *(v268 + 2) = v274 + 1;
      v275 = &v268[16 * v274];
      *(v275 + 4) = v270;
      *(v275 + 5) = v272;
      v266 += v267;
      --v264;
    }

    while (v264);
  }

  sub_22042B300();
  v276 = v302;
  sub_22042B340();
  v277 = v311;
  if (*v303 > 0)
  {
    sub_22042B120();
    v278 = *(v277 + 16);
    v279 = MEMORY[0x277D84F90];
    if (v278)
    {
      v325 = MEMORY[0x277D84F90];
      sub_2203CE7EC(0, v278, 0);
      v279 = v325;
      v280 = v277 + ((*(v322 + 80) + 32) & ~*(v322 + 80));
      v281 = *(v322 + 72);
      v282 = (v313 + 48);
      v283 = v305;
      do
      {
        v284 = v323;
        sub_2203CB3DC(v280, v323, type metadata accessor for EventArticleFeatures);
        sub_2203CB13C(v284 + *(v312 + 104), v283, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        if ((*v282)(v283, 1, v314) == 1)
        {
          v285 = sub_2203CB1BC(v283, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
          MEMORY[0x28223BE20](v285);
          *(&v291 - 2) = v286;
          sub_2203BFD94(&unk_280FA0618, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
          sub_22042B810();
          v283 = v305;
          v284 = v323;
        }

        else
        {
          sub_2203CB588(v283, v324, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        }

        sub_2203CB444(v284, type metadata accessor for EventArticleFeatures);
        v325 = v279;
        v288 = *(v279 + 16);
        v287 = *(v279 + 24);
        if (v288 >= v287 >> 1)
        {
          sub_2203CE7EC((v287 > 1), v288 + 1, 1);
          v283 = v305;
          v279 = v325;
        }

        *(v279 + 16) = v288 + 1;
        sub_2203CB588(v324, v279 + ((*(v313 + 80) + 32) & ~*(v313 + 80)) + *(v313 + 72) * v288, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        v280 += v281;
        --v278;
      }

      while (v278);
      v276 = v302;
    }

    v289 = v292;
    sub_220414A38(v279, v292);

    (*(v291 + 56))(v289, 0, 1, v309);
    sub_22042B390();
  }

  (*(v298 + 32))(v300, v276, v299);
}

uint64_t sub_2203C9454(unint64_t *a1, BOOL *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v95 = a7;
  v96 = a8;
  v98 = a5;
  v99 = a4;
  v80 = sub_22042B600();
  v12 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v75 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x277D83D88];
  sub_2203CB524(0, &qword_280FA2228, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v74 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v78 = &v70 - v18;
  v19 = type metadata accessor for EventArticleFeatures(0);
  v77 = *(v19 - 8);
  MEMORY[0x28223BE20](v19 - 8);
  v90 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v94 = (&v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v93 = &v70 - v24;
  v92 = type metadata accessor for UserEventFeaturesFactory.Validation(0);
  MEMORY[0x28223BE20](v92);
  v91 = (&v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2203CB524(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, v14);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v70 - v27;
  v97 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  v29 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v79 = &v70 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0);
  v31 = *(v76 - 8);
  v32 = MEMORY[0x28223BE20](v76);
  v100 = &v70 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *a3 + 1;
  if (__OFADD__(*a3, 1))
  {
    goto LABEL_28;
  }

  v71 = a2;
  *a3 = v34;
  if (qword_280FA0348 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v35 = *algn_280FA56E8;
    MEMORY[0x28223BE20](v32);
    *(&v70 - 2) = a1;
    v88 = v35;
    v89 = v36;
    result = (v36)(sub_2203CB3D4);
    v38 = a1[2];
    v39 = *(v38 + 16);
    v40 = v79;
    if (!v39)
    {
      break;
    }

    v29 += 6;
    v41 = (v12 + 6);
    v72 = (v12 + 4);
    v73 = (v12 + 1);
    a1 = qword_280FA21D0;
    v86 = v28;
    v87 = a6;
    v84 = v29;
    v85 = v38;
    while (v39 <= *(v38 + 16))
    {
      --v39;
      sub_2203CB3DC(v38 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v39, v100, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
      if (*(*v99 + 16) >= v98)
      {
        result = sub_2203CB444(v100, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
        goto LABEL_25;
      }

      if (__OFADD__(*a6, 1))
      {
        goto LABEL_27;
      }

      ++*a6;
      v12 = qword_280FA21D0;
      sub_2203CB13C(v100, v28, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
      if ((*v29)(v28, 1, v97) == 1)
      {
        sub_2203CB1BC(v28, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
      }

      else
      {
        v42 = v31;
        sub_2203CB588(v28, v40, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
        v43 = v91;
        v44 = v40;
        sub_2203CA1D8(v40, v91, *(v96 + 8), *(v96 + 16));
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v46 = *v43;
        v47 = v43[1];
        if (EnumCaseMultiPayload == 1)
        {
          MEMORY[0x28223BE20](EnumCaseMultiPayload);
          *(&v70 - 2) = v46;
          *(&v70 - 1) = v47;
          v89(sub_2203CB4A4);

          sub_2203CB444(v44, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
          v28 = v86;
          a6 = v87;
          v40 = v44;
          v31 = v42;
          v29 = v84;
          v38 = v85;
        }

        else
        {
          sub_2203CB4AC(0);
          v49 = *(v48 + 48);
          v81 = *(v43 + *(v48 + 64));
          v50 = v93;
          v51 = sub_2203CB588(v43 + v49, v93, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
          MEMORY[0x28223BE20](v51);
          v82 = v46;
          v83 = v47;
          *(&v70 - 2) = v46;
          *(&v70 - 1) = v47;
          v89(sub_2203CB51C);
          sub_2203CB3DC(v50, v94, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
          v52 = *(v76 + 24);
          v53 = MEMORY[0x277D21570];
          v54 = v78;
          sub_2203CB13C(v100 + v52, v78, &qword_280FA2228, MEMORY[0x277D21570]);
          v12 = *v41;
          v55 = (*v41)(v54, 1, v80);
          sub_2203CB1BC(v54, &qword_280FA2228, v53);
          v56 = 0.0;
          v31 = v42;
          v38 = v85;
          if (v55 != 1)
          {
            v57 = v100 + v52;
            v58 = v74;
            sub_2203CB13C(v57, v74, &qword_280FA2228, MEMORY[0x277D21570]);
            v59 = v80;
            if ((v12)(v58, 1, v80) == 1)
            {
              v60 = v75;
              sub_22042B5F0();
              if ((v12)(v58, 1, v59) != 1)
              {
                sub_2203CB1BC(v58, &qword_280FA2228, MEMORY[0x277D21570]);
              }
            }

            else
            {
              v60 = v75;
              (*v72)(v75, v58, v59);
            }

            sub_22042B5D0();
            v62 = v61;
            (*v73)(v60, v59);
            v56 = v62;
          }

          sub_2203CFF58(v81, v82, v83, v94, *(v96 + 32), *v96, v90, v56);
          v63 = v99;
          v64 = *v99;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v63 = v64;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v64 = sub_22041EC9C(0, v64[2] + 1, 1, v64);
            *v99 = v64;
          }

          a6 = v87;
          v67 = v64[2];
          v66 = v64[3];
          if (v67 >= v66 >> 1)
          {
            v69 = sub_22041EC9C((v66 > 1), v67 + 1, 1, v64);
            *v99 = v69;
          }

          sub_2203CB444(v93, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
          v40 = v79;
          sub_2203CB444(v79, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
          v68 = *v99;
          *(v68 + 16) = v67 + 1;
          sub_2203CB588(v90, v68 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v67, type metadata accessor for EventArticleFeatures);
          v28 = v86;
          v29 = v84;
        }
      }

      result = sub_2203CB444(v100, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
      if (!v39)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    v32 = swift_once();
  }

LABEL_25:
  *v71 = *(*v99 + 16) >= v98;
  return result;
}

uint64_t sub_2203C9EFC(void *a1)
{
  v2 = MEMORY[0x277D21570];
  sub_2203CB524(0, &qword_280FA2228, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v14 - v4;
  v6 = sub_22042B600();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_22042BD70();
  MEMORY[0x223D7BDE0](0xD000000000000013, 0x8000000220431700);
  MEMORY[0x223D7BDE0](*a1, a1[1]);
  MEMORY[0x223D7BDE0](2108704, 0xE300000000000000);
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_Session(0);
  sub_2203CB13C(a1 + *(v10 + 36), v5, &qword_280FA2228, v2);
  v11 = *(v7 + 48);
  if (v11(v5, 1, v6) == 1)
  {
    sub_22042B5F0();
    if (v11(v5, 1, v6) != 1)
    {
      sub_2203CB1BC(v5, &qword_280FA2228, MEMORY[0x277D21570]);
    }
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
  }

  sub_22042BDF0();
  (*(v7 + 8))(v9, v6);
  MEMORY[0x223D7BDE0](0x206874697720, 0xE600000000000000);
  v14[1] = *(a1[2] + 16);
  v12 = sub_22042BF20();
  MEMORY[0x223D7BDE0](v12);

  MEMORY[0x223D7BDE0](0x73746E65766520, 0xE700000000000000);
  return v15;
}

uint64_t sub_2203CA1D8@<X0>(uint64_t a1@<X0>, void *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = MEMORY[0x277D83D88];
  sub_2203CB524(0, &qword_280FA2210, MEMORY[0x277D21628], MEMORY[0x277D83D88]);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v74 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v76 = &v69 - v13;
  MEMORY[0x28223BE20](v12);
  v78 = &v69 - v14;
  v15 = sub_22042B650();
  v80 = *(v15 - 8);
  v81 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v73 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v75 = &v69 - v19;
  MEMORY[0x28223BE20](v18);
  v77 = &v69 - v20;
  v21 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead(0);
  MEMORY[0x28223BE20](v21);
  v82 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  v24 = MEMORY[0x28223BE20](v23);
  v79 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v69 - v26;
  sub_2203CB524(0, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle, v8);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v69 - v29;
  v31 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = &v69 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event.article.getter(v30);
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    sub_2203CB1BC(v30, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
    *a2 = 0xD00000000000001ALL;
    a2[1] = 0x80000002204315E0;
    goto LABEL_3;
  }

  sub_2203CB588(v30, v34, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
  sub_2203CB3DC(a1, v27, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v45 = 0x8000000220431620;
      sub_2203CB444(v34, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
      v46 = 0xD00000000000001BLL;
    }

    else
    {
      v45 = 0x8000000220431600;
      sub_2203CB444(v34, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
      v46 = 0xD00000000000001DLL;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v37 = v82;
      sub_2203CB588(v27, v82, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
      if (a4 <= 0.0 || (sub_2203CB248(0.0, 1.0), v38 >= a4))
      {
        v83 = 0;
        v84 = 0xE000000000000000;
        sub_22042BD70();
        MEMORY[0x223D7BDE0](0xD000000000000024, 0x8000000220431670);
        sub_22042BBE0();
        MEMORY[0x223D7BDE0](0x74617320746F6E20, 0xEE00646569667369);
        v47 = v83;
        v48 = v84;
        sub_2203CB444(v37, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
        v49 = v34;
      }

      else
      {
        v70 = *(v21 + 24);
        v39 = v78;
        sub_2203CB13C(v37 + v70, v78, &qword_280FA2210, MEMORY[0x277D21628]);
        v41 = v80;
        v40 = v81;
        v42 = *(v80 + 48);
        v43 = v42(v39, 1, v81);
        v71 = v42;
        v72 = v34;
        if (v43 == 1)
        {
          v44 = v77;
          sub_22042B640();
          if (v42(v39, 1, v40) != 1)
          {
            sub_2203CB1BC(v39, &qword_280FA2210, MEMORY[0x277D21628]);
          }
        }

        else
        {
          v44 = v77;
          (*(v41 + 32))(v77, v39, v40);
        }

        sub_22042B620();
        v51 = v50;
        v52 = *(v41 + 8);
        v52(v44, v40);
        if (v51 >= a3)
        {
          sub_2203CB3DC(a1, v79, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
          v56 = swift_getEnumCaseMultiPayload();
          v57 = v71;
          if (v56 > 1)
          {
            if (v56 == 2)
            {
              v58 = 0xEB000000006C6F62;
              v59 = 0x6D79536863746177;
            }

            else
            {
              v58 = 0xED00006C6F626D79;
              v59 = 0x5368637461776E75;
            }
          }

          else if (v56)
          {
            v58 = 0xEF74697369566465;
            v59 = 0x65466C6F626D7973;
          }

          else
          {
            v58 = 0xEB00000000646165;
            v59 = 0x52656C6369747261;
          }

          sub_2203CB4AC(0);
          v61 = v60;
          v62 = *(v60 + 48);
          sub_2203CB444(v79, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
          *a2 = v59;
          a2[1] = v58;
          v63 = a2;
          sub_2203CB3DC(v72, a2 + v62, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
          v64 = v76;
          sub_2203CB13C(v82 + v70, v76, &qword_280FA2210, MEMORY[0x277D21628]);
          v65 = v81;
          if (v57(v64, 1, v81) == 1)
          {
            v66 = v75;
            sub_22042B640();
            if (v57(v64, 1, v65) != 1)
            {
              sub_2203CB1BC(v64, &qword_280FA2210, MEMORY[0x277D21628]);
            }
          }

          else
          {
            v66 = v75;
            (*(v80 + 32))(v75, v64, v65);
          }

          v67 = *(v61 + 64);
          v68 = sub_22042B630();
          v52(v66, v65);
          sub_2203CB444(v82, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
          sub_2203CB444(v72, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
          *(v63 + v67) = v68;
          type metadata accessor for UserEventFeaturesFactory.Validation(0);
          return swift_storeEnumTagMultiPayload();
        }

        v83 = 0;
        v84 = 0xE000000000000000;
        sub_22042BD70();
        MEMORY[0x223D7BDE0](0xD000000000000021, 0x80000002204316A0);
        v53 = v74;
        sub_2203CB13C(v82 + v70, v74, &qword_280FA2210, MEMORY[0x277D21628]);
        v54 = v71;
        if (v71(v53, 1, v40) == 1)
        {
          v55 = v73;
          sub_22042B640();
          if (v54(v53, 1, v40) != 1)
          {
            sub_2203CB1BC(v53, &qword_280FA2210, MEMORY[0x277D21628]);
          }
        }

        else
        {
          v55 = v73;
          (*(v80 + 32))(v73, v53, v40);
        }

        sub_22042B620();
        v52(v55, v40);
        sub_22042BBE0();
        MEMORY[0x223D7BDE0](0xD000000000000027, 0x80000002204316D0);
        sub_22042BBE0();
        v47 = v83;
        v48 = v84;
        sub_2203CB444(v82, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
        v49 = v72;
      }

      sub_2203CB444(v49, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
      *a2 = v47;
      a2[1] = v48;
LABEL_3:
      type metadata accessor for UserEventFeaturesFactory.Validation(0);
      return swift_storeEnumTagMultiPayload();
    }

    v45 = 0x8000000220431640;
    sub_2203CB444(v34, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
    v46 = 0xD000000000000020;
  }

  *a2 = v46;
  a2[1] = v45;
  type metadata accessor for UserEventFeaturesFactory.Validation(0);
  swift_storeEnumTagMultiPayload();
  return sub_2203CB444(v27, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
}

unint64_t sub_2203CAD5C(uint64_t a1, uint64_t a2)
{
  sub_22042BD70();

  MEMORY[0x223D7BDE0](a1, a2);
  return 0xD000000000000010;
}

unint64_t sub_2203CADDC(uint64_t a1, uint64_t a2)
{
  sub_22042BD70();

  MEMORY[0x223D7BDE0](a1, a2);
  return 0xD000000000000017;
}

uint64_t sub_2203CAE5C(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = type metadata accessor for EventArticleFeatures(0);
      v5 = sub_22042BB50();
      *(v5 + 16) = a2;
      v6 = *(v4 - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      sub_2203CB3DC(v3, v5 + v7, type metadata accessor for EventArticleFeatures);
      v8 = a2 - 1;
      if (a2 != 1)
      {
        v9 = *(v6 + 72);
        v10 = v5 + v9 + v7;
        do
        {
          sub_2203CB3DC(v3, v10, type metadata accessor for EventArticleFeatures);
          v10 += v9;
          --v8;
        }

        while (v8);
      }
    }

    else
    {
      v5 = MEMORY[0x277D84F90];
    }

    sub_2203CB444(v3, type metadata accessor for EventArticleFeatures);
    return v5;
  }

  return result;
}

uint64_t sub_2203CAF7C()
{

  return swift_deallocClassInstance();
}

unint64_t sub_2203CAFEC()
{
  result = qword_280FA0190;
  if (!qword_280FA0190)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280FA0190);
  }

  return result;
}

void sub_2203CB050(uint64_t a1)
{
  if (!qword_280FA2350)
  {
    sub_22042B130();
    sub_22042B310();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280FA2350);
    }
  }
}

unint64_t sub_2203CB0C0()
{
  result = qword_280FA0410;
  if (!qword_280FA0410)
  {
    sub_2203C153C(255, &qword_280FA25C8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA0410);
  }

  return result;
}

uint64_t sub_2203CB13C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2203CB524(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2203CB1BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2203CB524(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2203CB248(double a1, double a2)
{
  if (a1 == a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = a2 - a1;
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = 0;
  MEMORY[0x223D7C8D0](&v5, 8);
  if (v4 * vcvtd_n_f64_u64(v5 & 0x1FFFFFFFFFFFFFLL, 0x35uLL) + a1 == a2)
  {
    sub_2203CB248(a1, a2);
  }
}

void *sub_2203CB2EC(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return MEMORY[0x277D84F90];
    }

    v4 = result;
    v6 = sub_22042BB50();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v4;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        *(v9 - 1) = v4;
        *v9 = a2;

        v9 += 2;
        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

uint64_t type metadata accessor for UserEventFeaturesFactory.Validation(uint64_t a1)
{
  result = qword_280FA0CB0;
  if (!qword_280FA0CB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2203CB3DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2203CB444(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2203CB4AC(uint64_t a1)
{
  if (!qword_280FA0458)
  {
    type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_280FA0458);
    }
  }
}

void sub_2203CB524(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2203CB588(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2203CB644(uint64_t a1)
{
  sub_2203CB4AC(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

uint64_t sub_2203CB6B8(uint64_t a1, int a2)
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

uint64_t sub_2203CB6D8(uint64_t result, int a2, int a3)
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

id AccessCheckerHasBundleSubscription(_:to:lineNumber:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!a3)
  {
    return 0;
  }

  v6 = [objc_msgSend(a1 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v6, v6 + 1))
  {
    sub_22042BD00();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19 = v17;
  v20 = v18;
  if (!*(&v18 + 1))
  {
    sub_2203CB99C(&v19);
    goto LABEL_11;
  }

  sub_2203CBA4C();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v8 = 0;
    v9 = 0;
    goto LABEL_12;
  }

  v8 = v16;
  v9 = [v16 integerValue];
  if (v9 == -1)
  {
LABEL_20:

    if ((((v9 + a4) ^ a4) & 1) == 0)
    {
      return 0;
    }

LABEL_18:
    v12 = [objc_msgSend(a1 bundleSubscriptionProvider)];
    swift_unknownObjectRelease();
    v13 = [v12 bundleChannelIDs];

    v14 = sub_22042BA20();
    v15 = [v13 containsObject_];

    return v15;
  }

LABEL_12:
  if (objc_getAssociatedObject(v6, ~v9))
  {
    sub_22042BD00();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19 = v17;
  v20 = v18;
  if (!*(&v18 + 1))
  {
    sub_2203CB99C(&v19);
    goto LABEL_20;
  }

  sub_2203CBA4C();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  v10 = v16;
  v11 = [v10 integerValue];

  if (((v11 - a4) ^ (v9 + a4)))
  {
    goto LABEL_18;
  }

  return 0;
}

uint64_t sub_2203CB99C(uint64_t a1)
{
  sub_2203CB9F8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2203CB9F8()
{
  if (!qword_280FA0188)
  {
    v0 = sub_22042BCF0();
    if (!v1)
    {
      atomic_store(v0, &qword_280FA0188);
    }
  }
}

unint64_t sub_2203CBA4C()
{
  result = qword_280FA0350;
  if (!qword_280FA0350)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280FA0350);
  }

  return result;
}

BOOL AccessCheckerHasAccess(_:toItemPaid:isBundlePaid:channelID:lineNumber:)(id a1, char a2, char a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a2)
  {
    v11 = [a1 purchaseProvider];
    if (!a5)
    {
      swift_unknownObjectRelease();
      return 0;
    }

    v12 = [v11 purchasedTagIDs];
    v13 = sub_22042BBF0();

    LOBYTE(v12) = sub_2203CC928(a4, a5, v13);

    swift_unknownObjectRelease();
    if ((v12 & 1) == 0)
    {
      if ((a3 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    return 1;
  }

  if ((a3 & 1) == 0)
  {
    return 1;
  }

  if (!a5)
  {
    return 0;
  }

LABEL_8:
  v14 = [objc_msgSend(a1 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v14, v14 + 1))
  {
    sub_22042BD00();
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  v27 = v25;
  v28 = v26;
  if (!*(&v26 + 1))
  {
    sub_2203CB99C(&v27);
    goto LABEL_17;
  }

  sub_2203CBA4C();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v15 = 0;
    v16 = 0;
    goto LABEL_18;
  }

  v15 = v24;
  v16 = [v24 integerValue];
  if (v16 == -1)
  {
LABEL_26:

    if ((((v16 + a6) ^ a6) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_27;
  }

LABEL_18:
  if (objc_getAssociatedObject(v14, ~v16))
  {
    sub_22042BD00();
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  v27 = v25;
  v28 = v26;
  if (!*(&v26 + 1))
  {
    sub_2203CB99C(&v27);
    goto LABEL_26;
  }

  sub_2203CBA4C();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_26;
  }

  v17 = v24;
  v18 = [v17 integerValue];

  if ((((v18 - a6) ^ (v16 + a6)) & 1) == 0)
  {
    return 0;
  }

LABEL_27:
  v19 = [objc_msgSend(a1 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  v20 = [v19 bundleChannelIDs];

  v21 = sub_22042BA20();
  v22 = [v20 containsObject_];

  return (v22 & 1) != 0;
}

BOOL AccessCheckerHasAccess(_:to:lineNumber:)(void *a1, id a2, int a3)
{
  v6 = [a2 isPaid];
  if ([a2 respondsToSelector_])
  {
    v7 = [a2 isBundlePaid];
  }

  else
  {
    v7 = 0;
  }

  v8 = [a2 sourceChannel];
  if (v8)
  {
    v9 = [v8 identifier];
    swift_unknownObjectRelease();
    v10 = sub_22042BA30();
    v12 = v11;

    if (v6)
    {
      goto LABEL_6;
    }

LABEL_11:
    if (v7)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v10 = 0;
  v12 = 0;
  if ((v6 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v13 = [a1 purchaseProvider];
  if (v12)
  {
    v14 = [v13 purchasedTagIDs];
    v15 = sub_22042BBF0();

    LOBYTE(v14) = sub_2203CC928(v10, v12, v15);

    swift_unknownObjectRelease();
    if ((v14 & 1) == 0)
    {
      if (!v7)
      {
        goto LABEL_35;
      }

      goto LABEL_15;
    }

LABEL_12:

    return 1;
  }

  swift_unknownObjectRelease();
  if (!v7)
  {
    goto LABEL_35;
  }

LABEL_15:
  if (v12)
  {
    v17 = [objc_msgSend(a1 bundleSubscriptionProvider)];
    swift_unknownObjectRelease();
    if (objc_getAssociatedObject(v17, v17 + 1))
    {
      sub_22042BD00();
      swift_unknownObjectRelease();
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
    }

    v29 = v27;
    v30 = v28;
    if (*(&v28 + 1))
    {
      sub_2203CBA4C();
      if (swift_dynamicCast())
      {
        v18 = v26;
        v19 = [v26 integerValue];
        if (v19 == -1)
        {
LABEL_34:

          if ((((v19 + a3) ^ a3) & 1) == 0)
          {
            goto LABEL_35;
          }

          goto LABEL_31;
        }

        goto LABEL_25;
      }
    }

    else
    {
      sub_2203CB99C(&v29);
    }

    v18 = 0;
    v19 = 0;
LABEL_25:
    if (objc_getAssociatedObject(v17, ~v19))
    {
      sub_22042BD00();
      swift_unknownObjectRelease();
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
    }

    v29 = v27;
    v30 = v28;
    if (!*(&v28 + 1))
    {
      sub_2203CB99C(&v29);
      goto LABEL_34;
    }

    sub_2203CBA4C();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_34;
    }

    v20 = v26;
    v21 = [v20 integerValue];

    if (((v21 - a3) ^ (v19 + a3)))
    {
LABEL_31:
      v22 = [objc_msgSend(a1 bundleSubscriptionProvider)];
      swift_unknownObjectRelease();
      v23 = [v22 bundleChannelIDs];

      v24 = sub_22042BA20();
      v25 = [v23 containsObject_];

      return (v25 & 1) != 0;
    }

LABEL_35:
  }

  return 0;
}

{
  v6 = [a2 isPaid];
  v7 = [a2 isBundlePaid];
  v8 = [objc_msgSend(a2 sourceChannel)];
  swift_unknownObjectRelease();
  v9 = sub_22042BA30();
  v11 = v10;

  if ((v6 & 1) == 0)
  {
    if (v7)
    {
      goto LABEL_6;
    }

LABEL_8:

    return 1;
  }

  v12 = [objc_msgSend(a1 purchaseProvider)];
  v13 = sub_22042BBF0();

  LOBYTE(v12) = sub_2203CC928(v9, v11, v13);

  swift_unknownObjectRelease();
  if (v12)
  {
    goto LABEL_8;
  }

  if ((v7 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_6:
  v14 = [objc_msgSend(a1 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v14, v14 + 1))
  {
    sub_22042BD00();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v26 = v24;
  v27 = v25;
  if (!*(&v25 + 1))
  {
    sub_2203CB99C(&v26);
    goto LABEL_16;
  }

  sub_2203CBA4C();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v16 = 0;
    v17 = 0;
    goto LABEL_17;
  }

  v16 = v23;
  v17 = [v23 integerValue];
  if (v17 == -1)
  {
LABEL_26:

    if ((((v17 + a3) ^ a3) & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_23;
  }

LABEL_17:
  if (objc_getAssociatedObject(v14, ~v17))
  {
    sub_22042BD00();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v26 = v24;
  v27 = v25;
  if (!*(&v25 + 1))
  {
    sub_2203CB99C(&v26);
    goto LABEL_26;
  }

  sub_2203CBA4C();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_26;
  }

  v18 = v23;
  v19 = [v18 integerValue];

  if (((v19 - a3) ^ (v17 + a3)))
  {
LABEL_23:
    v20 = [objc_msgSend(a1 bundleSubscriptionProvider)];
    swift_unknownObjectRelease();
    v21 = [v20 bundleChannelIDs];

    v22 = sub_22042BA20();
    LOBYTE(v20) = [v21 containsObject_];

    return (v20 & 1) != 0;
  }

LABEL_27:

  return 0;
}

uint64_t AccessCheckerHasAccess(_:with:lineNumber:)(void *a1, void *a2, int a3)
{
  v6 = [a1 purchaseProvider];
  if ([swift_unknownObjectRetain() tagType] == 3)
  {
    v7 = [a2 asSection];
    if (!v7 || (v8 = [v7 parentID], swift_unknownObjectRelease(), !v8))
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_8;
    }
  }

  else
  {
    v8 = [a2 identifier];
  }

  v9 = sub_22042BA30();
  v11 = v10;

  v12 = [v6 purchasedTagIDs];
  v13 = sub_22042BBF0();

  LOBYTE(v12) = sub_2203CC928(v9, v11, v13);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if (v12)
  {
    return 1;
  }

LABEL_8:
  v15 = [objc_msgSend(a1 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v15, v15 + 1))
  {
    sub_22042BD00();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v26 = v24;
  v27 = v25;
  if (!*(&v25 + 1))
  {
    sub_2203CB99C(&v26);
    goto LABEL_16;
  }

  sub_2203CBA4C();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v16 = 0;
    v17 = 0;
    goto LABEL_17;
  }

  v16 = v23;
  v17 = [v23 integerValue];
  if (v17 == -1)
  {
LABEL_27:

    if ((((v17 + a3) ^ a3) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_23;
  }

LABEL_17:
  if (objc_getAssociatedObject(v15, ~v17))
  {
    sub_22042BD00();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v26 = v24;
  v27 = v25;
  if (!*(&v25 + 1))
  {
    sub_2203CB99C(&v26);
    goto LABEL_27;
  }

  sub_2203CBA4C();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_27;
  }

  v18 = v23;
  v19 = [v18 integerValue];

  if ((((v19 - a3) ^ (v17 + a3)) & 1) == 0)
  {
    return 0;
  }

LABEL_23:
  v20 = [objc_msgSend(a1 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  v21 = [a2 identifier];
  if (!v21)
  {
    sub_22042BA30();
    v21 = sub_22042BA20();
  }

  v22 = [v20 containsTagID_];

  return v22;
}

uint64_t sub_2203CC928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_22042BFC0();
  sub_22042BAA0();
  v6 = sub_22042BFE0();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_22042BF50() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t Assembly.__allocating_init()()
{
  v0 = swift_allocObject();
  sub_2203BF3A4(0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_22042D3E0;
  v2 = type metadata accessor for UserEventHistoryAssembly();
  v3 = swift_allocObject();
  *(v1 + 56) = v2;
  *(v1 + 64) = sub_2203BF484(qword_280FA0B78, type metadata accessor for UserEventHistoryAssembly, &unk_220430A5C);
  *(v1 + 32) = v3;
  v4 = type metadata accessor for WorkServiceAssembly();
  v5 = swift_allocObject();
  *(v1 + 96) = v4;
  *(v1 + 104) = sub_2203BF484(qword_280FA0FB8, type metadata accessor for WorkServiceAssembly, &unk_2204310C4);
  *(v1 + 72) = v5;
  *(v0 + 16) = v1;
  return v0;
}

uint64_t Assembly.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2203CCBC8(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_22042BC30();
  if (!v19)
  {
    return sub_22042BB40();
  }

  v41 = v19;
  v45 = sub_22042BDC0();
  v32 = sub_22042BDD0();
  sub_22042BDA0();
  result = sub_22042BC20();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_22042BC60();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_22042BDB0();
      result = sub_22042BC40();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t ComputeServiceScoringService.score<A>(items:identifiedBy:origin:)(uint64_t a1, char *a2, char *a3, char *a4, char *a5)
{
  v68 = a2;
  v71 = a3;
  v8 = sub_22042A680();
  v61 = *(v8 - 8);
  v62 = v8;
  MEMORY[0x28223BE20](v8);
  v60 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22042B130();
  v65 = *(v10 - 8);
  v66 = v10;
  MEMORY[0x28223BE20](v10);
  v63 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203CDA6C(0);
  v67 = v12;
  v64 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v70 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v89 = a1;
  v72[10] = a4;
  v72[11] = a5;
  KeyPath = swift_getKeyPath();
  v72[8] = a5;
  v72[9] = KeyPath;
  v15 = sub_22042BB60();
  swift_getWitnessTable();
  v16 = MEMORY[0x277D837D0];
  v17 = sub_22042BAF0();

  *&v89 = v17;
  v72[4] = a4;
  v72[5] = a5;
  v18 = swift_getKeyPath();
  v72[2] = a5;
  v72[3] = v18;
  WitnessTable = swift_getWitnessTable();
  v21 = sub_2203CCBC8(sub_2203CDB74, v72, v15, v16, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v20);

  *&v89 = v17;
  v22 = sub_22042BC50();
  if (v22)
  {

    return sub_2203CF834(MEMORY[0x277D84F90]);
  }

  v24 = v69;
  MEMORY[0x28223BE20](v22);
  *(&v60 - 8) = a4;
  *(&v60 - 7) = a5;
  *(&v60 - 6) = v21;
  *(&v60 - 5) = v24;
  *(&v60 - 4) = v71;
  *(&v60 - 3) = v17;
  *(&v60 - 2) = v68;
  sub_22042B1C0();
  v68 = v21;

  if (v24[OBJC_IVAR____TtC21StocksPersonalization28ComputeServiceScoringService_isSubscribed] == 1)
  {
    sub_22042B1D0();
    v101 = v86;
    v102 = v87;
    v103 = v88;
    v97 = v82;
    v98 = v83;
    v99 = v84;
    v100 = v85;
    v93 = v78;
    v94 = v79;
    v95 = v80;
    v96 = v81;
    v89 = v74;
    v90 = v75;
    v91 = v76;
    v92 = v77;
    sub_2203CF92C(&v89, v73);
    sub_2203CF988(&v89);
    v69 = v91;
  }

  else
  {
    sub_22042B1D0();
    v101 = v86;
    v102 = v87;
    v103 = v88;
    v97 = v82;
    v98 = v83;
    v99 = v84;
    v100 = v85;
    v93 = v78;
    v94 = v79;
    v95 = v80;
    v96 = v81;
    v89 = v74;
    v90 = v75;
    v91 = v76;
    v92 = v77;
    sub_2203CF92C(&v89, v73);
    sub_2203CF988(&v89);
    v69 = v95;
  }

  sub_2203CF9DC(&v89);
  v26 = v62;
  v25 = v63;
  v27 = v60;
  v28 = v61;
  (*(v61 + 16))(v60, v71, v62);
  v29 = (*(v28 + 88))(v27, v26);
  if (v29 == *MEMORY[0x277D692E0])
  {
    v30 = *(v28 + 8);

    v30(v27, v26);

LABEL_9:
    v31 = v67;
    v32 = v70;
    v33 = v25;
    goto LABEL_11;
  }

  if (v29 == *MEMORY[0x277D692D0])
  {
    goto LABEL_9;
  }

  v31 = v67;
  v32 = v70;
  v33 = v25;
  if (v29 != *MEMORY[0x277D692D8])
  {
    result = sub_22042BF40();
    __break(1u);
    return result;
  }

LABEL_11:

  sub_22042B120();
  sub_2203CFA30();
  v34 = sub_22042B2B0();
  v35 = *(v34 + 16);
  if (v35)
  {
    v36 = v32;
    *&v89 = MEMORY[0x277D84F90];
    v37 = v34;
    sub_2203CE87C(0, v35, 0);
    v38 = v37;
    v39 = v89;
    v40 = *(v89 + 16);
    v41 = 32;
    do
    {
      v42 = *(v38 + v41);
      *&v89 = v39;
      v43 = v39[3];
      if (v40 >= v43 >> 1)
      {
        sub_2203CE87C((v43 > 1), v40 + 1, 1);
        v38 = v37;
        v39 = v89;
      }

      v39[2] = v40 + 1;
      *&v39[v40 + 4] = v42;
      v41 += 4;
      ++v40;
      --v35;
    }

    while (v35);

    v32 = v36;
  }

  else
  {

    v39 = MEMORY[0x277D84F90];
  }

  v44 = v39[2];
  v45 = *(v68 + 2);
  if (v44 == v45)
  {
    if (qword_280FA0808 != -1)
    {
      swift_once();
    }

    sub_2203C1360(0, &qword_280FA01B0, &qword_280FA0190, MEMORY[0x277D84D98]);
    v46 = swift_allocObject();
    v47 = MEMORY[0x277D83B88];
    *(v46 + 16) = xmmword_22042D3F0;
    v48 = MEMORY[0x277D83C10];
    *(v46 + 56) = v47;
    *(v46 + 64) = v48;
    *(v46 + 32) = v44;
    sub_22042BCA0();
    sub_22042B8D0("Successfully scored %d items", v60);

    v49 = sub_2203CFADC(v68, v39);

    (*(v65 + 8))(v33, v66);
    (*(v64 + 8))(v32, v31);
    return v49;
  }

  else
  {

    *&v89 = 0;
    *(&v89 + 1) = 0xE000000000000000;
    sub_22042BD70();

    *&v89 = 0x20646E756F46;
    *(&v89 + 1) = 0xE600000000000000;
    *&v74 = v44;
    v50 = sub_22042BF20();
    MEMORY[0x223D7BDE0](v50);

    MEMORY[0x223D7BDE0](0xD000000000000015, 0x80000002204317A0);
    *&v74 = v45;
    v51 = sub_22042BF20();
    MEMORY[0x223D7BDE0](v51);

    v52 = v89;
    sub_2203CFA88();
    v53 = swift_allocError();
    *v54 = v52;
    *(v54 + 16) = 1;
    swift_willThrow();
    (*(v65 + 8))(v33, v66);
    (*(v64 + 8))(v32, v31);
    if (qword_280FA0650 != -1)
    {
      swift_once();
    }

    v55 = qword_280FA0658;
    v56 = sub_22042BC80();
    sub_2203C1360(0, &qword_280FA01B0, &qword_280FA0190, MEMORY[0x277D84D98]);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_22042D3F0;
    *&v89 = 0;
    *(&v89 + 1) = 0xE000000000000000;
    *&v74 = v53;
    sub_2203CFDB8(0, &unk_280FA01A0, MEMORY[0x277D84948]);
    sub_22042BDF0();
    v58 = v89;
    *(v57 + 56) = MEMORY[0x277D837D0];
    *(v57 + 64) = sub_2203C1FA8();
    *(v57 + 32) = v58;
    sub_22042B8D0("Unable to build and call subgraph computation: %{public}@", 57, 2, &dword_2203BD000, v55, v56, v57);

    v59 = sub_2203CF834(MEMORY[0x277D84F90]);
    MEMORY[0x223D7C730](v53);
    return v59;
  }
}

void sub_2203CDA6C(uint64_t a1)
{
  if (!qword_280FA2330)
  {
    sub_2203C0E7C();
    v1 = sub_22042B1E0();
    if (!v2)
    {
      atomic_store(v1, &qword_280FA2330);
    }
  }
}

uint64_t sub_2203CDAC8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 64))(*(a1 + a2 - 16));
  *a3 = result;
  return result;
}

void sub_2203CDB1C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 itemID];
  v4 = sub_22042BA30();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_2203CDBA0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v40 = a7;
  v42 = a6;
  v39 = a5;
  v38 = a4;
  v47 = a8;
  v11 = sub_22042B370();
  MEMORY[0x28223BE20](v11 - 8);
  v44 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22042A680();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_22042B130();
  v45 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v43 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[9];
  v49[8] = a1[8];
  v49[9] = v18;
  v49[10] = a1[10];
  v19 = a1[5];
  v49[4] = a1[4];
  v49[5] = v19;
  v20 = a1[7];
  v49[6] = a1[6];
  v49[7] = v20;
  v21 = a1[1];
  v49[0] = *a1;
  v49[1] = v21;
  v22 = a1[3];
  v49[2] = a1[2];
  v49[3] = v22;
  if (qword_280FA0808 != -1)
  {
    swift_once();
  }

  sub_2203C1360(0, &qword_280FA01B0, &qword_280FA0190, MEMORY[0x277D84D98]);
  v23 = swift_allocObject();
  v37 = xmmword_22042D3F0;
  *(v23 + 16) = xmmword_22042D3F0;
  v24 = *(a2 + 16);
  v25 = MEMORY[0x277D83C10];
  *(v23 + 56) = MEMORY[0x277D83B88];
  *(v23 + 64) = v25;
  *(v23 + 32) = v24;
  sub_22042BCA0();
  sub_22042B8D0("Attempting to score %d items", v37);

  v41 = a3;
  if (*(a3 + OBJC_IVAR____TtC21StocksPersonalization28ComputeServiceScoringService_isSubscribed) == 1)
  {
    v50 = *a1;
  }

  else
  {
    v50 = a1[4];
  }

  sub_2203CFEC4(&v50, v48);

  (*(v14 + 16))(v16, v38, v13);
  v26 = (*(v14 + 88))(v16, v13);
  if (v26 == *MEMORY[0x277D692E0])
  {
    v27 = *(v14 + 8);

    v27(v16, v13);

LABEL_10:

    v28 = v43;
    sub_22042B120();
    sub_2203CFDB8(0, &qword_280FA1128, &protocol descriptor for ArticleDataType);
    v29 = sub_22042BDE0();
    sub_2203CE184(v49, v29, v44);

    v42 = sub_22042A5C0();
    v41 = v30;
    v40 = qword_27CF524E0;
    sub_2203CFC84(0, &qword_280FA0258, MEMORY[0x277CFBAD0]);
    v31 = v45;
    v32 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = v37;
    v34 = v46;
    (*(v31 + 16))(v33 + v32, v28, v46);

    sub_2204211D0(v33);
    swift_setDeallocating();
    v35 = *(v31 + 8);
    v35(v33 + v32, v34);
    swift_deallocClassInstance();
    sub_22042B320();
    return (v35)(v28, v34);
  }

  if (v26 == *MEMORY[0x277D692D0] || v26 == *MEMORY[0x277D692D8])
  {
    goto LABEL_10;
  }

  result = sub_22042BF40();
  __break(1u);
  return result;
}

uint64_t sub_2203CE184@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v31 = a1;
  v7 = type metadata accessor for ArticleFeatures(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22042B530();
  v28 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v27 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v24 = v11;
    v26 = a3;
    v37 = MEMORY[0x277D84F90];
    sub_2203CE90C(0, v13, 0);
    v30 = *(v3 + OBJC_IVAR____TtC21StocksPersonalization28ComputeServiceScoringService_paidAccessChecker);
    v25 = v3;
    v29 = *(v3 + OBJC_IVAR____TtC21StocksPersonalization28ComputeServiceScoringService_isSubscribed);
    v14 = v37;
    v15 = a2 + 32;
    do
    {
      sub_2203C37C0(v15, v34);
      v16 = [objc_msgSend(v30 bundleSubscriptionProvider)];
      swift_unknownObjectRelease();
      v18 = v35;
      v17 = v36;
      __swift_project_boxed_opaque_existential_1(v34, v35);
      LODWORD(v17) = [v16 containsItem_];

      swift_unknownObjectRelease();
      sub_2203C37C0(v34, v33);
      v19 = v31;
      sub_2203CF92C(v31, &v32);
      sub_2204129E4(v33, v17, v19, v29, v10);
      __swift_destroy_boxed_opaque_existential_1(v34);
      v37 = v14;
      v21 = *(v14 + 16);
      v20 = *(v14 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_2203CE90C((v20 > 1), v21 + 1, 1);
        v14 = v37;
      }

      *(v14 + 16) = v21 + 1;
      sub_2203CFCD8(v10, v14 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v21);
      v15 += 40;
      --v13;
    }

    while (v13);
    v4 = v25;
    a3 = v26;
    v11 = v24;
  }

  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC21StocksPersonalization28ComputeServiceScoringService_articleFeaturesFactory), *(v4 + OBJC_IVAR____TtC21StocksPersonalization28ComputeServiceScoringService_articleFeaturesFactory + 24));
  v22 = v27;
  sub_22042B520();
  sub_220416D60(v14, v22, a3);

  return (*(v28 + 8))(v22, v11);
}

uint64_t ComputeServiceScoringService.prepareForUse()()
{
  sub_2203CFE74(0, &unk_280FA23F0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_22042AEF0();
}

uint64_t sub_2203CE55C(uint64_t (*a1)(uint64_t))
{
  if (qword_280FA0650 != -1)
  {
    swift_once();
  }

  v2 = qword_280FA0658;
  v3 = sub_22042BCA0();
  v4 = sub_22042B8D0("Preparing ComputeServiceScoringService for use", 46, 2, &dword_2203BD000, v2, v3, MEMORY[0x277D84F90]);
  return a1(v4);
}

uint64_t ComputeServiceScoringService.prepareForUse(completionHandler:)(uint64_t (*a1)(uint64_t))
{
  if (qword_280FA0650 != -1)
  {
    swift_once();
  }

  v2 = qword_280FA0658;
  v3 = sub_22042BCA0();
  v4 = sub_22042B8D0("Preparing ComputeServiceScoringService for use", 46, 2, &dword_2203BD000, v2, v3, MEMORY[0x277D84F90]);
  return a1(v4);
}

id ComputeServiceScoringService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ComputeServiceScoringService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_2203CE7CC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2203CEB5C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2203CE7EC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2203CF268(a1, a2, a3, *v3, &unk_280FA01F0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  *v3 = result;
  return result;
}

char *sub_2203CE83C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2203CEC80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2203CE85C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2203CED9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2203CE87C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2203CEEB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2203CE89C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2203CF268(a1, a2, a3, *v3, &qword_280FA0240, MEMORY[0x277D34B18], MEMORY[0x277D34B18]);
  *v3 = result;
  return result;
}

void *sub_2203CE8EC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2203CEFD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2203CE90C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2203CF268(a1, a2, a3, *v3, &qword_280FA0208, type metadata accessor for ArticleFeatures, type metadata accessor for ArticleFeatures);
  *v3 = result;
  return result;
}

void *sub_2203CE95C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2203CF268(a1, a2, a3, *v3, &unk_280FA0228, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  *v3 = result;
  return result;
}

void *sub_2203CE9AC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2203CF268(a1, a2, a3, *v3, &qword_27CF52380, MEMORY[0x277D6CED0], MEMORY[0x277D6CED0]);
  *v3 = result;
  return result;
}

void *sub_2203CE9FC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2203CF114(a1, a2, a3, *v3, &qword_280FA0210, &qword_280FA1128, &protocol descriptor for ArticleDataType);
  *v3 = result;
  return result;
}

void *sub_2203CEA34(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2203CF268(a1, a2, a3, *v3, &qword_280FA2570, type metadata accessor for ScorableHeadline, type metadata accessor for ScorableHeadline);
  *v3 = result;
  return result;
}

void *sub_2203CEA84(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2203CF268(a1, a2, a3, *v3, &qword_280FA2578, type metadata accessor for StocksTabiArticleData, type metadata accessor for StocksTabiArticleData);
  *v3 = result;
  return result;
}

void *sub_2203CEAD4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2203CF114(a1, a2, a3, *v3, &qword_280FA2590, &unk_280FA28C8, MEMORY[0x277D69258]);
  *v3 = result;
  return result;
}

void *sub_2203CEB0C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2203CF268(a1, a2, a3, *v3, &qword_280FA0270, MEMORY[0x277D69858], MEMORY[0x277D69858]);
  *v3 = result;
  return result;
}

char *sub_2203CEB5C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2203CFE74(0, &qword_280FA0278, MEMORY[0x277CC9318], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_2203CEC80(char *result, int64_t a2, char a3, char *a4)
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
    sub_2203CFE74(0, &qword_280FA01D8, MEMORY[0x277D83A90], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_2203CED9C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2203CFE74(0, &qword_280FA01C0, MEMORY[0x277D849A8], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_2203CEEB8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2203CFE74(0, &qword_280FA01E0, MEMORY[0x277D839F8], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_2203CEFD4(void *result, int64_t a2, char a3, void *a4)
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
    sub_2203CFD3C(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2203CFE74(0, &unk_280FA0400, MEMORY[0x277D83A90], MEMORY[0x277D83940]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2203CF114(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t a7)
{
  v10 = result;
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = a4[2];
  if (v12 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    sub_2203C1360(0, a5, a6, a7);
    v15 = swift_allocObject();
    v16 = _swift_stdlib_malloc_size(v15);
    v15[2] = v13;
    v15[3] = 2 * ((v16 - 32) / 40);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  if (v10)
  {
    if (v15 != a4 || v15 + 4 >= &a4[5 * v13 + 4])
    {
      memmove(v15 + 4, a4 + 4, 40 * v13);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2203CFDB8(0, a6, a7);
    swift_arrayInitWithCopy();
  }

  return v15;
}

void *sub_2203CF268(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_2203CFC84(0, a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_2203CF448(void *a1, void *a2, char a3, void *a4)
{
  v8 = a1[2];

  if (!v8 || !a2[2])
  {
    goto LABEL_24;
  }

  v10 = a1[4];
  v9 = a1[5];
  v43 = a1;
  v11 = a2[4];
  v12 = *a4;

  v13 = sub_2203FFB78(v10, v9);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  LOBYTE(v19) = v14;
  if (v12[3] < v18)
  {
    sub_2203FFEC4(v18, a3 & 1);
    v13 = sub_2203FFB78(v10, v9);
    if ((v19 & 1) == (v20 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v13 = sub_22042BF70();
    __break(1u);
  }

  if (a3)
  {
LABEL_8:
    if (v19)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v23 = v13;
  sub_220401008();
  v13 = v23;
  if (v19)
  {
LABEL_9:
    v21 = swift_allocError();
    swift_willThrow();
    MEMORY[0x223D7C740](v21);
    sub_2203CFDB8(0, &unk_280FA01A0, MEMORY[0x277D84948]);
    if ((swift_dynamicCast() & 1) == 0)
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      return MEMORY[0x223D7C730](v21);
    }

    goto LABEL_29;
  }

LABEL_12:
  v24 = *a4;
  *(*a4 + 8 * (v13 >> 6) + 64) |= 1 << v13;
  v25 = (v24[6] + 16 * v13);
  *v25 = v10;
  v25[1] = v9;
  *(v24[7] + 8 * v13) = v11;
  v26 = v24[2];
  v17 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (!v17)
  {
    v24[2] = v27;
    v28 = v43[2];
    if (v28 != 1)
    {
      v19 = v43 + 7;
      v29 = a2 + 5;
      v30 = 1;
      while (v30 < v28)
      {
        v31 = a2[2];
        if (v30 == v31)
        {
          goto LABEL_24;
        }

        if (v30 >= v31)
        {
          goto LABEL_28;
        }

        v10 = *(v19 - 1);
        v9 = *v19;
        v11 = *v29;
        v32 = *a4;

        v33 = sub_2203FFB78(v10, v9);
        v35 = v32[2];
        v36 = (v34 & 1) == 0;
        v17 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v17)
        {
          goto LABEL_25;
        }

        a3 = v34;
        if (v32[3] < v37)
        {
          sub_2203FFEC4(v37, 1);
          v33 = sub_2203FFB78(v10, v9);
          if ((a3 & 1) != (v38 & 1))
          {
            goto LABEL_6;
          }
        }

        if (a3)
        {
          goto LABEL_9;
        }

        v39 = *a4;
        *(*a4 + 8 * (v33 >> 6) + 64) |= 1 << v33;
        v40 = (v39[6] + 16 * v33);
        *v40 = v10;
        v40[1] = v9;
        *(v39[7] + 8 * v33) = v11;
        v41 = v39[2];
        v17 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (v17)
        {
          goto LABEL_26;
        }

        ++v30;
        v39[2] = v42;
        v28 = v43[2];
        v19 += 2;
        ++v29;
        if (v30 == v28)
        {
          goto LABEL_24;
        }
      }

      goto LABEL_27;
    }

LABEL_24:

    return swift_bridgeObjectRelease_n();
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  sub_22042BD70();
  MEMORY[0x223D7BDE0](0xD00000000000001BLL, 0x8000000220431970);
  sub_22042BDF0();
  MEMORY[0x223D7BDE0](39, 0xE100000000000000);
  result = sub_22042BE00();
  __break(1u);
  return result;
}

unint64_t sub_2203CF834(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2203CFE14();
    v3 = sub_22042BE40();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2203FFB78(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2203CFA30()
{
  result = qword_280FA2340;
  if (!qword_280FA2340)
  {
    sub_2203CDA6C(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA2340);
  }

  return result;
}

unint64_t sub_2203CFA88()
{
  result = qword_27CF52760;
  if (!qword_27CF52760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF52760);
  }

  return result;
}

uint64_t sub_2203CFADC(void *a1, void *a2)
{
  if (a2[2] >= a1[2])
  {
    v4 = a1[2];
  }

  else
  {
    v4 = a2[2];
  }

  if (v4)
  {
    sub_2203CFE14();
    v5 = sub_22042BE40();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v7 = v5;

  sub_2203CF448(a1, a2, 1, &v7);
  return v7;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2203CFBDC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2203CFC24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void sub_2203CFC84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22042BF30();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2203CFCD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleFeatures(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2203CFD3C(uint64_t a1)
{
  if (!qword_280FA01E8)
  {
    sub_2203CFE74(255, &unk_280FA0400, MEMORY[0x277D83A90], MEMORY[0x277D83940]);
    v1 = sub_22042BF30();
    if (!v2)
    {
      atomic_store(v1, &qword_280FA01E8);
    }
  }
}

uint64_t sub_2203CFDB8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_2203CFE14()
{
  if (!qword_280FA02F8)
  {
    v0 = sub_22042BE50();
    if (!v1)
    {
      atomic_store(v0, &qword_280FA02F8);
    }
  }
}

void sub_2203CFE74(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2203CFF58@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, float a8@<S0>)
{
  v183 = a6;
  v201 = a3;
  v202 = a5;
  v196 = a2;
  sub_2203D1504(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v190 = &v177 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v188 = &v177 - v15;
  v206 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  v199 = *(v206 - 8);
  v16 = MEMORY[0x28223BE20](v206);
  v205 = &v177 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v204 = &v177 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v189 = &v177 - v21;
  MEMORY[0x28223BE20](v20);
  v187 = &v177 - v22;
  sub_2203D1504(0, qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  MEMORY[0x28223BE20](v23 - 8);
  v186 = &v177 - v24;
  v25 = type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures(0);
  v184 = *(v25 - 8);
  v185 = v25;
  MEMORY[0x28223BE20](v25);
  v197 = &v177 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203D1504(0, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v180 = &v177 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v181 = &v177 - v31;
  MEMORY[0x28223BE20](v30);
  v182 = &v177 - v32;
  v203 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0);
  v33 = MEMORY[0x28223BE20](v203);
  v35 = &v177 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v195 = &v177 - v36;
  sub_2203D1504(0, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  v38 = MEMORY[0x28223BE20](v37 - 8);
  v192 = &v177 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v191 = &v177 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v44 = &v177 - v43;
  MEMORY[0x28223BE20](v42);
  v46 = &v177 - v45;
  v47 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata(0);
  v48 = *(v47 - 8);
  v49 = MEMORY[0x28223BE20](v47);
  v50 = MEMORY[0x28223BE20](v49);
  v51 = MEMORY[0x28223BE20](v50);
  v194 = &v177 - v52;
  MEMORY[0x28223BE20](v51);
  v56 = &v177 - v55;
  v200 = a4;
  v57 = *a4;
  v58 = a4[1];
  *a7 = v57;
  *(a7 + 8) = v58;
  v59 = v201;
  *(a7 + 16) = v196;
  *(a7 + 24) = v59;
  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_116;
  }

  if (a1 > 0x7FFFFFFF)
  {
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  v178 = v54;
  v179 = v53;
  *(a7 + 140) = a1;
  *(a7 + 144) = a8;
  v60 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  v61 = v200;
  v196 = *(v60 + 20);
  sub_2203D1558(&v196[v200], v46, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  v201 = *(v48 + 48);
  v62 = (v201)(v46, 1, v47);
  v193 = v35;
  if (v62 == 1)
  {

    sub_2203D15C4(v46, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
    v63 = 0xE700000000000000;
    v64 = 0x6E776F6E6B6E75;
LABEL_11:
    v70 = v192;
    v71 = v196;
    goto LABEL_23;
  }

  sub_2203D17B0(v46, v56, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  v65 = v56;
  v66 = v194;
  sub_2203D17B0(v65, v194, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  v67 = v195;
  sub_2203D17B0(v66, v195, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
  v68 = *(v67 + *(v203 + 20)) + OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__group;
  swift_beginAccess();
  v69 = *v68;
  LODWORD(v68) = *(v68 + 8);

  sub_2203D16EC(v67, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
  if (v68 != 1)
  {
    v64 = 0;
    v63 = 0xE000000000000000;
    v35 = v193;
    v61 = v200;
    goto LABEL_11;
  }

  v70 = v192;
  v71 = v196;
  if (v69 <= 2)
  {
    v61 = v200;
    if (!v69)
    {
      v63 = 0xE700000000000000;
      v64 = 0x6E776F6E6B6E75;
      goto LABEL_22;
    }

    if (v69 != 1)
    {
      v63 = 0xEA00000000007365;
      v64 = 0x69726F7453706F74;
      goto LABEL_22;
    }

    v63 = 0xE700000000000000;
    v72 = 1634891107;
  }

  else
  {
    v61 = v200;
    if (v69 <= 4)
    {
      if (v69 == 3)
      {
        v63 = 0xE600000000000000;
        v64 = 0x6C6F626D7973;
      }

      else
      {
        v63 = 0xE800000000000000;
        v64 = 0x6D6F724665726F6DLL;
      }

      goto LABEL_22;
    }

    if (v69 != 5)
    {
      v63 = 0xE200000000000000;
      v64 = 25697;
      goto LABEL_22;
    }

    v63 = 0xE700000000000000;
    v72 = 1634493810;
  }

  v64 = v72 | 0x64657400000000;
LABEL_22:
  v35 = v193;
LABEL_23:
  *(a7 + 32) = v64;
  *(a7 + 40) = v63;
  sub_2203D1558(&v71[v61], v44, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  if ((v201)(v44, 1, v47) == 1)
  {
    sub_2203D15C4(v44, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
    goto LABEL_25;
  }

  v76 = v44;
  v77 = v178;
  sub_2203D17B0(v76, v178, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  v78 = v77;
  v79 = v194;
  sub_2203D17B0(v78, v194, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  v80 = v195;
  sub_2203D17B0(v79, v195, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
  v81 = *(v80 + *(v203 + 20)) + OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__feed;
  swift_beginAccess();
  v82 = *v81;
  LODWORD(v81) = *(v81 + 8);
  sub_2203D16EC(v80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
  if (v81 == 1)
  {
    if (v82 > 1)
    {
      v71 = v196;
      if (v82 == 2)
      {
        v73 = 0xE600000000000000;
        v74 = 0x756F59726F66;
      }

      else
      {
        v73 = 0xE300000000000000;
        v74 = 6385509;
      }

      goto LABEL_26;
    }

    v71 = v196;
    if (v82)
    {
      v73 = 0xE600000000000000;
      v74 = 0x6C6F626D7973;
      goto LABEL_26;
    }

LABEL_25:
    v73 = 0xE700000000000000;
    v74 = 0x6E776F6E6B6E75;
LABEL_26:
    v75 = v191;
    goto LABEL_32;
  }

  v74 = 0;
  v73 = 0xE000000000000000;
  v75 = v191;
  v71 = v196;
LABEL_32:
  *(a7 + 48) = v74;
  *(a7 + 56) = v73;
  sub_2203D1558(&v71[v61], v75, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  if ((v201)(v75, 1, v47) == 1)
  {
    sub_2203D15C4(v75, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
    v83 = 0;
    v84 = 1;
  }

  else
  {
    v85 = v75;
    v86 = v179;
    sub_2203D17B0(v85, v179, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
    v87 = v86;
    v88 = v194;
    sub_2203D17B0(v87, v194, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
    v89 = v195;
    sub_2203D17B0(v88, v195, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
    v90 = *(v89 + *(v203 + 20)) + OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__viewAction;
    swift_beginAccess();
    v83 = *v90;
    v84 = *(v90 + 8);
    v91 = v89;
    v71 = v196;
    sub_2203D16EC(v91, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
  }

  v211 = v83;
  v212 = v84;
  v92 = sub_220422C2C();
  if (v93)
  {
    v94 = v92;
  }

  else
  {
    v94 = 0;
  }

  v95 = 0xE000000000000000;
  if (v93)
  {
    v95 = v93;
  }

  *(a7 + 64) = v94;
  *(a7 + 72) = v95;
  sub_2203D1558(&v71[v61], v70, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  if ((v201)(v70, 1, v47) != 1)
  {
    sub_2203D17B0(v70, v35, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
    goto LABEL_44;
  }

  sub_2203D15C4(v70, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  sub_22042B670();
  v56 = *(v203 + 20);
  if (qword_280FA1A10 != -1)
  {
    goto LABEL_118;
  }

  while (1)
  {
    *&v35[v56] = qword_280FA1A18;

LABEL_44:
    v96 = *&v35[*(v203 + 20)];
    swift_beginAccess();
    v209 = 0;
    v210 = 0xE000000000000000;

    v97 = sub_22042BB20();

    *(a7 + 80) = v97;
    v98 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__adCategories;
    swift_beginAccess();
    v99 = *(v96 + v98);
    *(a7 + 88) = v99;
    swift_beginAccess();
    v100 = *(v96 + 32);
    *(a7 + 96) = *(v96 + 24);
    *(a7 + 104) = v100;
    v56 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__length;
    swift_beginAccess();
    v101 = *(v96 + v56);
    if ((v101 & 0x80000000) == 0)
    {
      break;
    }

LABEL_117:
    __break(1u);
LABEL_118:
    swift_once();
  }

  *(a7 + 112) = v101;
  v198 = a7;
  *(a7 + 200) = v183;
  v102 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__embedding;
  swift_beginAccess();
  v203 = v99;
  v103 = v181;
  sub_2203D1558(v96 + v102, v181, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v104 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v201 = *(v104 - 8);
  v105 = 1;
  v196 = *(v201 + 48);
  v106 = (v196)(v103, 1, v104);

  sub_2203D15C4(v103, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v107 = v106 == 1;
  v108 = v206;
  v109 = v182;
  v203 = v96;
  if (!v107)
  {
    v110 = v96 + v102;
    v111 = v180;
    sub_2203D1558(v110, v180, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    v112 = v196;
    if ((v196)(v111, 1, v104) == 1)
    {
      *v109 = xmmword_22042D6B0;
      sub_22042B670();
      if (v112(v111, 1, v104) != 1)
      {
        sub_2203D15C4(v111, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      }

      v105 = 0;
      v96 = v203;
    }

    else
    {
      sub_2203D17B0(v111, v109, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      v105 = 0;
    }
  }

  (*(v201 + 56))(v109, v105, 1, v104);
  v113 = type metadata accessor for EventArticleFeatures(0);
  v114 = v198;
  sub_2203D166C(v109, v198 + *(v113 + 104));
  v115 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__features;
  swift_beginAccess();
  v116 = v186;
  sub_2203D1558(v96 + v115, v186, qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  v117 = v185;
  v118 = *(v184 + 48);
  v119 = v118(v116, 1, v185);
  v120 = v188;
  if (v119 == 1)
  {
    v121 = v197;
    *(v197 + 8) = 0;
    *v121 = 0;
    sub_22042B670();
    v122 = v118(v116, 1, v117);
    v123 = v190;
    v124 = v187;
    if (v122 != 1)
    {
      sub_2203D15C4(v116, qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
    }

    if (*v121)
    {
LABEL_55:
      *(v114 + 116) = 1;
      if ((*(v121 + 1) & 1) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_63;
    }
  }

  else
  {
    v121 = v197;
    sub_2203D17B0(v116, v197, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
    v123 = v190;
    v124 = v187;
    if (*v121)
    {
      goto LABEL_55;
    }
  }

  *(v114 + 116) = 0;
  if ((*(v121 + 1) & 1) == 0)
  {
LABEL_56:
    *(v114 + 120) = 0;
    if ((*(v121 + 3) & 1) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(v114 + 120) = 1;
  if ((*(v121 + 3) & 1) == 0)
  {
LABEL_57:
    *(v114 + 124) = 0;
    if ((*(v121 + 4) & 1) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(v114 + 124) = 1;
  if ((*(v121 + 4) & 1) == 0)
  {
LABEL_58:
    *(v114 + 128) = 0;
    if ((*(v121 + 6) & 1) == 0)
    {
      goto LABEL_59;
    }

LABEL_66:
    v125 = 1;
    *(v114 + 132) = 1;
    if (*(v121 + 5))
    {
      goto LABEL_68;
    }

    goto LABEL_67;
  }

LABEL_65:
  *(v114 + 128) = 1;
  if (*(v121 + 6))
  {
    goto LABEL_66;
  }

LABEL_59:
  *(v114 + 132) = 0;
  if (*(v121 + 5))
  {
    v125 = 1;
    goto LABEL_68;
  }

LABEL_67:
  v125 = 0;
LABEL_68:
  *(v114 + 136) = v125;
  v126 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__groupBackingStock;
  v127 = v203;
  swift_beginAccess();
  sub_2203D1558(v127 + v126, v120, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  v128 = *(v199 + 48);
  if (v128(v120, 1, v108) == 1)
  {
    sub_22042B670();
    v129 = (v124 + *(v108 + 20));
    *v129 = 0;
    v129[1] = 0;
    v130 = (v124 + *(v108 + 24));
    *v130 = 0;
    v130[1] = 0;
    if (v128(v120, 1, v108) != 1)
    {
      sub_2203D15C4(v120, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
    }
  }

  else
  {
    sub_2203D17B0(v120, v124, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  }

  v131 = (v124 + *(v108 + 20));
  v133 = *v131;
  v132 = v131[1];

  sub_2203D16EC(v124, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  if (v132)
  {
    v134 = v133;
  }

  else
  {
    v134 = 0;
  }

  v135 = 0xE000000000000000;
  if (v132)
  {
    v135 = v132;
  }

  *(v114 + 152) = v134;
  *(v114 + 160) = v135;
  v136 = v203;
  sub_2203D1558(v203 + v126, v123, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  if (v128(v123, 1, v108) == 1)
  {
    v137 = v189;
    sub_22042B670();
    v138 = (v137 + *(v108 + 20));
    *v138 = 0;
    v138[1] = 0;
    v139 = (v137 + *(v108 + 24));
    *v139 = 0;
    v139[1] = 0;
    if (v128(v123, 1, v108) != 1)
    {
      sub_2203D15C4(v123, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
    }
  }

  else
  {
    v137 = v189;
    sub_2203D17B0(v123, v189, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  }

  v140 = (v137 + *(v108 + 24));
  v142 = *v140;
  v141 = v140[1];

  sub_2203D16EC(v137, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  if (v141)
  {
    v143 = v142;
  }

  else
  {
    v143 = 0;
  }

  if (v141)
  {
    v144 = v141;
  }

  else
  {
    v144 = 0xE000000000000000;
  }

  *(v114 + 168) = v143;
  *(v114 + 176) = v144;
  v145 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__stocks;
  swift_beginAccess();
  v146 = *(v136 + v145);
  v147 = *(v146 + 16);
  if (v147)
  {
    v201 = v145;
    v207 = MEMORY[0x277D84F90];

    sub_2203C3A84(0, v147, 0);
    v148 = v207;
    v149 = *(v199 + 80);
    v196 = v146;
    v150 = v146 + ((v149 + 32) & ~v149);
    v151 = *(v199 + 72);
    do
    {
      v152 = v204;
      sub_2203D174C(v150, v204);
      v153 = (v152 + *(v108 + 20));
      v154 = v153[1];
      if (v154)
      {
        v155 = *v153;
      }

      else
      {
        v155 = 0;
      }

      if (v154)
      {
        v156 = v153[1];
      }

      else
      {
        v156 = 0xE000000000000000;
      }

      sub_2203D16EC(v152, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
      v207 = v148;
      v158 = *(v148 + 16);
      v157 = *(v148 + 24);
      if (v158 >= v157 >> 1)
      {
        sub_2203C3A84((v157 > 1), v158 + 1, 1);
        v148 = v207;
      }

      *(v148 + 16) = v158 + 1;
      v159 = v148 + 16 * v158;
      *(v159 + 32) = v155;
      *(v159 + 40) = v156;
      v150 += v151;
      --v147;
      v108 = v206;
    }

    while (v147);

    v114 = v198;
    v136 = v203;
    v145 = v201;
  }

  v207 = 0;
  v208 = 0xE000000000000000;
  v160 = sub_22042BB20();

  *(v114 + 184) = v160;
  v161 = *(v136 + v145);
  v162 = *(v161 + 16);
  if (v162)
  {
    v207 = MEMORY[0x277D84F90];

    sub_2203C3A84(0, v162, 0);
    v163 = v207;
    v164 = *(v199 + 80);
    v204 = v161;
    v165 = v161 + ((v164 + 32) & ~v164);
    v166 = *(v199 + 72);
    do
    {
      v167 = v205;
      sub_2203D174C(v165, v205);
      v168 = (v167 + *(v108 + 24));
      v169 = v168[1];
      if (v169)
      {
        v170 = *v168;
      }

      else
      {
        v170 = 0;
      }

      if (v169)
      {
        v171 = v168[1];
      }

      else
      {
        v171 = 0xE000000000000000;
      }

      sub_2203D16EC(v167, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
      v207 = v163;
      v173 = *(v163 + 16);
      v172 = *(v163 + 24);
      if (v173 >= v172 >> 1)
      {
        sub_2203C3A84((v172 > 1), v173 + 1, 1);
        v163 = v207;
      }

      *(v163 + 16) = v173 + 1;
      v174 = v163 + 16 * v173;
      *(v174 + 32) = v170;
      *(v174 + 40) = v171;
      v165 += v166;
      --v162;
      v108 = v206;
    }

    while (v162);

    v114 = v198;
  }

  v207 = 0;
  v208 = 0xE000000000000000;
  v175 = sub_22042BB20();

  sub_2203D16EC(v200, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
  sub_2203D16EC(v197, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  result = sub_2203D16EC(v193, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
  *(v114 + 192) = v175;
  return result;
}

void sub_2203D1504(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22042BCF0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2203D1558(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2203D1504(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2203D15C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2203D1504(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for EventArticleFeatures(uint64_t a1)
{
  result = qword_280FA0F08;
  if (!qword_280FA0F08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2203D166C(uint64_t a1, uint64_t a2)
{
  sub_2203D1504(0, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2203D16EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2203D174C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2203D17B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2203D1840(uint64_t a1)
{
  sub_2203D193C();
  if (v1 <= 0x3F)
  {
    sub_2203D1504(319, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2203D193C()
{
  if (!qword_280FA25C8)
  {
    v0 = sub_22042BB60();
    if (!v1)
    {
      atomic_store(v0, &qword_280FA25C8);
    }
  }
}

uint64_t sub_2203D198C@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v123 = a4;
  v5 = MEMORY[0x277D83D88];
  sub_2203DE8BC(0, &qword_280FA2468, sub_2203DED10, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v100 = &v95 - v7;
  sub_2203DED10(0);
  v99 = v8;
  v98 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v95 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203DE8BC(0, &qword_280FA2478, sub_2203DEC7C, v5);
  MEMORY[0x28223BE20](v10 - 8);
  v105 = &v95 - v11;
  sub_2203DEC7C(0);
  v103 = *(v12 - 8);
  v104 = v12;
  MEMORY[0x28223BE20](v12);
  v97 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203DE8BC(0, &qword_280FA2438, sub_2203DE9E4, v5);
  MEMORY[0x28223BE20](v14 - 8);
  v110 = &v95 - v15;
  sub_2203DE9E4(0);
  v108 = *(v16 - 8);
  v109 = v16;
  MEMORY[0x28223BE20](v16);
  v102 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203DE8BC(0, &qword_280FA2428, sub_2203DEA78, v5);
  MEMORY[0x28223BE20](v18 - 8);
  v115 = &v95 - v19;
  sub_2203DEA78(0);
  v113 = *(v20 - 8);
  v114 = v20;
  MEMORY[0x28223BE20](v20);
  v107 = &v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203DE8BC(0, &qword_280FA2448, sub_2203DEBE8, v5);
  MEMORY[0x28223BE20](v22 - 8);
  v119 = &v95 - v23;
  sub_2203DEBE8(0);
  v117 = *(v24 - 8);
  v118 = v24;
  MEMORY[0x28223BE20](v24);
  v112 = &v95 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203DE8BC(0, &qword_280FA2458, sub_2203DEB54, v5);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v95 - v27;
  v29 = sub_22042ABE0();
  v30 = *(v29 - 8);
  v31 = MEMORY[0x28223BE20](v29);
  v96 = &v95 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v101 = &v95 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v106 = &v95 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v111 = &v95 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v116 = &v95 - v40;
  MEMORY[0x28223BE20](v39);
  v42 = &v95 - v41;
  sub_2203DEB54(0);
  v44 = v43;
  v45 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v47 = &v95 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent(0);
  v121 = *(v48 - 8);
  v122 = v48;
  MEMORY[0x28223BE20](v48);
  v50 = &v95 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = *(v30 + 16);
  v120(v42, a1, v29);
  v51 = v29;
  v52 = swift_dynamicCast();
  v53 = *(v45 + 56);
  if (v52)
  {
    v53(v28, 0, 1, v44);
    (*(v30 + 8))(a1, v29);
    v54 = *(v45 + 32);
    v54(v47, v28, v44);
    v54(v50, v47, v44);
  }

  else
  {
    v53(v28, 1, 1, v44);
    sub_2203DF738(v28, &qword_280FA2458, sub_2203DEB54, MEMORY[0x277D83D88], sub_2203DE8BC);
    v55 = a1;
    v120(v116, a1, v51);
    v56 = v119;
    v57 = v118;
    v58 = swift_dynamicCast();
    v59 = v117;
    v60 = *(v117 + 56);
    if (v58)
    {
      v60(v56, 0, 1, v57);
      (*(v30 + 8))(v55, v51);
      v61 = *(v59 + 32);
      v62 = v112;
      v61(v112, v56, v57);
      v61(v50, v62, v57);
    }

    else
    {
      v60(v56, 1, 1, v57);
      sub_2203DF738(v56, &qword_280FA2448, sub_2203DEBE8, MEMORY[0x277D83D88], sub_2203DE8BC);
      v120(v111, v55, v51);
      v64 = v114;
      v63 = v115;
      v65 = swift_dynamicCast();
      v66 = v113;
      v67 = *(v113 + 56);
      if (v65)
      {
        v67(v63, 0, 1, v64);
        (*(v30 + 8))(v55, v51);
        v68 = *(v66 + 32);
        v69 = v107;
        v68(v107, v63, v64);
        v68(v50, v69, v64);
      }

      else
      {
        v67(v63, 1, 1, v64);
        sub_2203DF738(v63, &qword_280FA2428, sub_2203DEA78, MEMORY[0x277D83D88], sub_2203DE8BC);
        v120(v106, v55, v51);
        v71 = v109;
        v70 = v110;
        v72 = swift_dynamicCast();
        v73 = v108;
        v74 = *(v108 + 56);
        if (v72)
        {
          v74(v70, 0, 1, v71);
          (*(v30 + 8))(v55, v51);
          v75 = *(v73 + 32);
          v76 = v102;
          v75(v102, v70, v71);
          v75(v50, v76, v71);
        }

        else
        {
          v74(v70, 1, 1, v71);
          sub_2203DF738(v70, &qword_280FA2438, sub_2203DE9E4, MEMORY[0x277D83D88], sub_2203DE8BC);
          v120(v101, v55, v51);
          v78 = v104;
          v77 = v105;
          v79 = swift_dynamicCast();
          v80 = v103;
          v81 = *(v103 + 56);
          if (v79)
          {
            v81(v77, 0, 1, v78);
            (*(v30 + 8))(v55, v51);
            v82 = *(v80 + 32);
            v83 = v97;
            v82(v97, v77, v78);
            v82(v50, v83, v78);
          }

          else
          {
            v81(v77, 1, 1, v78);
            sub_2203DF738(v77, &qword_280FA2478, sub_2203DEC7C, MEMORY[0x277D83D88], sub_2203DE8BC);
            (*(v30 + 32))(v96, v55, v51);
            v84 = v100;
            v85 = v99;
            v86 = swift_dynamicCast();
            v87 = v98;
            v88 = *(v98 + 56);
            if ((v86 & 1) == 0)
            {
              v88(v84, 1, 1, v85);
              sub_2203DF738(v84, &qword_280FA2468, sub_2203DED10, MEMORY[0x277D83D88], sub_2203DE8BC);
              v93 = 1;
              v91 = v122;
              v92 = v123;
              return (*(v121 + 56))(v92, v93, 1, v91);
            }

            v88(v84, 0, 1, v85);
            v89 = *(v87 + 32);
            v90 = v95;
            v89(v95, v84, v85);
            v89(v50, v90, v85);
          }
        }
      }
    }
  }

  v91 = v122;
  swift_storeEnumTagMultiPayload();
  v92 = v123;
  sub_2203DF148(v50, v123, type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent);
  v93 = 0;
  return (*(v121 + 56))(v92, v93, 1, v91);
}

uint64_t sub_2203D2848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent(0);
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  sub_2203DE8BC(0, qword_280FA1548, type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent, MEMORY[0x277D83D88]);
  v5[10] = swift_task_alloc();
  sub_2203DE8BC(0, &unk_280FA03C0, type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent, MEMORY[0x277D857A8]);
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2203D29E4, 0, 0);
}

uint64_t sub_2203D29E4(uint64_t a1)
{
  if (qword_280FA09F8 != -1)
  {
    swift_once();
  }

  v2 = qword_280FA0A00;
  v3 = sub_22042BCA0();
  sub_22042B8D0("Async Event Stream Prepared", 27, 2, &dword_2203BD000, v2, v3, MEMORY[0x277D84F90]);
  sub_2203DE8BC(0, &qword_280FA03B8, type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent, MEMORY[0x277D857B8]);
  sub_22042BBC0();
  swift_beginAccess();
  v4 = swift_task_alloc();
  v1[14] = v4;
  *v4 = v1;
  v4[1] = sub_2203D2B54;
  v5 = v1[10];
  v6 = v1[11];

  return MEMORY[0x2822003E8](v5, 0, 0, v6);
}

uint64_t sub_2203D2B54()
{

  return MEMORY[0x2822009F8](sub_2203D2C50, 0, 0);
}

uint64_t sub_2203D2C50()
{
  v1 = v0[10];
  if ((*(v0[8] + 48))(v1, 1, v0[7]) != 1)
  {
    sub_2203DF148(v1, v0[9], type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent);
    Strong = swift_weakLoadStrong();
    v0[15] = Strong;
    if (Strong)
    {
      v3 = swift_task_alloc();
      v0[16] = v3;
      *v3 = v0;
      v3[1] = sub_2203D2DD8;
      v4 = v0[9];

      return sub_2203D2FA0(v4);
    }

    sub_2203DF670(v0[9], type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent);
  }

  (*(v0[12] + 8))(v0[13], v0[11]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_2203D2DD8()
{

  return MEMORY[0x2822009F8](sub_2203D2ED4, 0, 0);
}

uint64_t sub_2203D2ED4()
{
  v1 = v0[9];

  sub_2203DF670(v1, type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent);
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_2203D2B54;
  v3 = v0[10];
  v4 = v0[11];

  return MEMORY[0x2822003E8](v3, 0, 0, v4);
}

uint64_t sub_2203D2FA0(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = *v1;
  type metadata accessor for Com_Apple_Stocks_Personalization_Session(0);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  sub_2203DED10(0);
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  sub_2203DEC7C(0);
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  sub_2203DEBE8(0);
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();
  sub_2203DEB54(0);
  v2[19] = v6;
  v2[20] = *(v6 - 8);
  v2[21] = swift_task_alloc();
  sub_2203DEA78(0);
  v2[22] = v7;
  v2[23] = *(v7 - 8);
  v2[24] = swift_task_alloc();
  sub_2203DE9E4(0);
  v2[25] = v8;
  v2[26] = *(v8 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent(0);
  v2[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2203D32BC, 0, 0);
}

uint64_t sub_2203D32BC()
{
  sub_2203DF42C(*(v0 + 40), *(v0 + 232), type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = *(v0 + 232);
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      (*(*(v0 + 136) + 32))(*(v0 + 144), v2, *(v0 + 128));
      v14 = swift_task_alloc();
      *(v0 + 248) = v14;
      *v14 = v0;
      v14[1] = sub_2203D4004;
      v15 = *(v0 + 144);

      return sub_2203D6BC0(v15);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      (*(*(v0 + 112) + 32))(*(v0 + 120), v2, *(v0 + 104));
      v6 = swift_task_alloc();
      *(v0 + 256) = v6;
      *v6 = v0;
      v6[1] = sub_2203D4598;
      v7 = *(v0 + 120);

      return sub_2203D7F28(v7);
    }

    else
    {
      (*(*(v0 + 88) + 32))(*(v0 + 96), v2, *(v0 + 80));
      v18 = swift_task_alloc();
      *(v0 + 264) = v18;
      *v18 = v0;
      v18[1] = sub_2203D4B2C;
      v19 = *(v0 + 96);

      return sub_2203D8F90(v19);
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v4 = *(v0 + 208);
      v3 = *(v0 + 216);
      v5 = *(v0 + 200);
      (*(v4 + 32))(v3, v2, v5);
      sub_2203D54A0();
LABEL_11:
      (*(v4 + 8))(v3, v5);
      sub_22042ACE0();
      if ((sub_22042ACD0() & 1) != 0 && sub_22042B410())
      {
        v10 = *(v0 + 64);
        v9 = *(v0 + 72);
        sub_22042B490();

        sub_2203DF148(v10, v9, type metadata accessor for Com_Apple_Stocks_Personalization_Session);
        if (qword_280FA24A8 != -1)
        {
          swift_once();
        }

        sub_2203DEB0C(&unk_280FA1498, type metadata accessor for UserEventHistoryEventProcessor, &unk_22042D788);
        sub_22042AB30();
        if (*(v0 + 272) == 1)
        {
          if (qword_280FA09F8 != -1)
          {
            swift_once();
          }

          v11 = qword_280FA0A00;
          sub_2203C1EE8(0);
          v12 = swift_allocObject();
          *(v12 + 16) = xmmword_22042D3F0;
          v13 = sub_2203D9FF8(type metadata accessor for Com_Apple_Stocks_Personalization_Session, &qword_280FA1638, type metadata accessor for Com_Apple_Stocks_Personalization_Session, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_Session);
          MEMORY[0x223D7BDE0](v13);

          *(v12 + 56) = MEMORY[0x277D837D0];
          *(v12 + 64) = sub_2203C1FA8();
          *(v12 + 32) = 0;
          *(v12 + 40) = 0xE000000000000000;
          v24 = sub_22042BCA0();
          sub_22042B8D0("Current session: %{public}@", 27, 2, &dword_2203BD000, v11, v24, v12, 1, 2);
        }

        else
        {
          if (qword_280FA09F8 != -1)
          {
            swift_once();
          }

          v20 = *(v0 + 72);
          sub_2203C1EE8(0);
          v21 = swift_allocObject();
          *(v21 + 16) = xmmword_22042D3F0;
          v22 = *(*(v20 + 16) + 16);
          v23 = MEMORY[0x277D83C10];
          *(v21 + 56) = MEMORY[0x277D83B88];
          *(v21 + 64) = v23;
          *(v21 + 32) = v22;
          sub_22042BCA0();
          sub_22042B8D0("Current session has %lu events", v26);
        }

        sub_2203DF670(*(v0 + 72), type metadata accessor for Com_Apple_Stocks_Personalization_Session);
      }

      v25 = *(v0 + 8);

      return v25();
    }

    if (EnumCaseMultiPayload == 1)
    {
      v4 = *(v0 + 184);
      v3 = *(v0 + 192);
      v5 = *(v0 + 176);
      (*(v4 + 32))(v3, v2, v5);
      sub_2203D59FC();
      goto LABEL_11;
    }

    (*(*(v0 + 160) + 32))(*(v0 + 168), v2, *(v0 + 152));
    v16 = swift_task_alloc();
    *(v0 + 240) = v16;
    *v16 = v0;
    v16[1] = sub_2203D3A70;
    v17 = *(v0 + 168);

    return sub_2203D5F64(v17);
  }
}

uint64_t sub_2203D3A70()
{

  return MEMORY[0x2822009F8](sub_2203D3B6C, 0, 0);
}

uint64_t sub_2203D3B6C()
{
  (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  sub_22042ACE0();
  if ((sub_22042ACD0() & 1) != 0 && sub_22042B410())
  {
    v2 = *(v0 + 64);
    v1 = *(v0 + 72);
    sub_22042B490();

    sub_2203DF148(v2, v1, type metadata accessor for Com_Apple_Stocks_Personalization_Session);
    if (qword_280FA24A8 != -1)
    {
      swift_once();
    }

    sub_2203DEB0C(&unk_280FA1498, type metadata accessor for UserEventHistoryEventProcessor, &unk_22042D788);
    sub_22042AB30();
    if (*(v0 + 272) == 1)
    {
      if (qword_280FA09F8 != -1)
      {
        swift_once();
      }

      v3 = qword_280FA0A00;
      sub_2203C1EE8(0);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_22042D3F0;
      v5 = sub_2203D9FF8(type metadata accessor for Com_Apple_Stocks_Personalization_Session, &qword_280FA1638, type metadata accessor for Com_Apple_Stocks_Personalization_Session, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_Session);
      MEMORY[0x223D7BDE0](v5);

      *(v4 + 56) = MEMORY[0x277D837D0];
      *(v4 + 64) = sub_2203C1FA8();
      *(v4 + 32) = 0;
      *(v4 + 40) = 0xE000000000000000;
      v10 = sub_22042BCA0();
      sub_22042B8D0("Current session: %{public}@", 27, 2, &dword_2203BD000, v3, v10, v4, 1, 2);
    }

    else
    {
      if (qword_280FA09F8 != -1)
      {
        swift_once();
      }

      v6 = *(v0 + 72);
      sub_2203C1EE8(0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_22042D3F0;
      v8 = *(*(v6 + 16) + 16);
      v9 = MEMORY[0x277D83C10];
      *(v7 + 56) = MEMORY[0x277D83B88];
      *(v7 + 64) = v9;
      *(v7 + 32) = v8;
      sub_22042BCA0();
      sub_22042B8D0("Current session has %lu events", v13);
    }

    sub_2203DF670(*(v0 + 72), type metadata accessor for Com_Apple_Stocks_Personalization_Session);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_2203D4004()
{

  return MEMORY[0x2822009F8](sub_2203D4100, 0, 0);
}

uint64_t sub_2203D4100()
{
  (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  sub_22042ACE0();
  if ((sub_22042ACD0() & 1) != 0 && sub_22042B410())
  {
    v2 = *(v0 + 64);
    v1 = *(v0 + 72);
    sub_22042B490();

    sub_2203DF148(v2, v1, type metadata accessor for Com_Apple_Stocks_Personalization_Session);
    if (qword_280FA24A8 != -1)
    {
      swift_once();
    }

    sub_2203DEB0C(&unk_280FA1498, type metadata accessor for UserEventHistoryEventProcessor, &unk_22042D788);
    sub_22042AB30();
    if (*(v0 + 272) == 1)
    {
      if (qword_280FA09F8 != -1)
      {
        swift_once();
      }

      v3 = qword_280FA0A00;
      sub_2203C1EE8(0);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_22042D3F0;
      v5 = sub_2203D9FF8(type metadata accessor for Com_Apple_Stocks_Personalization_Session, &qword_280FA1638, type metadata accessor for Com_Apple_Stocks_Personalization_Session, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_Session);
      MEMORY[0x223D7BDE0](v5);

      *(v4 + 56) = MEMORY[0x277D837D0];
      *(v4 + 64) = sub_2203C1FA8();
      *(v4 + 32) = 0;
      *(v4 + 40) = 0xE000000000000000;
      v10 = sub_22042BCA0();
      sub_22042B8D0("Current session: %{public}@", 27, 2, &dword_2203BD000, v3, v10, v4, 1, 2);
    }

    else
    {
      if (qword_280FA09F8 != -1)
      {
        swift_once();
      }

      v6 = *(v0 + 72);
      sub_2203C1EE8(0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_22042D3F0;
      v8 = *(*(v6 + 16) + 16);
      v9 = MEMORY[0x277D83C10];
      *(v7 + 56) = MEMORY[0x277D83B88];
      *(v7 + 64) = v9;
      *(v7 + 32) = v8;
      sub_22042BCA0();
      sub_22042B8D0("Current session has %lu events", v13);
    }

    sub_2203DF670(*(v0 + 72), type metadata accessor for Com_Apple_Stocks_Personalization_Session);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_2203D4598()
{

  return MEMORY[0x2822009F8](sub_2203D4694, 0, 0);
}

uint64_t sub_2203D4694()
{
  (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
  sub_22042ACE0();
  if ((sub_22042ACD0() & 1) != 0 && sub_22042B410())
  {
    v2 = *(v0 + 64);
    v1 = *(v0 + 72);
    sub_22042B490();

    sub_2203DF148(v2, v1, type metadata accessor for Com_Apple_Stocks_Personalization_Session);
    if (qword_280FA24A8 != -1)
    {
      swift_once();
    }

    sub_2203DEB0C(&unk_280FA1498, type metadata accessor for UserEventHistoryEventProcessor, &unk_22042D788);
    sub_22042AB30();
    if (*(v0 + 272) == 1)
    {
      if (qword_280FA09F8 != -1)
      {
        swift_once();
      }

      v3 = qword_280FA0A00;
      sub_2203C1EE8(0);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_22042D3F0;
      v5 = sub_2203D9FF8(type metadata accessor for Com_Apple_Stocks_Personalization_Session, &qword_280FA1638, type metadata accessor for Com_Apple_Stocks_Personalization_Session, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_Session);
      MEMORY[0x223D7BDE0](v5);

      *(v4 + 56) = MEMORY[0x277D837D0];
      *(v4 + 64) = sub_2203C1FA8();
      *(v4 + 32) = 0;
      *(v4 + 40) = 0xE000000000000000;
      v10 = sub_22042BCA0();
      sub_22042B8D0("Current session: %{public}@", 27, 2, &dword_2203BD000, v3, v10, v4, 1, 2);
    }

    else
    {
      if (qword_280FA09F8 != -1)
      {
        swift_once();
      }

      v6 = *(v0 + 72);
      sub_2203C1EE8(0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_22042D3F0;
      v8 = *(*(v6 + 16) + 16);
      v9 = MEMORY[0x277D83C10];
      *(v7 + 56) = MEMORY[0x277D83B88];
      *(v7 + 64) = v9;
      *(v7 + 32) = v8;
      sub_22042BCA0();
      sub_22042B8D0("Current session has %lu events", v13);
    }

    sub_2203DF670(*(v0 + 72), type metadata accessor for Com_Apple_Stocks_Personalization_Session);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_2203D4B2C()
{

  return MEMORY[0x2822009F8](sub_2203D4C28, 0, 0);
}

uint64_t sub_2203D4C28()
{
  (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
  sub_22042ACE0();
  if ((sub_22042ACD0() & 1) != 0 && sub_22042B410())
  {
    v2 = *(v0 + 64);
    v1 = *(v0 + 72);
    sub_22042B490();

    sub_2203DF148(v2, v1, type metadata accessor for Com_Apple_Stocks_Personalization_Session);
    if (qword_280FA24A8 != -1)
    {
      swift_once();
    }

    sub_2203DEB0C(&unk_280FA1498, type metadata accessor for UserEventHistoryEventProcessor, &unk_22042D788);
    sub_22042AB30();
    if (*(v0 + 272) == 1)
    {
      if (qword_280FA09F8 != -1)
      {
        swift_once();
      }

      v3 = qword_280FA0A00;
      sub_2203C1EE8(0);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_22042D3F0;
      v5 = sub_2203D9FF8(type metadata accessor for Com_Apple_Stocks_Personalization_Session, &qword_280FA1638, type metadata accessor for Com_Apple_Stocks_Personalization_Session, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_Session);
      MEMORY[0x223D7BDE0](v5);

      *(v4 + 56) = MEMORY[0x277D837D0];
      *(v4 + 64) = sub_2203C1FA8();
      *(v4 + 32) = 0;
      *(v4 + 40) = 0xE000000000000000;
      v10 = sub_22042BCA0();
      sub_22042B8D0("Current session: %{public}@", 27, 2, &dword_2203BD000, v3, v10, v4, 1, 2);
    }

    else
    {
      if (qword_280FA09F8 != -1)
      {
        swift_once();
      }

      v6 = *(v0 + 72);
      sub_2203C1EE8(0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_22042D3F0;
      v8 = *(*(v6 + 16) + 16);
      v9 = MEMORY[0x277D83C10];
      *(v7 + 56) = MEMORY[0x277D83B88];
      *(v7 + 64) = v9;
      *(v7 + 32) = v8;
      sub_22042BCA0();
      sub_22042B8D0("Current session has %lu events", v13);
    }

    sub_2203DF670(*(v0 + 72), type metadata accessor for Com_Apple_Stocks_Personalization_Session);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_2203D50C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  sub_2203DE8BC(0, &unk_280FA03E0, type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent, MEMORY[0x277D85760]);
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x28223BE20](v3);
  v22 = &v21 - v4;
  v5 = sub_22042ABE0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  sub_2203DE8BC(0, qword_280FA1548, type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21 - v10;
  v12 = type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v21 - v17;
  (*(v6 + 16))(v8, v25, v5);
  sub_2203D198C(v8, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_2203DF738(v11, qword_280FA1548, type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent, MEMORY[0x277D83D88], sub_2203DE8BC);
  }

  sub_2203DF148(v11, v18, type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent);
  sub_2203DF42C(v18, v16, type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent);
  sub_2203DE8BC(0, &qword_280FA03D0, type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent, MEMORY[0x277D85788]);
  v20 = v22;
  sub_22042BBB0();
  (*(v23 + 8))(v20, v24);
  return sub_2203DF670(v18, type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent);
}

uint64_t sub_2203D54A0()
{
  v0 = sub_22042A5B0();
  v36 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v31 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22042AC80();
  v37 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22042AFB0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203DE9E4(0);
  v10 = sub_22042ABC0();
  v11 = sub_22042AC60();
  v13 = v12;
  v33 = v5;
  v34 = v3;
  v31 = v2;
  v32 = v0;
  v35 = v7;
  v14 = v11;

  sub_22042A380();
  swift_allocObject();
  sub_22042A370();
  sub_2203DEB0C(&qword_280FA23C0, MEMORY[0x277D68840], MEMORY[0x277D68848]);
  sub_22042A360();

  v21 = v33;
  sub_22042AFA0();
  sub_22042AC70();
  v23 = v22;
  (*(v37 + 8))(v21, v34);
  if (v23)
  {
    v24 = v31;
    sub_22042A590();
    sub_22042B3E0();
    v25 = v35;
    sub_2203DF1B0(v14, v13);

    (*(v36 + 8))(v24, v32);
    return (*(v25 + 8))(v9, v6);
  }

  else
  {
    type metadata accessor for UserEventHistoryEventProcessor.Errors(0);
    sub_2203DEB0C(&qword_27CF52388, type metadata accessor for UserEventHistoryEventProcessor.Errors, &unk_22042D900);
    v26 = swift_allocError();
    v28 = v27;
    v29 = sub_22042AAC0();
    (*(*(v29 - 8) + 56))(v28, 1, 2, v29);
    swift_willThrow();
    v30 = v26;
    sub_2203DF1B0(v14, v13);
    (*(v35 + 8))(v9, v6);
    if (qword_280FA09F8 != -1)
    {
      swift_once();
    }

    v15 = qword_280FA0A00;
    v16 = sub_22042BC90();
    sub_2203C1EE8(0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_22042D3F0;
    v39 = 0;
    v40 = 0xE000000000000000;
    v38 = v30;
    sub_2203CFDB8(0, &unk_280FA01A0, MEMORY[0x277D84948]);
    sub_22042BDF0();
    v18 = v39;
    v19 = v40;
    *(v17 + 56) = MEMORY[0x277D837D0];
    *(v17 + 64) = sub_2203C1FA8();
    *(v17 + 32) = v18;
    *(v17 + 40) = v19;
    sub_22042B8D0("Failed to decode AppSessionEndEvent.Model from process event with error %{public}@", 82, 2, &dword_2203BD000, v15, v16, v17);

    return MEMORY[0x223D7C730](v30);
  }
}

uint64_t sub_2203D59FC()
{
  v0 = sub_22042A5B0();
  v38 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22042AC80();
  v39 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22042B000();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203DEA78(0);
  v10 = sub_22042ABC0();
  v11 = sub_22042AC60();
  v13 = v12;
  v35 = v5;
  v36 = v3;
  v33 = v2;
  v34 = v0;
  v37 = v7;
  v14 = v11;

  sub_22042A380();
  swift_allocObject();
  sub_22042A370();
  sub_2203DEB0C(&qword_280FA23A8, MEMORY[0x277D68980], MEMORY[0x277D68988]);
  sub_22042A360();
  v15 = v13;

  v22 = v35;
  sub_22042AFF0();
  sub_22042AC70();
  v24 = v23;
  (*(v39 + 8))(v22, v36);
  if (v24)
  {
    v25 = v33;
    sub_22042A590();
    sub_22042B3F0();
    v26 = (v38 + 8);
    v27 = (v37 + 8);

    sub_2203DF1B0(v14, v15);

    (*v26)(v25, v34);
    return (*v27)(v9, v6);
  }

  else
  {
    type metadata accessor for UserEventHistoryEventProcessor.Errors(0);
    sub_2203DEB0C(&qword_27CF52388, type metadata accessor for UserEventHistoryEventProcessor.Errors, &unk_22042D900);
    v28 = swift_allocError();
    v30 = v29;
    v31 = sub_22042AAC0();
    (*(*(v31 - 8) + 56))(v30, 1, 2, v31);
    swift_willThrow();
    v32 = v28;
    sub_2203DF1B0(v14, v13);
    (*(v37 + 8))(v9, v6);
    if (qword_280FA09F8 != -1)
    {
      swift_once();
    }

    v16 = qword_280FA0A00;
    v17 = sub_22042BC90();
    sub_2203C1EE8(0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_22042D3F0;
    v41 = 0;
    v42 = 0xE000000000000000;
    v40 = v32;
    sub_2203CFDB8(0, &unk_280FA01A0, MEMORY[0x277D84948]);
    sub_22042BDF0();
    v19 = v41;
    v20 = v42;
    *(v18 + 56) = MEMORY[0x277D837D0];
    *(v18 + 64) = sub_2203C1FA8();
    *(v18 + 32) = v19;
    *(v18 + 40) = v20;
    sub_22042B8D0("Failed to decode AppSessionStartEvent.Model from process event with error %{public}@", 84, 2, &dword_2203BD000, v16, v17, v18);

    return MEMORY[0x223D7C730](v32);
  }
}

uint64_t sub_2203D5F64(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  sub_2203DE8BC(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  v2[19] = swift_task_alloc();
  v3 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0);
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v4 = sub_22042B070();
  v2[24] = v4;
  v2[25] = *(v4 - 8);
  v2[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2203D60E8, 0, 0);
}

uint64_t sub_2203D60E8()
{
  sub_2203DEB54(0);
  sub_22042ABD0();
  if (!v0[5])
  {
    sub_2203DF738((v0 + 2), &qword_280FA0188, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2203DF5B8);
LABEL_6:
    sub_22042ACE0();
    if (sub_22042ACD0())
    {
      if (qword_280FA09F8 != -1)
      {
        swift_once();
      }

      v4 = qword_280FA0A00;
      v5 = sub_22042BC90();
      sub_22042B8D0("Encountered a NewsArticleViewEvent without an associated NewsArticleViewEventUserInfo userInfo value", 100, 2, &dword_2203BD000, v4, v5, MEMORY[0x277D84F90]);
    }

    goto LABEL_13;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  v1 = v0[18];
  v0[27] = v0[14];
  v0[28] = *(v1 + OBJC_IVAR____TtC21StocksPersonalization30UserEventHistoryEventProcessor_sessionManager);
  if (sub_22042B410())
  {

    v2 = sub_22042ABC0();
    v0[29] = sub_22042AC60();
    v0[30] = v3;

    sub_22042A380();
    swift_allocObject();
    sub_22042A370();
    sub_2203DEB0C(&qword_280FA2398, MEMORY[0x277D689E0], MEMORY[0x277D689E8]);
    sub_22042A360();
    v0[31] = 0;

    v18 = swift_task_alloc();
    v0[32] = v18;
    *v18 = v0;
    v18[1] = sub_2203D65B0;
    v19 = v0[26];
    v21 = v0[18];
    v20 = v0[19];

    return sub_2203DA3BC(v20, v21, v19);
  }

  type metadata accessor for UserEventHistoryEventProcessor.Errors(0);
  sub_2203DEB0C(&qword_27CF52388, type metadata accessor for UserEventHistoryEventProcessor.Errors, &unk_22042D900);
  v6 = swift_allocError();
  v8 = v7;
  v9 = sub_22042AAC0();
  (*(*(v9 - 8) + 56))(v8, 2, 2, v9);
  swift_willThrow();
  v10 = v6;
  if (qword_280FA09F8 != -1)
  {
    swift_once();
  }

  v11 = qword_280FA0A00;
  v12 = sub_22042BC90();
  sub_2203C1EE8(0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_22042D3F0;
  v0[10] = 0;
  v0[11] = 0xE000000000000000;
  v0[15] = v10;
  sub_2203CFDB8(0, &unk_280FA01A0, MEMORY[0x277D84948]);
  sub_22042BDF0();
  v14 = v0[10];
  v15 = v0[11];
  *(v13 + 56) = MEMORY[0x277D837D0];
  *(v13 + 64) = sub_2203C1FA8();
  *(v13 + 32) = v14;
  *(v13 + 40) = v15;
  sub_22042B8D0("Failed to decode NewsArticleViewEvent.Model from process event with error %{public}@", 84, 2, &dword_2203BD000, v11, v12, v13);

  MEMORY[0x223D7C730](v10);
  swift_unknownObjectRelease();
LABEL_13:

  v16 = v0[1];

  return v16();
}

uint64_t sub_2203D65B0()
{

  return MEMORY[0x2822009F8](sub_2203D66AC, 0, 0);
}

uint64_t sub_2203D66AC()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 152);
  v3 = swift_task_alloc();
  *(v3 + 16) = *(v0 + 208);
  *(v3 + 32) = v2;
  sub_2203DEB0C(&unk_280FA2130, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionEvent);
  sub_22042B810();

  sub_2203DF738(v2, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88], sub_2203DE8BC);
  sub_22042ACE0();
  if (sub_22042ACD0())
  {
    if (qword_280FA09F8 != -1)
    {
      swift_once();
    }

    v4 = qword_280FA0A00;
    sub_2203C1EE8(0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_22042D3F0;
    v6 = sub_2203D9FF8(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent, &unk_280FA2130, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionEvent);
    if (v1)
    {
      *(v5 + 16) = 0;

      v8 = sub_22042BC80();
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_22042D3F0;
      *(v0 + 96) = 0;
      *(v0 + 104) = 0xE000000000000000;
      *(v0 + 128) = v1;
      sub_2203CFDB8(0, &unk_280FA01A0, MEMORY[0x277D84948]);
      sub_22042BDF0();
      v10 = *(v0 + 96);
      v11 = *(v0 + 104);
      *(v9 + 56) = MEMORY[0x277D837D0];
      *(v9 + 64) = sub_2203C1FA8();
      *(v9 + 32) = v10;
      *(v9 + 40) = v11;
      sub_22042B8D0("Saw article read event but failed to get JSON representation with error %{public}@", 82, 2, &dword_2203BD000, v4, v8, v9);

      MEMORY[0x223D7C730](v1);
    }

    else
    {
      v12 = v6;
      v13 = v7;
      *(v5 + 56) = MEMORY[0x277D837D0];
      *(v5 + 64) = sub_2203C1FA8();
      *(v5 + 32) = v12;
      *(v5 + 40) = v13;
      v14 = sub_22042BCA0();
      sub_22042B8D0("See article read event %{public}@", 33, 2, &dword_2203BD000, v4, v14, v5);
    }
  }

  if (sub_22042B410())
  {
    sub_2203DF42C(*(v0 + 184), *(v0 + 176), type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
    v35 = sub_22042B480();
    v16 = v15;
    v17 = *(v15 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v16 + 16) = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_22041EF10(0, v17[2] + 1, 1, v17);
      *(v16 + 16) = v17;
    }

    v20 = v17[2];
    v19 = v17[3];
    if (v20 >= v19 >> 1)
    {
      v17 = sub_22041EF10((v19 > 1), v20 + 1, 1, v17);
      *(v16 + 16) = v17;
    }

    v22 = *(v0 + 232);
    v21 = *(v0 + 240);
    v23 = *(v0 + 200);
    v33 = *(v0 + 192);
    v34 = *(v0 + 208);
    v24 = *(v0 + 176);
    v32 = *(v0 + 184);
    v25 = *(v0 + 168);
    v17[2] = v20 + 1;
    sub_2203DF148(v24, v17 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v20, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
    v35(v0 + 48, 0);

    sub_2203DF1B0(v22, v21);
    swift_unknownObjectRelease();
    sub_2203DF670(v32, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
    (*(v23 + 8))(v34, v33);
  }

  else
  {
    v26 = *(v0 + 208);
    v27 = *(v0 + 192);
    v28 = *(v0 + 200);
    v29 = *(v0 + 184);
    sub_2203DF1B0(*(v0 + 232), *(v0 + 240));
    swift_unknownObjectRelease();
    sub_2203DF670(v29, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
    (*(v28 + 8))(v26, v27);
  }

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_2203D6BC0(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v3 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0);
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  sub_2203DE8BC(0, &qword_280FA0DF0, type metadata accessor for FeedViewEventUserInfo, MEMORY[0x277D83D88]);
  v2[26] = swift_task_alloc();
  v4 = sub_22042AAC0();
  v2[27] = v4;
  v2[28] = *(v4 - 8);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v5 = sub_22042B0B0();
  v2[31] = v5;
  v2[32] = *(v5 - 8);
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v6 = sub_22042B0A0();
  v2[35] = v6;
  v2[36] = *(v6 - 8);
  v2[37] = swift_task_alloc();
  v7 = sub_22042AF60();
  v2[38] = v7;
  v2[39] = *(v7 - 8);
  v2[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2203D6E70, 0, 0);
}

uint64_t sub_2203D6E70(uint64_t a1)
{
  v1[41] = *(v1[21] + OBJC_IVAR____TtC21StocksPersonalization30UserEventHistoryEventProcessor_sessionManager);
  if (!sub_22042B410())
  {
    v5 = v1[27];
    v6 = v1[28];
    type metadata accessor for UserEventHistoryEventProcessor.Errors(0);
    sub_2203DEB0C(&qword_27CF52388, type metadata accessor for UserEventHistoryEventProcessor.Errors, &unk_22042D900);
    v7 = swift_allocError();
    (*(v6 + 56))(v8, 2, 2, v5);
    swift_willThrow();
    v9 = v7;
    if (qword_280FA09F8 != -1)
    {
      swift_once();
    }

    v12 = qword_280FA0A00;
    v13 = sub_22042BC90();
    sub_2203C1EE8(0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_22042D3F0;
    v1[10] = 0;
    v1[11] = 0xE000000000000000;
    v1[18] = v9;
    sub_2203CFDB8(0, &unk_280FA01A0, MEMORY[0x277D84948]);
    sub_22042BDF0();
    v15 = v1[10];
    v16 = v1[11];
    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 64) = sub_2203C1FA8();
    *(v14 + 32) = v15;
    *(v14 + 40) = v16;
    sub_22042B8D0("Failed to decode FeedViewEvent.Model from process event with error %{public}@", 77, 2, &dword_2203BD000, v12, v13, v14);

    MEMORY[0x223D7C730](v9);
    goto LABEL_6;
  }

  sub_2203DEBE8(0);
  v2 = sub_22042ABC0();
  v3 = sub_22042AC60();
  v1[42] = v3;
  v1[43] = v4;
  v10 = v3;
  v11 = v4;

  sub_22042A380();
  swift_allocObject();
  sub_22042A370();
  sub_2203DEB0C(&unk_280FA23D8, MEMORY[0x277D68478], MEMORY[0x277D68480]);
  sub_22042A360();
  v50 = v11;
  v20 = v1[36];
  v19 = v1[37];
  v21 = v1[32];
  v47 = v1[35];
  v48 = v1[33];
  v22 = v1[31];

  sub_22042AF40();
  sub_22042B090();
  (*(v20 + 8))(v19, v47);
  (*(v21 + 104))(v48, *MEMORY[0x277D68EF0], v22);
  sub_2203DEB0C(&qword_280FA2380, MEMORY[0x277D68F00], MEMORY[0x277D68F08]);
  sub_22042BB00();
  sub_22042BB00();
  v24 = v1[33];
  v23 = v1[34];
  v25 = v1[31];
  v26 = v1[32];
  if (v1[12] == v1[14] && v1[13] == v1[15])
  {
    v27 = *(v26 + 8);
    v27(v1[33], v1[31]);
    v27(v23, v25);

    v28 = v50;
  }

  else
  {
    v49 = sub_22042BF50();
    v29 = *(v26 + 8);
    v29(v24, v25);
    v29(v23, v25);

    v28 = v50;
    if ((v49 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  sub_22042ABD0();
  v30 = v1[26];
  if (v1[5])
  {
    v31 = type metadata accessor for FeedViewEventUserInfo(0);
    v32 = swift_dynamicCast();
    v33 = *(v31 - 8);
    (*(v33 + 56))(v30, v32 ^ 1u, 1, v31);
    if ((*(v33 + 48))(v30, 1, v31) != 1)
    {
      v34 = v1[29];
      v35 = v1[30];
      v36 = v1[27];
      v37 = v1[28];
      v38 = v1[26];
      (*(v37 + 16))(v34, v38, v36);
      sub_2203DF670(v38, type metadata accessor for FeedViewEventUserInfo);
      (*(v37 + 32))(v35, v34, v36);
      v39 = swift_task_alloc();
      v1[44] = v39;
      *v39 = v1;
      v39[1] = sub_2203D7694;
      v40 = v1[30];

      return sub_2203DD16C(v40);
    }
  }

  else
  {
    sub_2203DF738((v1 + 2), &qword_280FA0188, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2203DF5B8);
    v41 = type metadata accessor for FeedViewEventUserInfo(0);
    (*(*(v41 - 8) + 56))(v30, 1, 1, v41);
  }

  sub_2203DF738(v1[26], &unk_280FA0DF0, type metadata accessor for FeedViewEventUserInfo, MEMORY[0x277D83D88], sub_2203DE8BC);
  sub_22042ACE0();
  if (sub_22042ACD0())
  {
    if (qword_280FA09F8 != -1)
    {
      swift_once();
    }

    v43 = v1[39];
    v42 = v1[40];
    v44 = v1[38];
    v45 = qword_280FA0A00;
    v46 = sub_22042BC90();
    sub_22042B8D0("Encountered a FeedViewEvent with feedType symbol without an associated FeedViewEventUserInfo userInfo value", 109, 2, &dword_2203BD000, v45, v46, MEMORY[0x277D84F90]);
    sub_2203DF1B0(v10, v28);
    (*(v43 + 8))(v42, v44);
    goto LABEL_6;
  }

LABEL_23:
  (*(v1[39] + 8))(v1[40], v1[38]);
  sub_2203DF1B0(v10, v28);
LABEL_6:

  v17 = v1[1];

  return v17();
}

uint64_t sub_2203D7694(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 360) = v2;

  if (v2)
  {
    v7 = sub_2203D7D04;
  }

  else
  {
    *(v6 + 368) = a2;
    *(v6 + 376) = a1;
    v7 = sub_2203D77C8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2203D77C8()
{
  v1 = v0[46];
  v2 = v0[47];
  v3 = v0[45];
  v4 = v0[40];
  v5 = v0[30];
  v6 = v0[21];
  v7 = swift_task_alloc();
  v7[2] = v4;
  v7[3] = v6;
  v7[4] = v5;
  v7[5] = v2;
  v7[6] = v1;
  sub_2203DEB0C(&unk_280FA2130, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionEvent);
  sub_22042B810();

  sub_22042ACE0();
  if (sub_22042ACD0())
  {
    if (qword_280FA09F8 != -1)
    {
      swift_once();
    }

    v8 = qword_280FA0A00;
    sub_2203C1EE8(0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_22042D3F0;
    v10 = sub_2203D9FF8(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent, &unk_280FA2130, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionEvent);
    if (v3)
    {
      *(v9 + 16) = 0;

      v12 = sub_22042BC80();
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_22042D3F0;
      v0[16] = 0;
      v0[17] = 0xE000000000000000;
      v0[19] = v3;
      sub_2203CFDB8(0, &unk_280FA01A0, MEMORY[0x277D84948]);
      sub_22042BDF0();
      v14 = v0[16];
      v15 = v0[17];
      *(v13 + 56) = MEMORY[0x277D837D0];
      *(v13 + 64) = sub_2203C1FA8();
      *(v13 + 32) = v14;
      *(v13 + 40) = v15;
      sub_22042B8D0("Saw feed view event but failed to get JSON representation with error %{public}@", 79, 2, &dword_2203BD000, v8, v12, v13);

      MEMORY[0x223D7C730](v3);
    }

    else
    {
      v16 = v10;
      v17 = v11;
      *(v9 + 56) = MEMORY[0x277D837D0];
      *(v9 + 64) = sub_2203C1FA8();
      *(v9 + 32) = v16;
      *(v9 + 40) = v17;
      v18 = sub_22042BCA0();
      sub_22042B8D0("See feed view event %{public}@", 30, 2, &dword_2203BD000, v8, v18, v9);
    }
  }

  if (sub_22042B410())
  {
    sub_2203DF42C(v0[25], v0[24], type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
    v45 = sub_22042B480();
    v20 = v19;
    v21 = *(v19 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v20 + 16) = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_22041EF10(0, v21[2] + 1, 1, v21);
      *(v20 + 16) = v21;
    }

    v24 = v21[2];
    v23 = v21[3];
    if (v24 >= v23 >> 1)
    {
      v21 = sub_22041EF10((v23 > 1), v24 + 1, 1, v21);
      *(v20 + 16) = v21;
    }

    v26 = v0[42];
    v25 = v0[43];
    v27 = v0[39];
    v43 = v0[38];
    v44 = v0[40];
    v28 = v0[28];
    v41 = v0[27];
    v42 = v0[30];
    v29 = v0[24];
    v30 = v0[25];
    v31 = v0[23];
    v21[2] = v24 + 1;
    sub_2203DF148(v29, v21 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v24, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
    v45();
    sub_2203DF1B0(v26, v25);

    sub_2203DF670(v30, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
    (*(v28 + 8))(v42, v41);
    (*(v27 + 8))(v44, v43);
  }

  else
  {
    v33 = v0[39];
    v32 = v0[40];
    v34 = v0[38];
    v35 = v0[30];
    v36 = v0[27];
    v37 = v0[28];
    v38 = v0[25];
    sub_2203DF1B0(v0[42], v0[43]);
    sub_2203DF670(v38, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
    (*(v37 + 8))(v35, v36);
    (*(v33 + 8))(v32, v34);
  }

  v39 = v0[1];

  return v39();
}

uint64_t sub_2203D7D04()
{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[38];
  v4 = v0[30];
  v5 = v0[27];
  v6 = v0[28];
  sub_2203DF1B0(v0[42], v0[43]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = v0[45];
  if (qword_280FA09F8 != -1)
  {
    swift_once();
  }

  v8 = qword_280FA0A00;
  v9 = sub_22042BC90();
  sub_2203C1EE8(0);
  v10 = swift_allocObject();
  v0[10] = 0;
  *(v10 + 16) = xmmword_22042D3F0;
  v0[11] = 0xE000000000000000;
  v0[18] = v7;
  sub_2203CFDB8(0, &unk_280FA01A0, MEMORY[0x277D84948]);
  sub_22042BDF0();
  v11 = v0[10];
  v12 = v0[11];
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 64) = sub_2203C1FA8();
  *(v10 + 32) = v11;
  *(v10 + 40) = v12;
  sub_22042B8D0("Failed to decode FeedViewEvent.Model from process event with error %{public}@", 77, 2, &dword_2203BD000, v8, v9, v10);

  MEMORY[0x223D7C730](v7);

  v13 = v0[1];

  return v13();
}

uint64_t sub_2203D7F28(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0);
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v4 = sub_22042AF80();
  v2[22] = v4;
  v2[23] = *(v4 - 8);
  v2[24] = swift_task_alloc();
  sub_2203DE8BC(0, &qword_27CF52398, type metadata accessor for WatchSymbolEventUserInfo, MEMORY[0x277D83D88]);
  v2[25] = swift_task_alloc();
  v5 = sub_22042AAC0();
  v2[26] = v5;
  v2[27] = *(v5 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2203D8114, 0, 0);
}

uint64_t sub_2203D8114()
{
  sub_2203DEC7C(0);
  sub_22042ABD0();
  v1 = v0[25];
  if (!v0[5])
  {
    sub_2203DF738((v0 + 2), &qword_280FA0188, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2203DF5B8);
    v13 = type metadata accessor for WatchSymbolEventUserInfo(0);
    (*(*(v13 - 8) + 56))(v1, 1, 1, v13);
LABEL_6:
    sub_2203DF738(v0[25], &unk_27CF52398, type metadata accessor for WatchSymbolEventUserInfo, MEMORY[0x277D83D88], sub_2203DE8BC);
    sub_22042ACE0();
    if (sub_22042ACD0())
    {
      if (qword_280FA09F8 != -1)
      {
        swift_once();
      }

      v14 = qword_280FA0A00;
      v15 = sub_22042BC90();
      sub_22042B8D0("Encountered a WatchSymbolEvent without an associated WatchSymbolEventUserInfo userInfo value", 92, 2, &dword_2203BD000, v14, v15, MEMORY[0x277D84F90]);
    }

    goto LABEL_13;
  }

  v2 = type metadata accessor for WatchSymbolEventUserInfo(0);
  v3 = swift_dynamicCast();
  v4 = *(v2 - 8);
  (*(v4 + 56))(v1, v3 ^ 1u, 1, v2);
  if ((*(v4 + 48))(v1, 1, v2) == 1)
  {
    goto LABEL_6;
  }

  v6 = v0[28];
  v5 = v0[29];
  v7 = v0[26];
  v8 = v0[27];
  v9 = v0[25];
  v10 = v0[17];
  (*(v8 + 16))(v6, v9, v7);
  sub_2203DF670(v9, type metadata accessor for WatchSymbolEventUserInfo);
  (*(v8 + 32))(v5, v6, v7);
  v0[30] = *(v10 + OBJC_IVAR____TtC21StocksPersonalization30UserEventHistoryEventProcessor_sessionManager);
  if (sub_22042B410())
  {

    v11 = sub_22042ABC0();
    v0[31] = sub_22042AC60();
    v0[32] = v12;

    sub_22042A380();
    swift_allocObject();
    sub_22042A370();
    sub_2203DEB0C(&qword_27CF523A0, MEMORY[0x277D687C0], MEMORY[0x277D687C8]);
    sub_22042A360();

    v31 = swift_task_alloc();
    v0[33] = v31;
    *v31 = v0;
    v31[1] = sub_2203D874C;
    v32 = v0[29];

    return sub_2203DD16C(v32);
  }

  v16 = v0[26];
  v17 = v0[27];
  type metadata accessor for UserEventHistoryEventProcessor.Errors(0);
  sub_2203DEB0C(&qword_27CF52388, type metadata accessor for UserEventHistoryEventProcessor.Errors, &unk_22042D900);
  v18 = swift_allocError();
  (*(v17 + 56))(v19, 2, 2, v16);
  swift_willThrow();
  v20 = v18;
  if (qword_280FA09F8 != -1)
  {
    swift_once();
  }

  v21 = v0[29];
  v22 = v0[26];
  v23 = v0[27];
  v24 = qword_280FA0A00;
  v25 = sub_22042BC90();
  sub_2203C1EE8(0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_22042D3F0;
  v0[10] = 0;
  v0[11] = 0xE000000000000000;
  v0[14] = v20;
  sub_2203CFDB8(0, &unk_280FA01A0, MEMORY[0x277D84948]);
  sub_22042BDF0();
  v27 = v0[10];
  v28 = v0[11];
  *(v26 + 56) = MEMORY[0x277D837D0];
  *(v26 + 64) = sub_2203C1FA8();
  *(v26 + 32) = v27;
  *(v26 + 40) = v28;
  sub_22042B8D0("Failed to decode WatchSymbolEvent.Model from process event with error %{public}@", 80, 2, &dword_2203BD000, v24, v25, v26);

  MEMORY[0x223D7C730](v20);
  (*(v23 + 8))(v21, v22);
LABEL_13:

  v29 = v0[1];

  return v29();
}

uint64_t sub_2203D874C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 272) = v2;

  if (v2)
  {
    v7 = sub_2203D8D88;
  }

  else
  {
    *(v6 + 280) = a2;
    *(v6 + 288) = a1;
    v7 = sub_2203D8880;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2203D8880()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[34];
  v4 = v0[29];
  v5 = v0[17];
  v6 = swift_task_alloc();
  v6[2] = v5;
  v6[3] = v4;
  v6[4] = v2;
  v6[5] = v1;
  sub_2203DEB0C(&unk_280FA2130, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionEvent);
  sub_22042B810();

  sub_22042ACE0();
  if (sub_22042ACD0())
  {
    if (qword_280FA09F8 != -1)
    {
      swift_once();
    }

    v7 = qword_280FA0A00;
    sub_2203C1EE8(0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_22042D3F0;
    v9 = sub_2203D9FF8(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent, &unk_280FA2130, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionEvent);
    if (v3)
    {
      *(v8 + 16) = 0;

      v11 = sub_22042BC80();
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_22042D3F0;
      v0[12] = 0;
      v0[13] = 0xE000000000000000;
      v0[15] = v3;
      sub_2203CFDB8(0, &unk_280FA01A0, MEMORY[0x277D84948]);
      sub_22042BDF0();
      v13 = v0[12];
      v14 = v0[13];
      *(v12 + 56) = MEMORY[0x277D837D0];
      *(v12 + 64) = sub_2203C1FA8();
      *(v12 + 32) = v13;
      *(v12 + 40) = v14;
      sub_22042B8D0("Saw watch symbol event but failed to get JSON representation with error %{public}@", 82, 2, &dword_2203BD000, v7, v11, v12);

      MEMORY[0x223D7C730](v3);
    }

    else
    {
      v15 = v9;
      v16 = v10;
      *(v8 + 56) = MEMORY[0x277D837D0];
      *(v8 + 64) = sub_2203C1FA8();
      *(v8 + 32) = v15;
      *(v8 + 40) = v16;
      v17 = sub_22042BCA0();
      sub_22042B8D0("See watch symbol event %{public}@", 33, 2, &dword_2203BD000, v7, v17, v8);
    }
  }

  if (sub_22042B410())
  {
    sub_2203DF42C(v0[21], v0[20], type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
    v44 = sub_22042B480();
    v19 = v18;
    v20 = *(v18 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v19 + 16) = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_22041EF10(0, v20[2] + 1, 1, v20);
      *(v19 + 16) = v20;
    }

    v23 = v20[2];
    v22 = v20[3];
    if (v23 >= v22 >> 1)
    {
      v20 = sub_22041EF10((v22 > 1), v23 + 1, 1, v20);
      *(v19 + 16) = v20;
    }

    v25 = v0[31];
    v24 = v0[32];
    v26 = v0[27];
    v42 = v0[26];
    v43 = v0[29];
    v27 = v0[23];
    v28 = v0[21];
    v40 = v0[22];
    v41 = v0[24];
    v30 = v0[19];
    v29 = v0[20];
    v20[2] = v23 + 1;
    sub_2203DF148(v29, v20 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v23, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
    v44();
    sub_2203DF1B0(v25, v24);

    sub_2203DF670(v28, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
    (*(v27 + 8))(v41, v40);
    (*(v26 + 8))(v43, v42);
  }

  else
  {
    v31 = v0[29];
    v32 = v0[26];
    v33 = v0[27];
    v35 = v0[23];
    v34 = v0[24];
    v37 = v0[21];
    v36 = v0[22];
    sub_2203DF1B0(v0[31], v0[32]);
    sub_2203DF670(v37, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
    (*(v35 + 8))(v34, v36);
    (*(v33 + 8))(v31, v32);
  }

  v38 = v0[1];

  return v38();
}