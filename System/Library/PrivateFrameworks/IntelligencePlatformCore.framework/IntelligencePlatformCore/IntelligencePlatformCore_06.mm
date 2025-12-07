unint64_t sub_1C44867F4()
{
  result = qword_1EDDFE8E8;
  if (!qword_1EDDFE8E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDDFE8E8);
  }

  return result;
}

id sub_1C4486838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_1C4F01108();

  v7 = sub_1C4F01108();

  v8 = [a5 URLForResource:v6 withExtension:v7];

  return v8;
}

unint64_t sub_1C44868CC()
{
  result = qword_1EDDF8AA0;
  if (!qword_1EDDF8AA0)
  {
    type metadata accessor for NicknameData(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8AA0);
  }

  return result;
}

uint64_t sub_1C4486924@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  type metadata accessor for NicknameData(0);
  return sub_1C4F00318();
}

uint64_t sub_1C4486968(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4486AC8()
{
  sub_1C44158A0();
  sub_1C446060C();
  v4 = sub_1C440DFB8(v2, v3);
  sub_1C445FAA8(v4, v5);
  sub_1C442C5D8();
  if (v6)
  {
    __break(1u);
LABEL_13:
    result = sub_1C4F029F8();
    __break(1u);
    return result;
  }

  sub_1C4423AC0();
  sub_1C4408720();
  v7 = sub_1C4F02458();
  if (v7)
  {
    sub_1C4451290();
    sub_1C4410A40();
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    sub_1C4440968(v7, v8, v9, v10, *v0);
    sub_1C4410198();
  }

  else
  {
    v14 = sub_1C441E240();
    v15(v14);
    sub_1C4410198();

    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

uint64_t sub_1C4486BD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1C4486C30(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1C44996E4(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1C448AD78(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_1C4F02AF8();
      sub_1C4F01298();
      v16 = sub_1C4F02B68();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == a1 && v18[1] == a2;
        if (v19 || (sub_1C4F02938() & 1) != 0)
        {
          goto LABEL_19;
        }

        v16 = a3 + 1;
      }
    }

    sub_1C44802AC();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = a1;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    sub_1C4F029E8();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

uint64_t sub_1C4486D98()
{
  *(*(v0 + 16) + *(*(v0 + 72) + 36)) = *(v0 + 88);
  sub_1C4EFEF48();
  swift_allocObject();
  sub_1C4EFEF38();
  switch(*(v0 + 104))
  {
    case 2:
      v1 = *(v0 + 72);
      v2 = *(v0 + 16);

      *(v2 + *(v1 + 40)) = 0;
LABEL_7:

LABEL_9:

      v11 = *(v0 + 24);
      sub_1C44077C8();
      sub_1C447EA28(v12, v13);
      sub_1C441A1D8();
      sub_1C447EA28(v11, v14);
      v15 = 0;
      break;
    default:
      v3 = sub_1C4F02938();

      if (v3)
      {
        v4 = 0;
      }

      else
      {
        sub_1C4414E10();
        sub_1C4EFFFF8();
        sub_1C4EFFED8();
        sub_1C4425364();
        sub_1C4487240(v5, v6, MEMORY[0x1E69A9C10]);
        sub_1C43FFE24();
        v4 = sub_1C4EFEF18();
        v7 = sub_1C43FFE24();
        v8(v7);
      }

      v9 = *(v0 + 104);
      *(*(v0 + 16) + *(*(v0 + 72) + 40)) = v4;
      switch(v9)
      {
        case 2:
          goto LABEL_7;
        default:
          v10 = sub_1C4F02938();

          if (v10)
          {
            goto LABEL_9;
          }

          v19 = *(v0 + 48);
          v18 = *(v0 + 56);
          v21 = *(v0 + 32);
          v20 = *(v0 + 40);
          v22 = *(v0 + 24);
          sub_1C4414E10();
          sub_1C4EFFFF8();
          sub_1C4EFFED8();
          sub_1C4425364();
          sub_1C4487240(v23, v24, MEMORY[0x1E69A9C10]);
          v15 = sub_1C4EFEF18();

          sub_1C44077C8();
          sub_1C447EA28(v21, v25);
          sub_1C441A1D8();
          sub_1C447EA28(v22, v26);
          (*(v19 + 8))(v18, v20);
          break;
      }

      break;
  }

  *(*(v0 + 16) + *(*(v0 + 72) + 44)) = v15;

  sub_1C43FBDA0();

  return v16();
}

uint64_t sub_1C4487240(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4487288()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 1616) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C4487380()
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  v1 = v0[200];
  sub_1C44F0CD8();
  v2 = v0[194];
  v3 = v0[159];
  v4 = v0[101];
  v24 = v0[100];
  v25 = v5;
  v6 = v0[67];
  sub_1C440D610();
  sub_1C4471988(v7, v3);
  sub_1C442BD10();
  sub_1C4471988(v6, v2);
  v1[67] = v4;
  sub_1C44174EC();
  v1[68] = sub_1C4471C58(v8, v9, &protocol conformance descriptor for Resolver);
  v10 = sub_1C4422F90(v1 + 64);
  sub_1C444B1FC(v10);
  sub_1C43FE710(v11);
  sub_1C4471D00();
  v12 = sub_1C4462804();
  sub_1C445FE04(v12);
  if (v4)
  {
  }

  sub_1C446BCB0();
  v13 = v0[159];
  sub_1C4408D30();
  sub_1C447E970(v14, v15);
  sub_1C4410FD4();
  sub_1C447E970(v13, v16);
  v17 = sub_1C4EFF1C8();
  sub_1C4404528(v17);
  sub_1C440E538();
  sub_1C49E19B0();
  sub_1C4485FF0();
  v18 = sub_1C43FD258();
  sub_1C447E970(v18, v19);
  *(v23 + *(v24 + 24)) = v25;
  sub_1C4419C7C();
  sub_1C442CE50(v20);

  sub_1C441BB34();
  sub_1C43FEA3C();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C44878E0()
{
  v23 = v0;
  v1 = *(v0 + 218);
  v2 = *(v0 + 192);
  v3 = *(v0 + 176);
  v4 = *(v0 + 144);
  v5 = *(v0 + 120);
  v19 = *(v0 + 152);
  v20 = *(v0 + 128);
  v6 = *(v0 + 104);
  v21 = *(v0 + 112);
  v7 = *(v0 + 96);
  sub_1C44068F0();
  sub_1C4471750(v8, v4, v9);
  sub_1C4419288();
  sub_1C4471750(v7, v3, v10);
  Fuser.init(source:stores:pipelineType:)();

  sub_1C44857CC(v7);
  sub_1C440962C((v0 + 16));
  v22 = v1;
  v12 = *(v0 + 80);
  v11 = *(v0 + 88);
  v13 = sub_1C4418280(v0 + 56, v12);
  v14 = *(v12 - 8);
  v15 = sub_1C43FBE7C();
  (*(v14 + 16))(v15, v13, v12);
  v16 = sub_1C4487AD8(v2, v19, v15, v20, v5, &v22, v21, v12, v11);
  sub_1C440962C((v0 + 56));

  v17 = *(v0 + 8);

  return v17(v16);
}

uint64_t sub_1C4487AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a8;
  v17 = (a7 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor);
  v17[3] = a8;
  v17[4] = a9;
  v18 = sub_1C4422F90(v17);
  (*(*(v9 - 8) + 32))(v18, a3, v9);
  LOBYTE(v9) = *a6;
  sub_1C441FDB8();
  sub_1C4472188(a2, v19, v20);
  sub_1C441FDB8();
  sub_1C4472188(a1, v21, v22);
  sub_1C441FDB8();
  sub_1C4472188(a4, v23, v24);
  sub_1C441FDB8();
  sub_1C4472188(a5, v25, v26);
  *(a7 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_pipelineType) = v9;
  return a7;
}

uint64_t sub_1C4487C18()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1120) = v3;

  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t type metadata accessor for PhotosPersonPhase(uint64_t a1)
{
  result = qword_1EDDE6380;
  if (!qword_1EDDE6380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4487D4C(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v5 = type metadata accessor for Fuser(0);
  sub_1C43FBD18(v5);
  *(v3 + 32) = sub_1C43FBE7C();
  v6 = type metadata accessor for Linker(0);
  sub_1C43FBD18(v6);
  *(v3 + 40) = sub_1C43FBE7C();
  v7 = sub_1C456902C(&unk_1EC0B7610, &unk_1C4F17610);
  sub_1C43FBD18(v7);
  *(v3 + 48) = sub_1C43FBE7C();
  v8 = sub_1C456902C(&qword_1EC0C2A90, &unk_1C4F16D30);
  sub_1C43FBD18(v8);
  *(v3 + 56) = sub_1C43FBE7C();
  v9 = type metadata accessor for PHPersonSourceIngestor(0);
  *(v3 + 64) = v9;
  sub_1C43FBD18(v9);
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  v10 = type metadata accessor for Source(0);
  *(v3 + 88) = v10;
  sub_1C43FBD18(v10);
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  v11 = type metadata accessor for PhaseStores(0);
  sub_1C43FBD18(v11);
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 153) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1C4487F50, 0, 0);
}

uint64_t type metadata accessor for PHPersonSourceIngestor(uint64_t a1)
{
  result = qword_1EDDE2978;
  if (!qword_1EDDE2978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4487F50()
{
  sub_1C4419288();
  sub_1C44717B8(v1, v2, v3);
  if (qword_1EDDFD0A8 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 153);
  v5 = *(v0 + 120);
  v6 = *(v0 + 104);
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  v9 = *(v0 + 48);
  v10 = *(v0 + 16);
  v11 = sub_1C442B738(*(v0 + 88), qword_1EDDFD0B0);
  *(v0 + 136) = v11;
  sub_1C44717B8(v11, v6, type metadata accessor for Source);
  sub_1C44717B8(v10, v5, type metadata accessor for PhaseStores);
  sub_1C44717B8(v11, v8 + *(v7 + 20), type metadata accessor for Source);
  sub_1C44717B8(v5, v8, type metadata accessor for PhaseStores);
  *(v8 + *(v7 + 24)) = v4;
  v12 = sub_1C4EF9E48();
  sub_1C440BAA8(v9, 1, 1, v12);
  sub_1C4EFF1A8();
  v13 = *(v0 + 112);
  v14 = *(v0 + 96);
  v16 = *(v0 + 72);
  v15 = *(v0 + 80);
  v17 = *(v0 + 56);
  v18 = *(v0 + 64);
  v19 = *(v0 + 16);
  sub_1C44857CC(*(v0 + 120));
  v20 = sub_1C4EFF1C8();
  sub_1C440BAA8(v17, 0, 1, v20);
  sub_1C4482F3C(v17, v16 + *(v18 + 28));
  v21 = sub_1C440787C();
  sub_1C44881BC(v21, v15, v22);
  sub_1C44068F0();
  sub_1C44717B8(v11, v14, v23);
  sub_1C4419288();
  sub_1C44717B8(v19, v13, v24);
  *(v0 + 152) = 1;
  v25 = swift_task_alloc();
  *(v0 + 144) = v25;
  *v25 = v0;
  v25[1] = sub_1C448922C;

  return Linker.init(source:stores:pipelineType:)();
}

uint64_t sub_1C44881BC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FCE50();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C4488224()
{

  return sub_1C4EF9938();
}

uint64_t sub_1C4488264(uint64_t result)
{
  *(v2 - 224) = result;
  *(result + 16) = v1;
  return result;
}

void *sub_1C4488280()
{

  return sub_1C4EFBB98();
}

uint64_t sub_1C44882A4()
{
  *(v1 - 72) = 7;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C44882D4(uint64_t a1, uint64_t a2)
{

  return sub_1C4F026C8();
}

void *sub_1C44882FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{

  return memmove(a1, v2, 8 * a2);
}

uint64_t sub_1C4488314()
{

  return swift_task_alloc();
}

void sub_1C448832C()
{
  *(v1 + 14) = v0;
  *(v1 + 22) = 1024;
  *(v1 + 24) = 0;
}

uint64_t sub_1C4488340()
{

  return sub_1C442E860(v0, v1 + 16);
}

uint64_t sub_1C4488358()
{
  *(*(v0 - 128) + *(v0 - 368)) = *(v0 - 112);
}

uint64_t sub_1C44883A4()
{

  return MEMORY[0x1EEE6DC08]();
}

void sub_1C44883E4()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C4488420()
{
  v2 = *(v0 - 1120);
  v3 = *(v0 - 1128);

  return sub_1C44239FC(v2, v3);
}

uint64_t sub_1C4488458(float a1)
{
  *v1 = a1;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4488484(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void x5_0, void x6_0, void x7_0, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return swift_arrayDestroy();
}

void sub_1C44884A4()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C44884BC()
{
  *(v2 - 160) = v1;
  *(v2 - 152) = v0;
  *(v2 - 104) = 0;
  return v2 - 104;
}

uint64_t sub_1C44884D0()
{
}

uint64_t sub_1C4488504(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_1C448856C(uint64_t a1, uint64_t a2)
{

  return sub_1C4F026C8();
}

uint64_t sub_1C4488590()
{
  v2 = *(v0 - 688);
  v3 = *(v0 - 696);

  return sub_1C44239FC(v2, v3);
}

__n128 sub_1C44885D0()
{
  *(v0 - 400) = *(v0 - 200);
  result = *(v0 - 216);
  *(v0 - 368) = result;
  return result;
}

uint64_t sub_1C4488620@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 + v1);
  *(v2 + v1) = a1;
  return result;
}

uint64_t sub_1C44886A8()
{
  *(v0 + *(v1 + 28)) = v2;

  return sub_1C4EF9E48();
}

void sub_1C44886E4(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

void sub_1C448873C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_1C448875C()
{
  v4 = v2 + *(v1 + 24);

  return sub_1C4471988(v0, v4);
}

uint64_t sub_1C4488780()
{

  return sub_1C4EFB768();
}

uint64_t sub_1C4488834()
{
  v3 = *(v1 - 128);

  return sub_1C447E970(v0, v3);
}

uint64_t sub_1C448885C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x1EEE6DFA0](a1, a2, a3);
}

void sub_1C4488888()
{
  v4 = (v2 + *(v0 + 32));
  *v4 = v1;
  v4[1] = v3;
}

uint64_t sub_1C44888DC(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C4F02BC8();
}

void sub_1C4488924(uint64_t a1)
{

  sub_1C459E0F8(a1, v1, 1);
}

uint64_t sub_1C448895C()
{

  return sub_1C4EFF1A8();
}

uint64_t sub_1C44889B4()
{
  v2 = *(*(v0 + 104) + 64);

  return sub_1C4428DA0(v2);
}

uint64_t sub_1C44889D0()
{
  v2 = *(v0 + 256);

  return sub_1C4424B10(v2);
}

uint64_t sub_1C4488A10()
{

  return swift_slowAlloc();
}

uint64_t sub_1C4488A68()
{

  return swift_dynamicCast();
}

uint64_t sub_1C4488A8C@<X0>(uint64_t a1@<X8>)
{
  *v1 = *(a1 - 256);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4488AB8(uint64_t a1, uint64_t a2)
{

  return sub_1C4F027E8();
}

uint64_t sub_1C4488AFC()
{
}

uint64_t *sub_1C4488B14(uint64_t a1)
{
  *(v1 + 144) = a1;

  return sub_1C4422F90((v1 + 112));
}

uint64_t sub_1C4488B58()
{
}

uint64_t sub_1C4488B88()
{
  *(v2 - 144) = v1;
  *(v2 - 104) = *(v2 - 136);
  *(v2 - 96) = v0;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4488BD4()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 2168) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C4488CCC()
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  v1 = v0[269];
  sub_1C44F0CD8();
  v2 = v0[178];
  v3 = v0[143];
  v4 = v0[101];
  v24 = v0[93];
  v25 = v5;
  v6 = v0[67];
  sub_1C440D610();
  sub_1C4471988(v7, v3);
  sub_1C442BD10();
  sub_1C4471988(v6, v2);
  v1[22] = v4;
  sub_1C44174EC();
  v1[23] = sub_1C4471C58(v8, v9, &protocol conformance descriptor for Resolver);
  v10 = sub_1C4422F90(v1 + 19);
  sub_1C444B1FC(v10);
  sub_1C43FE710(v11);
  sub_1C4471D00();
  v12 = sub_1C4462804();
  sub_1C445FE04(v12);
  if (v4)
  {
  }

  sub_1C446BCB0();
  v13 = v0[143];
  sub_1C4408D30();
  sub_1C447E970(v14, v15);
  sub_1C4410FD4();
  sub_1C447E970(v13, v16);
  v17 = sub_1C4EFF1C8();
  sub_1C4404528(v17);
  sub_1C440E538();
  sub_1C49E19B0();
  sub_1C4485FF0();
  v18 = sub_1C43FD258();
  sub_1C447E970(v18, v19);
  *(v23 + *(v24 + 24)) = v25;
  sub_1C4419C7C();
  sub_1C442CE50(v20);

  sub_1C441BB34();
  sub_1C43FEA3C();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C448922C()
{

  return MEMORY[0x1EEE6DFA0](sub_1C4489328, 0, 0);
}

uint64_t sub_1C4489328()
{
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[8];
  v27 = v0[5];
  v7 = v0[3];
  v6 = v0[4];
  v8 = v0[2];
  sub_1C44068F0();
  sub_1C44717B8(v9, v3, v10);
  sub_1C4419288();
  sub_1C44717B8(v8, v2, v11);
  Fuser.init(source:stores:pipelineType:)();
  sub_1C44857CC(v8);
  v12 = (v7 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor);
  *(v7 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor + 24) = v5;
  v12[4] = sub_1C4489550();
  sub_1C4422F90(v12);
  v13 = sub_1C440787C();
  sub_1C44881BC(v13, v14, v15);
  sub_1C4400564();
  sub_1C44881BC(v4, v16, v17);
  sub_1C4400564();
  sub_1C44881BC(v1, v18, v19);
  sub_1C4400564();
  sub_1C44881BC(v27, v20, v21);
  sub_1C4400564();
  sub_1C44881BC(v6, v22, v23);
  *(v7 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_pipelineType) = 1;

  v24 = v0[1];
  v25 = v0[3];

  return v24(v25);
}

unint64_t sub_1C4489550()
{
  result = qword_1EDDE2998;
  if (!qword_1EDDE2998)
  {
    type metadata accessor for PHPersonSourceIngestor(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE2998);
  }

  return result;
}

uint64_t sub_1C44895A8()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1152) = v3;

  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4489690()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v1 = *(v0 + 1152);
  sub_1C44A1824();
  *(v0 + 792) = v2;
  sub_1C446035C();
  *(v0 + 800) = sub_1C4472508(v3, v4, &protocol conformance descriptor for PipelinePhase);
  *(v0 + 768) = v1;
  inited = swift_initStackObject();
  *(v0 + 1160) = inited;
  *(inited + 16) = xmmword_1C4F0D130;
  sub_1C441D670((v0 + 768), inited + 32);
  sub_1C441A2F4();
  sub_1C442A990(v6, v7, v8);
  *(v0 + 1195) = 1;
  *(v0 + 1168) = type metadata accessor for PGRelationshipPhase(0);
  sub_1C43FD23C();
  swift_allocObject();
  v9 = swift_task_alloc();
  *(v0 + 1176) = v9;
  *v9 = v0;
  sub_1C44C12B8(v9);
  sub_1C440F4D4(v10);
  sub_1C4426C44();

  return sub_1C4489800(v11, v12);
}

uint64_t type metadata accessor for PGRelationshipPhase(uint64_t a1)
{
  result = qword_1EDDE4FC0;
  if (!qword_1EDDE4FC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4489800(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v5 = type metadata accessor for Fuser(0);
  sub_1C43FBD18(v5);
  *(v3 + 32) = sub_1C43FBE7C();
  v6 = type metadata accessor for Linker(0);
  sub_1C43FBD18(v6);
  *(v3 + 40) = sub_1C43FBE7C();
  v7 = sub_1C456902C(&unk_1EC0B7610, &unk_1C4F17610);
  sub_1C43FBD18(v7);
  *(v3 + 48) = sub_1C43FBE7C();
  v8 = sub_1C456902C(&qword_1EC0C2A90, &unk_1C4F16D30);
  sub_1C43FBD18(v8);
  *(v3 + 56) = sub_1C43FBE7C();
  v9 = type metadata accessor for PGRelationshipFullSourceIngestor(0);
  *(v3 + 64) = v9;
  sub_1C43FBD18(v9);
  *(v3 + 72) = sub_1C43FBE7C();
  v10 = type metadata accessor for Source(0);
  *(v3 + 80) = v10;
  sub_1C43FBD18(v10);
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  v11 = type metadata accessor for PhaseStores(0);
  sub_1C43FBD18(v11);
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 145) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1C44899F0, 0, 0);
}

uint64_t type metadata accessor for PGRelationshipFullSourceIngestor(uint64_t a1)
{
  result = qword_1EDDDDDB8;
  if (!qword_1EDDDDDB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C44899F0()
{
  sub_1C4419288();
  sub_1C44717B8(v1, v2, v3);
  if (qword_1EDDFD2C8 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 112);
  v5 = *(v0 + 96);
  v6 = *(v0 + 72);
  v7 = *(v0 + 64);
  v8 = *(v0 + 48);
  v9 = *(v0 + 16);
  v10 = sub_1C442B738(*(v0 + 80), qword_1EDDFD2D0);
  *(v0 + 128) = v10;
  sub_1C44717B8(v10, v5, type metadata accessor for Source);
  sub_1C44717B8(v9, v4, type metadata accessor for PhaseStores);
  *(v6 + *(v7 + 24)) = 1;
  sub_1C44717B8(v10, v6, type metadata accessor for Source);
  sub_1C44717B8(v4, v6 + *(v7 + 20), type metadata accessor for PhaseStores);
  v11 = sub_1C4EF9E48();
  sub_1C440BAA8(v8, 1, 1, v11);
  sub_1C4EFF1A8();
  LOBYTE(v9) = *(v0 + 145);
  v12 = *(v0 + 104);
  v13 = *(v0 + 88);
  v15 = *(v0 + 64);
  v14 = *(v0 + 72);
  v16 = *(v0 + 56);
  v17 = *(v0 + 16);
  sub_1C44857CC(*(v0 + 112));
  v18 = sub_1C4EFF1C8();
  sub_1C440BAA8(v16, 0, 1, v18);
  sub_1C4482F3C(v16, v14 + *(v15 + 28));
  sub_1C44068F0();
  sub_1C44717B8(v10, v13, v19);
  sub_1C4419288();
  sub_1C44717B8(v17, v12, v20);
  *(v0 + 144) = v9;
  v21 = swift_task_alloc();
  *(v0 + 136) = v21;
  *v21 = v0;
  v21[1] = sub_1C448A398;

  return Linker.init(source:stores:pipelineType:)();
}

uint64_t sub_1C4489C4C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 2528) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C4489D44()
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  v1 = v0[314];
  sub_1C44F0CD8();
  v2 = v0[165];
  v3 = v0[130];
  v4 = v0[101];
  v24 = v0[86];
  v25 = v5;
  v6 = v0[67];
  sub_1C440D610();
  sub_1C4471988(v7, v3);
  sub_1C442BD10();
  sub_1C4471988(v6, v2);
  v1[22] = v4;
  sub_1C44174EC();
  v1[23] = sub_1C4471C58(v8, v9, &protocol conformance descriptor for Resolver);
  v10 = sub_1C4422F90(v1 + 19);
  sub_1C444B1FC(v10);
  sub_1C43FE710(v11);
  sub_1C4471D00();
  v12 = sub_1C4462804();
  sub_1C445FE04(v12);
  if (v4)
  {
  }

  sub_1C446BCB0();
  v13 = v0[130];
  sub_1C4408D30();
  sub_1C447E970(v14, v15);
  sub_1C4410FD4();
  sub_1C447E970(v13, v16);
  v17 = sub_1C4EFF1C8();
  sub_1C4404528(v17);
  sub_1C440E538();
  sub_1C49E19B0();
  sub_1C4485FF0();
  v18 = sub_1C43FD258();
  sub_1C447E970(v18, v19);
  *(v23 + *(v24 + 24)) = v25;
  sub_1C4419C7C();
  sub_1C442CE50(v20);

  sub_1C441BB34();
  sub_1C43FEA3C();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C448A2A4()
{
  sub_1C43FBCD4();
  *(*v0 + 88) = v1;

  v2 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C448A398()
{

  return MEMORY[0x1EEE6DFA0](sub_1C448A494, 0, 0);
}

uint64_t sub_1C448A494()
{
  v1 = v0[13];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[4];
  v25 = v0[15];
  v26 = v0[5];
  v7 = v0[2];
  v8 = v0[3];
  sub_1C44068F0();
  sub_1C44717B8(v9, v3, v10);
  sub_1C4419288();
  sub_1C44717B8(v7, v1, v11);
  Fuser.init(source:stores:pipelineType:)();
  sub_1C44857CC(v7);
  v12 = (v8 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor);
  *(v8 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor + 24) = v4;
  v12[4] = sub_1C448A6CC();
  v13 = sub_1C4422F90(v12);
  sub_1C448A724(v5, v13, type metadata accessor for PGRelationshipFullSourceIngestor);
  sub_1C44002E8();
  sub_1C448A724(v2, v14, v15);
  sub_1C44002E8();
  sub_1C448A724(v25, v16, v17);
  sub_1C44002E8();
  sub_1C448A724(v26, v18, v19);
  sub_1C44002E8();
  sub_1C448A724(v6, v20, v21);
  *(v8 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_pipelineType) = 1;

  v22 = v0[1];
  v23 = v0[3];

  return v22(v23);
}

unint64_t sub_1C448A6CC()
{
  result = qword_1EDDDDDD8;
  if (!qword_1EDDDDDD8)
  {
    type metadata accessor for PGRelationshipFullSourceIngestor(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDDDD8);
  }

  return result;
}

uint64_t sub_1C448A724(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FCE50();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C448A780()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1184) = v3;

  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C448A868()
{
  v1 = *(v0 + 1184);
  v2 = *(v0 + 1048);
  v3 = *(v0 + 1040);
  v4 = *(v0 + 1032);
  v5 = *(v0 + 1008);
  v6 = v5 + *(v0 + 1056);
  *(v0 + 832) = *(v0 + 1168);
  sub_1C441AFE0();
  *(v0 + 840) = sub_1C4472508(v7, v8, &protocol conformance descriptor for PipelinePhase);
  *(v0 + 808) = v1;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  v86 = inited;
  sub_1C441D670((v0 + 808), inited + 32);
  sub_1C441A2F4();
  sub_1C443113C(v6, v2);
  v10 = type metadata accessor for GraphDiffPhase(0);
  sub_1C43FD23C();
  swift_allocObject();
  v11 = sub_1C448ACA8(v2);
  *(v0 + 872) = v10;
  sub_1C44352F4();
  *(v0 + 880) = sub_1C4472508(v12, v13, &unk_1C4F324C8);
  *(v0 + 848) = v11;
  v14 = swift_initStackObject();
  sub_1C446089C(v14, v15, v16, v17, v18, v19, v20, v21, v22, v73, v77, v82, v86, v23);
  sub_1C441D670((v0 + 848), &v14[2]);
  v24 = *(v6 + *(v3 + 36));
  v25 = type metadata accessor for PromoteConstructionPhase();
  swift_allocObject();
  v26 = sub_1C4404C88();
  v27 = sub_1C448AFD0(v26, v24, 1);
  *(v0 + 912) = v25;
  sub_1C4405FFC();
  *(v0 + 920) = sub_1C4472508(v28, v29, &unk_1C4F4F030);
  *(v0 + 888) = v27;
  v30 = swift_initStackObject();
  sub_1C446089C(v30, v31, v32, v33, v34, v35, v36, v37, v38, v74, v78, v83, v87, v39);
  sub_1C441D670((v0 + 888), &v30[2]);
  sub_1C440B110();
  sub_1C443113C(v5 + v40, v4);
  v41 = qword_1EDDFD0A8;

  if (v41 != -1)
  {
    swift_once();
  }

  v42 = *(v0 + 1128);
  v43 = *(v0 + 1096);
  v79 = *(v0 + 1160);
  v84 = *(v0 + 1048);
  v44 = *(v0 + 1032);
  v45 = *(v0 + 1024);
  sub_1C442B738(*(v0 + 1016), qword_1EDDFD0B0);
  sub_1C4413658();
  sub_1C443113C(v46, v45);
  v47 = type metadata accessor for FastpassViewsGenerationPhase(0);
  sub_1C43FD23C();
  swift_allocObject();
  v48 = sub_1C448B168(v44, v45);
  *(v0 + 952) = v47;
  *(v0 + 960) = sub_1C4472508(&qword_1EC0C2E98, type metadata accessor for FastpassViewsGenerationPhase, &unk_1C4F61598);
  *(v0 + 928) = v48;
  v49 = swift_initStackObject();
  sub_1C446089C(v49, v50, v51, v52, v53, v54, v55, v56, v57, v75, v79, v84, v88, v58);
  sub_1C441D670((v0 + 928), &v49[2]);
  *(v0 + 992) = &type metadata for GlobalKnowledgePipelinePhase;
  *(v0 + 1000) = sub_1C448B274();
  *(v0 + 968) = 0xD00000000000001CLL;
  *(v0 + 976) = 0x80000001C4FAFF00;
  v59 = swift_initStackObject();
  sub_1C446089C(v59, v60, v61, v62, v63, v64, v65, v66, v67, v76, v80, v85, v89, v68);
  sub_1C441D670((v0 + 968), &v59[2]);
  sub_1C456902C(&qword_1EC0B8B18, &qword_1C4F0DF40);
  v69 = swift_initStackObject();
  *(v69 + 16) = xmmword_1C4F3B920;
  *(v69 + 32) = v43;
  *(v69 + 40) = v42;
  *(v69 + 48) = v81;
  *(v69 + 56) = v90;
  *(v69 + 64) = v14;
  *(v69 + 72) = v30;
  *(v69 + 80) = v49;
  *(v69 + 88) = v59;
  v70 = static PhaseBuilder.buildBlock(_:)();
  swift_setDeallocating();
  sub_1C448B4C8();

  sub_1C43FBCF0();

  return v71(v70);
}

uint64_t type metadata accessor for GraphDiffPhase(uint64_t a1)
{
  result = qword_1EDDE9D30;
  if (!qword_1EDDE9D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C448ACA8(uint64_t a1)
{
  strcpy((v1 + 16), "GraphDiffPhase");
  *(v1 + 31) = -18;
  *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore14GraphDiffPhase_pipelineType) = 1;
  sub_1C448AD18(a1, v1 + OBJC_IVAR____TtC24IntelligencePlatformCore14GraphDiffPhase_stores, type metadata accessor for PhaseStores);
  return v1;
}

uint64_t sub_1C448AD18(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C448AD78(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1C456902C(&qword_1EC0BDE40, &qword_1C4F32288);
  result = sub_1C4F021D8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_1C4F02AF8();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4F01298();
        result = sub_1C4F02B68();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1C448AFD0(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 16) = 0xD000000000000018;
  *(v3 + 24) = 0x80000001C4F4EFC0;
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return v3;
}

uint64_t sub_1C448B01C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Source(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C44310D4(a1, v9, type metadata accessor for Configuration);
  sub_1C44310D4(a2, v6, type metadata accessor for Source);
  v10 = sub_1C448B16C(v9, v6);
  sub_1C447EA80(a2, type metadata accessor for Source);
  sub_1C447EA80(a1, type metadata accessor for Configuration);
  return v10;
}

uint64_t sub_1C448B16C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0xD000000000000020;
  *(v2 + 24) = 0x80000001C4F61500;
  sub_1C44098F0(a1, v2 + OBJC_IVAR____TtC24IntelligencePlatformCore32ViewGenerationDeltaPipelinePhase_config);
  v5 = [objc_allocWithZone(MEMORY[0x1E69A9F28]) init];
  sub_1C43FFFC0();
  sub_1C44541BC(a1, v6);
  *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore32ViewGenerationDeltaPipelinePhase_coordinationXPC) = v5;
  sub_1C448B210(a2, v2 + OBJC_IVAR____TtC24IntelligencePlatformCore32ViewGenerationDeltaPipelinePhase_source);
  return v2;
}

uint64_t sub_1C448B210(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Source(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C448B274()
{
  result = qword_1EC0C2EA0;
  if (!qword_1EC0C2EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2EA0);
  }

  return result;
}

void _s24IntelligencePlatformCore12PhaseBuilderO10buildArrayySayAA0D4Base_pGSayAFGFZ_0(uint64_t result)
{
  v1 = *(result + 16);
  v2 = MEMORY[0x1E69E7CC0];
  v3 = (result + 32);
  if (v1)
  {
    while (1)
    {
      v4 = *v3;
      v5 = *(*v3 + 16);
      v6 = *(v2 + 16);
      if (__OFADD__(v6, v5))
      {
        break;
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (!swift_isUniquelyReferenced_nonNull_native() || v6 + v5 > *(v2 + 24) >> 1)
      {
        sub_1C448B40C();
        v2 = v7;
      }

      if (*(v4 + 16))
      {
        if ((*(v2 + 24) >> 1) - *(v2 + 16) < v5)
        {
          goto LABEL_16;
        }

        sub_1C456902C(&qword_1EC0B8AB0, &qword_1C4F0DEE0);
        swift_arrayInitWithCopy();

        if (v5)
        {
          v8 = *(v2 + 16);
          v9 = __OFADD__(v8, v5);
          v10 = v8 + v5;
          if (v9)
          {
            goto LABEL_17;
          }

          *(v2 + 16) = v10;
        }
      }

      else
      {

        if (v5)
        {
          goto LABEL_15;
        }
      }

      ++v3;
      if (!--v1)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }
}

void sub_1C448B40C()
{
  sub_1C441581C();
  if ((v3 & 1) == 0 || (sub_1C441172C(), v4 == v5))
  {
LABEL_6:
    sub_1C442DD18();
    if (v2)
    {
      v6 = sub_1C456902C(&qword_1EC0B8AA8, &unk_1C4F4E0E0);
      v7 = sub_1C44108A0(v6);
      sub_1C4418FDC(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_1C4412BE8();
        sub_1C445ECD8(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_1C456902C(&qword_1EC0B8AB0, &qword_1C4F0DEE0);
    sub_1C43FEA6C(v11);
    goto LABEL_11;
  }

  sub_1C442B904();
  if (!v4)
  {
    sub_1C440A4D4();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1C448B4DC()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 88) = v3;

  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C448B5C4()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  *(v0 + 56) = *(v0 + 88);
  v1 = qword_1EDDF7BB0;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (v1 != -1)
  {
    sub_1C440D748(&qword_1EDDF7BB0);
  }

  v2 = qword_1EDE2DA48;
  v3 = *&qword_1EDE2DA38;
  *(v0 + 16) = xmmword_1EDE2DA28;
  *(v0 + 32) = v3;
  *(v0 + 48) = v2;

  sub_1C446ABD0(0);
  sub_1C440F1BC();
  sub_1C448B734();

  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = sub_1C4AC9BEC;
  sub_1C440F4D4(*(v0 + 64));
  sub_1C4426C44();

  return sub_1C448B910(v5, v6);
}

uint64_t sub_1C448B734()
{
  sub_1C440D848();
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = *(v1 + 32);

    sub_1C4433DE4();
    sub_1C442604C();
    v2(v4);
    v5 = sub_1C441E6D0();
    return sub_1C44239FC(v5, v3);
  }

  else
  {
    if (v0)
    {
      sub_1C444B2B4();
      sub_1C441CBA4();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C443F350();
    }

    else
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    sub_1C441C09C();
    sub_1C448B80C();
    sub_1C441E6D0();
  }
}

void sub_1C448B80C()
{
  sub_1C4413F18();
  sub_1C4433528();
  sub_1C456902C(&qword_1EC0B8838, "nS\t");
  sub_1C4418B14();
  v1 = swift_allocObject();
  sub_1C4414C68(v1, xmmword_1C4F0D130);
  sub_1C456902C(&qword_1EC0B8EB8, &unk_1C4F0E920);
  v2 = sub_1C496CBBC();
  sub_1C4425D04(v2);
  sub_1C4410EA4();

  if (!v0)
  {
    sub_1C4409E00();
    MEMORY[0x1EEE9AC00](v3);
    sub_1C43FDA14();
    sub_1C4435934();
    v4 = sub_1C4404044();
    sub_1C4434000(v4, v5);
  }

  sub_1C441C2B4();
  sub_1C44102DC();
}

uint64_t sub_1C448B910(uint64_t a1, uint64_t a2)
{
  v2[130] = a2;
  v2[129] = a1;
  type metadata accessor for Configuration(0);
  v2[131] = swift_task_alloc();
  v3 = type metadata accessor for Pipeline.StatusStore(0);
  v2[132] = v3;
  v4 = *(v3 - 8);
  v2[133] = v4;
  v2[134] = *(v4 + 64);
  v2[135] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C448BA08, 0, 0);
}

uint64_t sub_1C448BA08()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  if (qword_1EDDF7BB0 != -1)
  {
    sub_1C440D748(&qword_1EDDF7BB0);
  }

  v1 = *(v0 + 1040);
  v2 = *&qword_1EDE2DA38;
  *(v0 + 696) = xmmword_1EDE2DA28;
  *(v0 + 712) = v2;
  *(v0 + 728) = qword_1EDE2DA48;
  v3 = *v1;
  sub_1C446ABD0(0);
  sub_1C440F1BC();
  sub_1C448B734();

  *(v0 + 1088) = 0;
  v13 = v3[2];
  if (v13)
  {
    sub_1C448BD48((v3 + 4), v0 + 856);
    if (!swift_isUniquelyReferenced_nonNull_native() || (v13 - 1) > v3[3] >> 1)
    {
      sub_1C4401E28();
      sub_1C448B40C();
      v3 = v14;
    }

    *(v0 + 1096) = v3;
    v15 = *(v0 + 1040);
    sub_1C440962C(v3 + 4);
    v16 = v3[2];
    memmove(v3 + 4, v3 + 9, 40 * v16 - 40);
    v3[2] = v16 - 1;
    *v15 = v3;
    sub_1C4F01968();
    v17 = *(v0 + 1080);
    v18 = *(v0 + 1064);
    sub_1C448BD48(v0 + 856, v0 + 936);
    sub_1C44346A0();
    v19 = sub_1C43FBC98();
    sub_1C443113C(v19, v20);
    v21 = (*(v18 + 80) + 56) & ~*(v18 + 80);
    v22 = swift_allocObject();
    *(v0 + 1104) = v22;
    sub_1C441D670((v0 + 936), v22 + 16);
    sub_1C4469200();
    sub_1C44760B0(v17, v22 + v21);
    sub_1C44239FC(0, 0);
    swift_asyncLet_begin();
    sub_1C4436600();
    sub_1C4426C44();

    return MEMORY[0x1EEE6DEC0](v23, v24, v25, v26, v27, v28, v29, v30);
  }

  else
  {
    sub_1C44239FC(0, 0);

    sub_1C43FC1B0();
    sub_1C4426C44();

    return v5(v4, v5, v6, v7, v8, v9, v10, v11);
  }
}

uint64_t sub_1C448BC90()
{
  v1 = type metadata accessor for Pipeline.StatusStore(0);
  sub_1C43FCF7C(v1);
  v3 = *(v2 + 80);
  sub_1C440962C((v0 + 16));
  sub_1C4EF98F8();
  sub_1C43FD3F8();
  (*(v4 + 8))(v0 + ((v3 + 56) & ~v3));
  v5 = sub_1C445BFD0();

  return MEMORY[0x1EEE6BDD0](v5, v6, v7);
}

uint64_t sub_1C448BD48(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  sub_1C440A6B8();
  (*v3)(a2);
  return a2;
}

uint64_t sub_1C448BDA8()
{
  sub_1C43FCF70();
  v2 = sub_1C4403FC0();
  v3 = type metadata accessor for Pipeline.StatusStore(v2);
  sub_1C43FBD18(v3);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  v7 = sub_1C43FC218(v6);
  *v7 = v8;
  v7[1] = sub_1C442E8C4;

  return sub_1C448BE78(v0, v1 + 16, v1 + v5);
}

uint64_t sub_1C448BE78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1C448BE98, 0, 0);
}

uint64_t sub_1C448BE98()
{
  sub_1C43FCF70();
  v1 = *(v0 + 16);
  v2 = v1[4];
  sub_1C4409678(v1, v1[3]);
  v3 = swift_task_alloc();
  v4 = sub_1C4414DF4(v3);
  *v4 = v5;
  v4[1] = sub_1C44BF784;
  v6 = sub_1C4414E5C(*(v0 + 24));

  return sub_1C448BF44(v6, v7, v2);
}

uint64_t sub_1C448BF44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C448C710, 0, 0);
}

void *sub_1C448BF68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v56 = a3;
  v71 = a1;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v51 = &v48[-v6];
  v53 = sub_1C4EF9CD8();
  v52 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v8 = &v48[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v48[-v14];
  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v16 = sub_1C4F00978();
  sub_1C442B738(v16, qword_1EDE2DE10);
  v17 = *(v9 + 16);
  v57 = v3;
  v17(v15, v3, a2);
  v18 = sub_1C4F00968();
  v19 = sub_1C4F01CF8();
  v20 = os_log_type_enabled(v18, v19);
  v54 = v8;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v58 = v50;
    *v21 = 136315138;
    v17(v12, v15, a2);
    v22 = *(v9 + 8);
    v22(v15, a2);
    v23 = v56;
    v49 = v19;
    v24 = sub_1C4F02858();
    v26 = v25;
    v27 = v12;
    v28 = a2;
    v22(v27, a2);
    v29 = sub_1C441D828(v24, v26, &v58);

    *(v21 + 4) = v29;
    _os_log_impl(&dword_1C43F8000, v18, v49, "PhaseMetricsStart %s", v21, 0xCu);
    v30 = v50;
    sub_1C440962C(v50);
    MEMORY[0x1C6942830](v30, -1, -1);
    MEMORY[0x1C6942830](v21, -1, -1);
  }

  else
  {
    v28 = a2;
    (*(v9 + 8))(v15, a2);

    v23 = v56;
  }

  v31 = v55;
  result = sub_1C446ABD0(0);
  if (!v31)
  {
    v33 = result;
    if (qword_1EDDF7B60 != -1)
    {
      swift_once();
    }

    v68 = xmmword_1EDE2D960;
    v69 = *algn_1EDE2D970;
    v70 = qword_1EDE2D980;
    v34 = *(v23 + 16);
    v35 = v28;
    v36 = v34(v28, v23);
    sub_1C448DA58(v36, v37, v33, 0, 0);

    if (qword_1EDDF7B58 != -1)
    {
      swift_once();
    }

    v65 = xmmword_1EDE2D938;
    v66 = unk_1EDE2D948;
    v67 = qword_1EDE2D958;
    v38 = v34(v28, v23);
    sub_1C448DA58(v38, v39, v33, 0, 0);

    sub_1C4EF9CC8();
    if (qword_1EDDF7AE8 != -1)
    {
      swift_once();
    }

    v62 = xmmword_1EDE2D7D0;
    v63 = unk_1EDE2D7E0;
    v64 = qword_1EDE2D7F0;
    v34(v28, v23);
    sub_1C446ABD0(0);
    sub_1C448E94C();

    v40 = v51;
    v41 = v53;
    v42 = sub_1C44157D4(v51, 1, v53);
    sub_1C4423A0C(v40, &unk_1EC0B84E0, qword_1C4F0D2D0);
    if (v42 == 1)
    {
      v43 = v34(v35, v23);
      sub_1C448EA0C(v54, v33, v43, v44);

      v41 = v53;
    }

    if (qword_1EDDF7B50 != -1)
    {
      swift_once();
    }

    v59 = xmmword_1EDE2D910;
    v60 = unk_1EDE2D920;
    v61 = qword_1EDE2D930;
    v45 = v34(v35, v23);
    v46 = v54;
    sub_1C448EA0C(v54, v33, v45, v47);
    (*(v52 + 8))(v46, v41);
  }

  return result;
}

uint64_t sub_1C448C710()
{
  sub_1C448BF68(v0[2], v0[3], v0[4]);
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1C44BDFA0;
  v2 = v0[4];
  v3 = v0[3];

  return sub_1C448F314(v3, v2);
}

uint64_t sub_1C448C7F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ConstructionPhase.description.getter(a1, WitnessTable);
}

uint64_t ConstructionPhase.description.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Source(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = 60;
  v11 = 0xE100000000000000;
  v9[1] = a1;
  swift_getMetatypeMetadata();
  v7 = sub_1C4F01198();
  MEMORY[0x1C6940010](v7);

  MEMORY[0x1C6940010](3830560, 0xE300000000000000);
  (*(a2 + 16))(a1, a2);
  MEMORY[0x1C6940010](*v6, v6[1]);
  sub_1C448D818(v6);
  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return v10;
}

uint64_t sub_1C448C960@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_source;
  sub_1C440D164(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_source, v6);
  sub_1C44078C4();
  return sub_1C448CFCC(v1 + v3, a1, v4);
}

uint64_t sub_1C448C9D8()
{
  sub_1C4404078();
  v1(0);
  sub_1C43FBCE0();
  v2 = sub_1C43FBC98();
  v3(v2);
  return v0;
}

uint64_t sub_1C448CA30()
{
  sub_1C4404078();
  v1(0);
  sub_1C43FBCE0();
  v2 = sub_1C43FBC98();
  v3(v2);
  return v0;
}

uint64_t sub_1C448CA88(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C448CAE8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  v4 = sub_1C43FBC98();
  v5(v4);
  return a2;
}

uint64_t sub_1C448CB4C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C448CBAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v5(v4);
  sub_1C43FBCE0();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1C448CC08(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C448CC68(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C448CCC8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  v4 = sub_1C43FBC98();
  v5(v4);
  return a2;
}

uint64_t sub_1C448CD24(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C448CD84(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C448CDE4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C448CE44(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C448CEA4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C448CF04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C448CF6C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C448CFCC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  v4 = sub_1C43FBC98();
  v5(v4);
  return a2;
}

uint64_t sub_1C448D028(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C448D088()
{
  sub_1C4404078();
  v1(0);
  sub_1C43FBCE0();
  v2 = sub_1C43FBC98();
  v3(v2);
  return v0;
}

uint64_t sub_1C448D0E0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C448D140(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v5(v4);
  sub_1C43FBCE0();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1C448D19C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v5(v4);
  sub_1C43FBCE0();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1C448D1F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v5(v4);
  sub_1C43FBCE0();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1C448D254(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C448D2B4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FCE50();
  v4 = sub_1C43FBC98();
  v5(v4);
  return a2;
}

uint64_t sub_1C448D30C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FCE50();
  v4 = sub_1C43FBC98();
  v5(v4);
  return a2;
}

uint64_t sub_1C448D364(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v4(v3);
  sub_1C43FCE50();
  v5 = sub_1C43FBC98();
  v6(v5);
  return a2;
}

uint64_t sub_1C448D3B8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FCE50();
  v4 = sub_1C43FBC98();
  v5(v4);
  return a2;
}

uint64_t sub_1C448D410(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FCE50();
  v4 = sub_1C43FBC98();
  v5(v4);
  return a2;
}

uint64_t sub_1C448D468(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FCE50();
  v4 = sub_1C43FBC98();
  v5(v4);
  return a2;
}

uint64_t sub_1C448D4C0()
{
  sub_1C4404078();
  v1(0);
  sub_1C43FCE50();
  v2 = sub_1C43FBC98();
  v3(v2);
  return v0;
}

uint64_t sub_1C448D514(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v4(v3);
  sub_1C43FCE50();
  v5 = sub_1C43FBC98();
  v6(v5);
  return a2;
}

uint64_t sub_1C448D568(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v4(v3);
  sub_1C43FCE50();
  v5 = sub_1C43FBC98();
  v6(v5);
  return a2;
}

uint64_t sub_1C448D5BC()
{
  sub_1C4404078();
  v1(0);
  sub_1C43FCE50();
  v2 = sub_1C43FBC98();
  v3(v2);
  return v0;
}

uint64_t sub_1C448D610(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FCE50();
  v4 = sub_1C43FBC98();
  v5(v4);
  return a2;
}

uint64_t sub_1C448D668(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v4(v3);
  sub_1C43FCE50();
  v5 = sub_1C43FBC98();
  v6(v5);
  return a2;
}

uint64_t sub_1C448D6BC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FCE50();
  v4 = sub_1C43FBC98();
  v5(v4);
  return a2;
}

uint64_t sub_1C448D714(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FCE50();
  v4 = sub_1C43FBC98();
  v5(v4);
  return a2;
}

uint64_t sub_1C448D76C()
{
  sub_1C4404078();
  v1(0);
  sub_1C43FCE50();
  v2 = sub_1C43FBC98();
  v3(v2);
  return v0;
}

uint64_t sub_1C448D7C0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FCE50();
  v4 = sub_1C43FBC98();
  v5(v4);
  return a2;
}

uint64_t sub_1C448D818(uint64_t a1)
{
  v2 = type metadata accessor for Source(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C448D898()
{
  v1 = v0;
  v7 = 0;
  v8 = 0xE000000000000000;
  v2 = (v0 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_source);
  sub_1C440D164(v2, v6);
  v3 = *v2;
  v4 = v2[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v3, v4);

  MEMORY[0x1C6940010](8250, 0xE200000000000000);
  sub_1C448D934(*(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_pipelineType));
  return v7;
}

uint64_t sub_1C448D934(char a1)
{
  sub_1C4F02248();

  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      v3 = sub_1C441D16C();
      break;
    case 2:
      v2 = 0xE500000000000000;
      v3 = 0x61746C6564;
      break;
    case 3:
      v3 = sub_1C440DF74();
      break;
    default:
      break;
  }

  MEMORY[0x1C6940010](v3, v2);

  MEMORY[0x1C6940010](62, 0xE100000000000000);
  MEMORY[0x1C6940010](0x6E696C657069503CLL, 0xEF203A6570795465);
}

uint64_t sub_1C448DA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = *v5;
  v21 = v5[2];
  v10 = sub_1C4402CD0();
  sub_1C446F0D0(v10, v11);
  v12 = sub_1C4402CD0();
  sub_1C446F0D0(v12, v13);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C448DB48(&v20, v19);
  sub_1C448DBA4(&v21, v19);
  sub_1C448DC14(v5, a1, a2, a4, a5);

  v14 = sub_1C4402CD0();
  sub_1C44239FC(v14, v15);

  v16 = sub_1C4402CD0();
  return sub_1C44239FC(v16, v17);
}

uint64_t sub_1C448DBA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C448DC14(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1[3];
  if (v6)
  {
    v7 = a1[4];

    v8 = sub_1C4433DE4();
    v6(v8, a1);
    return sub_1C44239FC(v6, v7);
  }

  else
  {
    v11 = *a1;
    v10 = a1[1];
    if (a5)
    {
      sub_1C444B2B4();
      sub_1C441CBA4();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](v11, v10);
    }

    else
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    sub_1C441C09C();
    sub_1C448E76C();
  }
}

uint64_t sub_1C448DD20(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v4 = a3[1];
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = v5;
  *(inited + 40) = v4;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C448DE08();
  v8 = v7;
  v9 = sub_1C448E2AC();
  if (!v3)
  {
    if (v9)
    {
      sub_1C44999E0(v9, v8);
    }

    sub_1C448E5DC();
  }
}

void sub_1C448DE08()
{
  sub_1C43FEAE0();
  if (v1 && (sub_1C456902C(&qword_1EC0BDE40, &qword_1C4F32288), v2 = sub_1C4406320(), v3 = v2, (v4 = *(v0 + 16)) != 0))
  {
    v5 = 0;
    v6 = v2 + 56;
    while (v5 < *(v0 + 16))
    {
      v7 = (v0 + 32 + 16 * v5);
      v9 = *v7;
      v8 = v7[1];
      ++v5;
      sub_1C4F02AF8();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F01298();
      sub_1C4F02B68();
      sub_1C442E740();
      v12 = ~v11;
      while (1)
      {
        v13 = v10 & v12;
        v14 = (v10 & v12) >> 6;
        v15 = *(v6 + 8 * v14);
        v16 = 1 << (v10 & v12);
        if ((v16 & v15) == 0)
        {
          break;
        }

        v17 = (*(v3 + 48) + 16 * v13);
        v18 = *v17 == v9 && v17[1] == v8;
        if (v18 || (sub_1C4F02938() & 1) != 0)
        {

          goto LABEL_16;
        }

        v10 = v13 + 1;
      }

      *(v6 + 8 * v14) = v16 | v15;
      v19 = (*(v3 + 48) + 16 * v13);
      *v19 = v9;
      v19[1] = v8;
      sub_1C4410784();
      if (v21)
      {
        goto LABEL_19;
      }

      *(v3 + 16) = v20;
LABEL_16:
      if (v5 == v4)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_17:
  }
}

uint64_t sub_1C448DF88(uint64_t a1)
{
  v4 = v1 + *(a1 + 20);

  return sub_1C4467FE0(v4, v2);
}

void sub_1C448DFA8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t sub_1C448DFF4(uint64_t a1)
{

  return sub_1C4F003F8();
}

uint64_t sub_1C448E020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12)
{
  a12 = *(v13 + *(v12 + 28));

  return sub_1C44AF8F4(&a12);
}

void sub_1C448E048(uint64_t a1@<X8>)
{
  *(v3 - 184) = *(v1 + 72);
  *(v3 - 216) = ~a1;
  *(v3 - 208) = v2;
}

__n128 sub_1C448E09C()
{
  result = *(v0 - 112);
  *(v0 - 176) = *(v0 - 128);
  *(v0 - 160) = result;
  return result;
}

void sub_1C448E0C0()
{
  v2 = *(v0 - 544);
}

uint64_t sub_1C448E0D8@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 96) = v1;
  *(v2 - 88) = a1;

  return sub_1C4EFB658();
}

