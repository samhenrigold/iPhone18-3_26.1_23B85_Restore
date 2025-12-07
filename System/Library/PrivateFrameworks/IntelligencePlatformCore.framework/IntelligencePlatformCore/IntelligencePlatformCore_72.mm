uint64_t sub_1C4ACBDF0()
{
  sub_1C43FBCD4();

  sub_1C43FC1B0();

  return v0();
}

uint64_t sub_1C4ACBE50()
{
  sub_1C43FBCD4();

  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C4ACBEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a3;
  v7 = sub_1C456902C(&unk_1EC0C6060, &qword_1C4F4E140);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for Source(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v19 = *(a2 + 16);
  sub_1C443113C(a4, &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v10, a1, v7);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = (v13 + *(v8 + 80) + v14) & ~*(v8 + 80);
  v16 = swift_allocObject();
  v17 = v20;
  *(v16 + 16) = a2;
  *(v16 + 24) = v17;
  sub_1C44760B0(&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v14);
  (*(v8 + 32))(v16 + v15, v10, v7);

  sub_1C4EFC778();
}

uint64_t sub_1C4ACC0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = *(type metadata accessor for Source(0) - 8);
  v4[8] = v5;
  v4[9] = *(v5 + 64);
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4ACC1C4, 0, 0);
}

uint64_t sub_1C4ACC1C4()
{
  sub_1C43FEAEC();
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 32);
  *(v0 + 112) = 2;
  sub_1C4413658();
  sub_1C443113C(v5, v1);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v0 + 88) = v7;
  sub_1C442BE64();
  sub_1C44760B0(v1, v8 + v6);
  *(v7 + ((v2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8)) = v4;

  v9 = swift_task_alloc();
  *(v0 + 96) = v9;
  *v9 = v0;
  v9[1] = sub_1C4ACC2F8;
  v10 = sub_1C440F4D4(*(v0 + 40));

  return sub_1C446D32C(v10, (v0 + 112), v11, v7);
}

uint64_t sub_1C4ACC2F8()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (!v0)
  {
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C4ACC3F8()
{
  sub_1C43FBCD4();
  sub_1C456902C(&unk_1EC0C6060, &qword_1C4F4E140);
  sub_1C4F01818();

  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C4ACC470()
{
  sub_1C4404D98();
  v20 = v0;

  if (qword_1EDDFD028 != -1)
  {
    sub_1C4419274();
    swift_once();
  }

  v1 = v0[13];
  v2 = sub_1C4F00978();
  sub_1C43FCEE8(v2, qword_1EDE2DE10);
  v3 = v1;
  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CF8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[13];
    sub_1C43FD084();
    v7 = sub_1C44117BC();
    v19 = v7;
    *v1 = 136315138;
    v0[3] = v6;
    v8 = v6;
    sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
    v9 = sub_1C4F01198();
    v11 = sub_1C441D828(v9, v10, &v19);

    *(v1 + 1) = v11;
    sub_1C4402B48();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    sub_1C440962C(v7);
    sub_1C43FEA20();
    sub_1C43FE9D4();
  }

  v0[2] = v0[13];
  sub_1C456902C(&unk_1EC0C6060, &qword_1C4F4E140);
  sub_1C4F01808();

  sub_1C43FBDA0();

  return v17();
}

uint64_t sub_1C4ACC61C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[28] = a2;
  v3[29] = a3;
  v3[27] = a1;
  type metadata accessor for Configuration(0);
  v3[30] = swift_task_alloc();
  type metadata accessor for Source(0);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v4 = swift_task_alloc();
  v3[34] = v4;
  *v4 = v3;
  v4[1] = sub_1C4ACC748;

  return sub_1C46BC754();
}

uint64_t sub_1C4ACC748()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 280) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C4ACC840()
{
  v38 = v0;
  if (!*(v0 + 200))
  {
    sub_1C446F170(v0 + 176, &qword_1EC0C2ED0, qword_1C4F1E888);
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v4 = sub_1C4F00978();
    v5 = sub_1C442B738(v4, qword_1EDE2DE10);
    sub_1C4413658();
    v6 = sub_1C43FBC98();
    sub_1C443113C(v6, v7);
    v8 = sub_1C4F00968();
    v9 = sub_1C4F01CF8();
    v10 = sub_1C4402B64(v9);
    v11 = *(v0 + 264);
    if (v10)
    {
      v12 = *(v0 + 248);
      sub_1C43FD084();
      v13 = sub_1C44117BC();
      *v37 = v13;
      *v5 = 136315138;
      sub_1C442BE64();
      sub_1C44760B0(v11, v12);
      v14 = *v12;
      v15 = v12[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C440FA8C();
      sub_1C4454270();
      v16 = sub_1C441D828(v14, v15, v37);

      *(v5 + 4) = v16;
      sub_1C4402B48();
      _os_log_impl(v17, v18, v19, v20, v21, 0xCu);
      sub_1C440962C(v13);
      sub_1C43FEA20();
      sub_1C43FE9D4();
    }

    else
    {

      sub_1C440FA8C();
      sub_1C4454270();
    }

    sub_1C4F01948();
    sub_1C443E3B4();

    sub_1C444B24C();
LABEL_16:
    sub_1C4410B00();

    __asm { BRAA            X2, X16 }
  }

  sub_1C441D670((v0 + 176), v0 + 136);
  if (qword_1EDDF7BB0 != -1)
  {
    sub_1C440D748(&qword_1EDDF7BB0);
  }

  v1 = *(v0 + 280);
  v2 = qword_1EDE2DA48;
  v3 = *&qword_1EDE2DA38;
  *(v0 + 16) = xmmword_1EDE2DA28;
  *(v0 + 32) = v3;
  *(v0 + 48) = v2;
  sub_1C446ABD0(0);
  if (v1)
  {
    sub_1C445C1D0();

    sub_1C43FF4D8();
    goto LABEL_16;
  }

  sub_1C440F1BC();
  sub_1C448B734();

  v37[0] = 2;
  sub_1C4AC3480(v37);
  sub_1C4409678((v0 + 136), *(v0 + 160));
  v22 = sub_1C4406834();
  v23(v22);
  if (qword_1EDDF7B58 != -1)
  {
    swift_once();
  }

  v24 = unk_1EDE2D948;
  *(v0 + 56) = xmmword_1EDE2D938;
  *(v0 + 72) = v24;
  *(v0 + 88) = qword_1EDE2D958;
  sub_1C4409678((v0 + 136), *(v0 + 160));
  sub_1C4406834();
  v25 = sub_1C4F02858();
  v27 = v26;
  v28 = sub_1C446ABD0(0);
  sub_1C448DA58(v25, v27, v28, 0, 0);

  sub_1C4409678((v0 + 136), *(v0 + 160));
  v31 = swift_task_alloc();
  *(v0 + 288) = v31;
  *v31 = v0;
  v31[1] = sub_1C4ACCC3C;
  sub_1C4414E5C(*(v0 + 216));
  sub_1C4410B00();

  return sub_1C448BF44(v32, v33, v34);
}

uint64_t sub_1C4ACCC3C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 296) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C4ACCD34()
{
  if (qword_1EDDF7BA0 != -1)
  {
    sub_1C442539C(&qword_1EDDF7BA0);
  }

  v1 = *(v0 + 296);
  v2 = *algn_1EDE2DA10;
  *(v0 + 96) = xmmword_1EDE2DA00;
  *(v0 + 112) = v2;
  *(v0 + 128) = qword_1EDE2DA20;
  sub_1C446ABD0(0);
  if (!v1)
  {
    sub_1C440F1BC();
    sub_1C448B734();
    v3 = *(v0 + 256);
    v5 = *(v0 + 232);
    v4 = *(v0 + 240);
    v6 = *(v0 + 224);

    sub_1C440B110();
    sub_1C443113C(v5 + v7, v4);
    sub_1C4413658();
    sub_1C443113C(v6, v3);
    type metadata accessor for RegisteredViewsGenerationDeltaPhase(0);
    sub_1C43FD23C();
    swift_allocObject();
    *(v0 + 304) = sub_1C4AA81FC(v4, v3);
    v8 = sub_1C4852348();
    v10 = v9;
    v11 = sub_1C446ABD0(0);
    sub_1C448DA58(v8, v10, v11, 0, 0);

    sub_1C4408F38(&unk_1C4F4E170);
    v14 = swift_task_alloc();
    *(v0 + 312) = v14;
    *v14 = v0;
    v14[1] = sub_1C4ACCF74;
    sub_1C440F4D4(*(v0 + 216));
    sub_1C4410B00();

    __asm { BR              X1 }
  }

  sub_1C445C1D0();

  sub_1C43FF4D8();
  sub_1C4410B00();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_1C4ACCF74()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 320) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C4ACD06C()
{
  sub_1C43FEAEC();
  v1 = *(v0 + 320);
  sub_1C446ABD0(0);
  if (v1)
  {

    sub_1C445C1D0();

    v2 = sub_1C43FF4D8();
  }

  else
  {
    sub_1C440F1BC();
    sub_1C448B734();

    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v5 = sub_1C4F00978();
    sub_1C43FCEE8(v5, qword_1EDE2DE10);
    v6 = sub_1C4F00968();
    v7 = sub_1C4F01CF8();
    if (sub_1C4402B64(v7))
    {
      *sub_1C43FCED0() = 0;
      sub_1C4402B48();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
      sub_1C43FE9D4();
    }

    sub_1C4F01948();

    sub_1C440962C((v0 + 136));
    sub_1C443E3B4();

    v2 = sub_1C444B24C();
  }

  return v3(v2);
}

uint64_t sub_1C4ACD1F0()
{
  sub_1C43FCF70();
  sub_1C443E3B4();

  v0 = sub_1C4409E50();

  return v1(v0);
}

uint64_t sub_1C4ACD268()
{
  sub_1C43FCF70();
  sub_1C440962C((v0 + 136));
  sub_1C443E3B4();

  v1 = sub_1C4409E50();

  return v2(v1);
}

uint64_t sub_1C4ACD2E8()
{
  sub_1C43FCF70();

  sub_1C440962C((v0 + 136));
  sub_1C443E3B4();

  v1 = sub_1C4409E50();

  return v2(v1);
}

