id StateOfMindChartTapOutFormatter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StateOfMindChartTapOutFormatter.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StateOfMindChartTapOutFormatter(0);
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t type metadata accessor for StateOfMindChartTapOutFormatter(uint64_t a1)
{
  result = qword_27F96D950;
  if (!qword_27F96D950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_2589F841C(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for StateOfMindChartTapOutFormatter(0);
  return objc_msgSendSuper2(&v2, sel_init);
}

id StateOfMindChartTapOutFormatter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StateOfMindChartTapOutFormatter(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2589F84F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2589F8560(uint64_t a1)
{
  if (!qword_27F96D960)
  {
    type metadata accessor for StateOfMindTimeline.EntryFullView(255);
    sub_2589F8654(&qword_27F96D968, type metadata accessor for StateOfMindTimeline.EntryFullView, &protocol conformance descriptor for StateOfMindTimeline.EntryFullView);
    v1 = sub_258B011D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96D960);
    }
  }
}

uint64_t sub_2589F85F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2589F8654(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s21StateOfMindSymbolViewVMa(uint64_t a1)
{
  result = qword_27F96D978;
  if (!qword_27F96D978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2589F8710(uint64_t a1)
{
  sub_2589F95C4(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_2589F95C4(319, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2589F8818@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_258B00F84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589F95C4(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_2589DC538(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_258B006A4();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_258B02E94();
    v13 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_2589F8A24()
{
  sub_2589F927C(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589F9344(0, &qword_27F96D998, MEMORY[0x277CE0330]);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - v5;
  v7 = sub_258B02094();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + *(_s21StateOfMindSymbolViewVMa(0) + 24)) == 1)
  {
    type metadata accessor for MentalHealthUIRepresentative();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = [objc_opt_self() bundleForClass_];
    sub_258B020D4();
    (*(v8 + 104))(v10, *MEMORY[0x277CE0FE0], v7);
    v13 = sub_258B020C4();

    (*(v8 + 8))(v10, v7);
    *v6 = v13;
    *(v6 + 1) = 0;
    *(v6 + 8) = 1;
    swift_storeEnumTagMultiPayload();
    sub_2589BF7E8(0, &qword_27F96C858, MEMORY[0x277CE1088], MEMORY[0x277CE01B8], MEMORY[0x277CDFAB8]);
    sub_2589C0238();
    sub_2589F9480(&qword_27F96D9A0, sub_2589F927C, sub_2589F9444, MEMORY[0x277CDF900]);
    return sub_258B012A4();
  }

  else
  {
    sub_2589F8DF8(v3);
    sub_2589F93E0(v3, v6);
    swift_storeEnumTagMultiPayload();
    sub_2589BF7E8(0, &qword_27F96C858, MEMORY[0x277CE1088], MEMORY[0x277CE01B8], MEMORY[0x277CDFAB8]);
    sub_2589C0238();
    sub_2589F9480(&qword_27F96D9A0, sub_2589F927C, sub_2589F9444, MEMORY[0x277CDF900]);
    sub_258B012A4();
    return sub_2589F9500(v3, sub_2589F927C);
  }
}

void sub_2589F8DF8(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = sub_258B02554();
  v35 = *(v1 - 8);
  v36 = v1;
  MEMORY[0x28223BE20](v1);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_258B006A4();
  v3 = *(v33 - 8);
  v4 = MEMORY[0x28223BE20](v33);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - v7;
  v9 = type metadata accessor for StateOfMindTimeline.Styles(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_258B02094();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589F92DC(0);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B020A4();
  (*(v13 + 104))(v15, *MEMORY[0x277CE0FE0], v12);
  v32 = sub_258B020C4();

  (*(v13 + 8))(v15, v12);
  v31 = *(_s21StateOfMindSymbolViewVMa(0) + 20);
  sub_258AC1060(v11);
  sub_2589F9500(v11, type metadata accessor for StateOfMindTimeline.Styles);
  v20 = [objc_opt_self() labelColor];
  v30 = sub_258B01F94();
  sub_2589F8818(v8);
  v21 = v33;
  (*(v3 + 104))(v6, *MEMORY[0x277CDF3D0], v33);
  LOBYTE(v12) = sub_258B00694();
  v22 = *(v3 + 8);
  v22(v6, v21);
  v22(v8, v21);
  v24 = v34;
  v23 = v35;
  v25 = MEMORY[0x277CE13B0];
  if ((v12 & 1) == 0)
  {
    v25 = MEMORY[0x277CE13B8];
  }

  v26 = v36;
  (*(v35 + 104))(v34, *v25, v36);
  (*(v23 + 32))(&v19[*(v17 + 44)], v24, v26);
  *v19 = v32;
  *(v19 + 1) = 0;
  *(v19 + 8) = 1;
  *(v19 + 3) = v30;
  sub_258AC1060(v11);
  sub_2589F9500(v11, type metadata accessor for StateOfMindTimeline.Styles);
  v27 = v37;
  sub_2589F9560(v19, v37);
  sub_2589F927C(0);
  *(v27 + *(v28 + 36)) = 0x3FA999999999999ALL;
}

void sub_2589F927C(uint64_t a1)
{
  if (!qword_27F96D988)
  {
    sub_2589F92DC(255);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96D988);
    }
  }
}

void sub_2589F92DC(uint64_t a1)
{
  if (!qword_27F96D990)
  {
    sub_2589BF728(255);
    sub_258B00C84();
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96D990);
    }
  }
}

void sub_2589F9344(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_2589BF7E8(255, &qword_27F96C858, MEMORY[0x277CE1088], MEMORY[0x277CE01B8], MEMORY[0x277CDFAB8]);
    v7 = v6;
    sub_2589F927C(255);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2589F93E0(uint64_t a1, uint64_t a2)
{
  sub_2589F927C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589F9480(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2589F9500(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2589F9560(uint64_t a1, uint64_t a2)
{
  sub_2589F92DC(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2589F95C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2589F9628()
{
  result = qword_27F96D9B0;
  if (!qword_27F96D9B0)
  {
    sub_2589F9344(255, &qword_27F96D9B8, MEMORY[0x277CE0338]);
    sub_2589C0238();
    sub_2589F9480(&qword_27F96D9A0, sub_2589F927C, sub_2589F9444, MEMORY[0x277CDF900]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D9B0);
  }

  return result;
}

uint64_t type metadata accessor for IntroPhase_iOS(uint64_t a1)
{
  result = qword_27F96D9C0;
  if (!qword_27F96D9C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2589F9770(uint64_t a1)
{
  sub_2589FA1A4(319, &qword_27F96C7E8, type metadata accessor for IntroPhaseSpecs, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_2589E3D24(319);
    if (v2 <= 0x3F)
    {
      sub_2589C0D10();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2589F9860@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_258B00F84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589FA1A4(0, &qword_27F96C940, type metadata accessor for IntroPhaseSpecs, MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_2589FA328(v2, &v13 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_2589FA3BC(v10, a1, type metadata accessor for IntroPhaseSpecs);
  }

  sub_258B02E94();
  v12 = sub_258B01824();
  sub_258B00354();

  sub_258B00F74();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

id sub_2589F9A50@<X0>(__n128 *a1@<X8>)
{
  v3 = type metadata accessor for IntroPhaseSpecs(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IntroPhaseContent(0);
  MEMORY[0x28223BE20](v6);
  v8 = (v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for IntroPhase_iOS(0);
  v10 = 0uLL;
  v11 = 0uLL;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  if (*(v1 + *(v9 + 24)) == 1)
  {
    sub_2589F9D9C(v36);
    v10 = v36[0];
    v11 = v36[1];
    v12 = v36[2];
    v13 = v36[3];
    v14 = v36[4];
  }

  *a1 = v10;
  a1[1] = v11;
  a1[2] = v12;
  a1[3] = v13;
  a1[4] = v14;
  v15 = (v1 + *(v9 + 28));
  v17 = *v15;
  v16 = v15[1];
  *(v8 + *(v6 + 24)) = swift_getKeyPath();
  sub_2589FA1A4(0, &qword_27F96C940, type metadata accessor for IntroPhaseSpecs, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for StateOfMindEntryModel(0);
  sub_2589FA15C(&qword_27F96C958, type metadata accessor for StateOfMindEntryModel, &protocol conformance descriptor for StateOfMindEntryModel);

  *v8 = sub_258B00A24();
  v8[1] = v18;
  v8[2] = v17;
  v8[3] = v16;
  v19 = sub_258B01864();
  sub_2589F9860(v5);
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v21 = result;
    [result isiPad];

    sub_2589F9F8C(v5);
    sub_2589F9FE8(0);
    v23 = v22;
    v24 = a1 + *(v22 + 36);
    sub_258B00654();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    sub_2589FA3BC(v8, v24, type metadata accessor for IntroPhaseContent);
    sub_2589FA04C(0);
    v34 = &v24[*(v33 + 36)];
    *v34 = v19;
    *(v34 + 1) = v26;
    *(v34 + 2) = v28;
    *(v34 + 3) = v30;
    *(v34 + 4) = v32;
    v34[40] = 0;
    v35 = *(v23 + 40);
    *(a1->n128_u64 + v35) = swift_getKeyPath();
    sub_2589FA1A4(0, &qword_27F96D2E0, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF458]);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 sub_2589F9D9C@<Q0>(__n128 *a1@<X8>)
{
  v3 = type metadata accessor for IntroPhase_iOS(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v6 = sub_258AFFD94();
  v8 = v7;
  sub_2589FA208(v1, v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_2589FA3BC(v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for IntroPhase_iOS);
  v14[1] = 0;
  v15 = 1;
  sub_2589FA2D8();
  sub_258B02354();
  result = v16;
  v12 = v17;
  v13 = v18;
  a1->n128_u64[0] = v6;
  a1->n128_u64[1] = v8;
  a1[1] = result;
  a1[2].n128_u64[0] = v12;
  a1[2].n128_u8[8] = v13;
  a1[3].n128_u64[0] = 0x747475427478654ELL;
  a1[3].n128_u64[1] = 0xEA00000000006E6FLL;
  a1[4].n128_u64[0] = sub_2589FA26C;
  a1[4].n128_u64[1] = v10;
  return result;
}

uint64_t sub_2589F9F8C(uint64_t a1)
{
  v2 = type metadata accessor for IntroPhaseSpecs(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2589F9FE8(uint64_t a1)
{
  if (!qword_27F96D9D0)
  {
    sub_2589FA04C(255);
    v3 = v2;
    v4 = sub_2589FA0AC();
    v6 = type metadata accessor for StateOfMindEntryPhase_iOS(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_27F96D9D0);
    }
  }
}

void sub_2589FA04C(uint64_t a1)
{
  if (!qword_27F96D9D8)
  {
    type metadata accessor for IntroPhaseContent(255);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96D9D8);
    }
  }
}

unint64_t sub_2589FA0AC()
{
  result = qword_27F96D9E0;
  if (!qword_27F96D9E0)
  {
    sub_2589FA04C(255);
    sub_2589FA15C(&qword_27F96D9E8, type metadata accessor for IntroPhaseContent, &unk_258B2FAD4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D9E0);
  }

  return result;
}

uint64_t sub_2589FA15C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2589FA1A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2589FA208(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntroPhase_iOS(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2589FA2D8()
{
  if (!qword_27F96D9F0)
  {
    v0 = sub_258B030C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D9F0);
    }
  }
}

uint64_t sub_2589FA328(uint64_t a1, uint64_t a2)
{
  sub_2589FA1A4(0, &qword_27F96C940, type metadata accessor for IntroPhaseSpecs, MEMORY[0x277CDF458]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589FA3BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s14EntryEmptyViewVMa(uint64_t a1)
{
  result = qword_27F96DA00;
  if (!qword_27F96DA00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2589FA498(uint64_t a1)
{
  sub_2589FC328(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_2589FC328(319, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_2589DB8A8(319, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2589FA5D4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_258B00F84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277CDF3E0];
  v9 = MEMORY[0x277CDF458];
  sub_2589FC328(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - v11;
  sub_2589FC538(v2, &v16 - v11, &qword_27F96C908, v8, v9, sub_2589FC328);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_258B006A4();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    sub_258B02E94();
    v15 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_2589FA814@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = sub_258B01634();
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s6StylesV5EmptyVMa(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589FBCE0(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_2589FBCE0;
  sub_2589FBF48(0, &qword_27F96DA48, sub_2589FBCE0, MEMORY[0x277CDFC70]);
  v16 = v15;
  MEMORY[0x28223BE20](v15);
  v18 = &v34 - v17;
  sub_2589FBFAC(0);
  v37 = v19;
  v36 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v14 = sub_258B01194();
  *(v14 + 1) = 0;
  v14[16] = 0;
  sub_2589FC170(0);
  sub_2589FAD34(v1, &v14[*(v22 + 44)]);
  _s14EntryEmptyViewVMa(0);
  sub_258AC1060(v11);
  sub_2589FC208(&v11[*(v9 + 60)], v7);
  sub_2589FC26C(v11, type metadata accessor for StateOfMindTimeline.Styles);
  sub_2589FC26C(v7, _s6StylesV5EmptyVMa);
  sub_258B024F4();
  sub_258B00C94();
  sub_2589FC38C(v14, v18, sub_2589FBCE0);
  v23 = &v18[*(v16 + 36)];
  v24 = v50;
  *(v23 + 4) = v49;
  *(v23 + 5) = v24;
  *(v23 + 6) = v51;
  v25 = v46;
  *v23 = v45;
  *(v23 + 1) = v25;
  v26 = v48;
  *(v23 + 2) = v47;
  *(v23 + 3) = v26;
  sub_258B01614();
  v27 = sub_2589FC054();
  sub_258B01D84();
  (*(v38 + 8))(v4, v39);
  sub_2589FC2CC(v18, &qword_27F96DA48, v35, MEMORY[0x277CDFC70]);
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v43 = sub_258AFFD94();
  v44 = v28;
  v41 = v16;
  v42 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2589BFF58(OpaqueTypeConformance2, v30, v31);
  v32 = v37;
  sub_258B01D34();

  return (*(v36 + 8))(v21, v32);
}

uint64_t sub_2589FAD34@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v153 = a2;
  v154 = a1;
  v144 = sub_258B02554();
  v143 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v142 = &v129 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_258B006A4();
  v140 = *(v141 - 8);
  v3 = MEMORY[0x28223BE20](v141);
  v138 = &v129 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v137 = &v129 - v5;
  v133 = sub_258B019F4();
  v132 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v131 = &v129 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589C5144(0);
  v134 = v7;
  MEMORY[0x28223BE20](v7);
  v135 = &v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589DB778(0);
  v139 = v9;
  MEMORY[0x28223BE20](v9);
  v136 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589FC6CC(0, &qword_27F96DA38, sub_2589DB778);
  MEMORY[0x28223BE20](v11 - 8);
  v147 = &v129 - v12;
  sub_2589FBE44(0);
  v145 = v13;
  MEMORY[0x28223BE20](v13);
  v150 = &v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589FBF48(0, &qword_27F96DA28, sub_2589FBE44, MEMORY[0x277CDF928]);
  v149 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v152 = &v129 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v148 = &v129 - v19;
  MEMORY[0x28223BE20](v18);
  v151 = &v129 - v20;
  v156 = (_s6StylesV5EmptyVMa(0) - 8);
  MEMORY[0x28223BE20](v156);
  v22 = &v129 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v24 = v23 - 8;
  v25 = MEMORY[0x28223BE20](v23);
  v157 = &v129 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v129 - v27;
  v29 = _s21StateOfMindSymbolViewVMa(0);
  v30 = v29 - 8;
  MEMORY[0x28223BE20](v29);
  v32 = (&v129 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v129 = _s21StateOfMindSymbolViewVMa;
  sub_2589FBF48(0, &qword_27F96CA00, _s21StateOfMindSymbolViewVMa, MEMORY[0x277CDF688]);
  v34 = v33 - 8;
  v35 = MEMORY[0x28223BE20](v33);
  v146 = &v129 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v129 - v38;
  MEMORY[0x28223BE20](v37);
  v41 = &v129 - v40;
  *v32 = swift_getKeyPath();
  v42 = MEMORY[0x277CDF458];
  sub_2589FC328(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v43 = *(v30 + 28);
  *(v32 + v43) = swift_getKeyPath();
  sub_2589FC328(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, v42);
  swift_storeEnumTagMultiPayload();
  *(v32 + *(v30 + 32)) = 0;
  v130 = _s14EntryEmptyViewVMa(0);
  v155 = *(v130 + 20);
  sub_258AC1060(v28);
  sub_2589FC208(&v28[*(v24 + 60)], v22);
  sub_2589FC26C(v28, type metadata accessor for StateOfMindTimeline.Styles);
  sub_2589FC26C(v22, _s6StylesV5EmptyVMa);
  sub_258B024F4();
  sub_258B00854();
  sub_2589FC38C(v32, v39, _s21StateOfMindSymbolViewVMa);
  v44 = &v39[*(v34 + 44)];
  v45 = v161;
  *v44 = v160;
  *(v44 + 1) = v45;
  *(v44 + 2) = v162;
  v156 = v41;
  sub_2589FC3F4(v39, v41, &qword_27F96CA00, v129, MEMORY[0x277CDF688]);
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v158 = sub_258AFFD94();
  v159 = v46;
  sub_2589BFF58(v158, v46, v47);
  v48 = sub_258B01B44();
  v50 = v49;
  v52 = v51;
  v53 = v157;
  sub_258AC1060(v157);
  v129 = type metadata accessor for StateOfMindTimeline.Styles;
  sub_2589FC26C(v53, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B019C4();
  sub_258B01994();
  sub_258B019E4();

  v54 = v132;
  v55 = v131;
  v56 = v133;
  (*(v132 + 104))(v131, *MEMORY[0x277CE0A10], v133);
  sub_258B01A14();

  (*(v54 + 8))(v55, v56);
  v57 = sub_258B01AE4();
  v59 = v58;
  v61 = v60;
  sub_2589BFFAC(v48, v50, v52 & 1);

  v62 = v154;
  v63 = v157;
  sub_258AC1060(v157);
  sub_2589FC26C(v63, v129);
  v64 = [objc_opt_self() tertiaryLabelColor];
  v158 = sub_258B01F94();
  v65 = sub_258B01AB4();
  v67 = v66;
  v69 = v68;
  v133 = v70;
  sub_2589BFFAC(v57, v59, v61 & 1);

  v71 = v137;
  sub_2589FA5D4(v137);
  v72 = v140;
  v73 = v138;
  v74 = v141;
  (*(v140 + 104))(v138, *MEMORY[0x277CDF3D0], v141);
  v75 = sub_258B00694();
  v76 = *(v72 + 8);
  v76(v73, v74);
  v76(v71, v74);
  v77 = v143;
  v78 = MEMORY[0x277CE13B0];
  if ((v75 & 1) == 0)
  {
    v78 = MEMORY[0x277CE13B8];
  }

  v79 = v142;
  v80 = v144;
  (*(v143 + 104))(v142, *v78, v144);
  v81 = v135;
  (*(v77 + 32))(&v135[*(v134 + 36)], v79, v80);
  *v81 = v65;
  *(v81 + 1) = v67;
  v81[16] = v69 & 1;
  *(v81 + 3) = v133;
  KeyPath = swift_getKeyPath();
  v83 = v81;
  v84 = v136;
  sub_2589FC38C(v83, v136, sub_2589C5144);
  v85 = v84 + *(v139 + 36);
  *v85 = KeyPath;
  *(v85 + 8) = 1;
  v86 = *(v62 + *(v130 + 24));
  sub_258B003E4();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v88 = v157;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v86 = sub_258A74828(0, *(v86 + 2) + 1, 1, v86);
  }

  v90 = *(v86 + 2);
  v89 = *(v86 + 3);
  if (v90 >= v89 >> 1)
  {
    v86 = sub_258A74828((v89 > 1), v90 + 1, 1, v86);
  }

  *(v86 + 2) = v90 + 1;
  v91 = &v86[16 * v90];
  *(v91 + 4) = 0x62614C7974706D45;
  *(v91 + 5) = 0xEA00000000006C65;
  v158 = &unk_2869D4670;
  v92 = sub_258B003E4();
  sub_2589FC8C8(v92);
  sub_2589DB8A8(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  sub_2589DC374();
  v93 = v147;
  sub_258B01DD4();

  sub_2589FC26C(v84, sub_2589DB778);
  v94 = sub_258B01884();
  sub_258AC1060(v88);
  sub_2589FC26C(v88, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B00654();
  v96 = v95;
  v98 = v97;
  v100 = v99;
  v102 = v101;
  v103 = v150;
  sub_2589FC4B8(v93, v150);
  v104 = v103 + *(v145 + 36);
  *v104 = v94;
  *(v104 + 8) = v96;
  *(v104 + 16) = v98;
  *(v104 + 24) = v100;
  *(v104 + 32) = v102;
  *(v104 + 40) = 0;
  v105 = sub_258B01864();
  sub_258AC1060(v88);
  sub_2589FC26C(v88, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B00654();
  v107 = v106;
  v109 = v108;
  v111 = v110;
  v113 = v112;
  v114 = v103;
  v115 = v148;
  sub_2589FC38C(v114, v148, sub_2589FBE44);
  v116 = v115 + *(v149 + 36);
  *v116 = v105;
  *(v116 + 8) = v107;
  *(v116 + 16) = v109;
  *(v116 + 24) = v111;
  *(v116 + 32) = v113;
  *(v116 + 40) = 0;
  v117 = MEMORY[0x277CDF928];
  v118 = v151;
  sub_2589FC3F4(v115, v151, &qword_27F96DA28, sub_2589FBE44, MEMORY[0x277CDF928]);
  v119 = MEMORY[0x277CDF688];
  v120 = v146;
  sub_2589FC538(v156, v146, &qword_27F96CA00, _s21StateOfMindSymbolViewVMa, MEMORY[0x277CDF688], sub_2589FBF48);
  v121 = v152;
  sub_2589FC538(v118, v152, &qword_27F96DA28, sub_2589FBE44, v117, sub_2589FBF48);
  v122 = v153;
  *v153 = 0;
  *(v122 + 8) = 1;
  sub_2589FBD74(0);
  v124 = v123;
  sub_2589FC538(v120, v122 + *(v123 + 48), &qword_27F96CA00, _s21StateOfMindSymbolViewVMa, v119, sub_2589FBF48);
  v125 = MEMORY[0x277CDF928];
  sub_2589FC538(v121, v122 + *(v124 + 64), &qword_27F96DA28, sub_2589FBE44, MEMORY[0x277CDF928], sub_2589FBF48);
  v126 = v122 + *(v124 + 80);
  *v126 = 0;
  v126[8] = 1;
  sub_2589FC2CC(v118, &qword_27F96DA28, sub_2589FBE44, v125);
  v127 = MEMORY[0x277CDF688];
  sub_2589FC2CC(v156, &qword_27F96CA00, _s21StateOfMindSymbolViewVMa, MEMORY[0x277CDF688]);
  sub_2589FC2CC(v121, &qword_27F96DA28, sub_2589FBE44, v125);
  return sub_2589FC2CC(v120, &qword_27F96CA00, _s21StateOfMindSymbolViewVMa, v127);
}

void sub_2589FBCE0(uint64_t a1)
{
  if (!qword_27F96DA10)
  {
    sub_2589FC328(255, &qword_27F96DA18, sub_2589FBD74, MEMORY[0x277CE14B8]);
    sub_2589FBEC0();
    v1 = sub_258B022D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96DA10);
    }
  }
}

void sub_2589FBD74(uint64_t a1)
{
  if (!qword_27F96DA20)
  {
    sub_2589FBF48(255, &qword_27F96CA00, _s21StateOfMindSymbolViewVMa, MEMORY[0x277CDF688]);
    sub_2589FBF48(255, &qword_27F96DA28, sub_2589FBE44, MEMORY[0x277CDF928]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27F96DA20);
    }
  }
}

void sub_2589FBE44(uint64_t a1)
{
  if (!qword_27F96DA30)
  {
    sub_2589FC6CC(255, &qword_27F96DA38, sub_2589DB778);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96DA30);
    }
  }
}

unint64_t sub_2589FBEC0()
{
  result = qword_27F96DA40;
  if (!qword_27F96DA40)
  {
    sub_2589FC328(255, &qword_27F96DA18, sub_2589FBD74, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96DA40);
  }

  return result;
}

void sub_2589FBF48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_258B00B04();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2589FBFAC(uint64_t a1)
{
  if (!qword_27F96DA50)
  {
    sub_2589FBF48(255, &qword_27F96DA48, sub_2589FBCE0, MEMORY[0x277CDFC70]);
    sub_2589FC054();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96DA50);
    }
  }
}

unint64_t sub_2589FC054()
{
  result = qword_27F96DA58;
  if (!qword_27F96DA58)
  {
    sub_2589FBF48(255, &qword_27F96DA48, sub_2589FBCE0, MEMORY[0x277CDFC70]);
    sub_2589FC128(&qword_27F96DA60, sub_2589FBCE0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96DA58);
  }

  return result;
}

uint64_t sub_2589FC128(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2589FC170(uint64_t a1)
{
  if (!qword_27F96DA68)
  {
    sub_2589FC328(255, &qword_27F96DA18, sub_2589FBD74, MEMORY[0x277CE14B8]);
    v1 = sub_258B00974();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96DA68);
    }
  }
}

uint64_t sub_2589FC208(uint64_t a1, uint64_t a2)
{
  v4 = _s6StylesV5EmptyVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589FC26C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2589FC2CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_2589FBF48(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_2589FC328(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2589FC38C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2589FC3F4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  sub_2589FBF48(0, a3, a4, a5);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

uint64_t sub_2589FC464@<X0>(_BYTE *a1@<X8>)
{
  result = sub_258B00E54();
  *a1 = result;
  return result;
}

uint64_t sub_2589FC4B8(uint64_t a1, uint64_t a2)
{
  sub_2589FC6CC(0, &qword_27F96DA38, sub_2589DB778);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589FC538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

unint64_t sub_2589FC5AC()
{
  result = qword_27F96DA70;
  if (!qword_27F96DA70)
  {
    sub_2589FC6CC(255, &qword_27F96DA78, sub_2589FBFAC);
    sub_2589FBF48(255, &qword_27F96DA48, sub_2589FBCE0, MEMORY[0x277CDFC70]);
    sub_2589FC054();
    swift_getOpaqueTypeConformance2();
    sub_2589FC128(&qword_280DF8950, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96DA70);
  }

  return result;
}

void sub_2589FC6CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_258B017D4();
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t MentalHealthAccessibilityCategory.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_258B03324();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_2589FC7AC()
{
  sub_258B03514();
  sub_258B02B74();
  return sub_258B03554();
}

uint64_t sub_2589FC810(uint64_t a1)
{
  sub_258B03514();
  sub_258B02B74();
  return sub_258B03554();
}

uint64_t sub_2589FC85C@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_258B03324();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_2589FC8C8(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_258A74828(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2589FC9BC(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_258A75498(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2589FCAB4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_258B032B4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_258B032B4();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_2589FD048(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_2589F427C(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_2589FCBA4(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_258A757CC(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2589FCC90(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_258A758E8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t static String.mindAccessibilityIdentifier(_:)(uint64_t a1)
{
  v1 = sub_258B003E4();
  sub_2589FC8C8(v1);
  sub_2589FCE08();
  sub_2589C6824();
  v2 = sub_258B02A34();

  return v2;
}

void sub_2589FCE08()
{
  if (!qword_280DF8948)
  {
    v0 = sub_258B02CD4();
    if (!v1)
    {
      atomic_store(v0, &qword_280DF8948);
    }
  }
}

uint64_t static String.mindAccessibilityIdentifier(_:components:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_258B003E4();
  sub_2589FC8C8(v2);
  v3 = sub_258B003E4();
  sub_2589FC8C8(v3);
  sub_2589FCE08();
  sub_2589C6824();
  v4 = sub_258B02A34();

  return v4;
}

unint64_t sub_2589FCF14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96DA80;
  if (!qword_27F96DA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96DA80);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MentalHealthAccessibilityCategory(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for MentalHealthAccessibilityCategory(_WORD *result, int a2, int a3)
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

uint64_t sub_2589FD048(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_258B032B4();
LABEL_9:
  result = sub_258B031D4();
  *v2 = result;
  return result;
}

uint64_t _s14EntryViewStackVMa(uint64_t a1)
{
  result = qword_27F96DA88;
  if (!qword_27F96DA88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2589FD15C(uint64_t a1)
{
  sub_2589FE24C(319, &qword_27F96C788, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_2589FD1E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96DA98;
  if (!qword_27F96DA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96DA98);
  }

  return result;
}

void *sub_2589FD23C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = sub_258B00934();
  v8 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v39 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v39 - v17;
  if (a2)
  {
    sub_258AC1060(&v39 - v17);
    sub_2589FE5A4(v18, type metadata accessor for StateOfMindTimeline.Styles);
    v19 = 373.0;
  }

  else
  {
    v19 = *&a1;
  }

  sub_258AC1060(v18);
  sub_2589FE5A4(v18, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258AC1060(v16);
  sub_2589FE5A4(v16, type metadata accessor for StateOfMindTimeline.Styles);
  v20 = v19 + -40.0;
  sub_258AC1060(v13);
  sub_2589FE5A4(v13, type metadata accessor for StateOfMindTimeline.Styles);
  if (v19 + -40.0 > 373.0)
  {
    v20 = 373.0;
  }

  sub_258B009D4();
  sub_2589FE55C(&qword_27F96DAE0, MEMORY[0x277CDF7F8], MEMORY[0x277CDF820]);
  v21 = a5;
  v22 = sub_258B02DA4();
  v23 = MEMORY[0x277D84F90];
  if (!v22)
  {
    return v23;
  }

  v24 = v22;
  v44 = MEMORY[0x277D84F90];
  sub_258AA920C(0, v22 & ~(v22 >> 63), 0);
  v23 = v44;
  result = sub_258B02D94();
  if ((v24 & 0x8000000000000000) == 0)
  {
    v39 = v20;
    v26 = (v8 + 16);
    v27 = (v8 + 8);
    do
    {
      v28 = sub_258B02DD4();
      v30 = v40;
      v29 = v41;
      (*v26)(v40);
      v28(v43, 0);
      v43[0] = 0;
      v42 = 1;
      sub_258B00914();
      v32 = v31;
      v34 = v33;
      (*v27)(v30, v29);
      v44 = v23;
      v35 = v21;
      v37 = *(v23 + 16);
      v36 = *(v23 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_258AA920C((v36 > 1), v37 + 1, 1);
        v23 = v44;
      }

      *(v23 + 16) = v37 + 1;
      v38 = v23 + 16 * v37;
      *(v38 + 32) = v32;
      *(v38 + 40) = v34;
      sub_258B02DC4();
      --v24;
      v21 = v35;
    }

    while (v24);
    return v23;
  }

  __break(1u);
  return result;
}

double sub_2589FD5F8(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  v5 = sub_2589FD23C(a1, a2 & 1, a3, a4 & 1, a5);
  v7 = v6;
  v8 = v5[2];
  if (v8)
  {
    v9 = (v5 + 5);
    v10 = 0.0;
    do
    {
      v11 = *v9;
      v9 += 2;
      v12 = v11;
      if (v10 <= v11)
      {
        v10 = v12;
      }

      --v8;
    }

    while (v8);
  }

  return v7;
}

uint64_t sub_2589FD66C(uint64_t a1, char a2, uint64_t a3, int a4, void (**a5)(uint64_t, char *, uint64_t), double a6, double a7)
{
  LODWORD(v86) = a4;
  v76 = sub_258B00F84();
  v13 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v75 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589FE24C(0, &qword_27F96CC08, MEMORY[0x277CDF458]);
  v82 = v15;
  MEMORY[0x28223BE20](v15);
  v81 = &v71 - v16;
  v17 = type metadata accessor for StateOfMindTimeline.Styles(0);
  MEMORY[0x28223BE20](v17 - 8);
  v80 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_258B00934();
  v71 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v89 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589FE2AC(0);
  v85 = v20;
  MEMORY[0x28223BE20](v20);
  v88 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_258B009D4();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589FE364(0, &qword_27F96DAB0, MEMORY[0x277D84110]);
  v73 = v26;
  MEMORY[0x28223BE20](v26);
  v28 = &v71 - v27;
  sub_2589FE364(0, &qword_27F96DAD0, MEMORY[0x277D84118]);
  v87 = v29;
  v30 = MEMORY[0x28223BE20](v29);
  v84 = &v71 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v72 = &v71 - v32;
  LOBYTE(v91[0]) = a2 & 1;
  v92 = v86 & 1;
  v83 = v7;
  v33 = sub_2589FD23C(a1, a2 & 1, a3, v86 & 1, a5);
  v34 = v33;
  v35 = v33[2];
  v86 = v22;
  if (v35)
  {
    v74 = v25;
    v78 = a5;
    v79 = v13;
    v36 = 0.0;
    v37 = 5;
    v38 = v35;
    do
    {
      if (v36 <= *&v33[v37])
      {
        v36 = *&v33[v37];
      }

      v37 += 2;
      --v38;
    }

    while (v38);
    v91[0] = MEMORY[0x277D84F90];
    sub_258AA922C(0, v35, 0);
    v39 = v91[0];
    v40 = *(v91[0] + 16);
    v41 = 32 * v40 + 56;
    v42 = 4;
    do
    {
      v43 = v34[v42];
      v91[0] = v39;
      v44 = *(v39 + 24);
      v45 = v40 + 1;
      if (v40 >= v44 >> 1)
      {
        sub_258AA922C((v44 > 1), v40 + 1, 1);
        v39 = v91[0];
      }

      *(v39 + 16) = v45;
      v46 = (v39 + v41);
      *(v46 - 3) = v43;
      *(v46 - 16) = 0;
      *(v46 - 1) = v36;
      v41 += 32;
      v42 += 2;
      v40 = v45;
      *v46 = 0;
      --v35;
    }

    while (v35);

    v22 = v86;
    v13 = v79;
    a5 = v78;
    v25 = v74;
  }

  else
  {

    v39 = MEMORY[0x277D84F90];
  }

  v47 = v72;
  (*(v23 + 16))(v72, a5, v22);
  v48 = v87;
  *(v47 + *(v87 + 52)) = v39;
  v49 = v84;
  sub_2589FE458(v47, v84, &qword_27F96DAD0, MEMORY[0x277D84118], sub_2589FE364);
  (*(v23 + 32))(v25, v49, v22);
  v50 = MEMORY[0x277CDF7F8];
  sub_2589FE55C(&qword_27F96DAC0, MEMORY[0x277CDF7F8], MEMORY[0x277CDF810]);
  sub_258B02C14();
  v51 = &v28[*(v73 + 52)];
  v87 = *(v49 + *(v48 + 52));
  *v51 = v87;
  *(v51 + 1) = 0;
  v84 = v51;
  sub_2589FE4C8(0);
  v53 = *(v52 + 36);
  v54 = sub_2589FE55C(&qword_27F96DAE0, v50, MEMORY[0x277CDF820]);
  sub_258B02DB4();
  if (*&v28[v53] == v91[0])
  {
LABEL_22:
    v70 = *(v73 + 56);
    sub_2589FE668(v72, &qword_27F96DAD0, MEMORY[0x277D84118]);
    v28[v70] = 1;
    return sub_2589FE668(v28, &qword_27F96DAB0, MEMORY[0x277D84110]);
  }

  else
  {
    v55 = 0;
    v79 = (v71 + 16);
    v78 = (v71 + 32);
    v74 = (v13 + 1);
    v56 = (v87 + 56);
    v77 = v28;
    while (1)
    {
      v60 = sub_258B02DD4();
      (*v79)(v89);
      v60(v91, 0);
      result = sub_258B02DC4();
      v62 = *(v87 + 16);
      if (v55 == v62)
      {
        (*(v71 + 8))(v89, v90);
        goto LABEL_22;
      }

      if (v55 >= v62)
      {
        break;
      }

      v63 = v54;
      v64 = *(v56 - 3);
      v65 = *v56;
      v66 = *(v56 - 1);
      v67 = *(v56 - 16);
      *(v84 + 1) = v55 + 1;
      v68 = v88 + *(v85 + 48);
      (*v78)(v88, v89, v90);
      *v68 = v64;
      *(v68 + 8) = v67;
      *(v68 + 16) = v66;
      *(v68 + 24) = v65;
      sub_258B025B4();
      LOBYTE(v91[0]) = v67;
      v92 = v65;
      result = sub_258B00924();
      if (v67)
      {
        goto LABEL_24;
      }

      v69 = v81;
      sub_2589FE458(v83, v81, &qword_27F96CC08, MEMORY[0x277CDF458], sub_2589FE24C);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v59 = v80;
        sub_2589FE604(v69, v80);
      }

      else
      {
        sub_258B02E94();
        v57 = sub_258B01824();
        sub_258B00354();

        v58 = v75;
        sub_258B00F74();
        v59 = v80;
        swift_getAtKeyPath();

        (*v74)(v58, v76);
      }

      v54 = v63;
      sub_2589FE5A4(v59, type metadata accessor for StateOfMindTimeline.Styles);
      a6 = a6 + v64 + 10.0;
      sub_2589FE5A4(v88, sub_2589FE2AC);
      v28 = v77;
      sub_258B02DB4();
      v56 += 4;
      ++v55;
      if (*&v28[v53] == v91[0])
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2589FE130(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_258B005E4();
  return sub_2589FE1B8;
}

void sub_2589FE1B8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void sub_2589FE24C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for StateOfMindTimeline.Styles(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_2589FE2AC(uint64_t a1)
{
  if (!qword_27F96DAA8)
  {
    sub_258B00934();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96DAA8);
    }
  }
}

void sub_2589FE314()
{
  if (!qword_27F96DAB8)
  {
    v0 = sub_258B02CD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96DAB8);
    }
  }
}

void sub_2589FE364(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = sub_258B009D4();
    sub_2589FE314();
    v10[0] = v6;
    v10[1] = v7;
    v10[2] = sub_2589FE55C(&qword_27F96DAC0, MEMORY[0x277CDF7F8], MEMORY[0x277CDF810]);
    v10[3] = sub_2589FE55C(&qword_27F96DAC8, sub_2589FE314, MEMORY[0x277D83970]);
    v8 = a3(a1, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2589FE458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_2589FE4C8(uint64_t a1)
{
  if (!qword_27F96DAD8)
  {
    sub_258B009D4();
    sub_2589FE55C(&qword_27F96DAE0, MEMORY[0x277CDF7F8], MEMORY[0x277CDF820]);
    v1 = sub_258B03284();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96DAD8);
    }
  }
}

uint64_t sub_2589FE55C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2589FE5A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2589FE604(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StateOfMindTimeline.Styles(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589FE668(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  sub_2589FE364(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for LabelsSelectionPhase_iOS(uint64_t a1)
{
  result = qword_27F96DAE8;
  if (!qword_27F96DAE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2589FE738(uint64_t a1)
{
  sub_2589E3D24(319);
  if (v1 <= 0x3F)
  {
    sub_2589C0D10();
    if (v2 <= 0x3F)
    {
      sub_2589FF830(319, &qword_27F96D290, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_2589FF830(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2589FE878@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v64 = sub_258B006A4();
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v61 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589FF31C(0, &qword_27F96DAF8, sub_2589FF2D4, sub_2589FF3A0, MEMORY[0x277CE0330]);
  v57 = v3;
  MEMORY[0x28223BE20](v3);
  v59 = &v52 - v4;
  sub_2589FF2D4(0);
  v58 = v5;
  MEMORY[0x28223BE20](v5);
  v52 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for LabelsSelectionPhaseContent(0);
  MEMORY[0x28223BE20](v53);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589FF3A0(0);
  v10 = v9;
  MEMORY[0x28223BE20](v9);
  v12 = (&v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2589FF7E8(0);
  MEMORY[0x28223BE20](v13 - 8);
  v60 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  v18 = 0uLL;
  v19 = 0uLL;
  v54 = *(v1 + 17);
  if ((v54 & 1) == 0)
  {
    sub_2589FF13C(v77);
    v15 = v77[0];
    v16 = v77[1];
    v17 = v77[2];
    v18 = v77[3];
    v19 = v77[4];
  }

  *v12 = v15;
  v12[1] = v16;
  v12[2] = v17;
  v12[3] = v18;
  v12[4] = v19;
  v20 = *(v10 + 36);
  v56 = v10;
  v21 = v12 + v20;
  v22 = *(v1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v23 = v71;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v24 = sub_258B02F94();
  type metadata accessor for StateOfMindEntryModel(0);
  sub_2589FF654(&qword_27F96C958, type metadata accessor for StateOfMindEntryModel, &protocol conformance descriptor for StateOfMindEntryModel);
  v55 = v22;
  sub_258B00A34();
  swift_getKeyPath();
  sub_258B00A44();

  v25 = v71;
  v26 = *(v1 + 16);
  v27 = *(v1 + 24);
  v28 = *(v1 + 32);
  *v8 = v23;
  *(v8 + 1) = v24;
  *(v8 + 2) = v25;
  *(v8 + 24) = *v72;
  v8[40] = v26;
  *(v8 + 6) = v27;
  *(v8 + 7) = v28;
  v29 = *(v53 + 36);
  *&v8[v29] = swift_getKeyPath();
  sub_2589FF830(0, &qword_27F96D2E0, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();

  *v21 = sub_258B01834();
  sub_2589FFC48(0);
  v31 = &v21[*(v30 + 44)];
  v32 = v56;
  sub_2589FF894(v8, v31);
  sub_258A001FC(v8, type metadata accessor for LabelsSelectionPhaseContent);
  v33 = *(v32 + 40);
  *(v12->n128_u64 + v33) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  if (v54)
  {
    *&v34 = COERCE_DOUBLE(sub_258B024F4());
    v36 = v35;
    sub_258A0032C(0, &qword_27F96CC10, MEMORY[0x277CE0F78], MEMORY[0x277D84560]);
    v37 = swift_allocObject();
    if (v26)
    {
      *(v37 + 16) = xmmword_258B2BE60;
      *(v37 + 32) = sub_258B01FF4();
      *(v37 + 40) = sub_258B02004();
    }

    else
    {
      *(v37 + 16) = xmmword_258B2C470;
      *(v37 + 32) = sub_258B01FF4();
    }

    MEMORY[0x259C92A80](v37);
    sub_258B009F4();
    v39 = sub_258B00B54();
    if (v26)
    {
      v40 = sub_258B018B4();
    }

    else
    {
      v40 = sub_258B018D4();
    }

    v41 = v40;
    v42 = v78;
    v44 = v79;
    v43 = v80;
    *&v66 = v34;
    *(&v66 + 1) = v36;
    v67 = v78;
    v68 = v79;
    *&v69 = v80;
    *(&v69 + 1) = v39;
    v70 = v40;
    v45 = v52;
    sub_258A0025C(v12, v52, sub_2589FF3A0);
    v46 = v45 + *(v58 + 36);
    v47 = v69;
    *(v46 + 32) = v68;
    *(v46 + 48) = v47;
    *(v46 + 64) = v70;
    v48 = v67;
    *v46 = v66;
    *(v46 + 16) = v48;
    v71 = *&v34;
    *v72 = v36;
    *&v72[8] = v42;
    v73 = v44;
    v74 = v43;
    v75 = v39;
    v76 = v41;
    sub_258A002C4(&v66, &v65, sub_2589FF69C);
    sub_258A001FC(&v71, sub_2589FF69C);
    sub_258A0025C(v45, v59, sub_2589FF2D4);
    swift_storeEnumTagMultiPayload();
    sub_2589FFD08();
    sub_2589FF654(&qword_27F96DB88, sub_2589FF3A0, &unk_258B2C7DC);
    v38 = v60;
    sub_258B012A4();
    sub_258A0019C(v45, sub_2589FF2D4);
  }

  else
  {
    sub_258A0025C(v12, v59, sub_2589FF3A0);
    swift_storeEnumTagMultiPayload();
    sub_2589FFD08();
    sub_2589FF654(&qword_27F96DB88, sub_2589FF3A0, &unk_258B2C7DC);
    v38 = v60;
    sub_258B012A4();
  }

  sub_258A0019C(v12, sub_2589FF3A0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v49 = v71;
  type metadata accessor for LabelsSelectionPhase_iOS(0);
  v50 = v61;
  sub_258AC14E8(v61);
  sub_258A9A8D0(v50, v38, v63, v49);
  (*(v62 + 8))(v50, v64);
  return sub_258A0019C(v38, sub_2589FF7E8);
}

__n128 sub_2589FF13C@<Q0>(__n128 *a1@<X8>)
{
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v3 = sub_258AFFD94();
  v5 = v4;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v7 = *(v1 + 24);
  v6 = *(v1 + 32);
  sub_258A0032C(0, &qword_27F96D9F0, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);

  sub_258B02354();
  result = v9;
  a1->n128_u64[0] = v3;
  a1->n128_u64[1] = v5;
  a1[1] = v9;
  a1[2].n128_u64[0] = v10;
  a1[2].n128_u8[8] = v11;
  a1[3].n128_u64[0] = 0x747475427478654ELL;
  a1[3].n128_u64[1] = 0xEA00000000006E6FLL;
  a1[4].n128_u64[0] = v7;
  a1[4].n128_u64[1] = v6;
  return result;
}

void sub_2589FF31C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_2589FF3A0(uint64_t a1)
{
  if (!qword_27F96DB08)
  {
    sub_2589FF434(255);
    v3 = v2;
    v4 = sub_2589FF654(&qword_27F96DB40, sub_2589FF434, MEMORY[0x277CDD828]);
    v6 = type metadata accessor for StateOfMindEntryPhase_iOS(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_27F96DB08);
    }
  }
}

void sub_2589FF434(uint64_t a1)
{
  if (!qword_27F96DB10)
  {
    sub_2589FF4C8(255);
    sub_2589FF654(&qword_27F96DB38, sub_2589FF4C8, MEMORY[0x277CE14C0]);
    v1 = sub_258B00844();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96DB10);
    }
  }
}

void sub_2589FF4C8(uint64_t a1)
{
  if (!qword_27F96DB18)
  {
    sub_258A00480(255, &qword_27F96DB20, type metadata accessor for LabelsSelectionPhaseContent, sub_2589FF550);
    v1 = sub_258B02574();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96DB18);
    }
  }
}

void sub_2589FF550(uint64_t a1)
{
  if (!qword_27F96DB28)
  {
    type metadata accessor for LabelsSelectionPhaseContent(255);
    sub_2589D5AFC(255);
    sub_2589FF654(&qword_27F96DB30, type metadata accessor for LabelsSelectionPhaseContent, &unk_258B301EC);
    sub_2589FF654(&qword_27F96D030, sub_2589D5AFC, MEMORY[0x277D84470]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96DB28);
    }
  }
}

uint64_t sub_2589FF654(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2589FF6BC()
{
  if (!qword_27F96DB50)
  {
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96DB50);
    }
  }
}

unint64_t sub_2589FF714()
{
  result = qword_27F96DB58;
  if (!qword_27F96DB58)
  {
    sub_2589FF6BC();
    sub_2589FF794(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96DB58);
  }

  return result;
}

unint64_t sub_2589FF794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96DB60;
  if (!qword_27F96DB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96DB60);
  }

  return result;
}

void sub_2589FF830(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2589FF894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a1;
  v25 = a2;
  v2 = type metadata accessor for LabelsSelectionPhaseContent(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D5AFC(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589FF550(0);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;
  v16 = *MEMORY[0x277CDF9A8];
  v17 = sub_258B00AA4();
  (*(*(v17 - 8) + 104))(v7, v16, v17);
  sub_2589FF654(&qword_27F96D048, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_258B02AA4();
  if (result)
  {
    sub_2589FF654(&qword_27F96DB30, type metadata accessor for LabelsSelectionPhaseContent, &unk_258B301EC);
    sub_2589FF654(&qword_27F96D030, sub_2589D5AFC, MEMORY[0x277D84470]);
    v19 = v24;
    sub_258B01C84();
    sub_258A001FC(v7, sub_2589D5AFC);
    sub_258A002C4(v19, v4, type metadata accessor for LabelsSelectionPhaseContent);
    v20 = *(v10 + 16);
    v20(v13, v15, v9);
    v21 = v25;
    sub_258A002C4(v4, v25, type metadata accessor for LabelsSelectionPhaseContent);
    sub_258A00480(0, &qword_27F96DB20, type metadata accessor for LabelsSelectionPhaseContent, sub_2589FF550);
    v20((v21 + *(v22 + 48)), v13, v9);
    v23 = *(v10 + 8);
    v23(v15, v9);
    v23(v13, v9);
    return sub_258A001FC(v4, type metadata accessor for LabelsSelectionPhaseContent);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2589FFC48(uint64_t a1)
{
  if (!qword_27F96DB70)
  {
    sub_2589FF4C8(255);
    sub_2589FFCB4(v1, v2, v3);
    v4 = sub_258B00974();
    if (!v5)
    {
      atomic_store(v4, &qword_27F96DB70);
    }
  }
}

unint64_t sub_2589FFCB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96DB78;
  if (!qword_27F96DB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96DB78);
  }

  return result;
}

unint64_t sub_2589FFD08()
{
  result = qword_27F96DB80;
  if (!qword_27F96DB80)
  {
    sub_2589FF2D4(255);
    sub_2589FF654(&qword_27F96DB88, sub_2589FF3A0, &unk_258B2C7DC);
    sub_2589FF654(&qword_27F96DB90, sub_2589FF69C, MEMORY[0x277CE03E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96DB80);
  }

  return result;
}

uint64_t sub_2589FFDE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a1;
  v25 = a2;
  v2 = type metadata accessor for DomainsSelectionPhaseContent(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D5AFC(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A0037C(0);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;
  v16 = *MEMORY[0x277CDF9A8];
  v17 = sub_258B00AA4();
  (*(*(v17 - 8) + 104))(v7, v16, v17);
  sub_2589FF654(&qword_27F96D048, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_258B02AA4();
  if (result)
  {
    sub_2589FF654(&qword_27F96DBA0, type metadata accessor for DomainsSelectionPhaseContent, &unk_258B2E100);
    sub_2589FF654(&qword_27F96D030, sub_2589D5AFC, MEMORY[0x277D84470]);
    v19 = v24;
    sub_258B01C84();
    sub_258A001FC(v7, sub_2589D5AFC);
    sub_258A002C4(v19, v4, type metadata accessor for DomainsSelectionPhaseContent);
    v20 = *(v10 + 16);
    v20(v13, v15, v9);
    v21 = v25;
    sub_258A002C4(v4, v25, type metadata accessor for DomainsSelectionPhaseContent);
    sub_258A00480(0, &qword_27F96DBA8, type metadata accessor for DomainsSelectionPhaseContent, sub_258A0037C);
    v20((v21 + *(v22 + 48)), v13, v9);
    v23 = *(v10 + 8);
    v23(v15, v9);
    v23(v13, v9);
    return sub_258A001FC(v4, type metadata accessor for DomainsSelectionPhaseContent);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_258A0019C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258A001FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258A0025C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A002C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_258A0032C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_258A0037C(uint64_t a1)
{
  if (!qword_27F96DB98)
  {
    type metadata accessor for DomainsSelectionPhaseContent(255);
    sub_2589D5AFC(255);
    sub_2589FF654(&qword_27F96DBA0, type metadata accessor for DomainsSelectionPhaseContent, &unk_258B2E100);
    sub_2589FF654(&qword_27F96D030, sub_2589D5AFC, MEMORY[0x277D84470]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96DB98);
    }
  }
}

void sub_258A00480(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_258A004FC()
{
  result = qword_27F96DBB0;
  if (!qword_27F96DBB0)
  {
    sub_2589FF31C(255, &qword_27F96DBB8, sub_2589FF7E8, sub_258A005F0, MEMORY[0x277CDFAB8]);
    sub_258A0067C();
    sub_2589FF654(qword_27F96DBD0, sub_258A005F0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96DBB0);
  }

  return result;
}

void sub_258A00610(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    sub_2589FF6BC();
    v7 = v6;
    v8 = sub_2589FF714();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_258A0067C()
{
  result = qword_27F96DBC8;
  if (!qword_27F96DBC8)
  {
    sub_2589FF7E8(255);
    sub_2589FFD08();
    sub_2589FF654(&qword_27F96DB88, sub_2589FF3A0, &unk_258B2C7DC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96DBC8);
  }

  return result;
}

void sub_258A00734(uint64_t a1)
{
  sub_258A00D6C(319, &qword_27F96DC58, MEMORY[0x277D85048], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_258A00D14(319);
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          sub_258A00D6C(319, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_258A00858(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  if (v5 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v4 + 84);
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  if (v13 >= a2)
  {
    goto LABEL_30;
  }

  v14 = ((*(*(v6 - 8) + 64) + ((v10 + v11 + ((v9 + 40) & ~v9)) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v15 = a2 - v13;
  v16 = v14 & 0xFFFFFFF8;
  if ((v14 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = v15 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v14);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v20 = *(a1 + v14);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v13 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v14);
    if (v20)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  v24 = ((a1 + 31) & 0xFFFFFFFFFFFFFFF8);
  if (v12 > 0x7FFFFFFE)
  {
    v26 = (v24 + v9 + 16) & ~v9;
    if (v5 == v13)
    {
      return (*(v4 + 48))(v26);
    }

    else
    {
      return (*(v7 + 48))((v26 + v10 + v11) & ~v11, v8, v6);
    }
  }

  else
  {
    v25 = *v24;
    if (*v24 >= 0xFFFFFFFF)
    {
      LODWORD(v25) = -1;
    }

    if ((v25 + 1) >= 2)
    {
      return v25;
    }

    else
    {
      return 0;
    }
  }
}

unsigned int *sub_258A00A58(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v5 + 80);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v6 <= *(v7 + 84))
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v5 + 84);
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = v12;
  }

  v14 = ((v11 + ((v9 + v10 + ((v8 + 40) & ~v8)) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v13 >= a3)
  {
    v18 = 0;
    v19 = a2 - v13;
    if (a2 <= v13)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v15 = a3 - v13;
    if (((v11 + ((v9 + v10 + ((v8 + 40) & ~v8)) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = a2 - v13;
    if (a2 <= v13)
    {
LABEL_20:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *(result + v14) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_36;
        }

        *(result + v14) = 0;
      }

      else if (v18)
      {
        *(result + v14) = 0;
        if (!a2)
        {
          return result;
        }

LABEL_36:
        v23 = ((result + 31) & 0xFFFFFFFFFFFFFFF8);
        if (v12 > 0x7FFFFFFE)
        {
          v24 = (v23 + v8 + 16) & ~v8;
          if (v6 == v13)
          {
            v25 = *(v5 + 56);

            return v25(v24);
          }

          else
          {
            v26 = *(v7 + 56);
            v27 = (v24 + v9 + v10) & ~v10;

            return v26(v27);
          }
        }

        else if (a2 > 0x7FFFFFFE)
        {
          *v23 = 0;
          v23[1] = 0;
          *v23 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *v23 = a2;
        }

        return result;
      }

      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }
  }

  if (((v11 + ((v9 + v10 + ((v8 + 40) & ~v8)) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1;
  }

  if (((v11 + ((v9 + v10 + ((v8 + 40) & ~v8)) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v21 = ~v13 + a2;
    v22 = result;
    bzero(result, ((v11 + ((v9 + v10 + ((v8 + 40) & ~v8)) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v22;
    *v22 = v21;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      *(result + v14) = v20;
    }

    else
    {
      *(result + v14) = v20;
    }
  }

  else if (v18)
  {
    *(result + v14) = v20;
  }

  return result;
}

void sub_258A00D14(uint64_t a1)
{
  if (!qword_27F96DC60)
  {
    sub_2589C0D10();
    v1 = sub_258B030C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96DC60);
    }
  }
}

void sub_258A00D6C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_258A00E00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v18[0] = a6;
  v18[1] = a7;
  v13 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_258B007B4();
  MEMORY[0x28223BE20](v16);
  (*(v13 + 16))(v15, v7, a3);
  sub_258B007C4();
  v18[4] = a3;
  v18[5] = a4;
  v18[6] = a5;
  v18[7] = v18[0];
  v18[8] = a1;
  v18[9] = a2;
  swift_getWitnessTable();
  return sub_258B00984();
}

uint64_t sub_258A00FA8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v75 = *(a1 - 1);
  v76 = *(v75 + 64);
  MEMORY[0x28223BE20](a1);
  v74 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A023F4(255, &qword_27F96DC68, sub_258A023A0, &_s21UnlimitedHeightVStackVN, MEMORY[0x277CDF4F8]);
  v71 = a1[2];
  sub_258B00B04();
  sub_258A023F4(255, &qword_27F96DC78, sub_2589D2E7C, MEMORY[0x277D85048], MEMORY[0x277CE06A0]);
  sub_258B00B04();
  sub_258A0245C(&qword_27F96DC80, MEMORY[0x277CDF500]);
  v4 = sub_258B00974();
  v72 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v67 = &v52 - v5;
  v52 = v4;
  v6 = sub_258B00B04();
  v70 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v66 = &v52 - v7;
  sub_258A023F4(255, &qword_27F96DC88, sub_2589E0E14, MEMORY[0x277CE14A8], MEMORY[0x277CDF4E0]);
  v53 = v6;
  v8 = sub_258B00B04();
  v68 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v63 = &v52 - v9;
  v60 = a1[3];
  v10 = sub_258B030C4();
  v59 = a1[5];
  v11 = a1;
  v62 = a1;
  v101 = v59;
  v64 = v10;
  WitnessTable = swift_getWitnessTable();
  sub_258B00CA4();
  v55 = v8;
  v12 = sub_258B00B04();
  v69 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v61 = &v52 - v13;
  v14 = sub_258A0245C(&qword_27F96DC90, MEMORY[0x277CDF510]);
  v99 = v11[4];
  v15 = v99;
  v100 = MEMORY[0x277CDFC60];
  v16 = swift_getWitnessTable();
  v17 = sub_258A024D8();
  v97 = v16;
  v98 = v17;
  v18 = swift_getWitnessTable();
  v95 = v14;
  v96 = v18;
  v93 = swift_getWitnessTable();
  v94 = MEMORY[0x277CDF678];
  v19 = swift_getWitnessTable();
  v20 = sub_258A02568();
  v91 = v19;
  v92 = v20;
  v21 = swift_getWitnessTable();
  v54 = v21;
  v22 = swift_getWitnessTable();
  v89 = v21;
  v90 = v22;
  v56 = v12;
  v57 = swift_getWitnessTable();
  v87 = v12;
  v88 = v57;
  v58 = MEMORY[0x277CE0CA8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v24 = *(OpaqueTypeMetadata2 - 8);
  v25 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v27 = &v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v52 - v28;
  v30 = swift_allocObject();
  *&v31 = v71;
  *(&v31 + 1) = v60;
  v79 = v31;
  *&v32 = v15;
  *(&v32 + 1) = v59;
  v78 = v32;
  *(v30 + 16) = v31;
  *(v30 + 32) = v32;
  v84 = v31;
  v85 = v32;
  v33 = v73;
  v86 = v73;
  v34 = v67;
  sub_258A01980(sub_258A025F8, v83, v67);

  sub_258B024F4();
  v35 = v66;
  v36 = v52;
  sub_258B01E74();
  (*(v72 + 8))(v34, v36);
  v37 = v63;
  v38 = v53;
  sub_258B01EA4();
  (*(v70 + 8))(v35, v38);
  sub_258B024E4();
  v81 = v78;
  v80 = v79;
  v82 = v33;
  v39 = v61;
  v40 = v55;
  sub_258B01EC4();
  (*(v68 + 8))(v37, v40);
  v41 = v75;
  v42 = v74;
  v43 = v33;
  v44 = v62;
  (*(v75 + 16))(v74, v43, v62);
  v45 = (*(v41 + 80) + 48) & ~*(v41 + 80);
  v46 = swift_allocObject();
  v47 = v78;
  *(v46 + 16) = v79;
  *(v46 + 32) = v47;
  (*(v41 + 32))(v46 + v45, v42, v44);
  v48 = v56;
  v49 = v57;
  sub_258B01C34();

  (*(v69 + 8))(v39, v48);
  v87 = v48;
  v88 = v49;
  swift_getOpaqueTypeConformance2();
  sub_258A4DFD4();
  v50 = *(v24 + 8);
  v50(v27, OpaqueTypeMetadata2);
  sub_258A4DFD4();
  return (v50)(v29, OpaqueTypeMetadata2);
}

uint64_t sub_258A01980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  sub_258B00B04();
  sub_258A023F4(255, &qword_27F96DC78, sub_2589D2E7C, MEMORY[0x277D85048], MEMORY[0x277CE06A0]);
  v8 = sub_258B00B04();
  v11 = sub_258A023A0(v8, v9, v10);
  swift_getWitnessTable();
  sub_258A024D8();
  WitnessTable = swift_getWitnessTable();
  return sub_258A00E00(a1, a2, &_s21UnlimitedHeightVStackVN, v8, v11, WitnessTable, a5);
}

uint64_t sub_258A01AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a3;
  v41 = a5;
  v36 = a4;
  v44 = a6;
  v49[0] = a2;
  v49[1] = a3;
  v49[2] = a4;
  v49[3] = a5;
  v8 = type metadata accessor for UnlimitedHeightVStackWithFooter(0, v49);
  v9 = *(v8 - 8);
  v38 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v37 = &v32 - v10;
  v33 = a2;
  v11 = sub_258B00B04();
  v43 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v34 = &v32 - v12;
  sub_258A023F4(255, &qword_27F96DC78, sub_2589D2E7C, MEMORY[0x277D85048], MEMORY[0x277CE06A0]);
  v13 = sub_258B00B04();
  v42 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v35 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v39 = &v32 - v16;
  sub_258B024F4();
  v17 = v36;
  v18 = v34;
  sub_258B01E84();
  v19 = v37;
  (*(v9 + 16))(v37, a1, v8);
  v20 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v21 = swift_allocObject();
  v23 = v40;
  v22 = v41;
  *(v21 + 2) = v33;
  *(v21 + 3) = v23;
  *(v21 + 4) = v17;
  *(v21 + 5) = v22;
  (*(v9 + 32))(&v21[v20], v19, v8);
  v47 = v17;
  v48 = MEMORY[0x277CDFC60];
  WitnessTable = swift_getWitnessTable();
  sub_2589D2E7C(WitnessTable, v25, v26);
  v27 = v35;
  sub_258B01CD4();

  (*(v43 + 8))(v18, v11);
  v28 = sub_258A024D8();
  v45 = WitnessTable;
  v46 = v28;
  swift_getWitnessTable();
  v29 = v39;
  sub_258A4DFD4();
  v30 = *(v42 + 8);
  v30(v27, v13);
  sub_258A4DFD4();
  return (v30)(v29, v13);
}

uint64_t sub_258A01F10@<X0>(void *a2@<X8>)
{
  result = sub_258B008C4();
  *a2 = v4;
  return result;
}

uint64_t sub_258A01F3C(double *a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v6 = a2 + *(type metadata accessor for UnlimitedHeightVStackWithFooter(0, &v10) + 68);
  v7 = *v6;
  v8 = *(v6 + 1);
  LOBYTE(v10) = v7;
  v11 = v8;
  sub_258A00D6C(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  return sub_258B02134();
}

uint64_t sub_258A01FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a4;
  v33 = a6;
  v10 = *(a3 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v31 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - v13;
  v15 = sub_258B030C4();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v30 - v20;
  v36 = a2;
  v37 = a3;
  v38 = v32;
  v39 = a5;
  v22 = *(type metadata accessor for UnlimitedHeightVStackWithFooter(0, &v36) + 68);
  v32 = a1;
  v23 = (a1 + v22);
  v24 = *v23;
  v25 = *(v23 + 1);
  LOBYTE(v36) = v24;
  v37 = v25;
  sub_258A00D6C(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_258B02124();
  if (v35 == 1)
  {
    sub_258A4DFD4();
    v26 = v31;
    sub_258A4DFD4();
    (*(v10 + 8))(v14, a3);
    (*(v10 + 32))(v19, v26, a3);
    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  (*(v10 + 56))(v19, v27, 1, a3);
  sub_258A4B214(v19, v21);
  v28 = *(v16 + 8);
  v28(v19, v15);
  v34 = a5;
  swift_getWitnessTable();
  sub_258A4DFD4();
  return (v28)(v21, v15);
}

void *sub_258A022F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v6 = (a1 + *(type metadata accessor for UnlimitedHeightVStackWithFooter(0, &v12) + 68));
  v7 = *v6;
  v8 = *(v6 + 1);
  LOBYTE(v12) = v7;
  v13 = v8;
  sub_258A00D6C(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  result = sub_258B02124();
  if (v11 == 1)
  {
    v10 = *(a1 + 24);
    if (v10)
    {
      return v10(result);
    }
  }

  return result;
}

unint64_t sub_258A023A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96DC70;
  if (!qword_27F96DC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96DC70);
  }

  return result;
}

void sub_258A023F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_258A0245C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_258A023F4(255, &qword_27F96DC68, sub_258A023A0, &_s21UnlimitedHeightVStackVN, MEMORY[0x277CDF4F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258A024D8()
{
  result = qword_27F96DC98;
  if (!qword_27F96DC98)
  {
    sub_258A023F4(255, &qword_27F96DC78, sub_2589D2E7C, MEMORY[0x277D85048], MEMORY[0x277CE06A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96DC98);
  }

  return result;
}

unint64_t sub_258A02568()
{
  result = qword_27F96DCA0;
  if (!qword_27F96DCA0)
  {
    sub_258A023F4(255, &qword_27F96DC88, sub_2589E0E14, MEMORY[0x277CE14A8], MEMORY[0x277CDF4E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96DCA0);
  }

  return result;
}

void *sub_258A02640()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v8[0] = v0[2];
  v1 = v8[0];
  v8[1] = v2;
  v8[2] = v3;
  v8[3] = v4;
  v5 = *(type metadata accessor for UnlimitedHeightVStackWithFooter(0, v8) - 8);
  v6 = v0 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_258A022F0(v6, v1, v2, v3, v4);
}

uint64_t objectdestroyTm_3()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v7 = v1;
  v6 = *(v0 + 24);
  v8 = v6;
  v9 = v2;
  v3 = type metadata accessor for UnlimitedHeightVStackWithFooter(0, &v7);
  v4 = v0 + ((*(*(v3 - 8) + 80) + 48) & ~*(*(v3 - 8) + 80));
  if (*(v4 + 24))
  {
  }

  (*(*(v1 - 8) + 8))(v4 + *(v3 + 60), v1);
  (*(*(v6 - 8) + 8))(v4 + *(v3 + 64));

  return swift_deallocObject();
}

uint64_t sub_258A0283C(double *a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v10[0] = v1[2];
  v3 = v10[0];
  v10[1] = v4;
  v10[2] = v5;
  v10[3] = v6;
  v7 = *(type metadata accessor for UnlimitedHeightVStackWithFooter(0, v10) - 8);
  v8 = (v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80)));

  return sub_258A01F3C(a1, v8, v3, v4, v5, v6);
}

uint64_t sub_258A028E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v14 - v10;
  v9();
  sub_258A4DFD4();
  v12 = *(v5 + 8);
  v12(v8, a4);
  sub_258A4DFD4();
  return (v12)(v11, a4);
}

uint64_t type metadata accessor for NotificationsSetupPhase_iOS(uint64_t a1)
{
  result = qword_27F96DCB0;
  if (!qword_27F96DCB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A02AA0(uint64_t a1)
{
  sub_2589E3D24(319);
  if (v1 <= 0x3F)
  {
    sub_2589C0D10();
    if (v2 <= 0x3F)
    {
      sub_258A04844(319, &qword_27F96DCA8, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_258A04844(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

__n128 sub_258A02BD0@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_258A03E2C(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A03E04(0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A03D78(0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B024F4();
  sub_258B00C94();
  sub_258A050BC(v2, v7, type metadata accessor for NotificationsSetupPhaseContent);
  v16 = &v7[*(v5 + 44)];
  v17 = v43[5];
  *(v16 + 4) = v43[4];
  *(v16 + 5) = v17;
  *(v16 + 6) = v43[6];
  v18 = v43[1];
  *v16 = v43[0];
  *(v16 + 1) = v18;
  v19 = v43[3];
  *(v16 + 2) = v43[2];
  *(v16 + 3) = v19;
  LOBYTE(v2) = sub_258B01864();
  sub_258B00654();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_258A05124(v7, v11, sub_258A03E2C);
  v28 = &v11[*(v9 + 44)];
  *v28 = v2;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  LOBYTE(v7) = sub_258B01894();
  sub_258B00654();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_258A05124(v11, v15, sub_258A03E04);
  v37 = &v15[*(v13 + 44)];
  *v37 = v7;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  sub_258B024F4();
  sub_258B00C94();
  sub_258A05124(v15, a1, sub_258A03D78);
  sub_258A03D50(0);
  v39 = a1 + *(v38 + 36);
  v40 = v43[12];
  *(v39 + 64) = v43[11];
  *(v39 + 80) = v40;
  *(v39 + 96) = v43[13];
  v41 = v43[8];
  *v39 = v43[7];
  *(v39 + 16) = v41;
  result = v43[10];
  *(v39 + 32) = v43[9];
  *(v39 + 48) = result;
  return result;
}

__n128 sub_258A02F04@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_258A04788(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A0506C(0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A05094(0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B024F4();
  sub_258B00C94();
  sub_258A050BC(v2, v7, sub_258A047B0);
  v16 = &v7[*(v5 + 44)];
  v17 = v43[5];
  *(v16 + 4) = v43[4];
  *(v16 + 5) = v17;
  *(v16 + 6) = v43[6];
  v18 = v43[1];
  *v16 = v43[0];
  *(v16 + 1) = v18;
  v19 = v43[3];
  *(v16 + 2) = v43[2];
  *(v16 + 3) = v19;
  LOBYTE(v2) = sub_258B01864();
  sub_258B00654();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_258A05124(v7, v11, sub_258A04788);
  v28 = &v11[*(v9 + 44)];
  *v28 = v2;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  LOBYTE(v7) = sub_258B01894();
  sub_258B00654();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_258A05124(v11, v15, sub_258A0506C);
  v37 = &v15[*(v13 + 44)];
  *v37 = v7;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  sub_258B024F4();
  sub_258B00C94();
  sub_258A05124(v15, a1, sub_258A05094);
  sub_258A03DA0(0, &qword_27F96DE38, sub_258A05094, MEMORY[0x277CDFC70]);
  v39 = a1 + *(v38 + 36);
  v40 = v43[12];
  *(v39 + 64) = v43[11];
  *(v39 + 80) = v40;
  *(v39 + 96) = v43[13];
  v41 = v43[8];
  *v39 = v43[7];
  *(v39 + 16) = v41;
  result = v43[10];
  *(v39 + 32) = v43[9];
  *(v39 + 48) = result;
  return result;
}

uint64_t sub_258A0325C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a1;
  v49 = a3;
  v50 = sub_258B006A4();
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v47 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_258B024B4();
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x28223BE20](v5);
  v44 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NotificationsSetupPhase_iOS(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = type metadata accessor for NotificationsSetupPhaseContent(0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = (&v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258A03D50(0);
  MEMORY[0x28223BE20](v14 - 8);
  v41 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A03E54(0);
  v17 = (v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a2;
  v20 = *(a2 + 8);
  sub_258A050BC(a2, &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NotificationsSetupPhase_iOS);
  v21 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v22 = swift_allocObject();
  sub_258A05124(&v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for NotificationsSetupPhase_iOS);
  v23 = *(v11 + 32);
  v24 = sub_258B008E4();
  (*(*(v24 - 8) + 16))(v13 + v23, v43, v24);
  type metadata accessor for StateOfMindEntryModel(0);
  sub_258A04DE8(&qword_27F96C958, type metadata accessor for StateOfMindEntryModel, &protocol conformance descriptor for StateOfMindEntryModel);
  v42 = v20;

  *v13 = sub_258B00A24();
  v13[1] = v25;
  v13[2] = sub_258A0518C;
  v13[3] = v22;
  v26 = *(v11 + 36);
  *(v13 + v26) = swift_getKeyPath();
  sub_258A04844(0, &qword_27F96D7B0, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v54 = type metadata accessor for NotificationsSetupPhaseSpecs(0);
  v55 = &off_2869D92E8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v52);
  v28 = v40;
  sub_258AC1B5C(boxed_opaque_existential_1);
  v29 = v41;
  sub_258A02BD0(v41);
  sub_258A0442C(v13, type metadata accessor for NotificationsSetupPhaseContent);
  __swift_destroy_boxed_opaque_existential_1(&v52);
  v30 = v44;
  sub_258B024A4();
  v32 = v45;
  v31 = v46;
  (*(v45 + 16))(&v19[v17[19]], v30, v46);
  *v19 = 1;
  sub_258A050BC(v29, &v19[v17[20]], sub_258A03D50);
  sub_258A0388C(v28, &v19[v17[21]]);
  v33 = &v19[v17[22]];
  v51 = 0;
  sub_258B02114();
  v34 = v53;
  *v33 = v52;
  *(v33 + 1) = v34;
  v35 = &v19[v17[23]];
  v51 = 0;
  sub_258B02114();
  (*(v32 + 8))(v30, v31);
  v36 = v53;
  *v35 = v52;
  *(v35 + 1) = v36;
  sub_258A0442C(v29, sub_258A03D50);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v37 = v52;
  v38 = v47;
  sub_258AC14E8(v47);
  sub_258A9A904(v38, v19, v49, v37);
  (*(v48 + 8))(v38, v50);
  return sub_258A0442C(v19, sub_258A03E54);
}

uint64_t sub_258A0388C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NotificationsSetupPhase_iOS(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v10 = &v22[-v9];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v11 = v24;
  sub_258A050BC(a1, v10, type metadata accessor for NotificationsSetupPhase_iOS);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_258A05124(v10, v13 + v12, type metadata accessor for NotificationsSetupPhase_iOS);
  sub_258A050BC(a1, v8, type metadata accessor for NotificationsSetupPhase_iOS);
  v14 = swift_allocObject();
  sub_258A05124(v8, v14 + v12, type metadata accessor for NotificationsSetupPhase_iOS);
  *a2 = v11;
  *(a2 + 8) = sub_258A0448C;
  *(a2 + 16) = v13;
  *(a2 + 24) = [objc_allocWithZone(MEMORY[0x277D280B8]) init];
  *(a2 + 32) = sub_258A044F4;
  *(a2 + 40) = v14;
  v23 = 0;
  sub_258B02114();
  v15 = v25;
  *(a2 + 48) = v24;
  *(a2 + 56) = v15;
  v23 = 2;
  sub_258A0456C();
  sub_258B02114();
  v16 = v25;
  *(a2 + 64) = v24;
  *(a2 + 72) = v16;
  v17 = *(type metadata accessor for NotificationsNextButtonView(0) + 40);
  *(a2 + v17) = swift_getKeyPath();
  v18 = MEMORY[0x277CDF458];
  sub_258A04844(0, &qword_27F96D7B0, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  sub_258A03F68(0);
  v20 = *(v19 + 36);
  *(a2 + v20) = swift_getKeyPath();
  sub_258A04844(0, &qword_27F96D2E0, type metadata accessor for AssociationSelectionPhaseSpecs, v18);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_258A03BBC@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_258A050BC(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NotificationsSetupPhase_iOS);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_258A05124(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for NotificationsSetupPhase_iOS);
  *a2 = sub_258A03CD0;
  a2[1] = v7;
  return result;
}

uint64_t sub_258A03CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for NotificationsSetupPhase_iOS(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_258A0325C(a1, v6, a2);
}

void sub_258A03DA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_258B00B04();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_258A03E54(uint64_t a1)
{
  if (!qword_27F96DCE0)
  {
    sub_258A03D50(255);
    v3 = v2;
    sub_258A03F68(255);
    v7[0] = v3;
    v7[1] = v4;
    v7[2] = sub_258B024B4();
    v7[3] = sub_258A04038(&qword_27F96DCF8, sub_258A03D50, sub_258A03FFC, MEMORY[0x277CDFC60]);
    v7[4] = sub_258A04DE8(&qword_27F96DD20, sub_258A03F68, &unk_258B2F290);
    v7[5] = MEMORY[0x277CE1320];
    v5 = type metadata accessor for ScrollableWithPinnedFooter(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &qword_27F96DCE0);
    }
  }
}

void sub_258A03F68(uint64_t a1)
{
  if (!qword_27F96DCE8)
  {
    ButtonView = type metadata accessor for NotificationsNextButtonView(255);
    v3 = sub_258A04DE8(&qword_27F96DCF0, type metadata accessor for NotificationsNextButtonView, &unk_258B3447C);
    v5 = type metadata accessor for StateOfMindEntryButtonTray(a1, ButtonView, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27F96DCE8);
    }
  }
}

uint64_t sub_258A04038(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258A040F4()
{
  result = qword_27F96DD10;
  if (!qword_27F96DD10)
  {
    sub_258A03E2C(255);
    sub_258A04DE8(&qword_27F96DD18, type metadata accessor for NotificationsSetupPhaseContent, &unk_258B33AE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96DD10);
  }

  return result;
}

uint64_t objectdestroyTm_4()
{
  v1 = type metadata accessor for NotificationsSetupPhase_iOS(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = v2 + *(v1 + 24);
  sub_258A04844(0, &qword_27F96D7B0, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_258B01504();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v3, 1, v4))
    {
      (*(v5 + 8))(v3, v4);
    }

    v6 = *(type metadata accessor for NotificationsSetupPhaseSpecs(0) + 20);
    v7 = sub_258B00AA4();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 28);
  sub_258A04844(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_258B006A4();
    (*(*(v9 - 8) + 8))(v2 + v8, v9);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_258A0442C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258A044F4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  type metadata accessor for NotificationsSetupPhase_iOS(0);
  return sub_258A16CF4(a1, v2);
}

void sub_258A0456C()
{
  if (!qword_27F96DD28)
  {
    v0 = sub_258B030C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96DD28);
    }
  }
}

void sub_258A045BC(uint64_t a1)
{
  if (!qword_27F96DD38)
  {
    sub_258A04F38(255, &qword_27F96DD40, sub_258A03E54, sub_258A005F0, MEMORY[0x277CDFAB8]);
    sub_258A04664();
    v1 = sub_258B009C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96DD38);
    }
  }
}

unint64_t sub_258A04664()
{
  result = qword_27F96DD48;
  if (!qword_27F96DD48)
  {
    sub_258A04F38(255, &qword_27F96DD40, sub_258A03E54, sub_258A005F0, MEMORY[0x277CDFAB8]);
    sub_258A04DE8(&qword_27F96DD50, sub_258A03E54, &unk_258B305B0);
    sub_258A04DE8(qword_27F96DBD0, sub_258A005F0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96DD48);
  }

  return result;
}

void sub_258A047B0(uint64_t a1)
{
  if (!qword_27F96DD60)
  {
    sub_258A04844(255, &qword_27F96DD68, sub_258A048A8, MEMORY[0x277CE14B8]);
    sub_258A04FE4();
    v1 = sub_258B022D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96DD60);
    }
  }
}

void sub_258A04844(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_258A048A8(uint64_t a1)
{
  if (!qword_27F96DD70)
  {
    v1 = MEMORY[0x277CDF910];
    sub_258A04EB0(255, &qword_27F96DD78, &qword_27F96DD80, MEMORY[0x277CDF928], MEMORY[0x277CDF910]);
    sub_258A04F38(255, &qword_27F96DD90, sub_258A04A70, sub_258A04D54, MEMORY[0x277CDFAB8]);
    sub_258A04E30(255);
    sub_258A049DC(255, &qword_27F96DE08, &qword_27F96DE10, sub_258A04FBC, v1);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_27F96DD70);
    }
  }
}

void sub_258A049DC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if (!*a2)
  {
    sub_258A04F38(255, a3, a4, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
    v6 = sub_258B00B04();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258A04A70(uint64_t a1)
{
  if (!qword_27F96DD98)
  {
    sub_258A04F38(255, &qword_27F96DDA0, sub_258A04B14, sub_258A04CCC, MEMORY[0x277CE0338]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96DD98);
    }
  }
}

void sub_258A04BAC(uint64_t a1)
{
  if (!qword_27F96D900)
  {
    sub_2589BF7E8(255, &qword_27F96C860, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0730]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96D900);
    }
  }
}

void sub_258A04C38(uint64_t a1)
{
  if (!qword_27F96DDC0)
  {
    type metadata accessor for CGRect(255);
    sub_258A04DE8(&qword_27F96DDC8, type metadata accessor for CGRect, MEMORY[0x277CBF278]);
    v1 = sub_258B01584();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96DDC0);
    }
  }
}

void sub_258A04CF4(uint64_t a1)
{
  if (!qword_27F96DDD8)
  {
    sub_258B017D4();
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96DDD8);
    }
  }
}

void sub_258A04D54(uint64_t a1)
{
  if (!qword_27F96DDE0)
  {
    type metadata accessor for CGSize(255);
    sub_258A04DE8(&qword_27F96DDE8, type metadata accessor for CGSize, MEMORY[0x277CBF298]);
    v1 = sub_258B01584();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96DDE0);
    }
  }
}

uint64_t sub_258A04DE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_258A04E30(uint64_t a1)
{
  if (!qword_27F96DDF0)
  {
    sub_258A04EB0(255, &qword_27F96DDF8, &qword_27F96DE00, MEMORY[0x277CDFC70], MEMORY[0x277CDF928]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96DDF0);
    }
  }
}

void sub_258A04EB0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_258A049DC(255, a3, &qword_27F96DD88, type metadata accessor for ValenceSelectionTitleText, a4);
    v6 = sub_258B00B04();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258A04F38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

unint64_t sub_258A04FE4()
{
  result = qword_27F96DE20;
  if (!qword_27F96DE20)
  {
    sub_258A04844(255, &qword_27F96DD68, sub_258A048A8, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96DE20);
  }

  return result;
}

uint64_t sub_258A050BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A05124(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t AssessmentRiskInformationalView.Configuration.hashValue.getter()
{
  v1 = *v0;
  sub_258B03514();
  MEMORY[0x259C93B20](v1);
  return sub_258B03554();
}

uint64_t sub_258A0521C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_258B00F84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277CDF3E0];
  sub_258A07268(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for AssessmentRiskInformationalView(0);
  sub_258A0883C(v1 + *(v11 + 20), v10, &qword_27F96C908, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_258B006A4();
    return (*(*(v12 - 8) + 32))(a1, v10, v12);
  }

  else
  {
    sub_258B02E94();
    v14 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

double AssessmentRiskInformationalView.init(configuration:)@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AssessmentRiskInformationalView(0);
  v3 = v2[5];
  *(a1 + v3) = swift_getKeyPath();
  v4 = MEMORY[0x277CDF458];
  sub_258A07268(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v5 = v2[6];
  *(a1 + v5) = swift_getKeyPath();
  sub_258A07268(0, &qword_27F96C968, MEMORY[0x277CDD848], v4);
  swift_storeEnumTagMultiPayload();
  v6 = v2[7];
  *(a1 + v6) = swift_getKeyPath();
  sub_258A07268(0, &qword_27F96DE40, MEMORY[0x277CDFA28], v4);
  swift_storeEnumTagMultiPayload();
  v7 = v2[8];
  *(a1 + v7) = swift_getKeyPath();
  sub_258A07268(0, &qword_27F96DE48, sub_258A07454, v4);
  swift_storeEnumTagMultiPayload();
  sub_258AC9984(v10);
  v8 = v10[1];
  *a1 = v10[0];
  *(a1 + 16) = v8;
  result = *&v11;
  *(a1 + 32) = v11;
  *(a1 + 48) = v12;
  return result;
}

uint64_t type metadata accessor for AssessmentRiskInformationalView(uint64_t a1)
{
  result = qword_27F96DF08;
  if (!qword_27F96DF08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AssessmentRiskInformationalView.body.getter()
{
  sub_258A07490(0);
  sub_258A07C50();
  return sub_258B00B24();
}

void sub_258A056C8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = sub_258B006A4();
  v68 = *(v3 - 8);
  v69 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v67 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v66 = &v55 - v6;
  v61 = sub_258B00FB4();
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A07860(0);
  v10 = v9;
  v57 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A077AC(0);
  v14 = v13;
  v58 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A076C0(0);
  v18 = *(v17 - 8);
  v62 = v17;
  v63 = v18;
  MEMORY[0x28223BE20](v17);
  v56 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A07524(0);
  v64 = *(v20 - 8);
  v65 = v20;
  MEMORY[0x28223BE20](v20);
  v60 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = a1;
  sub_258A078E0();
  sub_258A07940();
  v22 = sub_258B01A74();
  v55 = a1;
  v23 = a1[1];
  v73 = *a1;
  v74 = v23;
  sub_2589BFF58(v22, v24, v25);
  sub_258B003E4();
  v26 = sub_258B01B44();
  v28 = v27;
  v30 = v29;
  v31 = sub_258A07C08(&qword_27F96DE98, sub_258A07860, MEMORY[0x277CDE5A0]);
  sub_258B01CA4();
  sub_2589BFFAC(v26, v28, v30 & 1);

  (*(v57 + 8))(v12, v10);
  v32 = v59;
  v33 = v61;
  (*(v59 + 104))(v8, *MEMORY[0x277CDDDC0], v61);
  v73 = v10;
  v74 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = v56;
  sub_258B01E24();
  (*(v32 + 8))(v8, v33);
  (*(v58 + 8))(v16, v14);
  v71 = v55;
  sub_258A07A20(0);
  v73 = v14;
  v74 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_258A07AD4(255);
  v37 = v36;
  v38 = sub_258A07C08(&qword_27F96DEC8, sub_258A07AD4, MEMORY[0x277CDD7A8]);
  v73 = v37;
  v74 = v38;
  swift_getOpaqueTypeConformance2();
  v39 = v60;
  v40 = v62;
  sub_258B01EE4();
  (*(v63 + 8))(v35, v40);
  v41 = v66;
  sub_258A0521C(v66);
  v42 = v67;
  v43 = v68;
  v44 = v69;
  (*(v68 + 104))(v67, *MEMORY[0x277CDF3C0], v69);
  v45 = v42;
  LOBYTE(v42) = sub_258B00694();
  v46 = *(v43 + 8);
  v46(v45, v44);
  v46(v41, v44);
  v47 = objc_opt_self();
  v48 = &selRef_systemBackgroundColor;
  if ((v42 & 1) == 0)
  {
    v48 = &selRef_systemGroupedBackgroundColor;
  }

  v49 = [v47 *v48];
  v50 = sub_258B01F94();
  v51 = sub_258B01874();
  v52 = v70;
  (*(v64 + 32))(v70, v39, v65);
  sub_258A07490(0);
  v54 = v52 + *(v53 + 36);
  *v54 = v50;
  *(v54 + 8) = v51;
}

uint64_t sub_258A05DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2589BFF58(a1, a2, a3);
  sub_258B003E4();
  v6 = sub_258B01B44();
  sub_258A079CC(v6, v3, v4);
  return sub_258B02434();
}

uint64_t sub_258A05E94(uint64_t a1)
{
  v2 = sub_258B01384();
  MEMORY[0x28223BE20](v2 - 8);
  sub_258A07AD4(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_258B01354();
  v11 = a1;
  sub_258A07B74(0);
  sub_258A07C08(&qword_27F96DEC0, sub_258A07B74, MEMORY[0x277CDF028]);
  sub_258B00784();
  v8 = sub_258A07C08(&qword_27F96DEC8, sub_258A07AD4, MEMORY[0x277CDD7A8]);
  MEMORY[0x259C91A00](v7, v4, v8);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_258A06064(uint64_t a1)
{
  v2 = type metadata accessor for AssessmentRiskInformationalView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_258B00624();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B00614();
  sub_258A08A88(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AssessmentRiskInformationalView);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_258A08778(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  return MEMORY[0x259C92780](v7, sub_258A087DC, v9);
}

uint64_t sub_258A061CC(uint64_t a1)
{
  v17 = sub_258B00F84();
  v2 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277CDD848];
  sub_258A07268(0, &qword_27F96C968, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = sub_258B008A4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AssessmentRiskInformationalView(0);
  sub_258A0883C(a1 + *(v13 + 24), v8, &qword_27F96C968, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    sub_258B02E94();
    v14 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v17);
  }

  sub_258B00894();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_258A06478()
{
  sub_258A07490(0);
  sub_258A07C50();
  return sub_258B00B24();
}

uint64_t sub_258A064DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v101 = a3;
  v111 = a1;
  v112 = a2;
  v103 = a4;
  sub_258A0834C(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v118 = v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v102 = (v96 - v7);
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v99 = qword_27F97AB98;
  v100 = qword_27F97AB90;
  v98 = qword_27F97ABA0;
  v159 = sub_258AFFD94();
  v160 = v8;
  v96[1] = sub_2589BFF58(v159, v8, v9);
  v10 = sub_258B01B44();
  v12 = v11;
  v14 = v13;
  sub_258B01944();
  sub_258B01924();

  v15 = sub_258B01AE4();
  v17 = v16;
  v19 = v18;

  sub_2589BFFAC(v10, v12, v14 & 1);

  v20 = objc_opt_self();
  v97 = v20;
  v21 = [v20 labelColor];
  sub_258B01F94();
  v113 = sub_258B01AA4();
  v114 = v22;
  v115 = v23;
  v25 = v24;

  sub_2589BFFAC(v15, v17, v19 & 1);

  v117 = sub_258B01894();
  sub_258B00654();
  v106 = v27;
  v107 = v26;
  v104 = v29;
  v105 = v28;
  v116 = v25 & 1;
  LOBYTE(v148[0]) = 0;
  v159 = v111;
  v160 = v112;
  sub_258B003E4();
  v30 = sub_258B01B44();
  v32 = v31;
  v34 = v33;
  v35 = [v20 labelColor];
  sub_258B01F94();
  v36 = sub_258B01AA4();
  v109 = v37;
  v110 = v36;
  LOBYTE(v17) = v38;
  v111 = v39;

  sub_2589BFFAC(v30, v32, v34 & 1);

  v108 = sub_258B01894();
  sub_258B00654();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  LODWORD(v112) = v17 & 1;
  LOBYTE(v159) = v17 & 1;
  LOBYTE(v148[0]) = 0;
  v159 = sub_258AFFD94();
  v160 = v48;
  v49 = sub_258B01B44();
  v51 = v50;
  v53 = v52;
  sub_258B01944();
  sub_258B01924();

  v54 = sub_258B01AE4();
  v56 = v55;
  LOBYTE(v17) = v57;

  sub_2589BFFAC(v49, v51, v53 & 1);

  v58 = [v97 labelColor];
  sub_258B01F94();
  v59 = sub_258B01AA4();
  v99 = v60;
  v100 = v61;
  LOBYTE(v51) = v62;

  sub_2589BFFAC(v54, v56, v17 & 1);

  LODWORD(v98) = sub_258B01894();
  sub_258B00654();
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  LODWORD(v97) = v51 & 1;
  LOBYTE(v159) = v51 & 1;
  LOBYTE(v148[0]) = 0;
  v71 = sub_258B011A4();
  v72 = v102;
  *v102 = v71;
  *(v72 + 8) = 0x4034000000000000;
  *(v72 + 16) = 0;
  sub_258A085E4(0, &qword_27F96DF80, sub_258A083B0);
  v159 = v101;
  swift_getKeyPath();
  sub_258A08474();
  v73 = sub_258A07C08(&qword_27F96DF60, sub_258A08474, MEMORY[0x277D83980]);
  v76 = sub_258A084C4(v73, v74, v75);
  sub_258A08590(v76, v77, v78);
  sub_258B003E4();
  sub_258B023B4();
  sub_258A08A88(v72, v118, sub_258A0834C);
  *&v125 = v113;
  *(&v125 + 1) = v115;
  LOBYTE(v126) = v116;
  *(&v126 + 1) = *v124;
  DWORD1(v126) = *&v124[3];
  *(&v126 + 1) = v114;
  LOBYTE(v127) = v117;
  *(&v127 + 1) = *v123;
  DWORD1(v127) = *&v123[3];
  *(&v127 + 1) = v107;
  *&v128[0] = v106;
  *(&v128[0] + 1) = v105;
  *&v128[1] = v104;
  BYTE8(v128[1]) = 0;
  v79 = v125;
  v80 = v126;
  v81 = v103;
  *(v103 + 57) = *(v128 + 9);
  v82 = v128[0];
  v81[2] = v127;
  v81[3] = v82;
  *v81 = v79;
  v81[1] = v80;
  *&v129 = v110;
  *(&v129 + 1) = v109;
  LOBYTE(v130) = v112;
  DWORD1(v130) = *(v122 + 3);
  *(&v130 + 1) = v122[0];
  *(&v130 + 1) = v111;
  LOBYTE(v131) = v108;
  DWORD1(v131) = *&v121[3];
  *(&v131 + 1) = *v121;
  *(&v131 + 1) = v41;
  *&v132[0] = v43;
  *(&v132[0] + 1) = v45;
  *&v132[1] = v47;
  BYTE8(v132[1]) = 0;
  v83 = v129;
  v84 = v130;
  *(v81 + 137) = *(v132 + 9);
  v85 = v132[0];
  v81[7] = v131;
  v81[8] = v85;
  v81[5] = v83;
  v81[6] = v84;
  v87 = v99;
  v86 = v100;
  *&v133 = v59;
  *(&v133 + 1) = v99;
  LOBYTE(v51) = v97;
  LOBYTE(v134) = v97;
  DWORD1(v134) = *(v120 + 3);
  *(&v134 + 1) = v120[0];
  *(&v134 + 1) = v100;
  v88 = v98;
  LOBYTE(v135) = v98;
  DWORD1(v135) = *&v119[3];
  *(&v135 + 1) = *v119;
  *(&v135 + 1) = v64;
  *&v136[0] = v66;
  *(&v136[0] + 1) = v68;
  *&v136[1] = v70;
  BYTE8(v136[1]) = 0;
  v89 = v133;
  v90 = v134;
  *(v81 + 217) = *(v136 + 9);
  v91 = v136[0];
  v81[12] = v135;
  v81[13] = v91;
  v81[10] = v89;
  v81[11] = v90;
  sub_258A082A0(0);
  v93 = v81 + *(v92 + 80);
  v94 = v118;
  sub_258A08A88(v118, v93, sub_258A0834C);
  sub_258A08648(&v125, &v159);
  sub_258A08648(&v129, &v159);
  sub_258A08648(&v133, &v159);
  sub_258A08CD4(v72, sub_258A0834C);
  sub_258A08CD4(v94, sub_258A0834C);
  v137[0] = v59;
  v137[1] = v87;
  v138 = v51;
  *v139 = v120[0];
  *&v139[3] = *(v120 + 3);
  v140 = v86;
  v141 = v88;
  *v142 = *v119;
  *&v142[3] = *&v119[3];
  v143 = v64;
  v144 = v66;
  v145 = v68;
  v146 = v70;
  v147 = 0;
  sub_258A086D8(v137);
  v148[0] = v110;
  v148[1] = v109;
  v149 = v112;
  *v150 = v122[0];
  *&v150[3] = *(v122 + 3);
  v151 = v111;
  v152 = v108;
  *v153 = *v121;
  *&v153[3] = *&v121[3];
  v154 = v41;
  v155 = v43;
  v156 = v45;
  v157 = v47;
  v158 = 0;
  sub_258A086D8(v148);
  v159 = v113;
  v160 = v115;
  v161 = v116;
  *v162 = *v124;
  *&v162[3] = *&v124[3];
  v163 = v114;
  v164 = v117;
  *v165 = *v123;
  *&v165[3] = *&v123[3];
  v166 = v107;
  v167 = v106;
  v168 = v105;
  v169 = v104;
  v170 = 0;
  return sub_258A086D8(&v159);
}

uint64_t sub_258A06DA0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
  sub_258B003E4();

  return sub_258B003E4();
}

uint64_t sub_258A06DE8@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  *a2 = sub_258B011A4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_258A085E4(0, &qword_27F96DF28, sub_258A0826C);
  return sub_258A064DC(v4, v5, v6, (a2 + *(v7 + 44)));
}

uint64_t sub_258A06E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  sub_2589BFF58(a1, a2, a3);
  sub_258B003E4();
  v6 = sub_258B01B44();
  v8 = v7;
  v10 = v9;
  sub_258B01A44();
  v11 = sub_258B01AE4();
  v13 = v12;
  v15 = v14;

  sub_2589BFFAC(v6, v8, v10 & 1);

  v16 = [objc_opt_self() labelColor];
  sub_258B01F94();
  v17 = sub_258B01AA4();
  v19 = v18;
  v21 = v20;
  v23 = v22;

  sub_2589BFFAC(v11, v13, v15 & 1);

  sub_258B003E4();
  v24 = sub_258B01B44();
  v26 = v25;
  v27 = v21 & 1;
  v32 = v21 & 1;
  v29 = v28 & 1;
  *a5 = v17;
  *(a5 + 8) = v19;
  *(a5 + 16) = v27;
  *(a5 + 24) = v23;
  *(a5 + 32) = v24;
  *(a5 + 40) = v25;
  *(a5 + 48) = v28 & 1;
  *(a5 + 56) = v30;
  *(a5 + 64) = 256;
  *(a5 + 72) = 0x3FF0000000000000;
  sub_2589E36D4(v17, v19, v27);
  sub_258B003E4();
  sub_2589E36D4(v24, v26, v29);
  sub_258B003E4();
  sub_2589BFFAC(v24, v26, v29);

  sub_2589BFFAC(v17, v19, v32);
}

double sub_258A07070@<D0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = sub_258B011A4();
  v19 = 0;
  sub_258A06E60(v4, v5, v6, &v13);
  v22 = v15;
  v23 = v16;
  v20 = v13;
  v21 = v14;
  v25[2] = v15;
  v25[3] = v16;
  v25[4] = v17;
  v25[1] = v14;
  v24 = v17;
  v25[0] = v13;
  sub_258A08A88(&v20, &v12, sub_258A08AF0);
  sub_258A08CD4(v25, sub_258A08AF0);
  *&v18[7] = v20;
  *&v18[71] = v24;
  *&v18[55] = v23;
  *&v18[39] = v22;
  *&v18[23] = v21;
  v8 = *&v18[48];
  *(a2 + 49) = *&v18[32];
  *(a2 + 65) = v8;
  *(a2 + 81) = *&v18[64];
  result = *v18;
  v10 = *&v18[16];
  *(a2 + 17) = *v18;
  v11 = v19;
  *a2 = v7;
  *(a2 + 8) = 0;
  *(a2 + 16) = v11;
  *(a2 + 96) = *&v18[79];
  *(a2 + 33) = v10;
  return result;
}

double OnBoardingKitPresentationSizing.proposedSize(for:context:)()
{
  sub_258A07E9C();
  [swift_getObjCClassFromMetadata() preferredContentSize];
  return result;
}

double sub_258A07214()
{
  sub_258A07E9C();
  [swift_getObjCClassFromMetadata() preferredContentSize];
  return result;
}

void sub_258A07268(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_258A072F0(uint64_t a1)
{
  v2 = sub_258B00AA4();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_258B00D94();
}

uint64_t sub_258A073B8(uint64_t a1)
{
  sub_258A07454(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_258A08A88(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), sub_258A07454);
  return sub_258B00E44();
}

void sub_258A07490(uint64_t a1)
{
  if (!qword_27F96DE58)
  {
    sub_258A07524(255);
    sub_258A08C20(255, &qword_27F96DED0, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0718]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96DE58);
    }
  }
}

void sub_258A07524(uint64_t a1)
{
  if (!qword_27F96DE60)
  {
    sub_258A076C0(255);
    sub_258A07A20(255);
    sub_258A077AC(255);
    sub_258A07860(255);
    sub_258A07C08(&qword_27F96DE98, sub_258A07860, MEMORY[0x277CDE5A0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_258A07AD4(255);
    sub_258A07C08(&qword_27F96DEC8, sub_258A07AD4, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96DE60);
    }
  }
}

void sub_258A076C0(uint64_t a1)
{
  if (!qword_27F96DE68)
  {
    sub_258A077AC(255);
    sub_258A07860(255);
    sub_258A07C08(&qword_27F96DE98, sub_258A07860, MEMORY[0x277CDE5A0]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96DE68);
    }
  }
}

void sub_258A077AC(uint64_t a1)
{
  if (!qword_27F96DE70)
  {
    sub_258A07860(255);
    sub_258A07C08(&qword_27F96DE98, sub_258A07860, MEMORY[0x277CDE5A0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96DE70);
    }
  }
}

void sub_258A07860(uint64_t a1)
{
  if (!qword_27F96DE78)
  {
    sub_258A078E0();
    sub_258A07940();
    v1 = sub_258B01A84();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96DE78);
    }
  }
}

void sub_258A078E0()
{
  if (!qword_27F96DE80)
  {
    v0 = sub_258B02444();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96DE80);
    }
  }
}

unint64_t sub_258A07940()
{
  result = qword_27F96DE88;
  if (!qword_27F96DE88)
  {
    sub_258A078E0();
    sub_258A079CC(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96DE88);
  }

  return result;
}

unint64_t sub_258A079CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96DE90;
  if (!qword_27F96DE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96DE90);
  }

  return result;
}

void sub_258A07A20(uint64_t a1)
{
  if (!qword_27F96DEA0)
  {
    sub_258A07AD4(255);
    sub_258A07C08(&qword_27F96DEC8, sub_258A07AD4, MEMORY[0x277CDD7A8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96DEA0);
    }
  }
}

void sub_258A07AD4(uint64_t a1)
{
  if (!qword_27F96DEA8)
  {
    sub_258A07B74(255);
    sub_258A07C08(&qword_27F96DEC0, sub_258A07B74, MEMORY[0x277CDF028]);
    v1 = sub_258B00794();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96DEA8);
    }
  }
}

void sub_258A07B74(uint64_t a1)
{
  if (!qword_27F96DEB0)
  {
    sub_258B01014();
    sub_258A07C08(&qword_27F96DEB8, MEMORY[0x277CDDE30], MEMORY[0x277CDDE28]);
    v1 = sub_258B021B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96DEB0);
    }
  }
}

uint64_t sub_258A07C08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_258A07C50()
{
  result = qword_27F96DED8;
  if (!qword_27F96DED8)
  {
    sub_258A07490(255);
    sub_258A076C0(255);
    sub_258A07A20(255);
    sub_258A077AC(255);
    sub_258A07860(255);
    sub_258A07C08(&qword_27F96DE98, sub_258A07860, MEMORY[0x277CDE5A0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_258A07AD4(255);
    sub_258A07C08(&qword_27F96DEC8, sub_258A07AD4, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_258A07E18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96DED8);
  }

  return result;
}

unint64_t sub_258A07E18()
{
  result = qword_27F96DEE0;
  if (!qword_27F96DEE0)
  {
    sub_258A08C20(255, &qword_27F96DED0, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0718]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96DEE0);
  }

  return result;
}

unint64_t sub_258A07E9C()
{
  result = qword_27F96DEE8;
  if (!qword_27F96DEE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F96DEE8);
  }

  return result;
}

unint64_t sub_258A07EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96DEF0;
  if (!qword_27F96DEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96DEF0);
  }

  return result;
}

void sub_258A07F84(uint64_t a1)
{
  sub_258A07268(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_258A07268(319, &qword_27F96C978, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_258A07268(319, &qword_27F96DEF8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_258A07268(319, &qword_27F96DF00, sub_258A07454, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_258A08128(uint64_t a1)
{
  if (!qword_27F96DF20)
  {
    sub_258B00A14();
    sub_258A07490(255);
    sub_258A07C50();
    v1 = sub_258B00B34();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96DF20);
    }
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_258A081B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_258A08200(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_258A082A0(uint64_t a1)
{
  if (!qword_27F96DF38)
  {
    sub_258A08C20(255, &qword_27F96DF40, MEMORY[0x277CE0BD8], MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
    sub_258A0834C(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27F96DF38);
    }
  }
}

void sub_258A0834C(uint64_t a1)
{
  if (!qword_27F96DF48)
  {
    sub_258A083B0(255);
    sub_258A08518();
    v1 = sub_258B022D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96DF48);
    }
  }
}

void sub_258A083B0(uint64_t a1)
{
  if (!qword_27F96DF50)
  {
    sub_258A08474();
    v5 = sub_258A07C08(&qword_27F96DF60, sub_258A08474, MEMORY[0x277D83980]);
    sub_258A084C4(v5, v1, v2);
    v3 = sub_258B023D4();
    if (!v4)
    {
      atomic_store(v3, &qword_27F96DF50);
    }
  }
}

void sub_258A08474()
{
  if (!qword_27F96DF58)
  {
    v0 = sub_258B02CD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96DF58);
    }
  }
}

unint64_t sub_258A084C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96DF68;
  if (!qword_27F96DF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96DF68);
  }

  return result;
}

unint64_t sub_258A08518()
{
  result = qword_27F96DF70;
  if (!qword_27F96DF70)
  {
    sub_258A083B0(255);
    sub_258A08590(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96DF70);
  }

  return result;
}

unint64_t sub_258A08590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96DF78;
  if (!qword_27F96DF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96DF78);
  }

  return result;
}

void sub_258A085E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B00974();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_258A08648(uint64_t a1, uint64_t a2)
{
  sub_258A08C20(0, &qword_27F96DF40, MEMORY[0x277CE0BD8], MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A086D8(uint64_t a1)
{
  sub_258A08C20(0, &qword_27F96DF40, MEMORY[0x277CE0BD8], MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258A08778(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssessmentRiskInformationalView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A087DC()
{
  v1 = *(type metadata accessor for AssessmentRiskInformationalView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_258A061CC(v2);
}

uint64_t sub_258A0883C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_258A07268(0, a3, a4, MEMORY[0x277CDF458]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_258A088BC@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = v2[3];
  v4 = v2[4];
  *a1 = v2[2];
  a1[1] = v3;
  a1[2] = v4;
  sub_258B003E4();

  return sub_258B003E4();
}

uint64_t sub_258A08904(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_258A0894C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_258A089D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_258A07C08(a4, a5, MEMORY[0x277CE14C0]);
    v8 = sub_258B022D4();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_258A08A88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_258A08B24(uint64_t a1)
{
  if (!qword_27F96DFA8)
  {
    sub_258A08B8C(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96DFA8);
    }
  }
}

void sub_258A08B8C(uint64_t a1)
{
  if (!qword_27F96DFB0)
  {
    sub_258A08C20(255, &qword_27F96D1F8, MEMORY[0x277CE0BD8], MEMORY[0x277CDFC50], MEMORY[0x277CDFAB8]);
    sub_258A08C74(255);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96DFB0);
    }
  }
}

void sub_258A08C20(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258A08C74(uint64_t a1)
{
  if (!qword_27F96DFB8)
  {
    sub_258B014C4();
    v1 = sub_258B01454();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96DFB8);
    }
  }
}

uint64_t sub_258A08CD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for EditButton(uint64_t a1)
{
  result = qword_27F96DFD8;
  if (!qword_27F96DFD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A08DF4(uint64_t a1)
{
  sub_2589E3D24(319);
  if (v1 <= 0x3F)
  {
    sub_258A0A95C(319, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      sub_2589C0D10();
      if (v3 <= 0x3F)
      {
        sub_258A09E48(319, &qword_27F96DCA8, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_258A08F18@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v43 = a2;
  v3 = type metadata accessor for EditButton(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_258A0A04C(0);
  v7 = v6;
  MEMORY[0x28223BE20](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A09F78(0);
  v51 = *(v10 - 8);
  v52 = v10;
  MEMORY[0x28223BE20](v10);
  v49 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A0A134(0, &qword_27F96E000, sub_258A09F78, MEMORY[0x277CDE470]);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v50 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v48 = &v43 - v15;
  v16 = type metadata accessor for NotificationsSetupPhaseSpecs(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AC1B5C(v18);
  sub_258A0A8FC(v18, type metadata accessor for NotificationsSetupPhaseSpecs);
  sub_258B024F4();
  sub_258B00854();
  v47 = v59;
  v46 = v61;
  v45 = v63;
  v44 = v64;
  v67 = 1;
  v66 = v60;
  v65 = v62;
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v53 = sub_258AFFD94();
  v54 = v19;
  sub_258A0A7C4(a1, &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v21 = swift_allocObject();
  v22 = sub_258A0A828(&v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  sub_2589BFF58(v22, v23, v24);
  sub_258B021A4();
  v25 = sub_258B01FC4();
  KeyPath = swift_getKeyPath();
  v27 = &v9[v7[9]];
  *v27 = KeyPath;
  v27[1] = v25;
  v28 = *(a1 + 24);
  v57 = *(a1 + 16);
  v58 = v28;
  sub_258A0A95C(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_258B02144();
  sub_258A0A7C4(a1, &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = swift_allocObject();
  sub_258A0A828(&v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v20);
  sub_258A0A134(0, &qword_27F96E020, sub_258A0A1A8, sub_2589D3448);
  v31 = v30;
  v41 = sub_258A0A580();
  v42 = sub_258A0A6B4();
  v32 = v49;
  sub_258B01E94();

  sub_258A0A8FC(v9, sub_258A0A04C);
  v53 = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D5198);
  sub_258A0A95C(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  sub_2589C68A0(&unk_2869D51B8);
  v53 = v7;
  v54 = v31;
  v55 = v41;
  v56 = v42;
  swift_getOpaqueTypeConformance2();
  v33 = v48;
  v34 = v52;
  sub_258B01DD4();

  (*(v51 + 8))(v32, v34);
  LOBYTE(v25) = v67;
  LOBYTE(v34) = v66;
  v35 = v65;
  v36 = v50;
  sub_2589A92E4(v33, v50);
  v37 = v43;
  *v43 = 0;
  *(v37 + 8) = v25;
  v37[2] = v47;
  *(v37 + 24) = v34;
  v37[4] = v46;
  *(v37 + 40) = v35;
  v38 = v44;
  v37[6] = v45;
  v37[7] = v38;
  sub_258A09EAC(0);
  sub_2589A92E4(v36, v37 + *(v39 + 48));
  sub_2589A9378(v33);
  return sub_2589A9378(v36);
}

void sub_258A095EC(uint64_t a2@<X8>)
{
  sub_258A0A2D8(0);
  sub_258A0A3D8(255);
  sub_258A0A52C(v3, v4, v5);
  sub_258A0A48C(255);
  sub_258A0AC24(&qword_27F96E048, sub_258A0A48C, MEMORY[0x277CDD7A8]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_258B00B24();
  KeyPath = swift_getKeyPath();
  sub_258A0A134(0, &qword_27F96E020, sub_258A0A1A8, sub_2589D3448);
  v8 = (a2 + *(v7 + 36));
  *v8 = KeyPath;
  v8[1] = 0;
}

uint64_t sub_258A09758(uint64_t a1)
{
  v1 = [objc_allocWithZone(type metadata accessor for NotificationSettingsModel(0)) init];
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  sub_258AFFD94();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v7 = v2;
  MEMORY[0x28223BE20](v2);
  sub_258A0A3D8(0);
  sub_258A0A52C(v3, v4, v5);
  sub_258A0A48C(255);
  sub_258A0AC24(&qword_27F96E048, sub_258A0A48C, MEMORY[0x277CDD7A8]);
  swift_getOpaqueTypeConformance2();
  sub_258B01EE4();
  sub_258A0A9C4(sub_258A0A9B4, v7, 0);
}

uint64_t sub_258A09954(uint64_t a1)
{
  v2 = sub_258B01384();
  MEMORY[0x28223BE20](v2 - 8);
  sub_258A0A48C(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_258B01354();
  v11 = a1;
  sub_258B026B4();
  sub_258A0AC24(&qword_27F96D6D8, MEMORY[0x277D12688], MEMORY[0x277D12678]);
  sub_258B00784();
  v8 = sub_258A0AC24(&qword_27F96E048, sub_258A0A48C, MEMORY[0x277CDD7A8]);
  MEMORY[0x259C91A00](v7, v4, v8);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_258A09B24(uint64_t a1)
{
  v2 = type metadata accessor for EditButton(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_258A0A7C4(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_258A0A828(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  return sub_258B026A4();
}

uint64_t sub_258A09C28(uint64_t a1)
{
  sub_258A0A95C(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);

  sub_258B02124();
  sub_258B02134();
}

uint64_t sub_258A09CDC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for NotificationsSetupPhaseSpecs(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AC1B5C(v5);
  sub_258A0A8FC(v5, type metadata accessor for NotificationsSetupPhaseSpecs);
  *a1 = sub_258B01004();
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
  sub_258A09DB0(0);
  return sub_258A08F18(v1, (a1 + *(v6 + 44)));
}

void sub_258A09DB0(uint64_t a1)
{
  if (!qword_27F96DFE8)
  {
    sub_258A09E48(255, &qword_27F96DFF0, sub_258A09EAC, MEMORY[0x277CE14B8]);
    v1 = sub_258B00974();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96DFE8);
    }
  }
}

void sub_258A09E48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_258A09EAC(uint64_t a1)
{
  if (!qword_27F96DFF8)
  {
    sub_258A0A0E0(255, &qword_27F96C7B8, MEMORY[0x277CE1180], MEMORY[0x277CDF688], MEMORY[0x277CDFAB8]);
    sub_258A0A134(255, &qword_27F96E000, sub_258A09F78, MEMORY[0x277CDE470]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96DFF8);
    }
  }
}

void sub_258A09F78(uint64_t a1)
{
  if (!qword_27F96E008)
  {
    sub_258A0A04C(255);
    sub_258A0A134(255, &qword_27F96E020, sub_258A0A1A8, sub_2589D3448);
    sub_258A0A580();
    sub_258A0A6B4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96E008);
    }
  }
}

void sub_258A0A04C(uint64_t a1)
{
  if (!qword_27F96E010)
  {
    sub_258A0A0E0(255, &qword_27F96E018, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDF020]);
    sub_2589D3448(255);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96E010);
    }
  }
}

void sub_258A0A0E0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258A0A134(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_258B00B04();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258A0A1A8(uint64_t a1)
{
  if (!qword_27F96E028)
  {
    sub_258B00A14();
    sub_258A0A2D8(255);
    sub_258A0A3D8(255);
    sub_258A0A52C(v1, v2, v3);
    sub_258A0A48C(255);
    sub_258A0AC24(&qword_27F96E048, sub_258A0A48C, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v4 = sub_258B00B34();
    if (!v5)
    {
      atomic_store(v4, &qword_27F96E028);
    }
  }
}

void sub_258A0A2D8(uint64_t a1)
{
  if (!qword_27F96E030)
  {
    sub_258A0A3D8(255);
    sub_258A0A52C(v1, v2, v3);
    sub_258A0A48C(255);
    sub_258A0AC24(&qword_27F96E048, sub_258A0A48C, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v5)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96E030);
    }
  }
}

void sub_258A0A3D8(uint64_t a1)
{
  if (!qword_27F96E038)
  {
    sub_258A0A48C(255);
    sub_258A0AC24(&qword_27F96E048, sub_258A0A48C, MEMORY[0x277CDD7A8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96E038);
    }
  }
}

void sub_258A0A48C(uint64_t a1)
{
  if (!qword_27F96E040)
  {
    sub_258B026B4();
    sub_258A0AC24(&qword_27F96D6D8, MEMORY[0x277D12688], MEMORY[0x277D12678]);
    v1 = sub_258B00794();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96E040);
    }
  }
}

unint64_t sub_258A0A52C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96E050;
  if (!qword_27F96E050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E050);
  }

  return result;
}

unint64_t sub_258A0A580()
{
  result = qword_27F96E058;
  if (!qword_27F96E058)
  {
    sub_258A0A04C(255);
    sub_258A0A630();
    sub_258A0AC24(&qword_27F96CF60, sub_2589D3448, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E058);
  }

  return result;
}

unint64_t sub_258A0A630()
{
  result = qword_27F96E060;
  if (!qword_27F96E060)
  {
    sub_258A0A0E0(255, &qword_27F96E018, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDF020]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E060);
  }

  return result;
}

unint64_t sub_258A0A6B4()
{
  result = qword_27F96E068;
  if (!qword_27F96E068)
  {
    sub_258A0A134(255, &qword_27F96E020, sub_258A0A1A8, sub_2589D3448);
    sub_258A0AC24(&qword_27F96E070, sub_258A0A1A8, MEMORY[0x277CDDA18]);
    sub_258A0AC24(&qword_27F96CF60, sub_2589D3448, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E068);
  }

  return result;
}

uint64_t sub_258A0A7C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A0A828(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_258A0A88C(uint64_t a1@<X8>)
{
  type metadata accessor for EditButton(0);

  sub_258A095EC(a1);
}

uint64_t sub_258A0A8FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_258A0A95C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_258A0A9C4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return MEMORY[0x2821F96F8](a1, a2);
  }

  else
  {
  }
}

uint64_t objectdestroyTm_5()
{
  v1 = (type metadata accessor for EditButton(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[9];
  sub_258A09E48(0, &qword_27F96D7B0, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_258B01504();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v3, 1, v4))
    {
      (*(v5 + 8))(v3, v4);
    }

    v6 = *(type metadata accessor for NotificationsSetupPhaseSpecs(0) + 20);
    v7 = sub_258B00AA4();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_258A0AC24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_258A0AC6C(uint64_t a1)
{
  if (!qword_27F96E080)
  {
    sub_258A09E48(255, &qword_27F96DFF0, sub_258A09EAC, MEMORY[0x277CE14B8]);
    sub_258A0AD00();
    v1 = sub_258B021D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96E080);
    }
  }
}

unint64_t sub_258A0AD00()
{
  result = qword_27F96E088;
  if (!qword_27F96E088)
  {
    sub_258A09E48(255, &qword_27F96DFF0, sub_258A09EAC, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E088);
  }

  return result;
}

uint64_t type metadata accessor for DomainsSelectionPhaseContent(uint64_t a1)
{
  result = qword_27F96E090;
  if (!qword_27F96E090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A0AE00(uint64_t a1)
{
  sub_258A0B99C(319, &qword_27F96E0A0, type metadata accessor for Label, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_258A0B99C(319, &qword_27F96E0A8, sub_258A0AFC8, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_258A0B99C(319, &qword_27F96E0B8, sub_258A0AFC8, MEMORY[0x277CE11F8]);
      if (v3 <= 0x3F)
      {
        sub_258A0AFFC();
        if (v4 <= 0x3F)
        {
          sub_2589C0D10();
          if (v5 <= 0x3F)
          {
            sub_258A0B99C(319, &qword_27F96D290, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_258A0AFFC()
{
  if (!qword_27F96E0C0)
  {
    v0 = sub_258B02364();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96E0C0);
    }
  }
}

id sub_258A0B068@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v84 = type metadata accessor for DomainsAndContextEntry(0);
  v3 = MEMORY[0x28223BE20](v84);
  v86 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v78 - v5;
  v79 = type metadata accessor for AssociationSelectionPhaseSpecs(0);
  v7 = MEMORY[0x28223BE20](v79);
  *&v90 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v89 = &v78 - v10;
  MEMORY[0x28223BE20](v9);
  v88 = &v78 - v11;
  v12 = type metadata accessor for ValenceSelectionSummary(0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A0B920(0);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v87 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A0B900(0);
  v80 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v83 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v78 - v23;
  MEMORY[0x28223BE20](v22);
  v82 = &v78 - v25;
  v26 = *a1;
  v27 = a1[1];
  v28 = *(a1 + 80);
  *&v15[*(v13 + 40)] = swift_getKeyPath();
  v29 = MEMORY[0x277CDF458];
  sub_258A0B99C(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  *v15 = v26;
  *(v15 + 1) = v27;
  v15[16] = v28;
  v30 = *(v13 + 36);
  *&v15[v30] = swift_getKeyPath();
  sub_258A0B99C(0, &qword_27F96D2E0, type metadata accessor for AssociationSelectionPhaseSpecs, v29);
  v81 = v31;
  swift_storeEnumTagMultiPayload();
  sub_258B003E4();
  v32 = sub_258B01894();
  v33 = *(v27 + 16);
  type metadata accessor for DomainsSelectionPhaseContent(0);
  if (v33)
  {
    v34 = v89;
  }

  else
  {
    v34 = v88;
  }

  sub_258AC1B28(v34);
  sub_258A0BAD0(v34, type metadata accessor for AssociationSelectionPhaseSpecs);
  sub_258B00654();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = v15;
  v44 = v87;
  sub_258A0BA00(v43, v87, type metadata accessor for ValenceSelectionSummary);
  v45 = v44 + *(v17 + 44);
  *v45 = v32;
  v46 = v90;
  *(v45 + 8) = v36;
  *(v45 + 16) = v38;
  *(v45 + 24) = v40;
  *(v45 + 32) = v42;
  *(v45 + 40) = 0;
  v47 = sub_258B01884();
  sub_258AC1B28(v46);
  if (v28 == 1)
  {
    goto LABEL_8;
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v49 = result;
    homeButtonType = MobileGestalt_get_homeButtonType();

    if (homeButtonType == 2)
    {
      sub_258B00A84();
      sub_258A0BAD0(v46, type metadata accessor for AssociationSelectionPhaseSpecs);
LABEL_9:
      sub_258B00654();
      v52 = v51;
      v54 = v53;
      v56 = v55;
      v58 = v57;
      sub_258A0BA00(v44, v24, sub_258A0B920);
      v59 = &v24[*(v80 + 36)];
      *v59 = v47;
      *(v59 + 1) = v52;
      *(v59 + 2) = v54;
      *(v59 + 3) = v56;
      *(v59 + 4) = v58;
      v59[40] = 0;
      v60 = v82;
      sub_258A0BA00(v24, v82, sub_258A0B900);
      v61 = a1[2];
      *v93 = a1[3];
      *&v93[8] = *(a1 + 2);
      sub_258A0B99C(0, &qword_27F96E0B8, sub_258A0AFC8, MEMORY[0x277CE11F8]);
      sub_258B003E4();
      sub_258B02334();
      v62 = *v91;
      sub_258A0AFFC();
      v90 = *&v91[8];
      v63 = a1[8];
      v64 = a1[9];
      *v93 = *(a1 + 3);
      *&v93[16] = v63;
      v94 = v64;
      sub_258B02334();
      v65 = *v91;
      v66 = *&v91[16];
      v67 = v92;
      v68 = *(a1 + 81);
      v69 = a1[11];
      *v6 = v61;
      *(v6 + 1) = v62;
      *(v6 + 1) = v90;
      *(v6 + 2) = v65;
      *(v6 + 6) = v66;
      *(v6 + 7) = v67;
      v6[64] = v68;
      *(v6 + 9) = v69;
      v70 = v84;
      v71 = *(v84 + 36);
      *&v6[v71] = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      v72 = &v6[*(v70 + 40)];
      v91[0] = 0;
      sub_258B02114();
      v73 = *&v93[8];
      *v72 = v93[0];
      *(v72 + 1) = v73;
      v74 = v83;
      sub_258A0BA68(v60, v83, sub_258A0B900);
      v75 = v86;
      sub_258A0BA68(v6, v86, type metadata accessor for DomainsAndContextEntry);
      v76 = v85;
      sub_258A0BA68(v74, v85, sub_258A0B900);
      sub_258A0B890(0);
      sub_258A0BA68(v75, v76 + *(v77 + 48), type metadata accessor for DomainsAndContextEntry);
      sub_258A0BAD0(v6, type metadata accessor for DomainsAndContextEntry);
      sub_258A0BAD0(v60, sub_258A0B900);
      sub_258A0BAD0(v75, type metadata accessor for DomainsAndContextEntry);
      return sub_258A0BAD0(v74, sub_258A0B900);
    }

LABEL_8:
    sub_258A0BAD0(v46, type metadata accessor for AssociationSelectionPhaseSpecs);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

id sub_258A0B7B0@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_258B01194();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_258A0B7F4(0);
  return sub_258A0B068(v2, a2 + *(v4 + 44));
}

void sub_258A0B7F4(uint64_t a1)
{
  if (!qword_27F96E0C8)
  {
    sub_258A0B85C(255);
    v1 = sub_258B00974();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96E0C8);
    }
  }
}

void sub_258A0B890(uint64_t a1)
{
  if (!qword_27F96E0D8)
  {
    sub_258A0B900(255);
    type metadata accessor for DomainsAndContextEntry(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96E0D8);
    }
  }
}

void sub_258A0B940(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258A0B99C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_258A0BA00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A0BA68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A0BAD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_258A0BB30(uint64_t a1)
{
  if (!qword_27F96E0F8)
  {
    sub_258A0B85C(255);
    sub_258A0BBC4(&qword_27F96E100, sub_258A0B85C, MEMORY[0x277CE14C0]);
    v1 = sub_258B022D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96E0F8);
    }
  }
}

uint64_t sub_258A0BBC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_258A0BC1C@<X0>(uint64_t a1@<X8>)
{
  sub_258B009D4();
  sub_258A0CCA8();
  sub_258B02D94();
  sub_258B02DB4();
  if (v9[4] == v9[0])
  {
    v2 = sub_258B00934();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    v4 = sub_258B02DD4();
    v6 = v5;
    v7 = sub_258B00934();
    v8 = *(v7 - 8);
    (*(v8 + 16))(a1, v6, v7);
    v4(v9, 0);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }
}

double sub_258A0BD84(uint64_t a1, char a2, uint64_t a3, int a4, uint64_t a5, double a6, double a7)
{
  v70 = a3;
  v71 = a1;
  v74 = *MEMORY[0x277D85DE8];
  sub_258A0CBA4(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v64[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_258B00934();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v64[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v20 = &v64[-v19];
  sub_258A0BC1C(v13);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    v65 = a4;
    v67 = v15;
    (*(v15 + 32))(v20, v13, v14);
    sub_258B00C24();
    LOBYTE(v73) = v22 & 1;
    LOBYTE(v72) = v23 & 1;
    sub_258B00914();
    v25 = v24;
    v27 = v26;
    sub_258A0CC58();
    v28 = a5;
    inited = swift_initStackObject();
    v69 = xmmword_258B2C470;
    *(inited + 16) = xmmword_258B2C470;
    *(inited + 32) = v25;
    v30 = swift_initStackObject();
    *(v30 + 16) = v69;
    *(v30 + 32) = v27;
    sub_258B009D4();
    sub_258A0CCA8();
    sub_258B02D94();
    v68 = v28;
    sub_258B02DB4();
    v32 = v72;
    v31 = v73;
    if (v72 >= v73)
    {
      if (__OFSUB__(v72, v73))
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      if (v72 != v73)
      {
        v33 = v73 + 1;
        if (__OFADD__(v73, 1))
        {
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        if (v33 < v73 || (v31 = v73 + 1, v72 < v33))
        {
LABEL_49:
          __break(1u);
        }
      }

      if (v72 < v31)
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v66 = v20;
      *&v69 = v14;
      if (v31 == v72)
      {
LABEL_11:
        v34 = *(inited + 16);
        v21 = 0.0;
        if (v34)
        {
          v35 = (inited + 32);
          do
          {
            v36 = *v35++;
            v37 = v36;
            if (v21 <= v36)
            {
              v21 = v37;
            }

            --v34;
          }

          while (v34);
        }

        v38 = *(v30 + 16);
        if (!v38)
        {
          goto LABEL_40;
        }

        if (v38 > 3)
        {
          v39 = v38 & 0x7FFFFFFFFFFFFFFCLL;
          v58 = (v30 + 48);
          v40 = 0.0;
          v59 = v38 & 0x7FFFFFFFFFFFFFFCLL;
          do
          {
            v40 = v40 + *(v58 - 2) + *(v58 - 1) + *v58 + v58[1];
            v58 += 4;
            v59 -= 4;
          }

          while (v59);
          if (v38 == v39)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v39 = 0;
          v40 = 0.0;
        }

        v60 = v38 - v39;
        v61 = (v30 + 8 * v39 + 32);
        do
        {
          v62 = *v61++;
          v40 = v40 + v62;
          --v60;
        }

        while (v60);
LABEL_40:
        (*(v67 + 8))(v66, v69);

        return v21;
      }

      v41 = *&v71;
      v42 = (v67 + 8);
      v43 = v65 & 1;
      while (1)
      {
        sub_258B009E4();
        LOBYTE(v73) = a2 & 1;
        LOBYTE(v72) = v43;
        sub_258B00914();
        v46 = *(inited + 16);
        if (!v46)
        {
          break;
        }

        v47 = v45;
        v48 = (inited + 24);
        v49 = v44 + a7 + *(inited + 24 + 8 * v46);
        if ((a2 & 1) != 0 || v49 <= v41)
        {
          *&v48[v46] = v49;
          v53 = *(v30 + 16);
          if (!v53)
          {
            goto LABEL_43;
          }

          v54 = *(v30 + 24 + 8 * v53);
          (*v42)(v18, v69);
          if (v53 > *(v30 + 16))
          {
            goto LABEL_44;
          }

          if (v54 > v47)
          {
            v55 = v54;
          }

          else
          {
            v55 = v47;
          }

          *(v30 + 24 + 8 * v53) = v55;
        }

        else
        {
          v50 = *v48;
          if (v46 >= v50 >> 1)
          {
            v56 = v44;
            v57 = sub_258A74DF4((v50 > 1), v46 + 1, 1, inited);
            v44 = v56;
            inited = v57;
          }

          *(inited + 16) = v46 + 1;
          *(inited + 8 * v46 + 32) = v44;
          v52 = *(v30 + 16);
          v51 = *(v30 + 24);
          if (v52 >= v51 >> 1)
          {
            v30 = sub_258A74DF4((v51 > 1), v52 + 1, 1, v30);
          }

          (*v42)(v18, v69);
          *(v30 + 16) = v52 + 1;
          *(v30 + 8 * v52 + 32) = v47;
        }

        if (v32 == ++v31)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
    }

    __break(1u);
    goto LABEL_46;
  }

  sub_258A0CBFC(v13);
  return 0.0;
}

uint64_t sub_258A0C304(uint64_t a1, char a2, uint64_t a3, int a4, uint64_t a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, double a10, double a11)
{
  v86 = a11;
  v85 = a10;
  v88 = a4;
  v87 = a3;
  v91 = *MEMORY[0x277D85DE8];
  sub_258A0CBA4(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_258B00934();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v79 - v26;
  sub_258A0BC1C(v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    return sub_258A0CBFC(v20);
  }

  v29 = *(v22 + 32);
  v84 = v21;
  v29(v27, v20, v21);
  sub_258B00C24();
  v31 = v30;
  v33 = v32;
  sub_258B025B4();
  LOBYTE(v90) = v31 & 1;
  LOBYTE(v89) = v33 & 1;
  sub_258B00924();
  sub_258B00C24();
  LOBYTE(v90) = v34 & 1;
  LOBYTE(v89) = v35 & 1;
  v80 = v27;
  sub_258B00914();
  v37 = v36;
  v39 = v38;
  sub_258A0CC58();
  inited = swift_initStackObject();
  v83 = xmmword_258B2C470;
  *(inited + 16) = xmmword_258B2C470;
  *(inited + 32) = v37;
  v41 = swift_initStackObject();
  *(v41 + 16) = v83;
  *(v41 + 32) = v39;
  sub_258B009D4();
  sub_258A0CCA8();
  sub_258B02D94();
  sub_258B02DB4();
  v42 = v90;
  if (v89 < v90)
  {
    goto LABEL_53;
  }

  if (__OFSUB__(v89, v90))
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v89 != v90)
  {
    v43 = v90 + 1;
    if (__OFADD__(v90, 1))
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    if (v43 < v90 || (v42 = v90 + 1, v89 < v43))
    {
LABEL_57:
      __break(1u);
    }
  }

  if (v89 < v42)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (v42 != v89)
  {
    *&v83 = a5;
    v81 = *&a1;
    v45 = (v22 + 8);
    v82 = v89;
    while (1)
    {
      sub_258B009E4();
      LOBYTE(v90) = a2 & 1;
      LOBYTE(v89) = v88 & 1;
      sub_258B00914();
      v48 = *(inited + 16);
      if (!v48)
      {
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v49 = v47;
      v50 = v46 + v86;
      v51 = inited + 32;
      if ((a2 & 1) == 0 && v50 + *(v51 + 8 * v48 - 8) > v81)
      {
        v52 = v46;
        v92.origin.x = a6;
        v92.origin.y = a7;
        v92.size.width = a8;
        v92.size.height = a9;
        CGRectGetMinY(v92);
        v53 = *(v41 + 16);
        if (v53)
        {
          if (v53 <= 3)
          {
            v54 = 0;
            v55 = 0.0;
            goto LABEL_42;
          }

          v54 = v53 & 0x7FFFFFFFFFFFFFFCLL;
          v70 = (v41 + 48);
          v55 = 0.0;
          v71 = v53 & 0x7FFFFFFFFFFFFFFCLL;
          do
          {
            v55 = v55 + *(v70 - 2) + *(v70 - 1) + *v70 + v70[1];
            v70 += 4;
            v71 -= 4;
          }

          while (v71);
          if (v53 != v54)
          {
LABEL_42:
            v72 = v53 - v54;
            v73 = (v41 + 8 * v54 + 32);
            do
            {
              v74 = *v73++;
              v55 = v55 + v74;
              --v72;
            }

            while (v72);
          }
        }

        v95.origin.x = a6;
        v95.origin.y = a7;
        v95.size.width = a8;
        v95.size.height = a9;
        CGRectGetMinX(v95);
        sub_258B025B4();
        LOBYTE(v90) = 0;
        LOBYTE(v89) = v88 & 1;
        sub_258B00924();
        v76 = *(inited + 16);
        v75 = *(inited + 24);
        if (v76 >= v75 >> 1)
        {
          inited = sub_258A74DF4((v75 > 1), v76 + 1, 1, inited);
        }

        *(inited + 16) = v76 + 1;
        *(inited + 8 * v76 + 32) = v52;
        v78 = *(v41 + 16);
        v77 = *(v41 + 24);
        if (v78 >= v77 >> 1)
        {
          v41 = sub_258A74DF4((v77 > 1), v78 + 1, 1, v41);
        }

        v44 = *v45;
        (*v45)(v25, v84);
        *(v41 + 16) = v78 + 1;
        *(v41 + 8 * v78 + 32) = v49;
        goto LABEL_15;
      }

      v93.origin.x = a6;
      v93.origin.y = a7;
      v93.size.width = a8;
      v93.size.height = a9;
      CGRectGetMinX(v93);
      v56 = *(inited + 16);
      if (!v56)
      {
        goto LABEL_49;
      }

      v94.origin.x = a6;
      v94.origin.y = a7;
      v94.size.width = a8;
      v94.size.height = a9;
      CGRectGetMinY(v94);
      v57 = *(v41 + 16);
      v58 = v57 - 1;
      v59 = 0.0;
      if (v57 >= 2)
      {
        if (v57 > 4)
        {
          v60 = v58 & 0xFFFFFFFFFFFFFFFCLL;
          v61 = (v41 + 48);
          v62 = v58 & 0xFFFFFFFFFFFFFFFCLL;
          do
          {
            v59 = v59 + *(v61 - 2) + *(v61 - 1) + *v61 + v61[1];
            v61 += 4;
            v62 -= 4;
          }

          while (v62);
          if (v58 == v60)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v60 = 0;
        }

        v63 = ~v60 + v57;
        v64 = (v41 + 8 * v60 + 32);
        do
        {
          v65 = *v64++;
          v59 = v59 + v65;
          --v63;
        }

        while (v63);
      }

LABEL_31:
      sub_258B025B4();
      LOBYTE(v90) = a2 & 1;
      LOBYTE(v89) = v88 & 1;
      sub_258B00924();
      if (v56 > *(inited + 16))
      {
        goto LABEL_50;
      }

      *(v51 + 8 * v56 - 8) = v50 + *(v51 + 8 * v56 - 8);
      v66 = *(v41 + 16);
      if (!v66)
      {
        goto LABEL_51;
      }

      v67 = v41 + 8 * v66;
      v68 = *(v67 + 24);
      v44 = *v45;
      (*v45)(v25, v84);
      if (v66 > *(v41 + 16))
      {
        goto LABEL_52;
      }

      if (v68 > v49)
      {
        v69 = v68;
      }

      else
      {
        v69 = v49;
      }

      *(v67 + 24) = v69;
LABEL_15:
      if (++v42 == v82)
      {
        goto LABEL_12;
      }
    }
  }

  v44 = *(v22 + 8);
LABEL_12:
  v44(v80, v84);
}

void (*sub_258A0CAC4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_258B005E4();
  return sub_2589FE1B8;
}

unint64_t sub_258A0CB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96E108;
  if (!qword_27F96E108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E108);
  }

  return result;
}

void sub_258A0CBA4(uint64_t a1)
{
  if (!qword_27F96E110)
  {
    sub_258B00934();
    v1 = sub_258B030C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96E110);
    }
  }
}

uint64_t sub_258A0CBFC(uint64_t a1)
{
  sub_258A0CBA4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_258A0CC58()
{
  if (!qword_27F96E118)
  {
    v0 = sub_258B03424();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96E118);
    }
  }
}

unint64_t sub_258A0CCA8()
{
  result = qword_27F96DAE0;
  if (!qword_27F96DAE0)
  {
    sub_258B009D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96DAE0);
  }

  return result;
}

uint64_t type metadata accessor for ValenceSliderStyle(uint64_t a1)
{
  result = qword_27F96E120;
  if (!qword_27F96E120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A0CD74(uint64_t a1)
{
  sub_258A0E334(319, &qword_27F96CC80, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_258A0E334(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_258A0CE68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_258A0CEB0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_258A0CF18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X2>, uint64_t a4@<X8>)
{
  v65 = a4;
  v7 = sub_258B015B4();
  v57 = *(v7 - 8);
  v58 = v7;
  v62 = *(v57 + 64);
  MEMORY[0x28223BE20](v7);
  v56 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_258B008E4();
  v9 = *(v54 - 8);
  v55 = *(v9 + 64);
  MEMORY[0x28223BE20](v54);
  v50 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ValenceSliderStyle(0);
  v51 = *(v11 - 8);
  v49 = *(v51 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v13;
  v14 = sub_258B012E4();
  MEMORY[0x28223BE20](v14);
  v59 = sub_258B00704();
  v61 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v48 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D27E4(0);
  v17 = *(v16 - 8);
  v63 = v16;
  v64 = v17;
  MEMORY[0x28223BE20](v16);
  v52 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A0E2A0(0);
  v60 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = (&v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258B01594();
  v23 = v22;
  sub_258B008C4();
  v25 = v24;
  sub_258B008C4();
  if (v26 >= v25)
  {
    v26 = v25;
  }

  v27 = *a3 * v26;
  *v21 = sub_258B02504();
  v21[1] = v28;
  v53 = v21;
  sub_258A0E6C0(0);
  sub_258A0D5BC(a3, a1, v21 + *(v29 + 44), v27, v23);
  sub_258B01514();
  sub_258B006D4();
  sub_258A0E948(a3, v13, type metadata accessor for ValenceSliderStyle);
  v30 = v9;
  v31 = v50;
  v32 = v54;
  (*(v9 + 16))(v50, a1, v54);
  v34 = v56;
  v33 = v57;
  v35 = v58;
  (*(v57 + 16))(v56, a2, v58);
  v36 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v37 = (v49 + *(v9 + 80) + v36) & ~*(v9 + 80);
  v38 = v33;
  v39 = (v55 + *(v33 + 80) + v37) & ~*(v33 + 80);
  v40 = swift_allocObject();
  sub_258A0E8E0(v47, v40 + v36, type metadata accessor for ValenceSliderStyle);
  (*(v30 + 32))(v40 + v37, v31, v32);
  (*(v38 + 32))(v40 + v39, v34, v35);
  sub_258A0E258(&qword_27F96CE38, MEMORY[0x277CDD730], MEMORY[0x277CDD728]);
  sub_258A0E258(&qword_27F96CE40, MEMORY[0x277CDD708], MEMORY[0x277CDD710]);
  v41 = v52;
  v42 = v59;
  v43 = v48;
  sub_258B023F4();

  (*(v61 + 8))(v43, v42);
  sub_258B00734();
  sub_258A0E258(&qword_27F96E190, sub_258A0E2A0, MEMORY[0x277CE11A8]);
  sub_258A0E258(&qword_27F96CE48, sub_2589D27E4, MEMORY[0x277CDFB18]);
  v44 = v63;
  v45 = v53;
  sub_258B01EB4();
  (*(v64 + 8))(v41, v44);
  return sub_258A0E9B0(v45, sub_258A0E2A0);
}

uint64_t sub_258A0D5BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v79 = a2;
  *&v81 = a1;
  v80 = a3;
  v77 = sub_258B02554();
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v75 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_258B006A4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v71 - v13;
  sub_258A0E504();
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = (&v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_258B02384();
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = v21;
  sub_258A0E408(0);
  v23 = v22 - 8;
  v24 = MEMORY[0x28223BE20](v22);
  v78 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v71 - v27;
  MEMORY[0x28223BE20](v26);
  v74 = &v71 - v29;
  v30 = *MEMORY[0x277CE0118];
  v31 = sub_258B010C4();
  (*(*(v31 - 8) + 104))(v21, v30, v31);
  v32 = [objc_opt_self() systemGray6Color];
  v72 = sub_258B01F94();
  type metadata accessor for ValenceSliderStyle(0);
  sub_258AC14E8(v14);
  (*(v9 + 104))(v12, *MEMORY[0x277CDF3C0], v8);
  LOBYTE(v30) = sub_258B00694();
  v33 = *(v9 + 8);
  v33(v12, v8);
  v33(v14, v8);
  v34 = v76;
  v35 = MEMORY[0x277CE13B8];
  if ((v30 & 1) == 0)
  {
    v35 = MEMORY[0x277CE13B0];
  }

  v36 = v75;
  v37 = v77;
  (*(v76 + 104))(v75, *v35, v77);
  (*(v34 + 32))(v18 + *(v16 + 44), v36, v37);
  *v18 = v72;
  sub_258A0E8E0(v18, &v28[*(v23 + 44)], sub_258A0E504);
  sub_258A0E8E0(v73, v28, MEMORY[0x277CE1260]);
  v38 = v74;
  sub_258A0E8E0(v28, v74, sub_258A0E408);
  sub_258B008C4();
  v40 = v39;
  sub_258B008C4();
  if (v41 >= v40)
  {
    v41 = v40;
  }

  v42 = v81;
  v43 = *v81;
  v44 = v41 * (1.0 - (v43 + v43));
  sub_258B008C4();
  v46 = v45;
  sub_258B008C4();
  if (v47 >= v46)
  {
    v47 = v46;
  }

  v48 = v43 * v47;
  sub_258B008C4();
  v50 = v49 - v44 - (v48 + v48);
  v51 = *(v42 + 8);
  sub_258B01FF4();
  v52 = sub_258B02024();

  v53 = sub_258B018D4();
  sub_258B00654();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  LOBYTE(v88) = 0;
  *&v62 = v50 * a5 + a4;
  v63 = v78;
  sub_258A0E948(v38, v78, sub_258A0E408);
  v64 = v80;
  sub_258A0E948(v63, v80, sub_258A0E408);
  sub_258A0E398(0);
  v66 = (v64 + *(v65 + 48));
  *&v82 = v51;
  WORD4(v82) = 256;
  *&v83[0] = v52;
  v81 = xmmword_258B2E2A0;
  *(v83 + 8) = xmmword_258B2E2A0;
  *(&v83[1] + 1) = 0x3FF0000000000000;
  LOBYTE(v84) = v53;
  *(&v84 + 1) = v55;
  *&v85 = v57;
  *(&v85 + 1) = v59;
  *&v86 = v61;
  BYTE8(v86) = 0;
  v87 = v62;
  v67 = v83[0];
  *v66 = v82;
  v66[1] = v67;
  v68 = v84;
  v66[2] = v83[1];
  v66[3] = v68;
  v69 = v86;
  v66[4] = v85;
  v66[5] = v69;
  v66[6] = v87;
  sub_258A0E948(&v82, &v88, sub_258A0E55C);
  sub_258A0E9B0(v38, sub_258A0E408);
  v88 = v51;
  v89 = 256;
  v90 = v52;
  v91 = v81;
  v92 = 0x3FF0000000000000;
  v93 = v53;
  v94 = v55;
  v95 = v57;
  v96 = v59;
  v97 = v61;
  v98 = 0;
  v99 = v62;
  v100 = 0;
  sub_258A0E9B0(&v88, sub_258A0E55C);
  return sub_258A0E9B0(v63, sub_258A0E408);
}

uint64_t sub_258A0DCE8(uint64_t a1, double *a2)
{
  v3 = sub_258B00AC4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v39 - v8;
  sub_258B008C4();
  v11 = v10;
  sub_258B008C4();
  if (v12 >= v11)
  {
    v12 = v11;
  }

  v13 = *a2;
  v14 = 1.0 - (v13 + v13);
  v15 = v12 * v14;
  sub_258B008C4();
  v17 = v16;
  sub_258B008C4();
  if (v18 >= v17)
  {
    v18 = v17;
  }

  v19 = v13 * v18;
  sub_258B008C4();
  v21 = v20;
  sub_258B008C4();
  if (v22 >= v21)
  {
    v22 = v21;
  }

  v23 = v14 * v22;
  sub_258B008C4();
  v25 = v24;
  sub_258B008C4();
  if (v26 >= v25)
  {
    v26 = v25;
  }

  v27 = v13 * v26;
  sub_258B008C4();
  v29 = v28 - v23 - (v27 + v27);
  sub_258B006F4();
  v31 = v30 - v19 + v15 * -0.5;
  type metadata accessor for ValenceSliderStyle(0);
  sub_258AC1778(v9);
  (*(v4 + 104))(v7, *MEMORY[0x277CDFA90], v3);
  v32 = sub_258B00AB4();
  v33 = *(v4 + 8);
  v33(v7, v3);
  v33(v9, v3);
  v34 = v29 - v31;
  if ((v32 & 1) == 0)
  {
    v34 = v31;
  }

  v35 = v34 / v29;
  v42 = sub_258B015A4();
  v43 = v36;
  v44 = v37;
  v40 = v35;
  v39 = xmmword_258B2E2B0;
  sub_258B02A44();
  *&v39 = v41;
  sub_258A0E890();
  sub_258B02314();
}

uint64_t sub_258A0DF80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = v3;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_258B015B4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  (*(v11 + 16))(&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  sub_258A0E948(v4, v9, type metadata accessor for ValenceSliderStyle);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = (v12 + *(v7 + 80) + v13) & ~*(v7 + 80);
  v15 = swift_allocObject();
  (*(v11 + 32))(v15 + v13, &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  result = sub_258A0E8E0(v9, v15 + v14, type metadata accessor for ValenceSliderStyle);
  *a3 = sub_258A0E174;
  a3[1] = v15;
  return result;
}

uint64_t sub_258A0E174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_258B015B4() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for ValenceSliderStyle(0) - 8);
  v9 = (v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)));

  return sub_258A0CF18(a1, v2 + v6, v9, a2);
}

uint64_t sub_258A0E258(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_258A0E2A0(uint64_t a1)
{
  if (!qword_27F96E130)
  {
    sub_258A0E334(255, &qword_27F96E138, sub_258A0E398, MEMORY[0x277CE14B8]);
    sub_258A0E638();
    v1 = sub_258B022E4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96E130);
    }
  }
}

void sub_258A0E334(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_258A0E398(uint64_t a1)
{
  if (!qword_27F96E140)
  {
    sub_258A0E408(255);
    sub_258A0E55C(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96E140);
    }
  }
}

void sub_258A0E408(uint64_t a1)
{
  if (!qword_27F96E148)
  {
    sub_258B02384();
    sub_258A0E470(255);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96E148);
    }
  }
}

void sub_258A0E470(uint64_t a1)
{
  if (!qword_27F96E150)
  {
    sub_258A0E504();
    sub_258A0E258(&qword_27F96E160, sub_258A0E504, MEMORY[0x277CE03C0]);
    v1 = sub_258B015C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96E150);
    }
  }
}

void sub_258A0E504()
{
  if (!qword_27F96E158)
  {
    v0 = sub_258B013B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96E158);
    }
  }
}

void sub_258A0E5D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_258B00B04();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_258A0E638()
{
  result = qword_27F96E180;
  if (!qword_27F96E180)
  {
    sub_258A0E334(255, &qword_27F96E138, sub_258A0E398, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E180);
  }

  return result;
}

void sub_258A0E6C0(uint64_t a1)
{
  if (!qword_27F96E188)
  {
    sub_258A0E334(255, &qword_27F96E138, sub_258A0E398, MEMORY[0x277CE14B8]);
    v1 = sub_258B00974();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96E188);
    }
  }
}

uint64_t sub_258A0E758(uint64_t a1)
{
  v3 = *(type metadata accessor for ValenceSliderStyle(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  sub_258B008E4();
  sub_258B015B4();

  return sub_258A0DCE8(a1, (v1 + v4));
}

void sub_258A0E890()
{
  if (!qword_27F96E198)
  {
    v0 = sub_258B02364();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96E198);
    }
  }
}

uint64_t sub_258A0E8E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A0E948(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A0E9B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_258A0EA10(uint64_t a1)
{
  if (!qword_27F96E1A8)
  {
    sub_258A0EB34(255);
    sub_258A0E2A0(255);
    sub_2589D27E4(255);
    sub_258A0E258(&qword_27F96E190, sub_258A0E2A0, MEMORY[0x277CE11A8]);
    sub_258A0E258(&qword_27F96CE48, sub_2589D27E4, MEMORY[0x277CDFB18]);
    swift_getOpaqueTypeConformance2();
    v1 = sub_258B009C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96E1A8);
    }
  }
}

void sub_258A0EB34(uint64_t a1)
{
  if (!qword_27F96E1B0)
  {
    sub_258A0E2A0(255);
    sub_2589D27E4(255);
    sub_258A0E258(&qword_27F96E190, sub_258A0E2A0, MEMORY[0x277CE11A8]);
    sub_258A0E258(&qword_27F96CE48, sub_2589D27E4, MEMORY[0x277CDFB18]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96E1B0);
    }
  }
}

void sub_258A0ED00(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

char *sub_258A0EE38(void *a1, uint64_t a2, double a3)
{
  v4 = v3;
  v74[1] = *MEMORY[0x277D85DE8];
  v8 = sub_258AFFE44();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v66 - v14;
  MEMORY[0x28223BE20](v13);
  v68 = &v66 - v16;
  *&v4[OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_framerateDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_displayLink] = 0;
  *&v4[OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_displayLinkTarget] = 0;
  v17 = &v4[OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_displayLinkWillRenderFrame];
  *v17 = 0;
  v17[1] = 0;
  v4[OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_commandQueueIsEmpty] = 1;
  *&v4[OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_metalArchive] = 0;
  v18 = OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_layer;
  *&v4[OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_layer] = 0;
  v19 = OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_sampleCount;
  *&v4[OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_sampleCount] = 1;
  v20 = OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_superSampling;
  *&v4[OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_superSampling] = 0x3FF0000000000000;
  *&v4[OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_currentTime] = 0;
  *&v4[OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_timeDelta] = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *&v4[OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_lastDrawableSize] = _Q0;
  *&v4[v18] = a1;
  *&v4[v19] = a2;
  *&v4[v20] = a3;
  if (a1)
  {
    v26 = a1;
    v27 = [v26 device];
    if (!v27)
    {
LABEL_21:
      result = sub_258B03294();
      __break(1u);
      return result;
    }

    v28 = v27;
  }

  else
  {
    v28 = MTLCreateSystemDefaultDevice();
    if (!v28)
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  v66 = v12;
  v67 = a1;
  v69 = v8;
  v70 = v9;
  *&v4[OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_device] = v28;
  v29 = [swift_unknownObjectRetain() newCommandQueue];
  swift_unknownObjectRelease();
  if (!v29)
  {
    goto LABEL_21;
  }

  *&v4[OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_commandQueue] = v29;
  swift_unknownObjectRetain_n();
  v30 = sub_258B02AD4();
  [v29 setLabel_];
  swift_unknownObjectRelease();

  v31 = type metadata accessor for MetalRenderer();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v33 = [objc_opt_self() bundleForClass_];
  v34 = sub_258B02AD4();
  v35 = sub_258B02AD4();
  v36 = [v33 URLForResource:v34 withExtension:v35];

  if (!v36)
  {
    goto LABEL_21;
  }

  sub_258AFFE24();

  (*(v70 + 32))(v68, v15, v69);
  v37 = *&v4[OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_device];
  swift_unknownObjectRetain();
  v38 = sub_258AFFE14();
  v74[0] = 0;
  v39 = [v37 newLibraryWithURL:v38 error:v74];
  swift_unknownObjectRelease();

  v40 = v74[0];
  if (!v39)
  {
    v64 = v74[0];
    v65 = sub_258AFFDC4();

    swift_willThrow();
    goto LABEL_21;
  }

  *&v4[OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_defaultLibrary] = v39;
  v73.receiver = v4;
  v73.super_class = v31;
  swift_unknownObjectRetain();
  v41 = v40;
  v42 = objc_msgSendSuper2(&v73, sel_init);
  v43 = v67;
  if (v67)
  {
    sub_258A0F680();
    v44 = *&v42[OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_displayLink];
    if (v44)
    {
      [v44 setPaused_];
    }
  }

  v45 = sub_258B02AD4();
  v46 = sub_258B02AD4();
  v47 = [v33 pathForResource:v45 ofType:v46];

  if (v47)
  {
    sub_258B02B14();

    v48 = [objc_allocWithZone(MEMORY[0x277CD6C88]) init];
    v49 = v66;
    sub_258AFFE04();

    v50 = sub_258AFFE14();
    v51 = v69;
    v53 = v70 + 8;
    v52 = *(v70 + 8);
    v52(v49, v69);
    [v48 setUrl_];

    v54 = *&v42[OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_device];
    v74[0] = 0;
    v55 = [v54 newBinaryArchiveWithDescriptor:v48 error:v74];
    v56 = v74[0];
    if (v55)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v52(v68, v51);
      *&v42[OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_metalArchive] = v55;

      swift_unknownObjectRelease();
    }

    else
    {
      v57 = v56;
      v58 = sub_258AFFDC4();

      swift_willThrow();
      sub_258A1043C();
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_258B2BE60;
      *(v59 + 56) = MEMORY[0x277D837D0];
      *(v59 + 32) = 0xD000000000000049;
      *(v59 + 40) = 0x8000000258B36D70;
      swift_getErrorValue();
      v70 = v53;
      v60 = v71;
      v61 = v72;
      *(v59 + 88) = v72;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v59 + 64));
      (*(*(v61 - 8) + 16))(boxed_opaque_existential_1, v60, v61);
      sub_258B034F4();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v52(v68, v69);
    }
  }

  else
  {
    (*(v70 + 8))(v68, v69);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return v42;
}

void sub_258A0F680()
{
  v1 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_layer);
  if (v1)
  {
    v2 = v1;
    [v2 bounds];
    if (!CGRectIsEmpty(v12))
    {
      (*((*MEMORY[0x277D85000] & *v0) + 0x260))();
    }

    v3 = type metadata accessor for MetalRenderer.DisplayLinkTarget();
    v4 = objc_allocWithZone(v3);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v11.receiver = v4;
    v11.super_class = v3;
    v5 = objc_msgSendSuper2(&v11, sel_init);
    v6 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_displayLinkTarget);
    *(v0 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_displayLinkTarget) = v5;
    v7 = v5;

    v8 = [objc_opt_self() displayLinkWithTarget:v7 selector:sel_fireWithLink_];
    [v8 setPreferredFramesPerSecond_];
    v9 = [objc_opt_self() currentRunLoop];
    [v8 addToRunLoop:v9 forMode:*MEMORY[0x277CBE738]];

    v10 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_displayLink);
    *(v0 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_displayLink) = v8;
  }

  else
  {
    sub_258B03294();
    __break(1u);
  }
}

uint64_t sub_258A0F874(void *a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = *(result + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_displayLink);
  if (v4)
  {
    v5 = v4 == a1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v8 = result;
    v6 = *(result + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_layer);
    if (v6)
    {
      [v6 bounds];
      v11.origin.x = 0.0;
      v11.origin.y = 0.0;
      v11.size.width = 0.0;
      v11.size.height = 0.0;
      result = CGRectEqualToRect(v10, v11);
      v3 = v8;
      if (result)
      {
        goto LABEL_6;
      }

      sub_258A0FA38();
    }

    else
    {
      v7 = v4;
      [v7 setPaused_];
    }

    v3 = v8;
  }

LABEL_6:

  return MEMORY[0x2821F96F8](result, v3);
}

id sub_258A0F9F0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_258A0FA38()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_displayLinkWillRenderFrame);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_displayLinkWillRenderFrame + 8);
    v4 = *(v1 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_displayLink);
    sub_258A103FC(v2, v3);
    v5 = v4;
    v2(v4);
    sub_258A1040C(v2, v3);
  }

  v6 = *(v1 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_displayLink);
  if (!v6)
  {
    goto LABEL_19;
  }

  v7 = v6;
  [v7 targetTimestamp];
  v9 = v8;
  [v7 timestamp];
  v11 = v10;

  v12 = v9 - v11;
  *(v1 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_timeDelta) = v12;
  *(v1 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_currentTime) = *(v1 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_currentTime) + v12;
  v13 = OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_commandQueueIsEmpty;
  if ((*(v1 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_commandQueueIsEmpty) & 1) == 0)
  {
    return;
  }

  v14 = OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_layer;
  v15 = *(v1 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_layer);
  if (!v15)
  {
LABEL_8:
    v17 = OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_commandQueue;
    v18 = MEMORY[0x277D85000];
    v19 = *((*MEMORY[0x277D85000] & *v1) + 0x268);
    v20 = swift_unknownObjectRetain();
    v21 = v19(v20);
    swift_unknownObjectRelease();
    if ((v21 & 1) == 0)
    {
      return;
    }

    v22 = [*(v1 + v17) commandBuffer];
    if (v22)
    {
      v23 = v22;
      *(v1 + v13) = 0;
      v24 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_258A1041C;
      aBlock[5] = v24;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_258A10104;
      aBlock[3] = &block_descriptor_3;
      v25 = _Block_copy(aBlock);

      [v23 addCompletedHandler_];
      _Block_release(v25);
      v26 = *(v1 + v14);
      if (v26 && (v27 = [v26 nextDrawable]) != 0)
      {
        v28 = v27;
        (*((*v18 & *v1) + 0x278))([v27 texture], v23);
        swift_unknownObjectRelease();
        [v28 present];
        swift_unknownObjectRelease();
      }

      else
      {
        [v23 commit];
      }

      swift_unknownObjectRelease();
      return;
    }

    while (1)
    {
LABEL_19:
      sub_258B03294();
      __break(1u);
    }
  }

  v16 = v15;
  if ([v16 isDrawableAvailable])
  {

    goto LABEL_8;
  }

  sub_258A1043C();
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_258B2C470;
  *(v29 + 56) = MEMORY[0x277D837D0];
  *(v29 + 32) = 0xD00000000000003DLL;
  *(v29 + 40) = 0x8000000258B36C40;
  sub_258B034F4();
}

uint64_t sub_258A0FEA8(uint64_t a1, uint64_t a2)
{
  sub_258A10490(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_258B02D44();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_258B02D24();

  v7 = sub_258B02D14();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = a2;
  sub_258A8F398(0, 0, v5, &unk_258B2E3B0, v8);
}

uint64_t sub_258A0FFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_258B02D24();
  v4[7] = sub_258B02D14();
  v6 = sub_258B02CE4();

  return MEMORY[0x2822009F8](sub_258A1005C, v6, v5);
}

uint64_t sub_258A1005C()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = Strong;
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_commandQueueIsEmpty] = 1;
  }

  **(v0 + 40) = v2 == 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_258A10104(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id sub_258A102C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetalRenderer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_258A103FC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_258A1040C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_258A1043C()
{
  if (!qword_27F96E3D0)
  {
    v0 = sub_258B03424();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96E3D0);
    }
  }
}

void sub_258A10490(uint64_t a1)
{
  if (!qword_280DF8930)
  {
    sub_258B02D44();
    v1 = sub_258B030C4();
    if (!v2)
    {
      atomic_store(v1, &qword_280DF8930);
    }
  }
}

uint64_t sub_258A104E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2589EEE18;

  return sub_258A0FFC4(a1, v4, v5, v6);
}

uint64_t View.mindAccessibilityIdentifierComponents(_:components:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_258B003E4();
  sub_2589FC8C8(v4);
  v5 = sub_258B003E4();
  sub_2589FC8C8(v5);
  sub_2589FCE08();
  sub_258A10704(&qword_280DF8940, sub_2589FCE08, MEMORY[0x277D83958]);
  sub_258B02A34();

  sub_258B01DD4();
}

uint64_t sub_258A10704(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for ValenceSlider(uint64_t a1)
{
  result = qword_27F96E3E0;
  if (!qword_27F96E3E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A107C0(uint64_t a1)
{
  sub_258A11890(319, &qword_27F96E198, MEMORY[0x277D839F8], MEMORY[0x277CE11F8]);
  if (v1 <= 0x3F)
  {
    sub_258A11A34(319, &qword_27F96E3D8, type metadata accessor for ValenceSelectionPhaseSpecs, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_258A108BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  v105 = type metadata accessor for ValenceSliderCaptions(0) - 8;
  MEMORY[0x28223BE20](v105);
  v103 = (v89 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = MEMORY[0x277CDF928];
  sub_258A11778(0, &qword_27F96E440, type metadata accessor for ValenceSliderCaptions, MEMORY[0x277CDF928]);
  v107 = v5 - 8;
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v108 = v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v104 = v89 - v9;
  MEMORY[0x28223BE20](v8);
  v106 = v89 - v10;
  v11 = type metadata accessor for ValenceSelectionPhaseSpecs(0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v102 = v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v100 = v89 - v15;
  MEMORY[0x28223BE20](v14);
  v91 = v89 - v16;
  v17 = type metadata accessor for ValenceSliderStyle(0);
  MEMORY[0x28223BE20](v17);
  v19 = (v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258A116C4();
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v24 = v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A115C0(0);
  v93 = v25;
  v92 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v27 = v89 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_258A115C0;
  sub_258A11778(0, &qword_27F96E418, sub_258A115C0, MEMORY[0x277CDF688]);
  v90 = v28;
  MEMORY[0x28223BE20](v28);
  v30 = v89 - v29;
  sub_258A11534(0);
  MEMORY[0x28223BE20](v31 - 8);
  v94 = v89 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_258A11534;
  sub_258A11778(0, &qword_27F96E408, sub_258A11534, v4);
  v97 = v33 - 8;
  v34 = MEMORY[0x28223BE20](v33 - 8);
  v99 = v89 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v95 = v89 - v37;
  MEMORY[0x28223BE20](v36);
  v96 = v89 - v38;
  v39 = a1[1];
  v40 = a1[2];
  v41 = a1;
  *&v112 = *a1;
  *(&v112 + 1) = v39;
  *&v113 = v40;
  sub_258A11890(0, &qword_27F96E198, MEMORY[0x277D839F8], MEMORY[0x277CE11F8]);
  v42 = sub_258B02334();
  v112 = v110;
  *&v113 = v111;
  v110 = xmmword_258B2E3C0;
  sub_258A117DC(v42, v43, v44);
  sub_258B02264();
  v45 = sub_258B02014();
  *v19 = 0x3FB0000000000000;
  v19[1] = v45;
  v46 = *(v17 + 20);
  *(v19 + v46) = swift_getKeyPath();
  v47 = MEMORY[0x277CDF458];
  v89[0] = MEMORY[0x277CDF458];
  sub_258A11A34(0, &qword_27F96CFA8, MEMORY[0x277CDFAA0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v48 = *(v17 + 24);
  *(v19 + v48) = swift_getKeyPath();
  sub_258A11A34(0, &qword_27F96C908, MEMORY[0x277CDF3E0], v47);
  v89[1] = v49;
  swift_storeEnumTagMultiPayload();
  sub_258A11730(&qword_27F96E430, sub_258A116C4, MEMORY[0x277CDF048]);
  sub_258A11730(&qword_27F96E438, type metadata accessor for ValenceSliderStyle, &unk_258B2E314);
  sub_258B01C04();
  sub_258A11830(v19, type metadata accessor for ValenceSliderStyle);
  (*(v22 + 8))(v24, v21);
  type metadata accessor for ValenceSlider(0);
  v50 = v91;
  sub_258AC1B90(v91);
  sub_258A11830(v50, type metadata accessor for ValenceSelectionPhaseSpecs);
  LOBYTE(v41) = *(v41 + 24);
  sub_258B024F4();
  sub_258B00854();
  (*(v92 + 32))(v30, v27, v93);
  v51 = &v30[*(v90 + 36)];
  v52 = v113;
  *v51 = v112;
  *(v51 + 1) = v52;
  *(v51 + 2) = v114;
  *&v110 = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D5220);
  sub_258A11890(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  sub_2589C68A0(&unk_2869D5240);
  sub_258A118E0();
  v53 = v94;
  sub_258B01DD4();

  sub_258A11C8C(v30, &qword_27F96E418, v98, MEMORY[0x277CDF688]);
  LOBYTE(v50) = sub_258B01894();
  v54 = v100;
  sub_258AC1B90(v100);
  sub_258A11830(v54, type metadata accessor for ValenceSelectionPhaseSpecs);
  sub_258B00654();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v63 = v95;
  sub_2589AA264(v53, v95);
  v64 = v63 + *(v97 + 44);
  *v64 = v50;
  *(v64 + 8) = v56;
  *(v64 + 16) = v58;
  *(v64 + 24) = v60;
  *(v64 + 32) = v62;
  *(v64 + 40) = 0;
  v65 = v96;
  sub_2589AA2C8(v63, v96);
  KeyPath = swift_getKeyPath();
  v67 = v103;
  *v103 = KeyPath;
  sub_258A11A34(0, &qword_27F96D7B8, type metadata accessor for ValenceSelectionPhaseSpecs, v89[0]);
  swift_storeEnumTagMultiPayload();
  v68 = v105;
  v69 = *(v105 + 28);
  *(v67 + v69) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *(v67 + *(v68 + 32)) = v41;
  LOBYTE(v68) = sub_258B01864();
  v70 = v102;
  sub_258AC1B90(v102);
  sub_258A11830(v70, type metadata accessor for ValenceSelectionPhaseSpecs);
  sub_258B00654();
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v79 = v104;
  sub_258A11A98(v67, v104);
  v80 = v79 + *(v107 + 44);
  *v80 = v68;
  *(v80 + 8) = v72;
  *(v80 + 16) = v74;
  *(v80 + 24) = v76;
  *(v80 + 32) = v78;
  *(v80 + 40) = 0;
  v81 = v106;
  sub_258A11AFC(v79, v106);
  v82 = v99;
  sub_2589AA354(v65, v99);
  v83 = v108;
  sub_258A11B84(v81, v108);
  v84 = v109;
  sub_2589AA354(v82, v109);
  sub_258A11474(0);
  sub_258A11B84(v83, v84 + *(v85 + 48));
  sub_258A11C0C(v81);
  v86 = v101;
  v87 = MEMORY[0x277CDF928];
  sub_258A11C8C(v65, &qword_27F96E408, v101, MEMORY[0x277CDF928]);
  sub_258A11C0C(v83);
  return sub_258A11C8C(v82, &qword_27F96E408, v86, v87);
}

uint64_t sub_258A11398@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_258B01194();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_258A113DC(0);
  return sub_258A108BC(v2, a2 + *(v4 + 44));
}

void sub_258A113DC(uint64_t a1)
{
  if (!qword_27F96E3F0)
  {
    sub_258A11A34(255, &qword_27F96E3F8, sub_258A11474, MEMORY[0x277CE14B8]);
    v1 = sub_258B00974();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96E3F0);
    }
  }
}

void sub_258A11474(uint64_t a1)
{
  if (!qword_27F96E400)
  {
    v1 = MEMORY[0x277CDF928];
    sub_258A11778(255, &qword_27F96E408, sub_258A11534, MEMORY[0x277CDF928]);
    sub_258A11778(255, &qword_27F96E440, type metadata accessor for ValenceSliderCaptions, v1);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96E400);
    }
  }
}

void sub_258A11534(uint64_t a1)
{
  if (!qword_27F96E410)
  {
    sub_258A11778(255, &qword_27F96E418, sub_258A115C0, MEMORY[0x277CDF688]);
    sub_258B017D4();
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96E410);
    }
  }
}

void sub_258A115C0(uint64_t a1)
{
  if (!qword_27F96E420)
  {
    sub_258A116C4();
    type metadata accessor for ValenceSliderStyle(255);
    sub_258A11730(&qword_27F96E430, sub_258A116C4, MEMORY[0x277CDF048]);
    sub_258A11730(&qword_27F96E438, type metadata accessor for ValenceSliderStyle, &unk_258B2E314);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96E420);
    }
  }
}

void sub_258A116C4()
{
  if (!qword_27F96E428)
  {
    v0 = sub_258B02274();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96E428);
    }
  }
}

uint64_t sub_258A11730(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_258A11778(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_258B00B04();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_258A117DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96E448;
  if (!qword_27F96E448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E448);
  }

  return result;
}

uint64_t sub_258A11830(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_258A11890(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_258A118E0()
{
  result = qword_27F96E450;
  if (!qword_27F96E450)
  {
    sub_258A11778(255, &qword_27F96E418, sub_258A115C0, MEMORY[0x277CDF688]);
    sub_258A116C4();
    type metadata accessor for ValenceSliderStyle(255);
    sub_258A11730(&qword_27F96E430, sub_258A116C4, MEMORY[0x277CDF048]);
    sub_258A11730(&qword_27F96E438, type metadata accessor for ValenceSliderStyle, &unk_258B2E314);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E450);
  }

  return result;
}

void sub_258A11A34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_258A11A98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ValenceSliderCaptions(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A11AFC(uint64_t a1, uint64_t a2)
{
  sub_258A11778(0, &qword_27F96E440, type metadata accessor for ValenceSliderCaptions, MEMORY[0x277CDF928]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A11B84(uint64_t a1, uint64_t a2)
{
  sub_258A11778(0, &qword_27F96E440, type metadata accessor for ValenceSliderCaptions, MEMORY[0x277CDF928]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A11C0C(uint64_t a1)
{
  sub_258A11778(0, &qword_27F96E440, type metadata accessor for ValenceSliderCaptions, MEMORY[0x277CDF928]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258A11C8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_258A11778(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_258A11CE8(uint64_t a1)
{
  if (!qword_27F96E460)
  {
    sub_258A11A34(255, &qword_27F96E3F8, sub_258A11474, MEMORY[0x277CE14B8]);
    sub_258A11D7C();
    v1 = sub_258B022D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96E460);
    }
  }
}

unint64_t sub_258A11D7C()
{
  result = qword_27F96E468;
  if (!qword_27F96E468)
  {
    sub_258A11A34(255, &qword_27F96E3F8, sub_258A11474, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E468);
  }

  return result;
}

uint64_t _s19EntryMomentDataViewVMa(uint64_t a1)
{
  result = qword_27F96E470;
  if (!qword_27F96E470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A11E78(uint64_t a1)
{
  sub_258A153EC(319, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    _s5EntryVMa(319);
    if (v2 <= 0x3F)
    {
      sub_258A16A38(319, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_258A11F84()
{
  sub_258B03514();
  sub_258B02B74();
  sub_258B01934();
  sub_258B01FD4();
  sub_258B02B74();
  return sub_258B03554();
}

uint64_t sub_258A12010(uint64_t a1)
{
  sub_258B02B74();
  sub_258B01934();
  sub_258B01FD4();

  return sub_258B02B74();
}

uint64_t sub_258A12084(uint64_t a1)
{
  sub_258B03514();
  sub_258B02B74();
  sub_258B01934();
  sub_258B01FD4();
  sub_258B02B74();
  return sub_258B03554();
}

uint64_t sub_258A1210C(uint64_t *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a2[4];
  v5 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_258B03454() & 1) == 0 || (sub_258B01904() & 1) == 0 || (sub_258B01FB4() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_258B03454();
}

uint64_t sub_258A121F8()
{
  v0 = sub_258B00AA4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - v5;
  v7 = type metadata accessor for StateOfMindTimeline.Styles(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AC1060(v9);
  v10 = &v9[*(v7 + 20)];
  v17 = v1[2];
  v18 = v7;
  v17(v6, v10, v0);
  sub_258A169D8(v9, type metadata accessor for StateOfMindTimeline.Styles);
  v11 = *MEMORY[0x277CDF9D0];
  v16 = v1[13];
  v16(v4, v11, v0);
  LOBYTE(v7) = sub_258B00A94();
  v12 = v1[1];
  v12(v4, v0);
  v12(v6, v0);
  if (v7)
  {
    return 2;
  }

  sub_258AC1060(v9);
  v17(v6, &v9[*(v18 + 20)], v0);
  sub_258A169D8(v9, type metadata accessor for StateOfMindTimeline.Styles);
  v16(v4, *MEMORY[0x277CDF988], v0);
  sub_258A16A88(&qword_27F96D020, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  v14 = sub_258B02A54();
  v12(v4, v0);
  v12(v6, v0);
  return (v14 & 1) == 0;
}

uint64_t sub_258A124CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  sub_258A15A80(0);
  v39 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A15928(0);
  v36[2] = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277CE0330];
  sub_258A15E34(0, &qword_27F96E5C8, sub_258A14F70, sub_258A15A80, MEMORY[0x277CE0330]);
  v36[3] = v10;
  MEMORY[0x28223BE20](v10);
  v37 = v36 - v11;
  sub_258A15E34(0, &qword_27F96E5D0, sub_258A14FB8, sub_258A15928, v9);
  MEMORY[0x28223BE20](v12);
  v14 = v36 - v13;
  sub_258A14F70(0);
  v36[4] = v15;
  MEMORY[0x28223BE20](v15);
  v17 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A14FB8(0);
  v36[1] = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = v36 - v22;
  v24 = sub_258A121F8();
  v25 = sub_258A12C54();
  v26 = v25;
  if (v24)
  {
    if (v24 == 1)
    {
      *v8 = sub_258B011A4();
      *(v8 + 1) = 0;
      v8[16] = 0;
      sub_258A15EB8(0, &qword_27F96E5E0, sub_258A159BC, MEMORY[0x277CDF7A0], MEMORY[0x277CDF798]);
      sub_258A13888(a1, v26, &v8[*(v27 + 44)]);

      sub_258A1693C(v8, v14, sub_258A15928);
      swift_storeEnumTagMultiPayload();
      sub_258A16A88(&qword_27F96E5B0, sub_258A14FB8, MEMORY[0x277CE1138]);
      v28 = MEMORY[0x277CE1198];
      sub_258A16A88(&qword_27F96E5B8, sub_258A15928, MEMORY[0x277CE1198]);
      sub_258B012A4();
      sub_258A1693C(v17, v37, sub_258A14F70);
      swift_storeEnumTagMultiPayload();
      sub_258A15D54();
      sub_258A16A88(&qword_27F96E5C0, sub_258A15A80, v28);
      sub_258B012A4();
      sub_258A169D8(v17, sub_258A14F70);
      v29 = sub_258A15928;
      v30 = v8;
    }

    else
    {
      *v5 = sub_258B011A4();
      *(v5 + 1) = 0;
      v5[16] = 0;
      sub_258A15EB8(0, &qword_27F96E5D8, sub_258A15B14, MEMORY[0x277CDF7A0], MEMORY[0x277CDF798]);
      sub_258A13AA4(a1, v26, &v5[*(v32 + 44)]);

      sub_258A1693C(v5, v37, sub_258A15A80);
      swift_storeEnumTagMultiPayload();
      sub_258A15D54();
      sub_258A16A88(&qword_27F96E5C0, sub_258A15A80, MEMORY[0x277CE1198]);
      sub_258B012A4();
      v29 = sub_258A15A80;
      v30 = v5;
    }
  }

  else
  {
    if (*(v25 + 2) < 2uLL)
    {
      v31 = sub_258B01004();
    }

    else
    {
      v31 = sub_258B00FF4();
    }

    *v21 = v31;
    *(v21 + 1) = 0;
    v21[16] = 0;
    sub_258A15EB8(0, &qword_27F96E5E8, sub_258A1504C, MEMORY[0x277CDF740], MEMORY[0x277CDF738]);
    sub_258A133F4(a1, v26, &v21[*(v33 + 44)]);

    sub_258A15F28(v21, v23, sub_258A14FB8);
    sub_258A1693C(v23, v14, sub_258A14FB8);
    swift_storeEnumTagMultiPayload();
    sub_258A16A88(&qword_27F96E5B0, sub_258A14FB8, MEMORY[0x277CE1138]);
    v34 = MEMORY[0x277CE1198];
    sub_258A16A88(&qword_27F96E5B8, sub_258A15928, MEMORY[0x277CE1198]);
    sub_258B012A4();
    sub_258A1693C(v17, v37, sub_258A14F70);
    swift_storeEnumTagMultiPayload();
    sub_258A15D54();
    sub_258A16A88(&qword_27F96E5C0, sub_258A15A80, v34);
    sub_258B012A4();
    sub_258A169D8(v17, sub_258A14F70);
    v29 = sub_258A14FB8;
    v30 = v23;
  }

  return sub_258A169D8(v30, v29);
}

char *sub_258A12C54()
{
  v62 = sub_258B019F4();
  v65 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v2 = &v58[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_258A169A4(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v58[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_258B01A54();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v58[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for StateOfMindTimeline.Styles(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v58[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_258AC1060(v12);
  v61 = type metadata accessor for StateOfMindTimeline.Styles;
  sub_258A169D8(v12, type metadata accessor for StateOfMindTimeline.Styles);
  (*(v7 + 104))(v9, *MEMORY[0x277CE0A68], v6);
  v13 = *MEMORY[0x277CE09A0];
  v14 = sub_258B01954();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v5, v13, v14);
  (*(v15 + 56))(v5, 0, 1, v14);
  sub_258B01994();
  sub_258B019B4();
  sub_258A169D8(v5, sub_258A169A4);
  (*(v7 + 8))(v9, v6);
  v16 = *MEMORY[0x277CE0A10];
  v17 = v65;
  v60 = *(v65 + 104);
  v59 = v16;
  v18 = v62;
  v60(v2, v16, v62);
  v64 = sub_258B01A14();

  v19 = *(v17 + 8);
  v19(v2, v18);
  sub_258AC1060(v12);
  v20 = v61;
  sub_258A169D8(v12, v61);
  sub_258B018F4();
  v21 = v16;
  v22 = v60;
  v60(v2, v21, v18);
  v63 = sub_258B01A14();

  v19(v2, v18);
  sub_258AC1060(v12);
  sub_258A169D8(v12, v20);
  sub_258B018F4();
  v22(v2, v59, v18);
  v65 = sub_258B01A14();

  v19(v2, v18);
  sub_258AC1060(v12);
  v23 = v20;
  sub_258A169D8(v12, v20);
  v24 = objc_opt_self();
  v25 = [v24 labelColor];
  v26 = sub_258B01F94();
  sub_258AC1060(v12);
  sub_258A169D8(v12, v23);
  v27 = [v24 labelColor];
  v28 = sub_258B01F94();
  sub_258AC1060(v12);
  sub_258A169D8(v12, v23);
  v29 = [v24 secondaryLabelColor];
  v30 = sub_258B01F94();
  v66 = MEMORY[0x277D84F90];
  v31 = v0 + *(_s19EntryMomentDataViewVMa(0) + 20);
  v32 = _s5EntryVMa(0);
  v33 = (v31 + v32[6]);
  v35 = *v33;
  v34 = v33[1];
  v36 = HIBYTE(v34) & 0xF;
  if ((v34 & 0x2000000000000000) == 0)
  {
    v36 = v35 & 0xFFFFFFFFFFFFLL;
  }

  if (v36)
  {
    sub_258A16A38(0, &qword_27F96E608, &_s19EntryMomentDataViewV15ItemDescriptionVN, MEMORY[0x277D84560]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_258B2BE60;
    *(inited + 32) = v35;
    *(inited + 40) = v34;
    v38 = v63;
    *(inited + 48) = v64;
    *(inited + 56) = v26;
    *(inited + 64) = 0x736C6562614CLL;
    *(inited + 72) = 0xE600000000000000;
    v39 = (v31 + v32[5]);
    v40 = v39[1];
    *(inited + 80) = *v39;
    *(inited + 88) = v40;
    *(inited + 96) = v38;
    *(inited + 104) = v28;
    *(inited + 112) = 0x746E656D6F4DLL;
    *(inited + 120) = 0xE600000000000000;
    sub_258B003E4();

    sub_258B003E4();

    sub_2589FC9BC(inited);
  }

  else
  {
    v62 = v30;
    v41 = (v31 + v32[5]);
    v43 = *v41;
    v42 = v41[1];
    v44 = v64;

    sub_258B003E4();
    v45 = sub_258A75498(0, 1, 1, MEMORY[0x277D84F90]);
    v47 = *(v45 + 2);
    v46 = *(v45 + 3);
    if (v47 >= v46 >> 1)
    {
      v45 = sub_258A75498((v46 > 1), v47 + 1, 1, v45);
    }

    *(v45 + 2) = v47 + 1;
    v48 = &v45[48 * v47];
    *(v48 + 4) = v43;
    *(v48 + 5) = v42;
    *(v48 + 6) = v44;
    *(v48 + 7) = v26;
    *(v48 + 8) = 0x746E656D6F4DLL;
    *(v48 + 9) = 0xE600000000000000;
    v66 = v45;
    v30 = v62;
  }

  v49 = (v31 + v32[7]);
  v51 = *v49;
  v50 = v49[1];
  v52 = HIBYTE(v50) & 0xF;
  if ((v50 & 0x2000000000000000) == 0)
  {
    v52 = v51 & 0xFFFFFFFFFFFFLL;
  }

  if (v52)
  {
    v53 = v66;
    sub_258B003E4();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v53 = sub_258A75498(0, *(v53 + 2) + 1, 1, v53);
    }

    v55 = *(v53 + 2);
    v54 = *(v53 + 3);
    if (v55 >= v54 >> 1)
    {
      v53 = sub_258A75498((v54 > 1), v55 + 1, 1, v53);
    }

    *(v53 + 2) = v55 + 1;
    v56 = &v53[48 * v55];
    *(v56 + 4) = v51;
    *(v56 + 5) = v50;
    *(v56 + 6) = v65;
    *(v56 + 7) = v30;
    *(v56 + 8) = 0xD000000000000011;
    *(v56 + 9) = 0x8000000258B36660;
  }

  else
  {

    return v66;
  }

  return v53;
}

uint64_t sub_258A133F4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_258A151D8(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - v10;
  v12 = type metadata accessor for StateOfMindTimeline.Styles(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A150E4(0);
  v16 = v15 - 8;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v31 - v20;
  sub_258A136F4();
  v22 = sub_258B018C4();
  sub_258AC1060(v14);
  sub_258A169D8(v14, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B00654();
  v23 = &v21[*(v16 + 44)];
  *v23 = v22;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  *v11 = sub_258B011A4();
  *(v11 + 1) = 0;
  v11[16] = 0;
  sub_258A15EB8(0, &qword_27F96E5F0, sub_258A1526C, MEMORY[0x277CDF7A0], MEMORY[0x277CDF798]);
  sub_258A14190(a2, a1, &v11[*(v28 + 44)]);
  sub_258A1693C(v21, v19, sub_258A150E4);
  sub_258A1693C(v11, v9, sub_258A151D8);
  sub_258A1693C(v19, a3, sub_258A150E4);
  sub_258A152A8(0, &qword_27F96E4A8, sub_258A150E4, sub_258A151D8);
  sub_258A1693C(v9, a3 + *(v29 + 48), sub_258A151D8);
  sub_258A169D8(v11, sub_258A151D8);
  sub_258A169D8(v21, sub_258A150E4);
  sub_258A169D8(v9, sub_258A151D8);
  return sub_258A169D8(v19, sub_258A150E4);
}

uint64_t sub_258A136F4()
{
  v1 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - v5;
  v7 = _s19EntryMomentDataViewVMa(0);
  v8 = v0 + *(v7 + 20);
  v9 = *(v8 + *(_s5EntryVMa(0) + 36));
  v13 = 5;
  StateOfMindVisualization.ValenceImageProvider.init(valence:imageScale:)(&v13, &v14, v9);
  v12 = v14;
  v10 = v15;
  sub_258AC1060(v6);
  sub_258A169D8(v6, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258AC1060(v4);
  sub_258A169D8(v4, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B024F4();
  sub_258B00854();
  v14 = v12;
  v15 = v10;
  sub_2589D6ECC(*(v0 + *(v7 + 24)), 0x7A696C6175736956, 0xED00006E6F697461);
  return sub_258A16014(&v14);
}

uint64_t sub_258A13888@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_258A151D8(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  sub_258A15164(0, &qword_27F96D108, &qword_27F96D110, &type metadata for StateOfMindVisualization.ValenceImage, MEMORY[0x277CDF688]);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v21 - v16;
  sub_258A136F4();
  *v11 = sub_258B011A4();
  *(v11 + 1) = 0;
  v11[16] = 0;
  sub_258A15EB8(0, &qword_27F96E5F0, sub_258A1526C, MEMORY[0x277CDF7A0], MEMORY[0x277CDF798]);
  sub_258A14190(a2, a1, &v11[*(v18 + 44)]);
  sub_258A16088(v17, v15);
  sub_258A1693C(v11, v9, sub_258A151D8);
  sub_258A16088(v15, a3);
  sub_258A159F0(0);
  sub_258A1693C(v9, a3 + *(v19 + 48), sub_258A151D8);
  sub_258A169D8(v11, sub_258A151D8);
  sub_258A1610C(v17);
  sub_258A169D8(v9, sub_258A151D8);
  return sub_258A1610C(v15);
}

uint64_t sub_258A13AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36[1] = a2;
  v39 = a3;
  v5 = _s19EntryMomentDataViewVMa(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_258A15600(0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v38 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v36 - v11;
  sub_258A155A0(0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v37 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = v36 - v16;
  sub_258A15164(0, &qword_27F96D108, &qword_27F96D110, &type metadata for StateOfMindVisualization.ValenceImage, MEMORY[0x277CDF688]);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = v36 - v22;
  sub_258A136F4();
  sub_258A13F50(v17);
  *v12 = sub_258B011A4();
  *(v12 + 1) = 0;
  v12[16] = 0;
  sub_258A15EB8(0, &qword_27F96E600, sub_258A156A8, MEMORY[0x277CDF7A0], MEMORY[0x277CDF798]);
  v36[3] = *(v24 + 44);
  v40 = a2;
  v36[2] = swift_getKeyPath();
  sub_258A1693C(a1, v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), _s19EntryMomentDataViewVMa);
  v25 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v26 = swift_allocObject();
  sub_258A15F28(v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, _s19EntryMomentDataViewVMa);
  sub_258A16A38(0, &qword_27F96E520, &_s19EntryMomentDataViewV15ItemDescriptionVN, MEMORY[0x277D83940]);
  sub_258A15164(0, &qword_27F96E4F0, &qword_27F96D1F8, MEMORY[0x277CE0BD8], MEMORY[0x277CDFC50]);
  v27 = sub_258A15788();
  sub_258A15804(v27, v28, v29);
  sub_258A15858();
  sub_258B003E4();
  sub_258B023B4();
  sub_258A16088(v23, v21);
  v30 = v37;
  sub_258A1693C(v17, v37, sub_258A155A0);
  v31 = v38;
  sub_258A1693C(v12, v38, sub_258A15600);
  v32 = v39;
  sub_258A16088(v21, v39);
  sub_258A15B48(0);
  v34 = v33;
  sub_258A1693C(v30, v32 + *(v33 + 48), sub_258A155A0);
  sub_258A1693C(v31, v32 + *(v34 + 64), sub_258A15600);
  sub_258A169D8(v12, sub_258A15600);
  sub_258A169D8(v17, sub_258A155A0);
  sub_258A1610C(v23);
  sub_258A169D8(v31, sub_258A15600);
  sub_258A169D8(v30, sub_258A155A0);
  return sub_258A1610C(v21);
}