uint64_t sub_1C448E194()
{
  *(v0 - 112) = 6;

  return sub_1C4F026C8();
}

uint64_t sub_1C448E22C()
{
  sub_1C441B2E0();
  sub_1C441C090();

  v1 = sub_1C440CAAC();
  v2 = v0(v1);

  return v2;
}

void sub_1C448E2EC()
{
  sub_1C43FE96C();
  sub_1C4411CC4();
  v2 = v1;
  sub_1C4EFB1E8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBFDC();
  sub_1C440D420();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FEFC4(v5, v6, v7, v8, v9, v10, v11, v12, v27);
  sub_1C43FCDF8();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C4406E1C();
  sub_1C441DCFC();
  v16 = sub_1C43FD2BC();
  sub_1C456902C(v16, v17);
  sub_1C4418A58();
  if (!v0)
  {
    goto LABEL_8;
  }

  v18 = v0;
  sub_1C4EFA798();
  sub_1C447F088();
  sub_1C445E7F4();
  v19 = *(v14 + 8);
  v20 = sub_1C43FCE84();
  v19(v20);
  if (v2)
  {

    v23 = sub_1C4778264();
    sub_1C43FFB2C(&type metadata for ErrorHandlingDatabasePoolError, v23);
    sub_1C4433CB8();
LABEL_8:
    sub_1C440431C();
    sub_1C43FBC80();
    return;
  }

  v21 = v0;
  sub_1C4EFAAC8();
  sub_1C447F088();
  sub_1C445E7F4();
  v22 = sub_1C43FCE84();
  v19(v22);
  sub_1C441842C();
  v24 = sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if (!sub_1C4409C64(v24))
  {

    goto LABEL_8;
  }

  v25 = sub_1C4403150();
  v26(v25);
  sub_1C44159C8(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL);
  __break(1u);
}