uint64_t type metadata accessor for Pipeline(uint64_t a1)
{
  result = qword_1EDDF0A98;
  if (!qword_1EDDF0A98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4ACD3C4(uint64_t a1)
{
  result = type metadata accessor for Configuration(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PhaseStores(319);
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C4ACD4EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C43FE424(a1, a2, sub_1C44019F8, type metadata accessor for GraphDatabase, sub_1C4851D4C, sub_1C4660690);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C4ACD568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C43FE424(a1, a2, sub_1C44019F8, type metadata accessor for BehaviorDatabase, sub_1C45EE02C, sub_1C4660C4C);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C4ACD5E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C43FE424(a1, a2, sub_1C44019F8, type metadata accessor for GlobalKnowledgeDatabase, GlobalKnowledgeDatabase.init(config:), sub_1C4660E9C);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C4ACD660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C4415624(a1, a2, sub_1C44019F8, type metadata accessor for OntologyDatabase, sub_1C44F7E2C, sub_1C44F7DB8);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C4ACD6DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C43FE424(a1, a2, sub_1C44019F8, type metadata accessor for EventLogDatabase, EventLogDatabase.init(config:), sub_1C4661EC4);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C4ACD758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C4415624(a1, a2, sub_1C44019F8, type metadata accessor for ViewGeneration.ViewGenerators, sub_1C4C891D4, sub_1C4662500);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C4ACD7D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C43FE424(a1, a2, sub_1C44019F8, _s19SyncDeviceRetrieverCMa, sub_1C4CEA5EC, sub_1C4662774);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C4ACD850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C43FE424(a1, a2, sub_1C44019F8, type metadata accessor for ViewUpdate.FrontEventQueue, sub_1C4CE79AC, sub_1C466279C);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C4ACD8CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C4AC06D0(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C4ACD8F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C43FE424(a1, a2, sub_1C44019F8, type metadata accessor for QIDDatabase, sub_1C4AD9D08, sub_1C466283C);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

unint64_t sub_1C4ACD9E4()
{
  result = qword_1EDDF7ED8[0];
  if (!qword_1EDDF7ED8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDF7ED8);
  }

  return result;
}

uint64_t sub_1C4ACDB6C()
{
  sub_1C43FBCD4();
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  sub_1C43FC688(v1);
  v3 = sub_1C43FBC98();

  return sub_1C4AC56A0(v3, v4);
}

uint64_t sub_1C4ACDBF4()
{
  sub_1C43FBCD4();
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  sub_1C43FC688(v1);
  v3 = sub_1C43FBC98();

  return sub_1C4AC9DAC(v3, v4);
}

uint64_t sub_1C4ACDD30()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v0 = type metadata accessor for Source(0);
  sub_1C43FCF7C(v0);
  v1 = sub_1C456902C(&unk_1EC0C6060, &qword_1C4F4E140);
  sub_1C43FBD18(v1);
  v2 = swift_task_alloc();
  v3 = sub_1C43FC218(v2);
  *v3 = v4;
  v3[1] = sub_1C442E8C4;
  sub_1C4426C44();

  return sub_1C4ACC0FC(v5, v6, v7, v8);
}

uint64_t sub_1C4ACDE60()
{
  sub_1C43FCF70();
  v2 = sub_1C4403FC0();
  v3 = type metadata accessor for Source(v2);
  sub_1C43FCF7C(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = *(v1 + ((*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  v9 = sub_1C43FC218(v8);
  *v9 = v10;
  v9[1] = sub_1C4ACDF54;

  return sub_1C4ACC61C(v0, v1 + v5, v7);
}

uint64_t sub_1C4ACDF54()
{
  sub_1C43FBCD4();
  v2 = v1;
  sub_1C43FBDE4();
  v3 = *v0;
  sub_1C43FBDAC();
  *v4 = v3;

  sub_1C43FBCF0();

  return v5(v2);
}

uint64_t sub_1C4ACE03C()
{
  v0 = type metadata accessor for Configuration(0);
  sub_1C43FBD18(v0);

  return sub_1C4AC2158();
}

uint64_t sub_1C4ACE0A8()
{
}

uint64_t sub_1C4ACE0C0@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v6 = MEMORY[0x1EEE9AC00](a1);
  (*(v8 + 16))(&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1, v6);
  if (swift_dynamicCast())
  {
    v9 = 0;
    v10 = 2;
    result = 3;
  }

  else
  {
    result = sub_1C4F02A38();
    v10 = 1;
  }

  *a3 = result;
  *(a3 + 8) = v9;
  *(a3 + 16) = v10;
  return result;
}

uint64_t PipelineError.description.getter()
{
  v1 = *v0;
  if (!*(v0 + 16))
  {
    v9 = 0;
    sub_1C4F02248();
    MEMORY[0x1C6940010](0xD000000000000037, 0x80000001C4FAFFF0);
    v3 = 0xE700000000000000;
    v4 = 0x6E776F6E6B6E75;
    switch(v1)
    {
      case 1:
        v3 = 0xE400000000000000;
        v4 = 1819047270;
        break;
      case 2:
        v3 = 0xE500000000000000;
        v4 = 0x61746C6564;
        break;
      case 3:
        v3 = 0xEA0000000000676ELL;
        v4 = 0x69686374614D6F74;
        break;
      default:
        break;
    }

    MEMORY[0x1C6940010](v4, v3);

    return v9;
  }

  if (*(v0 + 16) == 1)
  {
    v2 = v0[1];
    sub_1C4F02248();

    v9 = 0xD000000000000015;
    MEMORY[0x1C6940010](v1, v2);
    return v9;
  }

  result = 0x206E776F6E6B6E55;
  switch(v1)
  {
    case 1:
      sub_1C441A30C();
      result = v6 + 31;
      break;
    case 2:
      sub_1C441A30C();
      result = v7 + 18;
      break;
    case 3:
      sub_1C441A30C();
      result = v8 + 30;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t PipelineError.errorCode.getter()
{
  if (!*(v0 + 16))
  {
    return 2;
  }

  if (*(v0 + 16) == 1)
  {
    return 4;
  }

  return qword_1C4F4E2E8[*v0];
}

uint64_t PipelineError.errorUserInfo.getter()
{
  sub_1C456902C(&qword_1EC0B9270, &unk_1C4F32030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = sub_1C4F01138();
  *(inited + 40) = v1;
  v2 = PipelineError.description.getter();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v2;
  *(inited + 56) = v3;
  return sub_1C4F00F28();
}

uint64_t sub_1C4ACE4AC(uint64_t a1)
{
  v2 = sub_1C4ACE580();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1C4ACE4E8(uint64_t a1)
{
  v2 = sub_1C4ACE580();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1C4ACE554(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

unint64_t sub_1C4ACE580()
{
  result = qword_1EC0C2EF0;
  if (!qword_1EC0C2EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2EF0);
  }

  return result;
}

uint64_t PipelinePhase.init(stores:phaseSource:sourceIngestor:linker:fusion:pipelineType:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v14 = a3[3];
  v15 = a3[4];
  sub_1C4418280(a3, v14);
  sub_1C4418B94();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v18 = sub_1C443E2C0(v17);
  v19(v18);
  v20 = sub_1C4487AD8(a1, a2, v7, a4, a5, a6, v6, v14, v15);
  sub_1C440962C(a3);
  return v20;
}

uint64_t sub_1C4ACF6F8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_source;
  swift_beginAccess();
  sub_1C46CBA70(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1C4ACF7B8()
{
  v1 = type metadata accessor for Source(0);
  v2 = sub_1C43FBD18(v1);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  v5 = v4 - v3;
  v6 = 0xE700000000000000;
  v7 = 0x6E776F6E6B6E75;
  switch(*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_pipelineType))
  {
    case 1:

      goto LABEL_6;
    case 2:
      v6 = 0xE500000000000000;
      v7 = 0x61746C6564;
      break;
    case 3:
      v6 = 0xEA0000000000676ELL;
      v7 = sub_1C44133C0();
      break;
    default:
      break;
  }

  v8 = sub_1C441DE10(v7, v6);

  if (v8)
  {
LABEL_6:
    type metadata accessor for PhaseStores(0);
    v10 = OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_source;
    sub_1C440D164(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_source, v13);
    sub_1C44078C4();
    sub_1C448CFCC(v0 + v10, v5, v11);
    sub_1C4490D2C();
    sub_1C442D1D0();
    return sub_1C447EAE0(v5, v12);
  }

  return result;
}

uint64_t sub_1C4ACF908()
{
  sub_1C440962C((v1 + 56));
  v4 = *(v1 + 160);
  sub_1C440CD48();
  v5 = sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if (!sub_1C441D358(v5, v6, v5, &type metadata for PhaseSignal))
  {

    sub_1C43FBDA0();
    goto LABEL_20;
  }

  if (!*(v0 + 80))
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v17 = sub_1C441BC3C();
    sub_1C43FF4EC(v17, qword_1EDE2DE10);
    v8 = sub_1C4F00968();
    sub_1C4F01CD8();
    sub_1C44253BC();
    if (sub_1C443FF34())
    {
      sub_1C440FAA4();
      sub_1C440E550();
      sub_1C440D1D4();
      *v2 = 136315138;
      v18 = sub_1C4AD00FC();
      sub_1C4426D4C(v18, v19, v20, v21);
      sub_1C44160EC();
      *(v2 + 4) = v3;
      sub_1C4404638(&dword_1C43F8000, v22, v23, "%s caught unrecoverable error, phase was skipped");
      sub_1C440AEF4();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    goto LABEL_19;
  }

  if (*(v0 + 80) == 1)
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v7 = sub_1C441BC3C();
    sub_1C43FF4EC(v7, qword_1EDE2DE10);
    v8 = sub_1C4F00968();
    sub_1C4F01CF8();
    sub_1C44253BC();
    if (!sub_1C443FF34())
    {
      goto LABEL_19;
    }

    sub_1C440FAA4();
    sub_1C440E550();
    sub_1C440D1D4();
    *v2 = 136315138;
    v9 = sub_1C4AD00FC();
    sub_1C4426D4C(v9, v10, v11, v12);
    sub_1C44160EC();
    *(v2 + 4) = v3;
    v15 = "%s phase had no data to process";
  }

  else
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v24 = sub_1C441BC3C();
    sub_1C43FF4EC(v24, qword_1EDE2DE10);
    v8 = sub_1C4F00968();
    sub_1C4F01CF8();
    sub_1C44253BC();
    if (!sub_1C443FF34())
    {
      goto LABEL_19;
    }

    sub_1C440FAA4();
    sub_1C440E550();
    sub_1C440D1D4();
    *v2 = 136315138;
    v25 = sub_1C4AD00FC();
    sub_1C4426D4C(v25, v26, v27, v28);
    sub_1C44160EC();
    *(v2 + 4) = v3;
    v15 = "%s source is disabled due to privacy setting";
  }

  sub_1C4404638(&dword_1C43F8000, v13, v14, v15);
  sub_1C440AEF4();
  sub_1C43FBCFC();
  MEMORY[0x1C6942830]();
LABEL_19:

  sub_1C4ACF7B8();

  sub_1C43FC1B0();
LABEL_20:

  return v16();
}

uint64_t sub_1C4ACFBB4()
{
  v4 = *(v1 + 176);
  sub_1C440CD48();
  v5 = sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if (!sub_1C441D358(v5, v6, v5, &type metadata for PhaseSignal))
  {

    sub_1C43FBDA0();
    goto LABEL_20;
  }

  if (!*(v0 + 80))
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v17 = sub_1C441BC3C();
    sub_1C43FF4EC(v17, qword_1EDE2DE10);
    v8 = sub_1C4F00968();
    sub_1C4F01CD8();
    sub_1C44253BC();
    if (sub_1C443FF34())
    {
      sub_1C440FAA4();
      sub_1C440E550();
      sub_1C440D1D4();
      *v2 = 136315138;
      v18 = sub_1C4AD00FC();
      sub_1C4426D4C(v18, v19, v20, v21);
      sub_1C44160EC();
      *(v2 + 4) = v3;
      sub_1C4404638(&dword_1C43F8000, v22, v23, "%s caught unrecoverable error, phase was skipped");
      sub_1C440AEF4();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    goto LABEL_19;
  }

  if (*(v0 + 80) == 1)
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v7 = sub_1C441BC3C();
    sub_1C43FF4EC(v7, qword_1EDE2DE10);
    v8 = sub_1C4F00968();
    sub_1C4F01CF8();
    sub_1C44253BC();
    if (!sub_1C443FF34())
    {
      goto LABEL_19;
    }

    sub_1C440FAA4();
    sub_1C440E550();
    sub_1C440D1D4();
    *v2 = 136315138;
    v9 = sub_1C4AD00FC();
    sub_1C4426D4C(v9, v10, v11, v12);
    sub_1C44160EC();
    *(v2 + 4) = v3;
    v15 = "%s phase had no data to process";
  }

  else
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v24 = sub_1C441BC3C();
    sub_1C43FF4EC(v24, qword_1EDE2DE10);
    v8 = sub_1C4F00968();
    sub_1C4F01CF8();
    sub_1C44253BC();
    if (!sub_1C443FF34())
    {
      goto LABEL_19;
    }

    sub_1C440FAA4();
    sub_1C440E550();
    sub_1C440D1D4();
    *v2 = 136315138;
    v25 = sub_1C4AD00FC();
    sub_1C4426D4C(v25, v26, v27, v28);
    sub_1C44160EC();
    *(v2 + 4) = v3;
    v15 = "%s source is disabled due to privacy setting";
  }

  sub_1C4404638(&dword_1C43F8000, v13, v14, v15);
  sub_1C440AEF4();
  sub_1C43FBCFC();
  MEMORY[0x1C6942830]();
LABEL_19:

  sub_1C4ACF7B8();

  sub_1C43FC1B0();
LABEL_20:

  return v16();
}

uint64_t sub_1C4ACFE58()
{
  v4 = *(v1 + 192);
  sub_1C440CD48();
  v5 = sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if (!sub_1C441D358(v5, v6, v5, &type metadata for PhaseSignal))
  {

    sub_1C43FBDA0();
    goto LABEL_20;
  }

  if (!*(v0 + 80))
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v17 = sub_1C441BC3C();
    sub_1C43FF4EC(v17, qword_1EDE2DE10);
    v8 = sub_1C4F00968();
    sub_1C4F01CD8();
    sub_1C44253BC();
    if (sub_1C443FF34())
    {
      sub_1C440FAA4();
      sub_1C440E550();
      sub_1C440D1D4();
      *v2 = 136315138;
      v18 = sub_1C4AD00FC();
      sub_1C4426D4C(v18, v19, v20, v21);
      sub_1C44160EC();
      *(v2 + 4) = v3;
      sub_1C4404638(&dword_1C43F8000, v22, v23, "%s caught unrecoverable error, phase was skipped");
      sub_1C440AEF4();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    goto LABEL_19;
  }

  if (*(v0 + 80) == 1)
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v7 = sub_1C441BC3C();
    sub_1C43FF4EC(v7, qword_1EDE2DE10);
    v8 = sub_1C4F00968();
    sub_1C4F01CF8();
    sub_1C44253BC();
    if (!sub_1C443FF34())
    {
      goto LABEL_19;
    }

    sub_1C440FAA4();
    sub_1C440E550();
    sub_1C440D1D4();
    *v2 = 136315138;
    v9 = sub_1C4AD00FC();
    sub_1C4426D4C(v9, v10, v11, v12);
    sub_1C44160EC();
    *(v2 + 4) = v3;
    v15 = "%s phase had no data to process";
  }

  else
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v24 = sub_1C441BC3C();
    sub_1C43FF4EC(v24, qword_1EDE2DE10);
    v8 = sub_1C4F00968();
    sub_1C4F01CF8();
    sub_1C44253BC();
    if (!sub_1C443FF34())
    {
      goto LABEL_19;
    }

    sub_1C440FAA4();
    sub_1C440E550();
    sub_1C440D1D4();
    *v2 = 136315138;
    v25 = sub_1C4AD00FC();
    sub_1C4426D4C(v25, v26, v27, v28);
    sub_1C44160EC();
    *(v2 + 4) = v3;
    v15 = "%s source is disabled due to privacy setting";
  }

  sub_1C4404638(&dword_1C43F8000, v13, v14, v15);
  sub_1C440AEF4();
  sub_1C43FBCFC();
  MEMORY[0x1C6942830]();
LABEL_19:

  sub_1C4ACF7B8();

  sub_1C43FC1B0();
LABEL_20:

  return v16();
}

uint64_t sub_1C4AD00FC()
{
  v1 = v0;
  v2 = type metadata accessor for Source(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = 60;
  v10 = 0xE100000000000000;
  v8[1] = type metadata accessor for PipelinePhase(0);
  sub_1C456902C(&qword_1EC0C2F00, &qword_1C4F4E410);
  v5 = sub_1C4F01198();
  MEMORY[0x1C6940010](v5);

  MEMORY[0x1C6940010](3830560, 0xE300000000000000);
  v6 = OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_source;
  swift_beginAccess();
  sub_1C448CFCC(v1 + v6, v4, type metadata accessor for Source);
  MEMORY[0x1C6940010](*v4, v4[1]);
  sub_1C447EAE0(v4, type metadata accessor for Source);
  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return v9;
}

uint64_t sub_1C4AD0240()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for Source(0);
  v4 = sub_1C43FBD18(v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v7 = (v6 - v5);
  v14 = 60;
  v15 = 0xE100000000000000;
  v13[0] = v2;
  sub_1C456902C(&qword_1EC0C2EF8, &unk_1C4F4E400);
  v8 = sub_1C4F01198();
  MEMORY[0x1C6940010](v8);

  MEMORY[0x1C6940010](3830560, 0xE300000000000000);
  v9 = OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_source;
  sub_1C440D164(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_source, v13);
  sub_1C44078C4();
  sub_1C448CFCC(v1 + v9, v7, v10);
  MEMORY[0x1C6940010](*v7, v7[1]);
  sub_1C442D1D0();
  sub_1C447EAE0(v7, v11);
  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return v14;
}

uint64_t sub_1C4AD0370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1C4405098();
  sub_1C4412320();
  v14 = sub_1C444B260();
  sub_1C44B6A64(v14, v15, v16);
  v17 = sub_1C4404658();
  v18(v17);

  sub_1C43FBDA0();
  sub_1C43FD0C0();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C4AD043C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1C4405098();
  sub_1C4412320();
  v14 = sub_1C444B260();
  sub_1C44BD174(v14, v15, v16);
  v17 = sub_1C4404658();
  v18(v17);

  sub_1C43FBDA0();
  sub_1C43FD0C0();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C4AD0508(uint64_t a1)
{
  v2 = type metadata accessor for Source(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C448CFCC(a1, v4, type metadata accessor for Source);
  return sub_1C4ACF6F8(v4);
}

uint64_t PipelinePhase.__allocating_init(stores:phaseSource:sourceIngestor:linker:fusion:pipelineType:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v13 = swift_allocObject();
  v14 = a3[3];
  v15 = a3[4];
  sub_1C4418280(a3, v14);
  sub_1C4418B94();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v18 = sub_1C443E2C0(v17);
  v19(v18);
  v20 = sub_1C4487AD8(a1, a2, v6, a4, a5, a6, v13, v14, v15);
  sub_1C440962C(a3);
  return v20;
}

uint64_t PipelinePhase.__deallocating_deinit()
{
  PipelinePhase.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4AD071C(uint64_t a1)
{
  result = sub_1C4AD0B60(&qword_1EDDF7EC0, type metadata accessor for PipelinePhase, &protocol conformance descriptor for PipelinePhase);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for PipelinePhase(uint64_t a1)
{
  result = qword_1EDDF7EB0;
  if (!qword_1EDDF7EB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4AD07C0(uint64_t a1)
{
  result = sub_1C4AD0B60(&unk_1EDDF7EC8, type metadata accessor for PipelinePhase, &protocol conformance descriptor for PipelinePhase);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4AD0820(uint64_t a1)
{
  result = type metadata accessor for Source(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PhaseStores(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Linker(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for Fuser(319);
        if (v5 <= 0x3F)
        {
          return swift_updateClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of PipelinePhase.run()()
{
  v4 = (*(*v0 + 200) + **(*v0 + 200));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1C442E8C4;

  return v4();
}

uint64_t sub_1C4AD0B60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4AD0BA8(void *a1, int a2, char a3)
{
  v4 = v3;
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  v9 = a1[1];
  *(inited + 32) = *a1;
  *(inited + 40) = v9;
  v93 = inited;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (a3)
  {
    v10 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C449ADBC(v10);
  }

  v11 = 0;
  sub_1C446ABD0(a2 & 1);
  v22 = sub_1C448E2AC();

  if (!v22)
  {
    goto LABEL_7;
  }

  sub_1C456902C(&qword_1EC0C6370, &qword_1C4F0E1A0);
  v20 = sub_1C4F00F28();
  v23 = 0;
  v24 = v22 + 56;
  v25 = 1 << *(v22 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v22 + 56);
  v28 = (v25 + 63) >> 6;
  v74 = xmmword_1C4F0CE60;
  v71 = v28;
  v72 = v22 + 56;
  v81 = v4;
  v80 = a2;
  v73 = v22;
  if (!v27)
  {
LABEL_14:
    while (1)
    {
      v29 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v29 >= v28)
      {

        return v20;
      }

      v27 = *(v24 + 8 * v29);
      ++v23;
      if (v27)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
    swift_once();
    v12 = sub_1C4F00978();
    sub_1C442B738(v12, qword_1EDDFECB8);
    v13 = v11;
    v14 = sub_1C4F00968();
    v15 = sub_1C4F01CD8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = v11;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_1C43F8000, v14, v15, "Encountered an error while fetching for phase status %@", v16, 0xCu);
      sub_1C45B4B90(v17);
      MEMORY[0x1C6942830](v17, -1, -1);
      MEMORY[0x1C6942830](v16, -1, -1);
    }

    else
    {
    }

LABEL_7:
    sub_1C456902C(&qword_1EC0C6370, &qword_1C4F0E1A0);
    return sub_1C4F00F28();
  }

LABEL_13:
  v29 = v23;
LABEL_17:
  v77 = v20;
  v30 = v27;
  v31 = *(v22 + 48);
  v75 = v29;
  v32 = (v31 + ((v29 << 10) | (16 * __clz(__rbit64(v27)))));
  v33 = v32[1];
  v84 = *v32;
  v85 = v33;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v78 = sub_1C4F00F28();
  sub_1C456902C(&qword_1EC0C2F10, &qword_1C4F4E428);
  v34 = swift_initStackObject();
  *(v34 + 16) = v74;
  if (qword_1EDDF7B40 != -1)
  {
    swift_once();
  }

  v35 = unk_1EDE2D900;
  v36 = qword_1EDE2D908;
  v87 = sub_1C456902C(&qword_1EC0C2F18, &qword_1C4F4E430);
  *(v34 + 56) = v87;
  v37 = sub_1C4AD23DC();
  *(v34 + 64) = v37;
  v38 = swift_allocObject();
  *(v34 + 32) = v38;
  sub_1C441A320(v38);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C446F0D0(v35, v36);
  if (qword_1EDDF7AF8 != -1)
  {
    swift_once();
  }

  v76 = (v30 - 1) & v30;
  v83 = v34 + 32;
  v39 = unk_1EDE2D810;
  v40 = qword_1EDE2D818;
  *(v34 + 96) = v87;
  *(v34 + 104) = v37;
  v41 = swift_allocObject();
  *(v34 + 72) = v41;
  sub_1C441A320(v41);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C446F0D0(v39, v40);
  v42 = 0;
  v43 = 0;
  v82 = v34;
  while (1)
  {
    LODWORD(v87) = v42;
    sub_1C442E860(v83 + 40 * v43, v90);
    sub_1C4409678(v90, v91);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v45 = sub_1C4F01F48();
    v86 = *(v45 - 8);
    MEMORY[0x1EEE9AC00](v45);
    v47 = &v70 - v46;
    v48 = v85;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4ABBE20(v80 & 1, v48, v47);
    if (!v11)
    {
      break;
    }

    v11 = 0;
LABEL_34:
    sub_1C440962C(v90);
    v42 = 1;
    v43 = 1;
    if (v87)
    {
      swift_setDeallocating();
      sub_1C49E17A4();
      v69 = v77;
      swift_isUniquelyReferenced_nonNull_native();
      v89[0] = v69;
      sub_1C4661E9C();

      v20 = v89[0];
      v23 = v75;
      v27 = v76;
      v24 = v72;
      v22 = v73;
      v28 = v71;
      if (!v76)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  v49 = v86;
  v79 = 0;

  if (sub_1C44157D4(v47, 1, AssociatedTypeWitness) == 1)
  {
    (*(v49 + 8))(v47, v45);
LABEL_33:
    v11 = v79;
    goto LABEL_34;
  }

  v89[3] = AssociatedTypeWitness;
  v89[4] = swift_getAssociatedConformanceWitness();
  v89[5] = swift_getAssociatedConformanceWitness();
  v50 = sub_1C4422F90(v89);
  (*(*(AssociatedTypeWitness - 8) + 32))(v50, v47, AssociatedTypeWitness);
  sub_1C456902C(&qword_1EC0C2F20, &qword_1C4F4E438);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_33;
  }

  v51 = v88;
  v52 = v91;
  v53 = v92;
  sub_1C4409678(v90, v91);
  v54 = (*(v53 + 32))(v52, v53);
  v56 = v55;
  v57 = v78;
  swift_isUniquelyReferenced_nonNull_native();
  v89[0] = v57;
  v58 = sub_1C445FAA8(v54, v56);
  v11 = v79;
  if (__OFADD__(*(v57 + 16), (v59 & 1) == 0))
  {
    goto LABEL_42;
  }

  v60 = v58;
  v61 = v59;
  sub_1C456902C(&qword_1EC0B8570, &qword_1C4F0E320);
  if (sub_1C4F02458())
  {
    v62 = sub_1C445FAA8(v54, v56);
    if ((v61 & 1) != (v63 & 1))
    {
      goto LABEL_44;
    }

    v60 = v62;
  }

  if (v61)
  {

    v78 = v89[0];
    *(*(v89[0] + 56) + 8 * v60) = v51;
    goto LABEL_34;
  }

  v64 = v89[0];
  *(v89[0] + 8 * (v60 >> 6) + 64) |= 1 << v60;
  v65 = (v64[6] + 16 * v60);
  *v65 = v54;
  v65[1] = v56;
  *(v64[7] + 8 * v60) = v51;
  v66 = v64[2];
  v67 = __OFADD__(v66, 1);
  v68 = v66 + 1;
  if (!v67)
  {
    v78 = v64;
    v64[2] = v68;
    goto LABEL_34;
  }

  __break(1u);
LABEL_44:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

void sub_1C4AD1484()
{
  v0 = sub_1C4AD2518();
  v1 = 0xD00000000000001ALL;
  if (v0)
  {
    v2 = 0xD000000000000018;
  }

  else
  {
    v2 = 0xD00000000000001ALL;
  }

  if (v0)
  {
    v3 = "PieplineFinishedRunStats";
  }

  else
  {
    v3 = "graphConstruction";
  }

  if (sub_1C4AD2518())
  {
    v1 = 0xD000000000000018;
    v4 = "RunStatsPerPhase";
  }

  else
  {
    v4 = "PipelineUnfinishedRunStats";
  }

  v5 = sub_1C4AD2518();
  if (v5)
  {
    v6 = 0xD000000000000020;
  }

  else
  {
    v6 = 0xD000000000000022;
  }

  if (v5)
  {
    v7 = "edRunStatsPerPhase";
  }

  else
  {
    v7 = "PieplineUnfinishedRunStats";
  }

  v8 = objc_autoreleasePoolPush();
  sub_1C4AD159C(v2, v3 | 0x8000000000000000);

  sub_1C4AD159C(v1, v4 | 0x8000000000000000);

  sub_1C4AD1820(v6, v7 | 0x8000000000000000);

  objc_autoreleasePoolPop(v8);
}

uint64_t sub_1C4AD159C(uint64_t a1, unint64_t a2)
{
  sub_1C4AD21FC();
  sub_1C4F00288();
  sub_1C465E7E0();
  sub_1C4F00268();

  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v4 = sub_1C4F00978();
  sub_1C442B738(v4, qword_1EDDFECB8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v5 = sub_1C4F00968();
  v6 = sub_1C4F01CC8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315651;
    type metadata accessor for Pipeline.StatusStore(0);
    sub_1C456902C(&qword_1EC0C2F08, &qword_1C4F4E420);
    v9 = sub_1C4F01198();
    v11 = sub_1C441D828(v9, v10, &v17);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_1C441D828(a1, a2, &v17);
    *(v7 + 22) = 2081;
    sub_1C4461BB8(0, &qword_1EDDFA440, 0x1E696AEC0);
    v12 = sub_1C4F00EE8();
    v14 = v13;

    v15 = sub_1C441D828(v12, v14, &v17);

    *(v7 + 24) = v15;
    _os_log_impl(&dword_1C43F8000, v5, v6, "%s sent CA event:%s, payload:%{private}s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v8, -1, -1);
    MEMORY[0x1C6942830](v7, -1, -1);
  }

  else
  {
  }

  return 1;
}

uint64_t sub_1C4AD1820(uint64_t a1, unint64_t a2)
{
  v67 = 0xD000000000000013;
  v68 = 0x80000001C4FAFEE0;
  v70 = 0;
  v71 = 0;
  v69 = &unk_1F43DAAE0;
  v4 = 0;
  sub_1C446ABD0(0);
  sub_1C49C3968();

  LOBYTE(v5) = v65[0];
  if (LOBYTE(v65[0]) == 4)
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v6 = sub_1C4F00978();
    sub_1C442B738(v6, qword_1EDDFECB8);
    v7 = sub_1C4F00968();
    v8 = sub_1C4F01CD8();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_7;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "Pipeline type isn't available while submitting to per phase latency CA event";
    goto LABEL_6;
  }

  if (qword_1EDDF7AC0 != -1)
  {
    goto LABEL_57;
  }

LABEL_9:
  sub_1C446ABD0(0);
  if (v4)
  {

LABEL_12:
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v12 = sub_1C4F00978();
    sub_1C442B738(v12, qword_1EDDFECB8);
    v7 = sub_1C4F00968();
    v8 = sub_1C4F01CD8();
    if (!os_log_type_enabled(v7, v8))
    {
LABEL_7:

      return 0;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "SessionID isn't available while submitting to per phase latency CA event";
LABEL_6:
    _os_log_impl(&dword_1C43F8000, v7, v8, v10, v9, 2u);
    MEMORY[0x1C6942830](v9, -1, -1);
    goto LABEL_7;
  }

  sub_1C446B0A0();
  v14 = v13;

  if (!v14)
  {
    goto LABEL_12;
  }

  v15 = a1 == 0xD000000000000022 && 0x80000001C4FB0130 == a2;
  if (v15 || (sub_1C4F02938() & 1) != 0)
  {
    v4 = 0;
    v16 = 0xEA00000000002E65;
    v58 = 0x6C7070612E6D6F63;
  }

  else
  {
    v58 = 0;
    v16 = 0;
    v4 = 1;
  }

  v57 = v5;
  if (qword_1EDDF7B60 != -1)
  {
    swift_once();
  }

  v65[0] = xmmword_1EDE2D960;
  v65[1] = *algn_1EDE2D970;
  v66 = qword_1EDE2D980;
  v17 = sub_1C4AD0BA8(v65, 0, 1);
  v18 = 0;
  v19 = v17 + 64;
  v61 = v17;
  v20 = 1 << *(v17 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v5 = v21 & *(v17 + 64);
  v22 = (v20 + 63) >> 6;
  if (v4)
  {
    v23 = 0;
  }

  else
  {
    v23 = v58;
  }

  v24 = 0xE000000000000000;
  if (!v4)
  {
    v24 = v16;
  }

  v55 = v24;
  v56 = v23;
  v59 = v22;
  v60 = v17 + 64;
  if (v5)
  {
    while (1)
    {
      v25 = v18;
LABEL_38:
      v26 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v27 = v26 | (v25 << 6);
      v28 = *(v61 + 48) + 16 * v27;
      log = *v28;
      v29 = *(*(v61 + 56) + 8 * v27);
      v30 = *(v29 + 16);
      v31 = *(v28 + 8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v30)
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C445FAA8(0x6D69546573616870, 0xEE00746E65705365);
        if (v32)
        {
          if (*(v29 + 16))
          {
            sub_1C445FAA8(0xD000000000000015, 0x80000001C4FB01D0);
            if (v33)
            {

              sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_1C4F13950;
              *(inited + 32) = 0x6D614E6573616850;
              *(inited + 40) = 0xE900000000000065;
              v35 = sub_1C4F01108();

              *(inited + 48) = v35;
              strcpy((inited + 56), "phaseTimeSpent");
              *(inited + 71) = -18;
              *(inited + 72) = sub_1C4F019C8();
              *(inited + 80) = 0xD000000000000015;
              *(inited + 88) = 0x80000001C4FB01D0;
              *(inited + 96) = sub_1C4F019C8();
              *(inited + 104) = 0x496E6F6973736573;
              *(inited + 112) = 0xE900000000000064;
              *(inited + 120) = sub_1C4F01108();
              strcpy((inited + 128), "pipelineType");
              *(inited + 141) = 0;
              *(inited + 142) = -5120;
              v64[0] = 0;
              v64[1] = 0xE000000000000000;
              sub_1C448D934(v57);
              v36 = sub_1C4F01108();

              *(inited + 144) = v36;
              sub_1C4461BB8(0, qword_1EDDFCDD0, 0x1E69E58C0);
              sub_1C4F00F28();
              sub_1C4F00288();
              sub_1C4F00268();
              if (qword_1EDDFECB0 != -1)
              {
                swift_once();
              }

              v37 = sub_1C4F00978();
              sub_1C442B738(v37, qword_1EDDFECB8);
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              v38 = sub_1C4F00968();
              v4 = sub_1C4F01CC8();

              if (!os_log_type_enabled(v38, v4))
              {
                goto LABEL_52;
              }

              v53 = v4;
              v4 = swift_slowAlloc();
              v54 = swift_slowAlloc();
              v64[0] = v54;
              *v4 = 136315907;
              type metadata accessor for Pipeline.StatusStore(0);
              sub_1C456902C(&qword_1EC0C2F08, &qword_1C4F4E420);
              v39 = sub_1C4F01198();
              v41 = sub_1C441D828(v39, v40, v64);

              *(v4 + 4) = v41;
              *(v4 + 12) = 2080;
              *(v4 + 14) = sub_1C441D828(a1, a2, v64);
              *(v4 + 22) = 2080;
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              v42 = sub_1C441D828(v56, v55, v64);

              *(v4 + 24) = v42;
              *(v4 + 32) = 2081;
              v43 = sub_1C4F00EE8();
              v45 = v44;

              v46 = sub_1C441D828(v43, v45, v64);

              *(v4 + 34) = v46;
              _os_log_impl(&dword_1C43F8000, v38, v53, "%s sent CA event:%s, prefix: %s, payload:%{private}s", v4, 0x2Au);
              swift_arrayDestroy();
              MEMORY[0x1C6942830](v54, -1, -1);
              v47 = v4;
              goto LABEL_51;
            }
          }
        }
      }

      if (qword_1EDDFECB0 != -1)
      {
        swift_once();
      }

      v48 = sub_1C4F00978();
      sub_1C442B738(v48, qword_1EDDFECB8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v38 = sub_1C4F00968();
      v4 = sub_1C4F01CD8();

      if (!os_log_type_enabled(v38, v4))
      {
LABEL_52:

        goto LABEL_53;
      }

      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v64[0] = v50;
      *v49 = 136315138;
      v51 = sub_1C441D828(log, v31, v64);
      loga = v38;
      v52 = v51;

      *(v49 + 4) = v52;
      v38 = loga;
      _os_log_impl(&dword_1C43F8000, loga, v4, "Latency unavailable while submitting phase latency to CA event for phase: %s", v49, 0xCu);
      sub_1C440962C(v50);
      MEMORY[0x1C6942830](v50, -1, -1);
      v47 = v49;
LABEL_51:
      MEMORY[0x1C6942830](v47, -1, -1);
LABEL_53:

      v18 = v25;
      v22 = v59;
      v19 = v60;
      if (!v5)
      {
        goto LABEL_35;
      }
    }
  }

  while (1)
  {
LABEL_35:
    v25 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_57:
      swift_once();
      goto LABEL_9;
    }

    if (v25 >= v22)
    {
      break;
    }

    v5 = *(v19 + 8 * v25);
    ++v18;
    if (v5)
    {
      goto LABEL_38;
    }
  }

  return 1;
}

void *sub_1C4AD21FC()
{
  v1 = sub_1C4AD27B0();
  v26 = v0;
  v27 = 256;
  sub_1C47240B4(sub_1C4ABCF3C, v25, v1);

  v2 = sub_1C4BA0370();
  sub_1C456902C(&qword_1EC0C2F28, &qword_1C4F4E440);
  result = sub_1C4F02538();
  v4 = result;
  v5 = 0;
  v6 = 1 << *(v2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v2 + 64;
  v9 = v7 & *(v2 + 64);
  v10 = (v6 + 63) >> 6;
  v23 = result + 8;
  v24 = v2;
  if (v9)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_10:
      v14 = v11 | (v5 << 6);
      v15 = (*(v24 + 48) + 16 * v14);
      v16 = *v15;
      v17 = v15[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v18 = sub_1C4F01108();

      *(v23 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v19 = (v4[6] + 16 * v14);
      *v19 = v16;
      v19[1] = v17;
      *(v4[7] + 8 * v14) = v18;
      v20 = v4[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        break;
      }

      v4[2] = v22;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
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

        return v4;
      }

      v13 = *(v8 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1C4AD23DC()
{
  result = qword_1EDDF9F30;
  if (!qword_1EDDF9F30)
  {
    sub_1C4572308(&qword_1EC0C2F18, &qword_1C4F4E430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9F30);
  }

  return result;
}

uint64_t sub_1C4AD2440(uint64_t a1)
{
  if (qword_1EDDF7BB8 != -1)
  {
    swift_once();
  }

  sub_1C446ABD0(0);
  v2 = sub_1C44BAADC();
  v4 = v3;

  return (v2 > a1) & ~v4;
}

uint64_t sub_1C4AD2518()
{
  if (qword_1EDDF7BC0 != -1)
  {
    sub_1C441A340(&qword_1EDDF7BC0);
  }

  sub_1C442013C();
  if (v0)
  {

    return 0;
  }

  else
  {
    sub_1C44078DC();
    v3 = sub_1C4598F3C();

    sub_1C440B128();
    v1 = 0;
    switch(v3)
    {
      case 1:
        sub_1C4400BB0();
        break;
      case 2:

        return 1;
      case 4:
        return v1;
      default:
        break;
    }

    v4 = sub_1C4F02938();

    return v4 & 1;
  }
}

uint64_t sub_1C4AD2674()
{
  if (qword_1EDDF7BC0 != -1)
  {
    sub_1C441A340(&qword_1EDDF7BC0);
  }

  sub_1C442013C();
  if (v0)
  {

    return 0;
  }

  else
  {
    sub_1C44078DC();
    v3 = sub_1C4598F3C();

    sub_1C440B128();
    v1 = 0;
    switch(v3)
    {
      case 1:
        sub_1C4400BB0();
        break;
      case 3:

        return 1;
      case 4:
        return v1;
      default:
        break;
    }

    v4 = sub_1C4F02938();

    return v4 & 1;
  }
}

uint64_t sub_1C4AD27B0()
{
  sub_1C456902C(&qword_1EC0C2F10, &qword_1C4F4E428);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C4F17CE0;
  v54 = sub_1C456902C(&qword_1EC0C2F40, &qword_1C4F4E450);
  *(v0 + 56) = v54;
  v53 = sub_1C4AD3BEC(&qword_1EDDF9F48, &qword_1EC0C2F40, &qword_1C4F4E450);
  *(v0 + 64) = v53;
  sub_1C44006A8();
  v1 = swift_allocObject();
  *(v0 + 32) = v1;
  v1[2] = 0xD000000000000013;
  v1[3] = 0x80000001C4FAFEE0;
  v1[5] = 0;
  v1[6] = 0;
  v1[4] = &unk_1F43DAAE0;
  if (qword_1EDDF7B38 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDE2D8C0;
  v3 = *algn_1EDE2D8C8;
  v4 = qword_1EDE2D8D0;
  v5 = unk_1EDE2D8D8;
  v6 = qword_1EDE2D8E0;
  v56 = sub_1C456902C(&qword_1EC0C2F48, &qword_1C4F4E458);
  *(v0 + 96) = v56;
  v55 = sub_1C4AD3BEC(qword_1EDDF9F58, &qword_1EC0C2F48, &qword_1C4F4E458);
  *(v0 + 104) = v55;
  sub_1C44006A8();
  v7 = swift_allocObject();
  *(v0 + 72) = v7;
  v7[2] = v2;
  v7[3] = v3;
  v7[4] = v4;
  v7[5] = v5;
  v7[6] = v6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C446F0D0(v5, v6);
  if (qword_1EDDF7AC0 != -1)
  {
    swift_once();
  }

  v8 = qword_1EDE2D758;
  v9 = unk_1EDE2D760;
  v10 = qword_1EDE2D768;
  v11 = unk_1EDE2D770;
  v12 = qword_1EDE2D778;
  v13 = sub_1C456902C(&qword_1EC0C2F50, &qword_1C4F4E460);
  *(v0 + 136) = v13;
  v14 = sub_1C4AD3BEC(&qword_1EDDF9F40, &qword_1EC0C2F50, &qword_1C4F4E460);
  *(v0 + 144) = v14;
  sub_1C44006A8();
  v15 = swift_allocObject();
  *(v0 + 112) = v15;
  v15[2] = v8;
  v15[3] = v9;
  v15[4] = v10;
  v15[5] = v11;
  v15[6] = v12;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C446F0D0(v11, v12);
  if (qword_1EDDF7B28 != -1)
  {
    swift_once();
  }

  v16 = qword_1EDE2D898;
  v17 = unk_1EDE2D8A0;
  v18 = qword_1EDE2D8A8;
  v19 = unk_1EDE2D8B0;
  v20 = qword_1EDE2D8B8;
  *(v0 + 176) = sub_1C456902C(&qword_1EC0C2F58, &qword_1C4F4E468);
  *(v0 + 184) = sub_1C4AD3BEC(&qword_1EDDF9F38, &qword_1EC0C2F58, &qword_1C4F4E468);
  sub_1C44006A8();
  v21 = swift_allocObject();
  *(v0 + 152) = v21;
  v21[2] = v16;
  v21[3] = v17;
  v21[4] = v18;
  v21[5] = v19;
  v21[6] = v20;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C446F0D0(v19, v20);
  if (qword_1EDDF7BC0 != -1)
  {
    swift_once();
  }

  sub_1C4413670();
  *(v0 + 216) = sub_1C456902C(&qword_1EC0C2F60, &unk_1C4F4E470);
  *(v0 + 224) = sub_1C4AD3BEC(&qword_1EDDF9F50, &qword_1EC0C2F60, &unk_1C4F4E470);
  sub_1C44006A8();
  v22 = swift_allocObject();
  *(v0 + 192) = v22;
  sub_1C441233C(v22);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C446F0D0(v18, v19);
  if (qword_1EDDF7AC8 != -1)
  {
    swift_once();
  }

  sub_1C4413670();
  *(v0 + 256) = v56;
  *(v0 + 264) = v55;
  sub_1C44006A8();
  v23 = swift_allocObject();
  *(v0 + 232) = v23;
  sub_1C441233C(v23);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C446F0D0(v18, v19);
  if (qword_1EDDF7B58 != -1)
  {
    swift_once();
  }

  sub_1C4413670();
  *(v0 + 296) = v13;
  *(v0 + 304) = v14;
  sub_1C44006A8();
  v24 = swift_allocObject();
  *(v0 + 272) = v24;
  sub_1C441233C(v24);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C446F0D0(v18, v19);
  if (qword_1EDDF7B80 != -1)
  {
    swift_once();
  }

  v25 = xmmword_1EDE2D9A0;
  *(v0 + 336) = v54;
  *(v0 + 344) = v53;
  sub_1C44006A8();
  v26 = swift_allocObject();
  *(v0 + 312) = v26;
  sub_1C44176B0(v26);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C446F0D0(v25, *(&v25 + 1));
  if (qword_1EDDF7B98 != -1)
  {
    swift_once();
  }

  v27 = unk_1EDE2D9F0;
  v28 = qword_1EDE2D9F8;
  *(v0 + 376) = v56;
  *(v0 + 384) = v55;
  sub_1C44006A8();
  v29 = swift_allocObject();
  *(v0 + 352) = v29;
  sub_1C44176B0(v29);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C446F0D0(v27, v28);
  if (qword_1EDDF7B90 != -1)
  {
    swift_once();
  }

  v30 = qword_1EDE2D9B0;
  v31 = *algn_1EDE2D9B8;
  v33 = qword_1EDE2D9C0;
  v32 = unk_1EDE2D9C8;
  v34 = qword_1EDE2D9D0;
  *(v0 + 416) = v56;
  *(v0 + 424) = v55;
  sub_1C44006A8();
  v35 = swift_allocObject();
  *(v0 + 392) = v35;
  v35[2] = v30;
  v35[3] = v31;
  v35[4] = v33;
  v35[5] = v32;
  v35[6] = v34;
  v36 = sub_1C456902C(&qword_1EC0C2F18, &qword_1C4F4E430);
  *(v0 + 456) = v36;
  v37 = sub_1C4AD3BEC(&qword_1EDDF9F30, &qword_1EC0C2F18, &qword_1C4F4E430);
  *(v0 + 464) = v37;
  sub_1C44006A8();
  v38 = swift_allocObject();
  *(v0 + 432) = v38;
  v38[2] = 0xD000000000000010;
  v38[3] = 0x80000001C4FB0270;
  v38[5] = 0;
  v38[6] = 0;
  v38[4] = &unk_1F43DAB10;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C446F0D0(v32, v34);
  if (qword_1EDDF7AD8 != -1)
  {
    swift_once();
  }

  sub_1C442D1F4();
  *(v0 + 496) = v36;
  *(v0 + 504) = v37;
  sub_1C44006A8();
  v39 = swift_allocObject();
  *(v0 + 472) = v39;
  sub_1C4420158(v39);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44328A0();
  if (qword_1EDDF7BB0 != -1)
  {
    swift_once();
  }

  v40 = xmmword_1EDE2DA28;
  v41 = qword_1EDE2DA38;
  v42 = unk_1EDE2DA40;
  v43 = qword_1EDE2DA48;
  v44 = sub_1C456902C(&qword_1EC0C2F68, &unk_1C4F4E480);
  *(v0 + 536) = v44;
  v45 = sub_1C4AD3BEC(&qword_1EDDF9F28, &qword_1EC0C2F68, &unk_1C4F4E480);
  *(v0 + 544) = v45;
  sub_1C44006A8();
  v46 = swift_allocObject();
  *(v0 + 512) = v46;
  *(v46 + 16) = v40;
  *(v46 + 32) = v41;
  *(v46 + 40) = v42;
  *(v46 + 48) = v43;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44328A0();
  if (qword_1EDDF7BA0 != -1)
  {
    swift_once();
  }

  sub_1C442D1F4();
  *(v0 + 576) = v44;
  *(v0 + 584) = v45;
  sub_1C44006A8();
  v47 = swift_allocObject();
  *(v0 + 552) = v47;
  sub_1C4420158(v47);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44328A0();
  if (qword_1EDDF7BB8 != -1)
  {
    swift_once();
  }

  sub_1C442D1F4();
  *(v0 + 616) = v44;
  *(v0 + 624) = v45;
  sub_1C44006A8();
  v48 = swift_allocObject();
  *(v0 + 592) = v48;
  sub_1C4420158(v48);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44328A0();
  if (qword_1EDDF7B18 != -1)
  {
    swift_once();
  }

  sub_1C442D1F4();
  *(v0 + 656) = v44;
  *(v0 + 664) = v45;
  sub_1C44006A8();
  v49 = swift_allocObject();
  *(v0 + 632) = v49;
  sub_1C4420158(v49);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44328A0();
  if (qword_1EDDF7B10 != -1)
  {
    swift_once();
  }

  sub_1C442D1F4();
  *(v0 + 696) = v44;
  *(v0 + 704) = v45;
  sub_1C44006A8();
  v50 = swift_allocObject();
  *(v0 + 672) = v50;
  sub_1C4420158(v50);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44328A0();
  if (qword_1EDDF7B08 != -1)
  {
    swift_once();
  }

  sub_1C442D1F4();
  *(v0 + 736) = v44;
  *(v0 + 744) = v45;
  sub_1C44006A8();
  v51 = swift_allocObject();
  *(v0 + 712) = v51;
  sub_1C4420158(v51);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44328A0();
  return v0;
}

void sub_1C4AD3174()
{
  qword_1EDE2D8C0 = 0xD000000000000010;
  *algn_1EDE2D8C8 = 0x80000001C4FB02F0;
  sub_1C441A360(MEMORY[0x1E69E7CC0]);
}

void sub_1C4AD31A4()
{
  qword_1EDE2D758 = 0x496E6F6973736573;
  unk_1EDE2D760 = 0xE900000000000064;
  sub_1C43FDCEC(&qword_1EDE2D758);
}

void sub_1C4AD31D4()
{
  qword_1EDE2D898 = 0xD000000000000011;
  unk_1EDE2D8A0 = 0x80000001C4FB0350;
  sub_1C441A360(MEMORY[0x1E69E7CC0]);
}

void sub_1C4AD3204()
{
  *&xmmword_1EDE2DA78 = 0xD000000000000014;
  *(&xmmword_1EDE2DA78 + 1) = 0x80000001C4FB03E0;
  sub_1C441A360(MEMORY[0x1E69E7CC0]);
}

void sub_1C4AD3234()
{
  qword_1EDE2D780 = 0xD000000000000019;
  *algn_1EDE2D788 = 0x80000001C4FB0330;
  sub_1C441A360(MEMORY[0x1E69E7CC0]);
}

void sub_1C4AD3264()
{
  *&xmmword_1EDE2D0E0 = 0xD00000000000001CLL;
  *(&xmmword_1EDE2D0E0 + 1) = 0x80000001C4FB0400;
  sub_1C441A360(MEMORY[0x1E69E7CC0]);
}

void sub_1C4AD3294()
{
  strcpy(&xmmword_1EDE2D938, "currentPhase");
  BYTE13(xmmword_1EDE2D938) = 0;
  HIWORD(xmmword_1EDE2D938) = -5120;
  sub_1C43FDCEC(&xmmword_1EDE2D938);
}

void sub_1C4AD32C8()
{
  *&xmmword_1EDE2D988 = 0xD000000000000010;
  *(&xmmword_1EDE2D988 + 1) = 0x80000001C4FB02D0;
  sub_1C441A360(MEMORY[0x1E69E7CC0]);
}

void sub_1C4AD32F8()
{
  qword_1EDE2D9D8 = 0xD000000000000018;
  unk_1EDE2D9E0 = 0x80000001C4FB0290;
  sub_1C441A360(MEMORY[0x1E69E7CC0]);
}

void sub_1C4AD3328()
{
  qword_1EDE2D9B0 = 0xD000000000000019;
  *algn_1EDE2D9B8 = 0x80000001C4FB0250;
  sub_1C44078EC();
}

void sub_1C4AD3380()
{
  v1 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v17[-1] - v2;
  v4 = sub_1C4EF9CD8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C448EE10();
  if (!v0)
  {
    if (qword_1EDDF7B98 != -1)
    {
      swift_once();
    }

    sub_1C446FB00();
    if (sub_1C44157D4(v3, 1, v4) == 1)
    {
      sub_1C44686E4(v3);
      if (qword_1EDDFECB0 != -1)
      {
        swift_once();
      }

      v8 = sub_1C4F00978();
      sub_1C442B738(v8, qword_1EDDFECB8);
      v9 = sub_1C4F00968();
      v10 = sub_1C4F01CD8();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v18 = v12;
        *v11 = 136315138;
        v16 = &unk_1F43F95A8;
        sub_1C456902C(&qword_1EC0C2F30, &qword_1C4F4E448);
        v13 = sub_1C4F01198();
        v15 = sub_1C441D828(v13, v14, &v18);

        *(v11 + 4) = v15;
        _os_log_impl(&dword_1C43F8000, v9, v10, "%s lastPipelineRunStartDate is nil", v11, 0xCu);
        sub_1C440962C(v12);
        MEMORY[0x1C6942830](v12, -1, -1);
        MEMORY[0x1C6942830](v11, -1, -1);
      }
    }

    else
    {
      (*(v5 + 32))(v7, v3, v4);
      sub_1C44BED60();
      sub_1C4EF9AD8();
      sub_1C4EF9AD8();
      v17[0] = 0xD000000000000010;
      v17[1] = 0x80000001C4FB0270;
      v17[3] = 0;
      v17[4] = 0;
      v17[2] = &unk_1F43DAB10;
      sub_1C44BF3A4(v17, 0, 0);
      (*(v5 + 8))(v7, v4);
    }
  }
}

void sub_1C4AD376C()
{
  qword_1EDE2D7A8 = 0xD000000000000017;
  unk_1EDE2D7B0 = 0x80000001C4FB02B0;
  sub_1C441A360(MEMORY[0x1E69E7CC0]);
}

void sub_1C4AD379C()
{
  *&xmmword_1EDE2DA28 = 0xD00000000000001CLL;
  *(&xmmword_1EDE2DA28 + 1) = 0x80000001C4FB03C0;
  sub_1C441A360(MEMORY[0x1E69E7CC0]);
}

void sub_1C4AD37CC()
{
  qword_1EDE2DA50 = 0xD00000000000001CLL;
  qword_1EDE2DA58 = 0x80000001C4FB0310;
  sub_1C441A360(MEMORY[0x1E69E7CC0]);
}

void sub_1C4AD37FC()
{
  *&xmmword_1EDE2DA00 = 0xD000000000000025;
  *(&xmmword_1EDE2DA00 + 1) = 0x80000001C4FB0370;
  sub_1C441A360(MEMORY[0x1E69E7CC0]);
}

void sub_1C4AD382C()
{
  qword_1EDE2D870 = 0xD000000000000013;
  *algn_1EDE2D878 = 0x80000001C4FB0230;
  sub_1C44078EC();
}

void sub_1C4AD386C()
{
  qword_1EDE2D848 = 0xD000000000000015;
  unk_1EDE2D850 = 0x80000001C4FB0210;
  sub_1C44078EC();
}

void sub_1C4AD38AC()
{
  qword_1EDE2D820 = 0xD000000000000015;
  *algn_1EDE2D828 = 0x80000001C4FB01F0;
  sub_1C44078EC();
}

void sub_1C4AD38EC()
{
  *&xmmword_1EDE2D960 = 0x6D614E6573616870;
  *(&xmmword_1EDE2D960 + 1) = 0xEA00000000007365;
  sub_1C440B13C(&xmmword_1EDE2D960);
}

void sub_1C4AD392C()
{
  *&xmmword_1EDE2D7D0 = 0xD000000000000015;
  *(&xmmword_1EDE2D7D0 + 1) = 0x80000001C4FB03A0;
  sub_1C44078EC();
}

void sub_1C4AD396C()
{
  strcpy(&xmmword_1EDE2D910, "phaseStartTime");
  HIBYTE(xmmword_1EDE2D910) = -18;
  sub_1C440B13C(&xmmword_1EDE2D910);
}

void sub_1C4AD39B4()
{
  *&xmmword_1EDE2D7F8 = 0xD000000000000015;
  *(&xmmword_1EDE2D7F8 + 1) = 0x80000001C4FB01D0;
  sub_1C44078EC();
}

void sub_1C4AD39F4()
{
  strcpy(&xmmword_1EDE2D8E8, "phaseTimeSpent");
  HIBYTE(xmmword_1EDE2D8E8) = -18;
  sub_1C440B13C(&xmmword_1EDE2D8E8);
}

unint64_t sub_1C4AD3A3C(uint64_t a1)
{
  v1 = sub_1C4F025D8();

  if (v1 >= 4)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1C4AD3AAC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C4AD3A3C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1C4AD3B3C(char a1)
{
  if (!a1)
  {
    return 0xD000000000000039;
  }

  if (a1 == 1)
  {
    return 0xD00000000000001DLL;
  }

  return 0xD000000000000044;
}

unint64_t sub_1C4AD3B98()
{
  result = qword_1EC0C2F38;
  if (!qword_1EC0C2F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2F38);
  }

  return result;
}

uint64_t sub_1C4AD3BEC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C4AD3C40()
{

  if (*(v0 + 40))
  {
  }

  sub_1C44006A8();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

_BYTE *sub_1C4AD3C8C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

_BYTE *sub_1C4AD3D64(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_1C4AD3E4C()
{
  result = qword_1EC0C2F70;
  if (!qword_1EC0C2F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2F70);
  }

  return result;
}

unint64_t sub_1C4AD3EA4()
{
  result = qword_1EC0C2F78;
  if (!qword_1EC0C2F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2F78);
  }

  return result;
}

uint64_t static PipelineType.< infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = *a1;
  v4 = *a2;
  v5 = 0xE700000000000000;
  v6 = 0x6E776F6E6B6E75;
  switch(v3)
  {
    case 1:
      v5 = 0xE400000000000000;
      v6 = 1819047270;
      break;
    case 2:
      v6 = sub_1C44076F0();
      break;
    case 3:
      v6 = sub_1C44133C0();
      v5 = 0xEA0000000000676ELL;
      break;
    default:
      break;
  }

  v7 = 0xE700000000000000;
  switch(v4)
  {
    case 1:
      v7 = 0xE400000000000000;
      v2 = 1819047270;
      break;
    case 2:
      v7 = 0xE500000000000000;
      v2 = 0x61746C6564;
      break;
    case 3:
      v2 = 0x69686374614D6F74;
      v7 = 0xEA0000000000676ELL;
      break;
    default:
      break;
  }

  if (v6 == v2 && v5 == v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_1C4F02938();
  }

  return v9 & 1;
}

unint64_t sub_1C4AD4088()
{
  result = qword_1EC0C2F80;
  if (!qword_1EC0C2F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2F80);
  }

  return result;
}

unint64_t sub_1C4AD40E0()
{
  result = qword_1EC0C2F88;
  if (!qword_1EC0C2F88)
  {
    sub_1C4572308(&qword_1EC0B9230, &unk_1C4F0ED50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2F88);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PipelineType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

uint64_t sub_1C4AD4290()
{
  v9 = MEMORY[0x1E69E7CC0];
  sub_1C44CD9C0(0, 62, 0);
  v0 = 0;
  do
  {
    sub_1C4AD6BCC(byte_1F43D27E8[v0 + 32]);
    v2 = v1;
    v4 = v3;
    v6 = *(v9 + 16);
    v5 = *(v9 + 24);
    if (v6 >= v5 >> 1)
    {
      sub_1C44CD9C0(v5 > 1, v6 + 1, 1);
    }

    ++v0;
    *(v9 + 16) = v6 + 1;
    v7 = v9 + 16 * v6;
    *(v7 + 32) = v2;
    *(v7 + 40) = v4;
  }

  while (v0 != 62);

  return sub_1C4499940();
}

uint64_t sub_1C4AD4374(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  sub_1C4AD43CC(v1, &v4);
  objc_autoreleasePoolPop(v2);
  return v4;
}

uint64_t sub_1C4AD43CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 1;
  v5 = *(a1 + 16);
  sub_1C4EF9AD8();
  v6 = sub_1C4F019C8();
  v7 = [v5 publisherWithStartTime:v6 endTime:0 maxEvents:0 reversed:1];

  v8 = swift_allocObject();
  *(v8 + 16) = MEMORY[0x1E69E7CC0];
  v19 = sub_1C4AD461C;
  v20 = 0;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1C44405F8;
  v18 = &unk_1F43F96F0;
  v9 = _Block_copy(&v15);
  v10 = swift_allocObject();
  *(v10 + 16) = v4;
  *(v10 + 24) = v8;
  v19 = sub_1C4AD59B0;
  v20 = v10;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1C4440590;
  v18 = &unk_1F43F9740;
  v11 = _Block_copy(&v15);
  v12 = v7;

  v13 = [v12 sinkWithCompletion:v9 receiveInput:v11];

  _Block_release(v11);
  _Block_release(v9);

  swift_beginAccess();
  *a2 = *(v8 + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C4AD461C(void *a1)
{
  v1 = [a1 error];
  if (v1)
  {
    v2 = v1;
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v3 = sub_1C4F00978();
    sub_1C442B738(v3, qword_1EDDFECB8);
    v4 = v2;
    oslog = sub_1C4F00968();
    v5 = sub_1C4F01CD8();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v13 = v7;
      *v6 = 136315138;
      v8 = v4;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v9 = sub_1C4F01198();
      v11 = sub_1C441D828(v9, v10, &v13);

      *(v6 + 4) = v11;
      _os_log_impl(&dword_1C43F8000, oslog, v5, "Fetching POICategoryEvent from BMPOICategoryEvent failed with error: %s", v6, 0xCu);
      sub_1C440962C(v7);
      MEMORY[0x1C6942830](v7, -1, -1);
      MEMORY[0x1C6942830](v6, -1, -1);
    }

    else
    {
    }
  }
}

void sub_1C4AD47DC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [a1 eventBody];
  if (v4)
  {
    v5 = v4;
    swift_beginAccess();
    if (*(a2 + 24))
    {
      [v5 timeIntervalSince1970];
      v7 = v6;
    }

    else
    {
      v7 = *(a2 + 16);
    }

    swift_beginAccess();
    *(a2 + 16) = v7;
    *(a2 + 24) = 0;
    [v5 timeIntervalSince1970];
    v12 = v11;
    swift_beginAccess();
    if (*(a2 + 24))
    {
      __break(1u);
    }

    else if (v12 < *(a2 + 16) || [v5 rank] > 4)
    {
    }

    else
    {
      v13 = swift_beginAccess();
      MEMORY[0x1C6940330](v13);
      sub_1C4427EF0();
      sub_1C4F01748();
      swift_endAccess();
    }
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v8 = sub_1C4F00978();
    sub_1C442B738(v8, qword_1EDDFECB8);
    oslog = sub_1C4F00968();
    v9 = sub_1C4F01CF8();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1C43F8000, oslog, v9, "Unable to parse eventBody from read event in poi category featurizer", v10, 2u);
      MEMORY[0x1C6942830](v10, -1, -1);
    }
  }
}

void *sub_1C4AD4A0C(uint64_t a1)
{
  v39 = sub_1C4577DBC();
  v2 = sub_1C4F00F28();
  v43 = a1;
  v3 = sub_1C4428DA0(a1);
  if (!v3)
  {
    return v2;
  }

  v4 = v3;
  v41 = objc_opt_self();
  if (v4 >= 1)
  {
    v5 = 0;
    v42 = a1 & 0xC000000000000001;
    v40 = v4;
    while (1)
    {
      v6 = v42 ? MEMORY[0x1C6940F90](v5, v43) : *(v43 + 8 * v5 + 32);
      v7 = v6;
      v8 = [v6 poiCategory];
      v9 = sub_1C4F01138();
      v11 = v10;

      v12 = sub_1C4AD5C68(v9, v11);
      v13 = [v7 rank];
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v14 = round(1.0 / (v13 + 1) * 100.0) / 100.0;
      sub_1C4AD6BCC(v12);
      v16 = v15;
      v18 = v17;
      v19 = [v41 featureValueWithDouble_];
      if (v19)
      {
        v20 = v19;
        swift_isUniquelyReferenced_nonNull_native();
        v21 = sub_1C445FAA8(v16, v18);
        if (__OFADD__(v2[2], (v22 & 1) == 0))
        {
          goto LABEL_24;
        }

        v23 = v21;
        v24 = v22;
        v25 = sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
        if (sub_1C4400BC4(v25))
        {
          v26 = sub_1C445FAA8(v16, v18);
          if ((v24 & 1) != (v27 & 1))
          {
            goto LABEL_27;
          }

          v23 = v26;
        }

        if (v24)
        {
          v28 = v2[7];
          v29 = *(v28 + 8 * v23);
          *(v28 + 8 * v23) = v20;
        }

        else
        {
          v2[(v23 >> 6) + 8] |= 1 << v23;
          v34 = (v2[6] + 16 * v23);
          *v34 = v16;
          v34[1] = v18;
          *(v2[7] + 8 * v23) = v20;
          v35 = v2[2];
          v36 = __OFADD__(v35, 1);
          v37 = v35 + 1;
          if (v36)
          {
            goto LABEL_25;
          }

          v2[2] = v37;
          v29 = v7;
        }

        v4 = v40;
      }

      else
      {
        v30 = sub_1C445FAA8(v16, v18);
        v32 = v31;

        if (v32)
        {
          swift_isUniquelyReferenced_nonNull_native();
          v33 = sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
          sub_1C4400BC4(v33);

          sub_1C4F02478();
        }
      }

      if (v4 == ++v5)
      {
        return v2;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  __break(1u);
LABEL_27:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

void sub_1C4AD4D48(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v34 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  type metadata accessor for FeatureProviderSnapshot(0);
  sub_1C43FCDF8();
  v32 = v14;
  v33 = v13;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v17 = v16 - v15;
  v18 = *(a2 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  if (v18)
  {
    v37 = MEMORY[0x1E69E7CC0];
    v36 = v17;
    sub_1C459D0A8();
    v20 = v36;
    v19 = v37;
    v22 = *(v8 + 16);
    v21 = v8 + 16;
    v23 = a2 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
    v30 = *(v21 + 56);
    v31 = v22;
    do
    {
      v31(v12, v23, v34);
      v31(v20, v12, v34);
      v24 = sub_1C4AD4374(v12);
      v25 = sub_1C4AD4A0C(v24);

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v26 = v4;
      sub_1C4AD59B8(v25, a1);

      sub_1C465CF34();
      v28 = v27;

      (*(v21 - 8))(v12, v34);
      *(v36 + *(v33 + 20)) = v28;
      v20 = v36;
      v29 = *(v37 + 16);
      if (v29 >= *(v37 + 24) >> 1)
      {
        sub_1C459D0A8();
        v20 = v36;
      }

      *(v37 + 16) = v29 + 1;
      sub_1C4586A54(v20, v37 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v29);
      v23 += v30;
      --v18;
      v4 = v26;
    }

    while (v18);
  }

  *a3 = v19;
}

void *sub_1C4AD5010()
{
  v0 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v6 = v5 - v4;
  sub_1C4EF9C88();
  v7 = sub_1C4AD4374(v6);
  v8 = sub_1C4AD4A0C(v7);

  (*(v2 + 8))(v6, v0);
  return v8;
}

void sub_1C4AD50E4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v20 = a1;
  v21 = a2;
  v5 = sub_1C456902C(&qword_1EC0B8600, &unk_1C4F0D4E0);
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C456902C(&qword_1EC0C2D58, &qword_1C4F50AE0);
  sub_1C43FCDF8();
  v19 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v18 - v9;
  v11 = *(v2 + 16);
  sub_1C4EF9AD8();
  v12 = sub_1C4F019C8();
  sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  sub_1C4EF9AD8();
  v13 = sub_1C4F019C8();
  v14 = [v11 publisherWithStartTime:v12 endTime:v13 maxEvents:0 reversed:0];

  v15 = v14;
  sub_1C456902C(&qword_1EC0B8608, &qword_1C4F3B4B0);
  sub_1C4EFFC38();
  if (v3)
  {
  }

  else
  {
    v16 = swift_allocObject();
    v18[1] = v5;
    v17 = v20;
    *(v16 + 16) = v4;
    *(v16 + 24) = v17;
    type metadata accessor for FeatureProviderChange(0);
    sub_1C4401CBC(&qword_1EC0C2FA0, &qword_1EC0B8600, &unk_1C4F0D4E0, MEMORY[0x1E69A9B60]);

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    sub_1C4F02848();

    (*(v19 + 32))(v21, v10, v6);
  }
}

uint64_t sub_1C4AD5390(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a1;
  v4[8] = a3;
  v5 = *a2;
  v4[9] = a4;
  v4[10] = v5;
  return MEMORY[0x1EEE6DFA0](sub_1C4AD53B8, 0, 0);
}

uint64_t sub_1C4AD53B8()
{
  v1 = [*(v0 + 80) eventBody];
  if (v1)
  {
    v2 = v1;
    if ([v1 rank])
    {
      v3 = *(v0 + 56);
      v4 = type metadata accessor for FeatureProviderChange(0);
      sub_1C440BAA8(v3, 1, 1, v4);

      goto LABEL_11;
    }

    v13 = *(v0 + 72);
    v14 = *(v0 + 56);
    [*(v0 + 80) timestamp];
    sub_1C4EF9AC8();
    sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0FCC0;
    *(inited + 32) = v2;
    v16 = v2;
    v17 = sub_1C4AD4A0C(inited);
    swift_setDeallocating();
    sub_1C49E1628();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4AD59B8(v17, v13);

    sub_1C465CF34();
    v19 = v18;

    v10 = type metadata accessor for FeatureProviderChange(0);
    *(v14 + *(v10 + 20)) = 2;
    *(v14 + *(v10 + 24)) = v19;
    v11 = v14;
    v12 = 0;
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v5 = sub_1C4F00978();
    sub_1C442B738(v5, qword_1EDDFECB8);
    v6 = sub_1C4F00968();
    v7 = sub_1C4F01CF8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1C43F8000, v6, v7, "Unable to parse eventBody from read event in POI category featurizer", v8, 2u);
      MEMORY[0x1C6942830](v8, -1, -1);
    }

    v9 = *(v0 + 56);

    v10 = type metadata accessor for FeatureProviderChange(0);
    v11 = v9;
    v12 = 1;
  }

  sub_1C440BAA8(v11, v12, 1, v10);
LABEL_11:
  v20 = *(v0 + 8);

  return v20();
}

id sub_1C4AD562C()
{
  v0 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v6 = v5 - v4;
  sub_1C4EF9C88();
  v7 = sub_1C4AD4374(v6);
  sub_1C4AD4A0C(v7);

  (*(v2 + 8))(v6, v0);
  v8 = sub_1C442D204();
  v9 = sub_1C44F9274(v8);
  if (v9)
  {

    v10 = sub_1C442D204();
    v11 = sub_1C44F9274(v10);
  }

  else
  {

    sub_1C4AD4290();
    v12 = sub_1C442D204();
    v15 = sub_1C4499AD0(v12, v13, v14);

    if (v15)
    {
      return [objc_opt_self() featureValueWithDouble_];
    }

    else
    {
      return 0;
    }
  }

  return v11;
}

uint64_t sub_1C4AD58C0(uint64_t a1)
{
  *(a1 + 8) = sub_1C4AD5928(&qword_1EC0C2F90, &unk_1C4F4E8AC);
  result = sub_1C4AD5928(&qword_1EC0C2F98, &unk_1C4F4E8C8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4AD5928(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PoiCategorySignal();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C4AD596C(uint64_t a1)
{
  result = sub_1C4AD5928(&qword_1EC0C2F98, &unk_1C4F4E8C8);
  *(a1 + 16) = result;
  return result;
}

_BYTE *sub_1C4AD59B8(_BYTE *a1, uint64_t a2)
{
  v3 = a1;
  v23[1] = *MEMORY[0x1E69E9840];
  v4 = a1[32];
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = swift_bridgeObjectRetain_n();
  if (v5 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v18 = swift_slowAlloc();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v19 = sub_1C441235C();
      v3 = sub_1C45867F0(v19, v20, v21, v22);
      MEMORY[0x1C6942830](v18, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v7);
  sub_1C4501018(0, v6, v23 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0));
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = sub_1C441235C();
  sub_1C4586AB8(v8, v9, v10, v11, v12, v13, v14, v15);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v3 = v16;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  return v3;
}

uint64_t sub_1C4AD5B5C(void (*a1)(void))
{

  a1(*(v1 + 24));

  return MEMORY[0x1EEE6BDD0](v1, 32, 7);
}

uint64_t sub_1C4AD5BAC(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1C44A7DA0;

  return sub_1C4AD5390(a1, a2, v7, v6);
}

uint64_t sub_1C4AD5C68(uint64_t a1, unint64_t a2)
{
  v4 = a1 == 0x6172756174736572 && a2 == 0xEA0000000000746ELL;
  if (v4 || (sub_1C43FD4D8(0x6172756174736572, 0xEA0000000000746ELL) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x797265636F7267 && a2 == 0xE700000000000000;
    if (v6 || (sub_1C43FD4D8(0x797265636F7267, 0xE700000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656566666F63 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C43FD4D8(0x656566666F63, 0xE600000000000000) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 7174503 && a2 == 0xE300000000000000;
        if (v8 || (sub_1C43FD4D8(7174503, 0xE300000000000000) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6D756964617473 && a2 == 0xE700000000000000;
          if (v9 || (sub_1C43FD4D8(0x6D756964617473, 0xE700000000000000) & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1701538152 && a2 == 0xE400000000000000;
            if (v10 || (sub_1C43FD4D8(1701538152, 0xE400000000000000) & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 1802658160 && a2 == 0xE400000000000000;
              if (v11 || (sub_1C43FD4D8(1802658160, 0xE400000000000000) & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x7972617262696CLL && a2 == 0xE700000000000000;
                if (v12 || (sub_1C43FD4D8(0x7972617262696CLL, 0xE700000000000000) & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x756F6967696C6572 && a2 == 0xE900000000000073;
                  if (v13 || (sub_1C43FD4D8(0x756F6967696C6572, 0xE900000000000073) & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6569766F6DLL && a2 == 0xE500000000000000;
                    if (v14 || (sub_1C43FD4D8(0x6569766F6DLL, 0xE500000000000000) & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 7566690 && a2 == 0xE300000000000000;
                      if (v15 || (sub_1C43FD4D8(7566690, 0xE300000000000000) & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6E69617274 && a2 == 0xE500000000000000;
                        if (v16 || (sub_1C43FD4D8(0x6E69617274, 0xE500000000000000) & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x74726F70726961 && a2 == 0xE700000000000000;
                          if (v17 || (sub_1C43FD4D8(0x74726F70726961, 0xE700000000000000) & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 30309 && a2 == 0xE200000000000000;
                            if (v18 || (sub_1C43FD4D8(30309, 0xE200000000000000) & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 7561575 && a2 == 0xE300000000000000;
                              if (v19 || (sub_1C43FD4D8(7561575, 0xE300000000000000) & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x7972646E75616CLL && a2 == 0xE700000000000000;
                                if (v20 || (sub_1C43FD4D8(0x7972646E75616CLL, 0xE700000000000000) & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x6D756573756DLL && a2 == 0xE600000000000000;
                                  if (v21 || (sub_1C43FD4D8(0x6D756573756DLL, 0xE600000000000000) & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    sub_1C4420178();
                                    v24 = v4 && v23 == a2;
                                    if (v24 || (sub_1C44078F8(v22, v23) & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      sub_1C43FE984();
                                      v26 = a1 == 0xD00000000000001BLL && v25 == a2;
                                      if (v26 || (sub_1C43FD4D8(0xD00000000000001BLL, v25) & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        sub_1C43FE984();
                                        v28 = a1 == 0xD000000000000016 && v27 == a2;
                                        if (v28 || (sub_1C43FD4D8(0xD000000000000016, v27) & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          sub_1C43FE984();
                                          v30 = a1 == 0xD000000000000011 && v29 == a2;
                                          if (v30 || (sub_1C43FD4D8(0xD000000000000011, v29) & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            sub_1C43FE984();
                                            v32 = a1 == 0xD000000000000014 && v31 == a2;
                                            if (v32 || (sub_1C43FD4D8(0xD000000000000014, v31) & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              sub_1C43FE984();
                                              v34 = a1 == 0xD000000000000012 && v33 == a2;
                                              if (v34 || (sub_1C43FD4D8(0xD000000000000012, v33) & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                sub_1C43FE984();
                                                v36 = a1 == 0xD000000000000013 && v35 == a2;
                                                if (v36 || (sub_1C43FD4D8(0xD000000000000013, v35) & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  sub_1C4420178();
                                                  v39 = v4 && v38 == a2;
                                                  if (v39 || (sub_1C44078F8(v37, v38) & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    sub_1C43FE984();
                                                    v41 = a1 == 0xD000000000000012 && v40 == a2;
                                                    if (v41 || (sub_1C43FD4D8(0xD000000000000012, v40) & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      sub_1C43FE984();
                                                      v43 = a1 == 0xD000000000000018 && v42 == a2;
                                                      if (v43 || (sub_1C43FD4D8(0xD000000000000018, v42) & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        sub_1C43FE984();
                                                        v45 = a1 == 0xD000000000000017 && v44 == a2;
                                                        if (v45 || (sub_1C43FD4D8(0xD000000000000017, v44) & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          sub_1C43FE984();
                                                          v47 = a1 == 0xD000000000000017 && v46 == a2;
                                                          if (v47 || (sub_1C43FD4D8(0xD000000000000017, v46) & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            sub_1C43FE984();
                                                            v49 = a1 == 0xD000000000000019 && v48 == a2;
                                                            if (v49 || (sub_1C43FD4D8(0xD000000000000019, v48) & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              sub_1C43FE984();
                                                              v51 = a1 == 0xD00000000000001BLL && v50 == a2;
                                                              if (v51 || (sub_1C43FD4D8(0xD00000000000001BLL, v50) & 1) != 0)
                                                              {

                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                sub_1C441A36C();
                                                                v53 = v4 && v52 == a2;
                                                                if (v53 || (sub_1C43FD4D8(0xD000000000000018, v52) & 1) != 0)
                                                                {

                                                                  return 31;
                                                                }

                                                                else
                                                                {
                                                                  sub_1C441A36C();
                                                                  v55 = v4 && v54 == a2;
                                                                  if (v55 || (sub_1C43FD4D8(0xD000000000000018, v54) & 1) != 0)
                                                                  {

                                                                    return 32;
                                                                  }

                                                                  else
                                                                  {
                                                                    sub_1C440B148();
                                                                    v57 = v4 && v56 == a2;
                                                                    if (v57 || (sub_1C43FD4D8(0xD000000000000016, v56) & 1) != 0)
                                                                    {

                                                                      return 33;
                                                                    }

                                                                    else
                                                                    {
                                                                      sub_1C43FE984();
                                                                      v59 = a1 == 0xD000000000000013 && v58 == a2;
                                                                      if (v59 || (sub_1C43FD4D8(0xD000000000000013, v58) & 1) != 0)
                                                                      {

                                                                        return 34;
                                                                      }

                                                                      else
                                                                      {
                                                                        sub_1C4420178();
                                                                        v62 = v4 && v61 == a2;
                                                                        if (v62 || (sub_1C44078F8(v60, v61) & 1) != 0)
                                                                        {

                                                                          return 35;
                                                                        }

                                                                        else
                                                                        {
                                                                          sub_1C4420178();
                                                                          v65 = v4 && v64 == a2;
                                                                          if (v65 || (sub_1C44078F8(v63, v64) & 1) != 0)
                                                                          {

                                                                            return 36;
                                                                          }

                                                                          else
                                                                          {
                                                                            sub_1C4400BE4();
                                                                            v67 = v4 && v66 == a2;
                                                                            if (v67 || (sub_1C43FD4D8(0xD000000000000014, v66) & 1) != 0)
                                                                            {

                                                                              return 37;
                                                                            }

                                                                            else
                                                                            {
                                                                              sub_1C43FE984();
                                                                              v69 = a1 == 0xD00000000000001ALL && v68 == a2;
                                                                              if (v69 || (sub_1C43FD4D8(0xD00000000000001ALL, v68) & 1) != 0)
                                                                              {

                                                                                return 38;
                                                                              }

                                                                              else
                                                                              {
                                                                                sub_1C4400BE4();
                                                                                v71 = v4 && v70 == a2;
                                                                                if (v71 || (sub_1C43FD4D8(0xD000000000000014, v70) & 1) != 0)
                                                                                {

                                                                                  return 39;
                                                                                }

                                                                                else
                                                                                {
                                                                                  sub_1C43FE984();
                                                                                  v73 = a1 == 0xD00000000000001ALL && v72 == a2;
                                                                                  if (v73 || (sub_1C43FD4D8(0xD00000000000001ALL, v72) & 1) != 0)
                                                                                  {

                                                                                    return 40;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    sub_1C43FE984();
                                                                                    v75 = a1 == 0xD000000000000017 && v74 == a2;
                                                                                    if (v75 || (sub_1C43FD4D8(0xD000000000000017, v74) & 1) != 0)
                                                                                    {

                                                                                      return 41;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      sub_1C43FE984();
                                                                                      v77 = a1 == 0xD000000000000012 && v76 == a2;
                                                                                      if (v77 || (sub_1C43FD4D8(0xD000000000000012, v76) & 1) != 0)
                                                                                      {

                                                                                        return 42;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        sub_1C4420178();
                                                                                        v80 = v4 && v79 == a2;
                                                                                        if (v80 || (sub_1C44078F8(v78, v79) & 1) != 0)
                                                                                        {

                                                                                          return 43;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          sub_1C440B148();
                                                                                          v82 = v4 && v81 == a2;
                                                                                          if (v82 || (sub_1C43FD4D8(0xD000000000000016, v81) & 1) != 0)
                                                                                          {

                                                                                            return 44;
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            sub_1C441A36C();
                                                                                            v84 = v4 && v83 == a2;
                                                                                            if (v84 || (sub_1C43FD4D8(0xD000000000000018, v83) & 1) != 0)
                                                                                            {

                                                                                              return 45;
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              sub_1C4400BE4();
                                                                                              v86 = v4 && v85 == a2;
                                                                                              if (v86 || (sub_1C43FD4D8(0xD000000000000014, v85) & 1) != 0)
                                                                                              {

                                                                                                return 46;
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                sub_1C441A36C();
                                                                                                v88 = v4 && v87 == a2;
                                                                                                if (v88 || (sub_1C43FD4D8(0xD000000000000018, v87) & 1) != 0)
                                                                                                {

                                                                                                  return 47;
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  sub_1C43FE984();
                                                                                                  v90 = a1 == 0xD00000000000001DLL && v89 == a2;
                                                                                                  if (v90 || (sub_1C43FD4D8(0xD00000000000001DLL, v89) & 1) != 0)
                                                                                                  {

                                                                                                    return 48;
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    sub_1C43FE984();
                                                                                                    v92 = a1 == 0xD00000000000001BLL && v91 == a2;
                                                                                                    if (v92 || (sub_1C43FD4D8(0xD00000000000001BLL, v91) & 1) != 0)
                                                                                                    {

                                                                                                      return 49;
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      sub_1C441A36C();
                                                                                                      v94 = v4 && v93 == a2;
                                                                                                      if (v94 || (sub_1C43FD4D8(0xD000000000000018, v93) & 1) != 0)
                                                                                                      {

                                                                                                        return 50;
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        sub_1C440B148();
                                                                                                        v96 = v4 && v95 == a2;
                                                                                                        if (v96 || (sub_1C43FD4D8(0xD000000000000016, v95) & 1) != 0)
                                                                                                        {

                                                                                                          return 51;
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          sub_1C4400BE4();
                                                                                                          v98 = v4 && v97 == a2;
                                                                                                          if (v98 || (sub_1C43FD4D8(0xD000000000000014, v97) & 1) != 0)
                                                                                                          {

                                                                                                            return 52;
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            sub_1C4420178();
                                                                                                            v101 = v4 && v100 == a2;
                                                                                                            if (v101 || (sub_1C44078F8(v99, v100) & 1) != 0)
                                                                                                            {

                                                                                                              return 53;
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              sub_1C43FE984();
                                                                                                              v103 = a1 == 0xD000000000000013 && v102 == a2;
                                                                                                              if (v103 || (sub_1C43FD4D8(0xD000000000000013, v102) & 1) != 0)
                                                                                                              {

                                                                                                                return 54;
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                sub_1C4420178();
                                                                                                                v106 = v4 && v105 == a2;
                                                                                                                if (v106 || (sub_1C44078F8(v104, v105) & 1) != 0)
                                                                                                                {

                                                                                                                  return 55;
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  sub_1C441A36C();
                                                                                                                  v108 = v4 && v107 == a2;
                                                                                                                  if (v108 || (sub_1C43FD4D8(0xD000000000000018, v107) & 1) != 0)
                                                                                                                  {

                                                                                                                    return 56;
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    sub_1C4400BE4();
                                                                                                                    v110 = v4 && v109 == a2;
                                                                                                                    if (v110 || (sub_1C43FD4D8(0xD000000000000014, v109) & 1) != 0)
                                                                                                                    {

                                                                                                                      return 57;
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      sub_1C43FE984();
                                                                                                                      v112 = a1 == 0xD000000000000011 && v111 == a2;
                                                                                                                      if (v112 || (sub_1C43FD4D8(0xD000000000000011, v111) & 1) != 0)
                                                                                                                      {

                                                                                                                        return 58;
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        sub_1C43FE984();
                                                                                                                        v114 = a1 == 0xD000000000000019 && v113 == a2;
                                                                                                                        if (v114 || (sub_1C43FD4D8(0xD000000000000019, v113) & 1) != 0)
                                                                                                                        {

                                                                                                                          return 59;
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          sub_1C43FE984();
                                                                                                                          v116 = a1 == 0xD00000000000001DLL && v115 == a2;
                                                                                                                          if (v116 || (sub_1C43FD4D8(0xD00000000000001DLL, v115) & 1) != 0)
                                                                                                                          {

                                                                                                                            return 60;
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            sub_1C43FE984();
                                                                                                                            v118 = a1 == 0xD000000000000019 && v117 == a2;
                                                                                                                            if (v118 || (sub_1C43FD4D8(0xD000000000000019, v117) & 1) != 0)
                                                                                                                            {
                                                                                                                            }

                                                                                                                            else
                                                                                                                            {
                                                                                                                              if (qword_1EDDFECB0 != -1)
                                                                                                                              {
                                                                                                                                swift_once();
                                                                                                                              }

                                                                                                                              v119 = sub_1C4F00978();
                                                                                                                              sub_1C442B738(v119, qword_1EDDFECB8);
                                                                                                                              sub_1C44042C4();
                                                                                                                              v120 = swift_allocObject();
                                                                                                                              *(v120 + 16) = a1;
                                                                                                                              *(v120 + 24) = a2;
                                                                                                                              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                                                                                                                              v121 = sub_1C4F00968();
                                                                                                                              v122 = sub_1C4F01CE8();
                                                                                                                              v123 = swift_allocObject();
                                                                                                                              *(v123 + 16) = 32;
                                                                                                                              v124 = swift_allocObject();
                                                                                                                              *(v124 + 16) = 8;
                                                                                                                              sub_1C44042C4();
                                                                                                                              v125 = swift_allocObject();
                                                                                                                              *(v125 + 16) = sub_1C4AD7104;
                                                                                                                              *(v125 + 24) = v120;
                                                                                                                              sub_1C44042C4();
                                                                                                                              v126 = swift_allocObject();
                                                                                                                              *(v126 + 16) = sub_1C4AD71F0;
                                                                                                                              *(v126 + 24) = v125;
                                                                                                                              sub_1C456902C(&qword_1EC0BBF38, &unk_1C4F4B420);
                                                                                                                              inited = swift_initStackObject();
                                                                                                                              sub_1C466323C(inited, 3);
                                                                                                                              *v128 = sub_1C44549EC;
                                                                                                                              v128[1] = v123;
                                                                                                                              v128[2] = sub_1C44549F4;
                                                                                                                              v128[3] = v124;
                                                                                                                              v128[4] = sub_1C4454B88;
                                                                                                                              v128[5] = v126;

                                                                                                                              if (os_log_type_enabled(v121, v122))
                                                                                                                              {
                                                                                                                                v129 = sub_1C4B400F0(12);
                                                                                                                                v130 = swift_slowAlloc();
                                                                                                                                v132 = v130;
                                                                                                                                *v129 = 136315138;
                                                                                                                                v131 = sub_1C441D828(a1, a2, &v132);

                                                                                                                                *(v129 + 4) = v131;
                                                                                                                                _os_log_impl(&dword_1C43F8000, v121, v122, "Unknown POI category string with value: %s", v129, 0xCu);
                                                                                                                                sub_1C440962C(v130);
                                                                                                                                MEMORY[0x1C6942830](v130, -1, -1);
                                                                                                                                MEMORY[0x1C6942830](v129, -1, -1);
                                                                                                                              }

                                                                                                                              else
                                                                                                                              {
                                                                                                                              }
                                                                                                                            }

                                                                                                                            return 61;
                                                                                                                          }
                                                                                                                        }
                                                                                                                      }
                                                                                                                    }
                                                                                                                  }
                                                                                                                }
                                                                                                              }
                                                                                                            }
                                                                                                          }
                                                                                                        }
                                                                                                      }
                                                                                                    }
                                                                                                  }
                                                                                                }
                                                                                              }
                                                                                            }
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1C4AD6BCC(char a1)
{
  switch(a1)
  {
    case 17:
    case 24:
    case 29:
    case 35:
    case 36:
    case 43:
    case 53:
    case 55:
    case 59:
      sub_1C43FE984();
      break;
    case 61:
      return;
    default:
      sub_1C4413680();
      break;
  }
}

unint64_t sub_1C4AD710C()
{
  v0 = sub_1C4F029A8();

  if (v0 >= 0x3E)
  {
    return 62;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1C4AD7184@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C4AD710C();
  *a1 = result;
  return result;
}

void sub_1C4AD71B4(void *a1@<X8>)
{
  sub_1C4AD6BCC(*v1);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t _s7FeatureOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xC3)
  {
    if (a2 + 61 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 61) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 62;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x3E;
  v5 = v6 - 62;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s7FeatureOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 61 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 61) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xC3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xC2)
  {
    v6 = ((a2 - 195) >> 8) + 1;
    *result = a2 + 61;
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
        break;
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
          *result = a2 + 61;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4AD7360()
{
  result = qword_1EC0C2FB0;
  if (!qword_1EC0C2FB0)
  {
    sub_1C4572308(&qword_1EC0C2FB8, qword_1C4F4E968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2FB0);
  }

  return result;
}

unint64_t sub_1C4AD73C8()
{
  result = qword_1EC0C2FC0;
  if (!qword_1EC0C2FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2FC0);
  }

  return result;
}

uint64_t sub_1C4AD7438(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = 0x6B6E6152696F70;
  *(inited + 40) = 0xE700000000000000;
  v5 = objc_opt_self();
  *(inited + 48) = [v5 featureValueWithInt64_];
  sub_1C4577DBC();
  v6 = sub_1C4F00F28();
  sub_1C465BEF8();
  if ((v7 & 1) == 0)
  {
    v8 = sub_1C4B744F4(v2, byte_1F43D27E8);
    if (v9)
    {
      v10 = -1;
    }

    else
    {
      v10 = v8;
    }

    if ([v5 featureValueWithInt64_])
    {
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C4660314();
    }

    else
    {
      v11 = sub_1C445FAA8(0x6765746143696F70, 0xEB0000000079726FLL);
      if (v12)
      {
        v13 = v11;
        swift_isUniquelyReferenced_nonNull_native();
        sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
        sub_1C4F02458();

        v14 = *(*(v6 + 56) + 8 * v13);
        sub_1C4F02478();
      }
    }
  }

  return v6;
}

uint64_t sub_1C4AD7648@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = (v2 + *(result + 24));
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *a2 = v4;
  *(a2 + 8) = v3;
  return result;
}

void sub_1C4AD7664(uint64_t a1)
{
  v1 = [BiomeLibrary() Location];
  swift_unknownObjectRelease();
  v2 = [v1 PointOfInterest];
  swift_unknownObjectRelease();
  v3 = [v2 Category];
  swift_unknownObjectRelease();
  sub_1C45808E8();
}

uint64_t type metadata accessor for PoiCategoryEvent(uint64_t a1)
{
  result = qword_1EDDE6AC8;
  if (!qword_1EDDE6AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4AD77C0(uint64_t a1)
{
  result = sub_1C4EF9CD8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PoiCategoryContent(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xC3 && *(a1 + 9))
    {
      v2 = *a1 + 194;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = v3 >= 0x3E;
      v2 = v3 - 62;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for PoiCategoryContent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC2)
  {
    *(result + 8) = 0;
    *result = a2 - 195;
    if (a3 >= 0xC3)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC3)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 61;
    }
  }

  return result;
}

unint64_t sub_1C4AD78CC()
{
  result = qword_1EDDDE910;
  if (!qword_1EDDDE910)
  {
    sub_1C4572308(&qword_1EC0C2FC8, &qword_1C4F4EAB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDE910);
  }

  return result;
}

uint64_t PortraitTopicKeyValueStore.__allocating_init(config:)(uint64_t a1)
{
  v2 = swift_allocObject();
  PortraitTopicKeyValueStore.init(config:)(a1);
  return v2;
}

void *PortraitTopicKeyValueStore.init(config:)(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v14 - v9;
  sub_1C44098F0(a1, v14 - v9);
  type metadata accessor for KeyValueStore(0);
  swift_allocObject();
  v11 = KeyValueStore.init(config:domain:)(v10, 0xD000000000000014, 0x80000001C4FB0A10);
  if (v2)
  {
    sub_1C4467948(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v3 + 16) = v11;
    sub_1C44098F0(a1, v7);
    swift_allocObject();
    v12 = KeyValueStore.init(config:domain:)(v7, 0xD000000000000020, 0x80000001C4FB0A30);
    sub_1C4467948(a1);
    *(v3 + 24) = v12;
  }

  return v3;
}

uint64_t PortraitTopicKeyValueStore.deinit()
{

  return v0;
}

uint64_t PortraitTopicKeyValueStore.__deallocating_deinit()
{
  PortraitTopicKeyValueStore.deinit();

  return swift_deallocClassInstance();
}

uint64_t PostalAddress.mapLocation.getter()
{
  v1 = *v0;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t PostalAddress.identifier.getter()
{
  v1 = *(v0 + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t sub_1C4AD7C9C()
{
  if (qword_1EC0B70D0 != -1)
  {
    swift_once();
  }

  qword_1EC0C2FD0 = qword_1EC0C3748;
  *&qword_1EC0C2FD8 = *&qword_1EC0C3750;
  qword_1EC0C2FE8 = qword_1EC0C3760;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t *sub_1C4AD7D1C()
{
  if (qword_1EC0B7078 != -1)
  {
    sub_1C4420188(&qword_1EC0B7078);
  }

  return &qword_1EC0C2FD0;
}

uint64_t static PostalAddress.type.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC0B7078 != -1)
  {
    sub_1C4420188(&qword_1EC0B7078);
  }

  swift_beginAccess();
  v2 = qword_1EC0C2FE8;
  *a1 = qword_1EC0C2FD0;
  *(a1 + 8) = *&qword_1EC0C2FD8;
  *(a1 + 24) = v2;
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t static PostalAddress.type.setter(uint64_t a1)
{
  v1 = *a1;
  v4 = *(a1 + 8);
  v2 = *(a1 + 24);
  if (qword_1EC0B7078 != -1)
  {
    sub_1C4420188(&qword_1EC0B7078);
  }

  swift_beginAccess();
  qword_1EC0C2FD0 = v1;
  *&qword_1EC0C2FD8 = v4;
  qword_1EC0C2FE8 = v2;
}

uint64_t (*static PostalAddress.type.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EC0B7078 != -1)
  {
    sub_1C4420188(&qword_1EC0B7078);
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1C4AD7EE8@<X0>(uint64_t a1@<X8>)
{
  sub_1C4AD7D1C();
  swift_beginAccess();
  v2 = qword_1EC0C2FE8;
  *a1 = qword_1EC0C2FD0;
  *(a1 + 8) = *&qword_1EC0C2FD8;
  *(a1 + 24) = v2;
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4AD7F50(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 24);
  v4 = *(a1 + 8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4AD7D1C();
  swift_beginAccess();
  qword_1EC0C2FD0 = v1;
  *&qword_1EC0C2FD8 = v4;
  qword_1EC0C2FE8 = v2;
}

uint64_t PostalAddress.basicProperties.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

void __swiftcall PostalAddress.init(mapLocation:identifier:subPremises:subThoroughfare:thoroughfare:subLocality:locality:subAdministrativeArea:administrativeArea:administrativeAreaCode:postalCode:country:ISOCountryCode:label:category:name:latitude:longitude:isHome:horizontalAccuracy:)(IntelligencePlatformCore::PostalAddress *__return_ptr retstr, Swift::String mapLocation, Swift::String_optional identifier, Swift::OpaquePointer_optional subPremises, Swift::String_optional subThoroughfare, Swift::String_optional thoroughfare, Swift::String_optional subLocality, Swift::String_optional locality, Swift::String_optional subAdministrativeArea, Swift::String_optional administrativeArea, Swift::String_optional administrativeAreaCode, Swift::String_optional postalCode, Swift::String_optional country, Swift::String_optional ISOCountryCode, Swift::String_optional label, Swift::String_optional category, Swift::String_optional name, Swift::String_optional latitude, Swift::String_optional longitude, Swift::String_optional isHome, Swift::String_optional horizontalAccuracy)
{
  object = subThoroughfare.value._object;
  countAndFlagsBits = subThoroughfare.value._countAndFlagsBits;
  v24 = *&subPremises.is_nil;
  if (!identifier.value._object)
  {
    v27 = MEMORY[0x1E69E7CC0];
    if (!subPremises.value._rawValue)
    {
      goto LABEL_15;
    }

    goto LABEL_7;
  }

  rawValue = subPremises.value._rawValue;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v21 = 1;
  sub_1C458A900();
  v27 = v26;
  if (v26[2] >= v26[3] >> 1)
  {
    sub_1C440791C();
    v27 = v54;
  }

  sub_1C4412374();
  *(v28 + 32) = 0x696669746E656469;
  *(v28 + 40) = 0xEA00000000007265;
  *(v28 + 48) = identifier;
  *(v28 + 72) = 0;
  *(v28 + 80) = 0;
  *(v28 + 64) = 0;
  *(v28 + 88) = 1;
  subPremises.value._rawValue = rawValue;
  if (rawValue)
  {
LABEL_7:
    v89 = v24;
    v29 = *(subPremises.value._rawValue + 2);
    if (v29)
    {
      v21 = subPremises.value._rawValue + 40;
      do
      {
        v31 = *(v21 - 8);
        v30 = *v21;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C442D214();
          v27 = v34;
        }

        v32 = v27[2];
        if (v32 >= v27[3] >> 1)
        {
          sub_1C458A900();
          v27 = v35;
        }

        v27[2] = v32 + 1;
        v33 = &v27[8 * v32];
        v33[4] = 0x696D657250627573;
        v33[5] = 0xEB00000000736573;
        v33[6] = v31;
        v33[7] = v30;
        v33[9] = 0;
        v33[10] = 0;
        v33[8] = 0;
        v21 += 16;
        *(v33 + 88) = 1;
        --v29;
      }

      while (v29);
    }

    v24 = v89;
  }

LABEL_15:
  if (countAndFlagsBits)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C442D214();
      v27 = v55;
    }

    v21 = v27[2];
    if (v21 >= v27[3] >> 1)
    {
      sub_1C440791C();
      v27 = v56;
    }

    v27[2] = v21 + 1;
    v36 = &v27[8 * v21];
    v36[4] = 0x6F726F6854627573;
    v36[5] = 0xEF65726166686775;
    v36[6] = v24;
    v36[7] = countAndFlagsBits;
    sub_1C4404B30(v36);
  }

  if (thoroughfare.value._countAndFlagsBits)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C442D214();
      v27 = v57;
    }

    v21 = v27[2];
    if (v21 >= v27[3] >> 1)
    {
      sub_1C440791C();
      v27 = v58;
    }

    v27[2] = v21 + 1;
    v37 = &v27[8 * v21];
    strcpy((v37 + 32), "thoroughfare");
    *(v37 + 45) = 0;
    *(v37 + 46) = -5120;
    *(v37 + 48) = object;
    *(v37 + 56) = thoroughfare.value._countAndFlagsBits;
    sub_1C4404B30(v37);
  }

  if (subLocality.value._countAndFlagsBits)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C442D214();
      v27 = v59;
    }

    v21 = thoroughfare.value._object;
    sub_1C4400B04();
    if (v38)
    {
      sub_1C440791C();
      v27 = v60;
    }

    sub_1C4412374();
    v39[4] = 0x6C61636F4C627573;
    v39[5] = 0xEB00000000797469;
    v39[6] = thoroughfare.value._object;
    v39[7] = subLocality.value._countAndFlagsBits;
    sub_1C4404B30(v39);
  }

  if (locality.value._countAndFlagsBits)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C442D214();
      v27 = v61;
    }

    v21 = subLocality.value._object;
    sub_1C4400B04();
    if (v38)
    {
      sub_1C440791C();
      v27 = v62;
    }

    sub_1C4412374();
    v40[4] = 0x7974696C61636F6CLL;
    v40[5] = 0xE800000000000000;
    v40[6] = subLocality.value._object;
    v40[7] = locality.value._countAndFlagsBits;
    sub_1C4404B30(v40);
  }

  if (subAdministrativeArea.value._countAndFlagsBits)
  {
    if ((sub_1C44328B8() & 1) == 0)
    {
      sub_1C442D214();
      v27 = v63;
    }

    sub_1C440B158();
    if (v38)
    {
      sub_1C440791C();
      v27 = v64;
    }

    sub_1C43FDCF8();
    v41[4] = 0xD000000000000015;
    v41[5] = v21;
    v41[6] = locality.value._object;
    v41[7] = subAdministrativeArea.value._countAndFlagsBits;
    sub_1C4404B30(v41);
  }

  if (administrativeArea.value._countAndFlagsBits)
  {
    if ((sub_1C44328B8() & 1) == 0)
    {
      sub_1C442D214();
      v27 = v65;
    }

    sub_1C440B158();
    if (v38)
    {
      sub_1C440791C();
      v27 = v66;
    }

    sub_1C43FDCF8();
    v42[4] = 0xD000000000000012;
    v42[5] = v21;
    v42[6] = subAdministrativeArea.value._object;
    v42[7] = administrativeArea.value._countAndFlagsBits;
    sub_1C4404B30(v42);
  }

  if (administrativeAreaCode.value._countAndFlagsBits)
  {
    if ((sub_1C44328B8() & 1) == 0)
    {
      sub_1C442D214();
      v27 = v67;
    }

    sub_1C440B158();
    if (v38)
    {
      sub_1C440791C();
      v27 = v68;
    }

    sub_1C43FDCF8();
    v43[4] = 0xD000000000000016;
    v43[5] = v21;
    v43[6] = administrativeArea.value._object;
    v43[7] = administrativeAreaCode.value._countAndFlagsBits;
    sub_1C4404B30(v43);
  }

  if (postalCode.value._countAndFlagsBits)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C442D214();
      v27 = v69;
    }

    v21 = administrativeAreaCode.value._object;
    sub_1C4400B04();
    if (v38)
    {
      sub_1C440791C();
      v27 = v70;
    }

    sub_1C4412374();
    v44[4] = 0x6F436C6174736F70;
    v44[5] = 0xEA00000000006564;
    v44[6] = administrativeAreaCode.value._object;
    v44[7] = postalCode.value._countAndFlagsBits;
    sub_1C4404B30(v44);
  }

  if (country.value._countAndFlagsBits)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C442D214();
      v27 = v71;
    }

    v21 = postalCode.value._object;
    sub_1C4400B04();
    if (v38)
    {
      sub_1C440791C();
      v27 = v72;
    }

    sub_1C4412374();
    v45[4] = 0x7972746E756F63;
    v45[5] = 0xE700000000000000;
    v45[6] = postalCode.value._object;
    v45[7] = country.value._countAndFlagsBits;
    sub_1C4404B30(v45);
  }

  if (ISOCountryCode.value._countAndFlagsBits)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C442D214();
      v27 = v73;
    }

    v21 = country.value._object;
    sub_1C4400B04();
    if (v38)
    {
      sub_1C440791C();
      v27 = v74;
    }

    sub_1C4412374();
    strcpy((v46 + 32), "ISOCountryCode");
    *(v46 + 47) = -18;
    *(v46 + 48) = country.value._object;
    *(v46 + 56) = ISOCountryCode.value._countAndFlagsBits;
    sub_1C4404B30(v46);
  }

  if (label.value._countAndFlagsBits)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C442D214();
      v27 = v75;
    }

    v21 = ISOCountryCode.value._object;
    sub_1C4400B04();
    if (v38)
    {
      sub_1C440791C();
      v27 = v76;
    }

    sub_1C4412374();
    v47[4] = 0x6C6562616CLL;
    v47[5] = 0xE500000000000000;
    v47[6] = ISOCountryCode.value._object;
    v47[7] = label.value._countAndFlagsBits;
    sub_1C4404B30(v47);
  }

  if (category.value._countAndFlagsBits)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C442D214();
      v27 = v77;
    }

    v21 = label.value._object;
    sub_1C4400B04();
    if (v38)
    {
      sub_1C440791C();
      v27 = v78;
    }

    sub_1C4412374();
    *(v48 + 32) = 0x79726F6765746163;
    *(v48 + 40) = 0xE800000000000000;
    *(v48 + 48) = 0;
    *(v48 + 56) = 0xE000000000000000;
    *(v48 + 64) = label.value._object;
    *(v48 + 72) = category.value._countAndFlagsBits;
    *(v48 + 80) = 0;
    *(v48 + 88) = 1;
  }

  if (name.value._countAndFlagsBits)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C442D214();
      v27 = v79;
    }

    v21 = category.value._object;
    sub_1C4400B04();
    if (v38)
    {
      sub_1C440791C();
      v27 = v80;
    }

    sub_1C4412374();
    v49[4] = 1701667182;
    v49[5] = 0xE400000000000000;
    v49[6] = category.value._object;
    v49[7] = name.value._countAndFlagsBits;
    sub_1C4404B30(v49);
  }

  if (latitude.value._countAndFlagsBits)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C442D214();
      v27 = v81;
    }

    v21 = name.value._object;
    sub_1C4400B04();
    if (v38)
    {
      sub_1C440791C();
      v27 = v82;
    }

    sub_1C4412374();
    v50[4] = 0x656475746974616CLL;
    v50[5] = 0xE800000000000000;
    v50[6] = name.value._object;
    v50[7] = latitude.value._countAndFlagsBits;
    sub_1C4404B30(v50);
  }

  if (longitude.value._countAndFlagsBits)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C442D214();
      v27 = v83;
    }

    v21 = latitude.value._object;
    sub_1C4400B04();
    if (v38)
    {
      sub_1C440791C();
      v27 = v84;
    }

    sub_1C4412374();
    v51[4] = 0x64757469676E6F6CLL;
    v51[5] = 0xE900000000000065;
    v51[6] = latitude.value._object;
    v51[7] = longitude.value._countAndFlagsBits;
    sub_1C4404B30(v51);
  }

  if (isHome.value._countAndFlagsBits)
  {
    if ((sub_1C44328B8() & 1) == 0)
    {
      sub_1C442D214();
      v27 = v85;
    }

    sub_1C440B158();
    if (v38)
    {
      sub_1C440791C();
      v27 = v86;
    }

    sub_1C43FDCF8();
    v52[4] = 0xD000000000000018;
    v52[5] = v21;
    v52[6] = longitude.value._object;
    v52[7] = isHome.value._countAndFlagsBits;
    sub_1C4404B30(v52);
  }

  if (horizontalAccuracy.value._countAndFlagsBits)
  {
    if ((sub_1C44328B8() & 1) == 0)
    {
      sub_1C442D214();
      v27 = v87;
    }

    sub_1C440B158();
    if (v38)
    {
      sub_1C440791C();
      v27 = v88;
    }

    sub_1C43FDCF8();
    v53[4] = 0xD000000000000012;
    v53[5] = v21;
    v53[6] = isHome.value._object;
    v53[7] = horizontalAccuracy.value._countAndFlagsBits;
    sub_1C4404B30(v53);
  }

  retstr->mapLocation = mapLocation;
  retstr->identifier = identifier;
  retstr->basicProperties._rawValue = v27;
}

uint64_t sub_1C4AD8818(uint64_t a1)
{
  v2 = sub_1C4AD8D6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4AD8854(uint64_t a1)
{
  v2 = sub_1C4AD8D6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PostalAddress.encode(to:)(void *a1)
{
  v3 = sub_1C456902C(&qword_1EC0C2FF0, &unk_1C4F4EB70);
  sub_1C43FCDF8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  v9 = v1[2];
  v15 = v1[3];
  v16 = v9;
  v14 = v1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4AD8D6C();
  sub_1C4F02BF8();
  v21 = 0;
  v10 = v17;
  sub_1C4F02798();
  if (!v10)
  {
    v11 = v14;
    v20 = 1;
    sub_1C4F02738();
    v18 = v11;
    v19 = 2;
    sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
    sub_1C458A9D8(&qword_1EC0B8728, sub_1C458A984, MEMORY[0x1E69E6300]);
    sub_1C4F027E8();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t PostalAddress.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1C456902C(&qword_1EC0C3000, &qword_1C4F4EB80);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4409678(a1, a1[3]);
  sub_1C4AD8D6C();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  v6 = sub_1C4F02678();
  v14 = v7;
  v12 = sub_1C4F02618();
  v13 = v8;
  sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
  sub_1C458A9D8(&qword_1EC0B8740, sub_1C458AA50, MEMORY[0x1E69E6330]);
  sub_1C4F026C8();
  v9 = sub_1C4413694();
  v10(v9);
  *a2 = v6;
  a2[1] = v14;
  a2[2] = v12;
  a2[3] = v13;
  a2[4] = v15;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C440962C(a1);
}

unint64_t sub_1C4AD8D6C()
{
  result = qword_1EC0C2FF8;
  if (!qword_1EC0C2FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2FF8);
  }

  return result;
}

unint64_t sub_1C4AD8DC0(uint64_t a1)
{
  result = sub_1C4AD8DE8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C4AD8DE8()
{
  result = qword_1EC0C3008;
  if (!qword_1EC0C3008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3008);
  }

  return result;
}

unint64_t sub_1C4AD8E3C(uint64_t a1)
{
  *(a1 + 8) = sub_1C4AD8E6C();
  result = sub_1C4AD8EC0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C4AD8E6C()
{
  result = qword_1EC0C3010;
  if (!qword_1EC0C3010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3010);
  }

  return result;
}

unint64_t sub_1C4AD8EC0()
{
  result = qword_1EC0C3018;
  if (!qword_1EC0C3018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3018);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PostalAddress.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_1C4AD9004()
{
  result = qword_1EC0C3020;
  if (!qword_1EC0C3020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3020);
  }

  return result;
}

unint64_t sub_1C4AD905C()
{
  result = qword_1EC0C3028;
  if (!qword_1EC0C3028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3028);
  }

  return result;
}

unint64_t sub_1C4AD90B4()
{
  result = qword_1EC0C3030;
  if (!qword_1EC0C3030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3030);
  }

  return result;
}

uint64_t sub_1C4AD9108(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C4F01108();
  v3 = sub_1C4F01108();
  v4 = PPSCreateTelemetryIdentifier();

  if (!v4)
  {
  }

  return v4;
}

uint64_t sub_1C4AD91A4()
{
  result = sub_1C4AD9108(0x6164705577656976, 0xEA00000000006574);
  qword_1EDE2DD18 = result;
  unk_1EDE2DD20 = v1;
  qword_1EDE2DD28 = v2;
  return result;
}

uint64_t PredicatePresenceBlockingFunction.init(predicates:relationshipPredicates:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1C4AD9268(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C4F02938();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C4AD9308()
{
  sub_1C4F02AF8();
  sub_1C450EFDC();
  return sub_1C4F02B68();
}

uint64_t sub_1C4AD9350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4AD9268(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C4AD93B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C4415EFC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C4AD93E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1C4AD943C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t ProgressToken.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a5;
  v35 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v37 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ProgressToken.CodingKeys(255, v10, v11, v12);
  sub_1C441A380();
  swift_getWitnessTable();
  v38 = sub_1C4F02708();
  sub_1C43FCDF8();
  v33 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29 - v15;
  v34 = a2;
  v36 = a3;
  v17 = type metadata accessor for ProgressToken(0, a2, a3, a4);
  sub_1C43FCDF8();
  v31 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v29 - v20;
  sub_1C4409678(a1, a1[3]);
  v22 = v39;
  sub_1C4F02BC8();
  if (!v22)
  {
    v30 = v21;
    v39 = v17;
    v24 = v33;
    v23 = v34;
    v25 = v35;
    v26 = v37;
    sub_1C4F026C8();
    (*(v24 + 8))(v16, v38);
    v27 = v30;
    (*(v25 + 32))(v30, v26, v23);
    (*(v31 + 32))(v32, v27, v39);
  }

  return sub_1C440962C(a1);
}

uint64_t sub_1C4AD97E8()
{
  v20 = v0;
  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v1 = sub_1C4F00978();
  sub_1C442B738(v1, qword_1EDE2DE10);

  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 136315138;
    v6 = sub_1C485224C();
    v8 = sub_1C441D828(v6, v7, &v19);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1C43F8000, v2, v3, "Pipeline: %s: promoting Resolver KVStore to production...", v4, 0xCu);
    sub_1C440962C(v5);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  v9._object = 0x80000001C4FB0C10;
  v9._countAndFlagsBits = 0xD000000000000017;
  KeyValueStore.copyAllKeyValues(to:clearCurrentDomain:clearNewDomain:)(v9, 1, 1);

  v10 = sub_1C4F00968();
  v11 = sub_1C4F01CF8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    v14 = sub_1C485224C();
    v16 = sub_1C441D828(v14, v15, &v19);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1C43F8000, v10, v11, "Pipeline: %s: promoting construction table to production...", v12, 0xCu);
    sub_1C440962C(v13);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  sub_1C4873B00();
  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1C4AD9A74()
{

  return v0;
}

uint64_t sub_1C4AD9AA4()
{
  sub_1C4AD9A74();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4AD9AD8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44A7DA0;

  return sub_1C4AD97C8();
}

unint64_t sub_1C4AD9B6C(uint64_t a1)
{
  result = sub_1C4AD9B94();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C4AD9B94()
{
  result = qword_1EDDE1A08;
  if (!qword_1EDDE1A08)
  {
    type metadata accessor for PromoteConstructionPhase();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE1A08);
  }

  return result;
}

uint64_t sub_1C4AD9BE8()
{
  sub_1C456902C(&qword_1EC0C3048, &unk_1C4F4F0B0);
  swift_allocObject();
  result = sub_1C4CE507C();
  qword_1EC152B90 = result;
  return result;
}

uint64_t sub_1C4AD9C34()
{
  sub_1C44F920C();
  result = static NSUserDefaults.sqlite3ReducedCacheSpillSize.getter();
  qword_1EC152B98 = result;
  return result;
}

uint64_t sub_1C4AD9C68()
{
  sub_1C4F02248();

  v0 = sub_1C4EF98E8();
  MEMORY[0x1C6940010](v0);

  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return 0x617461444449513CLL;
}

char *sub_1C4AD9D08(uint64_t a1)
{
  v2 = v1;
  v35 = *v1;
  v4 = sub_1C4F00D88();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1C4EFB148();
  sub_1C43FCDF8();
  v39 = v6;
  v40 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v37 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  v11 = sub_1C4EF98F8();
  sub_1C43FCDF8();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C441A398();
  sub_1C4EF9888();
  v17 = OBJC_IVAR____TtC24IntelligencePlatformCore11QIDDatabase_url;
  (*(v13 + 32))(&v2[OBJC_IVAR____TtC24IntelligencePlatformCore11QIDDatabase_url], v16, v11);
  v33 = OBJC_IVAR____TtC24IntelligencePlatformCore11QIDDatabase_config;
  sub_1C44098F0(a1, &v2[OBJC_IVAR____TtC24IntelligencePlatformCore11QIDDatabase_config]);
  v18 = *(v13 + 16);
  v34 = v17;
  v18(v16, &v2[v17], v11);
  v19 = sub_1C4EF98E8();
  v32 = *(v13 + 8);
  v32(v16, v11);
  sub_1C4EFB138();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v36 = v19;
  sub_1C4EFB108();
  sub_1C4F00D68();
  sub_1C4EFB0E8();
  sub_1C4EFB0D8();
  v20 = *(type metadata accessor for Configuration(0) + 20);
  v38 = a1;
  v21 = (a1 + v20);
  v23 = *v21;
  v22 = v21[1];
  if (qword_1EDDFEC70 != -1)
  {
    swift_once();
  }

  v24 = v39;
  if ((xmmword_1EDDFEC78 & ~v23) != 0 || (*(&xmmword_1EDDFEC78 + 1) & v22) != *(&xmmword_1EDDFEC78 + 1))
  {
    if (qword_1EDDFEC60 != -1)
    {
      swift_once();
    }

    if ((xmmword_1EDDFFAE0 & ~v23) == 0 && (*(&xmmword_1EDDFFAE0 + 1) & v22) == *(&xmmword_1EDDFFAE0 + 1))
    {
      *(swift_allocObject() + 16) = v35;
      sub_1C4EFB0C8();
    }
  }

  else
  {
    sub_1C4EFB0C8();
  }

  v25 = v40;
  (*(v24 + 16))(v37, v10, v40);
  sub_1C4EFAFC8();
  swift_allocObject();
  v26 = v41;
  v27 = sub_1C4EFAF68();
  v28 = v24;
  if (v26)
  {
    sub_1C4467948(v38);
    (*(v24 + 8))(v10, v25);
    v32(&v2[v34], v11);
    sub_1C4467948(&v2[v33]);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v29 = v27;
    sub_1C4467948(v38);
    (*(v28 + 8))(v10, v25);
    *&v2[OBJC_IVAR____TtC24IntelligencePlatformCore11QIDDatabase_pool] = v29;
  }

  return v2;
}

uint64_t sub_1C4ADA214()
{
  v0 = sub_1C4EFB768();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFB758();
  sub_1C4EFBFF8();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1C4ADA310()
{
  v0 = sub_1C4EFB768();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 0;
  v7 = 0xE000000000000000;
  sub_1C4F02248();

  v6 = 0xD000000000000015;
  v7 = 0x80000001C4F8D6D0;
  if (qword_1EC0B7090 != -1)
  {
    swift_once();
  }

  v8 = qword_1EC152B98;
  v4 = sub_1C4F02858();
  MEMORY[0x1C6940010](v4);

  sub_1C4EFB758();
  sub_1C4EFBFF8();
  (*(v1 + 8))(v3, v0);
}

uint64_t sub_1C4ADA4B8()
{
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore11QIDDatabase_url;
  v2 = sub_1C4EF98F8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1C4467948(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore11QIDDatabase_config);

  return v0;
}

uint64_t sub_1C4ADA538()
{
  sub_1C4ADA4B8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for QIDDatabase(uint64_t a1)
{
  result = qword_1EC0C3038;
  if (!qword_1EC0C3038)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4ADA5E4()
{
  if (qword_1EC0B7088 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1C4ADA698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v19 - v14;
  (*(a5 + 24))(a3, a5, v13);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v12 + 8))(v15, AssociatedTypeWitness);
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = v20;
  v26 = a2;
  v27 = a1;
  v17 = sub_1C4F017A8();
  sub_1C4776EE0(sub_1C4ADAF7C, v21, v17);

  return v28;
}

uint64_t sub_1C4ADA854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t *a6@<X8>)
{
  v60 = a2;
  v68 = a5;
  v61 = a3;
  v58 = a1;
  v51 = a6;
  v7 = sub_1C4EFD678();
  v53 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v52 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1C4EFB8C8();
  v66 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v55 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v65 = &v51 - v11;
  v12 = sub_1C4EFF658();
  v56 = *(v12 - 8);
  v57 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v51 - v19;
  v21 = sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v51 - v22;
  v24 = sub_1C4EFF8F8();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v51 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4ADAFA0(v60, v23);
  v28 = sub_1C44157D4(v23, 1, v24);
  v54 = v24;
  v63 = v7;
  v64 = v25;
  if (v28 == 1)
  {
    v29 = v7;
    v30 = v14;
    sub_1C440BAA8(v20, 1, 1, v29);
    sub_1C4EFF8C8();
    if (sub_1C44157D4(v23, 1, v24) != 1)
    {
      sub_1C4423A0C(v23, &qword_1EC0BAA00, &unk_1C4F17400);
    }
  }

  else
  {
    v30 = v14;
    (*(v25 + 32))(v27, v23, v24);
  }

  v31 = v68;
  sub_1C4EFADB8();
  (*(v31 + 24))(a4, v31);
  v32 = v30;
  sub_1C4EFF648();
  v67[3] = sub_1C4EFB298();
  v67[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v67);
  sub_1C4EFDCA8();
  v33 = v65;
  sub_1C4EFAE28();
  sub_1C440962C(v67);
  sub_1C4EFF8E8();
  v34 = v63;
  v35 = v27;
  if (sub_1C44157D4(v17, 1, v63) == 1)
  {
    sub_1C4423A0C(v17, &unk_1EC0C07E0, &unk_1C4F168F0);
    v36 = v66;
    v37 = v64;
    v38 = v62;
  }

  else
  {
    v39 = v53;
    v40 = *(v53 + 32);
    v61 = v32;
    v41 = v27;
    v42 = v52;
    v40(v52, v17, v34);
    sub_1C4EFD658();
    v38 = v62;
    swift_getWitnessTable();
    v43 = v55;
    sub_1C4EFB308();

    v44 = v42;
    v35 = v41;
    v32 = v61;
    (*(v39 + 8))(v44, v34);
    v36 = v66;
    (*(v66 + 8))(v33, v38);
    (*(v36 + 32))(v33, v43, v38);
    v37 = v64;
  }

  result = sub_1C4EFF8D8();
  if ((v46 & 1) == 0)
  {
    if (result < 0)
    {
      __break(1u);
      return result;
    }

    swift_getWitnessTable();
    v47 = v55;
    sub_1C4EFB608();
    (*(v36 + 8))(v33, v38);
    (*(v36 + 32))(v33, v47, v38);
  }

  swift_getWitnessTable();
  v48 = v59;
  v49 = sub_1C4EFAFE8();
  if (v48)
  {
    (*(v36 + 8))(v33, v38);
    (*(v56 + 8))(v32, v57);
    return (*(v37 + 8))(v35, v54);
  }

  else
  {
    v50 = v49;
    (*(v36 + 8))(v33, v38);
    (*(v56 + 8))(v32, v57);
    result = (*(v37 + 8))(v35, v54);
    *v51 = v50;
  }

  return result;
}

uint64_t sub_1C4ADAFA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4ADB014(unint64_t a1)
{
  v4 = sub_1C4EF9488();
  v193 = *(v4 - 8);
  v194 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v192 = &v187 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = 39;
  v212 = 0xE100000000000000;
  v7 = *(a1 + 88);
  v205 = *(a1 + 96);
  MEMORY[0x1C6940010](v7, v5);
  MEMORY[0x1C6940010](0x7361622053412027, 0xE900000000000065);
  v195 = v211;
  v197 = v212;
  v8 = MEMORY[0x1E69E7CC0];
  v214 = MEMORY[0x1E69E7CC0];
  sub_1C440F1BC();
  swift_beginAccess();
  v9 = *(a1 + 48);
  v10 = *(v9 + 16);
  v203 = a1;
  if (v10)
  {
    v204 = v7;
    *&v210[0] = v8;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44CD9C0(0, v10, 0);
    v8 = *&v210[0];
    v11 = (v9 + 40);
    v2 = 0xE500000000000000;
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      sub_1C4407940();
      v211 = v14;
      v212 = 0xE500000000000000;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](v12, v13);

      v16 = v211;
      v15 = v212;
      *&v210[0] = v8;
      v18 = *(v8 + 16);
      v17 = *(v8 + 24);
      v1 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        sub_1C43FCFE8(v17);
        sub_1C44328D4();
        sub_1C44CD9C0(v20, v21, v22);
        v8 = *&v210[0];
      }

      *(v8 + 16) = v1;
      v19 = v8 + 16 * v18;
      *(v19 + 32) = v16;
      *(v19 + 40) = v15;
      v11 += 2;
      --v10;
    }

    while (v10);

    a1 = v203;
    v7 = v204;
  }

  if (!*(v8 + 16))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C443D664();
      v8 = v185;
    }

    v24 = *(v8 + 16);
    v23 = *(v8 + 24);
    v25 = v8;
    if (v24 >= v23 >> 1)
    {
      sub_1C43FFD98(v23);
      sub_1C443D664();
      v25 = v186;
    }

    *(v25 + 16) = v24 + 1;
    v8 = v25;
    v26 = v25 + 16 * v24;
    *(v26 + 32) = 0x2A2E65736162;
    *(v26 + 40) = 0xE600000000000000;
  }

  v27 = *(a1 + 24);
  if (v27)
  {
    v1 = v8;
    v28 = *(a1 + 16);
    v211 = 0xD00000000000002BLL;
    v212 = 0x80000001C4FB0C70;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](v7, v205);
    MEMORY[0x1C6940010](15145, 0xE200000000000000);
    v29 = v211;
    v30 = v212;
    v31 = MEMORY[0x1E69E7CC0];
    sub_1C4412380();
    sub_1C458D184();
    v33 = v32;
    v2 = *(v32 + 16);
    v34 = *(v32 + 24);
    if (v2 >= v34 >> 1)
    {
      sub_1C43FFD98(v34);
      sub_1C458D184();
      v33 = v181;
    }

    *(v33 + 16) = v2 + 1;
    v200 = v33;
    v35 = v33 + 32 * v2;
    *(v35 + 32) = v29;
    *(v35 + 40) = v30;
    *(v35 + 48) = v31;
    *(v35 + 56) = 1;
    v211 = 0x2728686372616573;
    v212 = 0xE800000000000000;
    MEMORY[0x1C6940010](v28, v27);

    MEMORY[0x1C6940010](0x73205341202927, 0xE700000000000000);
    v36 = v211;
    v37 = v212;
    sub_1C4412380();
    sub_1C458D0C4();
    v39 = v38;
    v41 = *(v38 + 16);
    v40 = *(v38 + 24);
    if (v41 >= v40 >> 1)
    {
      sub_1C43FFD98(v40);
      sub_1C458D0C4();
      v39 = v182;
    }

    a1 = v203;
    *(v39 + 16) = v41 + 1;
    v204 = v39;
    v42 = v39 + 48 * v41;
    *(v42 + 32) = v36;
    *(v42 + 40) = v37;
    *(v42 + 48) = 0x63656A6275732E73;
    *(v42 + 56) = 0xE900000000000074;
    strcpy((v42 + 64), "base.subject");
    *(v42 + 77) = 0;
    *(v42 + 78) = -5120;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C43FCEC0();
      sub_1C443D664();
      v1 = v183;
    }

    v44 = *(v1 + 16);
    v43 = *(v1 + 24);
    v45 = v1;
    if (v44 >= v43 >> 1)
    {
      sub_1C43FFD98(v43);
      sub_1C443D664();
      v45 = v184;
    }

    *(v45 + 16) = v44 + 1;
    v8 = v45;
    v46 = v45 + 16 * v44;
    *(v46 + 32) = 0xD000000000000015;
    *(v46 + 40) = 0x80000001C4FB0CA0;
    v202 = 0x80000001C4FB0CC0;
    v196 = 0xD000000000000019;
  }

  else
  {
    v196 = 0;
    v202 = 0xE000000000000000;
    v204 = MEMORY[0x1E69E7CC0];
    v200 = MEMORY[0x1E69E7CC0];
  }

  v201 = v8;
  sub_1C440F1BC();
  swift_beginAccess();
  v47 = *(a1 + 40);
  v48 = *(v47 + 16);
  if (v48)
  {
    *&v208 = MEMORY[0x1E69E7CC0];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C440B168();
    v49 = v208;
    v205 = v47;
    v50 = v47 + 32;
    do
    {
      sub_1C46E19E0(v50, &v211);
      sub_1C4407940();
      *&v210[0] = v51;
      *(&v210[0] + 1) = 0xE500000000000000;
      MEMORY[0x1C6940010]();
      v52 = v210[0];
      sub_1C4ADC53C(&v211);
      sub_1C440363C();
      if (v54)
      {
        sub_1C43FCFE8(v53);
        sub_1C44328D4();
        sub_1C44CD9C0(v55, v56, v57);
        v49 = v208;
      }

      *(v49 + 16) = v1;
      *(v49 + 16 * v2 + 32) = v52;
      v50 += 56;
      --v48;
    }

    while (v48);
    v191 = v49;

    a1 = v203;
    v58 = *(v203 + 40);
    v1 = *(v58 + 16);
    if (v1)
    {
      v59 = v58 + 32;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v60 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1C46E19E0(v59, &v211);
        sub_1C46E0B60(v213, &v208);
        sub_1C4ADC53C(&v211);
        if (v209)
        {
          sub_1C441D670(&v208, v210);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C43FCEC0();
            sub_1C458D008();
            v60 = v63;
          }

          v62 = *(v60 + 16);
          v61 = *(v60 + 24);
          if (v62 >= v61 >> 1)
          {
            sub_1C43FCFE8(v61);
            sub_1C4412380();
            sub_1C458D008();
            v60 = v64;
          }

          *(v60 + 16) = v62 + 1;
          sub_1C441D670(v210, v60 + 40 * v62 + 32);
        }

        else
        {
          sub_1C4ADC590(&v208);
        }

        v59 += 56;
        --v1;
      }

      while (v1);

      a1 = v203;
    }

    else
    {
      v60 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v60 = MEMORY[0x1E69E7CC0];
    v191 = MEMORY[0x1E69E7CC0];
  }

  sub_1C49D43F0(v60);
  sub_1C440F1BC();
  swift_beginAccess();
  v65 = *(a1 + 56);
  v66 = *(v65 + 16);
  if (v66)
  {
    v211 = 0x59422050554F5247;
    v212 = 0xE900000000000020;
    *&v208 = MEMORY[0x1E69E7CC0];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C440B168();
    v67 = v208;
    v205 = v65;
    v68 = (v65 + 40);
    do
    {
      v69 = *(v68 - 1);
      v70 = *v68;
      sub_1C4407940();
      *&v210[0] = v71;
      *(&v210[0] + 1) = 0xE500000000000000;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](v69, v70);

      v2 = *(&v210[0] + 1);
      v72 = *&v210[0];
      *&v208 = v67;
      v74 = *(v67 + 16);
      v73 = *(v67 + 24);
      v1 = v74 + 1;
      if (v74 >= v73 >> 1)
      {
        sub_1C43FCFE8(v73);
        sub_1C44328D4();
        sub_1C44CD9C0(v76, v77, v78);
        v67 = v208;
      }

      *(v67 + 16) = v1;
      v75 = v67 + 16 * v74;
      *(v75 + 32) = v72;
      *(v75 + 40) = v2;
      v68 += 2;
      --v66;
    }

    while (v66);

    *&v210[0] = v67;
    v79 = sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C443D694();
    sub_1C4F01048();
    sub_1C43FDD04();
    MEMORY[0x1C6940010](v79, 0);

    v189 = v211;
    v190 = v212;
    a1 = v203;
  }

  else
  {
    v189 = 0;
    v190 = 0xE000000000000000;
  }

  sub_1C440F1BC();
  swift_beginAccess();
  v80 = *(a1 + 64);
  v81 = *(v80 + 16);
  if (v81)
  {
    *&v208 = MEMORY[0x1E69E7CC0];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C440B168();
    v82 = v208;
    v205 = v80;
    v83 = v80 + 32;
    do
    {
      sub_1C46E19E0(v83, &v211);
      sub_1C4407940();
      *&v210[0] = v84;
      *(&v210[0] + 1) = 0xE500000000000000;
      MEMORY[0x1C6940010]();
      v85 = v210[0];
      sub_1C4ADC53C(&v211);
      sub_1C440363C();
      if (v54)
      {
        sub_1C43FCFE8(v86);
        sub_1C44328D4();
        sub_1C44CD9C0(v87, v88, v89);
        v82 = v208;
      }

      *(v82 + 16) = v1;
      *(v82 + 16 * v2 + 32) = v85;
      v83 += 56;
      --v81;
    }

    while (v81);
    v188 = v82;

    a1 = v203;
    v90 = *(v203 + 64);
    v91 = *(v90 + 16);
    if (v91)
    {
      v81 = v90 + 32;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v92 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1C46E19E0(v81, &v211);
        sub_1C46E0B60(v213, &v208);
        sub_1C4ADC53C(&v211);
        if (v209)
        {
          sub_1C441D670(&v208, v210);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C43FCEC0();
            sub_1C458D008();
            v92 = v95;
          }

          v94 = *(v92 + 16);
          v93 = *(v92 + 24);
          if (v94 >= v93 >> 1)
          {
            sub_1C43FCFE8(v93);
            sub_1C4412380();
            sub_1C458D008();
            v92 = v96;
          }

          *(v92 + 16) = v94 + 1;
          sub_1C441D670(v210, v92 + 40 * v94 + 32);
        }

        else
        {
          sub_1C4ADC590(&v208);
        }

        v81 += 56;
        --v91;
      }

      while (v91);

      a1 = v203;
    }

    else
    {
      v92 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v92 = MEMORY[0x1E69E7CC0];
    v188 = MEMORY[0x1E69E7CC0];
  }

  sub_1C49D43F0(v92);
  sub_1C440F1BC();
  swift_beginAccess();
  if (*(*(a1 + 32) + 16))
  {

    v97 = *(a1 + 32);
    v98 = *(v97 + 16);
    v81 = MEMORY[0x1E69E7CC0];
    if (v98)
    {
      *&v208 = MEMORY[0x1E69E7CC0];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44CD9C0(0, v98, 0);
      v99 = 0;
      v100 = (v97 + 48);
      v81 = v208;
      v205 = v97;
      while (v99 < *(v97 + 16))
      {
        v101 = *(v100 - 2);
        v102 = *(v100 - 1);
        v103 = *v100;
        *&v210[0] = v101;
        *(&v210[0] + 1) = v102;
        swift_bridgeObjectRetain_n();
        MEMORY[0x1C6940010](32, 0xE100000000000000);
        if (v103)
        {
          v104 = 1129530692;
        }

        else
        {
          v104 = 4412225;
        }

        if (v103)
        {
          v105 = 0xE400000000000000;
        }

        else
        {
          v105 = 0xE300000000000000;
        }

        MEMORY[0x1C6940010](v104, v105);

        v107 = *(&v210[0] + 1);
        v106 = *&v210[0];
        v108 = v101 == 0x725F686372616573 && v102 == 0xEB000000006B6E61;
        if (v108 || (sub_1C4F02938() & 1) != 0)
        {
        }

        else
        {
          sub_1C4407940();
          *&v210[0] = v109;
          *(&v210[0] + 1) = 0xE500000000000000;
          MEMORY[0x1C6940010](v106, v107);

          v107 = *(&v210[0] + 1);
          v106 = *&v210[0];
        }

        *&v208 = v81;
        v111 = *(v81 + 16);
        v110 = *(v81 + 24);
        v92 = v111 + 1;
        if (v111 >= v110 >> 1)
        {
          v113 = sub_1C43FCFE8(v110);
          sub_1C44CD9C0(v113, v111 + 1, 1);
          v81 = v208;
        }

        ++v99;
        *(v81 + 16) = v92;
        v112 = v81 + 16 * v111;
        *(v112 + 32) = v106;
        *(v112 + 40) = v107;
        v100 += 24;
        v97 = v205;
        if (v98 == v99)
        {

          goto LABEL_88;
        }
      }

      goto LABEL_120;
    }

LABEL_88:
    *&v210[0] = 0x594220524544524FLL;
    *(&v210[0] + 1) = 0xE900000000000020;
    *&v208 = v81;
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C443D694();
    sub_1C44176D0();
    v114 = sub_1C4F01048();
    v116 = v115;

    MEMORY[0x1C6940010](v114, v116);

    v202 = *(&v210[0] + 1);
    v196 = *&v210[0];
    a1 = v203;
  }

  if (*(a1 + 80))
  {
    v117 = 0;
    v118 = 0xE000000000000000;
  }

  else
  {
    v119 = *(a1 + 72);
    *&v210[0] = 0x2054494D494CLL;
    *(&v210[0] + 1) = 0xE600000000000000;
    *&v208 = v119;
    v120 = sub_1C4F02858();
    MEMORY[0x1C6940010](v120);

    v118 = *(&v210[0] + 1);
    v117 = *&v210[0];
  }

  *&v210[0] = 0x205443454C4553;
  *(&v210[0] + 1) = 0xE700000000000000;
  *&v208 = v201;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v121 = sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C443D694();
  sub_1C44176D0();
  v198 = v122;
  v199 = v121;
  sub_1C4F01048();
  sub_1C43FDD04();
  MEMORY[0x1C6940010](v121, v81);

  MEMORY[0x1C6940010](0x204D4F52460ALL, 0xE600000000000000);
  MEMORY[0x1C6940010](v195, v197);
  v123 = sub_1C4400714();
  MEMORY[0x1C6940010](v123);
  v81 = v204;
  v99 = *(v204 + 16);
  if (v99)
  {
    v187 = v117;
    v195 = v118;
    v206 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0(0, v99, 0);
    v92 = 0;
    v124 = v206;
    v125 = (v81 + 72);
    v203 = v99;
    while (v92 < *(v81 + 16))
    {
      v126 = *(v125 - 5);
      v127 = *(v125 - 4);
      v129 = *(v125 - 3);
      v128 = *(v125 - 2);
      v130 = *v125;
      v205 = *(v125 - 1);
      *&v208 = 0;
      *(&v208 + 1) = 0xE000000000000000;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F02248();

      *&v208 = 0x4F4A2052454E4E49;
      *(&v208 + 1) = 0xEB00000000204E49;
      MEMORY[0x1C6940010](v126, v127);
      MEMORY[0x1C6940010](542002976, 0xE400000000000000);
      MEMORY[0x1C6940010](v129, v128);
      MEMORY[0x1C6940010](2112800, 0xE300000000000000);
      MEMORY[0x1C6940010](v205, v130);

      v131 = v208;
      v206 = v124;
      v133 = *(v124 + 16);
      v132 = *(v124 + 24);
      if (v133 >= v132 >> 1)
      {
        v134 = sub_1C43FCFE8(v132);
        sub_1C44CD9C0(v134, v133 + 1, 1);
        v124 = v206;
      }

      ++v92;
      *(v124 + 16) = v133 + 1;
      *(v124 + 16 * v133 + 32) = v131;
      v125 += 6;
      v99 = v203;
      v81 = v204;
      if (v203 == v92)
      {

        *&v208 = v124;
        sub_1C4400714();
        v135 = sub_1C4F01048();
        v137 = v136;

        v118 = v195;
        v117 = v187;
        goto LABEL_100;
      }
    }

    __break(1u);
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  v135 = 0;
  v137 = 0xE000000000000000;
LABEL_100:
  MEMORY[0x1C6940010](v135, v137);

  v138 = sub_1C4400714();
  MEMORY[0x1C6940010](v138);
  if (*(v191 + 16))
  {
    *&v208 = 0x204552454857;
    *(&v208 + 1) = 0xE600000000000000;
    v206 = v191;
    v139 = sub_1C440E6B0();
    v141 = v140;

    MEMORY[0x1C6940010](v139, v141);

    v143 = *(&v208 + 1);
    v142 = v208;
  }

  else
  {

    v142 = 0;
    v143 = 0xE000000000000000;
  }

  MEMORY[0x1C6940010](v142, v143);

  v144 = sub_1C4400714();
  MEMORY[0x1C6940010](v144);
  v145 = v190;
  MEMORY[0x1C6940010](v189, v190);

  v146 = sub_1C4400714();
  MEMORY[0x1C6940010](v146);
  if (*(v188 + 16))
  {
    *&v208 = 0x20474E49564148;
    *(&v208 + 1) = 0xE700000000000000;
    v206 = v188;
    sub_1C440E6B0();
    sub_1C43FDD04();
    MEMORY[0x1C6940010](0x20444E4120, v145);

    v148 = *(&v208 + 1);
    v147 = v208;
  }

  else
  {

    v147 = 0;
    v148 = 0xE000000000000000;
  }

  MEMORY[0x1C6940010](v147, v148);

  v149 = sub_1C4400714();
  MEMORY[0x1C6940010](v149);
  MEMORY[0x1C6940010](v196, v202);

  v150 = sub_1C4400714();
  MEMORY[0x1C6940010](v150);
  MEMORY[0x1C6940010](v117, v118);

  v151 = *(&v210[0] + 1);
  v152 = *&v210[0];
  sub_1C4415EA8();
  while (1)
  {
    *&v210[0] = v152;
    *(&v210[0] + 1) = v151;
    *&v208 = 2570;
    *(&v208 + 1) = 0xE200000000000000;
    if ((sub_1C4F02048() & 1) == 0)
    {
      break;
    }

    v153 = objc_autoreleasePoolPush();
    *&v210[0] = v152;
    *(&v210[0] + 1) = v151;
    *&v208 = 2570;
    *(&v208 + 1) = 0xE200000000000000;
    v206 = 10;
    v207 = 0xE100000000000000;
    sub_1C440F1BC();
    v152 = sub_1C4F02008();
    v155 = v154;

    objc_autoreleasePoolPop(v153);
    v151 = v155;
  }

  *&v210[0] = v152;
  *(&v210[0] + 1) = v151;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v156 = v192;
  sub_1C4EF9448();
  v157 = sub_1C4F01FF8();
  v159 = v158;
  (*(v193 + 8))(v156, v194);

  *&v210[0] = v157;
  *(&v210[0] + 1) = v159;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](59, 0xE100000000000000);

  v81 = *(&v210[0] + 1);
  v92 = *&v210[0];
  v99 = v214;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v160 = v200;
    goto LABEL_111;
  }

LABEL_121:
  sub_1C43FCEC0();
  sub_1C458D184();
  v160 = v179;
LABEL_111:
  v162 = *(v160 + 16);
  v161 = *(v160 + 24);
  if (v162 >= v161 >> 1)
  {
    sub_1C43FFD98(v161);
    sub_1C458D184();
    v160 = v180;
  }

  *(v160 + 16) = v162 + 1;
  v163 = v160 + 32 * v162;
  *(v163 + 32) = v92;
  *(v163 + 40) = v81;
  *(v163 + 48) = v99;
  *(v163 + 56) = 0;
  if (qword_1EC0B6DE8 != -1)
  {
    swift_once();
  }

  v164 = sub_1C4F00978();
  sub_1C442B738(v164, qword_1EC152638);
  v165 = swift_allocObject();
  *(v165 + 16) = v160;
  swift_bridgeObjectRetain_n();
  v166 = sub_1C4F00968();
  v167 = sub_1C4F01CB8();
  v168 = swift_allocObject();
  *(v168 + 16) = 32;
  v169 = swift_allocObject();
  *(v169 + 16) = 8;
  v170 = swift_allocObject();
  *(v170 + 16) = sub_1C4ADC5F8;
  *(v170 + 24) = v165;
  v171 = swift_allocObject();
  *(v171 + 16) = sub_1C4AD71F0;
  *(v171 + 24) = v170;
  sub_1C456902C(&qword_1EC0BBF38, &unk_1C4F4B420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0C890;
  *(inited + 32) = sub_1C44549EC;
  *(inited + 40) = v168;
  *(inited + 48) = sub_1C44549F4;
  *(inited + 56) = v169;
  *(inited + 64) = sub_1C4454B88;
  *(inited + 72) = v171;
  swift_setDeallocating();
  sub_1C49E1614();
  if (os_log_type_enabled(v166, v167))
  {
    v173 = swift_slowAlloc();
    v174 = swift_slowAlloc();
    *&v210[0] = v174;
    *v173 = 136315138;
    v175 = sub_1C4ADC420(v160);
    v177 = sub_1C441D828(v175, v176, v210);

    *(v173 + 4) = v177;

    _os_log_impl(&dword_1C43F8000, v166, v167, "Commands: %s", v173, 0xCu);
    sub_1C440962C(v174);
    MEMORY[0x1C6942830](v174, -1, -1);
    MEMORY[0x1C6942830](v173, -1, -1);
  }

  else
  {
  }

  return v160;
}

uint64_t sub_1C4ADC420(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0(0, v1, 0);
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v7 = *(v11 + 16);
      v6 = *(v11 + 24);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v7 >= v6 >> 1)
      {
        sub_1C44CD9C0(v6 > 1, v7 + 1, 1);
      }

      *(v11 + 16) = v7 + 1;
      v8 = v11 + 16 * v7;
      *(v8 + 32) = v5;
      *(v8 + 40) = v4;
      v3 += 4;
      --v1;
    }

    while (v1);
  }

  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C443D694();
  v9 = sub_1C4F01048();

  return v9;
}

uint64_t sub_1C4ADC590(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0B9438, &unk_1C4F203C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4ADC610()
{
  if (qword_1EC0B70D8 != -1)
  {
    swift_once();
  }

  qword_1EC152BB8 = qword_1EC0C3768;
  unk_1EC152BC0 = *&qword_1EC0C3770;
  qword_1EC152BD0 = qword_1EC0C3780;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4ADC6EC(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0C3078, &qword_1C4F4F1F0);
  sub_1C43FCDF8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12[-v9];
  sub_1C4409678(a1, a1[3]);
  sub_1C4ADCE18();
  sub_1C4F02BF8();
  v15 = 0;
  sub_1C4F02798();
  if (!v2)
  {
    v14 = 1;
    sub_1C4F02738();
    v13 = *(v3 + 32);
    v12[15] = 2;
    sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
    sub_1C46D4190(&qword_1EC0B8728, sub_1C458A984, MEMORY[0x1E69E6300]);
    sub_1C4F027E8();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C4ADC8C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1C456902C(&qword_1EC0C3068, &unk_1C4F4F1E0);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4409678(a1, a1[3]);
  sub_1C4ADCE18();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  v6 = sub_1C4F02678();
  v8 = v7;
  v15 = v6;
  v13 = sub_1C4F02618();
  v14 = v9;
  sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
  sub_1C46D4190(&qword_1EC0B8740, sub_1C458AA50, MEMORY[0x1E69E6330]);
  sub_1C4F026C8();
  v10 = sub_1C4402F74();
  v11(v10);
  result = sub_1C440962C(a1);
  *a2 = v15;
  a2[1] = v8;
  a2[2] = v13;
  a2[3] = v14;
  a2[4] = v16;
  return result;
}

uint64_t sub_1C4ADCB40(uint64_t a1)
{
  v2 = sub_1C4ADCE18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4ADCB7C(uint64_t a1)
{
  v2 = sub_1C4ADCE18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4ADCBB8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC0B7098 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC152BD0;
  *a1 = qword_1EC152BB8;
  *(a1 + 8) = unk_1EC152BC0;
  *(a1 + 24) = v2;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

double sub_1C4ADCC64@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C4ADC8C8(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

unint64_t sub_1C4ADCCC4(uint64_t a1)
{
  result = sub_1C4ADCCEC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C4ADCCEC()
{
  result = qword_1EC0C3050;
  if (!qword_1EC0C3050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3050);
  }

  return result;
}

unint64_t sub_1C4ADCD40(uint64_t a1)
{
  *(a1 + 8) = sub_1C4ADCD70();
  result = sub_1C4ADCDC4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C4ADCD70()
{
  result = qword_1EC0C3058;
  if (!qword_1EC0C3058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3058);
  }

  return result;
}

unint64_t sub_1C4ADCDC4()
{
  result = qword_1EC0C3060;
  if (!qword_1EC0C3060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3060);
  }

  return result;
}

unint64_t sub_1C4ADCE18()
{
  result = qword_1EC0C3070;
  if (!qword_1EC0C3070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3070);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Relationship.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_1C4ADCF4C()
{
  result = qword_1EC0C3080;
  if (!qword_1EC0C3080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3080);
  }

  return result;
}

unint64_t sub_1C4ADCFA4()
{
  result = qword_1EC0C3088;
  if (!qword_1EC0C3088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3088);
  }

  return result;
}

unint64_t sub_1C4ADCFFC()
{
  result = qword_1EC0C3090;
  if (!qword_1EC0C3090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3090);
  }

  return result;
}

uint64_t RelationshipKeyValueStore.__allocating_init(config:)(uint64_t a1)
{
  v2 = swift_allocObject();
  RelationshipKeyValueStore.init(config:)(a1);
  return v2;
}

void *RelationshipKeyValueStore.init(config:)(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v14 - v9;
  sub_1C44098F0(a1, v14 - v9);
  type metadata accessor for KeyValueStore(0);
  swift_allocObject();
  v11 = KeyValueStore.init(config:domain:)(v10, 0xD000000000000013, 0x80000001C4FB0CE0);
  if (v2)
  {
    sub_1C4467948(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v3 + 16) = v11;
    sub_1C44098F0(a1, v7);
    swift_allocObject();
    v12 = KeyValueStore.init(config:domain:)(v7, 0xD000000000000018, 0x80000001C4FB0D00);
    sub_1C4467948(a1);
    *(v3 + 24) = v12;
  }

  return v3;
}

uint64_t RelationshipKeyValueStore.deinit()
{

  return v0;
}

uint64_t RelationshipKeyValueStore.__deallocating_deinit()
{
  RelationshipKeyValueStore.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4ADD398(uint64_t a1)
{
  result = type metadata accessor for Source(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PhaseStores(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C4ADD424()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44A7DA0;

  return sub_1C4496898();
}

uint64_t sub_1C4ADD4B0(uint64_t a1)
{
  result = sub_1C4497370(&qword_1EDDDEE78, type metadata accessor for RelationshipFullSourceIngestor, &unk_1C4F4F3A0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4ADD508(uint64_t a1)
{
  result = sub_1C4497370(&qword_1EDDDEE60, type metadata accessor for RelationshipFullSourceIngestor, &unk_1C4F4F3C8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4ADD560(uint64_t a1)
{
  result = sub_1C4497370(&qword_1EDDDEE68, type metadata accessor for RelationshipFullSourceIngestor, &unk_1C4F4F3E4);
  *(a1 + 8) = result;
  return result;
}

id sub_1C4ADD5B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v9 - v6;
  sub_1C4A480D4(a1, &v9 - v6);
  result = sub_1C4ADDC70(v7, 0);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C4ADD65C(unsigned __int8 a1)
{
  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x80000001C4F9AE80;
  *(inited + 48) = [objc_opt_self() featureValueWithInt64_];
  sub_1C4577DBC();
  return sub_1C4F00F28();
}

uint64_t sub_1C4ADD71C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6765746143707061 && a2 == 0xEF6570795479726FLL;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C4ADD7EC(char a1)
{
  if (a1)
  {
    return 0x6449656C646E7562;
  }

  else
  {
    return 0x6765746143707061;
  }
}

uint64_t sub_1C4ADD830(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v7 = sub_1C456902C(&qword_1EC0C30C8, &unk_1C4F4F620);
  sub_1C43FCDF8();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v14 - v11;
  sub_1C4409678(a1, a1[3]);
  sub_1C4ADE5D8();
  sub_1C4F02BF8();
  v17 = a2;
  v16 = 0;
  sub_1C4593C64();
  sub_1C4F027E8();
  if (!v4)
  {
    v15 = 1;
    sub_1C4F02798();
  }

  return (*(v9 + 8))(v12, v7);
}

uint64_t sub_1C4ADD9B0(void *a1)
{
  v3 = sub_1C456902C(&qword_1EC0C30B8, &qword_1C4F4F618);
  sub_1C43FCDF8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11[-v7];
  v9 = a1[3];
  sub_1C4409678(a1, v9);
  sub_1C4ADE5D8();
  sub_1C4F02BC8();
  if (!v1)
  {
    v11[14] = 0;
    sub_1C4593C10();
    sub_1C4F026C8();
    v9 = v11[15];
    v11[13] = 1;
    sub_1C4F02678();
    (*(v5 + 8))(v8, v3);
  }

  sub_1C440962C(a1);
  return v9;
}

uint64_t sub_1C4ADDB70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4ADD71C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4ADDB98(uint64_t a1)
{
  v2 = sub_1C4ADE5D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4ADDBD4(uint64_t a1)
{
  v2 = sub_1C4ADE5D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4ADDC10@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C4ADD9B0(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

id sub_1C4ADDC70(uint64_t a1, id a2)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E698F250]) init];
    v5 = [v4 remoteDevices];
    if (!v5)
    {
      sub_1C4F01678();
      v5 = sub_1C4F01658();
    }

    sub_1C4EF9AD8();
    v6 = sub_1C4F019C8();
    sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
    sub_1C4EF9AD8();
    v7 = sub_1C4F019C8();
    aBlock[4] = j__swift_unknownObjectRetain;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C4ADDE9C;
    aBlock[3] = &unk_1F43F9FA0;
    v8 = _Block_copy(aBlock);
    LOBYTE(v11) = 0;
    v9 = [v4 publishersForRemoteDevices:v5 startTime:v6 endTime:v7 maxEvents:0 lastN:0 reversed:0 includeLocal:v11 pipeline:v8];
    _Block_release(v8);

    v3 = [v9 merge];
  }

  sub_1C49C3CB4(a1);
  return v3;
}

id sub_1C4ADDE9C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t sub_1C4ADDF04(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4ADDF24, 0, 0);
}

uint64_t sub_1C4ADDF24()
{
  v29 = v0;
  if (![**(v0 + 96) nextEvent])
  {
LABEL_14:
    v25 = *(v0 + 88);
    v12 = sub_1C456902C(&qword_1EC0C0008, &qword_1C4F3E0E0);
    v14 = v25;
    v15 = 1;
    goto LABEL_15;
  }

  sub_1C4F02078();
  swift_unknownObjectRelease();
  sub_1C442B870(v0 + 16, v0 + 48);
  sub_1C456902C(&qword_1EC0B8608, &qword_1C4F3B4B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v16 = sub_1C4F00978();
    sub_1C442B738(v16, qword_1EDDFECB8);
    sub_1C442B870(v0 + 16, v0 + 48);
    v17 = sub_1C4F00968();
    v18 = sub_1C4F01CF8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      *v19 = 136315138;
      sub_1C4409678((v0 + 48), *(v0 + 72));
      swift_getDynamicType();
      v21 = sub_1C4F02C58();
      v23 = v22;
      sub_1C440962C((v0 + 48));
      v24 = sub_1C441D828(v21, v23, &v28);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_1C43F8000, v17, v18, "Unable to convert the nextEvent to BMStoreEvent - %s", v19, 0xCu);
      sub_1C440962C(v20);
      MEMORY[0x1C6942830](v20, -1, -1);
      MEMORY[0x1C6942830](v19, -1, -1);
    }

    else
    {

      sub_1C440962C((v0 + 48));
    }

    sub_1C440962C((v0 + 16));
    goto LABEL_14;
  }

  v1 = *(v0 + 80);
  v2 = [v1 eventBody];
  if (!v2)
  {

    goto LABEL_8;
  }

  v3 = v2;
  v4 = [v2 bundleID];
  if (!v4)
  {
    sub_1C4F01138();
    v4 = sub_1C4F01108();
  }

  v5 = *(v0 + 88);
  v6 = [objc_opt_self() categoryForBundleId_];

  v7 = sub_1C4592C7C(v6);
  v8 = [v3 bundleID];
  v9 = sub_1C4F01138();
  v11 = v10;

  [v1 timestamp];
  sub_1C4EF9AC8();
  LOBYTE(v8) = [v3 isStarting];

  sub_1C440962C((v0 + 16));
  v12 = sub_1C456902C(&qword_1EC0C0008, &qword_1C4F3E0E0);
  v13 = v5 + *(v12 + 32);
  *v13 = v7;
  *(v13 + 8) = v9;
  *(v13 + 16) = v11;
  *(v5 + *(v12 + 28)) = v8;
  v14 = v5;
  v15 = 0;
LABEL_15:
  sub_1C440BAA8(v14, v15, 1, v12);
  v26 = *(v0 + 8);

  return v26();
}

void sub_1C4ADE2D4(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v3;

  *a1 = v3;
}

uint64_t sub_1C4ADE308(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C4AA8100;

  return sub_1C4ADDF04(a1);
}

uint64_t sub_1C4ADE3A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_1C4ADE46C;

  return (sub_1C4981FA4)(a1, a2, a3, v3 + 16);
}

uint64_t sub_1C4ADE46C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1C4ADE584()
{
  result = qword_1EC0C30B0;
  if (!qword_1EC0C30B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C30B0);
  }

  return result;
}

unint64_t sub_1C4ADE5D8()
{
  result = qword_1EC0C30C0;
  if (!qword_1EC0C30C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C30C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RemoteAppCategoryContent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_1C4ADE734()
{
  result = qword_1EC0C30D0;
  if (!qword_1EC0C30D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C30D0);
  }

  return result;
}

unint64_t sub_1C4ADE78C()
{
  result = qword_1EC0C30D8;
  if (!qword_1EC0C30D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C30D8);
  }

  return result;
}

unint64_t sub_1C4ADE7E4()
{
  result = qword_1EC0C30E0;
  if (!qword_1EC0C30E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C30E0);
  }

  return result;
}

uint64_t AsyncSequence.removeDuplicates(by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4, v5);
  sub_1C4ADE948();
}

uint64_t sub_1C4ADE948()
{
  sub_1C43FDD20();
  v5 = v4;
  (*(*(v6 - 8) + 32))(v4, v7, v6);
  result = type metadata accessor for RemoveDuplicatesAsyncSequence(0, v1, v0, v8);
  v10 = (v5 + *(result + 36));
  *v10 = v3;
  v10[1] = v2;
  return result;
}

uint64_t RemoveDuplicatesAsyncSequence.makeAsyncIterator()(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  (*(v4 + 16))(v6, v2, v3, v8);
  sub_1C4F019A8();
  sub_1C4ADEB34();
}

uint64_t sub_1C4ADEB34()
{
  sub_1C43FDD20();
  v3 = v2;
  v5 = v4;
  v8 = type metadata accessor for RemoveDuplicatesAsyncSequence.Iterator(0, v6, v7, v6);
  v9 = *(v8 + 40);
  sub_1C43FD064();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C440BAA8(v5 + v9, 1, 1, AssociatedTypeWitness);
  sub_1C43FD064();
  v11 = swift_getAssociatedTypeWitness();
  result = (*(*(v11 - 8) + 32))(v5, v3, v11);
  v13 = (v5 + *(v8 + 36));
  *v13 = v1;
  v13[1] = v0;
  return result;
}

uint64_t RemoveDuplicatesAsyncSequence.Iterator.next()()
{
  sub_1C43FBCD4();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v1[5] = *(v2 + 24);
  v1[6] = *(v2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[7] = AssociatedTypeWitness;
  v5 = sub_1C4F01F48();
  v1[8] = v5;
  v1[9] = *(v5 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = *(AssociatedTypeWitness - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4ADED80()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 56);
  v5 = *(v0 + 32);
  v6 = *(*(v0 + 24) + 40);
  *(v0 + 200) = v6;
  v7 = *(v3 + 16);
  *(v0 + 128) = v7;
  *(v0 + 136) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v5 + v6, v2);
  if (sub_1C44157D4(v1, 1, v4) == 1)
  {
    (*(*(v0 + 72) + 8))(*(v0 + 96), *(v0 + 64));
    sub_1C43FD064();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    sub_1C440A544(AssociatedTypeWitness, v9, v10, v11, MEMORY[0x1E69E8728]);
    v12 = swift_task_alloc();
    *(v0 + 184) = v12;
    *v12 = v0;
    v12[1] = sub_1C4ADF52C;
  }

  else
  {
    v13 = *(v0 + 120);
    v14 = *(v0 + 96);
    v15 = *(v0 + 104);
    v16 = *(v0 + 56);
    v17 = *(v15 + 32);
    *(v0 + 144) = v17;
    *(v0 + 152) = (v15 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v17(v13, v14, v16);
    sub_1C43FD064();
    v18 = swift_getAssociatedTypeWitness();
    sub_1C440A544(v18, v19, v20, v21, MEMORY[0x1E69E8728]);
    v22 = swift_task_alloc();
    *(v0 + 160) = v22;
    *v22 = v0;
    sub_1C4407950(v22);
  }

  sub_1C440E6D0();

  return MEMORY[0x1EEE6D8C8](v23);
}

uint64_t sub_1C4ADEF54()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 168) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C4ADF050()
{
  sub_1C43FEAEC();
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  if (sub_1C44157D4(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 64);
    v4 = *(v0 + 72);
    v5 = *(v0 + 16);
    (*(*(v0 + 104) + 8))(*(v0 + 120), v2);
    (*(v4 + 8))(v1, v3);
    sub_1C440BAA8(v5, 1, 1, v2);
    sub_1C44328E0();

    sub_1C43FBDA0();

    return v6();
  }

  else
  {
    v9 = *(v0 + 24);
    v8 = *(v0 + 32);
    (*(v0 + 144))(*(v0 + 112), v1, v2);
    v13 = (*(v8 + *(v9 + 36)) + **(v8 + *(v9 + 36)));
    v10 = swift_task_alloc();
    *(v0 + 176) = v10;
    *v10 = v0;
    v10[1] = sub_1C4ADF238;
    v11 = *(v0 + 112);
    v12 = *(v0 + 120);

    return v13(v12, v11);
  }
}

uint64_t sub_1C4ADF238()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 204) = v3;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4ADF328()
{
  if (*(v0 + 204))
  {
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 56));
    sub_1C43FD064();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    sub_1C440A544(AssociatedTypeWitness, v2, v3, v4, MEMORY[0x1E69E8728]);
    v5 = swift_task_alloc();
    *(v0 + 160) = v5;
    *v5 = v0;
    sub_1C4407950(v5);
    sub_1C440E6D0();

    return MEMORY[0x1EEE6D8C8](v6);
  }

  else
  {
    v7 = *(v0 + 144);
    v8 = *(v0 + 200);
    v9 = *(v0 + 112);
    v10 = *(v0 + 104);
    v11 = *(v0 + 64);
    v12 = *(v0 + 72);
    v13 = *(v0 + 56);
    v14 = *(v0 + 32);
    v15 = *(v0 + 16);
    (*(v10 + 8))(*(v0 + 120), v13);
    (*(v12 + 8))(v14 + v8, v11);
    (*(v10 + 16))(v14 + v8, v9, v13);
    sub_1C440BAA8(v14 + v8, 0, 1, v13);
    v7(v15, v9, v13);
    sub_1C440BAA8(v15, 0, 1, v13);
    sub_1C44328E0();

    sub_1C43FBDA0();

    return v16();
  }
}

uint64_t sub_1C4ADF52C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 192) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C4ADF628()
{
  sub_1C43FEAEC();
  v1 = *(v0 + 128);
  v2 = *(v0 + 200);
  v3 = *(v0 + 64);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);
  (*(*(v0 + 72) + 40))(v4 + v2, *(v0 + 80), v3);
  v1(v5, v4 + v2, v3);
  sub_1C44328E0();

  sub_1C43FBDA0();

  return v6();
}

uint64_t sub_1C4ADF6F0()
{
  sub_1C43FEAEC();

  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C4ADF784()
{
  sub_1C43FEAEC();
  (*(v0[13] + 8))(v0[15], v0[7]);

  sub_1C43FBDA0();

  return v1();
}

uint64_t sub_1C4ADF834(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1C4ADF8D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C442E8C4;

  return RemoveDuplicatesAsyncSequence.Iterator.next()();
}

uint64_t sub_1C4ADF97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[3] = AssociatedTypeWitness;
  v6[4] = *(AssociatedTypeWitness - 8);
  v13 = swift_task_alloc();
  v6[5] = v13;
  v14 = swift_task_alloc();
  v6[6] = v14;
  *v14 = v6;
  v14[1] = sub_1C4ADFACC;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6, v13);
}

uint64_t sub_1C4ADFACC()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C43FBE64();
  *v4 = v3;
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;

  if (v0)
  {
    (*(v3[4] + 32))(v3[2], v3[5], v3[3]);
  }

  sub_1C43FBDA0();

  return v7();
}

uint64_t sub_1C4ADFC00(uint64_t a1)
{
  RemoveDuplicatesAsyncSequence.makeAsyncIterator()(a1);
  v3 = *(*(a1 - 8) + 8);

  return v3(v1, a1);
}

unint64_t sub_1C4ADFC60(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1C4A723C8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C4ADFCE8(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_1C44157D4(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C4ADFE24(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            sub_1C440BAA8(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1C4AE000C(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = sub_1C4A723C8();
    if (v3 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      result = sub_1C4F01F48();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C4AE00F0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  if (v7 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v7;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v6 + 64);
  v15 = *(v9 + 80);
  v16 = *(*(v8 - 8) + 64);
  if (!v10)
  {
    ++v16;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v13)
  {
    goto LABEL_30;
  }

  v17 = v16 + ((v15 + ((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v15);
  v18 = 8 * v17;
  if (v17 <= 3)
  {
    v21 = ((a2 - v13 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v21))
    {
      v19 = *(a1 + v17);
      if (!v19)
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

    if (v21 > 0xFF)
    {
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

    if (v21 < 2)
    {
LABEL_30:
      if (v7 == v13)
      {

        return sub_1C44157D4(a1, v7, AssociatedTypeWitness);
      }

      else
      {
        v23 = ((a1 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((v12 & 0x80000000) != 0)
        {
          v25 = sub_1C44157D4((v23 + v15 + 16) & ~v15, v10, v8);
          if (v25 >= 2)
          {
            return v25 - 1;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          v24 = *v23;
          if (v24 >= 0xFFFFFFFF)
          {
            LODWORD(v24) = -1;
          }

          return (v24 + 1);
        }
      }
    }
  }

  v19 = *(a1 + v17);
  if (!*(a1 + v17))
  {
    goto LABEL_30;
  }

LABEL_22:
  v22 = (v19 - 1) << v18;
  if (v17 > 3)
  {
    v22 = 0;
  }

  if (v17)
  {
    if (v17 > 3)
    {
      LODWORD(v17) = 4;
    }

    switch(v17)
    {
      case 2:
        LODWORD(v17) = *a1;
        break;
      case 3:
        LODWORD(v17) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v17) = *a1;
        break;
      default:
        LODWORD(v17) = *a1;
        break;
    }
  }

  return v13 + (v17 | v22) + 1;
}

void sub_1C4AE03BC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  v10 = swift_getAssociatedTypeWitness();
  v11 = 0;
  v12 = *(v10 - 8);
  v13 = *(v12 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  if (v9 > v14)
  {
    v14 = v9;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v8 + 64);
  v17 = *(v12 + 80);
  v18 = (v17 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v17;
  v19 = *(*(v10 - 8) + 64);
  if (!v13)
  {
    ++v19;
  }

  v20 = v18 + v19;
  v21 = 8 * (v18 + v19);
  if (a3 > v15)
  {
    if (v20 <= 3)
    {
      v22 = ((a3 - v15 + ~(-1 << v21)) >> v21) + 1;
      if (HIWORD(v22))
      {
        v11 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v11 = v23;
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 1;
    }
  }

  if (v15 >= a2)
  {
    switch(v11)
    {
      case 1:
        a1[v20] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        return;
      case 2:
        *&a1[v20] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        return;
      case 3:
LABEL_53:
        __break(1u);
        return;
      case 4:
        *&a1[v20] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (!a2)
        {
          return;
        }

LABEL_33:
        if (v9 == v15)
        {
          v27 = a1;
          v28 = a2;
          v13 = v9;
          v10 = AssociatedTypeWitness;
        }

        else
        {
          v29 = (&a1[v16 + 7] & 0xFFFFFFFFFFFFFFF8);
          if ((v14 & 0x80000000) == 0)
          {
            if ((a2 & 0x80000000) != 0)
            {
              v30 = a2 & 0x7FFFFFFF;
              v29[1] = 0;
            }

            else
            {
              v30 = (a2 - 1);
            }

            *v29 = v30;
            return;
          }

          v27 = ((v29 + v17 + 16) & ~v17);
          v28 = (a2 + 1);
        }

        sub_1C440BAA8(v27, v28, v13, v10);
        break;
    }
  }

  else
  {
    v24 = ~v15 + a2;
    if (v20 < 4)
    {
      v25 = (v24 >> v21) + 1;
      if (v20)
      {
        v26 = v24 & ~(-1 << v21);
        bzero(a1, v20);
        if (v20 == 3)
        {
          *a1 = v26;
          a1[2] = BYTE2(v26);
        }

        else if (v20 == 2)
        {
          *a1 = v26;
        }

        else
        {
          *a1 = v24;
        }
      }
    }

    else
    {
      bzero(a1, v20);
      *a1 = v24;
      v25 = 1;
    }

    switch(v11)
    {
      case 1:
        a1[v20] = v25;
        break;
      case 2:
        *&a1[v20] = v25;
        break;
      case 3:
        goto LABEL_53;
      case 4:
        *&a1[v20] = v25;
        break;
      default:
        return;
    }
  }
}

void sub_1C4AE0718(uint64_t a1, uint64_t *a2)
{
  v22 = a2;
  v3 = type metadata accessor for EntityMatch(0);
  v20 = *(v3 - 8);
  v21 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v8 = 0;
  v23 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  v19 = a1;
  while (1)
  {
    v10 = v8;
LABEL_3:
    if (v10 == v23)
    {

      return;
    }

    if (v10 >= *(a1 + 16))
    {
      break;
    }

    v11 = *(v20 + 72);
    v25 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v26 = v10 + 1;
    v24 = v11;
    sub_1C4471AF0(a1 + v25 + v11 * v10, v7);
    v12 = *(*v22 + 16);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v13 = 0;
    do
    {
      if (v12 == v13)
      {

        sub_1C447EB38(v7, type metadata accessor for EntityMatch);
        v10 = v26;
        a1 = v19;
        goto LABEL_3;
      }

      sub_1C4EFF0C8();
      sub_1C4AE2EAC(&qword_1EDDFCC98, MEMORY[0x1E69A9810], MEMORY[0x1E69A9830]);
      ++v13;
    }

    while ((sub_1C4F010B8() & 1) == 0);

    sub_1C44E3714(v7, v18);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C459DDD8();
      v9 = v27;
    }

    a1 = v19;
    v15 = v25;
    v8 = v26;
    v16 = *(v9 + 16);
    if (v16 >= *(v9 + 24) >> 1)
    {
      sub_1C459DDD8();
      v9 = v27;
    }

    *(v9 + 16) = v16 + 1;
    sub_1C44E3714(v18, v9 + v15 + v16 * v24);
  }

  __break(1u);
}

void sub_1C4AE0A58(uint64_t result, uint64_t *a2, uint64_t a3, float *a4)
{
  v9 = 0;
  v10 = *(result + 16);
  do
  {
    if (v10 == v9)
    {
      break;
    }

    v11 = *(sub_1C4EFF0C8() - 8);
    sub_1C4AE1388(result + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v9++, a2, a3, a4);
  }

  while (!v4);
}

uint64_t sub_1C4AE0B30(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v34 = a2;
  v35 = a3;
  v4 = sub_1C4EFF0C8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 + 56;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 56);
  v12 = (v9 + 63) >> 6;
  v36 = v5 + 8;
  v39 = a1;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v14 = 0;
  v37 = v5 + 16;
  for (i = v4; v11; result = (*(v5 + 8))(v7, v4))
  {
LABEL_8:
    v16 = *(v39 + 48);
    v40 = *(v5 + 72);
    v17 = *(v5 + 16);
    v17(v7, v16 + v40 * (__clz(__rbit64(v11)) | (v14 << 6)), v4);
    v18 = sub_1C4EFEFF8();
    v41 = v17;
    if (v18)
    {
      v19 = v34;
      v20 = *v34;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v19 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C44D45E4(0, *(v20 + 16) + 1, 1, v20);
        v20 = v31;
        *v34 = v31;
      }

      v23 = *(v20 + 16);
      v22 = *(v20 + 24);
      v24 = v23 + 1;
      if (v23 < v22 >> 1)
      {
        goto LABEL_16;
      }

      sub_1C44D45E4(v22 > 1, v23 + 1, 1, v20);
      v20 = v25;
      v26 = v34;
    }

    else
    {
      v27 = v35;
      v20 = *v35;
      v28 = swift_isUniquelyReferenced_nonNull_native();
      *v27 = v20;
      if ((v28 & 1) == 0)
      {
        sub_1C44D45E4(0, *(v20 + 16) + 1, 1, v20);
        v20 = v32;
        *v35 = v32;
      }

      v23 = *(v20 + 16);
      v29 = *(v20 + 24);
      v24 = v23 + 1;
      if (v23 < v29 >> 1)
      {
        goto LABEL_16;
      }

      sub_1C44D45E4(v29 > 1, v23 + 1, 1, v20);
      v20 = v25;
      v26 = v35;
    }

    *v26 = v25;
LABEL_16:
    v11 &= v11 - 1;
    *(v20 + 16) = v24;
    v30 = v20 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + v23 * v40;
    v4 = i;
    v41(v30, v7, i);
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v14 = v15;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}