void (*sub_1C448E5B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (**a5)(uint64_t, uint64_t)@<X8>))(uint64_t, uint64_t)
{
  result = sub_1C448E55C(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

void sub_1C448E5DC()
{
  sub_1C4413F18();
  sub_1C4433528();
  sub_1C456902C(&qword_1EC0BFE20, &qword_1C4F3DD48);
  sub_1C4418B14();
  v1 = swift_allocObject();
  sub_1C4414C68(v1, xmmword_1C4F0D130);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C456902C(&qword_1EC0B9170, &unk_1C4F0EC70);
  v2 = sub_1C448E6E8();
  sub_1C4425D04(v2);
  sub_1C4410EA4();

  if (!v0)
  {
    sub_1C4409E00();
    MEMORY[0x1EEE9AC00](v3);
    sub_1C43FDA14();
    sub_1C4435934();
    v4 = sub_1C4404044();
    sub_1C4434000(v4, v5);
  }

  sub_1C441C2B4();
  sub_1C44102DC();
}

unint64_t sub_1C448E6E8()
{
  result = qword_1EDDF0618;
  if (!qword_1EDDF0618)
  {
    sub_1C4572308(&qword_1EC0B9170, &unk_1C4F0EC70);
    sub_1C496D2EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF0618);
  }

  return result;
}

void sub_1C448E76C()
{
  sub_1C4413F18();
  sub_1C4424CEC();
  v2 = v1;
  v4 = v3;
  sub_1C441AE30();
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  sub_1C4434164();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C4F0D130;
  *(v5 + 32) = v4;
  *(v5 + 40) = v2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  v6 = sub_1C449C8D4();
  sub_1C4425D04(v6);
  sub_1C4410EA4();

  if (!v0)
  {
    sub_1C4409E00();
    MEMORY[0x1EEE9AC00](v7);
    sub_1C43FF2A4();
    sub_1C444FDF0(v8);
    sub_1C4435934();
    v9 = sub_1C4404044();
    sub_1C4434000(v9, v10);
  }

  sub_1C441C2B4();
  sub_1C44102DC();
}

unint64_t sub_1C448E890(uint64_t a1)
{
  result = sub_1C4400020(a1);
  if (!result)
  {
    sub_1C4572308(&qword_1EC0B8EB8, &unk_1C4F0E920);
    sub_1C440D274();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C448E8F4(uint64_t a1)
{
  result = sub_1C4400020(a1);
  if (!result)
  {
    v3 = sub_1C4572308(&qword_1EC0B8EB8, &unk_1C4F0E920);
    result = sub_1C44F0D20(v3);
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1C448E94C()
{
  sub_1C4412004();
  if (!v4)
  {
    sub_1C440AE64();
    result = sub_1C446FB00();
    if (!v1)
    {
      return result;
    }

    goto LABEL_6;
  }

  v15 = v3;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C441CBA4();
  v5 = MEMORY[0x1C6940010](*v2, v2[1]);
  sub_1C442CDD8(v5, v6, v7, v8, v9, v10, v11, v12, v15);
  sub_1C446FB00();
  if (v1)
  {

LABEL_6:
    v14 = sub_1C4EF9CD8();
    return sub_1C440BAA8(v0, 1, 1, v14);
  }
}

uint64_t sub_1C448EA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1C456902C(&qword_1EC0C2AA8, &qword_1C4F4E070);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18[-v8];
  v10 = *(v7 + 52);
  v11 = sub_1C4EF9CD8();
  (*(*(v11 - 8) + 16))(&v9[v10], a1, v11);
  v13 = *(v4 + 3);
  v12 = *(v4 + 4);
  v14 = v4[1];
  v19 = *v4;
  v20 = *(v4 + 2);
  *v9 = v19;
  *(v9 + 1) = v14;
  *(v9 + 4) = v12;
  v15 = &v9[*(v7 + 56)];
  *v15 = v13;
  v15[1] = v12;
  sub_1C446F0D0(v13, v12);
  sub_1C446F0D0(v13, v12);
  sub_1C448DB48(&v19, v18);
  sub_1C448DBA4(&v20, v18);
  sub_1C448EB8C();
  return sub_1C4423A0C(v9, &qword_1EC0C2AA8, &qword_1C4F4E070);
}

uint64_t sub_1C448EB8C()
{
  sub_1C440D848();
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = *(v1 + 32);

    sub_1C442604C();
    v2();
    v4 = sub_1C441E6D0();
    return sub_1C44239FC(v4, v3);
  }

  else
  {
    if (v0)
    {
      sub_1C444B2B4();
      sub_1C441CBA4();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C443F350();
    }

    else
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    sub_1C441C09C();
    sub_1C448EE10();
    sub_1C441E6D0();
  }
}

uint64_t sub_1C448EC94(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](46, 0xE100000000000000);
    MEMORY[0x1C6940010](*a2, a2[1]);
    sub_1C448EE10();
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v7 = sub_1C4F00978();
    sub_1C442B738(v7, qword_1EDDFECB8);
    v8 = sub_1C4F00968();
    v9 = sub_1C4F01CD8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1C43F8000, v8, v9, "<PipelineStatus> Phase specific status should always have a keyPrefix", v10, 2u);
      MEMORY[0x1C6942830](v10, -1, -1);
    }

    sub_1C4AD3B98();
    swift_allocError();
    *v11 = 0;
    return swift_willThrow();
  }
}

void sub_1C448EE10()
{
  sub_1C440BDEC();
  sub_1C456902C(&qword_1EC0B8F08, &unk_1C4F0E9B0);
  sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v1 = sub_1C4422B0C();
  v2 = sub_1C442A434(v1, xmmword_1C4F0D130);
  v3(v2);
  v4 = sub_1C4404044();
  sub_1C456902C(v4, v5);
  sub_1C448EFBC(&qword_1EDDFA5C8, &qword_1EC0B90E8, &qword_1C4F3DCF0);
  sub_1C4EF96D8();
  sub_1C4410EA4();

  if (!v0)
  {
    sub_1C4409E00();
    MEMORY[0x1EEE9AC00](v6);
    sub_1C43FF2A4();
    sub_1C447CBF0(v7);
    sub_1C4435934();
    v8 = sub_1C4404044();
    sub_1C4434000(v8, v9);
  }

  sub_1C440EE0C();
}

uint64_t sub_1C448EFBC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(a2, a3);
    sub_1C4411EF4();
    sub_1C496CC38(v5, v6, MEMORY[0x1E6969538]);
    sub_1C4410428();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C448F040(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&unk_1EC0B84E0, qword_1C4F0D2D0);
    sub_1C4BA91B0(a2, MEMORY[0x1E6969530], a3);
    result = sub_1C44254A0();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C448F114@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *result = a2;
  *(result + 8) = v2;
  *(result + 16) = v3;
  return result;
}

id sub_1C448F148(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_1C448F194()
{

  return swift_beginAccess();
}

unint64_t sub_1C448F1C0()
{

  return sub_1C441D828(v0, v1, (v2 - 176));
}

uint64_t sub_1C448F1DC(uint64_t a1)
{

  return sub_1C4EFF808();
}

uint64_t sub_1C448F20C@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 120) = a1;
  *(v2 - 144) = v1;

  return sub_1C4EFB658();
}

uint64_t sub_1C448F234(uint64_t a1)
{
  *(v2 - 112) = v1;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C448F250()
{
}

uint64_t sub_1C448F268()
{

  return sub_1C44544DC(v0, _s17ViewUpdateResultsVMa);
}

uint64_t sub_1C448F2E8@<X0>(void *a1@<X8>, double a2@<D0>)
{
  v6 = *(v4 - 112);
  *a1 = *(v4 - 120);
  a1[1] = v6;
  *(v2 + *(v3 + 44)) = a2;
  *(v2 + *(v3 + 48)) = *(v4 - 148);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C448F314(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *(a1 - 8);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C448F3E4, 0, 0);
}

uint64_t sub_1C448F3E4()
{
  v29 = v0;
  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  v5 = sub_1C4F00978();
  v0[9] = sub_1C442B738(v5, qword_1EDE2DE10);
  v6 = *(v3 + 16);
  v0[10] = v6;
  v0[11] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v2, v4);
  v7 = sub_1C4F00968();
  v8 = sub_1C4F01CF8();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[8];
  if (v9)
  {
    v11 = v0[7];
    v12 = v0[5];
    v13 = v0[2];
    v14 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v28 = v26;
    *v14 = 136315138;
    v6(v11, v10, v13);
    v15 = *(v12 + 8);
    v15(v10, v13);
    v16 = sub_1C4F02858();
    v18 = v17;
    v15(v11, v13);
    v19 = sub_1C441D828(v16, v18, &v28);

    *(v14 + 4) = v19;
    sub_1C4404638(&dword_1C43F8000, v20, v21, "PhaseStart %s");
    sub_1C440962C(v26);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {
    v15 = *(v0[5] + 8);
    v15(v0[8], v0[2]);
  }

  v0[12] = v15;
  v27 = (*(v0[3] + 24) + **(v0[3] + 24));
  v22 = swift_task_alloc();
  v0[13] = v22;
  *v22 = v0;
  v22[1] = sub_1C44BDC7C;
  v23 = v0[3];
  v24 = v0[2];

  return v27(v24, v23);
}

uint64_t sub_1C448F6CC()
{
  sub_1C43FBCD4();
  *(v1 + 128) = v0;
  v2 = type metadata accessor for Source(0);
  sub_1C43FBD18(v2);
  *(v1 + 136) = swift_task_alloc();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C448F750()
{
  sub_1C43FBCD4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C442E8C4;

  return sub_1C448F6CC();
}

uint64_t sub_1C448F7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1C4405098();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = *(v22 + 128);
  v26 = OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_pipelineType;
  *(v22 + 144) = OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_pipelineType;
  v27 = 0xE700000000000000;
  v28 = 0x6E776F6E6B6E75;
  switch(*(v25 + v26))
  {
    case 1:

      goto LABEL_6;
    case 2:
      v27 = 0xE500000000000000;
      v28 = 0x61746C6564;
      break;
    case 3:
      v27 = 0xEA0000000000676ELL;
      v28 = sub_1C44133C0();
      break;
    default:
      break;
  }

  v29 = sub_1C441DE10(v28, v27);

  if (v29)
  {
LABEL_6:
    v31 = *(v22 + 128);
    v30 = *(v22 + 136);
    type metadata accessor for PhaseStores(0);
    v32 = OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_source;
    sub_1C440D164(v31 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_source, v22 + 96);
    sub_1C44078C4();
    sub_1C448CFCC(v31 + v32, v30, v33);
    v34 = sub_1C44900CC();
    sub_1C442D1D0();
    sub_1C447EAE0(v30, v35);
    if (v34 - 2 < 2)
    {
      if (qword_1EDDFD028 != -1)
      {
        sub_1C4419274();
        swift_once();
      }

      v36 = sub_1C441BC3C();
      sub_1C43FF4EC(v36, qword_1EDE2DE10);
      v37 = sub_1C4F00968();
      v38 = sub_1C4F01CF8();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        a10 = swift_slowAlloc();
        *v39 = 136315394;
        *(v22 + 202) = v34;
        v40 = sub_1C4F01198();
        v42 = sub_1C441D828(v40, v41, &a10);

        *(v39 + 4) = v42;
        *(v39 + 12) = 2080;
        v43 = sub_1C4AD00FC();
        v47 = sub_1C4426D4C(v43, v44, v45, v46);

        *(v39 + 14) = v47;
        _os_log_impl(&dword_1C43F8000, v37, v38, "Phase already ran with status: %s, skipping %s", v39, 0x16u);
        swift_arrayDestroy();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      sub_1C43FC1B0();
      sub_1C43FD0C0();

      return v70(v69, v70, v71, v72, v73, v74, v75, v76, a9, a10, a11, a12, a13, a14);
    }

    if (v34)
    {
      if (qword_1EDDFD028 != -1)
      {
        sub_1C4419274();
        swift_once();
      }

      v51 = sub_1C441BC3C();
      sub_1C43FF4EC(v51, qword_1EDE2DE10);
      v52 = sub_1C4F00968();
      sub_1C4F01CF8();
      sub_1C44253BC();
      if (sub_1C443FF34())
      {
        sub_1C440FAA4();
        sub_1C440E550();
        sub_1C440D1D4();
        *v31 = 136315138;
        v53 = sub_1C4AD00FC();
        sub_1C4426D4C(v53, v54, v55, v56);
        sub_1C44160EC();
        *(v31 + 4) = &unk_1C4F0C000;
        sub_1C4404638(&dword_1C43F8000, v57, v58, "Resuming already started phase for %s");
        sub_1C440AEF4();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }
    }

    else
    {
      v48 = *(v22 + 136);
      sub_1C44078C4();
      sub_1C448CFCC(v31 + v32, v48, v49);
      sub_1C4490D2C();
      sub_1C442D1D0();
      sub_1C447EAE0(v48, v50);
    }
  }

  v59 = *(v22 + 128);
  v60 = OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor;
  sub_1C442E860(v59 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor, v22 + 16);
  v61 = *(v22 + 40);
  v62 = *(v22 + 48);
  sub_1C4409678((v22 + 16), v61);
  (*(*(*(v62 + 8) + 8) + 56))(v61);
  sub_1C440962C((v22 + 16));
  sub_1C442E860(v59 + v60, v22 + 56);
  sub_1C4409678((v22 + 56), *(v22 + 80));
  *(v22 + 201) = *(v25 + v26);
  v63 = swift_task_alloc();
  *(v22 + 152) = v63;
  *v63 = v22;
  v63[1] = sub_1C44A0864;
  sub_1C43FD0C0();

  return ResumableStage.executeIfRequired(_:)(v64, v65, v66);
}

void sub_1C448FE8C()
{
  sub_1C43FE96C();
  sub_1C4400368();
  sub_1C4EFB1E8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBFDC();
  sub_1C4433378();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FC318();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4406E1C();
  sub_1C4404B44();
  sub_1C4EFAF88();
  if (!v2)
  {
    goto LABEL_8;
  }

  v8 = v2;
  sub_1C4EFA798();
  sub_1C447F088();
  sub_1C445E7F4();
  v9 = *(v6 + 8);
  v10 = sub_1C43FCE84();
  v9(v10);
  if (v0)
  {

    v13 = sub_1C4778264();
    sub_1C43FFB2C(&type metadata for ErrorHandlingDatabasePoolError, v13);
    sub_1C4433CB8();
LABEL_8:
    sub_1C440431C();
    sub_1C43FBC80();
    return;
  }

  v11 = v2;
  sub_1C4EFAAC8();
  sub_1C447F088();
  sub_1C445E7F4();
  v12 = sub_1C43FCE84();
  v9(v12);
  sub_1C441842C();
  v14 = sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if (!sub_1C441D1F8(v1, &v19, v14))
  {

    goto LABEL_8;
  }

  v15 = sub_1C43FD75C();
  v16(v15);
  v17 = sub_1C441C250(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL);
  sub_1C4774554(v17, v18);
  __break(1u);
}

uint64_t sub_1C44900CC()
{

  sub_1C440CABC();
  sub_1C4490138();
  v1 = v0;

  return v1;
}

uint64_t sub_1C44901D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C449021C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4490264(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C44902AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C44902F4(uint64_t a1)
{
  result = sub_1C4400020(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ConstructionStatus(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C4490404);
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

uint64_t sub_1C449042C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v22 = a3;
  v23 = a1;
  v4 = sub_1C456902C(&qword_1EC0BE548, &qword_1C4F37370);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v7 = type metadata accessor for ConstructionPhaseStatus(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C456902C(&qword_1EC0BE550, &qword_1C4F37378);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - v12;
  if (qword_1EDDE2610 != -1)
  {
    swift_once();
  }

  v14 = sub_1C4EFBD38();
  v15 = sub_1C442B738(v14, qword_1EDE2CBB8);
  v25[3] = v14;
  v25[4] = MEMORY[0x1E69A0050];
  v16 = sub_1C4422F90(v25);
  (*(*(v14 - 8) + 16))(v16, v15, v14);
  v24[3] = type metadata accessor for Source(0);
  v24[4] = sub_1C4490890(qword_1EDDF0D80, type metadata accessor for Source, &protocol conformance descriptor for Source);
  v17 = sub_1C4422F90(v24);
  sub_1C4490938(a2, v17, type metadata accessor for Source);
  v26[3] = sub_1C4EFB298();
  v26[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v26);
  sub_1C4EFBB28();
  sub_1C4420C3C(v24, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v25);
  sub_1C4490890(&qword_1EDDE2608, type metadata accessor for ConstructionPhaseStatus, &protocol conformance descriptor for ConstructionPhaseStatus);
  sub_1C4EFAE28();
  sub_1C440962C(v26);
  sub_1C4401CBC(&qword_1EDDF0088, &qword_1EC0BE550, &qword_1C4F37378, MEMORY[0x1E699FF60]);
  sub_1C4490890(&qword_1EDDE25F8, type metadata accessor for ConstructionPhaseStatus, &protocol conformance descriptor for ConstructionPhaseStatus);
  v18 = v26[6];
  sub_1C4EFAFF8();
  result = (*(v11 + 8))(v13, v10);
  if (!v18)
  {
    if (sub_1C44157D4(v6, 1, v7) == 1)
    {
      result = sub_1C4420C3C(v6, &qword_1EC0BE548, &qword_1C4F37370);
      v20 = 0;
    }

    else
    {
      sub_1C44D1B5C(v6, v9, type metadata accessor for ConstructionPhaseStatus);
      v20 = v9[*(v7 + 20)];
      result = sub_1C4491300(v9, type metadata accessor for ConstructionPhaseStatus);
    }

    *v22 = v20;
  }

  return result;
}

uint64_t sub_1C4490890(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C44908D8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4490938(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4490998(uint64_t a1)
{
  v2 = sub_1C4490A14(&qword_1EDDF0D70, type metadata accessor for Source, &protocol conformance descriptor for Source);

  return MEMORY[0x1EEE09B08](a1, v2);
}

uint64_t sub_1C4490A14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C4490ABC()
{
  v4 = sub_1C43FC36C();
  type metadata accessor for Source(v4);
  sub_1C43FCF8C();
  if (*(v5 + 84) == v3)
  {
    sub_1C43FD5B4();
    sub_1C43FE688();

    sub_1C440BAA8(v6, v7, v8, v9);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0 + 3;
  }
}

uint64_t sub_1C4490B5C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C4EFD548();
    v8 = v5 + *(a4 + 24);

    return sub_1C440BAA8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C4490BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4403FC0();
  type metadata accessor for Source(v6);
  sub_1C43FCF8C();
  if (*(v7 + 84) == a2)
  {
    v8 = sub_1C448F13C();

    return sub_1C44157D4(v8, a2, v9);
  }

  else
  {
    v11 = *(v3 + *(a3 + 20));
    if (v11 >= 4)
    {
      return v11 - 3;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1C4490CA4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C4EFD548();
    v9 = a1 + *(a3 + 24);

    return sub_1C44157D4(v9, a2, v8);
  }
}

uint64_t sub_1C4490D2C()
{

  v0 = sub_1C440CABC();
  sub_1C446C37C(v0, v1);
}

uint64_t sub_1C4490D94(uint64_t a1, uint64_t a2, char a3)
{
  v5 = type metadata accessor for ConstructionPhaseStatus(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4490938(a2, v7, type metadata accessor for Source);
  v7[*(v5 + 20)] = a3;
  sub_1C4490890(&qword_1EDDE25F0, type metadata accessor for ConstructionPhaseStatus, &protocol conformance descriptor for ConstructionPhaseStatus);
  sub_1C4EFB6C8();
  return sub_1C4491300(v7, type metadata accessor for ConstructionPhaseStatus);
}

uint64_t sub_1C4490EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EDDE25E0, type metadata accessor for ConstructionPhaseStatus, &protocol conformance descriptor for ConstructionPhaseStatus);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t sub_1C4490F60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4490FA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void ConstructionPhaseStatus.encode(to:)()
{
  sub_1C4413F18();
  sub_1C440EDD4();
  sub_1C456902C(&qword_1EC0BE0E8, &qword_1C4F32620);
  sub_1C4403200();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FE61C();
  sub_1C43FD870();
  v2 = sub_1C4491148();
  sub_1C440F61C(&type metadata for ConstructionPhaseStatus.CodingKeys, v3, v2);
  v4 = sub_1C441D6E4();
  type metadata accessor for Source(v4);
  sub_1C441FBB8();
  sub_1C4490F60(v5, v6, &protocol conformance descriptor for Source);
  sub_1C43FE6CC();
  sub_1C43FC428();
  sub_1C4F027E8();
  if (!v0)
  {
    v7 = type metadata accessor for ConstructionPhaseStatus(0);
    sub_1C4441740(v7);
    sub_1C440D3E4();
    sub_1C4F027E8();
  }

  v8 = sub_1C43FF120();
  v9(v8);
  sub_1C441C2B4();
  sub_1C44102DC();
}

unint64_t sub_1C4491148()
{
  result = qword_1EDDE2628;
  if (!qword_1EDDE2628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE2628);
  }

  return result;
}

unint64_t sub_1C44911D0()
{
  result = qword_1EDDE5D18[0];
  if (!qword_1EDDE5D18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDE5D18);
  }

  return result;
}

unint64_t sub_1C4491274()
{
  result = qword_1EDDE5D10;
  if (!qword_1EDDE5D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE5D10);
  }

  return result;
}

uint64_t sub_1C44912C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C44912F4(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1C4491300(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C4491370(uint64_t (*a1)(void), void (*a2)(void), void (*a3)(void), uint64_t (*a4)(uint64_t))
{
  v7 = a1(0);
  v8 = sub_1C43FBD18(v7);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  result = sub_1C4F01948();
  if (result)
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v15 = sub_1C4F00978();
    sub_1C442B738(v15, qword_1EDE2DE10);
    v16 = sub_1C4414A08();
    sub_1C448CFCC(v16, v17, a2);
    v18 = sub_1C4F00968();
    v19 = sub_1C4F01CF8();
    if (os_log_type_enabled(v18, v19))
    {
      sub_1C43FECF0();
      v20 = swift_slowAlloc();
      v29 = a4;
      v21 = v20;
      v22 = swift_slowAlloc();
      v30 = v22;
      *v21 = 136315138;
      sub_1C448CFCC(v13, v10, a2);
      v23 = sub_1C447EAE0(v13, a3);
      v24 = v29(v23);
      v26 = v25;
      sub_1C447EAE0(v10, a3);
      v27 = sub_1C441D828(v24, v26, &v30);

      *(v21 + 4) = v27;
      _os_log_impl(&dword_1C43F8000, v18, v19, "%s going to defer", v21, 0xCu);
      sub_1C440962C(v22);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {
      sub_1C447EAE0(v13, a3);
    }

    sub_1C4F01828();
    sub_1C4AD0B60(&qword_1EDDFCF00, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    swift_allocError();
    sub_1C4F00EA8();
    return swift_willThrow();
  }

  return result;
}

uint64_t ResumableStage.executeIfRequired(_:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 256) = a3;
  *(v4 + 264) = v3;
  *(v4 + 248) = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C43FBEF8();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1C43FBEF8();
  v8 = swift_getAssociatedConformanceWitness();
  *(v4 + 272) = type metadata accessor for ProgressToken(255, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  v9 = sub_1C4F01F48();
  *(v4 + 280) = v9;
  sub_1C43FCF7C(v9);
  *(v4 + 288) = v10;
  *(v4 + 296) = sub_1C43FBE7C();
  v11 = type metadata accessor for Configuration(0);
  *(v4 + 304) = v11;
  sub_1C43FBD18(v11);
  *(v4 + 312) = sub_1C43FBE7C();
  v12 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  *(v4 + 320) = v12;
  sub_1C43FBD18(v12);
  *(v4 + 328) = sub_1C43FBE7C();
  v13 = type metadata accessor for PhaseStores(0);
  sub_1C43FBD18(v13);
  *(v4 + 336) = sub_1C43FBE7C();
  v14 = type metadata accessor for Pipeline.StatusStore(0);
  *(v4 + 344) = v14;
  sub_1C43FBD18(v14);
  *(v4 + 352) = sub_1C43FBE7C();
  *(v4 + 377) = *a1;
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1C449184C()
{
  v52 = v0;
  v1 = *(v0 + 377);
  v3 = *(v0 + 344);
  v2 = *(v0 + 352);
  v4 = *(v0 + 336);
  v5 = *(*(v0 + 256) + 8);
  sub_1C4425424();
  v6();
  sub_1C440E79C();
  sub_1C44921D4();
  sub_1C441A548();
  sub_1C447EBE4(v4, v7);
  *(v2 + *(v3 + 20)) = v1;
  switch(v1)
  {
    case 1:

      goto LABEL_5;
    case 3:
      sub_1C44133C0();
      goto LABEL_4;
    default:
LABEL_4:
      v8 = sub_1C4F02938();

      if ((v8 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_5:
      sub_1C449222C();
      sub_1C44DDE2C();
      if (*(v0 + 160))
      {
        v9 = *(v0 + 168);
        sub_1C4409678((v0 + 136), *(v0 + 160));
        v10 = sub_1C43FCFC0();
        v12 = v11(v10, v9);
        sub_1C440962C((v0 + 136));
        if (v12)
        {
          if (qword_1EDDFD028 != -1)
          {
            sub_1C4419274();
            swift_once();
          }

          v13 = sub_1C4F00978();
          sub_1C442B738(v13, qword_1EDE2DE10);
          v14 = sub_1C4F00968();
          v15 = sub_1C4F01CF8();
          v16 = sub_1C4400B94(v15);
          v17 = *(v0 + 352);
          if (v16)
          {
            v18 = *(v0 + 248);
            sub_1C43FECF0();
            v19 = swift_slowAlloc();
            sub_1C43FEC60();
            v20 = swift_slowAlloc();
            v51[0] = v20;
            *v19 = 136315138;
            *(v0 + 240) = v18;
            swift_getMetatypeMetadata();
            v21 = sub_1C4F01198();
            v23 = sub_1C441D828(v21, v22, v51);

            *(v19 + 4) = v23;
            sub_1C4404638(&dword_1C43F8000, v24, v25, "<%s - Skipping> due to presence of token");
            sub_1C440962C(v20);
            sub_1C43FBCFC();
            MEMORY[0x1C6942830](v26);
            sub_1C43FBCFC();
            MEMORY[0x1C6942830](v27);
          }

          sub_1C4420C3C(v0 + 96, &qword_1EC0BA490, &unk_1C4F53630);
          sub_1C4407B64();
          sub_1C447EBE4(v17, v28);
          sub_1C442ED08();

          sub_1C43FBDA0();
          goto LABEL_24;
        }
      }

      else
      {
        sub_1C4420C3C(v0 + 136, &qword_1EC0BA490, &unk_1C4F53630);
      }

      if (!Pipeline.StatusStore.isLongRunningPipelineActivated()())
      {
        sub_1C44DDE2C();
        if (*(v0 + 200))
        {
          v29 = *(v0 + 208);
          sub_1C4409678((v0 + 176), *(v0 + 200));
          v30 = sub_1C43FCFC0();
          v32 = v31(v30, v29);
          sub_1C440962C((v0 + 176));
          if (v32 >= 2)
          {
            if (qword_1EDDFC178 != -1)
            {
              swift_once();
            }

            v33 = *(v0 + 328);
            v34 = *(v0 + 304);
            sub_1C442B738(*(v0 + 320), qword_1EDE2DD88);
            swift_beginAccess();
            sub_1C44DDE2C();
            LODWORD(v34) = sub_1C44157D4(v33, 1, v34);
            sub_1C4420C3C(v33, &unk_1EC0B9610, &unk_1C4F0F2E0);
            v35 = *(v0 + 352);
            if (v34 == 1)
            {
              sub_1C446D0DC();
              swift_allocError();
              *v36 = 0xD000000000000037;
              *(v36 + 8) = 0x80000001C4FB1670;
              *(v36 + 16) = 2;
              swift_willThrow();
            }

            else
            {
              type metadata accessor for OneShotSingletons();
              sub_1C446703C(0xD000000000000013);
              sub_1C4467260();

              sub_1C440E79C();
              sub_1C44921D4();
              v51[0] = 0xD000000000000010;
              v51[1] = 0x80000001C4FAAFC0;
              v46 = *(v0 + 312);
              v47 = sub_1C4404C28();
              MEMORY[0x1C6940010](v47);

              MEMORY[0x1C6940010](0x746E65727275632ELL, 0xE800000000000000);
              type metadata accessor for KeyValueStore(0);
              swift_allocObject();
              KeyValueStore.init(config:domain:)(v46, 0xD000000000000010, 0x80000001C4FAAFC0);
              if (qword_1EDDE9560[0] != -1)
              {
                swift_once();
              }

              v48 = qword_1EDE2D100;
              v49 = *algn_1EDE2D0F0;
              *(v0 + 16) = xmmword_1EDE2D0E0;
              *(v0 + 32) = v49;
              *(v0 + 48) = v48;
              sub_1C4B47180((v0 + 16), 1, 0, 0);
              if (qword_1EDDF7BC0 != -1)
              {
                swift_once();
              }

              v50 = *&qword_1EDE2DA88;
              *(v0 + 56) = xmmword_1EDE2DA78;
              *(v0 + 72) = v50;
              *(v0 + 88) = qword_1EDE2DA98;
              sub_1C446BA18();
              v35 = *(v0 + 352);
              sub_1C49AFFF8();
              swift_allocError();
              swift_willThrow();
            }

            sub_1C4420C3C(v0 + 96, &qword_1EC0BA490, &unk_1C4F53630);
            sub_1C4407B64();
            sub_1C447EBE4(v35, v40);

            sub_1C43FBDA0();
LABEL_24:
            sub_1C43FD0C0();

            __asm { BRAA            X1, X16 }
          }
        }

        else
        {
          sub_1C4420C3C(v0 + 176, &qword_1EC0BA490, &unk_1C4F53630);
        }
      }

      v38 = *(v0 + 288);
      v37 = *(v0 + 296);
      v39 = *(v0 + 280);
      sub_1C440BAA8(v37, 1, 1, *(v0 + 272));
      ResumableStage.createProgressToken(_:complete:)();
      (*(v38 + 8))(v37, v39);
      sub_1C4420C3C(v0 + 96, &qword_1EC0BA490, &unk_1C4F53630);
LABEL_23:
      (*(v5 + 56))(*(v0 + 248), v5);
      *(v0 + 376) = *(v0 + 377);
      v43 = swift_task_alloc();
      *(v0 + 360) = v43;
      *v43 = v0;
      v43[1] = sub_1C44A06D0;
      sub_1C43FD0C0();

      return sub_1C449546C();
  }
}

uint64_t sub_1C449217C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v4(v3);
  sub_1C43FBCE0();
  v5 = sub_1C43FBC98();
  v6(v5);
  return a2;
}

uint64_t sub_1C44921D4()
{
  sub_1C4404078();
  v1(0);
  sub_1C43FBCE0();
  v2 = sub_1C43FBC98();
  v3(v2);
  return v0;
}

void sub_1C449222C()
{
  sub_1C43FBD3C();
  v4 = v3;
  v6 = v5;
  v39 = v7;
  v8 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  sub_1C43FBD18(v8);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1C4413644();
  v38 = type metadata accessor for ConstructionProgressTokens(v10);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v12 = sub_1C43FBE44();
  type metadata accessor for PhaseStores(v12);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v16 = v15 - v14;
  v17 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  sub_1C43FBD18(v17);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FE94C();
  v19 = type metadata accessor for ProgressTokens(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBCC4();
  v21 = sub_1C43FBEF8();
  v22(v21);
  switch(LOBYTE(v40[0]))
  {
    case 2:

      goto LABEL_5;
    case 3:
      sub_1C44133C0();
      break;
    default:
      break;
  }

  v37 = v1;
  sub_1C4426E50();
  v23 = sub_1C4F02938();

  if ((v23 & 1) == 0)
  {
    sub_1C4425424();
    v32 = sub_1C43FBEF8();
    v33(v32);

    sub_1C441A548();
    sub_1C447EBE4(v16, v34);
    v41 = v6;
    v42 = v4;
    v35 = sub_1C4422F90(v40);
    (*(*(v6 - 8) + 16))(v35, v0, v6);
    sub_1C4403758();
    sub_1C4492704(v40, 0, v36, sub_1C449277C);

    sub_1C440962C(v40);
    if (sub_1C44157D4(v37, 1, v38) == 1)
    {
      v29 = &unk_1EC0BAC20;
      v30 = &unk_1C4F141E0;
      v31 = v37;
      goto LABEL_9;
    }

    sub_1C449F390();
    *(v39 + 24) = v38;
    *(v39 + 32) = &off_1F43EE970;
    sub_1C4422F90(v39);
LABEL_12:
    sub_1C449F390();
    goto LABEL_13;
  }

LABEL_5:
  sub_1C4425424();
  v24 = sub_1C43FBEF8();
  v25(v24);

  sub_1C441A548();
  sub_1C447EBE4(v16, v26);
  v41 = v6;
  v42 = v4;
  v27 = sub_1C4422F90(v40);
  (*(*(v6 - 8) + 16))(v27, v0, v6);
  sub_1C4417828();
  sub_1C4492704(v40, 0, v28, sub_1C44FEF60);

  sub_1C440962C(v40);
  if (sub_1C44157D4(v2, 1, v19) != 1)
  {
    sub_1C449F390();
    *(v39 + 24) = v19;
    *(v39 + 32) = &off_1F43EE918;
    sub_1C4422F90(v39);
    goto LABEL_12;
  }

  v29 = &unk_1EC0BA4B8;
  v30 = &unk_1C4F16F60;
  v31 = v2;
LABEL_9:
  sub_1C4420C3C(v31, v29, v30);
  *(v39 + 32) = 0;
  *v39 = 0u;
  *(v39 + 16) = 0u;
LABEL_13:
  sub_1C43FE9F0();
}

uint64_t sub_1C4492704(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t, void *))
{
  v7[2] = a1;
  v8 = a2;

  a4(a3, v7);
}

void sub_1C4492874()
{
  sub_1C43FC36C();
  sub_1C4EFD548();
  sub_1C43FCF8C();
  if (*(v4 + 84) == v3)
  {
    sub_1C43FD5B4();
  }

  else
  {
    type metadata accessor for Source(0);
    sub_1C43FCF8C();
    if (*(v5 + 84) != v3)
    {
      *(v1 + *(v2 + 36)) = v0 + 1;
      return;
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v6, v7, v8, v9);
}

uint64_t sub_1C4492944@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v46 = a1;
  v44 = a3;
  v45 = a4;
  v5 = type metadata accessor for Source(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1C456902C(&qword_1EC0C39F8, &qword_1C4F54120);
  v47 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v39 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v43 = &v39 - v12;
  type metadata accessor for ConstructionProgressTokens(0);
  v52 = &type metadata for ProgressTokenColumn;
  v13 = sub_1C4492FAC();
  v53 = v13;
  LOBYTE(v51[0]) = 1;
  v14 = a2[3];
  v15 = a2[4];
  sub_1C4409678(a2, v14);
  v16 = *(v15 + 8);
  v17 = *(v16 + 16);
  v49 = sub_1C4EFD548();
  v50 = sub_1C4472550(&qword_1EDDFA240, MEMORY[0x1E69A92C8], MEMORY[0x1E69A92B0]);
  sub_1C4422F90(v48);
  v17(v14, v16);
  v55 = sub_1C4EFB298();
  v56 = MEMORY[0x1E699FE60];
  v18 = v55;
  v40 = v55;
  sub_1C4422F90(v54);
  sub_1C4EFBB28();
  sub_1C4420C3C(v48, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v51);
  sub_1C4472550(&qword_1EDDE1100, type metadata accessor for ConstructionProgressTokens, &protocol conformance descriptor for ConstructionProgressTokens);
  v19 = v41;
  sub_1C4EFAE28();
  sub_1C440962C(v54);
  v52 = &type metadata for ProgressTokenColumn;
  v53 = v13;
  v20 = v13;
  LOBYTE(v51[0]) = 0;
  v22 = a2[3];
  v21 = a2[4];
  sub_1C4409678(a2, v22);
  (*(*(v21 + 8) + 24))(v22);
  v23 = *(v7 + 2);
  sub_1C447EBE4(v7, type metadata accessor for Source);
  v49 = MEMORY[0x1E69E6530];
  v50 = MEMORY[0x1E69A0178];
  v48[0] = v23;
  v55 = v18;
  v56 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v54);
  sub_1C4EFBB28();
  sub_1C4420C3C(v48, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v51);
  sub_1C4401CBC(&qword_1EDDF0078, &qword_1EC0C39F8, &qword_1C4F54120, MEMORY[0x1E699FF70]);
  v24 = v42;
  v25 = v57;
  sub_1C4EFB438();
  v26 = *(v47 + 8);
  v26(v19, v25);
  sub_1C440962C(v54);
  v52 = &type metadata for ProgressTokenColumn;
  v53 = v20;
  v41 = v20;
  LOBYTE(v51[0]) = 3;
  v27 = a2[3];
  v28 = a2[4];
  sub_1C4409678(a2, v27);
  v29 = *(v28 + 8);
  v30 = *(v29 + 32);
  v49 = &type metadata for StageName;
  v50 = sub_1C4493280();
  v31 = v27;
  v32 = v57;
  v33 = v29;
  v34 = v24;
  v35 = v40;
  v30(v48, v31, v33);
  v36 = MEMORY[0x1E699FE60];
  v37 = v43;
  v55 = v35;
  v56 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v54);
  sub_1C4EFBB28();
  sub_1C4420C3C(v48, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v51);
  sub_1C4EFB438();
  v26(v34, v32);
  sub_1C440962C(v54);
  if (v44)
  {
    v52 = &type metadata for ProgressTokenColumn;
    v53 = v41;
    LOBYTE(v51[0]) = 2;
    v55 = v35;
    v56 = v36;
    sub_1C4422F90(v54);
    sub_1C4EFBB38();
    sub_1C440962C(v51);
    sub_1C4EFB438();
    v26(v37, v32);
    sub_1C440962C(v54);
    (*(v47 + 32))(v37, v34, v32);
  }

  sub_1C4401CBC(&qword_1EDDF0080, &qword_1EC0C39F8, &qword_1C4F54120, MEMORY[0x1E699FF60]);
  sub_1C4472550(&qword_1EDDE10F0, type metadata accessor for ConstructionProgressTokens, &protocol conformance descriptor for ConstructionProgressTokens);
  sub_1C4EFAFF8();
  return (v26)(v37, v32);
}

unint64_t sub_1C4492FAC()
{
  result = qword_1EDDF4A28;
  if (!qword_1EDDF4A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF4A28);
  }

  return result;
}

uint64_t sub_1C449300C(uint64_t a1)
{
  v2 = sub_1C44930A4();

  return MEMORY[0x1EEE09858](a1, v2);
}

uint64_t sub_1C4493058(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C44930F8();

  return MEMORY[0x1EEE09870](a1, a2, v4);
}

unint64_t sub_1C44930A4()
{
  result = qword_1EDDF4A48[0];
  if (!qword_1EDDF4A48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDF4A48);
  }

  return result;
}

unint64_t sub_1C44930F8()
{
  result = qword_1EDDF4A20;
  if (!qword_1EDDF4A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF4A20);
  }

  return result;
}

uint64_t sub_1C449314C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C4493178(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C4493178(char a1)
{
  result = 0x656372756F73;
  switch(a1)
  {
    case 1:
      result = sub_1C44553A4();
      break;
    case 2:
      result = 0x6574656C706D6F63;
      break;
    case 3:
      result = sub_1C445FD54();
      break;
    case 4:
      result = 0x6E656B6F74;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C4493280()
{
  result = qword_1EDDF0760;
  if (!qword_1EDDF0760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF0760);
  }

  return result;
}

uint64_t sub_1C44932D4(uint64_t a1)
{
  v2 = sub_1C4493320();

  return MEMORY[0x1EEE09B08](a1, v2);
}

unint64_t sub_1C4493320()
{
  result = qword_1EDDF0750;
  if (!qword_1EDDF0750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF0750);
  }

  return result;
}

uint64_t StageName.databaseValue.getter()
{
  switch(*v0)
  {
    case 6:
      sub_1C4432A10();
      goto LABEL_7;
    case 7:
      sub_1C44124F8();
      goto LABEL_7;
    case 8:
      sub_1C44137B0();
      goto LABEL_7;
    case 9:
      sub_1C43FDE60();
      sub_1C440D85C();
      goto LABEL_7;
    case 0xA:
      sub_1C440E7B4();
LABEL_7:

      result = sub_1C4F011D8();
      break;
    default:
      v2 = 0xE800000000000000;
      v3 = 0x676E696B636F6C62;
      switch(*v0)
      {
        case 7:
          v2 = 0xEE006E6F69746172;
          v3 = sub_1C43FF604();
          break;
        case 8:
          v4 = 0x69686374616DLL;
          goto LABEL_15;
        case 9:
          v4 = 0x697075646564;
LABEL_15:
          v3 = v4 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
          break;
        case 0xA:
          v2 = 0xEA00000000006E6FLL;
          v3 = sub_1C4409050();
          break;
        case 0xB:
          v2 = 0xE700000000000000;
          v3 = sub_1C4411228();
          break;
        default:
          break;
      }

      MEMORY[0x1C6940010](v3, v2);

      sub_1C4F011D8();

      break;
  }

  return result;
}

uint64_t sub_1C4493550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C43FECE0();
  sub_1C4EFD548();
  sub_1C43FCF8C();
  if (*(v6 + 84) == v3)
  {
    v7 = sub_1C4404F74();
  }

  else
  {
    type metadata accessor for Source(0);
    sub_1C43FCF8C();
    if (*(v10 + 84) != v3)
    {
      v12 = *(v4 + *(a3 + 36));
      if (v12 >= 2)
      {
        return sub_1C4424974(v12);
      }

      else
      {
        return 0;
      }
    }

    v8 = v9;
    v7 = v4 + *(a3 + 24);
  }

  return sub_1C44157D4(v7, v3, v8);
}

uint64_t sub_1C449364C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_1C446ABD0(0);
  sub_1C44078DC();
  v5 = sub_1C4493790();

  return v5 & 1;
}

uint64_t sub_1C4493710()
{
  sub_1C441B2E0();
  sub_1C441C090();

  v1 = sub_1C440CAAC();
  v2 = v0(v1);

  return v2;
}

void sub_1C44937D0()
{
  sub_1C43FE96C();
  sub_1C4411CC4();
  v2 = v1;
  sub_1C4EFB1E8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBFDC();
  sub_1C440D420();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FEFC4(v5, v6, v7, v8, v9, v10, v11, v12, v27);
  sub_1C43FCDF8();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C4406E1C();
  sub_1C441DCFC();
  v16 = sub_1C43FD2BC();
  sub_1C456902C(v16, v17);
  sub_1C4418A58();
  if (!v0)
  {
    goto LABEL_8;
  }

  v18 = v0;
  sub_1C4EFA798();
  sub_1C447F088();
  sub_1C445E7F4();
  v19 = *(v14 + 8);
  v20 = sub_1C43FCE84();
  v19(v20);
  if (v2)
  {

    v23 = sub_1C4778264();
    sub_1C43FFB2C(&type metadata for ErrorHandlingDatabasePoolError, v23);
    sub_1C4433CB8();
LABEL_8:
    sub_1C440431C();
    sub_1C43FBC80();
    return;
  }

  v21 = v0;
  sub_1C4EFAAC8();
  sub_1C447F088();
  sub_1C445E7F4();
  v22 = sub_1C43FCE84();
  v19(v22);
  sub_1C441842C();
  v24 = sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if (!sub_1C4409C64(v24))
  {

    goto LABEL_8;
  }

  v25 = sub_1C4403150();
  v26(v25);
  sub_1C44159C8(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL);
  __break(1u);
}

uint64_t sub_1C4493A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = a3;
  v31 = a2;
  v30[1] = a1;
  v4 = sub_1C456902C(&qword_1EC0B8EB0, &unk_1C4F0E910);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v30 - v9;
  if (qword_1EDDFE0F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1C4EFBD38();
  v12 = sub_1C442B738(v11, qword_1EDE2E068);
  v37 = v11;
  v38 = MEMORY[0x1E69A0050];
  v13 = sub_1C4422F90(v36);
  v14 = *(*(v11 - 8) + 16);
  v14(v13, v12, v11);
  v30[0] = v3;
  v15 = *(v3 + 16);
  v16 = *(v3 + 24);
  v34 = MEMORY[0x1E69E6158];
  v35 = MEMORY[0x1E69A0130];
  v32 = v15;
  v33 = v16;
  v17 = sub_1C4EFB298();
  v40 = v17;
  v41 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v39);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4420C3C(&v32, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v36);
  sub_1C446B728();
  sub_1C4EFAE28();
  sub_1C440962C(v39);
  if (qword_1EDDFE100 != -1)
  {
    swift_once();
  }

  v18 = sub_1C442B738(v11, qword_1EDE2DF28);
  v37 = v11;
  v38 = MEMORY[0x1E69A0050];
  v19 = sub_1C4422F90(v36);
  v14(v19, v18, v11);
  v34 = MEMORY[0x1E69E6158];
  v35 = MEMORY[0x1E69A0130];
  v32 = v31;
  v33 = v48;
  v40 = v17;
  v41 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v39);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4420C3C(&v32, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v36);
  sub_1C4401CBC(&qword_1EDDFE858, &qword_1EC0B8EB0, &unk_1C4F0E910, MEMORY[0x1E699FF70]);
  sub_1C4EFB438();
  v20 = *(v5 + 8);
  v20(v7, v4);
  sub_1C440962C(v39);
  sub_1C4401CBC(&unk_1EDDFE860, &qword_1EC0B8EB0, &unk_1C4F0E910, MEMORY[0x1E699FF60]);
  sub_1C446B794();
  v21 = v30[2];
  sub_1C4EFAFF8();
  v20(v10, v4);
  if (v21)
  {
    return v20;
  }

  v23 = v43;
  if (!v43)
  {
    return 2;
  }

  v24 = v42;
  v25 = v44;
  v26 = v45;
  v27 = v46;
  v28 = v47;
  sub_1C456902C(&qword_1EC0B9208, &qword_1C4F0ED20);
  sub_1C45A2A94();
  sub_1C4EF9698();
  if (*(v42 + 16))
  {
    v29 = v25;
    v20 = *(v42 + 32);
    sub_1C4470E30(v24, v23, v29, v26, v27, v28);

    return v20;
  }

  v42 = 0;
  v43 = 0xE000000000000000;
  sub_1C4F02248();

  v42 = 0xD00000000000002FLL;
  v43 = 0x80000001C4F8A7E0;
  MEMORY[0x1C6940010](v31, v48);
  result = sub_1C4F024A8();
  __break(1u);
  return result;
}

uint64_t sub_1C4493FD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  result = sub_1C4493FAC(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

void ResumableStage.createProgressToken(_:complete:)()
{
  sub_1C43FBD3C();
  v122 = v2;
  v123 = v0;
  v4 = v3;
  v6 = v5;
  v121 = v7;
  type metadata accessor for ConstructionProgressTokens(0);
  sub_1C43FCDF8();
  v113 = v8;
  v114 = v9;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v115 = v11 - v10;
  v12 = sub_1C43FBE44();
  v119 = type metadata accessor for PhaseStores(v12);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v120 = v15 - v14;
  v16 = sub_1C43FBE44();
  v17 = type metadata accessor for ProgressTokens(v16);
  sub_1C43FCDF8();
  v118 = v18;
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBCC4();
  v22 = v21 - v20;
  sub_1C43FCE64();
  v117 = v23;
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBD08();
  v112 = (v25 - v26);
  MEMORY[0x1EEE9AC00](v27);
  v116 = &v112 - v28;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = sub_1C446C048(AssociatedTypeWitness, v30, v31, v32, &associated conformance descriptor for ResumableStage.ResumableStage.Token: Decodable);
  v37 = sub_1C446C048(v33, v34, v35, v36, &associated conformance descriptor for ResumableStage.ResumableStage.Token: Encodable);
  v38 = type metadata accessor for ProgressToken(255, AssociatedTypeWitness, v33, v37);
  v39 = sub_1C4F01F48();
  sub_1C43FCDF8();
  v41 = v40;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v112 - v43;
  sub_1C43FCE64();
  v46 = v45;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FE94C();
  v127 = xmmword_1C4F29230;
  (*(v41 + 16))(v44, v122, v39);
  if (sub_1C44157D4(v44, 1, v38) == 1)
  {
    (*(v41 + 8))(v44, v39);
  }

  else
  {
    (*(v46 + 32))(v1, v44, v38);
    v48 = objc_autoreleasePoolPush();
    sub_1C4B47350(&v127, v1, v6, v4, v124);
    objc_autoreleasePoolPop(v48);
    (*(v46 + 8))(v1, v38);
  }

  sub_1C43FEDF8();
  sub_1C449222C();
  v63 = v121;
  if (v125)
  {
    v64 = v126;
    sub_1C4409678(v124, v125);
    v65 = sub_1C43FCFC0();
    v67 = v66(v65, v64);
    sub_1C440962C(v124);
    if (v63)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_1C4420C3C(v124, &qword_1EC0BA490, &unk_1C4F53630);
    v67 = 0;
    if (v63)
    {
      goto LABEL_11;
    }
  }

  if (__OFADD__(v67++, 1))
  {
    __break(1u);
    sub_1C4419274();
    swift_once();
    v49 = sub_1C4F00978();
    sub_1C442B738(v49, qword_1EDE2DE10);
    v50 = v116;
    v51 = v117;
    v52 = *(v117 + 16);
    v52(v116, v123, v6);
    v53 = sub_1C4F00968();
    v54 = sub_1C4F01CD8();
    if (os_log_type_enabled(v53, v54))
    {
      sub_1C43FECF0();
      v55 = swift_slowAlloc();
      sub_1C43FEC60();
      v123 = swift_slowAlloc();
      v124[0] = v123;
      *v55 = 136315138;
      v52(v112, v50, v6);
      v56 = *(v51 + 8);
      v57 = sub_1C4404C28();
      v56(v57);
      v58 = sub_1C4F02858();
      v60 = v59;
      v61 = sub_1C4402120();
      v56(v61);
      v62 = sub_1C441D828(v58, v60, v124);

      *(v55 + 4) = v62;
      _os_log_impl(&dword_1C43F8000, v53, v54, "%s failed to update progress token", v55, 0xCu);
      sub_1C440962C(v123);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {
      v110 = sub_1C4404C28();
      v111(v110);
    }

    goto LABEL_20;
  }

LABEL_11:
  v69 = *(v4 + 8);
  v70 = sub_1C43FEDF8();
  v71(v70);
  switch(LOBYTE(v124[0]))
  {
    case 2:

      goto LABEL_15;
    case 3:
      sub_1C44133C0();
      break;
    default:
      break;
  }

  sub_1C4426E50();
  v72 = sub_1C4F02938();

  if (v72)
  {
LABEL_15:
    v73 = sub_1C43FEDF8();
    v74(v73);
    v75 = sub_1C43FEDF8();
    v76(v75);
    v77 = v124[0];
    v78 = sub_1C43FEDF8();
    v79(v78);
    v80 = v127;
    *(v22 + v17[5]) = v77;
    *(v22 + v17[7]) = v80;
    *(v22 + v17[8]) = v67;
    *(v22 + v17[9]) = v63 & 1;
    v81 = *(v69 + 40);
    v82 = sub_1C43FBEF8();
    sub_1C4431E64(v82, v83);
    v84 = v120;
    v85 = sub_1C43FEDF8();
    v81(v85);

    sub_1C441A548();
    sub_1C447EBE4(v84, v86);
    v87 = sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
    *(sub_1C44105D8(v87) + 16) = xmmword_1C4F0D130;
    sub_1C44921D4();
    sub_1C440BF50();
    sub_1C450B420();
    swift_setDeallocating();
    sub_1C450B628();

    v88 = type metadata accessor for ProgressTokens;
    v89 = v22;
  }

  else
  {
    v90 = v115;
    v91 = sub_1C43FEDF8();
    v92(v91);
    v93 = sub_1C43FEDF8();
    v94(v93);
    v95 = v124[0];
    v96 = v113;
    v97 = sub_1C43FEDF8();
    v98(v97);
    v99 = v127;
    *(v90 + v96[5]) = v95;
    *(v90 + v96[7]) = v99;
    *(v90 + v96[8]) = v67;
    *(v90 + v96[9]) = v63 & 1;
    v100 = *(v69 + 40);
    v101 = sub_1C43FBEF8();
    sub_1C4431E64(v101, v102);
    v103 = v120;
    v104 = sub_1C43FEDF8();
    v100(v104);

    sub_1C441A548();
    sub_1C447EBE4(v103, v105);
    v106 = sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
    v107 = sub_1C44105D8(v106);
    *(v107 + 16) = xmmword_1C4F0D130;
    sub_1C44921D4();
    sub_1C449498C(v107);
    swift_setDeallocating();
    sub_1C4495394();

    v88 = type metadata accessor for ConstructionProgressTokens;
    v89 = v90;
  }

  sub_1C447EBE4(v89, v88);
  v108 = sub_1C43FBEF8();
  sub_1C441DFEC(v108, v109);
LABEL_20:
  sub_1C43FE9F0();
}

uint64_t sub_1C449498C(uint64_t a1)
{
  if (qword_1EDDFFAF0 != -1)
  {
    sub_1C4400128(&qword_1EDDFFAF0);
  }

  v2 = sub_1C4F00978();
  sub_1C442B738(v2, qword_1EDE2E088);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v3 = sub_1C4F00968();
  v4 = sub_1C4F01CF8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    sub_1C43FEC60();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 134218242;
    *(v5 + 4) = *(a1 + 16);

    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_1C441D828(0xD00000000000001ALL, 0x80000001C4FB26E0, &v10);
    _os_log_impl(&dword_1C43F8000, v3, v4, "GraphStore: store: %ld %s records.", v5, 0x16u);
    sub_1C440962C(v6);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {
  }

  MEMORY[0x1EEE9AC00](v7);
  v9[2] = a1;

  sub_1C446C37C(sub_1C4494C48, v9);
}

uint64_t sub_1C4494B4C(uint64_t result, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v9 = 0;
  v10 = *(a2 + 16);
  do
  {
    if (v10 == v9)
    {
      break;
    }

    a3(0);
    sub_1C43FCDF8();
    sub_1C4472550(a4, a5, a6);
    v11 = sub_1C4EFB6A8();
    ++v9;
  }

  while (!v6);
  return v11;
}

uint64_t sub_1C4494D00@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1C4EFBAF8();
  v7 = sub_1C442B738(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_1C4494D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EDDE10D8, type metadata accessor for ConstructionProgressTokens, &protocol conformance descriptor for ConstructionProgressTokens);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

void ConstructionProgressTokens.encode(to:)()
{
  sub_1C4413F18();
  sub_1C440EDD4();
  sub_1C456902C(&qword_1EC0BE120, &qword_1C4F32650);
  sub_1C4403200();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FE61C();
  sub_1C43FD870();
  v2 = sub_1C4495034();
  sub_1C440F61C(&type metadata for ConstructionProgressTokens.CodingKeys, v3, v2);
  LOBYTE(v11) = 0;
  sub_1C4EFD548();
  sub_1C44004E0();
  sub_1C4490F60(v4, v5, MEMORY[0x1E69A92D0]);
  sub_1C44E76EC();
  sub_1C43FC428();
  sub_1C4F027E8();
  if (!v0)
  {
    v6 = type metadata accessor for ConstructionProgressTokens(0);
    sub_1C4416AC4(v6);
    sub_1C442DF84();
    sub_1C4F027E8();
    sub_1C4867FD8();
    sub_1C441FBB8();
    sub_1C4490F60(v7, v8, &protocol conformance descriptor for Source);
    sub_1C43FC428();
    sub_1C4F027E8();
    sub_1C44AE054();
    sub_1C442DF84();
    sub_1C4F02778();
    sub_1C441DFEC(v11, v12);
    sub_1C4471CBC(4);
    sub_1C440D3E4();
    sub_1C4F027D8();
    sub_1C4471CBC(5);
    sub_1C440D3E4();
    sub_1C4F027A8();
  }

  v9 = sub_1C43FF120();
  v10(v9);
  sub_1C441C2B4();
  sub_1C44102DC();
}

unint64_t sub_1C4495034()
{
  result = qword_1EDDE1138;
  if (!qword_1EDDE1138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE1138);
  }

  return result;
}

uint64_t sub_1C449508C()
{
  result = sub_1C44553A4();
  switch(v1)
  {
    case 1:
      result = sub_1C445FD54();
      break;
    case 2:
      result = sub_1C4461FC0();
      break;
    case 3:
      result = 0x6E656B6F74;
      break;
    case 4:
      result = sub_1C44493C4();
      break;
    case 5:
      result = 0x6574656C706D6F63;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C4495134()
{
  result = qword_1EDDF0748;
  if (!qword_1EDDF0748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF0748);
  }

  return result;
}

uint64_t sub_1C44951A0(uint64_t a1)
{

  return sub_1C4F02458();
}

uint64_t sub_1C44951D4()
{

  return sub_1C44C8EE8(v1, v0);
}

uint64_t sub_1C449520C@<X0>(uint64_t a1@<X8>)
{
  v3[7] = v2;
  v3[4] = a1;
  v3[5] = v1;

  return sub_1C4F02AC8();
}

uint64_t sub_1C4495254()
{
  v2 = *(v0 - 592);
  v3 = *(v0 - 600);

  return sub_1C44239FC(v2, v3);
}

uint64_t sub_1C449528C()
{
  result = v1;
  *(v2 - 512) = *(v0 + 8);
  return result;
}

uint64_t sub_1C44952D4()
{

  return sub_1C4F00978();
}

uint64_t sub_1C44952F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(a2 + 16) = v11 + 71;
  *(a2 + 24) = v10;
  *(a2 + 32) = a9;
  *(a2 + 48) = a10;
  *(a2 + 64) = 9;

  return swift_willThrow();
}

void *sub_1C4495330()
{
  v3 = (v1 + *(v0 + 40));
  *v3 = 0;
  v3[1] = 0;
  return sub_1C4409678(v2, v2[3]);
}

uint64_t sub_1C44953AC(void (*a1)(void))
{
  a1(0);
  sub_1C43FCF8C();
  sub_1C4485C48();
  sub_1C4406518();

  return swift_deallocClassInstance();
}

void sub_1C449541C()
{
  *(v3 + 424) = v1;
  *(v3 + 408) = v0;
  *(v3 + 416) = v2;
}

unint64_t sub_1C4495428(float a1)
{
  *v3 = a1;

  return sub_1C441D828(v2, v1, (v4 - 104));
}

uint64_t sub_1C4495448()
{

  return swift_slowAlloc();
}

uint64_t sub_1C449546C()
{
  sub_1C43FBCD4();
  v3 = v2;
  *(v1 + 24) = v4;
  *(v1 + 32) = v0;
  *(v1 + 16) = v5;
  *(v1 + 40) = *(v5 - 8);
  *(v1 + 48) = sub_1C43FE604();
  *(v1 + 56) = swift_task_alloc();
  *(v1 + 64) = swift_task_alloc();
  v6 = sub_1C4F008B8();
  *(v1 + 72) = v6;
  sub_1C43FCF7C(v6);
  *(v1 + 80) = v7;
  *(v1 + 88) = sub_1C43FE604();
  *(v1 + 96) = swift_task_alloc();
  v8 = sub_1C4F008F8();
  *(v1 + 104) = v8;
  sub_1C43FCF7C(v8);
  *(v1 + 112) = v9;
  *(v1 + 120) = sub_1C43FE604();
  *(v1 + 128) = swift_task_alloc();
  v10 = sub_1C4F00978();
  *(v1 + 136) = v10;
  sub_1C43FCF7C(v10);
  *(v1 + 144) = v11;
  *(v1 + 152) = sub_1C43FE604();
  *(v1 + 160) = swift_task_alloc();
  v12 = sub_1C4EFD618();
  *(v1 + 168) = v12;
  sub_1C43FCF7C(v12);
  *(v1 + 176) = v13;
  *(v1 + 184) = sub_1C43FBE7C();
  *(v1 + 240) = *v3;
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1C449568C(uint64_t a1)
{
  v46 = v1;
  v2 = v1[19];
  v3 = v1[20];
  v4 = v1[17];
  v5 = v1[18];
  sub_1C4F00188();
  (*(v5 + 16))(v2, v3, v4);
  sub_1C4F008C8();
  sub_1C4F008D8();
  sub_1C4F00898();
  v6 = sub_1C4F008D8();
  v7 = sub_1C4F01E28();
  if (sub_1C4F01F28())
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_1C4F008A8();
    _os_signpost_emit_with_name_impl(&dword_1C43F8000, v6, v7, v9, "graphConstruction", "", v8, 2u);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v42 = v1[20];
  v10 = v1[18];
  v41 = v1[17];
  v11 = v1[15];
  v40 = v1[16];
  v12 = v1[13];
  v13 = v1[14];
  v14 = v1[11];
  v15 = v1[12];
  v17 = v1[9];
  v16 = v1[10];

  (*(v16 + 16))(v14, v15, v17);
  sub_1C4F00948();
  swift_allocObject();
  sub_1C4F00938();
  (*(v13 + 16))(v11, v40, v12);
  sub_1C4EFD5E8();
  (*(v16 + 8))(v15, v17);
  (*(v13 + 8))(v40, v12);
  (*(v10 + 8))(v42, v41);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C4419274();
    swift_once();
  }

  v18 = v1[5];
  v1[24] = sub_1C442B738(v1[17], qword_1EDE2DE10);
  v19 = *(v18 + 16);
  v1[25] = v19;
  v1[26] = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v20 = sub_1C4402120();
  v19(v20);
  v21 = sub_1C4F00968();
  v22 = sub_1C4F01CF8();
  v23 = sub_1C4400B94(v22);
  v24 = v1[8];
  if (v23)
  {
    v25 = v1[7];
    v26 = v1[5];
    v27 = v1[2];
    sub_1C43FECF0();
    v28 = swift_slowAlloc();
    sub_1C43FEC60();
    v43 = swift_slowAlloc();
    v45 = v43;
    *v28 = 136315138;
    (v19)(v25, v24, v27);
    v29 = *(v26 + 8);
    v29(v24, v27);
    v30 = sub_1C4F02858();
    v32 = v31;
    v29(v25, v27);
    v33 = sub_1C441D828(v30, v32, &v45);

    *(v28 + 4) = v33;
    sub_1C4404638(&dword_1C43F8000, v34, v35, "StageStart %s");
    sub_1C440962C(v43);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {
    v29 = *(v1[5] + 8);
    v29(v1[8], v1[2]);
  }

  v1[27] = v29;
  v44 = (*(v1[3] + 64) + **(v1[3] + 64));
  v36 = swift_task_alloc();
  v1[28] = v36;
  *v36 = v1;
  v36[1] = sub_1C449F5F4;
  v37 = v1[3];
  v38 = v1[2];

  return v44(v38, v37);
}

void sub_1C4495B14()
{
  sub_1C43FBD3C();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_1C44A1E40();
  sub_1C4EFD548();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1C4433190();
  v10 = type metadata accessor for Source(v9);
  v11 = sub_1C43FBD18(v10);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4414930();
  sub_1C4440948();
  v12 = v7(0);
  sub_1C4429020(v12);
  v13 = sub_1C456902C(v5, v3);
  v14 = sub_1C445BBF0(v13);
  MEMORY[0x1C6940010](v14);

  sub_1C441DC78();
  sub_1C444B050();
  sub_1C44364AC();
  sub_1C441925C();
  sub_1C4430900(v0, v1);
  MEMORY[0x1C6940010](*v1, v1[1]);
  sub_1C4411930();
  sub_1C447E868(v1, v15);
  sub_1C446BE3C();
  _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
  sub_1C4EFD3D8();
  v16 = sub_1C441B798();
  v17(v16);
  sub_1C44A1748();

  sub_1C44AB234();
  sub_1C4656CA4();
  sub_1C44EB86C();
  sub_1C43FE9F0();
}

void sub_1C4495CA4()
{

  JUMPOUT(0x1C6940010);
}

void sub_1C4495CC4(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x2Au);
}

uint64_t sub_1C4495D0C()
{

  return swift_setDeallocating();
}

uint64_t sub_1C4495D2C()
{
  v2 = *(v0 - 760);
  v3 = *(v0 - 768);

  return sub_1C44239FC(v2, v3);
}

uint64_t *sub_1C4495D4C(uint64_t a1)
{
  *(v2 - 192) = v1;
  *(v1 + 64) = a1;

  return sub_1C4422F90((v1 + 32));
}

uint64_t sub_1C4495D68(uint64_t a1)
{
  *(v1 - 136) = a1;

  return sub_1C4EFF808();
}

void sub_1C4495D94()
{

  JUMPOUT(0x1C6942830);
}

uint64_t sub_1C4495DB4@<X0>(uint64_t a1@<X8>)
{
  *(a1 - 256) = v1;
}

uint64_t sub_1C4495DCC@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 96) = v1;
  *(v2 - 160) = a1;

  return sub_1C4EFEEF8();
}

uint64_t sub_1C4495E1C()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_1C4495E50()
{

  return type metadata accessor for ScreenTimeStructs.Person(0);
}

uint64_t sub_1C4495E88()
{
  sub_1C43FBCD4();
  v0 = sub_1C440A014();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v10 = sub_1C441A538(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_1C4495F28()
{
  sub_1C43FCF70();
  v0 = sub_1C44353F0();
  type metadata accessor for RelationshipFullSourceIngestor(v0);
  v1 = sub_1C440FBE0();
  sub_1C44111F4(v1, v2, v3, v4, v5, v6, v7, v8, v13, SWORD2(v13), SBYTE6(v13), SHIBYTE(v13));
  v9 = swift_task_alloc();
  v10 = sub_1C4409044(v9);
  *v10 = v11;
  sub_1C44246F8(v10);

  return sub_1C4496898();
}

uint64_t sub_1C4495FC0(_BYTE *a1)
{
  v7[16] = *a1;

  v1 = sub_1C443DD50(sub_1C4496404, v7);

  if (qword_1EDDFFAF0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C4F00978();
  sub_1C442B738(v2, qword_1EDE2E088);
  v3 = sub_1C4F00968();
  v4 = sub_1C4F01CF8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v1;
    _os_log_impl(&dword_1C43F8000, v3, v4, "GraphStore: clearEntityTriples: %ld deleted.", v5, 0xCu);
    MEMORY[0x1C6942830](v5, -1, -1);
  }

  return v1;
}

uint64_t sub_1C44960FC@<X0>(unsigned __int8 a2@<W1>, uint64_t *a3@<X8>)
{
  v20 = a3;
  v4 = a2;
  v5 = sub_1C456902C(&qword_1EC0BA588, &unk_1C4F142B0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17[-1] - v10;
  type metadata accessor for EntityTriple(0);
  sub_1C4496488(&qword_1EDDF8DB0, type metadata accessor for EntityTriple, &protocol conformance descriptor for EntityTriple);
  sub_1C4EFADF8();
  if (v4 != 4)
  {
    v18[3] = &type metadata for SourcedTripleColumn;
    v18[4] = sub_1C44964E4();
    LOBYTE(v18[0]) = 8;
    v12 = 0xE700000000000000;
    v13 = 0x6E776F6E6B6E75;
    switch(v4)
    {
      case 1:
        v12 = 0xE400000000000000;
        v13 = 1819047270;
        break;
      case 2:
        v12 = 0xE500000000000000;
        v13 = 0x61746C6564;
        break;
      case 3:
        v12 = 0xEA0000000000676ELL;
        v13 = 0x69686374614D6F74;
        break;
      default:
        break;
    }

    v17[3] = MEMORY[0x1E69E6158];
    v17[4] = MEMORY[0x1E69A0130];
    v17[0] = v13;
    v17[1] = v12;
    v19[3] = sub_1C4EFB298();
    v19[4] = MEMORY[0x1E699FE60];
    sub_1C4422F90(v19);
    sub_1C4EFBB28();
    sub_1C44967E0(v17);
    sub_1C440962C(v18);
    sub_1C4496848(&qword_1EDDFA2C8, MEMORY[0x1E699FF70]);
    sub_1C4EFB438();
    (*(v6 + 8))(v11, v5);
    sub_1C440962C(v19);
    (*(v6 + 32))(v11, v8, v5);
  }

  v14 = sub_1C4EFB898();
  result = (*(v6 + 8))(v11, v5);
  if (!v3)
  {
    *v20 = v14;
  }

  return result;
}

uint64_t sub_1C4496440(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4496488(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C44964E4()
{
  result = qword_1EDDF49F0;
  if (!qword_1EDDF49F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF49F0);
  }

  return result;
}

uint64_t sub_1C4496538(uint64_t a1)
{
  v2 = sub_1C4496584();

  return MEMORY[0x1EEE09858](a1, v2);
}

unint64_t sub_1C4496584()
{
  result = qword_1EDDF4A10;
  if (!qword_1EDDF4A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF4A10);
  }

  return result;
}

uint64_t sub_1C44965D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4496624();

  return MEMORY[0x1EEE09870](a1, a2, v4);
}

unint64_t sub_1C4496624()
{
  result = qword_1EDDF49E8;
  if (!qword_1EDDF49E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF49E8);
  }

  return result;
}

unint64_t sub_1C4496678@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C44966A4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1C44966A4(char a1)
{
  result = 0x7463656A627573;
  switch(a1)
  {
    case 1:
      result = 0x7461636964657270;
      break;
    case 2:
      result = 0x6E6F6974616C6572;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x7463656A626FLL;
      break;
    case 5:
      result = 0x656372756F73;
      break;
    case 6:
      result = 0x6449656372756F73;
      break;
    case 7:
      result = 0x6D617473656D6974;
      break;
    case 8:
      result = 0x656E696C65706970;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C44967E0(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0C5040, &qword_1C4F0F950);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4496848(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0BA588, &unk_1C4F142B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C4496898()
{
  v1[2] = v0;
  v2 = sub_1C4F00978();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_1C4EF98F8();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C44969C0, 0, 0);
}

uint64_t sub_1C44969C0()
{
  v31 = v0;
  sub_1C44867F4();
  v1 = sub_1C4F01E88();
  v2 = sub_1C4F01108();
  v3 = sub_1C4496C58(v2, 1852797802, 0xE400000000000000, v1);

  if (v3)
  {
    v5 = v0[8];
    v4 = v0[9];
    v6 = v0[6];
    v7 = v0[7];
    v8 = v0[2];
    sub_1C4EF98C8();

    (*(v7 + 32))(v4, v5, v6);
    v9 = type metadata accessor for RelationshipFullSourceIngestor(0);
    sub_1C4496CCC(v4, v8 + *(v9 + 20));
    v10 = v0[9];
    v26 = v0[6];
    v27 = v0[7];
    sub_1C4EF9AE8();
    sub_1C449C950();
    (*(v27 + 8))(v10, v26);
  }

  else
  {
    sub_1C4F00158();
    v11 = sub_1C4F00968();
    v12 = sub_1C4F01CD8();
    v13 = os_log_type_enabled(v11, v12);
    v15 = v0[4];
    v14 = v0[5];
    v16 = v0[3];
    if (v13)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v30 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_1C441D828(0xD000000000000037, 0x80000001C4FB0E10, &v30);
      sub_1C441238C();
      _os_log_impl(v19, v20, v21, v22, v23, v24);
      sub_1C440962C(v18);
      v25 = sub_1C44068C0();
      MEMORY[0x1C6942830](v25);
      MEMORY[0x1C6942830](v17, -1, -1);
    }

    (*(v15 + 8))(v14, v16);
  }

  v28 = v0[1];

  return v28();
}

id sub_1C4496C58(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1C4F01108();

  v7 = [a4 URLForResource:a1 withExtension:v6];

  return v7;
}

uint64_t sub_1C4496CCC(uint64_t a1, uint64_t a2)
{
  v67 = a2;
  sub_1C43FBE94();
  v68 = sub_1C4F00978();
  sub_1C43FCDF8();
  v66 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v61 - v8;
  v10 = sub_1C4EFF548();
  sub_1C43FCDF8();
  v65 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C456902C(&qword_1EC0BDCD0, &qword_1C4F31980);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v61 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v70 = &v61 - v22;
  sub_1C440BAA8(&v61 - v22, 1, 1, v10);
  v69 = objc_autoreleasePoolPush();
  v23 = sub_1C4EF9938();
  if (v2)
  {
    v25 = v70;
    objc_autoreleasePoolPop(v69);
    return sub_1C4420C3C(v25, &qword_1EC0BDCD0, &qword_1C4F31980);
  }

  v26 = v23;
  v27 = v24;
  v63 = v14;
  v64 = v17;
  v61 = v9;
  v62 = v6;
  sub_1C4EF9348();
  swift_allocObject();
  sub_1C4EF9338();
  sub_1C4497370(&qword_1EDDEFF68, MEMORY[0x1E69A9920], MEMORY[0x1E69A9928]);
  sub_1C4EF9328();
  v29 = v70;
  sub_1C4420C3C(v70, &qword_1EC0BDCD0, &qword_1C4F31980);
  sub_1C4434000(v26, v27);

  sub_1C440BAA8(v20, 0, 1, v10);
  sub_1C44CDA30(v20, v29, &qword_1EC0BDCD0, &qword_1C4F31980);
  objc_autoreleasePoolPop(v69);
  v30 = v64;
  sub_1C4460108(v29, v64, &qword_1EC0BDCD0, &qword_1C4F31980);
  if (sub_1C44157D4(v30, 1, v10) == 1)
  {
    sub_1C4420C3C(v30, &qword_1EC0BDCD0, &qword_1C4F31980);
    v31 = v62;
    sub_1C4F00158();
    v32 = sub_1C4F00968();
    v33 = sub_1C4F01CD8();
    v34 = os_log_type_enabled(v32, v33);
    v35 = v68;
    if (v34)
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v71 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_1C441D828(0xD000000000000037, 0x80000001C4FB0E10, &v71);
      sub_1C441238C();
      _os_log_impl(v38, v39, v40, v41, v42, v43);
      sub_1C440962C(v37);
      v44 = sub_1C44068C0();
      MEMORY[0x1C6942830](v44);
      MEMORY[0x1C6942830](v36, -1, -1);
    }

    (*(v66 + 8))(v31, v35);
    return sub_1C4420C3C(v29, &qword_1EC0BDCD0, &qword_1C4F31980);
  }

  v45 = v65;
  v46 = v63;
  (*(v65 + 32))(v63, v30, v10);
  v47 = sub_1C4497414(v46, v67);
  v48 = v47;
  if (v47)
  {
    v49 = sub_1C449AFC8(v47);
    type metadata accessor for PhaseStores(0);

    v50 = sub_1C449B880(v49);
    sub_1C449BB90(v50);

    v57 = sub_1C449BE3C(v48);

    v58 = sub_1C449C4C8(v57);
    sub_1C449C6AC(v58);

LABEL_13:
    (*(v45 + 8))(v63, v10);
    return sub_1C4420C3C(v29, &qword_1EC0BDCD0, &qword_1C4F31980);
  }

  sub_1C4F00158();
  v51 = sub_1C4F00968();
  v52 = sub_1C4F01CD8();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_1C43F8000, v51, v52, "Nil relationshipObjects returned during source ingestion. Ending Relationship source ingestion.", v53, 2u);
    v54 = sub_1C44068C0();
    MEMORY[0x1C6942830](v54);

    v55 = sub_1C4400BF4();
    v56(v55);
    goto LABEL_13;
  }

  v59 = sub_1C4400BF4();
  v60(v59);
  (*(v45 + 8))(v46, v10);
  return sub_1C4420C3C(v29, &qword_1EC0BDCD0, &qword_1C4F31980);
}

uint64_t sub_1C4497370(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C44973B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1C456902C(a3, a4);
  sub_1C43FBCE0();
  v5 = sub_1C43FBC98();
  v6(v5);
  return a2;
}

uint64_t sub_1C4497414(uint64_t a1, uint64_t a2)
{
  v113 = a2;
  v124 = sub_1C4F00978();
  v2 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v4 = &v111 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v112 = &v111 - v6;
  v7 = type metadata accessor for RelationshipStructs.LocalizedNameRelationshipType(0);
  v117 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v115 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v111 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v152 = &v111 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v140 = &v111 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v111 - v17;
  v19 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v141 = &v111 - v20;
  v21 = sub_1C456902C(&qword_1EC0C30A8, &unk_1C4F4F450);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v120 = &v111 - v22;
  v129 = type metadata accessor for RelationshipStructs.LivingBeingRelationship(0);
  v116 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v119 = &v111 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v111 - v25;
  v27 = sub_1C4EFFC28();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v142 = &v111 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1C4EFF538();
  if (!result)
  {
    result = MEMORY[0x1E69E7CC0];
  }

  v135 = *(result + 16);
  if (v135)
  {
    v114 = v11;
    v31 = 0;
    v131 = result + ((*(v28 + 80) + 32) & ~*(v28 + 80));
    v130 = v28 + 16;
    v133 = v28;
    v134 = (v28 + 8);
    v32 = MEMORY[0x1E69E7CC8];
    v123 = (v2 + 8);
    v122 = v4;
    v121 = v26;
    v143 = v7;
    v33 = v120;
    v34 = v129;
    v127 = v27;
    v132 = result;
    while (1)
    {
      if (v31 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v35 = *(v133 + 72);
      v138 = v31;
      (*(v133 + 16))(v142, v131 + v35 * v31, v27);
      v36 = sub_1C4EFFC08();
      v38 = v37;
      v39 = *(v32 + 16);
      v139 = v32;
      v136 = v36;
      if (v39 && (v40 = sub_1C445FAA8(v36, v37), (v41 & 1) != 0))
      {
        v42 = v38;
        sub_1C449217C(*(v32 + 56) + *(v116 + 72) * v40, v33);
        sub_1C440BAA8(v33, 0, 1, v34);
        sub_1C449A6B4(v33, v26);
      }

      else
      {
        sub_1C440BAA8(v33, 1, 1, v34);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v42 = v38;
        v43 = v137;
        sub_1C44984F8();
        v137 = v43;
        if (v43)
        {
          (*v134)(v142, v27);

          if (sub_1C44157D4(v33, 1, v34) != 1)
          {
            sub_1C4420C3C(v33, &qword_1EC0C30A8, &unk_1C4F4F450);
          }

LABEL_59:

          return v32;
        }

        if (sub_1C44157D4(v33, 1, v34) != 1)
        {
          sub_1C4420C3C(v33, &qword_1EC0C30A8, &unk_1C4F4F450);
        }
      }

      v44 = sub_1C4EFFBE8();
      if (!v45)
      {
        goto LABEL_17;
      }

      v46 = v45;
      v128 = v44;
      v47 = sub_1C4EFFBD8();
      if (!v48)
      {

        v27 = v127;
LABEL_17:

        v53 = v122;
        sub_1C4F00158();
        v54 = sub_1C4F00968();
        v55 = sub_1C4F01CB8();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          *v56 = 0;
          _os_log_impl(&dword_1C43F8000, v54, v55, "No relationship predicate for this triple. Skipping", v56, 2u);
          v57 = v56;
          v34 = v129;
          MEMORY[0x1C6942830](v57, -1, -1);
        }

        (*v123)(v53, v124);
        v32 = v139;
        goto LABEL_54;
      }

      v49 = v47;
      v50 = v48;
      v51 = objc_autoreleasePoolPush();
      v146 = v49;
      v147 = v50;
      v150 = 95;
      v151 = 0xE100000000000000;
      sub_1C4415EA8();
      if (*(sub_1C4F01FC8() + 16) >= 2uLL)
      {
        v58 = sub_1C4499330(1);
        v60 = v59;
        v145 = v51;
        v62 = v61;
        v64 = v63;

        v146 = v58;
        v147 = v60;
        v148 = v62;
        v149 = v64;
        v51 = v145;
        v26 = v121;
        sub_1C456902C(&qword_1EC0C0F30, &qword_1C4F41A88);
        sub_1C44993A4();
        v144 = sub_1C4F01048();
        v52 = v65;

        v34 = v129;
        swift_unknownObjectRelease();
      }

      else
      {

        v144 = 0;
        v52 = 0;
      }

      objc_autoreleasePoolPop(v51);
      v27 = v127;
      if (!v52)
      {

        v105 = v112;
        sub_1C4F00158();
        v106 = sub_1C4F00968();
        v107 = sub_1C4F01CD8();
        if (os_log_type_enabled(v106, v107))
        {
          v108 = swift_slowAlloc();
          *v108 = 0;
          _os_log_impl(&dword_1C43F8000, v106, v107, "Relationship ID on asset does not conform to ID_LOCALE expectation.", v108, 2u);
          MEMORY[0x1C6942830](v108, -1, -1);
        }

        (*v123)(v105, v124);
        sub_1C465B58C();
        v109 = swift_allocError();
        *v110 = 0;
        LOBYTE(v146) = 1;
        static Transformers.reportError(error:context:config:pipelineType:)(v109, 0x6E6F6974616C6552, 0xEC00000070696873, v113, &v146);
        (*v134)(v142, v27);
        sub_1C44992D8(v26, type metadata accessor for RelationshipStructs.LivingBeingRelationship);

        return 0;
      }

      v145 = v52;
      v126 = v42;
      MEMORY[0x1C693D840](v128, v46);
      v128 = *(v34 + 32);
      v66 = *&v26[v128];
      v67 = MEMORY[0x1E69E7CC0];
      if (v66)
      {
        v68 = v66;
      }

      else
      {
        v68 = MEMORY[0x1E69E7CC0];
      }

      v69 = *(v68 + 16);
      v125 = v66;
      if (v69)
      {
        v70 = v117;
        v71 = (*(v117 + 80) + 32) & ~*(v117 + 80);
        v118 = v68;
        v72 = v68 + v71;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v73 = 0;
        v74 = *(v70 + 72);
        do
        {
          sub_1C449217C(v72, v18);
          v75 = &v18[v143[8]];
          v76 = *(v75 + 1);
          if (v76)
          {
            v77 = *v75 == v144 && v76 == v145;
            if (v77 || (sub_1C4F02938() & 1) != 0)
            {
              v78 = sub_1C4EFFBF8();
              v79 = v140;
              sub_1C4499BAC(v141, v78, v80, v18, v140);

              sub_1C44992D8(v18, type metadata accessor for RelationshipStructs.LocalizedNameRelationshipType);
              sub_1C449A6B4(v79, v18);
              v73 = 1;
            }
          }

          sub_1C449217C(v18, v152);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C449A568(0, *(v67 + 16) + 1, 1, v67);
            v67 = v83;
          }

          v82 = *(v67 + 16);
          v81 = *(v67 + 24);
          if (v82 >= v81 >> 1)
          {
            sub_1C449A568(v81 > 1, v82 + 1, 1, v67);
            v67 = v84;
          }

          *(v67 + 16) = v82 + 1;
          sub_1C449A6B4(v152, v67 + v71 + v82 * v74);
          sub_1C44992D8(v18, type metadata accessor for RelationshipStructs.LocalizedNameRelationshipType);
          v72 += v74;
          --v69;
        }

        while (v69);

        v27 = v127;
      }

      else
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        v73 = 0;
      }

      v86 = sub_1C4499408(v85);
      v87 = v139;
      if (v73)
      {
      }

      else
      {
        v88 = sub_1C4499AD0(v144, v145, v86);

        if (v88)
        {
          v89 = sub_1C4EFEEF8();
          v90 = v114;
          sub_1C440BAA8(v114, 1, 1, v89);
          v91 = v143;
          sub_1C4EFD2C8();
          v92 = v91[6];
          if (qword_1EDDFD318 != -1)
          {
            swift_once();
          }

          v93 = type metadata accessor for Source(0);
          v94 = sub_1C442B738(v93, qword_1EDDFD320);
          sub_1C449217C(v94, v90 + v92);
          sub_1C4EFE7D8();
          v95 = (v90 + v91[8]);
          sub_1C4EFE3A8();
          *(v90 + v91[10]) = 0;
          v96 = v145;
          *v95 = v144;
          v95[1] = v96;
          v97 = sub_1C4EFFBF8();
          v98 = v140;
          sub_1C4499BAC(v141, v97, v99, v90, v140);

          sub_1C449A410(v98, v90);
          sub_1C449217C(v90, v115);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C449A568(0, *(v67 + 16) + 1, 1, v67);
            v67 = v103;
          }

          v33 = v120;
          v34 = v129;
          v101 = *(v67 + 16);
          v100 = *(v67 + 24);
          if (v101 >= v100 >> 1)
          {
            sub_1C449A568(v100 > 1, v101 + 1, 1, v67);
            v67 = v104;
          }

          *(v67 + 16) = v101 + 1;
          sub_1C449A6B4(v115, v67 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v101);
          sub_1C44992D8(v114, type metadata accessor for RelationshipStructs.LocalizedNameRelationshipType);

          goto LABEL_53;
        }
      }

      v33 = v120;
      v34 = v129;
LABEL_53:
      v102 = v121;
      *&v121[v128] = v67;
      v26 = v102;
      sub_1C449A70C();
      sub_1C449217C(v26, v119);
      swift_isUniquelyReferenced_nonNull_native();
      v146 = v87;
      sub_1C449AA98();

      v32 = v146;
      sub_1C4420C3C(v141, &qword_1EC0B9A08, &unk_1C4F107B0);
LABEL_54:
      v31 = v138 + 1;
      (*v134)(v142, v27);
      sub_1C44992D8(v26, type metadata accessor for RelationshipStructs.LivingBeingRelationship);
      result = v132;
      if (v31 == v135)
      {
        goto LABEL_59;
      }
    }
  }

  return MEMORY[0x1E69E7CC8];
}

void sub_1C4498390()
{
  sub_1C43FF404();
  sub_1C4EFF0C8();
  sub_1C43FCF8C();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C();
    if (*(v9 + 84) == v3)
    {
      v6 = v8;
      v10 = v2[5];
    }

    else
    {
      sub_1C4EFD548();
      sub_1C43FCF8C();
      if (*(v12 + 84) == v3)
      {
        v6 = v11;
        v10 = v2[6];
      }

      else
      {
        type metadata accessor for Source(0);
        sub_1C43FCF8C();
        if (*(v14 + 84) != v3)
        {
          *(v1 + v2[8]) = v0;
          return;
        }

        v6 = v13;
        v10 = v2[7];
      }
    }

    v7 = v1 + v10;
  }

  sub_1C440BAA8(v7, v0, v0, v6);
}

void sub_1C44984F8()
{
  sub_1C43FE96C();
  v105 = v0;
  v2 = v1;
  v113 = v3;
  v5 = v4;
  sub_1C4F00DD8();
  sub_1C43FCDF8();
  v106 = v7;
  v107 = v6;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v102 = v9 - v8;
  sub_1C43FBE44();
  sub_1C4F00DC8();
  sub_1C43FCDF8();
  v108 = v11;
  v109 = v10;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBFDC();
  v101 = v12;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FD230();
  v104 = v14;
  sub_1C43FBE44();
  sub_1C4F01188();
  sub_1C43FCDF8();
  v111 = v16;
  v112 = v15;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  v110 = v18 - v17;
  sub_1C43FBE44();
  v19 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBFDC();
  v98 = v23;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v90 - v25;
  sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v99 = v28;
  v100 = v27;
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBFDC();
  v96 = v29;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FD230();
  v95 = v31;
  v32 = sub_1C43FBE44();
  v33 = type metadata accessor for RelationshipStructs.LivingBeingRelationship(v32);
  v34 = v33[5];
  v35 = sub_1C4EFEEF8();
  v97 = v34;
  sub_1C440BAA8(v5 + v34, 1, 1, v35);
  v36 = v33[6];
  sub_1C4EFD1E8();
  v119 = v5;
  v116 = (v5 + v33[7]);
  if (qword_1EDDFD318 != -1)
  {
    sub_1C43FE394(&qword_1EDDFD318);
  }

  v37 = type metadata accessor for Source(0);
  sub_1C442B738(v37, qword_1EDDFD320);
  sub_1C441AD48();
  sub_1C4498D84(v38, v116, v39);
  *(v5 + v33[8]) = 0;
  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v40 = sub_1C4F00978();
  v41 = sub_1C442B738(v40, qword_1EDE2DE10);
  v42 = *(v21 + 16);
  v94 = v21 + 16;
  v93 = v42;
  v42(v26, v5 + v36, v19);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v92 = v41;
  v43 = sub_1C4F00968();
  v44 = sub_1C4F01CB8();

  v45 = os_log_type_enabled(v43, v44);
  v46 = v2;
  v114 = v36;
  v115 = v19;
  v103 = v21;
  if (v45)
  {
    v47 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v117 = v91;
    *v47 = 136381187;
    v48 = v113;
    *(v47 + 4) = sub_1C441D828(v113, v46, &v117);
    *(v47 + 12) = 2080;
    sub_1C4412AF4();
    sub_1C4498F00(v49, v50, MEMORY[0x1E69A92F8]);
    v51 = sub_1C4F02858();
    v52 = v19;
    v54 = v53;
    v55 = *(v21 + 8);
    v55(v26, v52);
    v56 = sub_1C441D828(v51, v54, &v117);

    *(v47 + 14) = v56;
    *(v47 + 22) = 1024;
    *(v47 + 24) = 0;
    _os_log_impl(&dword_1C43F8000, v43, v44, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", v47, 0x1Cu);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {

    v55 = *(v21 + 8);
    v55(v26, v19);
    v48 = v113;
  }

  v58 = *v116;
  v57 = v116[1];
  v117 = v48;
  v118 = v46;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v58, v57);

  v59 = v117;
  v60 = v118;
  v61 = v110;
  sub_1C4F01178();
  sub_1C4F01148();
  v63 = v62;
  (*(v111 + 8))(v61, v112);
  if (v63 >> 60 == 15)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v64 = sub_1C4F00968();
    v65 = sub_1C4F01CD8();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v117 = v67;
      *v66 = 136380675;
      v68 = sub_1C441D828(v59, v60, &v117);

      *(v66 + 4) = v68;
      _os_log_impl(&dword_1C43F8000, v64, v65, "Source: failed to encode identifier as UTF8 data: %{private}s", v66, 0xCu);
      sub_1C440962C(v67);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }

    v87 = v115;
    sub_1C45CF650();
    swift_allocError();
    *v88 = 5;
    swift_willThrow();
    sub_1C486D3F8(v119 + v97);
    v55((v119 + v114), v87);
    sub_1C43FFA98();
    sub_1C449AA40(v116, v89);
  }

  else
  {

    sub_1C4498F00(&qword_1EDDFEAD0, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
    v69 = v102;
    v70 = v107;
    sub_1C4F00DB8();
    v71 = sub_1C4409D98();
    sub_1C44344B8(v71, v72);
    v73 = sub_1C4409D98();
    v74 = v105;
    sub_1C4498FD8(v73, v75, v69);
    v116 = v74;
    v76 = sub_1C4409D98();
    sub_1C441DFEC(v76, v77);
    v78 = v104;
    sub_1C4F00DA8();
    (*(v106 + 8))(v69, v70);
    v93(v98, v119 + v114, v115);
    v80 = v108;
    v79 = v109;
    (*(v108 + 16))(v101, v78, v109);
    v81 = v96;
    sub_1C4EFF028();
    v82 = sub_1C4409D98();
    sub_1C441DFEC(v82, v83);
    (*(v80 + 8))(v78, v79);
    v84 = v100;
    v85 = *(v99 + 32);
    v86 = v95;
    v85(v95, v81, v100);
    v85(v119, v86, v84);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4498D84(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4498DE4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C4EF9CD8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C4498E28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4498E70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4498EB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4498F00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4498F48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4498F90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4498FD8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v8 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_11;
      }

      a1 = a1;
      v6 = v8;
LABEL_9:
      result = sub_1C4499084(a1, v6);
      if (v3)
      {
        goto LABEL_10;
      }

      return result;
    case 2uLL:
      v5 = *(a1 + 24);
      a1 = *(a1 + 16);
      v6 = v5;
      goto LABEL_9;
    case 3uLL:
      a1 = 0;
      v4 = 0;
      goto LABEL_5;
    default:
      v4 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      result = sub_1C4C8BED0(a1, v4);
      if (v3)
      {
LABEL_10:

        __break(1u);
LABEL_11:
        __break(1u);
        JUMPOUT(0x1C4499074);
      }

      return result;
  }
}

uint64_t sub_1C4499084(uint64_t a1, uint64_t a2)
{
  result = sub_1C4EF9538();
  if (!result || (result = sub_1C4EF9568(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1C4EF9558();
      sub_1C4F00DD8();
      sub_1C441A948();
      sub_1C4C8C218(v5, 255, v6, MEMORY[0x1E6966618]);
      return sub_1C4F00D98();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C449916C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1C4EFF0C8();
  sub_1C43FCF8C();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      sub_1C4EFD548();
      sub_1C43FCF8C();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[6];
      }

      else
      {
        type metadata accessor for Source(0);
        sub_1C43FCF8C();
        if (*(v16 + 84) != a2)
        {
          return sub_1C4405628(*(a1 + a3[8]));
        }

        v8 = v15;
        v12 = a3[7];
      }
    }

    v9 = a1 + v12;
  }

  return sub_1C44157D4(v9, a2, v8);
}

uint64_t sub_1C44992D8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1C4499338(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_1C44993A4()
{
  result = qword_1EDDFCDC8;
  if (!qword_1EDDFCDC8)
  {
    sub_1C4572308(&qword_1EC0C0F30, &qword_1C4F41A88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFCDC8);
  }

  return result;
}

uint64_t sub_1C4499584()
{

  return type metadata accessor for PhaseStores(0);
}

uint64_t sub_1C44996E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1C456902C(&qword_1EC0BDE40, &qword_1C4F32288);
  result = sub_1C4F021D8();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_1C4501018(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1C4F02AF8();
    sub_1C4F01298();
    result = sub_1C4F02B68();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

BOOL sub_1C4499AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1C4F02AF8();
  sub_1C4F01298();
  sub_1C4F02B68();
  sub_1C440CAC8();
  v8 = ~v7;
  do
  {
    v9 = v6 & v8;
    v10 = (1 << (v6 & v8)) & *(a3 + 56 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (*(a3 + 48) + 16 * v9);
    v13 = v12[1];
    if (*v12 == a1 && v13 == a2)
    {
      break;
    }

    v15 = sub_1C4851C38(*v12, v13, a1);
    v6 = v9 + 1;
  }

  while ((v15 & 1) == 0);
  return v11;
}

uint64_t sub_1C4499BAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v63 = a4;
  v64 = a1;
  v59 = a2;
  v60 = a3;
  v6 = sub_1C4F00978();
  v56 = *(v6 - 8);
  v57 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v55 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C4EFEEF8();
  v62 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v58 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C456902C(&qword_1EC0BD1A8, &unk_1C4F4F460);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v54 - v14;
  v16 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v54 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v61 = &v54 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v54 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v54 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v54 - v27;
  v29 = v63;
  v63 = a5;
  sub_1C449217C(v29, a5);
  sub_1C4460108(v64, v28, &qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C4EFE3A8();
  sub_1C440BAA8(v25, 0, 1, v8);
  v64 = v10;
  v30 = *(v10 + 48);
  sub_1C4460108(v25, v15, &qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C4460108(v28, &v15[v30], &qword_1EC0B9A08, &unk_1C4F107B0);
  if (sub_1C44157D4(v15, 1, v8) == 1)
  {
    sub_1C4420C3C(v25, &qword_1EC0B9A08, &unk_1C4F107B0);
    if (sub_1C44157D4(&v15[v30], 1, v8) == 1)
    {
      sub_1C4420C3C(v15, &qword_1EC0B9A08, &unk_1C4F107B0);
LABEL_17:
      sub_1C4420C3C(v28, &qword_1EC0B9A08, &unk_1C4F107B0);
      v43 = v63;
      goto LABEL_18;
    }

    goto LABEL_6;
  }

  sub_1C4460108(v15, v22, &qword_1EC0B9A08, &unk_1C4F107B0);
  if (sub_1C44157D4(&v15[v30], 1, v8) == 1)
  {
    sub_1C4420C3C(v25, &qword_1EC0B9A08, &unk_1C4F107B0);
    (*(v62 + 8))(v22, v8);
LABEL_6:
    sub_1C4420C3C(v15, &qword_1EC0BD1A8, &unk_1C4F4F460);
    v31 = v61;
    goto LABEL_7;
  }

  v39 = v62;
  v40 = v58;
  (*(v62 + 32))(v58, &v15[v30], v8);
  sub_1C4497370(&qword_1EDDFCCB0, MEMORY[0x1E69A9748], MEMORY[0x1E69A9768]);
  v41 = sub_1C4F010B8();
  v42 = *(v39 + 8);
  v42(v40, v8);
  sub_1C4420C3C(v25, &qword_1EC0B9A08, &unk_1C4F107B0);
  v42(v22, v8);
  sub_1C4420C3C(v15, &qword_1EC0B9A08, &unk_1C4F107B0);
  v31 = v61;
  if (v41)
  {
    goto LABEL_17;
  }

LABEL_7:
  sub_1C4EFEBF8();
  sub_1C440BAA8(v31, 0, 1, v8);
  v32 = *(v64 + 48);
  sub_1C4460108(v31, v12, &qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C44CDA30(v28, &v12[v32], &qword_1EC0B9A08, &unk_1C4F107B0);
  if (sub_1C44157D4(v12, 1, v8) == 1)
  {
    sub_1C4420C3C(v31, &qword_1EC0B9A08, &unk_1C4F107B0);
    if (sub_1C44157D4(&v12[v32], 1, v8) == 1)
    {
      v28 = v12;
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  v33 = v54;
  sub_1C4460108(v12, v54, &qword_1EC0B9A08, &unk_1C4F107B0);
  if (sub_1C44157D4(&v12[v32], 1, v8) == 1)
  {
    sub_1C4420C3C(v31, &qword_1EC0B9A08, &unk_1C4F107B0);
    (*(v62 + 8))(v33, v8);
LABEL_12:
    sub_1C4420C3C(v12, &qword_1EC0BD1A8, &unk_1C4F4F460);
    goto LABEL_13;
  }

  v50 = v62;
  v51 = v58;
  (*(v62 + 32))(v58, &v12[v32], v8);
  sub_1C4497370(&qword_1EDDFCCB0, MEMORY[0x1E69A9748], MEMORY[0x1E69A9768]);
  v52 = sub_1C4F010B8();
  v53 = *(v50 + 8);
  v53(v51, v8);
  sub_1C4420C3C(v31, &qword_1EC0B9A08, &unk_1C4F107B0);
  v53(v33, v8);
  sub_1C4420C3C(v12, &qword_1EC0B9A08, &unk_1C4F107B0);
  v43 = v63;
  if (v52)
  {
LABEL_18:
    v44 = *(type metadata accessor for RelationshipStructs.LocalizedNameRelationshipType(0) + 40);
    v45 = *(v43 + v44);
    if (v45)
    {
      sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C4F0D130;
      *(inited + 32) = v59;
      *(inited + 40) = v60;
      v65 = v45;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C449ADBC(inited);
      v47 = v65;

      *(v43 + v44) = v47;
    }

    else
    {
      sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_1C4F0D130;
      v49 = v60;
      *(v48 + 32) = v59;
      *(v48 + 40) = v49;
      *(v43 + v44) = v48;
      return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    return result;
  }

LABEL_13:
  v34 = v55;
  sub_1C4F00158();
  v35 = sub_1C4F00968();
  v36 = sub_1C4F01CB8();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_1C43F8000, v35, v36, "Found triple, but not mapping during source ingestion.", v37, 2u);
    MEMORY[0x1C6942830](v37, -1, -1);
  }

  return (*(v56 + 8))(v34, v57);
}

uint64_t sub_1C449A410(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RelationshipStructs.LocalizedNameRelationshipType(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1C449A474(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(void), void (*a7)(unint64_t, uint64_t, unint64_t))
{
  if (a3)
  {
    sub_1C441172C();
    if (v12 != v13)
    {
      sub_1C442B904();
      if (v12)
      {
        __break(1u);
        return;
      }

      sub_1C440A4D4();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = *(a4 + 16);
  v15 = a5(v14, v11);
  v16 = *(a6(0) - 8);
  if (a1)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    a7(a4 + v17, v14, v15 + v17);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

size_t sub_1C449A5A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1C43FF2B4(a1, a2, a3, a4);
  v7 = a5(0);
  sub_1C43FCF7C(v7);
  v9 = *(v8 + 72);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  result = j__malloc_size(v12);
  if (v9)
  {
    if (result - v11 != 0x8000000000000000 || v9 != -1)
    {
      sub_1C43FDA58((result - v11) / v9);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C449A6B4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v4(v3);
  sub_1C43FBCE0();
  v5 = sub_1C43FBC98();
  v6(v5);
  return a2;
}

uint64_t sub_1C449A70C()
{
  v1 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v1);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  v4 = v33 - v3;
  v5 = type metadata accessor for RelationshipStructs.LocalizedNameRelationshipType(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v33 - v10;
  v12 = *(type metadata accessor for RelationshipStructs.LivingBeingRelationship(0) + 32);
  result = *(v0 + v12);
  if (result)
  {
    v14 = *(result + 16);
    if (v14)
    {
      v34 = v12;
      v35 = v0;
      v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v33[1] = result;
      v16 = result + v15;
      v17 = *(v6 + 72);
      v18 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1C4498D84(v16, v11, type metadata accessor for RelationshipStructs.LocalizedNameRelationshipType);
        sub_1C4EFE7A8();
        v19 = sub_1C4EFEEF8();
        sub_1C440BAA8(v4, 0, 1, v19);
        sub_1C449A970(v4, v11);
        sub_1C4498D84(v11, v8, type metadata accessor for RelationshipStructs.LocalizedNameRelationshipType);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1C4405674();
          sub_1C449A568(v23, v24, v25, v26);
          v18 = v27;
        }

        v21 = *(v18 + 16);
        v20 = *(v18 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1C43FCFE8(v20);
          sub_1C442BC40();
          sub_1C449A568(v28, v29, v30, v31);
          v18 = v32;
        }

        *(v18 + 16) = v21 + 1;
        sub_1C449A9E0(v8, v18 + v15 + v21 * v17, type metadata accessor for RelationshipStructs.LocalizedNameRelationshipType);
        sub_1C442DC14();
        sub_1C449AA40(v11, v22);
        v16 += v17;
        --v14;
      }

      while (v14);

      v12 = v34;
      v0 = v35;
    }

    else
    {

      v18 = MEMORY[0x1E69E7CC0];
    }

    *(v0 + v12) = v18;
  }

  return result;
}

uint64_t sub_1C449A970(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C449A9E0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C449AA40(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1C449AA98()
{
  sub_1C442F0C4();
  sub_1C4416E4C(v3, v4, v5);
  sub_1C442C5D8();
  if (v6)
  {
    __break(1u);
LABEL_12:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C443DF54();
  sub_1C456902C(&qword_1EC0BA988, &unk_1C4F14850);
  sub_1C43FD314();
  if (sub_1C4F02458())
  {
    v0 = *v0;
    v7 = sub_1C4405814();
    sub_1C445FAA8(v7, v8);
    sub_1C4410A40();
    if (!v10)
    {
      goto LABEL_12;
    }

    v1 = v9;
  }

  if (v2)
  {
    v11 = sub_1C4413ECC();
    v12 = type metadata accessor for RelationshipStructs.LivingBeingRelationship(v11);
    v13 = sub_1C43FBD18(v12);
    sub_1C443E2D8(v13, v0 + *(v14 + 72) * v1);
    sub_1C4422220();
  }

  else
  {
    sub_1C441C874();
    sub_1C449AB94(v15, v16, v17, v18, v19);
    sub_1C4422220();

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

void sub_1C449ABC0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  sub_1C440647C(a1, a2, a3, a4, a5);
  v12 = *(v11 + 56);
  v14 = v13(0);
  sub_1C43FBD18(v14);
  sub_1C449AC40(a4, v12 + *(v15 + 72) * a1, a7);
  sub_1C4416CEC();
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v16;
  }
}

uint64_t sub_1C449AC40(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FCE50();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C449AC9C()
{
  v1 = sub_1C43FECE0();
  v2(v1);
  sub_1C43FBCE0();
  v3 = sub_1C43FBC98();
  v4(v3);
  return v0;
}

void sub_1C449ACF0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_1C4422A04();
  if (v8 && (a4(0), sub_1C43FBCE0(), v5 + *(v9 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      sub_1C43FBE50();

      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    sub_1C43FBE50();

    swift_arrayInitWithTakeFrontToBack();
  }
}

void sub_1C449ADBC(uint64_t a1)
{
  v4 = sub_1C4405E94(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C449AE50(v4, 1);
  sub_1C444345C();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1C4416278();
  if (v10 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1C44D3DF4(v3 + 16 * v9 + 32, v7, v8, MEMORY[0x1E69E6158]);

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1C445AC08();
  if (!v5)
  {
    *(v3 + 16) = v11;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1C449AECC()
{
  v2 = *(v0 - 856);
  v3 = *(v0 - 864);

  return sub_1C44239FC(v2, v3);
}

uint64_t sub_1C449AF00()
{

  return swift_arrayDestroy();
}

__n128 *sub_1C449AF48(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 1701667182;
  result[2].n128_u64[1] = 0xE400000000000000;
  return result;
}

uint64_t sub_1C449AF60()
{
  v4 = v2 + *(v0 + 24);

  return sub_1C448D19C(v1, v4);
}

void *sub_1C449AFC8(uint64_t a1)
{
  v2 = type metadata accessor for RelationshipStructs.LocalizedNameRelationshipType(0);
  v96 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v87 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for RelationshipStructs.LivingBeingRelationship(0);
  v92 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v91 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C456902C(&qword_1EC0C3098, &qword_1C4F4F438);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v84 - v9);
  v11 = *(a1 + 64);
  v98 = a1 + 64;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v11;
  v97 = (v12 + 63) >> 6;
  v94 = a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v15 = 0;
  v88 = MEMORY[0x1E69E7CC8];
  v99 = v2;
  v100 = v10;
  v93 = v7;
LABEL_4:
  v17 = v97;
  v16 = v98;
  if (!v14)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v18 = v15;
LABEL_10:
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v20 = v19 | (v18 << 6);
    v21 = (*(v94 + 48) + 16 * v20);
    v23 = *v21;
    v22 = v21[1];
    v24 = v91;
    sub_1C449217C(*(v94 + 56) + *(v92 + 72) * v20, v91);
    v25 = sub_1C456902C(&qword_1EC0C30A0, &unk_1C4F4F440);
    v26 = *(v25 + 48);
    v27 = v93;
    *v93 = v23;
    *(v27 + 1) = v22;
    v28 = v24;
    v7 = v27;
    sub_1C449A6B4(v28, &v27[v26]);
    sub_1C440BAA8(v7, 0, 1, v25);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v2 = v99;
    v10 = v100;
LABEL_11:
    sub_1C44CDA30(v7, v10, &qword_1EC0C3098, &qword_1C4F4F438);
    v29 = sub_1C456902C(&qword_1EC0C30A0, &unk_1C4F4F440);
    if (sub_1C44157D4(v10, 1, v29) == 1)
    {

      return v88;
    }

    v30 = *v10;
    v31 = v10[1];
    v32 = v10 + *(v29 + 48);
    v33 = *(v32 + *(v95 + 32));
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44992D8(v32, type metadata accessor for RelationshipStructs.LivingBeingRelationship);
    v34 = v33 ? v33 : MEMORY[0x1E69E7CC0];
    v35 = *(v34 + 16);
    if (v35)
    {
      break;
    }

    v10 = v100;
    v17 = v97;
    v16 = v98;
    if (!v14)
    {
LABEL_6:
      while (1)
      {
        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v18 >= v17)
        {
          v36 = sub_1C456902C(&qword_1EC0C30A0, &unk_1C4F4F440);
          sub_1C440BAA8(v7, 1, 1, v36);
          v14 = 0;
          goto LABEL_11;
        }

        v14 = *(v16 + 8 * v18);
        ++v15;
        if (v14)
        {
          v15 = v18;
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_65;
    }
  }

  v89 = v30;
  v90 = v31;
  v37 = 0;
  v38 = v34 + ((*(v96 + 80) + 32) & ~*(v96 + 80));
  v40 = v87;
  v39 = v88;
  v86 = v38;
  while (v37 < *(v34 + 16))
  {
    sub_1C449217C(v38 + *(v96 + 72) * v37, v40);
    v41 = (v40 + *(v2 + 32));
    v42 = v41[1];
    if (v42 && (*v41 == 0x6361746E6F434E43 ? (v43 = v42 == 0xE900000000000074) : (v43 = 0), v43 || (sub_1C4F02938() & 1) != 0) || (v44 = *(v2 + 40), !*(v40 + v44)))
    {
      sub_1C44992D8(v40, type metadata accessor for RelationshipStructs.LocalizedNameRelationshipType);
    }

    else
    {
      v45 = v39[2];
      v88 = *(v40 + v44);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v46 = v89;
      v47 = v90;
      if (v45 && (v48 = sub_1C445FAA8(v89, v90), (v49 & 1) != 0))
      {
        v50 = *(v39[7] + 8 * v48);
        v51 = v88[2];
        v52 = *(v50 + 16);
        if (__OFADD__(v52, v51))
        {
          goto LABEL_68;
        }

        v53 = v50;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v55 = v53;
        if (!isUniquelyReferenced_nonNull_native || v52 + v51 > *(v53 + 24) >> 1)
        {
          sub_1C443D664();
          v55 = v56;
        }

        v57 = v88[2];
        v58 = v90;
        v85 = v55;
        if (v57)
        {
          if ((*(v55 + 24) >> 1) - *(v55 + 16) < v51)
          {
            goto LABEL_71;
          }

          swift_arrayInitWithCopy();

          if (v51)
          {
            v59 = *(v85 + 16);
            v60 = __OFADD__(v59, v51);
            v61 = v59 + v51;
            if (v60)
            {
              goto LABEL_73;
            }

            *(v85 + 16) = v61;
          }
        }

        else
        {

          if (v51)
          {
            goto LABEL_69;
          }
        }

        swift_isUniquelyReferenced_nonNull_native();
        v101 = v39;
        v72 = sub_1C445FAA8(v89, v58);
        if (__OFADD__(v39[2], (v73 & 1) == 0))
        {
          goto LABEL_70;
        }

        v74 = v72;
        v75 = v73;
        sub_1C456902C(&qword_1EC0BDDB8, &unk_1C4F32060);
        if (sub_1C4F02458())
        {
          v76 = sub_1C445FAA8(v89, v90);
          v38 = v86;
          v40 = v87;
          if ((v75 & 1) != (v77 & 1))
          {
            goto LABEL_74;
          }

          v74 = v76;
        }

        else
        {
          v38 = v86;
          v40 = v87;
        }

        v78 = v85;
        v39 = v101;
        if (v75)
        {
          *(v101[7] + 8 * v74) = v85;

          sub_1C44992D8(v40, type metadata accessor for RelationshipStructs.LocalizedNameRelationshipType);
        }

        else
        {
          v101[(v74 >> 6) + 8] |= 1 << v74;
          v79 = (v39[6] + 16 * v74);
          v80 = v90;
          *v79 = v89;
          v79[1] = v80;
          *(v39[7] + 8 * v74) = v78;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C44992D8(v40, type metadata accessor for RelationshipStructs.LocalizedNameRelationshipType);
          v81 = v39[2];
          v60 = __OFADD__(v81, 1);
          v82 = v81 + 1;
          if (v60)
          {
            goto LABEL_72;
          }

          v39[2] = v82;
        }

        v2 = v99;
      }

      else
      {
        swift_isUniquelyReferenced_nonNull_native();
        v101 = v39;
        v62 = sub_1C445FAA8(v46, v47);
        if (__OFADD__(v39[2], (v63 & 1) == 0))
        {
          goto LABEL_66;
        }

        v64 = v62;
        v65 = v63;
        sub_1C456902C(&qword_1EC0BDDB8, &unk_1C4F32060);
        if (sub_1C4F02458())
        {
          v66 = sub_1C445FAA8(v89, v90);
          v2 = v99;
          v40 = v87;
          if ((v65 & 1) != (v67 & 1))
          {
            goto LABEL_74;
          }

          v64 = v66;
        }

        else
        {
          v2 = v99;
          v40 = v87;
        }

        v39 = v101;
        if (v65)
        {
          *(v101[7] + 8 * v64) = v88;

          sub_1C44992D8(v40, type metadata accessor for RelationshipStructs.LocalizedNameRelationshipType);
        }

        else
        {
          v101[(v64 >> 6) + 8] |= 1 << v64;
          v68 = (v39[6] + 16 * v64);
          v69 = v90;
          *v68 = v89;
          v68[1] = v69;
          *(v39[7] + 8 * v64) = v88;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C44992D8(v40, type metadata accessor for RelationshipStructs.LocalizedNameRelationshipType);
          v70 = v39[2];
          v60 = __OFADD__(v70, 1);
          v71 = v70 + 1;
          if (v60)
          {
            goto LABEL_67;
          }

          v39[2] = v71;
        }

        v38 = v86;
      }
    }

    if (v35 == ++v37)
    {
      v88 = v39;

      v7 = v93;
      v10 = v100;
      goto LABEL_4;
    }
  }

LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C449B8C0(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t), void (*a4)(uint64_t))
{
  v5 = *(a1 + 16);
  if (!v5)
  {
    goto LABEL_4;
  }

  v8 = a2(*(a1 + 16), 0);
  v9 = a3(v20, v8 + 32, v5, a1);
  v17 = sub_1C44323B4(v9, v10, v11, v12, v13, v14, v15, v16, v19, v20[0]);
  a4(v17);
  if (v9 != v5)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v8;
}

uint64_t sub_1C449B968()
{
  sub_1C4408C40();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = sub_1C43FF2B4(v1, v2, v3, v4);
  v6 = sub_1C442E04C(v5);
  sub_1C4411F38(v6);
  sub_1C43FDA58(v7 / 24);
  return v0;
}

void sub_1C449B9D0()
{
  sub_1C44158A0();
  v1 = v0;
  v2 = v0 + 64;
  sub_1C440F35C();
  v7 = v6 & v5;
  if (!v3)
  {
    sub_1C4414154();
LABEL_17:
    sub_1C440EF50(v10);
    sub_1C4410198();
    return;
  }

  v8 = v4;
  if (!v4)
  {
    v10 = 0;
    goto LABEL_17;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    v9 = v3;
    sub_1C443315C();
    v14 = (v12 - v13) >> 6;
    while (v11 < v8)
    {
      v15 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_21;
      }

      if (!v7)
      {
        while (1)
        {
          v16 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            goto LABEL_17;
          }

          v7 = *(v2 + 8 * v16);
          ++v10;
          if (v7)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v16 = v10;
LABEL_12:
      v17 = __clz(__rbit64(v7)) | (v16 << 6);
      v18 = (*(v1 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(v1 + 56) + 8 * v17);
      v7 &= v7 - 1;
      *v9 = *v18;
      v9[1] = v19;
      v9[2] = v20;
      if (v15 == v8)
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v10 = v16;
        goto LABEL_17;
      }

      v9 += 3;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v11 = v15;
      v10 = v16;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1C449BB14(uint64_t a1, uint64_t a2)
{
  v10[2] = a1;

  sub_1C4418704(a2, v10, v3, v4, v5, v6, v7, v8, v10[0], v10[1]);
}

uint64_t sub_1C449BBBC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = (a2 + 48);
  for (i = *(a2 + 16) + 1; ; i = v13)
  {
    v6 = i - 1;
    if (!v6)
    {
      break;
    }

    v13 = v6;
    v7 = *v4;
    sub_1C456902C(&qword_1EC0B8BD0, &unk_1C4F0E000);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1C4F0D130;
    *(v8 + 32) = v7;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    swift_bridgeObjectRetain_n();
    sub_1C456902C(&qword_1EC0B9478, &qword_1C4F0F010);
    sub_1C449BDB8();
    v9 = sub_1C4EF96D8();
    if (v3)
    {
    }

    v11 = v9;
    v12 = v10;
    v4 += 3;

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44344B8(v11, v12);
    sub_1C446C4A0();
    sub_1C4EFB6C8();

    sub_1C4434000(v11, v12);
    sub_1C4434000(v11, v12);
  }

  return result;
}

unint64_t sub_1C449BDB8()
{
  result = qword_1EDDDBC10;
  if (!qword_1EDDDBC10)
  {
    sub_1C4572308(&qword_1EC0B9478, &qword_1C4F0F010);
    sub_1C449C8D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBC10);
  }

  return result;
}

void *sub_1C449BE3C(uint64_t a1)
{
  v59 = type metadata accessor for RelationshipStructs.LocalizedNameRelationshipType(0);
  v67 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v66 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for RelationshipStructs.LivingBeingRelationship(0);
  v68 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C456902C(&qword_1EC0C3098, &qword_1C4F4F438);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v58 - v10);
  v12 = *(a1 + 64);
  v70 = a1 + 64;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v74 = v14 & v12;
  v69 = (v13 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v15 = 0;
  v16 = MEMORY[0x1E69E7CC8];
  v75 = v8;
  v79 = v11;
  v72 = v3;
LABEL_4:
  v18 = v69;
  v17 = v70;
  while (1)
  {
    v19 = v74;
    if (!v74)
    {
      break;
    }

    v73 = v15;
    v20 = v15;
LABEL_11:
    v74 = (v19 - 1) & v19;
    v21 = __clz(__rbit64(v19)) | (v20 << 6);
    v22 = (*(a1 + 48) + 16 * v21);
    v23 = *v22;
    v24 = v22[1];
    sub_1C449217C(*(a1 + 56) + *(v68 + 72) * v21, v5);
    v25 = sub_1C456902C(&qword_1EC0C30A0, &unk_1C4F4F440);
    v26 = *(v25 + 48);
    v8 = v75;
    *v75 = v23;
    *(v8 + 1) = v24;
    sub_1C449A6B4(v5, &v8[v26]);
    sub_1C440BAA8(v8, 0, 1, v25);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v11 = v79;
    v3 = v72;
LABEL_12:
    sub_1C44CDA30(v8, v11, &qword_1EC0C3098, &qword_1C4F4F438);
    v27 = sub_1C456902C(&qword_1EC0C30A0, &unk_1C4F4F440);
    if (sub_1C44157D4(v11, 1, v27) == 1)
    {

      return v16;
    }

    v28 = *v11;
    v29 = v11[1];
    v30 = v11 + *(v27 + 48);
    v31 = *(v30 + *(v3 + 32));
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44992D8(v30, type metadata accessor for RelationshipStructs.LivingBeingRelationship);
    if (!v31)
    {
      v31 = MEMORY[0x1E69E7CC0];
    }

    v32 = *(v31 + 16);
    if (v32)
    {
      v34 = 0;
      v35 = *(v59 + 40);
      v64 = v31 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
      v65 = v35;
      v62 = v5;
      v63 = a1;
      v76 = v28;
      v60 = v32;
      v61 = v31;
      while (v34 < *(v31 + 16))
      {
        v36 = a1;
        v37 = v66;
        v38 = *(v67 + 72);
        v71 = v34;
        sub_1C449217C(v64 + v38 * v34, v66);
        v39 = *(v37 + v65);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C44992D8(v37, type metadata accessor for RelationshipStructs.LocalizedNameRelationshipType);
        if (v39)
        {
          v78 = *(v39 + 16);
          if (v78)
          {
            v40 = 0;
            v41 = (v39 + 40);
            v77 = v39;
            while (v40 < *(v39 + 16))
            {
              v42 = *(v41 - 1);
              v43 = *v41;
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              v44 = v29;
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              swift_isUniquelyReferenced_nonNull_native();
              v80 = v16;
              v45 = sub_1C445FAA8(v42, v43);
              if (__OFADD__(v16[2], (v46 & 1) == 0))
              {
                goto LABEL_39;
              }

              v47 = v45;
              v48 = v46;
              sub_1C456902C(&qword_1EC0BA720, &qword_1C4F23540);
              if (sub_1C4F02458())
              {
                v49 = sub_1C445FAA8(v42, v43);
                if ((v48 & 1) != (v50 & 1))
                {
                  goto LABEL_43;
                }

                v47 = v49;
              }

              if (v48)
              {

                v16 = v80;
                v51 = (v80[7] + 16 * v47);
                *v51 = v76;
                v51[1] = v44;
                v29 = v44;
              }

              else
              {
                v16 = v80;
                v80[(v47 >> 6) + 8] |= 1 << v47;
                v52 = (v16[6] + 16 * v47);
                *v52 = v42;
                v52[1] = v43;
                v53 = (v16[7] + 16 * v47);
                *v53 = v76;
                v53[1] = v44;
                v54 = v16[2];
                v55 = __OFADD__(v54, 1);
                v56 = v54 + 1;
                if (v55)
                {
                  goto LABEL_41;
                }

                v29 = v44;
                v16[2] = v56;
              }

              ++v40;
              v41 += 2;
              v11 = v79;
              v39 = v77;
              if (v78 == v40)
              {
                goto LABEL_33;
              }
            }

            __break(1u);
LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

LABEL_33:

          v5 = v62;
          a1 = v63;
          v3 = v72;
          v32 = v60;
          v31 = v61;
        }

        else
        {
          a1 = v36;
          v3 = v72;
        }

        v34 = v71 + 1;
        v8 = v75;
        if (v71 + 1 == v32)
        {

          v15 = v73;
          goto LABEL_4;
        }
      }

      goto LABEL_42;
    }

    v8 = v75;
    v18 = v69;
    v17 = v70;
    v15 = v73;
  }

  while (1)
  {
    v20 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v20 >= v18)
    {
      v73 = v15;
      v33 = sub_1C456902C(&qword_1EC0C30A0, &unk_1C4F4F440);
      sub_1C440BAA8(v8, 1, 1, v33);
      v74 = 0;
      goto LABEL_12;
    }

    v19 = *(v17 + 8 * v20);
    ++v15;
    if (v19)
    {
      v73 = v20;
      goto LABEL_11;
    }
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C449C508()
{
  sub_1C4408C40();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1C456902C(&qword_1EC0C0378, &qword_1C4F3E718);
  v1 = sub_1C44182F4();
  sub_1C4411F38(v1);
  sub_1C43FDA58(v2 / 32);
  return v0;
}

void sub_1C449C56C()
{
  sub_1C44158A0();
  v1 = v0;
  v2 = v0 + 64;
  sub_1C440F35C();
  v7 = v6 & v5;
  if (!v3)
  {
    sub_1C4414154();
LABEL_17:
    sub_1C440EF50(v10);
    sub_1C4410198();
    return;
  }

  v8 = v4;
  if (!v4)
  {
    v10 = 0;
    goto LABEL_17;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    v9 = v3;
    sub_1C443315C();
    v14 = (v12 - v13) >> 6;
    while (v11 < v8)
    {
      v15 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_21;
      }

      if (!v7)
      {
        while (1)
        {
          v16 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            goto LABEL_17;
          }

          v7 = *(v2 + 8 * v16);
          ++v10;
          if (v7)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v16 = v10;
LABEL_12:
      v17 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v18 = (v16 << 10) | (16 * v17);
      v19 = (*(v1 + 48) + v18);
      v21 = *v19;
      v20 = v19[1];
      v22 = (*(v1 + 56) + v18);
      v23 = *v22;
      v24 = v22[1];
      *v9 = v21;
      v9[1] = v20;
      v9[2] = v23;
      v9[3] = v24;
      if (v15 == v8)
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v10 = v16;
        goto LABEL_17;
      }

      v9 += 4;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v11 = v15;
      v10 = v16;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1C449C6D8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = (a2 + 56);
  for (i = *(a2 + 16) + 1; ; i = v14)
  {
    v6 = i - 1;
    if (!v6)
    {
      break;
    }

    v14 = v6;
    v7 = *(v4 - 1);
    v8 = *v4;
    sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1C4F0D130;
    *(v9 + 32) = v7;
    *(v9 + 40) = v8;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    swift_bridgeObjectRetain_n();
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C449C8D4();
    v10 = sub_1C4EF96D8();
    if (v3)
    {
    }

    v12 = v10;
    v13 = v11;
    v4 += 4;

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44344B8(v12, v13);
    sub_1C446C4A0();
    sub_1C4EFB6C8();

    sub_1C4434000(v12, v13);
    sub_1C4434000(v12, v13);
  }

  return result;
}

unint64_t sub_1C449C8D4()
{
  result = qword_1EDDFA578;
  if (!qword_1EDDFA578)
  {
    sub_1C4572308(&unk_1EC0B9620, &unk_1C4F0E870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA578);
  }

  return result;
}

void sub_1C449C950()
{
  sub_1C43FBD3C();
  v7 = v1;
  v59 = v8;
  v9 = sub_1C43FECE0();
  type metadata accessor for ConstructionProgressTokens(v9);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v10);
  v11 = sub_1C4433190();
  v12 = type metadata accessor for ProgressTokens(v11);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v13);
  v14 = sub_1C4416DF8();
  type metadata accessor for RelationshipFullSourceIngestor(v14);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C441D15C();
  if (v0)
  {
    sub_1C4424C80();
  }

  else
  {
    v17 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v17);
    v1 = sub_1C4EF93C8();
    v2 = &unk_1EC0BA4A8;
    v18 = sub_1C4404C28();
    v7 = sub_1C456902C(v18, v19);
    sub_1C442C5A4();
    v23 = sub_1C4401CBC(v20, v21, &dword_1C4F141D0, v22);
    sub_1C4414180(v23);
    if (&unk_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v58);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v24 = sub_1C4F00978();
        sub_1C43FCEE8(v24, qword_1EDE2DE10);
        v25 = sub_1C44623A0();
        sub_1C4430900(v25, v6);
        v26 = sub_1C4F00968();
        v27 = sub_1C4F01CD8();
        v28 = sub_1C44016D0();
        if (os_log_type_enabled(v28, v29))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v30 = swift_slowAlloc();
          sub_1C44305A4(v30);
          *v12 = 136315138;
          v31 = sub_1C440CAF0();
          sub_1C4430900(v31, v32);
          sub_1C447E868(v6, type metadata accessor for RelationshipFullSourceIngestor);
          sub_1C447CD74();
          sub_1C4495B14();
          v33 = sub_1C440CAFC();
          sub_1C447E868(v33, type metadata accessor for RelationshipFullSourceIngestor);
          v34 = sub_1C447CB90();
          sub_1C441D828(v34, v4, v35);
          sub_1C44D44F0();
          *(v12 + 4) = v1;
          sub_1C4451274(&dword_1C43F8000, v36, v27, "%s failed to update progress token");
          sub_1C440962C(v5);
          v37 = sub_1C4416E14();
          MEMORY[0x1C6942830](v37);
          v38 = sub_1C44068C0();
          MEMORY[0x1C6942830](v38);
        }

        else
        {
          sub_1C447E868(v6, type metadata accessor for RelationshipFullSourceIngestor);
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C449DA48();
    objc_autoreleasePoolPop(v58);
    sub_1C4488398();
  }

  sub_1C443EEB8();
  sub_1C449D0AC(v39);
  v6 = v59;
  if (!v60[3])
  {
    sub_1C4420C3C(v60, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v59)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v40 = sub_1C4402D10();
  v41(v40);
  sub_1C4456268();
  if ((v59 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  sub_1C4482CCC();
  v43 = 0x6E776F6E6B6E75;
  switch(v44)
  {
    case 1:
      v43 = sub_1C441B7B0();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      v43 = sub_1C4402D44();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C440417C(v43);
      sub_1C44A3C98();
      if (v2)
      {
LABEL_18:
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        sub_1C441925C();
        sub_1C44806A4(v45);
        sub_1C4426A30(*(v12 + 20));
        *(v5 + v46) = v59 & 1;
        sub_1C44246D8();
        sub_1C4460A18();
        v47 = sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v48 = sub_1C4424F7C(v47);
        sub_1C4412DCC(v48, xmmword_1C4F0D130);
        sub_1C4415F88();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v49 = sub_1C43FFEF0();
      }

      else
      {
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        sub_1C4428E54();
        sub_1C441925C();
        sub_1C4430900(v7, v3 + v51);
        sub_1C442AB20();
        sub_1C4460A18();
        v52 = sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v53 = sub_1C4405904(v52);
        sub_1C44068A0(v53, xmmword_1C4F0D130);
        sub_1C4430900(v3, v54);
        v55 = sub_1C4415F88();
        sub_1C449498C(v55);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v49 = v3;
      }

      sub_1C447E868(v49, v50);
      v56 = sub_1C43FD2BC();
      sub_1C441DFEC(v56, v57);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

uint64_t ProgressToken.encode(to:)(void *a1, void *a2)
{
  v3 = a2[3];
  v11 = a2[2];
  type metadata accessor for ProgressToken.CodingKeys(255, v11, v3, a2[4]);
  sub_1C441A380();
  swift_getWitnessTable();
  v4 = sub_1C4F02808();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v11 - v8;
  sub_1C4409678(a1, a1[3]);
  sub_1C4F02BF8();
  sub_1C4F027E8();
  return (*(v6 + 8))(v9, v4);
}

_BYTE *sub_1C449CFC4(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x1C449D060);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C449D0AC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v28 = a1;
  v3 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v29[-1] - v4;
  v6 = type metadata accessor for ConstructionProgressTokens(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v29[-1] - v10;
  v12 = type metadata accessor for ProgressTokens(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for RelationshipFullSourceIngestor(0);
  switch(*(v2 + *(v15 + 24)))
  {
    case 2:

      goto LABEL_4;
    default:
      v16 = sub_1C4F02938();

      if (v16)
      {
LABEL_4:
        type metadata accessor for PhaseStores(0);
        v30 = v15;
        v31 = sub_1C447CB3C(&qword_1EDDDEE68, type metadata accessor for RelationshipFullSourceIngestor, &unk_1C4F4F3E4);
        v17 = sub_1C4422F90(v29);
        sub_1C4430900(v2, v17);
        sub_1C44FEF34(v29, 0);
        sub_1C440962C(v29);
        if (sub_1C44157D4(v11, 1, v12) == 1)
        {
          v18 = &unk_1EC0BA4B8;
          v19 = &unk_1C4F16F60;
          v20 = v11;
LABEL_8:
          result = sub_1C4420C3C(v20, v18, v19);
          v23 = v28;
          *(v28 + 32) = 0;
          *v23 = 0u;
          v23[1] = 0u;
          return result;
        }

        sub_1C449F338(v11, v14);
        v24 = v28;
        *(v28 + 24) = v12;
        v24[4] = &off_1F43EE918;
        v25 = sub_1C4422F90(v24);
        v26 = v14;
      }

      else
      {
        type metadata accessor for PhaseStores(0);
        v30 = v15;
        v31 = sub_1C447CB3C(&qword_1EDDDEE68, type metadata accessor for RelationshipFullSourceIngestor, &unk_1C4F4F3E4);
        v21 = sub_1C4422F90(v29);
        sub_1C4430900(v2, v21);
        sub_1C449D50C(v29, 0);
        sub_1C440962C(v29);
        if (sub_1C44157D4(v5, 1, v6) == 1)
        {
          v18 = &unk_1EC0BAC20;
          v19 = &unk_1C4F141E0;
          v20 = v5;
          goto LABEL_8;
        }

        sub_1C449F338(v5, v8);
        v27 = v28;
        *(v28 + 24) = v6;
        v27[4] = &off_1F43EE970;
        v25 = sub_1C4422F90(v27);
        v26 = v8;
      }

      return sub_1C449F338(v26, v25);
  }
}

uint64_t sub_1C449D538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EDDE10D0, type metadata accessor for ConstructionProgressTokens, &protocol conformance descriptor for ConstructionProgressTokens);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

void ConstructionProgressTokens.init(from:)()
{
  sub_1C43FE96C();
  v3 = sub_1C445C188(v2);
  type metadata accessor for Source(v3);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  sub_1C44017FC();
  sub_1C4EFD548();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  sub_1C456902C(&qword_1EC0BE128, &qword_1C4F32658);
  sub_1C43FCDF8();
  v7 = v6;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FD1B4();
  type metadata accessor for ConstructionProgressTokens(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FD2D8();
  v22 = v10;
  v23 = v0;
  sub_1C4417F50(v0, v0[3]);
  v11 = sub_1C4495034();
  sub_1C44807A0(&type metadata for ConstructionProgressTokens.CodingKeys, v12, v11);
  if (v1)
  {
    sub_1C440962C(v0);
  }

  else
  {
    LOBYTE(v24) = 0;
    sub_1C44004E0();
    sub_1C4490F60(v13, v14, MEMORY[0x1E69A92F0]);
    sub_1C443F630();
    sub_1C44414E0();
    sub_1C4F026C8();
    v15 = sub_1C43FE6D8();
    v16(v15);
    sub_1C449DBF8();
    sub_1C4429054();
    sub_1C44414E0();
    sub_1C4F026C8();
    sub_1C443DF60();
    sub_1C441FBB8();
    sub_1C4490F60(v17, v18, &protocol conformance descriptor for Source);
    sub_1C443F630();
    sub_1C44414E0();
    sub_1C4F026C8();
    sub_1C44D3FBC();
    sub_1C444C16C();
    sub_1C4429054();
    sub_1C44414E0();
    sub_1C4F02658();
    *(v22 + v7[7]) = v24;
    sub_1C4433D1C(4);
    *(v22 + v7[8]) = sub_1C4F026B8();
    sub_1C4433D1C(5);
    sub_1C44414E0();
    v19 = sub_1C4F02688();
    v20 = sub_1C4415A30();
    v21(v20);
    *(v22 + v7[9]) = v19 & 1;
    sub_1C449EEE8();
    sub_1C440962C(v23);
    sub_1C43FBC98();
    sub_1C449F22C();
  }

  sub_1C43FBC80();
}

uint64_t sub_1C449DA48()
{
}

uint64_t sub_1C449DA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C4F010B8();
}

void sub_1C449DAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
}

uint64_t sub_1C449DAE4()
{
  v2 = *(v0 - 632);
  v3 = *(v0 - 648);

  return sub_1C44239FC(v2, v3);
}

uint64_t sub_1C449DB10()
{

  return sub_1C4A25FEC();
}

uint64_t sub_1C449DB28(uint64_t result)
{
  *(v2 - 264) = v1;
  *(v2 - 256) = result;
  *(v2 - 176) = result;
  return result;
}

uint64_t sub_1C449DB74(uint64_t a1)
{

  return swift_dynamicCast();
}

unint64_t sub_1C449DBF8()
{
  result = qword_1EDDF0740;
  if (!qword_1EDDF0740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF0740);
  }

  return result;
}

void static StageName.fromDatabaseValue(_:)(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1C4EFB258();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C4F011F8();
  if (!v11)
  {
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v18 = sub_1C4F00978();
    sub_1C442B738(v18, qword_1EDE2DE10);
    (*(v6 + 16))(v9, a1, v4);
    v19 = sub_1C4F00968();
    v20 = sub_1C4F01CD8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v46 = v22;
      *v21 = 136380675;
      sub_1C4B35A40();
      v23 = sub_1C4F02858();
      v25 = v24;
      (*(v6 + 8))(v9, v4);
      v26 = sub_1C441D828(v23, v25, &v46);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_1C43F8000, v19, v20, "StageName: failed to initialize from database value: %{private}s", v21, 0xCu);
      sub_1C440962C(v22);
      MEMORY[0x1C6942830](v22, -1, -1);
      MEMORY[0x1C6942830](v21, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v9, v4);
    }

    v17 = 11;
    goto LABEL_20;
  }

  v12 = v10;
  v13 = v11;
  v14 = sub_1C4432A10();
  v16 = v12 == v14 && v15 == 0xE800000000000000;
  if (v16 || (sub_1C4420310(v14, 0xE800000000000000) & 1) != 0)
  {

    v17 = 6;
LABEL_20:
    *a2 = v17;
    return;
  }

  sub_1C440D85C();
  v27 = sub_1C43FDE60();
  v29 = v12 == v27 && v13 == v28;
  if (v29 || (sub_1C4420310(v27, v28) & 1) != 0)
  {

    v17 = 9;
    goto LABEL_20;
  }

  v30 = sub_1C44124F8();
  v32 = v12 == v30 && v13 == v31;
  if (v32 || (sub_1C4420310(v30, v31) & 1) != 0)
  {

    v17 = 7;
    goto LABEL_20;
  }

  v33 = sub_1C44137B0();
  v34 = v12 == v33 && v13 == 0xE700000000000000;
  if (v34 || (sub_1C4420310(v33, 0xE700000000000000) & 1) != 0)
  {

    v17 = 8;
    goto LABEL_20;
  }

  sub_1C440FC14();
  v36 = v16 && v35 == v13;
  if (v36 || (sub_1C4420310(0xD000000000000010, v35) & 1) != 0)
  {

    v17 = 0;
    goto LABEL_20;
  }

  v37 = v12 == 0xD000000000000016 && 0x80000001C4FB2720 == v13;
  if (v37 || (sub_1C4420310(0xD000000000000016, 0x80000001C4FB2720) & 1) != 0)
  {

    v17 = 1;
    goto LABEL_20;
  }

  sub_1C440FC14();
  v39 = v16 && v38 == v13;
  if (v39 || (sub_1C4420310(0xD000000000000010, v38) & 1) != 0)
  {

    v17 = 2;
    goto LABEL_20;
  }

  sub_1C440FC14();
  v41 = v16 && v40 == v13;
  if (v41 || (sub_1C4420310(0xD000000000000010, v40) & 1) != 0)
  {

    v17 = 3;
    goto LABEL_20;
  }

  v42 = v12 == 0xD000000000000012 && 0x80000001C4FB2760 == v13;
  if (v42 || (sub_1C4420310(0xD000000000000012, 0x80000001C4FB2760) & 1) != 0)
  {

    v17 = 4;
    goto LABEL_20;
  }

  v43 = v12 == 0x2D676E696B6E696CLL && v13 == 0xEF6C6172656E6567;
  if (v43 || (sub_1C4420310(0x2D676E696B6E696CLL, 0xEF6C6172656E6567) & 1) != 0)
  {

    v17 = 5;
    goto LABEL_20;
  }

  v44 = sub_1C440E7B4();
  v45 = v12 == v44 && v13 == 0xE600000000000000;
  if (v45 || (sub_1C4420310(v44, 0xE600000000000000) & 1) != 0)
  {

    v17 = 10;
    goto LABEL_20;
  }

  v46 = 0;
  v47 = 0xE000000000000000;
  sub_1C4F02248();

  v46 = 0x6D614E6567617453;
  v47 = 0xEB00000000203A65;
  MEMORY[0x1C6940010](v12, v13);
  MEMORY[0x1C6940010](0x74276E73656F6420, 0xEE00747369786520);
  sub_1C4F024A8();
  __break(1u);
}

uint64_t getEnumTagSinglePayload for StageName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF6)
  {
    v2 = a2 + 10;
    if (a2 + 10 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = a1[1];
        if (!a1[1])
        {
          break;
        }

        return (*a1 | (v5 << 8)) - 10;
      case 2:
        v5 = *(a1 + 1);
        if (*(a1 + 1))
        {
          return (*a1 | (v5 << 8)) - 10;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x1C449E248);
      case 4:
        v5 = *(a1 + 1);
        if (!v5)
        {
          break;
        }

        return (*a1 | (v5 << 8)) - 10;
      default:
        break;
    }
  }

  v7 = *a1;
  if (v7 >= 6)
  {
    v8 = v7 - 5;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 6)
  {
    return v8 - 5;
  }

  else
  {
    return 0;
  }
}

uint64_t static Source.fromDatabaseValue(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C4EFB258();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C4F01B88();
  if (v9)
  {
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v10 = sub_1C4F00978();
    sub_1C442B738(v10, qword_1EDE2DE10);
    (*(v5 + 16))(v7, a1, v4);
    v11 = sub_1C4F00968();
    v12 = sub_1C4F01CD8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v22 = v14;
      *v13 = 136380675;
      sub_1C4490A14(&qword_1EC0C35A0, MEMORY[0x1E699FE40], MEMORY[0x1E699FE48]);
      v15 = sub_1C4F02858();
      v17 = v16;
      (*(v5 + 8))(v7, v4);
      v18 = sub_1C441D828(v15, v17, &v22);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_1C43F8000, v11, v12, "Source: failed to initialize from database value: %{private}s", v13, 0xCu);
      sub_1C440962C(v14);
      MEMORY[0x1C6942830](v14, -1, -1);
      MEMORY[0x1C6942830](v13, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    v20 = type metadata accessor for Source(0);
    return sub_1C440BAA8(a2, 1, 1, v20);
  }

  else
  {

    return sub_1C449E530(v8, a2);
  }
}

uint64_t sub_1C449E530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C456902C(&unk_1EC0C0760, &qword_1C4F170D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v7 = type metadata accessor for Source(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  switch(a1)
  {
    case 1:
      if (qword_1EDDFED28 != -1)
      {
        swift_once();
      }

      v13 = &unk_1EDDFD088;
      goto LABEL_76;
    case 2:
      if (qword_1EDDFD0D0 != -1)
      {
        swift_once();
      }

      v13 = qword_1EDDFD0D8;
      goto LABEL_76;
    case 6:
      if (qword_1EDDFD0A8 != -1)
      {
        swift_once();
      }

      v13 = qword_1EDDFD0B0;
      goto LABEL_76;
    case 9:
      if (qword_1EDDFD150 != -1)
      {
        swift_once();
      }

      v13 = qword_1EDDFD158;
      goto LABEL_76;
    case 11:
      if (qword_1EDDFD068 != -1)
      {
        swift_once();
      }

      v13 = qword_1EDDFD070;
      goto LABEL_76;
    case 12:
      if (qword_1EDDFD110 != -1)
      {
        swift_once();
      }

      v13 = qword_1EDDFD118;
      goto LABEL_76;
    case 14:
      if (qword_1EDDFED38 != -1)
      {
        swift_once();
      }

      v13 = qword_1EDDFD0F0;
      goto LABEL_76;
    case 16:
      if (qword_1EDDFD2F0 != -1)
      {
        swift_once();
      }

      v13 = qword_1EDDFD2F8;
      goto LABEL_76;
    case 17:
      if (qword_1EDDFED08 != -1)
      {
        swift_once();
      }

      v13 = qword_1EDDFED10;
      goto LABEL_76;
    case 18:
      if (qword_1EDDFD040 != -1)
      {
        swift_once();
      }

      v13 = qword_1EDDFD048;
      goto LABEL_76;
    case 19:
      if (qword_1EDDFD268 != -1)
      {
        swift_once();
      }

      v13 = &qword_1EDDFD270;
      goto LABEL_76;
    case 21:
      if (qword_1EDDFD130 != -1)
      {
        swift_once();
      }

      v13 = qword_1EDDFD138;
      goto LABEL_76;
    case 22:
      if (qword_1EDDFD178 != -1)
      {
        swift_once();
      }

      v13 = &qword_1EDDFD180;
      goto LABEL_76;
    case 23:
      if (qword_1EDDFED40 != -1)
      {
        swift_once();
      }

      v13 = qword_1EDDFD2A8;
      goto LABEL_76;
    case 24:
      if (qword_1EDDFD218 != -1)
      {
        swift_once();
      }

      v13 = &qword_1EDDFD220;
      goto LABEL_76;
    case 25:
      if (qword_1EDDFD240 != -1)
      {
        swift_once();
      }

      v13 = &qword_1EDDFD248;
      goto LABEL_76;
    case 27:
      if (qword_1EDDFD318 != -1)
      {
        swift_once();
      }

      v13 = qword_1EDDFD320;
      goto LABEL_76;
    case 28:
      if (qword_1EDDFD340 != -1)
      {
        swift_once();
      }

      v13 = qword_1EDDFD348;
      goto LABEL_76;
    case 29:
      if (qword_1EDDFD2C8 != -1)
      {
        swift_once();
      }

      v13 = qword_1EDDFD2D0;
      goto LABEL_76;
    case 31:
      if (qword_1EDDFD1F0 != -1)
      {
        swift_once();
      }

      v13 = &qword_1EDDFD1F8;
      goto LABEL_76;
    case 32:
      if (qword_1EDDFD288 != -1)
      {
        swift_once();
      }

      v13 = &qword_1EDDFD290;
      goto LABEL_76;
    case 33:
      if (qword_1EDDFD1A0 != -1)
      {
        swift_once();
      }

      v13 = &qword_1EDDFD1A8;
      goto LABEL_76;
    case 34:
      if (qword_1EDDFD1C8 != -1)
      {
        swift_once();
      }

      v13 = &qword_1EDDFD1D0;
LABEL_76:
      v16 = sub_1C442B738(v7, v13);
      sub_1C449ED64(v16, v12);
      goto LABEL_77;
    default:
      if (qword_1EDDFDCF8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      if (!qword_1EDDFF3C8)
      {
        sub_1C440BAA8(v6, 1, 1, v7);
        goto LABEL_80;
      }

      v14 = (*(off_1EDDFF3D0 + 2))();
      (*(v15 + 16))(a1, v14, v15);
      if (sub_1C44157D4(v6, 1, v7) == 1)
      {
LABEL_80:
        sub_1C46A1238(v6);
        v17 = 1;
        return sub_1C440BAA8(a2, v17, 1, v7);
      }

      sub_1C448B210(v6, v9);
      sub_1C448B210(v9, v12);
LABEL_77:
      sub_1C448B210(v12, a2);
      v17 = 0;
      return sub_1C440BAA8(a2, v17, 1, v7);
  }
}