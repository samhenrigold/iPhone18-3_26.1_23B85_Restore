uint64_t sub_1D85672E0()
{
  OUTLINED_FUNCTION_211_2();
  OUTLINED_FUNCTION_289_1();
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_81_6();
    OUTLINED_FUNCTION_130_1();
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    *(v0 + 432) = v2;
    *v2 = v3;
    OUTLINED_FUNCTION_116_2(v2);
    OUTLINED_FUNCTION_284();

    __asm { BRAA            X8, X16 }
  }

  v1 = *(v0 + 184);
  OUTLINED_FUNCTION_166();
  sub_1D8580F98();
  *(v0 + 408) = *(v0 + 160);
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_90();
  if (v1)
  {
    OUTLINED_FUNCTION_342();

LABEL_9:
    v44 = OUTLINED_FUNCTION_200_3();
    OUTLINED_FUNCTION_175_3(v44);

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_284();

    return v45();
  }

  v6 = *(v0 + 360);
  v7 = *(v0 + 368);
  *(v0 + 88) = v6;
  *(v0 + 96) = v7;
  sub_1D8508B60(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A238, &unk_1D859F340);
  OUTLINED_FUNCTION_69_5();
  OUTLINED_FUNCTION_132_1();
  sub_1D8581038();
  sub_1D8508B74();
  v8 = sub_1D8508C4C();
  OUTLINED_FUNCTION_31(v8);
  *(v0 + 147) = *(v0 + 150);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A260, &qword_1D85A78B0);
  v9 = OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_172_2(v9, v10, v11, v12, v0 + 147);
  sub_1D8508D24();
  v13 = sub_1D8508DFC();
  OUTLINED_FUNCTION_31(v13);
  OUTLINED_FUNCTION_177_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A288, &qword_1D859F350);
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_60_2(v14, v15, v16, v17, v0 + 136);
  OUTLINED_FUNCTION_137_0(&unk_1ECA3A290);
  v18 = OUTLINED_FUNCTION_136_2(&unk_1ECA3A298, MEMORY[0x1E69E6818]);
  OUTLINED_FUNCTION_31(v18);
  v19 = *(v0 + 384);
  *(v0 + 104) = *(v0 + 376);
  *(v0 + 112) = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB8, &unk_1D8596010);
  v20 = OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_214(v20, v21, v22, v23, v0 + 104);
  sub_1D84751F0();
  v24 = sub_1D8475274();
  OUTLINED_FUNCTION_31(v24);
  v25 = *(v0 + 400);
  *(v0 + 120) = *(v0 + 392);
  *(v0 + 128) = v25;

  v26 = OUTLINED_FUNCTION_167();
  __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
  v28 = OUTLINED_FUNCTION_14_5();
  OUTLINED_FUNCTION_173_2(v28, v29, v30, v31, v0 + 120);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_160_0();
  sub_1D848211C(v32);
  OUTLINED_FUNCTION_1_1();
  sub_1D848211C(v33);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_155();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v34, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  v36 = MEMORY[0x1E69E7288];
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v37);
  v38 = OUTLINED_FUNCTION_269_0();
  v39 = OUTLINED_FUNCTION_26(&unk_1ECA3AB18);
  v40 = OUTLINED_FUNCTION_25(&unk_1ECA3AB20);
  OUTLINED_FUNCTION_10(v40);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v41)
  {
    OUTLINED_FUNCTION_120_2();
    v42 = OUTLINED_FUNCTION_140_3();
    v43(v42);
    MEMORY[0x200FFFC0E00]();
    (*(v39 + 8))();
    (*(v38 + 8))();
    (*(v36 + 8))();
    OUTLINED_FUNCTION_331();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  swift_task_alloc();
  OUTLINED_FUNCTION_168();
  *(v0 + 416) = v48;
  *v48 = v49;
  v48[1] = sub_1D85678B8;
  OUTLINED_FUNCTION_337();
  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_266_2();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t sub_1D85678B8()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 424) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D8567AC8()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 440) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();
    OUTLINED_FUNCTION_535();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {
    OUTLINED_FUNCTION_210_2();

    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_535();

    return v10(v9, v10, v11, v12, v13, v14, v15, v16);
  }
}

uint64_t sub_1D8567D2C()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_175_3(*(v0 + 352));

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_511();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1D8567DC0()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  memcpy((v0 + 16), v1, 0x49uLL);
  OUTLINED_FUNCTION_50(&unk_1D85A99C8);
  swift_task_alloc();
  OUTLINED_FUNCTION_168();
  *(v0 + 96) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_221_0(v2);

  return v5(v4);
}

uint64_t sub_1D8567E60()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v1 = *v0;
  OUTLINED_FUNCTION_37();
  *v2 = v1;

  OUTLINED_FUNCTION_146();

  return v3();
}

uint64_t sub_1D8567F40(uint64_t a1, uint64_t a2)
{
  v3[26] = a2;
  v3[27] = v2;
  v3[25] = a1;
  v4 = sub_1D8581018();
  v3[28] = v4;
  v3[29] = *(v4 - 8);
  v3[30] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AB28, &qword_1D85A78D0);
  v3[31] = v5;
  v3[32] = *(v5 - 8);
  v3[33] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D856806C);
}

uint64_t sub_1D856806C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  if (swift_distributed_actor_is_remote())
  {
    v14 = OUTLINED_FUNCTION_265_0();
    v13[34] = v14;
    v15 = v14;
    GameServicesActorSystem.makeInvocationEncoder()(v13 + 22);
    v16 = type metadata accessor for $DistributedGameLibraryServiceProtocol();
    OUTLINED_FUNCTION_289_2(v16);
    if (v12)
    {

LABEL_12:

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_197();

      return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12);
    }

    OUTLINED_FUNCTION_246_3();
    sub_1D8571AEC(v15, (v13 + 12));
    OUTLINED_FUNCTION_24_2();
    OUTLINED_FUNCTION_25_6(v28, v29, v30, v31, (v13 + 2));
    sub_1D857324C();
    sub_1D85732A0();
    OUTLINED_FUNCTION_59_1();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_170_2(v32);
    OUTLINED_FUNCTION_269_0();
    OUTLINED_FUNCTION_26(&unk_1ECA3AB18);
    OUTLINED_FUNCTION_25(&unk_1ECA3AB20);
    OUTLINED_FUNCTION_43_2();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v33)
    {

      v34 = OUTLINED_FUNCTION_49_0();
      v35(v34);
      OUTLINED_FUNCTION_230_1();

      goto LABEL_12;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v44 = swift_task_alloc();
    v13[36] = v44;
    OUTLINED_FUNCTION_0_18();
    sub_1D8571D18(v45);
    OUTLINED_FUNCTION_217();
    *v44 = v46;
    v44[1] = sub_1D856847C;
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_118_0();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D85A99C8);
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v13[35] = v17;
    *v17 = v18;
    OUTLINED_FUNCTION_222_2(v17);
    OUTLINED_FUNCTION_197();

    return v21(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
  }
}

uint64_t sub_1D8568354()
{
  OUTLINED_FUNCTION_174();
  v1 = *v0;
  OUTLINED_FUNCTION_37();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1D856847C()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 296) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D8568574()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_283_2();
  v0 = OUTLINED_FUNCTION_77();
  v1(v0);
  v2 = OUTLINED_FUNCTION_80();
  v3(v2);
  OUTLINED_FUNCTION_230_1();

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_511();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1D8568618()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_283_2();
  v0 = OUTLINED_FUNCTION_77();
  v1(v0);
  v2 = OUTLINED_FUNCTION_80();
  v3(v2);
  OUTLINED_FUNCTION_230_1();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_511();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t DistributedGameLibraryServiceProtocol<>.listGameHistories(with:)()
{
  OUTLINED_FUNCTION_148();
  v6 = OUTLINED_FUNCTION_248_1(v1, v2, v3, v4, v5);
  v0[53] = v6;
  OUTLINED_FUNCTION_39(v6);
  v0[54] = v7;
  v0[55] = OUTLINED_FUNCTION_332();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AB28, &qword_1D85A78D0);
  v0[56] = v8;
  OUTLINED_FUNCTION_39(v8);
  v0[57] = v9;
  v10 = OUTLINED_FUNCTION_332();
  OUTLINED_FUNCTION_282_1(v10);
  v11 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v11);
}

{
  OUTLINED_FUNCTION_148();
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v0 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v0);
}

uint64_t sub_1D85687B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    v15 = v14[49];
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    OUTLINED_FUNCTION_280_1();
    OUTLINED_FUNCTION_109_4();
    if (v15)
    {

LABEL_12:

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
    }

    OUTLINED_FUNCTION_279_1();
    sub_1D8571AEC((v14 + 2), (v14 + 32));
    OUTLINED_FUNCTION_24_2();
    OUTLINED_FUNCTION_25_6(v28, v29, v30, v31, (v14 + 22));
    sub_1D857324C();
    sub_1D85732A0();
    OUTLINED_FUNCTION_59_1();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_170_2(v32);
    OUTLINED_FUNCTION_269_0();
    OUTLINED_FUNCTION_26(&unk_1ECA3AB18);
    OUTLINED_FUNCTION_25(&unk_1ECA3AB20);
    OUTLINED_FUNCTION_43_2();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v33)
    {

      v34 = OUTLINED_FUNCTION_49_0();
      v35(v34);
      OUTLINED_FUNCTION_297_1();

      goto LABEL_12;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v14[60] = v44;
    *v44 = v45;
    v44[1] = sub_1D8568AE4;
    OUTLINED_FUNCTION_6_7();
    OUTLINED_FUNCTION_170();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_238_3();
    OUTLINED_FUNCTION_54();
    v47 = v16 + *v16;
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v14[62] = v17;
    *v17 = v18;
    OUTLINED_FUNCTION_148_0(v17);
    OUTLINED_FUNCTION_169();

    return v23(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, v47, a12, a13, a14);
  }
}

uint64_t sub_1D8568AE4()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 488) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D8568BDC()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_296_1();
  v0 = OUTLINED_FUNCTION_77();
  v1(v0);
  v2 = OUTLINED_FUNCTION_80();
  v3(v2);
  OUTLINED_FUNCTION_297_1();

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_511();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1D8568C80()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 504) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {

    OUTLINED_FUNCTION_57();

    return v8();
  }
}

uint64_t sub_1D8568DA8()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_296_1();
  v0 = OUTLINED_FUNCTION_77();
  v1(v0);
  v2 = OUTLINED_FUNCTION_80();
  v3(v2);
  OUTLINED_FUNCTION_297_1();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_511();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1D8568E50()
{
  OUTLINED_FUNCTION_148();

  OUTLINED_FUNCTION_146();

  return v0();
}

uint64_t sub_1D8568EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_225();
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_193_2();
  OUTLINED_FUNCTION_24(&unk_1D85A99C0);
  swift_task_alloc();
  OUTLINED_FUNCTION_168();
  *(v14 + 16) = v15;
  *v15 = v16;
  OUTLINED_FUNCTION_100_4(v15);
  OUTLINED_FUNCTION_170();

  return v25(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1D8568F54(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 160) = v19;
  *(v9 + 168) = v8;
  *(v9 + 144) = a8;
  *(v9 + 152) = v18;
  *(v9 + 128) = a5;
  *(v9 + 136) = a7;
  *(v9 + 99) = a6;
  *(v9 + 100) = a4;
  *(v9 + 112) = a2;
  *(v9 + 120) = a3;
  *(v9 + 104) = a1;
  v10 = sub_1D8581018();
  *(v9 + 176) = v10;
  *(v9 + 184) = *(v10 - 8);
  *(v9 + 192) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  *(v9 + 200) = v11;
  *(v9 + 208) = *(v11 - 8);
  *(v9 + 216) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB0, &unk_1D8590C60);
  *(v9 + 224) = v12;
  *(v9 + 232) = *(v12 - 8);
  *(v9 + 240) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A220, &unk_1D85A7890);
  *(v9 + 248) = v13;
  *(v9 + 256) = *(v13 - 8);
  *(v9 + 264) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A228, &unk_1D859F330);
  *(v9 + 272) = v14;
  *(v9 + 280) = *(v14 - 8);
  *(v9 + 288) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A230, &unk_1D85A78A0);
  *(v9 + 296) = v15;
  *(v9 + 304) = *(v15 - 8);
  *(v9 + 312) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D856923C);
}

uint64_t sub_1D856923C()
{
  OUTLINED_FUNCTION_211_2();
  OUTLINED_FUNCTION_289_1();
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_50(&unk_1D85A99C0);
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    *(v0 + 328) = v2;
    *v2 = v3;
    OUTLINED_FUNCTION_117_3(v2);
    OUTLINED_FUNCTION_284();

    __asm { BR              X8 }
  }

  *(v0 + 320) = OUTLINED_FUNCTION_265_0();
  OUTLINED_FUNCTION_354();
  type metadata accessor for $DistributedGameLibraryServiceProtocol();
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordGenericSubstitution<A>(_:)(v1);
  v6 = *(v0 + 112);
  v7 = *(v0 + 120);
  *(v0 + 40) = v6;
  *(v0 + 48) = v7;
  sub_1D8508B60(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A238, &unk_1D859F340);
  OUTLINED_FUNCTION_69_5();
  OUTLINED_FUNCTION_132_1();
  sub_1D8581038();
  sub_1D8508B74();
  v8 = sub_1D8508C4C();
  OUTLINED_FUNCTION_31(v8);
  *(v0 + 97) = *(v0 + 100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A260, &qword_1D85A78B0);
  v9 = OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_172_2(v9, v10, v11, v12, v0 + 97);
  sub_1D8508D24();
  v13 = sub_1D8508DFC();
  OUTLINED_FUNCTION_31(v13);
  OUTLINED_FUNCTION_189_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A288, &qword_1D859F350);
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_60_2(v14, v15, v16, v17, v0 + 88);
  OUTLINED_FUNCTION_137_0(&unk_1ECA3A290);
  v18 = OUTLINED_FUNCTION_136_2(&unk_1ECA3A298, MEMORY[0x1E69E6818]);
  OUTLINED_FUNCTION_31(v18);
  v19 = *(v0 + 144);
  *(v0 + 56) = *(v0 + 136);
  *(v0 + 64) = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB8, &unk_1D8596010);
  v20 = OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_214(v20, v21, v22, v23, v0 + 56);
  sub_1D84751F0();
  v24 = sub_1D8475274();
  OUTLINED_FUNCTION_31(v24);
  v25 = *(v0 + 160);
  *(v0 + 72) = *(v0 + 152);
  *(v0 + 80) = v25;

  v26 = OUTLINED_FUNCTION_167();
  __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
  v28 = OUTLINED_FUNCTION_14_5();
  OUTLINED_FUNCTION_173_2(v28, v29, v30, v31, v0 + 72);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_160_0();
  sub_1D848211C(v32);
  OUTLINED_FUNCTION_1_1();
  sub_1D848211C(v33);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_155();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v34, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  v36 = MEMORY[0x1E69E7288];
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v37);
  v38 = OUTLINED_FUNCTION_269_0();
  v39 = OUTLINED_FUNCTION_26(&unk_1ECA3A2A8);
  v40 = OUTLINED_FUNCTION_25(&unk_1ECA3A2B0);
  OUTLINED_FUNCTION_10(v40);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v41)
  {
    OUTLINED_FUNCTION_121_4();
    v42 = OUTLINED_FUNCTION_140_3();
    v43(v42);
    MEMORY[0xD0FFF6A184]();
    (*(v39 + 8))();
    (*(v38 + 8))();
    (*(v36 + 8))();
    OUTLINED_FUNCTION_331();

    v44 = OUTLINED_FUNCTION_202_4();
    OUTLINED_FUNCTION_242_0(v44);

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_284();

    return v45();
  }

  else
  {
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v48 = swift_task_alloc();
    *(v0 + 336) = v48;
    OUTLINED_FUNCTION_0_18();
    sub_1D8571D18(v49);
    OUTLINED_FUNCTION_217();
    *v48 = v50;
    v48[1] = sub_1D85697DC;
    OUTLINED_FUNCTION_337();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_266_2();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }
}

uint64_t sub_1D85697DC()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 344) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t DistributedGameLibraryServiceProtocol<>.listGames(by:sortBy:upTo:after:belongingTo:)()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  v9 = OUTLINED_FUNCTION_136_4(v1, v2, v3, v4, v5, v6, v7, v8);
  v0[27] = v9;
  OUTLINED_FUNCTION_39(v9);
  v0[28] = v10;
  v0[29] = OUTLINED_FUNCTION_332();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v0[30] = v11;
  OUTLINED_FUNCTION_39(v11);
  v0[31] = v12;
  v0[32] = OUTLINED_FUNCTION_332();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB0, &unk_1D8590C60);
  v0[33] = v13;
  OUTLINED_FUNCTION_39(v13);
  v0[34] = v14;
  v0[35] = OUTLINED_FUNCTION_332();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A220, &unk_1D85A7890);
  v0[36] = v15;
  OUTLINED_FUNCTION_39(v15);
  v0[37] = v16;
  v0[38] = OUTLINED_FUNCTION_332();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A228, &unk_1D859F330);
  v0[39] = v17;
  OUTLINED_FUNCTION_39(v17);
  v0[40] = v18;
  v0[41] = OUTLINED_FUNCTION_332();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A230, &unk_1D85A78A0);
  v0[42] = v19;
  OUTLINED_FUNCTION_39(v19);
  v0[43] = v20;
  v21 = OUTLINED_FUNCTION_332();
  OUTLINED_FUNCTION_147_1(v21);
  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_535();
  return OUTLINED_FUNCTION_523(v22);
}

uint64_t sub_1D8569B24()
{
  OUTLINED_FUNCTION_211_2();
  OUTLINED_FUNCTION_289_1();
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_81_6();
    OUTLINED_FUNCTION_130_1();
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    *(v0 + 432) = v2;
    *v2 = v3;
    OUTLINED_FUNCTION_116_2(v2);
    OUTLINED_FUNCTION_284();

    __asm { BRAA            X8, X16 }
  }

  v1 = *(v0 + 184);
  OUTLINED_FUNCTION_166();
  sub_1D8580F98();
  *(v0 + 408) = *(v0 + 160);
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_90();
  if (v1)
  {
    OUTLINED_FUNCTION_342();

LABEL_9:
    v44 = OUTLINED_FUNCTION_200_3();
    OUTLINED_FUNCTION_175_3(v44);

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_284();

    return v45();
  }

  v6 = *(v0 + 360);
  v7 = *(v0 + 368);
  *(v0 + 88) = v6;
  *(v0 + 96) = v7;
  sub_1D8508B60(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A238, &unk_1D859F340);
  OUTLINED_FUNCTION_69_5();
  OUTLINED_FUNCTION_132_1();
  sub_1D8581038();
  sub_1D8508B74();
  v8 = sub_1D8508C4C();
  OUTLINED_FUNCTION_31(v8);
  *(v0 + 147) = *(v0 + 150);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A260, &qword_1D85A78B0);
  v9 = OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_172_2(v9, v10, v11, v12, v0 + 147);
  sub_1D8508D24();
  v13 = sub_1D8508DFC();
  OUTLINED_FUNCTION_31(v13);
  OUTLINED_FUNCTION_177_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A288, &qword_1D859F350);
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_60_2(v14, v15, v16, v17, v0 + 136);
  OUTLINED_FUNCTION_137_0(&unk_1ECA3A290);
  v18 = OUTLINED_FUNCTION_136_2(&unk_1ECA3A298, MEMORY[0x1E69E6818]);
  OUTLINED_FUNCTION_31(v18);
  v19 = *(v0 + 384);
  *(v0 + 104) = *(v0 + 376);
  *(v0 + 112) = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB8, &unk_1D8596010);
  v20 = OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_214(v20, v21, v22, v23, v0 + 104);
  sub_1D84751F0();
  v24 = sub_1D8475274();
  OUTLINED_FUNCTION_31(v24);
  v25 = *(v0 + 400);
  *(v0 + 120) = *(v0 + 392);
  *(v0 + 128) = v25;

  v26 = OUTLINED_FUNCTION_167();
  __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
  v28 = OUTLINED_FUNCTION_14_5();
  OUTLINED_FUNCTION_173_2(v28, v29, v30, v31, v0 + 120);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_160_0();
  sub_1D848211C(v32);
  OUTLINED_FUNCTION_1_1();
  sub_1D848211C(v33);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_155();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v34, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  v36 = MEMORY[0x1E69E7288];
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v37);
  v38 = OUTLINED_FUNCTION_269_0();
  v39 = OUTLINED_FUNCTION_26(&unk_1ECA3A2A8);
  v40 = OUTLINED_FUNCTION_25(&unk_1ECA3A2B0);
  OUTLINED_FUNCTION_10(v40);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v41)
  {
    OUTLINED_FUNCTION_120_2();
    v42 = OUTLINED_FUNCTION_140_3();
    v43(v42);
    MEMORY[0xD0FFF6A184]();
    (*(v39 + 8))();
    (*(v38 + 8))();
    (*(v36 + 8))();
    OUTLINED_FUNCTION_331();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  swift_task_alloc();
  OUTLINED_FUNCTION_168();
  *(v0 + 416) = v48;
  *v48 = v49;
  v48[1] = sub_1D856A0F8;
  OUTLINED_FUNCTION_337();
  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_266_2();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t sub_1D856A0F8()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 424) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D856A1F0()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 440) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();
    OUTLINED_FUNCTION_535();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {
    OUTLINED_FUNCTION_210_2();

    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_535();

    return v10(v9, v10, v11, v12, v13, v14, v15, v16);
  }
}

uint64_t sub_1D856A33C()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  memcpy((v0 + 16), v1, 0x49uLL);
  OUTLINED_FUNCTION_50(&unk_1D85A99B8);
  swift_task_alloc();
  OUTLINED_FUNCTION_168();
  *(v0 + 96) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_221_0(v2);

  return v5(v4);
}

uint64_t sub_1D856A3DC(uint64_t a1, uint64_t a2)
{
  v3[26] = a2;
  v3[27] = v2;
  v3[25] = a1;
  v4 = sub_1D8581018();
  v3[28] = v4;
  v3[29] = *(v4 - 8);
  v3[30] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AB28, &qword_1D85A78D0);
  v3[31] = v5;
  v3[32] = *(v5 - 8);
  v3[33] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D856A508);
}

uint64_t sub_1D856A508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  if (swift_distributed_actor_is_remote())
  {
    v14 = OUTLINED_FUNCTION_265_0();
    v13[34] = v14;
    v15 = v14;
    GameServicesActorSystem.makeInvocationEncoder()(v13 + 22);
    v16 = type metadata accessor for $DistributedGameLibraryServiceProtocol();
    OUTLINED_FUNCTION_289_2(v16);
    if (v12)
    {

LABEL_12:

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_197();

      return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12);
    }

    OUTLINED_FUNCTION_246_3();
    sub_1D8571AEC(v15, (v13 + 12));
    OUTLINED_FUNCTION_24_2();
    OUTLINED_FUNCTION_25_6(v28, v29, v30, v31, (v13 + 2));
    sub_1D857324C();
    sub_1D85732A0();
    OUTLINED_FUNCTION_59_1();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_170_2(v32);
    OUTLINED_FUNCTION_269_0();
    OUTLINED_FUNCTION_26(&unk_1ECA3A2A8);
    OUTLINED_FUNCTION_25(&unk_1ECA3A2B0);
    OUTLINED_FUNCTION_43_2();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v33)
    {

      v34 = OUTLINED_FUNCTION_49_0();
      v35(v34);
      OUTLINED_FUNCTION_230_1();

      goto LABEL_12;
    }

    OUTLINED_FUNCTION_184_0();
    OUTLINED_FUNCTION_300_3(v44, v45);
    v46 = swift_task_alloc();
    v13[36] = v46;
    OUTLINED_FUNCTION_0_18();
    sub_1D8571D18(v47);
    OUTLINED_FUNCTION_217();
    *v46 = v48;
    v46[1] = sub_1D856A7E8;
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_118_0();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D85A99B8);
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v13[35] = v17;
    *v17 = v18;
    OUTLINED_FUNCTION_222_2(v17);
    OUTLINED_FUNCTION_197();

    return v21(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
  }
}

uint64_t sub_1D856A7E8()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 296) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t DistributedGameLibraryServiceProtocol<>.listGames(with:)()
{
  OUTLINED_FUNCTION_148();
  v6 = OUTLINED_FUNCTION_248_1(v1, v2, v3, v4, v5);
  v0[53] = v6;
  OUTLINED_FUNCTION_39(v6);
  v0[54] = v7;
  v0[55] = OUTLINED_FUNCTION_332();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AB28, &qword_1D85A78D0);
  v0[56] = v8;
  OUTLINED_FUNCTION_39(v8);
  v0[57] = v9;
  v10 = OUTLINED_FUNCTION_332();
  OUTLINED_FUNCTION_282_1(v10);
  v11 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v11);
}

{
  OUTLINED_FUNCTION_148();
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v0 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v0);
}

uint64_t sub_1D856A9D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    v15 = v14[49];
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    OUTLINED_FUNCTION_280_1();
    OUTLINED_FUNCTION_109_4();
    if (v15)
    {

LABEL_12:

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
    }

    OUTLINED_FUNCTION_279_1();
    sub_1D8571AEC((v14 + 2), (v14 + 32));
    OUTLINED_FUNCTION_24_2();
    OUTLINED_FUNCTION_25_6(v28, v29, v30, v31, (v14 + 22));
    sub_1D857324C();
    sub_1D85732A0();
    OUTLINED_FUNCTION_59_1();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_170_2(v32);
    OUTLINED_FUNCTION_269_0();
    OUTLINED_FUNCTION_26(&unk_1ECA3A2A8);
    OUTLINED_FUNCTION_25(&unk_1ECA3A2B0);
    OUTLINED_FUNCTION_43_2();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v33)
    {

      v34 = OUTLINED_FUNCTION_49_0();
      v35(v34);
      OUTLINED_FUNCTION_297_1();

      goto LABEL_12;
    }

    OUTLINED_FUNCTION_184_0();
    OUTLINED_FUNCTION_300_3(v44, v45);
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v14[60] = v46;
    *v46 = v47;
    v46[1] = sub_1D856ACFC;
    OUTLINED_FUNCTION_6_7();
    OUTLINED_FUNCTION_170();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_238_3();
    OUTLINED_FUNCTION_54();
    v49 = v16 + *v16;
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v14[62] = v17;
    *v17 = v18;
    OUTLINED_FUNCTION_148_0(v17);
    OUTLINED_FUNCTION_169();

    return v23(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, v49, a12, a13, a14);
  }
}

uint64_t sub_1D856ACFC()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 488) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D856ADF4()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 504) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {

    OUTLINED_FUNCTION_57();

    return v8();
  }
}

uint64_t sub_1D856AF1C()
{
  OUTLINED_FUNCTION_148();
  v2 = *(v1 + 16);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v2;
  *(v0 + 48) = *(v1 + 32);
  OUTLINED_FUNCTION_24(&unk_1D85A99B0);
  swift_task_alloc();
  OUTLINED_FUNCTION_168();
  *(v0 + 56) = v3;
  *v3 = v4;
  v3[1] = sub_1D856AFC4;

  return v6(v0 + 16);
}

uint64_t sub_1D856AFC4()
{
  OUTLINED_FUNCTION_148();
  v3 = v2;
  OUTLINED_FUNCTION_153();
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_1D856B0B4(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = sub_1D8581018();
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AB40, &qword_1D85A7910);
  v2[21] = v4;
  v2[22] = *(v4 - 8);
  v2[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D856B1DC);
}

uint64_t sub_1D856B1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_24(&unk_1D85A99B0);
    v14 = swift_task_alloc();
    *(v12 + 200) = v14;
    *v14 = v12;
    v14[1] = sub_1D856B4E8;
    OUTLINED_FUNCTION_207_0(*(v12 + 128));
    OUTLINED_FUNCTION_197();

    return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
  }

  *(v12 + 192) = OUTLINED_FUNCTION_265_0();
  GameServicesActorSystem.makeInvocationEncoder()((v12 + 96));
  v13 = type metadata accessor for $DistributedGameLibraryServiceProtocol();
  GameServicesActorSystem.JSONInvocationEncoder.recordGenericSubstitution<A>(_:)(v13);
  v24 = *(v12 + 128);
  v25 = *(v24 + 32);
  v26 = *(v24 + 16);
  *(v12 + 16) = *v24;
  *(v12 + 32) = v26;
  *(v12 + 48) = v25;
  sub_1D8571C8C(v24, v12 + 56);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_25_6(v27, v28, v29, v30, v12 + 16);
  sub_1D8573B3C();
  sub_1D8573B90();
  OUTLINED_FUNCTION_59_1();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_170_2(v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AB58, &qword_1D85A7918);
  sub_1D8573BE4();
  sub_1D8573CBC();
  OUTLINED_FUNCTION_43_2();
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v32)
  {

    v33 = OUTLINED_FUNCTION_49_0();
    v34(v33);

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_197();

    return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v35 = swift_task_alloc();
  *(v12 + 208) = v35;
  OUTLINED_FUNCTION_0_18();
  sub_1D8571D18(v36);
  OUTLINED_FUNCTION_168();
  *v35 = v37;
  v35[1] = sub_1D856B61C;
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_118_0();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t sub_1D856B4E8()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_320();
  v3 = *v2;
  OUTLINED_FUNCTION_37();
  *v4 = v3;

  v6 = *(v3 + 8);
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_1D856B61C()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 216) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D856B714()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_294_1();
  v0 = OUTLINED_FUNCTION_77();
  v1(v0);
  v2 = OUTLINED_FUNCTION_80();
  v3(v2);

  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_511();

  return v6(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1D856B7C4()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_294_1();
  v0 = OUTLINED_FUNCTION_77();
  v1(v0);
  v2 = OUTLINED_FUNCTION_80();
  v3(v2);

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_511();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t DistributedGameLibraryServiceProtocol<>.getAvailableGameGenres(with:)()
{
  OUTLINED_FUNCTION_148();
  v3 = v2;
  *(v1 + 248) = v4;
  *(v1 + 256) = v0;
  *(v1 + 232) = v5;
  *(v1 + 240) = v6;
  *(v1 + 224) = v2;
  v7 = sub_1D8581018();
  *(v1 + 264) = v7;
  OUTLINED_FUNCTION_39(v7);
  *(v1 + 272) = v8;
  *(v1 + 280) = OUTLINED_FUNCTION_332();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AB40, &qword_1D85A7910);
  *(v1 + 288) = v9;
  OUTLINED_FUNCTION_39(v9);
  *(v1 + 296) = v10;
  *(v1 + 304) = OUTLINED_FUNCTION_332();
  v11 = *(v3 + 16);
  *(v1 + 16) = *v3;
  *(v1 + 32) = v11;
  *(v1 + 48) = *(v3 + 32);
  v12 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v12);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_250(v0, v1, v2);
  OUTLINED_FUNCTION_198();
  v3 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1D856B98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    v15 = *(v14 + 232);
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    *(v14 + 312) = *(v14 + 208);
    GameServicesActorSystem.makeInvocationEncoder()((v14 + 176));
    OUTLINED_FUNCTION_109_4();
    if (v15)
    {

LABEL_12:

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14);
    }

    v31 = *(v14 + 32);
    *(v14 + 96) = *(v14 + 16);
    *(v14 + 112) = v31;
    *(v14 + 128) = *(v14 + 48);
    sub_1D8571C8C(v14 + 16, v14 + 136);
    OUTLINED_FUNCTION_24_2();
    OUTLINED_FUNCTION_25_6(v32, v33, v34, v35, v14 + 96);
    sub_1D8573B3C();
    sub_1D8573B90();
    OUTLINED_FUNCTION_59_1();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_170_2(v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AB58, &qword_1D85A7918);
    sub_1D8573BE4();
    sub_1D8573CBC();
    OUTLINED_FUNCTION_43_2();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v37)
    {

      v38 = OUTLINED_FUNCTION_49_0();
      v39(v38);
      OUTLINED_FUNCTION_230_1();

      goto LABEL_12;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    *(v14 + 320) = v48;
    *v48 = v49;
    v48[1] = sub_1D856BD00;
    OUTLINED_FUNCTION_6_7();
    OUTLINED_FUNCTION_170();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    v16 = *(v14 + 224);
    *(v14 + 200) = *(v14 + 256);
    v18 = *v16;
    v17 = v16[1];
    *(v14 + 88) = *(v16 + 4);
    *(v14 + 56) = v18;
    *(v14 + 72) = v17;
    OUTLINED_FUNCTION_54();
    v51 = v19 + *v19;
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    *(v14 + 336) = v20;
    *v20 = v21;
    v20[1] = sub_1D856BEA0;
    OUTLINED_FUNCTION_169();

    return v25(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, v51, a12, a13, a14);
  }
}

uint64_t sub_1D856BD00()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 328) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D856BDF8()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_290_1();
  v0 = OUTLINED_FUNCTION_77();
  v1(v0);
  v2 = OUTLINED_FUNCTION_80();
  v3(v2);
  OUTLINED_FUNCTION_230_1();

  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_511();

  return v6(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1D856BEA0()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 344) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_56_0();

    return v9(v8);
  }
}

uint64_t sub_1D856BFD8()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_290_1();
  v0 = OUTLINED_FUNCTION_77();
  v1(v0);
  v2 = OUTLINED_FUNCTION_80();
  v3(v2);
  OUTLINED_FUNCTION_230_1();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_511();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1D856C080()
{
  OUTLINED_FUNCTION_148();

  OUTLINED_FUNCTION_146();

  return v0();
}

uint64_t sub_1D856C0E8(uint64_t a1)
{
  type metadata accessor for $DistributedGameLibraryServiceProtocol();
  OUTLINED_FUNCTION_0_18();
  sub_1D8571D18(v1);
  v2 = OUTLINED_FUNCTION_188();

  return MEMORY[0x1EEE6CC98](v2);
}

uint64_t sub_1D856C15C(uint64_t a1)
{
  type metadata accessor for $DistributedGameLibraryServiceProtocol();
  OUTLINED_FUNCTION_0_18();
  sub_1D8571D18(v1);
  sub_1D843D180();
  return sub_1D8580FD8();
}

uint64_t sub_1D856C1E0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for $DistributedGameLibraryServiceProtocol();
  OUTLINED_FUNCTION_0_18();
  sub_1D8571D18(v4);
  sub_1D843EE3C();
  result = sub_1D8580FE8();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t GameHistory.PlayHistory.lastPlayed.getter()
{
  OUTLINED_FUNCTION_393_0();
  sub_1D8580EA8();
  OUTLINED_FUNCTION_4_0();
  v0 = OUTLINED_FUNCTION_194();

  return v1(v0);
}

uint64_t GameHistory.PlayHistory.init(lastPlayed:)(uint64_t a1)
{
  sub_1D8580EA8();
  OUTLINED_FUNCTION_4_0();
  v2 = OUTLINED_FUNCTION_268_2();

  return v3(v2, a1);
}

uint64_t sub_1D856C328(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x79616C507473616CLL && a2 == 0xEA00000000006465)
  {

    v4 = 0;
  }

  else
  {
    sub_1D8581AB8();
    OUTLINED_FUNCTION_369();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D856C3C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D856C328(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1D856C3EC()
{
  sub_1D8573D94();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D856C424()
{
  sub_1D8573D94();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t GameHistory.PlayHistory.encode(to:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AB80, &qword_1D85A7920);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_128();
  v1 = OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_260(v1, v2);
  sub_1D8573D94();
  OUTLINED_FUNCTION_217_1();
  sub_1D8581BB8();
  sub_1D8580EA8();
  OUTLINED_FUNCTION_1_11();
  sub_1D8571D18(v3);
  sub_1D8581A58();
  v4 = OUTLINED_FUNCTION_228();
  return v5(v4);
}

uint64_t GameHistory.PlayHistory.hash(into:)()
{
  OUTLINED_FUNCTION_85_1();
  sub_1D8580EA8();
  OUTLINED_FUNCTION_1_11();
  sub_1D8571D18(v0);
  OUTLINED_FUNCTION_188();

  return sub_1D85811E8();
}

uint64_t GameHistory.PlayHistory.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_379(a1);
  sub_1D8580EA8();
  OUTLINED_FUNCTION_1_11();
  sub_1D8571D18(v1);
  sub_1D85811E8();
  return sub_1D8581B98();
}

void GameHistory.PlayHistory.init(from:)()
{
  OUTLINED_FUNCTION_285();
  v3 = v2;
  v4 = sub_1D8580EA8();
  OUTLINED_FUNCTION_1();
  v20 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_1();
  v22 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AB88, &qword_1D85A7928);
  OUTLINED_FUNCTION_1();
  v21 = v10;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_199();
  v12 = type metadata accessor for GameHistory.PlayHistory(0);
  v13 = OUTLINED_FUNCTION_363(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_1();
  v16 = v15 - v14;
  v17 = OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_260(v17, v18);
  sub_1D8573D94();
  sub_1D8581BA8();
  if (!v0)
  {
    OUTLINED_FUNCTION_1_11();
    sub_1D8571D18(v19);
    sub_1D8581958();
    (*(v21 + 8))(v1, v9);
    (*(v20 + 32))(v16, v22, v4);
    OUTLINED_FUNCTION_38_4();
    sub_1D8574098();
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_284_0();
}

uint64_t sub_1D856C8EC(uint64_t a1)
{
  sub_1D8581B58();
  sub_1D8580EA8();
  OUTLINED_FUNCTION_1_11();
  sub_1D8571D18(v1);
  sub_1D85811E8();
  return sub_1D8581B98();
}

uint64_t sub_1D856C97C()
{
  OUTLINED_FUNCTION_263_0();
  v2 = v1 == 0x707041656C707061 && v0 == 0xED000065726F7453;
  if (v2 || (OUTLINED_FUNCTION_7(0x707041656C707061, 0xED000065726F7453) & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0x7261506472696874 && v0 == 0xEA00000000007974)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_7(0x7261506472696874, 0xEA00000000007974);
    OUTLINED_FUNCTION_369();
    if (v1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1D856CA30(char a1)
{
  if (a1)
  {
    return 0x7261506472696874;
  }

  else
  {
    return 0x707041656C707061;
  }
}

uint64_t sub_1D856CA78()
{
  sub_1D8573EB0();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D856CAB0()
{
  sub_1D8573EB0();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D856CAF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D856C97C();
  *a1 = result;
  return result;
}

uint64_t sub_1D856CB18()
{
  sub_1D8573E08();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D856CB50()
{
  sub_1D8573E08();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D856CB88()
{
  sub_1D8573E5C();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D856CBC0()
{
  sub_1D8573E5C();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void GameHistory.InstallHistory.Source.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AB90, &qword_1D85A7930);
  OUTLINED_FUNCTION_1();
  v23 = v5;
  v24 = v4;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v6);
  v22 = &v20 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AB98, &qword_1D85A7938);
  OUTLINED_FUNCTION_1();
  v20 = v9;
  v21 = v8;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3ABA0, &qword_1D85A7940);
  OUTLINED_FUNCTION_1();
  v15 = v14;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_129();
  v17 = *v0;
  OUTLINED_FUNCTION_260(v3, v3[3]);
  sub_1D8573E08();
  sub_1D8581BB8();
  v18 = (v15 + 8);
  if (v17)
  {
    OUTLINED_FUNCTION_338();
    sub_1D8573E5C();
    v19 = v22;
    OUTLINED_FUNCTION_272();
    sub_1D8581988();
    (*(v23 + 8))(v19, v24);
  }

  else
  {
    sub_1D8573EB0();
    OUTLINED_FUNCTION_272();
    sub_1D8581988();
    (*(v20 + 8))(v12, v21);
  }

  (*v18)(v1, v13);
  OUTLINED_FUNCTION_284_0();
}

uint64_t GameHistory.InstallHistory.Source.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_379(a1);
  v1 = OUTLINED_FUNCTION_298();
  MEMORY[0x1DA7191F0](v1);
  return sub_1D8581B98();
}

void GameHistory.InstallHistory.Source.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_285();
  a22 = v26;
  a23 = v27;
  v70 = v23;
  v29 = v28;
  v67 = v30;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3ABA8, &qword_1D85A7948);
  OUTLINED_FUNCTION_1();
  v66 = v31;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v32);
  v34 = v62 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3ABB0, &qword_1D85A7950);
  OUTLINED_FUNCTION_1();
  v65 = v36;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_160();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3ABB8, &qword_1D85A7958);
  OUTLINED_FUNCTION_1();
  v68 = v39;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_128();
  OUTLINED_FUNCTION_260(v29, v29[3]);
  sub_1D8573E08();
  v41 = v70;
  sub_1D8581BA8();
  if (v41)
  {
    goto LABEL_10;
  }

  v63 = v35;
  v64 = v25;
  v70 = v29;
  v42 = v69;
  v43 = sub_1D8581968();
  v44 = sub_1D84BACA0(v43, 0);
  if (v46 == v47 >> 1)
  {
    v69 = v44;
LABEL_9:
    v56 = sub_1D85817C8();
    swift_allocError();
    v58 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38AD0, &qword_1D8590AE0);
    *v58 = &type metadata for GameHistory.InstallHistory.Source;
    sub_1D8581888();
    sub_1D85817B8();
    (*(*(v56 - 8) + 104))(v58, *MEMORY[0x1E69E6AF8], v56);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v68 + 8))(v24, v38);
    v29 = v70;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v29);
LABEL_11:
    OUTLINED_FUNCTION_480();
    OUTLINED_FUNCTION_284_0();
    return;
  }

  v62[1] = 0;
  if (v46 < (v47 >> 1))
  {
    v48 = *(v45 + v46);
    v49 = sub_1D84BAE48(v46 + 1, v47 >> 1, v44, v45, v46, v47);
    v51 = v50;
    v53 = v52;
    swift_unknownObjectRelease();
    if (v51 == v53 >> 1)
    {
      if (v48)
      {
        OUTLINED_FUNCTION_338();
        sub_1D8573E5C();
        v54 = v34;
        OUTLINED_FUNCTION_240_0(&type metadata for GameHistory.InstallHistory.Source.ThirdPartyCodingKeys, &a13);
        v55 = v67;
        swift_unknownObjectRelease();
        (*(v66 + 8))(v54, v42);
      }

      else
      {
        a12 = 0;
        sub_1D8573EB0();
        v59 = v64;
        OUTLINED_FUNCTION_240_0(&type metadata for GameHistory.InstallHistory.Source.AppleAppStoreCodingKeys, &a12);
        v55 = v67;
        swift_unknownObjectRelease();
        (*(v65 + 8))(v59, v63);
      }

      v60 = OUTLINED_FUNCTION_228();
      v61(v60);
      *v55 = v48;
      __swift_destroy_boxed_opaque_existential_1(v70);
      goto LABEL_11;
    }

    v69 = v49;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t GameHistory.InstallHistory.purchaseDate.getter()
{
  v0 = OUTLINED_FUNCTION_393_0();
  type metadata accessor for GameHistory.InstallHistory(v0);
  return sub_1D847C204();
}

uint64_t GameHistory.InstallHistory.init(source:purchaseDate:isInstalled:)@<X0>(_BYTE *a1@<X0>, char a3@<W2>, _BYTE *a4@<X8>)
{
  *a4 = *a1;
  v6 = type metadata accessor for GameHistory.InstallHistory(0);
  result = sub_1D8574040();
  a4[*(v6 + 24)] = a3;
  return result;
}

void static GameHistory.InstallHistory.== infix(_:_:)()
{
  OUTLINED_FUNCTION_386();
  v3 = v2;
  v5 = v4;
  v6 = sub_1D8580EA8();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_1();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39300, &unk_1D8591030);
  OUTLINED_FUNCTION_363(v13);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_128();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39308, &qword_1D85A7960);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_200();
  if (*v5 == *v3)
  {
    v21 = v8;
    type metadata accessor for GameHistory.InstallHistory(0);
    v17 = *(v15 + 48);
    sub_1D847C204();
    sub_1D847C204();
    OUTLINED_FUNCTION_501(v0, 1, v6);
    if (!v18)
    {
      sub_1D847C204();
      OUTLINED_FUNCTION_501(v0 + v17, 1, v6);
      if (!v18)
      {
        (*(v21 + 32))(v12, v0 + v17, v6);
        OUTLINED_FUNCTION_1_11();
        sub_1D8571D18(v19);
        OUTLINED_FUNCTION_228();
        sub_1D8581208();
        v20 = *(v21 + 8);
        v20(v12, v6);
        v20(v1, v6);
        sub_1D8436E18(v0, &qword_1ECA39300, &unk_1D8591030);
        goto LABEL_11;
      }

      (*(v21 + 8))(v1, v6);
LABEL_10:
      sub_1D8436E18(v0, &qword_1ECA39308, &qword_1D85A7960);
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_501(v0 + v17, 1, v6);
    if (!v18)
    {
      goto LABEL_10;
    }

    sub_1D8436E18(v0, &qword_1ECA39300, &unk_1D8591030);
  }

LABEL_11:
  OUTLINED_FUNCTION_388();
}

uint64_t sub_1D856D6FC()
{
  OUTLINED_FUNCTION_263_0();
  v3 = v1 == 0x656372756F73 && v2 == 0xE600000000000000;
  if (v3 || (OUTLINED_FUNCTION_7(0x656372756F73, 0xE600000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0x6573616863727570 && v0 == 0xEC00000065746144;
    if (v5 || (OUTLINED_FUNCTION_7(0x6573616863727570, 0xEC00000065746144) & 1) != 0)
    {

      return 1;
    }

    else if (v1 == 0x6C6174736E497369 && v0 == 0xEB0000000064656CLL)
    {

      return 2;
    }

    else
    {
      OUTLINED_FUNCTION_7(0x6C6174736E497369, 0xEB0000000064656CLL);
      OUTLINED_FUNCTION_369();
      OUTLINED_FUNCTION_274_2();
      if (v3)
      {
        return v7 + 1;
      }

      else
      {
        return v7;
      }
    }
  }
}

uint64_t sub_1D856D7DC(char a1)
{
  if (!a1)
  {
    return 0x656372756F73;
  }

  if (a1 == 1)
  {
    return 0x6573616863727570;
  }

  return 0x6C6174736E497369;
}

uint64_t sub_1D856D848@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D856D6FC();
  *a1 = result;
  return result;
}

uint64_t sub_1D856D870()
{
  sub_1D8573F24();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D856D8A8()
{
  sub_1D8573F24();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t GameHistory.InstallHistory.encode(to:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3ABC0, &qword_1D85A7968);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_110();
  v2 = OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_260(v2, v3);
  sub_1D8573F24();
  OUTLINED_FUNCTION_359();
  OUTLINED_FUNCTION_217_1();
  sub_1D8581BB8();
  sub_1D8573F78();
  OUTLINED_FUNCTION_186_4();
  sub_1D8581A58();
  if (!v0)
  {
    type metadata accessor for GameHistory.InstallHistory(0);
    sub_1D8580EA8();
    OUTLINED_FUNCTION_1_11();
    sub_1D8571D18(v4);
    OUTLINED_FUNCTION_361();
    OUTLINED_FUNCTION_186_4();
    sub_1D85819E8();
    OUTLINED_FUNCTION_186_4();
    sub_1D8581A18();
  }

  v5 = OUTLINED_FUNCTION_291();
  return v6(v5);
}

void GameHistory.InstallHistory.hash(into:)()
{
  OUTLINED_FUNCTION_386();
  OUTLINED_FUNCTION_85_1();
  v2 = sub_1D8580EA8();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_1();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39300, &unk_1D8591030);
  OUTLINED_FUNCTION_363(v9);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_160();
  MEMORY[0x1DA7191F0](*v0);
  type metadata accessor for GameHistory.InstallHistory(0);
  sub_1D847C204();
  OUTLINED_FUNCTION_501(v1, 1, v2);
  if (v11)
  {
    OUTLINED_FUNCTION_402();
  }

  else
  {
    (*(v4 + 32))(v8, v1, v2);
    OUTLINED_FUNCTION_414();
    OUTLINED_FUNCTION_1_11();
    sub_1D8571D18(v12);
    sub_1D85811E8();
    (*(v4 + 8))(v8, v2);
  }

  sub_1D8581B78();
  OUTLINED_FUNCTION_388();
}

void GameHistory.InstallHistory.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_285();
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39300, &unk_1D8591030);
  OUTLINED_FUNCTION_363(v28);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_200();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3ABD0, &qword_1D85A7970);
  OUTLINED_FUNCTION_1();
  v42 = v31;
  v43 = v30;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_129();
  v33 = type metadata accessor for GameHistory.InstallHistory(0);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_2_1();
  v37 = (v36 - v35);
  v38 = OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_260(v38, v39);
  sub_1D8573F24();
  sub_1D8581BA8();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
    sub_1D8573FCC();
    sub_1D8581958();
    *v37 = a14;
    sub_1D8580EA8();
    OUTLINED_FUNCTION_1_11();
    sub_1D8571D18(v40);
    sub_1D85818E8();
    sub_1D8574040();
    v41 = sub_1D8581918();
    (*(v42 + 8))(v25, v43);
    v37[*(v33 + 24)] = v41 & 1;
    OUTLINED_FUNCTION_115_2();
    sub_1D8574198();
    __swift_destroy_boxed_opaque_existential_1(v27);
    OUTLINED_FUNCTION_114_2();
    sub_1D85740F0();
  }

  OUTLINED_FUNCTION_284_0();
}

uint64_t GameHistory.installHistory.getter()
{
  v0 = OUTLINED_FUNCTION_393_0();
  type metadata accessor for GameHistory(v0);
  OUTLINED_FUNCTION_115_2();
  return sub_1D8574198();
}

uint64_t GameHistory.ref.getter()
{
  v2 = OUTLINED_FUNCTION_393_0();
  v3 = (v1 + *(type metadata accessor for GameHistory(v2) + 24));
  v4 = v3[1];
  *v0 = *v3;
  v0[1] = v4;
}

uint64_t GameHistory.init(ref:playHistory:installHistory:)@<X0>(uint64_t *a1@<X0>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = (a4 + *(type metadata accessor for GameHistory(0) + 24));
  *v6 = v4;
  v6[1] = v5;
  sub_1D8574040();
  OUTLINED_FUNCTION_113_4();
  return sub_1D8574098();
}

void static GameHistory.== infix(_:_:)()
{
  OUTLINED_FUNCTION_386();
  OUTLINED_FUNCTION_263_0();
  v3 = type metadata accessor for GameHistory.PlayHistory(0);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3ABE0, &qword_1D85A7978);
  OUTLINED_FUNCTION_363(v5);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_200();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3ABE8, &qword_1D85A7980);
  OUTLINED_FUNCTION_363(v7);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_110();
  v10 = *(v9 + 56);
  OUTLINED_FUNCTION_189();
  sub_1D847C204();
  sub_1D847C204();
  OUTLINED_FUNCTION_501(v2, 1, v3);
  if (!v11)
  {
    sub_1D847C204();
    OUTLINED_FUNCTION_501(v2 + v10, 1, v3);
    if (!v11)
    {
      OUTLINED_FUNCTION_38_4();
      sub_1D8574098();
      v12 = _s12GameServices0A7HistoryV04PlayC0V2eeoiySbAE_AEtFZ_0();
      sub_1D85740F0();
      sub_1D85740F0();
      sub_1D8436E18(v2, &qword_1ECA3ABE0, &qword_1D85A7978);
      if ((v12 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }

    OUTLINED_FUNCTION_112_2();
    sub_1D85740F0();
LABEL_9:
    sub_1D8436E18(v2, &qword_1ECA3ABE8, &qword_1D85A7980);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_501(v2 + v10, 1, v3);
  if (!v11)
  {
    goto LABEL_9;
  }

  sub_1D8436E18(v2, &qword_1ECA3ABE0, &qword_1D85A7978);
LABEL_11:
  v13 = type metadata accessor for GameHistory(0);
  static GameHistory.InstallHistory.== infix(_:_:)();
  if (v14)
  {
    sub_1D8510440(*(v1 + *(v13 + 24)), *(v1 + *(v13 + 24) + 8), *(v0 + *(v13 + 24)), *(v0 + *(v13 + 24) + 8));
  }

LABEL_13:
  OUTLINED_FUNCTION_388();
}

uint64_t sub_1D856E348()
{
  OUTLINED_FUNCTION_263_0();
  v2 = OUTLINED_FUNCTION_249_1();
  v4 = v1 == v2 && v0 == v3;
  if (v4 || (OUTLINED_FUNCTION_7(v2, v3) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = v1 == 0x486C6C6174736E69 && v0 == 0xEE0079726F747369;
    if (v6 || (OUTLINED_FUNCTION_7(0x486C6C6174736E69, 0xEE0079726F747369) & 1) != 0)
    {

      return 1;
    }

    else if (v1 == 6710642 && v0 == 0xE300000000000000)
    {

      return 2;
    }

    else
    {
      OUTLINED_FUNCTION_7(6710642, 0xE300000000000000);
      OUTLINED_FUNCTION_369();
      OUTLINED_FUNCTION_274_2();
      if (v4)
      {
        return v8 + 1;
      }

      else
      {
        return v8;
      }
    }
  }
}

uint64_t sub_1D856E418(char a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_249_1();
  }

  if (a1 == 1)
  {
    return 0x486C6C6174736E69;
  }

  return 6710642;
}

uint64_t sub_1D856E47C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D856E348();
  *a1 = result;
  return result;
}

uint64_t sub_1D856E4A4()
{
  sub_1D8574144();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D856E4DC()
{
  sub_1D8574144();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t GameHistory.encode(to:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3ABF0, &qword_1D85A7988);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_110();
  v2 = OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_260(v2, v3);
  sub_1D8574144();
  OUTLINED_FUNCTION_359();
  OUTLINED_FUNCTION_217_1();
  sub_1D8581BB8();
  type metadata accessor for GameHistory.PlayHistory(0);
  OUTLINED_FUNCTION_37_2();
  sub_1D8571D18(v4);
  OUTLINED_FUNCTION_361();
  OUTLINED_FUNCTION_186_4();
  sub_1D85819E8();
  if (!v0)
  {
    type metadata accessor for GameHistory(0);
    type metadata accessor for GameHistory.InstallHistory(0);
    OUTLINED_FUNCTION_36_5();
    sub_1D8571D18(v5);
    OUTLINED_FUNCTION_361();
    OUTLINED_FUNCTION_186_4();
    sub_1D8581A58();

    v6 = OUTLINED_FUNCTION_150();
    __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
    OUTLINED_FUNCTION_1_1();
    sub_1D848211C(v8);
    OUTLINED_FUNCTION_186_4();
    sub_1D8581A58();
  }

  v9 = OUTLINED_FUNCTION_291();
  return v10(v9);
}

uint64_t GameHistory.hash(into:)()
{
  v1 = v0;
  v2 = OUTLINED_FUNCTION_85_1();
  v3 = type metadata accessor for GameHistory.PlayHistory(v2);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_1();
  v5 = OUTLINED_FUNCTION_69_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_363(v7);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v19 - v9;
  sub_1D847C204();
  OUTLINED_FUNCTION_501(v10, 1, v3);
  if (v11)
  {
    OUTLINED_FUNCTION_402();
  }

  else
  {
    OUTLINED_FUNCTION_38_4();
    OUTLINED_FUNCTION_189();
    sub_1D8574098();
    OUTLINED_FUNCTION_414();
    sub_1D8580EA8();
    OUTLINED_FUNCTION_1_11();
    sub_1D8571D18(v12);
    sub_1D85811E8();
    OUTLINED_FUNCTION_112_2();
    sub_1D85740F0();
  }

  v13 = type metadata accessor for GameHistory(0);
  GameHistory.InstallHistory.hash(into:)();
  v14 = (v1 + *(v13 + 24));
  v16 = *v14;
  v15 = v14[1];
  v19[0] = v16;
  v19[1] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38B38, &qword_1D85981B0);
  OUTLINED_FUNCTION_6();
  sub_1D848211C(v17);
  OUTLINED_FUNCTION_7_0();
  return sub_1D85811E8();
}

uint64_t sub_1D856E91C(uint64_t (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_379(a1);
  a1(v3);
  return sub_1D8581B98();
}

void GameHistory.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_285();
  v54 = v23;
  v26 = v25;
  v51[0] = v27;
  type metadata accessor for GameHistory.InstallHistory(0);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_2_1();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3ABE0, &qword_1D85A7978);
  OUTLINED_FUNCTION_363(v29);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v30);
  v51[1] = v51 - v31;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AC08, &qword_1D85A7990);
  OUTLINED_FUNCTION_1();
  v33 = v32;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_199();
  v35 = type metadata accessor for GameHistory(0);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_2_1();
  v39 = v38 - v37;
  v55 = v26;
  v40 = OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_260(v40, v41);
  sub_1D8574144();
  v52 = v24;
  v42 = v54;
  sub_1D8581BA8();
  if (v42)
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  else
  {
    type metadata accessor for GameHistory.PlayHistory(0);
    LOBYTE(v56) = 0;
    OUTLINED_FUNCTION_37_2();
    sub_1D8571D18(v43);
    sub_1D85818E8();
    OUTLINED_FUNCTION_344_1();
    sub_1D8574040();
    LOBYTE(v56) = 1;
    OUTLINED_FUNCTION_36_5();
    sub_1D8571D18(v44);
    sub_1D8581958();
    OUTLINED_FUNCTION_113_4();
    sub_1D8574098();
    v45 = OUTLINED_FUNCTION_150();
    __swift_instantiateConcreteTypeFromMangledNameV2(v45, v46);
    OUTLINED_FUNCTION_3();
    sub_1D848211C(v47);
    v48 = v52;
    sub_1D8581958();
    (*(v33 + 8))(v48, v53);
    v49 = v57;
    v50 = (v39 + *(v35 + 24));
    *v50 = v56;
    v50[1] = v49;
    sub_1D8574198();
    __swift_destroy_boxed_opaque_existential_1(v55);
    sub_1D85740F0();
  }

  OUTLINED_FUNCTION_284_0();
}

uint64_t sub_1D856EDB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_1D8581B58();
  a4(v6);
  return sub_1D8581B98();
}

uint64_t sub_1D856EE38()
{
  OUTLINED_FUNCTION_99();
  sub_1D84820C8();
  OUTLINED_FUNCTION_102();
  return sub_1D8581448();
}

uint64_t sub_1D856EE80()
{
  OUTLINED_FUNCTION_99();
  sub_1D84820C8();
  OUTLINED_FUNCTION_102();
  return sub_1D85813F8();
}

uint64_t sub_1D856EF70()
{
  OUTLINED_FUNCTION_99();
  sub_1D85748DC();
  OUTLINED_FUNCTION_102();
  return sub_1D8581448();
}

uint64_t sub_1D856EFB8()
{
  OUTLINED_FUNCTION_99();
  sub_1D85748DC();
  OUTLINED_FUNCTION_102();
  return sub_1D85813F8();
}

GameServices::GameDescription::Capabilities sub_1D856F088@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = GameDescription.Capabilities.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1D856F0C8@<X0>(uint64_t *a1@<X8>)
{
  result = GameDescription.Capabilities.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D856F1B8@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 96), sizeof(__dst));
  memcpy(a1, (v1 + 96), 0x70uLL);
  return sub_1D847C204();
}

uint64_t GameDescription.prerenderedIcon.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 208), sizeof(__dst));
  memcpy(a1, (v1 + 208), 0x70uLL);
  return sub_1D847C204();
}

double GameDescription.init(name:shortName:ref:subscriptions:capabilities:compatiblePlatforms:categoryName:icon:prerenderedIcon:rawResponse:isIOSBinaryMacOSCompatible:)(int a1, int a2, int a3, uint64_t a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__src, const void *a12, uint64_t a13, uint64_t a14, char a15)
{
  OUTLINED_FUNCTION_75_2();
  OUTLINED_FUNCTION_185_4();
  memcpy(&v31[7], __src, 0x70uLL);
  OUTLINED_FUNCTION_266_3();
  v16 = OUTLINED_FUNCTION_183_2(a4);
  memcpy(v16, v31, 0x77uLL);
  v17 = memcpy((v15 + 208), a12, 0x70uLL);
  *&result = OUTLINED_FUNCTION_182_1(v17, v18, v19, v20, v21, v22, v23, v24, v25, a4, a12, v26, v29, v30).n128_u64[0];
  return result;
}

__n128 sub_1D856F3D4(int a1, int a2, int a3, uint64_t a4, int a5, int a6, int a7, int a8, __int128 a9, void *__src, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_75_2();
  v16 = *v15;
  v17 = v15[1];
  v19 = *v18;
  v21 = *v20;
  v23 = *v22;
  memcpy(&v25[7], __src, 0x70uLL);
  OUTLINED_FUNCTION_266_3();
  *(v13 + 32) = v12;
  *(v13 + 40) = a4;
  *(v13 + 48) = v16;
  *(v13 + 56) = v17;
  *(v13 + 64) = v19;
  *(v13 + 72) = v21;
  *(v13 + 80) = v23;
  *(v13 + 88) = 0;
  memcpy((v13 + 89), v25, 0x77uLL);
  *(v13 + 208) = 0u;
  *(v13 + 224) = 0u;
  *(v13 + 240) = 0u;
  *(v13 + 256) = 0u;
  *(v13 + 272) = 0u;
  *(v13 + 288) = 0u;
  result = a9;
  *(v13 + 304) = 0u;
  *(v13 + 320) = a9;
  *(v13 + 336) = a11;
  *(v13 + 344) = a12;
  *(v13 + 352) = 0;
  *(v13 + 360) = 0;
  *(v13 + 368) = 0;
  return result;
}

double GameDescription.init(name:shortName:ref:subscriptions:capabilities:compatiblePlatforms:categoryName:icon:prerenderedIcon:rawResponse:)(int a1, int a2, int a3, uint64_t a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__src, const void *a12)
{
  OUTLINED_FUNCTION_75_2();
  OUTLINED_FUNCTION_185_4();
  v16 = *v15;
  v17 = v15[1];
  v19 = *v18;
  v21 = *v20;
  v23 = *v22;
  memcpy(&v38[7], __src, 0x70uLL);
  OUTLINED_FUNCTION_266_3();
  *(v13 + 32) = v12;
  *(v13 + 40) = a4;
  *(v13 + 48) = v16;
  *(v13 + 56) = v17;
  *(v13 + 64) = v19;
  *(v13 + 72) = v21;
  *(v13 + 80) = v23;
  *(v13 + 88) = 0;
  memcpy((v13 + 89), v38, 0x77uLL);
  v24 = memcpy((v13 + 208), a12, 0x70uLL);
  *&result = OUTLINED_FUNCTION_182_1(v24, v25, v26, v27, v28, v29, v30, v31, v32, v35, a12, v33, v36, v37).n128_u64[0];
  return result;
}

__n128 GameDescription.init(name:shortName:ref:subscriptions:capabilities:compatiblePlatforms:categoryName:icon:prerenderedIcon:rawResponse:isIOSBinaryMacOSCompatible:releaseState:)(int a1, int a2, int a3, uint64_t a4, int a5, int a6, int a7, int a8, __int128 a9, void *__src, const void *a11, uint64_t a12, uint64_t a13, char a14, char *a15)
{
  OUTLINED_FUNCTION_75_2();
  v19 = *a15;
  memcpy(&v20[7], __src, 0x70uLL);
  OUTLINED_FUNCTION_266_3();
  v16 = OUTLINED_FUNCTION_183_2(a4);
  memcpy(v16, v20, 0x77uLL);
  memcpy((v15 + 208), a11, 0x70uLL);
  result = a9;
  *(v15 + 320) = a9;
  *(v15 + 336) = a12;
  *(v15 + 344) = a13;
  *(v15 + 352) = v19;
  *(v15 + 360) = 0;
  *(v15 + 368) = 0;
  return result;
}

__n128 GameDescription.init(appName:gameName:shortName:ref:subscriptions:capabilities:compatiblePlatforms:categoryName:icon:prerenderedIcon:rawResponse:isIOSBinaryMacOSCompatible:releaseState:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t *a11, __int128 a12, void *__src, const void *a14, uint64_t a15, uint64_t a16, char a17, char *a18)
{
  v23 = *a7;
  v22 = a7[1];
  v24 = *a8;
  v25 = *a10;
  v26 = *a11;
  v30 = *a18;
  memcpy(&v32[7], __src, 0x70uLL);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = v23;
  *(a9 + 56) = v22;
  *(a9 + 64) = v24;
  *(a9 + 72) = v25;
  *(a9 + 80) = v26;
  *(a9 + 88) = a17;
  memcpy((a9 + 89), v32, 0x77uLL);
  memcpy((a9 + 208), a14, 0x70uLL);
  result = a12;
  *(a9 + 320) = a12;
  *(a9 + 336) = a15;
  *(a9 + 344) = a16;
  *(a9 + 352) = v30;
  *(a9 + 360) = 0;
  *(a9 + 368) = 0;
  return result;
}

void *GameDescription.init(appName:gameName:shortName:ref:subscriptions:capabilities:compatiblePlatforms:categoryName:icon:prerenderedIcon:rawResponse:isIOSBinaryMacOSCompatible:releaseState:miniGamesDeepLink:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t *a11, uint64_t a12, uint64_t a13, const void *a14, const void *a15, uint64_t a16, uint64_t a17, char a18, char *a19, uint64_t a20, uint64_t a21)
{
  v22 = *a7;
  v23 = a7[1];
  v24 = *a8;
  v25 = *a10;
  v26 = *a11;
  v27 = *a19;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = v22;
  *(a9 + 56) = v23;
  *(a9 + 64) = v24;
  *(a9 + 72) = v25;
  *(a9 + 80) = v26;
  *(a9 + 320) = a12;
  *(a9 + 328) = a13;
  memcpy((a9 + 96), a14, 0x70uLL);
  result = memcpy((a9 + 208), a15, 0x70uLL);
  *(a9 + 336) = a16;
  *(a9 + 344) = a17;
  *(a9 + 88) = a18;
  *(a9 + 352) = v27;
  *(a9 + 360) = a20;
  *(a9 + 368) = a21;
  return result;
}

void static GameDescription.== infix(_:_:)()
{
  OUTLINED_FUNCTION_386();
  v1 = v0;
  v3 = v2;
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[3];
  v79 = v2[4];
  v84 = v2[2];
  v85 = v2[5];
  v82 = v2[7];
  v83 = v2[6];
  v77 = v2[8];
  v74 = v2[10];
  v75 = v2[9];
  HIDWORD(v71) = *(v2 + 88);
  memcpy(__dst, v2 + 12, sizeof(__dst));
  memcpy(v114, v3 + 26, sizeof(v114));
  v65 = v3[40];
  v69 = v3[41];
  v70 = v3[43];
  HIDWORD(v63) = *(v3 + 352);
  v59 = v3[45];
  v61 = v3[46];
  v62 = v3[42];
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[5];
  v78 = v1[4];
  v80 = v1[7];
  v81 = v1[6];
  v76 = v1[8];
  v72 = v1[10];
  v73 = v1[9];
  LODWORD(v71) = *(v1 + 88);
  memcpy(v115, v1 + 12, sizeof(v115));
  memcpy(v116, v1 + 26, sizeof(v116));
  v64 = v1[40];
  v66 = v1[41];
  v67 = v1[42];
  v68 = v1[43];
  LODWORD(v63) = *(v1 + 352);
  v12 = v4 == v7 && v5 == v8;
  v58 = v1[45];
  v60 = v1[46];
  if (!v12)
  {
    OUTLINED_FUNCTION_344_1();
    if ((sub_1D8581AB8() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  if (v6)
  {
    if (!v10)
    {
      goto LABEL_54;
    }

    v13 = v84 == v9 && v6 == v10;
    if (!v13 && (sub_1D8581AB8() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else if (v10)
  {
    goto LABEL_54;
  }

  if (v85)
  {
    if (!v11)
    {
      goto LABEL_54;
    }

    v14 = v79 == v78 && v85 == v11;
    if (!v14 && (sub_1D8581AB8() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else if (v11)
  {
    goto LABEL_54;
  }

  if ((sub_1D8510440(v83, v82, v81, v80) & 1) == 0 || !sub_1D8446B50(v77, v76))
  {
    goto LABEL_54;
  }

  if (v75 != v73 || v74 != v72)
  {
    goto LABEL_54;
  }

  if (HIDWORD(v71) == 2)
  {
    if (v71 != 2)
    {
      goto LABEL_54;
    }
  }

  else if (v71 == 2 || ((v71 ^ HIDWORD(v71)) & 1) != 0)
  {
    goto LABEL_54;
  }

  v16 = __dst[0];
  v17 = __dst[1];
  v18 = v115[0];
  v19 = v115[1];
  if (!__dst[1])
  {
    if (!v115[1])
    {
      *v107 = __dst[0];
      v108 = 0;
      v33 = OUTLINED_FUNCTION_258_3();
      OUTLINED_FUNCTION_299_1(v33);
      OUTLINED_FUNCTION_361();
      sub_1D847C204();
      OUTLINED_FUNCTION_361();
      sub_1D847C204();
      sub_1D8436E18(v107, &qword_1ECA39200, &qword_1D859A990);
      goto LABEL_45;
    }

    sub_1D847C204();
    sub_1D847C204();
LABEL_43:
    OUTLINED_FUNCTION_259_3();
    OUTLINED_FUNCTION_299_1(v109);
    v110 = v18;
    v111 = v19;
    v32 = v1 + 14;
LABEL_53:
    memcpy(v112, v32, sizeof(v112));
    sub_1D8436E18(v107, &qword_1ECA39210, &qword_1D859A9A0);
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_259_3();
  v20 = OUTLINED_FUNCTION_258_3();
  OUTLINED_FUNCTION_299_1(v20);
  OUTLINED_FUNCTION_298_2(__src);
  if (!v19)
  {
    OUTLINED_FUNCTION_298_2(v101);
    OUTLINED_FUNCTION_99_2();
    OUTLINED_FUNCTION_99_2();
    OUTLINED_FUNCTION_99_2();
    sub_1D847B824(v101);
    goto LABEL_43;
  }

  memcpy(v103, v1 + 14, sizeof(v103));
  *v101 = v18;
  v102 = v19;
  OUTLINED_FUNCTION_99_2();
  OUTLINED_FUNCTION_99_2();
  OUTLINED_FUNCTION_99_2();
  sub_1D847B878();
  v21 = sub_1D8581208();
  OUTLINED_FUNCTION_293_2(v21, v22, v23, v24, v25, v26, v27, v28, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100[0], v100[1], v100[2], v100[3], v100[4], v100[5], v100[6], v100[7], v100[8], v100[9], v100[10], v100[11]);
  sub_1D847B824(&v86);
  memcpy(v100, __src, sizeof(v100));
  sub_1D847B824(v100);
  *v101 = v16;
  v102 = v17;
  OUTLINED_FUNCTION_299_1(v103);
  OUTLINED_FUNCTION_397();
  sub_1D8436E18(v29, v30, v31);
  if ((&type metadata for Artwork & 1) == 0)
  {
    goto LABEL_54;
  }

LABEL_45:
  v34 = v114[0];
  v35 = v114[1];
  memcpy(v105, &v114[2], sizeof(v105));
  v37 = v116[0];
  v36 = v116[1];
  memcpy(v104, &v116[2], sizeof(v104));
  if (v114[1])
  {
    OUTLINED_FUNCTION_259_3();
    v38 = OUTLINED_FUNCTION_258_3();
    memcpy(v38, &v114[2], 0x60uLL);
    OUTLINED_FUNCTION_298_2(__src);
    if (v36)
    {
      memcpy(v103, &v116[2], sizeof(v103));
      *v101 = v37;
      v102 = v36;
      OUTLINED_FUNCTION_99_2();
      OUTLINED_FUNCTION_99_2();
      OUTLINED_FUNCTION_99_2();
      sub_1D847B878();
      v39 = sub_1D8581208();
      OUTLINED_FUNCTION_293_2(v39, v40, v41, v42, v43, v44, v45, v46, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100[0], v100[1], v100[2], v100[3], v100[4], v100[5], v100[6], v100[7], v100[8], v100[9], v100[10], v100[11]);
      sub_1D847B824(&v86);
      memcpy(v100, __src, sizeof(v100));
      sub_1D847B824(v100);
      *v101 = v34;
      v102 = v35;
      memcpy(v103, v105, sizeof(v103));
      OUTLINED_FUNCTION_397();
      sub_1D8436E18(v47, v48, v49);
      if ((&type metadata for Artwork & 1) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_56;
    }

    OUTLINED_FUNCTION_298_2(v101);
    OUTLINED_FUNCTION_361();
    sub_1D847C204();
    OUTLINED_FUNCTION_361();
    sub_1D847C204();
    OUTLINED_FUNCTION_361();
    sub_1D847C204();
    sub_1D847B824(v101);
    goto LABEL_52;
  }

  if (v116[1])
  {
    OUTLINED_FUNCTION_361();
    sub_1D847C204();
    OUTLINED_FUNCTION_361();
    sub_1D847C204();
LABEL_52:
    OUTLINED_FUNCTION_259_3();
    memcpy(v109, v105, sizeof(v109));
    v110 = v37;
    v111 = v36;
    v32 = v104;
    goto LABEL_53;
  }

  *v107 = v114[0];
  v108 = 0;
  v50 = OUTLINED_FUNCTION_258_3();
  memcpy(v50, &v114[2], 0x60uLL);
  OUTLINED_FUNCTION_361();
  sub_1D847C204();
  OUTLINED_FUNCTION_361();
  sub_1D847C204();
  sub_1D8436E18(v107, &qword_1ECA39200, &qword_1D859A990);
LABEL_56:
  if (v69)
  {
    v51 = v70;
    v53 = v67;
    v52 = v68;
    if (!v66)
    {
      goto LABEL_54;
    }

    v54 = v65 == v64 && v69 == v66;
    if (!v54 && (sub_1D8581AB8() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v51 = v70;
    v53 = v67;
    v52 = v68;
    if (v66)
    {
      goto LABEL_54;
    }
  }

  if (v51)
  {
    if (!v52)
    {
      goto LABEL_54;
    }

    if (v62 != v53 || v51 != v52)
    {
      OUTLINED_FUNCTION_397();
      if ((sub_1D8581AB8() & 1) == 0)
      {
        goto LABEL_54;
      }
    }
  }

  else if (v52)
  {
    goto LABEL_54;
  }

  if ((sub_1D844AB18(SBYTE4(v63), v63) & 1) != 0 && v61 && v60 && (v59 != v58 || v61 != v60))
  {
    sub_1D8581AB8();
  }

LABEL_54:
  OUTLINED_FUNCTION_388();
}

uint64_t sub_1D856FEF8()
{
  OUTLINED_FUNCTION_263_0();
  v3 = v1 == 0x656D614E707061 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_7(0x656D614E707061, 0xE700000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0x656D614E656D6167 && v0 == 0xE800000000000000;
    if (v5 || (OUTLINED_FUNCTION_7(0x656D614E656D6167, 0xE800000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v6 = v1 == 0x6D614E74726F6873 && v0 == 0xE900000000000065;
      if (v6 || (OUTLINED_FUNCTION_7(0x6D614E74726F6873, 0xE900000000000065) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v7 = v1 == 6710642 && v0 == 0xE300000000000000;
        if (v7 || (OUTLINED_FUNCTION_7(6710642, 0xE300000000000000) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v8 = OUTLINED_FUNCTION_111_2();
          v10 = v1 == v8 && v0 == v9;
          if (v10 || (OUTLINED_FUNCTION_7(v8, v9) & 1) != 0)
          {

            return 4;
          }

          else
          {
            v11 = OUTLINED_FUNCTION_253_3();
            v13 = v1 == v11 && v0 == v12;
            if (v13 || (OUTLINED_FUNCTION_7(v11, v12) & 1) != 0)
            {

              return 5;
            }

            else
            {
              OUTLINED_FUNCTION_184_0();
              v16 = v1 == (v15 | 2) && v14 == v0;
              if (v16 || (OUTLINED_FUNCTION_7(v15 + 2, v14) & 1) != 0)
              {

                return 6;
              }

              else
              {
                OUTLINED_FUNCTION_231_2();
                v19 = v1 == v18 + 9 && v17 == v0;
                if (v19 || (OUTLINED_FUNCTION_7(v18 + 9, v17) & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v20 = v1 == 1852793705 && v0 == 0xE400000000000000;
                  if (v20 || (OUTLINED_FUNCTION_7(1852793705, 0xE400000000000000) & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v21 = OUTLINED_FUNCTION_234_1();
                    v23 = v1 == v21 && v0 == v22;
                    if (v23 || (OUTLINED_FUNCTION_7(v21, v22) & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v24 = OUTLINED_FUNCTION_252_3();
                      v26 = v1 == v24 && v0 == v25;
                      if (v26 || (OUTLINED_FUNCTION_7(v24, v25) & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v27 = OUTLINED_FUNCTION_356_1();
                        v29 = v1 == v27 && v0 == v28;
                        if (v29 || (OUTLINED_FUNCTION_7(v27, v28) & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v30 = OUTLINED_FUNCTION_223();
                          v32 = v1 == v30 && v0 == v31;
                          if (v32 || (OUTLINED_FUNCTION_7(v30, v31) & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            OUTLINED_FUNCTION_231_2();
                            if (v1 == v34 && v33 == v0)
                            {

                              return 13;
                            }

                            else
                            {
                              OUTLINED_FUNCTION_7(0xD000000000000011, v33);
                              OUTLINED_FUNCTION_369();
                              if (v1)
                              {
                                return 13;
                              }

                              else
                              {
                                return 14;
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

uint64_t sub_1D85701F4(char a1)
{
  result = 0x656D614E707061;
  switch(a1)
  {
    case 1:
      result = 0x656D614E656D6167;
      break;
    case 2:
      result = 0x6D614E74726F6873;
      break;
    case 3:
      result = 6710642;
      break;
    case 4:
      result = OUTLINED_FUNCTION_111_2();
      break;
    case 5:
      result = OUTLINED_FUNCTION_253_3();
      break;
    case 6:
      OUTLINED_FUNCTION_231_2();
      result = v4 | 2;
      break;
    case 7:
      OUTLINED_FUNCTION_231_2();
      result = v3 + 9;
      break;
    case 8:
      result = 1852793705;
      break;
    case 9:
      result = OUTLINED_FUNCTION_234_1();
      break;
    case 10:
      result = OUTLINED_FUNCTION_252_3();
      break;
    case 11:
      result = OUTLINED_FUNCTION_356_1();
      break;
    case 12:
      result = OUTLINED_FUNCTION_223();
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D8570380@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D856FEF8();
  *a1 = result;
  return result;
}

uint64_t sub_1D85703A8()
{
  sub_1D85741F0();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D85703E0()
{
  sub_1D85741F0();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void GameDescription.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AC20, &qword_1D85A7998);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_160();
  v14 = v0[7];
  v13 = v0[10];
  memcpy(v19, v0 + 12, sizeof(v19));
  memcpy(v20, v0 + 26, sizeof(v20));
  OUTLINED_FUNCTION_260(v4, v4[3]);
  sub_1D85741F0();
  sub_1D8581BB8();
  LOBYTE(v18[0]) = 0;
  sub_1D8581A08();
  if (v1)
  {
    v11 = *(v7 + 8);
    v12 = v2;
    v10 = v5;
  }

  else
  {
    sub_1D8581998();
    sub_1D8581998();
    v18[1] = v14;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38B38, &qword_1D85981B0);
    OUTLINED_FUNCTION_1_1();
    sub_1D848211C(v9);
    OUTLINED_FUNCTION_142_4();
    OUTLINED_FUNCTION_269_2();
    sub_1D8581A58();

    sub_1D853E3A4();
    OUTLINED_FUNCTION_142_4();
    sub_1D8581A58();
    sub_1D8574244();
    OUTLINED_FUNCTION_142_4();
    sub_1D8581A58();
    v18[0] = v13;
    sub_1D847B5D8();
    OUTLINED_FUNCTION_142_4();
    sub_1D8581A58();
    LOBYTE(v18[0]) = 7;
    sub_1D85819A8();
    memcpy(v18, v19, sizeof(v18));
    v17[119] = 8;
    sub_1D847C204();
    sub_1D847B920();
    sub_1D85819E8();
    memcpy(v17, v18, 0x70uLL);
    sub_1D8436E18(v17, &qword_1ECA39200, &qword_1D859A990);
    memcpy(v16, v20, sizeof(v16));
    v15[119] = 9;
    sub_1D847C204();
    sub_1D85819E8();
    memcpy(v15, v16, 0x70uLL);
    sub_1D8436E18(v15, &qword_1ECA39200, &qword_1D859A990);
    sub_1D8581998();
    OUTLINED_FUNCTION_269_2();
    sub_1D8581998();
    sub_1D8466A84();
    OUTLINED_FUNCTION_269_2();
    sub_1D8581A58();
    OUTLINED_FUNCTION_269_2();
    sub_1D8581998();
    v11 = *(v7 + 8);
    v12 = v2;
    v10 = 0;
  }

  v11(v12, v10);
  OUTLINED_FUNCTION_284_0();
}

void GameDescription.hash(into:)()
{
  OUTLINED_FUNCTION_386();
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  v3 = *(v0 + 56);
  v10 = *(v0 + 64);
  v11 = *(v0 + 72);
  v12 = *(v0 + 80);
  v13 = *(v0 + 88);
  v4 = *(v0 + 216);
  v8 = *(v0 + 96);
  v9 = *(v0 + 208);
  v14 = *(v0 + 104);
  v15 = *(v0 + 328);
  v16 = *(v0 + 344);
  v17 = *(v0 + 352);
  v18 = *(v0 + 368);
  sub_1D85812B8();
  if (v1)
  {
    OUTLINED_FUNCTION_414();
    OUTLINED_FUNCTION_7_0();
    sub_1D85812B8();
    if (v2)
    {
LABEL_3:
      OUTLINED_FUNCTION_414();
      OUTLINED_FUNCTION_344_1();
      sub_1D85812B8();
      goto LABEL_6;
    }
  }

  else
  {
    OUTLINED_FUNCTION_402();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  OUTLINED_FUNCTION_402();
LABEL_6:
  v23[1] = v3;
  v5 = OUTLINED_FUNCTION_189();
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_6();
  sub_1D848211C(v7);
  OUTLINED_FUNCTION_344_1();
  sub_1D85811E8();
  v23[0] = v10;
  sub_1D8574298();
  sub_1D85811E8();
  MEMORY[0x1DA7191F0](v11);
  MEMORY[0x1DA7191F0](v12);
  if (v13 != 2)
  {
    OUTLINED_FUNCTION_414();
  }

  sub_1D8581B78();
  if (v14)
  {
    memcpy(&__src[2], (v0 + 112), 0x60uLL);
    __src[0] = v8;
    __src[1] = v14;
    OUTLINED_FUNCTION_414();
    v20 = v8;
    v21 = v14;
    memcpy(v22, (v0 + 112), sizeof(v22));
    sub_1D847BC2C(&v20, v23);
    sub_1D847BC88();
    sub_1D85811E8();
    memcpy(v23, __src, 0x70uLL);
    sub_1D847B824(v23);
    if (v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    OUTLINED_FUNCTION_402();
    if (v4)
    {
LABEL_10:
      memcpy(&__src[2], (v0 + 224), 0x60uLL);
      __src[0] = v9;
      __src[1] = v4;
      OUTLINED_FUNCTION_414();
      v20 = v9;
      v21 = v4;
      memcpy(v22, (v0 + 224), sizeof(v22));
      sub_1D847BC2C(&v20, v23);
      sub_1D847BC88();
      sub_1D85811E8();
      memcpy(v23, __src, 0x70uLL);
      sub_1D847B824(v23);
      if (v15)
      {
        goto LABEL_11;
      }

LABEL_15:
      OUTLINED_FUNCTION_402();
      if (v16)
      {
        goto LABEL_12;
      }

      goto LABEL_16;
    }
  }

  OUTLINED_FUNCTION_402();
  if (!v15)
  {
    goto LABEL_15;
  }

LABEL_11:
  OUTLINED_FUNCTION_414();
  sub_1D85812B8();
  if (v16)
  {
LABEL_12:
    OUTLINED_FUNCTION_414();
    sub_1D85812B8();
    goto LABEL_17;
  }

LABEL_16:
  OUTLINED_FUNCTION_402();
LABEL_17:
  LOBYTE(v23[0]) = v17;
  sub_1D846779C();
  sub_1D85811E8();
  if (v18)
  {
    OUTLINED_FUNCTION_414();
    sub_1D85812B8();
  }

  else
  {
    OUTLINED_FUNCTION_402();
  }

  OUTLINED_FUNCTION_388();
}

uint64_t GameDescription.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_379(a1);
  GameDescription.hash(into:)();
  return sub_1D8581B98();
}

void GameDescription.init(from:)()
{
  OUTLINED_FUNCTION_285();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AC38, &qword_1D85A79A0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_199();
  v6 = v2[3];
  v7 = v2[4];
  OUTLINED_FUNCTION_260(v2, v6);
  sub_1D85741F0();
  OUTLINED_FUNCTION_217_1();
  sub_1D8581BA8();
  if (v0)
  {
    OUTLINED_FUNCTION_154_2();
    __swift_destroy_boxed_opaque_existential_1(v2);
    if (v7)
    {

      if ((v6 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else if (!v6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    LOBYTE(v39) = 0;
    OUTLINED_FUNCTION_236_0();
    v31 = sub_1D8581908();
    v37 = v8;
    OUTLINED_FUNCTION_88_3(1);
    v30 = sub_1D8581898();
    v36 = v9;
    OUTLINED_FUNCTION_88_3(2);
    v29 = sub_1D8581898();
    v35 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38B38, &qword_1D85981B0);
    OUTLINED_FUNCTION_3();
    sub_1D848211C(v11);
    OUTLINED_FUNCTION_218_2();
    OUTLINED_FUNCTION_236_0();
    sub_1D8581958();
    v28 = v39;
    v34 = v40;
    sub_1D853ED40();
    OUTLINED_FUNCTION_218_2();
    OUTLINED_FUNCTION_272();
    OUTLINED_FUNCTION_236_0();
    sub_1D8581958();
    v27 = v39;
    sub_1D85742EC();
    OUTLINED_FUNCTION_218_2();
    OUTLINED_FUNCTION_272();
    OUTLINED_FUNCTION_236_0();
    sub_1D8581958();
    v26 = v39;
    sub_1D847B680();
    OUTLINED_FUNCTION_218_2();
    OUTLINED_FUNCTION_272();
    OUTLINED_FUNCTION_236_0();
    sub_1D8581958();
    v25 = v39;
    OUTLINED_FUNCTION_88_3(7);
    v24 = sub_1D85818A8();
    v63[119] = 8;
    sub_1D847BCDC();
    OUTLINED_FUNCTION_272();
    OUTLINED_FUNCTION_236_0();
    sub_1D85818E8();
    memcpy(&v67[7], v64, 0x70uLL);
    v62 = 9;
    OUTLINED_FUNCTION_272();
    OUTLINED_FUNCTION_236_0();
    sub_1D85818E8();
    memcpy(v66, v63, sizeof(v66));
    OUTLINED_FUNCTION_236_0();
    v12 = sub_1D8581898();
    v33 = v13;
    v14 = v12;
    LOBYTE(v39) = 11;
    OUTLINED_FUNCTION_236_0();
    v15 = sub_1D8581898();
    v32 = v16;
    v17 = v15;
    LOBYTE(v38[0]) = 12;
    sub_1D847387C();
    OUTLINED_FUNCTION_218_2();
    OUTLINED_FUNCTION_236_0();
    sub_1D8581958();
    v61 = 13;
    OUTLINED_FUNCTION_236_0();
    v18 = sub_1D8581898();
    v23 = v19;
    v20 = v18;
    v21 = OUTLINED_FUNCTION_95_5();
    v22(v21);
    v38[0] = v31;
    v38[1] = v37;
    v38[2] = v30;
    v38[3] = v36;
    v38[4] = v29;
    v38[5] = v35;
    v38[6] = v28;
    v38[7] = v34;
    v38[8] = v27;
    v38[9] = v26;
    v38[10] = v25;
    LOBYTE(v38[11]) = v24;
    memcpy(&v38[11] + 1, v67, 0x77uLL);
    memcpy(&v38[26], v66, 0x70uLL);
    v38[40] = v14;
    v38[41] = v33;
    v38[42] = v17;
    v38[43] = v32;
    LOBYTE(v38[44]) = 11;
    v38[45] = v20;
    v38[46] = v23;
    memcpy(v4, v38, 0x178uLL);
    sub_1D8574340(v38, &v39);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v39 = v31;
    v40 = v37;
    v41 = v30;
    v42 = v36;
    v43 = v29;
    v44 = v35;
    v45 = v28;
    v46 = v34;
    v47 = v27;
    v48 = v26;
    v49 = v25;
    v50 = v24;
    memcpy(v51, v67, sizeof(v51));
    memcpy(v52, v66, sizeof(v52));
    v53 = v14;
    v54 = v33;
    v55 = v17;
    v56 = v32;
    v57 = 11;
    *v58 = *v65;
    *&v58[3] = *&v65[3];
    v59 = v20;
    v60 = v23;
    sub_1D8574378(&v39);
  }

LABEL_9:
  OUTLINED_FUNCTION_480();
  OUTLINED_FUNCTION_284_0();
}

uint64_t sub_1D8571490(uint64_t a1)
{
  sub_1D8581B58();
  GameDescription.hash(into:)();
  return sub_1D8581B98();
}

uint64_t DistributedGameLibraryServiceProtocol<>.listGameHistories(by:sortBy:upTo:after:belongingTo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_148();
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v9 = OUTLINED_FUNCTION_63();
  return OUTLINED_FUNCTION_523(v9);
}

uint64_t DistributedGameLibraryServiceProtocol<>.listGames(by:sortBy:upTo:after:belongingTo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_148();
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v9 = OUTLINED_FUNCTION_63();
  return OUTLINED_FUNCTION_523(v9);
}

unint64_t sub_1D8571870()
{
  result = qword_1ECA56DA8;
  if (!qword_1ECA56DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA56DA8);
  }

  return result;
}

unint64_t sub_1D85718F4()
{
  result = qword_1ECA56DB0;
  if (!qword_1ECA56DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA56DB0);
  }

  return result;
}

unint64_t sub_1D8571948()
{
  result = qword_1ECA3AA50;
  if (!qword_1ECA3AA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3AA50);
  }

  return result;
}

unint64_t sub_1D857199C()
{
  result = qword_1ECA3AA58;
  if (!qword_1ECA3AA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3AA58);
  }

  return result;
}

unint64_t sub_1D85719F0()
{
  result = qword_1ECA3AA68;
  if (!qword_1ECA3AA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3AA68);
  }

  return result;
}

unint64_t sub_1D8571A44()
{
  result = qword_1ECA3AA70;
  if (!qword_1ECA3AA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3AA70);
  }

  return result;
}

unint64_t sub_1D8571A98()
{
  result = qword_1ECA56DB8;
  if (!qword_1ECA56DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA56DB8);
  }

  return result;
}

unint64_t sub_1D8571B54()
{
  result = qword_1ECA56DC0;
  if (!qword_1ECA56DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA56DC0);
  }

  return result;
}

unint64_t sub_1D8571BA8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_505(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA392E0, &qword_1D8591020);
    sub_1D848211C(v4);
    OUTLINED_FUNCTION_150();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D8571C38()
{
  result = qword_1ECA56DC8;
  if (!qword_1ECA56DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA56DC8);
  }

  return result;
}

unint64_t sub_1D8571D18(uint64_t a1)
{
  result = OUTLINED_FUNCTION_505(a1);
  if (!result)
  {
    v4(v3);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1D8571D5C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a3;
  v9 = *a2;
  v8[3] = *a2;
  v8[4] = *(v9 - 8);
  v8[5] = swift_task_alloc();
  sub_1D8580F88();
  v10 = swift_task_alloc();
  v8[6] = v10;
  *v10 = v8;
  v10[1] = sub_1D8571EEC;

  return DistributedGameLibraryServiceProtocol<>.describe(games:)();
}

uint64_t sub_1D8571EEC()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_199_2();
  *v0 = v1;
  *v3 = v2;

  v4 = OUTLINED_FUNCTION_188();
  v5(v4);

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_535();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

unint64_t sub_1D857205C()
{
  result = qword_1ECA3AAC0;
  if (!qword_1ECA3AAC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA3AAB8, &qword_1D85A7848);
    sub_1D85720E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3AAC0);
  }

  return result;
}

unint64_t sub_1D85720E0()
{
  result = qword_1ECA3AAC8;
  if (!qword_1ECA3AAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA3AAD0, &qword_1D85A7850);
    sub_1D8572164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3AAC8);
  }

  return result;
}

unint64_t sub_1D8572164()
{
  result = qword_1ECA3AAD8;
  if (!qword_1ECA3AAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3AAD8);
  }

  return result;
}

unint64_t sub_1D85721B8()
{
  result = qword_1ECA3AAE0;
  if (!qword_1ECA3AAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA3AAB8, &qword_1D85A7848);
    sub_1D857223C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3AAE0);
  }

  return result;
}

unint64_t sub_1D857223C()
{
  result = qword_1ECA3AAE8;
  if (!qword_1ECA3AAE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA3AAD0, &qword_1D85A7850);
    sub_1D85722C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3AAE8);
  }

  return result;
}

unint64_t sub_1D85722C0()
{
  result = qword_1ECA3AAF0;
  if (!qword_1ECA3AAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3AAF0);
  }

  return result;
}

uint64_t sub_1D8572314(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a3;
  v9 = *a2;
  v8[3] = *a2;
  v8[4] = *(v9 - 8);
  v8[5] = swift_task_alloc();
  sub_1D8580F88();
  v10 = swift_task_alloc();
  v8[6] = v10;
  *v10 = v8;
  v10[1] = sub_1D8576E3C;

  return DistributedGameLibraryServiceProtocol<>.describe2(games:)();
}

uint64_t sub_1D85724A4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a3;
  v9 = *a2;
  v8[3] = *a2;
  v8[4] = *(v9 - 8);
  v8[5] = swift_task_alloc();
  sub_1D8580F88();
  v10 = swift_task_alloc();
  v8[6] = v10;
  *v10 = v8;
  v10[1] = sub_1D8576E3C;

  return DistributedGameLibraryServiceProtocol<>.describe(with:)();
}

unint64_t sub_1D8572630()
{
  result = qword_1ECA3AB00;
  if (!qword_1ECA3AB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3AB00);
  }

  return result;
}

unint64_t sub_1D8572684()
{
  result = qword_1ECA3AB08;
  if (!qword_1ECA3AB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3AB08);
  }

  return result;
}

uint64_t sub_1D85726D8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  v8[2] = *a2;
  v8[3] = *(v9 - 8);
  v8[4] = swift_task_alloc();
  sub_1D8580F88();
  v10 = a2[1];
  v8[5] = v10;
  v8[6] = *(v10 - 8);
  v8[7] = swift_task_alloc();
  sub_1D8580F88();
  v11 = a2[2];
  v8[8] = v11;
  v8[9] = *(v11 - 8);
  v8[10] = swift_task_alloc();
  sub_1D8580F88();
  v12 = a2[3];
  v8[11] = v12;
  v8[12] = *(v12 - 8);
  v8[13] = swift_task_alloc();
  sub_1D8580F88();
  v13 = a2[4];
  v8[14] = v13;
  v8[15] = *(v13 - 8);
  v8[16] = swift_task_alloc();
  sub_1D8580F88();
  v14 = swift_task_alloc();
  v8[17] = v14;
  *v14 = v8;
  v14[1] = sub_1D8572C00;

  return DistributedGameLibraryServiceProtocol<>.listGameHistories(by:sortBy:upTo:after:belongingTo:)();
}

uint64_t sub_1D8572C00()
{
  OUTLINED_FUNCTION_153();
  v32 = *(v1 + 128);
  OUTLINED_FUNCTION_193();
  v31 = *(v2 + 120);
  OUTLINED_FUNCTION_193();
  v28 = *(v3 + 112);
  OUTLINED_FUNCTION_193();
  v30 = *(v4 + 104);
  OUTLINED_FUNCTION_193();
  v29 = *(v5 + 96);
  OUTLINED_FUNCTION_193();
  v25 = *(v6 + 88);
  OUTLINED_FUNCTION_193();
  v27 = *(v7 + 80);
  OUTLINED_FUNCTION_193();
  v26 = *(v8 + 72);
  OUTLINED_FUNCTION_193();
  v10 = *(v9 + 64);
  v24 = *(v11 + 56);
  OUTLINED_FUNCTION_193();
  v23 = *(v12 + 48);
  OUTLINED_FUNCTION_193();
  v14 = *(v13 + 40);
  v16 = v15[4];
  v17 = v15[3];
  v18 = v15[2];
  v19 = *v0;
  OUTLINED_FUNCTION_37();
  *v20 = v19;

  (*(v17 + 8))(v16, v18);
  (*(v23 + 8))(v24, v14);
  (*(v26 + 8))(v27, v10);
  (*(v29 + 8))(v30, v25);
  (*(v31 + 8))(v32, v28);

  v21 = *(v19 + 8);

  return v21();
}

uint64_t sub_1D8572F68(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  v8[2] = *a2;
  v8[3] = *(v9 - 8);
  v8[4] = swift_task_alloc();
  sub_1D8580F88();
  v10 = swift_task_alloc();
  v8[5] = v10;
  *v10 = v8;
  v10[1] = sub_1D85730FC;

  return DistributedGameLibraryServiceProtocol<>.listGameHistories(with:)();
}

uint64_t sub_1D85730FC()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_199_2();
  v1 = v0;
  OUTLINED_FUNCTION_37();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_188();
  v4(v3);

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_535();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

unint64_t sub_1D857324C()
{
  result = qword_1ECA3AB30;
  if (!qword_1ECA3AB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3AB30);
  }

  return result;
}

unint64_t sub_1D85732A0()
{
  result = qword_1ECA3AB38;
  if (!qword_1ECA3AB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3AB38);
  }

  return result;
}

uint64_t sub_1D85732F4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  v8[2] = *a2;
  v8[3] = *(v9 - 8);
  v8[4] = swift_task_alloc();
  sub_1D8580F88();
  v10 = a2[1];
  v8[5] = v10;
  v8[6] = *(v10 - 8);
  v8[7] = swift_task_alloc();
  sub_1D8580F88();
  v11 = a2[2];
  v8[8] = v11;
  v8[9] = *(v11 - 8);
  v8[10] = swift_task_alloc();
  sub_1D8580F88();
  v12 = a2[3];
  v8[11] = v12;
  v8[12] = *(v12 - 8);
  v8[13] = swift_task_alloc();
  sub_1D8580F88();
  v13 = a2[4];
  v8[14] = v13;
  v8[15] = *(v13 - 8);
  v8[16] = swift_task_alloc();
  sub_1D8580F88();
  v14 = swift_task_alloc();
  v8[17] = v14;
  *v14 = v8;
  v14[1] = sub_1D8576E2C;

  return DistributedGameLibraryServiceProtocol<>.listGames(by:sortBy:upTo:after:belongingTo:)();
}

uint64_t sub_1D857381C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  v8[2] = *a2;
  v8[3] = *(v9 - 8);
  v8[4] = swift_task_alloc();
  sub_1D8580F88();
  v10 = swift_task_alloc();
  v8[5] = v10;
  *v10 = v8;
  v10[1] = sub_1D8576DAC;

  return DistributedGameLibraryServiceProtocol<>.listGames(with:)();
}

uint64_t sub_1D85739B0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a3;
  v9 = *a2;
  v8[3] = *a2;
  v8[4] = *(v9 - 8);
  v8[5] = swift_task_alloc();
  sub_1D8580F88();
  v10 = swift_task_alloc();
  v8[6] = v10;
  *v10 = v8;
  v10[1] = sub_1D8571EEC;

  return DistributedGameLibraryServiceProtocol<>.getAvailableGameGenres(with:)();
}

unint64_t sub_1D8573B3C()
{
  result = qword_1ECA3AB48;
  if (!qword_1ECA3AB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3AB48);
  }

  return result;
}

unint64_t sub_1D8573B90()
{
  result = qword_1ECA3AB50;
  if (!qword_1ECA3AB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3AB50);
  }

  return result;
}

unint64_t sub_1D8573BE4()
{
  result = qword_1ECA3AB60;
  if (!qword_1ECA3AB60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA3AB58, &qword_1D85A7918);
    sub_1D8573C68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3AB60);
  }

  return result;
}

unint64_t sub_1D8573C68()
{
  result = qword_1ECA3AB68;
  if (!qword_1ECA3AB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3AB68);
  }

  return result;
}

unint64_t sub_1D8573CBC()
{
  result = qword_1ECA3AB70;
  if (!qword_1ECA3AB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA3AB58, &qword_1D85A7918);
    sub_1D8573D40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3AB70);
  }

  return result;
}

unint64_t sub_1D8573D40()
{
  result = qword_1ECA3AB78;
  if (!qword_1ECA3AB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3AB78);
  }

  return result;
}

unint64_t sub_1D8573D94()
{
  result = qword_1ECA56DD0;
  if (!qword_1ECA56DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA56DD0);
  }

  return result;
}

unint64_t sub_1D8573E08()
{
  result = qword_1ECA56DD8;
  if (!qword_1ECA56DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA56DD8);
  }

  return result;
}

unint64_t sub_1D8573E5C()
{
  result = qword_1ECA56DE0;
  if (!qword_1ECA56DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA56DE0);
  }

  return result;
}

unint64_t sub_1D8573EB0()
{
  result = qword_1ECA56DE8;
  if (!qword_1ECA56DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA56DE8);
  }

  return result;
}

unint64_t sub_1D8573F24()
{
  result = qword_1ECA56DF0;
  if (!qword_1ECA56DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA56DF0);
  }

  return result;
}

unint64_t sub_1D8573F78()
{
  result = qword_1ECA3ABC8;
  if (!qword_1ECA3ABC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3ABC8);
  }

  return result;
}

unint64_t sub_1D8573FCC()
{
  result = qword_1ECA3ABD8;
  if (!qword_1ECA3ABD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3ABD8);
  }

  return result;
}

uint64_t sub_1D8574040()
{
  OUTLINED_FUNCTION_263_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_4_0();
  v3 = OUTLINED_FUNCTION_194();
  v4(v3);
  return v0;
}

uint64_t sub_1D8574098()
{
  OUTLINED_FUNCTION_263_0();
  v1(0);
  OUTLINED_FUNCTION_4_0();
  v2 = OUTLINED_FUNCTION_194();
  v3(v2);
  return v0;
}

uint64_t sub_1D85740F0()
{
  v1 = OUTLINED_FUNCTION_85_1();
  v2(v1);
  OUTLINED_FUNCTION_4_0();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_1D8574144()
{
  result = qword_1ECA56DF8;
  if (!qword_1ECA56DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA56DF8);
  }

  return result;
}

uint64_t sub_1D8574198()
{
  OUTLINED_FUNCTION_263_0();
  v1(0);
  OUTLINED_FUNCTION_4_0();
  v2 = OUTLINED_FUNCTION_194();
  v3(v2);
  return v0;
}

unint64_t sub_1D85741F0()
{
  result = qword_1ECA56E00[0];
  if (!qword_1ECA56E00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA56E00);
  }

  return result;
}

unint64_t sub_1D8574244()
{
  result = qword_1ECA3AC28;
  if (!qword_1ECA3AC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3AC28);
  }

  return result;
}

unint64_t sub_1D8574298()
{
  result = qword_1ECA3AC30;
  if (!qword_1ECA3AC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3AC30);
  }

  return result;
}

unint64_t sub_1D85742EC()
{
  result = qword_1ECA3AC40;
  if (!qword_1ECA3AC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3AC40);
  }

  return result;
}

unint64_t sub_1D85743AC()
{
  result = qword_1ECA3AC48;
  if (!qword_1ECA3AC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3AC48);
  }

  return result;
}

unint64_t sub_1D8574404()
{
  result = qword_1ECA3AC50;
  if (!qword_1ECA3AC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3AC50);
  }

  return result;
}

unint64_t sub_1D857445C()
{
  result = qword_1ECA3AC58;
  if (!qword_1ECA3AC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3AC58);
  }

  return result;
}

unint64_t sub_1D85744F8()
{
  result = qword_1ECA3AC70;
  if (!qword_1ECA3AC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3AC70);
  }

  return result;
}

unint64_t sub_1D85745F8(uint64_t a1)
{
  OUTLINED_FUNCTION_0_18();
  result = sub_1D8571D18(v2);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D85746F0()
{
  result = qword_1ECA3AC90;
  if (!qword_1ECA3AC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3AC90);
  }

  return result;
}

unint64_t sub_1D85747D4()
{
  result = qword_1ECA3ACA8;
  if (!qword_1ECA3ACA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3ACA8);
  }

  return result;
}

unint64_t sub_1D857482C()
{
  result = qword_1ECA3ACB0;
  if (!qword_1ECA3ACB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3ACB0);
  }

  return result;
}

unint64_t sub_1D8574884()
{
  result = qword_1ECA3ACB8;
  if (!qword_1ECA3ACB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3ACB8);
  }

  return result;
}

unint64_t sub_1D85748DC()
{
  result = qword_1ECA3ACC0;
  if (!qword_1ECA3ACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3ACC0);
  }

  return result;
}

unint64_t sub_1D8574934()
{
  result = qword_1ECA3ACC8;
  if (!qword_1ECA3ACC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3ACC8);
  }

  return result;
}

unint64_t sub_1D857498C()
{
  result = qword_1ECA3ACD0;
  if (!qword_1ECA3ACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3ACD0);
  }

  return result;
}

unint64_t sub_1D85749E4()
{
  result = qword_1ECA3ACD8;
  if (!qword_1ECA3ACD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3ACD8);
  }

  return result;
}

unint64_t sub_1D8574A3C()
{
  result = qword_1ECA3ACE0;
  if (!qword_1ECA3ACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3ACE0);
  }

  return result;
}

uint64_t sub_1D8574AA0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      return OUTLINED_FUNCTION_226(*a1 + 2147483646);
    }

    v3 = *(a1 + 8);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    v4 = v3 - 1;
    if (v4 < 0)
    {
      return OUTLINED_FUNCTION_226(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_226(v4);
}

uint64_t sub_1D8574AF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GameSortDescriptor(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_226(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
    if (v4)
    {
      return OUTLINED_FUNCTION_226((*a1 | (v4 << 16)) - 65282);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return OUTLINED_FUNCTION_226((*a1 | (v4 << 16)) - 65282);
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return OUTLINED_FUNCTION_226((*a1 | (v4 << 16)) - 65282);
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_226(v8);
}

uint64_t storeEnumTagSinglePayload for GameSortDescriptor(uint64_t result, unsigned int a2, unsigned int a3)
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
        break;
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
          result = OUTLINED_FUNCTION_282(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D8574CCC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_226(-1);
  }

  if (a2 < 0 && *(a1 + 73))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 8);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_226(v2);
}

uint64_t sub_1D8574D08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

      return OUTLINED_FUNCTION_321(result, a2);
    }

    *(result + 73) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_321(result, a2);
    }
  }

  return result;
}

uint64_t sub_1D8574D64(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_226(-1);
  }

  if (a2 < 0 && *(a1 + 9))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_226(v2);
}

uint64_t sub_1D8574DA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D8574DF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_226(-1);
  }

  if (a2 < 0 && *(a1 + 40))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 8);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_226(v2);
}

uint64_t sub_1D8574E2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

      return OUTLINED_FUNCTION_321(result, a2);
    }

    *(result + 40) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_321(result, a2);
    }
  }

  return result;
}

uint64_t dispatch thunk of GameLibraryServiceProtocol.describe(games:)()
{
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_296(v0, v1, v2);
  OUTLINED_FUNCTION_130_1();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_12_0(v4);

  return v7(v6);
}

uint64_t dispatch thunk of GameLibraryServiceProtocol.describe2(games:)()
{
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_296(v0, v1, v2);
  OUTLINED_FUNCTION_130_1();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_12_0(v4);

  return v7(v6);
}

uint64_t dispatch thunk of GameLibraryServiceProtocol.describe(with:)()
{
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_296(v0, v1, v2);
  OUTLINED_FUNCTION_130_1();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_12_0(v4);

  return v7(v6);
}

uint64_t dispatch thunk of GameLibraryServiceProtocol.listGameHistories(by:sortBy:upTo:after:belongingTo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_225();
  OUTLINED_FUNCTION_185();
  v29 = OUTLINED_FUNCTION_129_3() + 32;
  OUTLINED_FUNCTION_130_1();
  v30 = v15 + *v15;
  swift_task_alloc();
  OUTLINED_FUNCTION_168();
  *(v14 + 16) = v16;
  *v16 = v17;
  OUTLINED_FUNCTION_108_7(v16);
  OUTLINED_FUNCTION_170();

  return v26(v18, v19, v20, v21, v22, v23, v24, v25, v29, v30, a11, a12, a13, a14);
}

uint64_t dispatch thunk of GameLibraryServiceProtocol.listGameHistories(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_28(a1, a2, a3, a4);
  OUTLINED_FUNCTION_54();
  swift_task_alloc();
  OUTLINED_FUNCTION_168();
  *(v4 + 16) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_167_1(v5);

  return v8(v7);
}

uint64_t dispatch thunk of GameLibraryServiceProtocol.listGames(by:sortBy:upTo:after:belongingTo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_225();
  OUTLINED_FUNCTION_185();
  v29 = OUTLINED_FUNCTION_129_3() + 48;
  OUTLINED_FUNCTION_130_1();
  v30 = v15 + *v15;
  swift_task_alloc();
  OUTLINED_FUNCTION_168();
  *(v14 + 16) = v16;
  *v16 = v17;
  OUTLINED_FUNCTION_108_7(v16);
  OUTLINED_FUNCTION_170();

  return v26(v18, v19, v20, v21, v22, v23, v24, v25, v29, v30, a11, a12, a13, a14);
}

uint64_t dispatch thunk of GameLibraryServiceProtocol.listGames(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_28(a1, a2, a3, a4);
  OUTLINED_FUNCTION_54();
  swift_task_alloc();
  OUTLINED_FUNCTION_168();
  *(v4 + 16) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_167_1(v5);

  return v8(v7);
}

uint64_t dispatch thunk of GameLibraryServiceProtocol.getAvailableGameGenres(with:)()
{
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_296(v0, v1, v2);
  OUTLINED_FUNCTION_130_1();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_12_0(v4);

  return v7(v6);
}

void sub_1D85756D4()
{
  sub_1D8575934(319, &qword_1ECA3ACE8, type metadata accessor for GameHistory.PlayHistory);
  if (v0 <= 0x3F)
  {
    type metadata accessor for GameHistory.InstallHistory(319);
    if (v1 <= 0x3F)
    {
      sub_1D8575784(319);
      if (v2 <= 0x3F)
      {
        OUTLINED_FUNCTION_413();
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D8575784(uint64_t a1)
{
  if (!qword_1ECA39468)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39470, &unk_1D8592720);
    v5 = type metadata accessor for Ref(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1ECA39468);
    }
  }
}

uint64_t sub_1D8575810()
{
  result = sub_1D8580EA8();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_413();
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D857589C()
{
  sub_1D8575934(319, &qword_1EE0E02E8, MEMORY[0x1E6969530]);
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_413();
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1D8575934(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D85816F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D85759A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_226(-1);
  }

  if (a2 < 0 && *(a1 + 376))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 8);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_226(v2);
}

uint64_t sub_1D85759DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 376) = 1;
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

      return OUTLINED_FUNCTION_321(result, a2);
    }

    *(result + 376) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_321(result, a2);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GameDescription.Capabilities(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return OUTLINED_FUNCTION_226(*a1);
  }

  else
  {
    return 0;
  }
}

_BYTE *storeEnumTagSinglePayload for GameDescription.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_282(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_280(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_281(result, v6);
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
          result = OUTLINED_FUNCTION_262(result, a2 + 13);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GameHistory.PlayHistory.CodingKeys(unsigned __int8 *a1, int a2)
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

  return OUTLINED_FUNCTION_49(a1);
}

_BYTE *storeEnumTagSinglePayload for GameHistory.PlayHistory.CodingKeys(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ListGamesRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_282(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_280(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_281(result, v6);
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
          result = OUTLINED_FUNCTION_262(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1D8575DC8(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_282(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_280(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_281(result, v6);
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
          result = OUTLINED_FUNCTION_262(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GameFilters.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_282(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_280(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_281(result, v6);
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
          result = OUTLINED_FUNCTION_262(result, a2 + 8);
        }

        break;
    }
  }

  return result;
}

_BYTE *_s12GameServices20ListGameGenreRequestV10CodingKeysOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_282(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_280(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_281(result, v6);
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
          result = OUTLINED_FUNCTION_262(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D8576030()
{
  result = qword_1ECA59140[0];
  if (!qword_1ECA59140[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA59140);
  }

  return result;
}

unint64_t sub_1D8576088()
{
  result = qword_1ECA59350[0];
  if (!qword_1ECA59350[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA59350);
  }

  return result;
}

unint64_t sub_1D85760E0()
{
  result = qword_1ECA59560[0];
  if (!qword_1ECA59560[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA59560);
  }

  return result;
}

unint64_t sub_1D8576138()
{
  result = qword_1ECA59770[0];
  if (!qword_1ECA59770[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA59770);
  }

  return result;
}

unint64_t sub_1D8576190()
{
  result = qword_1ECA59980[0];
  if (!qword_1ECA59980[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA59980);
  }

  return result;
}

unint64_t sub_1D85761E8()
{
  result = qword_1ECA59B90[0];
  if (!qword_1ECA59B90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA59B90);
  }

  return result;
}

unint64_t sub_1D8576240()
{
  result = qword_1ECA59DA0[0];
  if (!qword_1ECA59DA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA59DA0);
  }

  return result;
}

unint64_t sub_1D8576298()
{
  result = qword_1ECA5A1B0[0];
  if (!qword_1ECA5A1B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA5A1B0);
  }

  return result;
}

unint64_t sub_1D85762F0()
{
  result = qword_1ECA5A3C0[0];
  if (!qword_1ECA5A3C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA5A3C0);
  }

  return result;
}

unint64_t sub_1D8576348()
{
  result = qword_1ECA5A5D0[0];
  if (!qword_1ECA5A5D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA5A5D0);
  }

  return result;
}

unint64_t sub_1D85763A0()
{
  result = qword_1ECA5A7E0[0];
  if (!qword_1ECA5A7E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA5A7E0);
  }

  return result;
}

unint64_t sub_1D85763F8()
{
  result = qword_1ECA5A8F0;
  if (!qword_1ECA5A8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA5A8F0);
  }

  return result;
}

unint64_t sub_1D8576450()
{
  result = qword_1ECA5A8F8[0];
  if (!qword_1ECA5A8F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA5A8F8);
  }

  return result;
}

unint64_t sub_1D85764A8()
{
  result = qword_1ECA5A980;
  if (!qword_1ECA5A980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA5A980);
  }

  return result;
}

unint64_t sub_1D8576500()
{
  result = qword_1ECA5A988[0];
  if (!qword_1ECA5A988[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA5A988);
  }

  return result;
}

unint64_t sub_1D8576558()
{
  result = qword_1ECA5AA10;
  if (!qword_1ECA5AA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA5AA10);
  }

  return result;
}

unint64_t sub_1D85765B0()
{
  result = qword_1ECA5AA18[0];
  if (!qword_1ECA5AA18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA5AA18);
  }

  return result;
}

unint64_t sub_1D8576608()
{
  result = qword_1ECA5AAA0;
  if (!qword_1ECA5AAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA5AAA0);
  }

  return result;
}

unint64_t sub_1D8576660()
{
  result = qword_1ECA5AAA8[0];
  if (!qword_1ECA5AAA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA5AAA8);
  }

  return result;
}

unint64_t sub_1D85766B8()
{
  result = qword_1ECA5AB30;
  if (!qword_1ECA5AB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA5AB30);
  }

  return result;
}

unint64_t sub_1D8576710()
{
  result = qword_1ECA5AB38[0];
  if (!qword_1ECA5AB38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA5AB38);
  }

  return result;
}

unint64_t sub_1D8576768()
{
  result = qword_1ECA5ABC0;
  if (!qword_1ECA5ABC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA5ABC0);
  }

  return result;
}

unint64_t sub_1D85767C0()
{
  result = qword_1ECA5ABC8[0];
  if (!qword_1ECA5ABC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA5ABC8);
  }

  return result;
}

unint64_t sub_1D8576818()
{
  result = qword_1ECA5AC50;
  if (!qword_1ECA5AC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA5AC50);
  }

  return result;
}

unint64_t sub_1D8576870()
{
  result = qword_1ECA5AC58[0];
  if (!qword_1ECA5AC58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA5AC58);
  }

  return result;
}

unint64_t sub_1D85768C8()
{
  result = qword_1ECA5ACE0;
  if (!qword_1ECA5ACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA5ACE0);
  }

  return result;
}

unint64_t sub_1D8576920()
{
  result = qword_1ECA5ACE8[0];
  if (!qword_1ECA5ACE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA5ACE8);
  }

  return result;
}

unint64_t sub_1D8576978()
{
  result = qword_1ECA5AD70;
  if (!qword_1ECA5AD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA5AD70);
  }

  return result;
}

unint64_t sub_1D85769D0()
{
  result = qword_1ECA5AD78;
  if (!qword_1ECA5AD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA5AD78);
  }

  return result;
}

unint64_t sub_1D8576A28()
{
  result = qword_1ECA5AE00;
  if (!qword_1ECA5AE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA5AE00);
  }

  return result;
}

unint64_t sub_1D8576A80()
{
  result = qword_1ECA5AE08[0];
  if (!qword_1ECA5AE08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA5AE08);
  }

  return result;
}

unint64_t sub_1D8576AD8()
{
  result = qword_1ECA5AE90;
  if (!qword_1ECA5AE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA5AE90);
  }

  return result;
}

unint64_t sub_1D8576B30()
{
  result = qword_1ECA5AE98[0];
  if (!qword_1ECA5AE98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA5AE98);
  }

  return result;
}

unint64_t sub_1D8576B88()
{
  result = qword_1ECA5AF20;
  if (!qword_1ECA5AF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA5AF20);
  }

  return result;
}

unint64_t sub_1D8576BE0()
{
  result = qword_1ECA5AF28[0];
  if (!qword_1ECA5AF28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA5AF28);
  }

  return result;
}

unint64_t sub_1D8576C38()
{
  result = qword_1ECA5AFB0;
  if (!qword_1ECA5AFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA5AFB0);
  }

  return result;
}

unint64_t sub_1D8576C90()
{
  result = qword_1ECA5AFB8[0];
  if (!qword_1ECA5AFB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA5AFB8);
  }

  return result;
}

unint64_t sub_1D8576CE4()
{
  result = qword_1ECA3ACF0;
  if (!qword_1ECA3ACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3ACF0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_25_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1D8581038();
}

uint64_t OUTLINED_FUNCTION_46_3@<X0>(char a1@<W8>)
{
  *(v1 - 96) = a1;

  return sub_1D8581918();
}

uint64_t OUTLINED_FUNCTION_59_1()
{

  return GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v0, v1);
}

uint64_t OUTLINED_FUNCTION_81_6()
{
  v1 = *(v0 + 376);
  *(v0 + 40) = *(v0 + 360);
  v3 = *(v0 + 392);
  v2 = *(v0 + 400);
  v4 = *(v0 + 150);
  v5 = *(v0 + 200);
  *(v0 + 152) = *(v0 + 208);
  *(v0 + 145) = v4;
  *(v0 + 56) = v1;
  *(v0 + 72) = v3;
  *(v0 + 80) = v2;
  return *(v5 + 16);
}

uint64_t OUTLINED_FUNCTION_99_2()
{

  return sub_1D847C204();
}

uint64_t OUTLINED_FUNCTION_100_4(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  return v4;
}

uint64_t OUTLINED_FUNCTION_108_7(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(v4 + 16) = v2;
  return v3;
}

uint64_t OUTLINED_FUNCTION_109_4()
{

  return GameServicesActorSystem.JSONInvocationEncoder.recordGenericSubstitution<A>(_:)(v0);
}

uint64_t OUTLINED_FUNCTION_117_3(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v2[20];
  result = v2[13];
  *(v3 + 48) = v2[19];
  *(v3 + 56) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_120_2()
{
}

uint64_t OUTLINED_FUNCTION_121_4()
{
}

__n128 OUTLINED_FUNCTION_147_1(uint64_t a1)
{
  *(v4 + 352) = a1;
  result = *v5;
  *(v4 + 150) = *v3;
  v8 = *v1;
  *v2 = result;
  *(v2 + 16) = v8;
  v9 = v6[1];
  *(v4 + 392) = *v6;
  *(v4 + 400) = v9;
  return result;
}

uint64_t OUTLINED_FUNCTION_159_1(uint64_t a1)
{

  return sub_1D8581A18();
}

uint64_t OUTLINED_FUNCTION_173_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1D8581038();
}

uint64_t OUTLINED_FUNCTION_176_3()
{
}

void OUTLINED_FUNCTION_177_3()
{
  v1 = *(v0 + 149);
  *(v0 + 136) = *(v0 + 176);
  *(v0 + 144) = v1 & 1;
}

__n128 OUTLINED_FUNCTION_182_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a11, uint64_t a9, uint64_t a10, __n128 a12, unint64_t a13, unint64_t a14)
{
  result = a12;
  v14[20] = a12;
  v14[21].n128_u64[0] = a13;
  v14[21].n128_u64[1] = a14;
  v14[22].n128_u8[0] = 0;
  v14[22].n128_u64[1] = 0;
  v14[23].n128_u64[0] = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_183_2@<X0>(uint64_t a1@<X8>)
{
  *(v3 + 32) = v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v8;
  *(v3 + 56) = v5;
  *(v3 + 64) = v6;
  *(v3 + 72) = v4;
  *(v3 + 80) = v1;
  *(v3 + 88) = v7;
  return v3 + 89;
}

void OUTLINED_FUNCTION_189_2()
{
  v1 = *(v0 + 99);
  *(v0 + 88) = *(v0 + 128);
  *(v0 + 96) = v1 & 1;
}

uint64_t OUTLINED_FUNCTION_210_2()
{
}

void *OUTLINED_FUNCTION_238_3()
{
  v2 = v0[48];
  v0[45] = v0[52];

  return memcpy(v0 + 12, v2, 0x49uLL);
}

uint64_t OUTLINED_FUNCTION_239_2()
{
  *(v0 - 128) = *(v0 - 112);

  return sub_1D85718C4(v0 - 128);
}

uint64_t OUTLINED_FUNCTION_242_0(uint64_t a1)
{
}

void *OUTLINED_FUNCTION_246_3()
{
  v2 = *(v0 + 208);

  return memcpy((v0 + 16), v2, 0x49uLL);
}

uint64_t OUTLINED_FUNCTION_254_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return sub_1D85604D0(va, &a9);
}

void OUTLINED_FUNCTION_266_3()
{
  *v2 = v1;
  v2[1] = v0;
  v2[2] = 0;
  v2[3] = 0;
}

void OUTLINED_FUNCTION_275_2()
{
  *(v4 - 92) = v3;
  *(v4 - 91) = v1;
  *(v4 - 90) = v2;
  *(v4 - 89) = v0;
}

void *OUTLINED_FUNCTION_279_1()
{

  return memcpy((v0 + 176), (v0 + 16), 0x49uLL);
}

void *OUTLINED_FUNCTION_282_1(uint64_t a1)
{
  *(v2 + 464) = a1;

  return memcpy((v2 + 16), v1, 0x49uLL);
}

uint64_t OUTLINED_FUNCTION_283_2()
{
}

uint64_t OUTLINED_FUNCTION_286_2()
{
}

uint64_t OUTLINED_FUNCTION_288_2@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, _BYTE *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t OUTLINED_FUNCTION_289_2(uint64_t a1)
{

  return GameServicesActorSystem.JSONInvocationEncoder.recordGenericSubstitution<A>(_:)(a1);
}

uint64_t OUTLINED_FUNCTION_290_1()
{
}

uint64_t OUTLINED_FUNCTION_292_0()
{
}

void *OUTLINED_FUNCTION_293_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t __dst, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return memcpy(&__dst, &__src, 0x70uLL);
}

uint64_t OUTLINED_FUNCTION_294_1()
{
}

uint64_t OUTLINED_FUNCTION_295_2()
{
}

uint64_t OUTLINED_FUNCTION_296_1()
{
}

uint64_t OUTLINED_FUNCTION_297_1()
{
}

void *OUTLINED_FUNCTION_298_2(void *a1)
{

  return memcpy(a1, &STACK[0x368], 0x70uLL);
}

void *OUTLINED_FUNCTION_299_1(void *a1)
{

  return memcpy(a1, (v1 + 112), 0x60uLL);
}

uint64_t OUTLINED_FUNCTION_300_3(uint64_t a1, uint64_t a2)
{

  return sub_1D8581028();
}

double Duration.timeInterval.getter(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D8581BC8();
  sub_1D8581BC8();
  return v3 / 1.0e18 + v2;
}

uint64_t Duration.milliseconds.getter(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D8581BC8();
  result = sub_1D8581BC8();
  v5 = (v4 / 1.0e18 + v2) * 1000.0;
  if (COERCE__INT64(fabs(v5)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v5 < 9.22337204e18)
  {
    return v5;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t static Duration.minutes(_:)(uint64_t result)
{
  if ((result * 60) >> 64 == (60 * result) >> 63)
  {
    result *= 0x40AAD21B3B700000;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static PersonHandle.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v2 = *(a2 + 8);
  if (*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      goto LABEL_6;
    }
  }

  else if ((*(a2 + 16) & 1) == 0)
  {
LABEL_6:
    OUTLINED_FUNCTION_183();
    sub_1D84C55F4();
    OUTLINED_FUNCTION_151();
    sub_1D84C55F4();
    OUTLINED_FUNCTION_151();
    sub_1D84C55F4();
    OUTLINED_FUNCTION_183();
    sub_1D84C55F4();
    v5 = OUTLINED_FUNCTION_151();
    v4 = sub_1D8577C7C(v5, v6, v3, v2, v7, v8, v9);
    OUTLINED_FUNCTION_151();
    sub_1D84C5620();
    OUTLINED_FUNCTION_183();
    sub_1D84C5620();
    OUTLINED_FUNCTION_183();
    sub_1D84C5620();
    OUTLINED_FUNCTION_151();
    sub_1D84C5620();
    return v4 & 1;
  }

  OUTLINED_FUNCTION_151();
  sub_1D84C55F4();
  OUTLINED_FUNCTION_183();
  sub_1D84C55F4();
  OUTLINED_FUNCTION_151();
  sub_1D84C5620();
  OUTLINED_FUNCTION_183();
  sub_1D84C5620();
  v4 = 0;
  return v4 & 1;
}

uint64_t sub_1D8577C14(char a1, char a2)
{
  if (a1)
  {
    v2 = 12918;
  }

  else
  {
    v2 = 12662;
  }

  if (a2)
  {
    v3 = 12918;
  }

  else
  {
    v3 = 12662;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D8581AB8();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1D8577C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, unint64_t *a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_1D844A16C(a7, a5, a6, &protocol conformance descriptor for Ref<A>);
  OUTLINED_FUNCTION_291();
  sub_1D85813D8();
  OUTLINED_FUNCTION_291();
  sub_1D85813D8();
  if (v15 == v13 && v16 == v14)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D8581AB8();
  }

  return v11 & 1;
}

uint64_t sub_1D8577D58(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_105_3();
  v6 = v6 && v5 == 0xE700000000000000;
  if (v6 || (OUTLINED_FUNCTION_7(v4, 0xE700000000000000) & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_7(0x726579616C70, 0xE600000000000000);
    OUTLINED_FUNCTION_369();
    if (a1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1D8577DEC(char a1)
{
  if (a1)
  {
    return 0x726579616C70;
  }

  else
  {
    return 0x746361746E6F63;
  }
}

uint64_t sub_1D8577E28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8577D58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8577E50()
{
  sub_1D8578344();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D8577E88()
{
  sub_1D8578344();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D8577EC0()
{
  OUTLINED_FUNCTION_60_3();
  v2 = v2 && v1 == 0xE300000000000000;
  if (v2)
  {

    v3 = 0;
  }

  else
  {
    sub_1D8581AB8();
    OUTLINED_FUNCTION_369();
    v3 = v0 ^ 1;
  }

  return v3 & 1;
}

uint64_t sub_1D8577F24()
{
  sub_1D85783EC();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D8577F5C()
{
  sub_1D85783EC();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D8577F94@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D8577EC0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D8577FC0()
{
  sub_1D8578398();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D8577FF8()
{
  sub_1D8578398();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void PersonHandle.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3ACF8, &qword_1D85AA080);
  OUTLINED_FUNCTION_1();
  v37 = v4;
  v38 = v3;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v34 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AD00, &qword_1D85AA088);
  OUTLINED_FUNCTION_1();
  v35 = v9;
  v36 = v8;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AD08, &qword_1D85AA090);
  OUTLINED_FUNCTION_1();
  v14 = v13;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  v18 = v0[1];
  v39 = *v0;
  v40 = v18;
  v19 = *(v0 + 16);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1D8578344();
  sub_1D8581BB8();
  if (v19)
  {
    OUTLINED_FUNCTION_290();
    sub_1D8578398();
    OUTLINED_FUNCTION_519_0(&type metadata for PersonHandle.PlayerCodingKeys, &v42);
    v42 = v39;
    v43 = v40;
    v20 = OUTLINED_FUNCTION_194();
    __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_231();
    sub_1D844A16C(v22, v23, v24, v25);
    v26 = v38;
    sub_1D8581A58();
    (*(v37 + 8))(v7, v26);
  }

  else
  {
    LOBYTE(v42) = 0;
    sub_1D85783EC();
    OUTLINED_FUNCTION_519_0(&type metadata for PersonHandle.ContactCodingKeys, &v42);
    v42 = v39;
    v43 = v40;
    v27 = OUTLINED_FUNCTION_194();
    __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_231();
    sub_1D844A16C(v29, v30, v31, v32);
    v33 = v36;
    sub_1D8581A58();
    (*(v35 + 8))(v12, v33);
  }

  (*(v14 + 8))(v17, v19);
  OUTLINED_FUNCTION_284_0();
}

unint64_t sub_1D8578344()
{
  result = qword_1ECA5B040;
  if (!qword_1ECA5B040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA5B040);
  }

  return result;
}

unint64_t sub_1D8578398()
{
  result = qword_1ECA5B048;
  if (!qword_1ECA5B048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA5B048);
  }

  return result;
}

unint64_t sub_1D85783EC()
{
  result = qword_1ECA5B050;
  if (!qword_1ECA5B050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA5B050);
  }

  return result;
}

uint64_t PersonHandle.hash(into:)()
{
  if (*(v0 + 16))
  {
    MEMORY[0x1DA7191F0](1);
    v1 = &qword_1ECA389B8;
    v2 = &qword_1D8590B30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389B8, &qword_1D8590B30);
  }

  else
  {
    MEMORY[0x1DA7191F0](0);
    v1 = &qword_1ECA3A368;
    v2 = &qword_1D85A22C0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A368, &qword_1D85A22C0);
  }

  OUTLINED_FUNCTION_5();
  sub_1D844A16C(v3, v1, v2, v4);
  OUTLINED_FUNCTION_161();
  return sub_1D85811E8();
}

uint64_t PersonHandle.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_1D8581B58();
  if (v1)
  {
    MEMORY[0x1DA7191F0](1);
  }

  else
  {
    MEMORY[0x1DA7191F0](0);
  }

  v2 = OUTLINED_FUNCTION_194();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_231();
  sub_1D844A16C(v4, v5, v6, v7);
  sub_1D85811E8();
  return sub_1D8581B98();
}

void PersonHandle.init(from:)()
{
  OUTLINED_FUNCTION_285();
  v2 = v1;
  v62 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AD10, &qword_1D85AA098);
  OUTLINED_FUNCTION_1();
  v59 = v5;
  v60 = v4;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AD18, &qword_1D85AA0A0);
  OUTLINED_FUNCTION_1();
  v58 = v8;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v53[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AD20, &unk_1D85AA0A8);
  OUTLINED_FUNCTION_1();
  v61 = v13;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v53[-v15];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1D8578344();
  sub_1D8581BA8();
  if (v0)
  {
    goto LABEL_8;
  }

  v56 = v7;
  v57 = v11;
  v65 = v2;
  v17 = v62;
  v18 = sub_1D8581968();
  v22 = sub_1D84BACA0(v18, 0);
  if (v20 == v21 >> 1)
  {
LABEL_7:
    v28 = sub_1D85817C8();
    swift_allocError();
    v30 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38AD0, &qword_1D8590AE0);
    *v30 = &type metadata for PersonHandle;
    sub_1D8581888();
    sub_1D85817B8();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
    swift_willThrow();
    swift_unknownObjectRelease();
    v31 = OUTLINED_FUNCTION_166_1();
    v32(v31);
    v2 = v65;
LABEL_8:
    v33 = v2;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v33);
    OUTLINED_FUNCTION_284_0();
    return;
  }

  v55 = 0;
  if (v20 < (v21 >> 1))
  {
    v23 = *(v19 + v20);
    sub_1D84BAE48(v20 + 1, v21 >> 1, v22, v19, v20, v21);
    v25 = v24;
    v27 = v26;
    swift_unknownObjectRelease();
    if (v25 == v27 >> 1)
    {
      v54 = v23;
      if (v23)
      {
        OUTLINED_FUNCTION_290();
        sub_1D8578398();
        OUTLINED_FUNCTION_140_0(&type metadata for PersonHandle.PlayerCodingKeys, &v63);
        v34 = OUTLINED_FUNCTION_189();
        __swift_instantiateConcreteTypeFromMangledNameV2(v34, v35);
        OUTLINED_FUNCTION_3();
        sub_1D844A16C(v36, &qword_1ECA389B8, &qword_1D8590B30, v37);
        v38 = v60;
        sub_1D8581958();
        v39 = v61;
        swift_unknownObjectRelease();
        v44 = OUTLINED_FUNCTION_29_4();
        v45(v44, v38);
        (*(v39 + 8))(v16, v12);
        v46 = v63;
        v47 = v64;
        v48 = v17;
      }

      else
      {
        v48 = v17;
        LOBYTE(v63) = 0;
        sub_1D85783EC();
        OUTLINED_FUNCTION_140_0(&type metadata for PersonHandle.ContactCodingKeys, &v63);
        v40 = OUTLINED_FUNCTION_151();
        __swift_instantiateConcreteTypeFromMangledNameV2(v40, v41);
        OUTLINED_FUNCTION_3();
        sub_1D844A16C(v42, &qword_1ECA3A368, &qword_1D85A22C0, v43);
        sub_1D8581958();
        swift_unknownObjectRelease();
        v49 = OUTLINED_FUNCTION_131_1();
        v50(v49);
        v51 = OUTLINED_FUNCTION_166_1();
        v52(v51);
        v46 = v63;
        v47 = v64;
      }

      *v48 = v46;
      *(v48 + 8) = v47;
      *(v48 + 16) = v54;
      v33 = v65;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1D8578B98(uint64_t a1)
{
  sub_1D8581B58();
  PersonHandle.hash(into:)();
  return sub_1D8581B98();
}

uint64_t FriendRequest.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FriendRequest(0) + 28);

  return sub_1D8550FA0(v3, a1);
}

uint64_t FriendRequest.init(senderHandles:recipient:addressedToContact:date:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a2;
  v8 = a2[1];
  *a5 = a1;
  *(a5 + 8) = v7;
  *(a5 + 16) = v8;
  *(a5 + 24) = a3;
  v9 = a5 + *(type metadata accessor for FriendRequest(0) + 28);

  return sub_1D847C25C(a4, v9);
}

BOOL static FriendRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D8580EA8();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_1();
  v11 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39300, &unk_1D8591030);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_110();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39308, &qword_1D85A7960);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - v15;
  if ((sub_1D8578F84(*a1, *a2) & 1) == 0 || (sub_1D8577C7C(*(a1 + 8), *(a1 + 16), *(a2 + 8), *(a2 + 16), &qword_1ECA389B8, &qword_1D8590B30, &qword_1ECA38A38) & 1) == 0)
  {
    return 0;
  }

  v17 = *(a1 + 24);
  v18 = *(a2 + 24);
  if (v17 == 2)
  {
    if (v18 != 2)
    {
      return 0;
    }

LABEL_8:
    v20 = *(type metadata accessor for FriendRequest(0) + 28);
    v21 = *(v13 + 48);
    sub_1D8550FA0(a1 + v20, v16);
    sub_1D8550FA0(a2 + v20, &v16[v21]);
    OUTLINED_FUNCTION_55_0(v16);
    if (v22)
    {
      OUTLINED_FUNCTION_55_0(&v16[v21]);
      if (v22)
      {
        sub_1D8436E18(v16, &qword_1ECA39300, &unk_1D8591030);
        return 1;
      }
    }

    else
    {
      sub_1D8550FA0(v16, v2);
      OUTLINED_FUNCTION_55_0(&v16[v21]);
      if (!v22)
      {
        (*(v7 + 32))(v11, &v16[v21], v5);
        OUTLINED_FUNCTION_5_8();
        sub_1D857B520(v23, v24, MEMORY[0x1E6969550]);
        OUTLINED_FUNCTION_231();
        v25 = sub_1D8581208();
        v26 = *(v7 + 8);
        v27 = OUTLINED_FUNCTION_194();
        v26(v27);
        (v26)(v2, v5);
        sub_1D8436E18(v16, &qword_1ECA39300, &unk_1D8591030);
        return (v25 & 1) != 0;
      }

      (*(v7 + 8))(v2, v5);
    }

    sub_1D8436E18(v16, &qword_1ECA39308, &qword_1D85A7960);
    return 0;
  }

  result = 0;
  if (v18 != 2 && ((v18 ^ v17) & 1) == 0)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_1D8578F84(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    do
    {
      if (*v4)
      {
        if ((*v3 & 1) == 0)
        {
          goto LABEL_22;
        }

        sub_1D84C55F4();
        sub_1D84C55F4();
        sub_1D84C55F4();
        sub_1D84C55F4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389B8, &qword_1D8590B30);
        sub_1D844A16C(&qword_1ECA38A38, &qword_1ECA389B8, &qword_1D8590B30, &protocol conformance descriptor for Ref<A>);
        sub_1D85813D8();
        sub_1D85813D8();
        if (v11 != v9 || v12 != v10)
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (*v3)
        {
LABEL_22:
          sub_1D84C55F4();
          sub_1D84C55F4();
          sub_1D84C5620();
          sub_1D84C5620();
          return 0;
        }

        sub_1D84C55F4();
        sub_1D84C55F4();
        sub_1D84C55F4();
        sub_1D84C55F4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A368, &qword_1D85A22C0);
        sub_1D844A16C(&qword_1ECA3ADD8, &qword_1ECA3A368, &qword_1D85A22C0, &protocol conformance descriptor for Ref<A>);
        sub_1D85813D8();
        sub_1D85813D8();
        if (v11 != v9 || v12 != v10)
        {
LABEL_17:
          v7 = sub_1D8581AB8();
          sub_1D84C5620();
          sub_1D84C5620();

          sub_1D84C5620();
          sub_1D84C5620();
          if ((v7 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_20;
        }
      }

      sub_1D84C5620();
      sub_1D84C5620();

      sub_1D84C5620();
      sub_1D84C5620();
LABEL_20:
      v3 += 24;
      v4 += 24;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D857937C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_48_1();
  v6 = a1 == v4 && a2 == v5;
  if (v6 || (OUTLINED_FUNCTION_7(v4, v5) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v8 = a1 == 0x6E65697069636572 && a2 == 0xE900000000000074;
    if (v8 || (OUTLINED_FUNCTION_7(0x6E65697069636572, 0xE900000000000074) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v9 = a1 == 0xD000000000000012 && 0x80000001D85894F0 == a2;
      if (v9 || (OUTLINED_FUNCTION_7(0xD000000000000012, 0x80000001D85894F0) & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 1702125924 && a2 == 0xE400000000000000)
      {

        return 3;
      }

      else
      {
        OUTLINED_FUNCTION_7(1702125924, 0xE400000000000000);
        OUTLINED_FUNCTION_369();
        if (a1)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1D8579498(uint64_t a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_48_1();
  switch(v3)
  {
    case 1:
      result = 0x6E65697069636572;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 1702125924;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D8579524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D857937C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D857954C()
{
  sub_1D857B4CC();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D8579584()
{
  sub_1D857B4CC();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t FriendRequest.encode(to:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AD28, &unk_1D85AA0B8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_110();
  v2 = OUTLINED_FUNCTION_167();
  __swift_project_boxed_opaque_existential_1(v2, v3);
  sub_1D857B4CC();
  OUTLINED_FUNCTION_64_2(&type metadata for FriendRequest.CodingKeys);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A628, &unk_1D85A38A0);
  sub_1D857B568(&qword_1ECA3A640, sub_1D853B31C);
  OUTLINED_FUNCTION_58_3();
  OUTLINED_FUNCTION_186_4();
  sub_1D8581A58();
  if (!v0)
  {

    v4 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
    OUTLINED_FUNCTION_4();
    sub_1D844A16C(v6, &qword_1ECA389B8, &qword_1D8590B30, v7);
    OUTLINED_FUNCTION_58_3();
    OUTLINED_FUNCTION_186_4();
    sub_1D8581A58();

    OUTLINED_FUNCTION_186_4();
    sub_1D85819A8();
    type metadata accessor for FriendRequest(0);
    sub_1D8580EA8();
    OUTLINED_FUNCTION_5_8();
    sub_1D857B520(v8, v9, MEMORY[0x1E6969538]);
    OUTLINED_FUNCTION_186_4();
    sub_1D85819E8();
  }

  v10 = OUTLINED_FUNCTION_291();
  return v11(v10);
}

uint64_t FriendRequest.hash(into:)(uint64_t a1)
{
  v3 = sub_1D8580EA8();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_1();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39300, &unk_1D8591030);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v24 - v11;
  sub_1D857B36C(a1, *v1);
  v13 = *(v1 + 16);
  v24[0] = *(v1 + 8);
  v24[1] = v13;
  v14 = OUTLINED_FUNCTION_167();
  __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  OUTLINED_FUNCTION_5();
  sub_1D844A16C(v16, &qword_1ECA389B8, &qword_1D8590B30, v17);
  sub_1D85811E8();
  if (*(v1 + 24) != 2)
  {
    OUTLINED_FUNCTION_414();
  }

  sub_1D8581B78();
  v18 = type metadata accessor for FriendRequest(0);
  sub_1D8550FA0(v1 + *(v18 + 28), v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v3) == 1)
  {
    return sub_1D8581B78();
  }

  (*(v5 + 32))(v9, v12, v3);
  OUTLINED_FUNCTION_414();
  OUTLINED_FUNCTION_5_8();
  sub_1D857B520(v20, v21, MEMORY[0x1E6969540]);
  sub_1D85811E8();
  v22 = OUTLINED_FUNCTION_183();
  return v23(v22);
}

void FriendRequest.init(from:)()
{
  OUTLINED_FUNCTION_285();
  v2 = v1;
  v30 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39300, &unk_1D8591030);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v28 - v5;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AD30, &qword_1D85AA0C8);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v28 - v10;
  v12 = type metadata accessor for FriendRequest(0);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_1();
  v16 = v15 - v14;
  v17 = v2[3];
  v32 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v17);
  sub_1D857B4CC();
  sub_1D8581BA8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v32);
  }

  else
  {
    v29 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A628, &unk_1D85A38A0);
    sub_1D857B568(&qword_1ECA3A630, sub_1D853B244);
    OUTLINED_FUNCTION_127();
    v18 = v31;
    OUTLINED_FUNCTION_55_3();
    sub_1D8581958();
    v28[1] = v33;
    *v16 = v33;
    v19 = OUTLINED_FUNCTION_189();
    __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
    OUTLINED_FUNCTION_3();
    sub_1D844A16C(v21, &qword_1ECA389B8, &qword_1D8590B30, v22);
    OUTLINED_FUNCTION_127();
    sub_1D8581958();
    v23 = v34;
    *(v16 + 8) = v33;
    *(v16 + 16) = v23;
    LOBYTE(v33) = 2;
    v24 = sub_1D85818A8();
    v25 = v29;
    *(v16 + 24) = v24;
    sub_1D8580EA8();
    LOBYTE(v33) = 3;
    OUTLINED_FUNCTION_5_8();
    sub_1D857B520(v26, v27, MEMORY[0x1E6969558]);
    OUTLINED_FUNCTION_55_3();
    sub_1D85818E8();
    (*(v25 + 8))(v11, v18);
    sub_1D847C25C(v6, *(v12 + 28));
    sub_1D857B7A0(0, v30, type metadata accessor for FriendRequest);
    __swift_destroy_boxed_opaque_existential_1(v32);
    sub_1D857B7FC(0, type metadata accessor for FriendRequest);
  }

  OUTLINED_FUNCTION_284_0();
}

uint64_t FriendSuggestion.Source.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D8581868();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D8579F10()
{
  OUTLINED_FUNCTION_99();
  sub_1D857CFE0();
  OUTLINED_FUNCTION_102();
  return sub_1D8581438();
}

uint64_t sub_1D8579F58()
{
  OUTLINED_FUNCTION_99();
  sub_1D857CFE0();
  OUTLINED_FUNCTION_102();
  return sub_1D85813E8();
}

uint64_t sub_1D8579F94()
{
  sub_1D8581B58();
  sub_1D85812B8();
  return sub_1D8581B98();
}

uint64_t sub_1D857A004(uint64_t a1, char a2)
{
  sub_1D85812B8();
}

uint64_t sub_1D857A06C(uint64_t a1, char a2)
{
  sub_1D8581B58();
  sub_1D85812B8();

  return sub_1D8581B98();
}

uint64_t sub_1D857A0C8(uint64_t a1)
{
  sub_1D8581B58();
  sub_1D85812B8();
  return sub_1D8581B98();
}

GameServices::FriendSuggestion::FriendingProtocolVersion_optional __swiftcall FriendSuggestion.FriendingProtocolVersion.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D8581868();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t FriendSuggestion.FriendingProtocolVersion.rawValue.getter()
{
  if (*v0)
  {
    return 12918;
  }

  else
  {
    return 12662;
  }
}

uint64_t sub_1D857A1B0@<X0>(uint64_t *a1@<X8>)
{
  result = FriendSuggestion.FriendingProtocolVersion.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE200000000000000;
  return result;
}

uint64_t sub_1D857A1DC()
{
  OUTLINED_FUNCTION_99();
  sub_1D857CF8C();
  OUTLINED_FUNCTION_102();
  return sub_1D8581438();
}

uint64_t sub_1D857A224()
{
  OUTLINED_FUNCTION_99();
  sub_1D857CF8C();
  OUTLINED_FUNCTION_102();
  return sub_1D85813E8();
}

uint64_t FriendSuggestion.avatar.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FriendSuggestion(0) + 28);
  sub_1D8580D78();
  OUTLINED_FUNCTION_4_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t FriendSuggestion.contact.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FriendSuggestion(0) + 32));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t FriendSuggestion.handle.getter()
{
  type metadata accessor for FriendSuggestion(0);

  return OUTLINED_FUNCTION_194();
}

uint64_t FriendSuggestion.init(ref:source:supportedProtocolVersion:avatar:contact:handle:)@<X0>(void *a1@<X0>, char *a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v11 = a1[1];
  v12 = *a2;
  v13 = *a4;
  v14 = a4[1];
  *a7 = *a1;
  *(a7 + 8) = v11;
  *(a7 + 16) = v12;
  v15 = type metadata accessor for FriendSuggestion(0);
  v16 = v15[7];
  sub_1D8580D78();
  OUTLINED_FUNCTION_4_0();
  result = (*(v17 + 32))(a7 + v16, a3);
  v19 = (a7 + v15[9]);
  *v19 = a5;
  v19[1] = a6;
  v20 = (a7 + v15[8]);
  *v20 = v13;
  v20[1] = v14;
  return result;
}

uint64_t static FriendSuggestion.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1D8577C7C(*a1, *(a1 + 8), *a2, *(a2 + 8), &qword_1ECA3A5D8, &qword_1D85A3300, &qword_1ECA3ADD0) & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((sub_1D8577C14(*(a1 + 16), *(a2 + 16)) & 1) == 0)
  {
    goto LABEL_10;
  }

  v4 = type metadata accessor for FriendSuggestion(0);
  if ((sub_1D8580D58() & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = *(v4 + 32);
  v6 = *(a2 + v5 + 8);
  if (*(a1 + v5 + 8))
  {
    if (v6)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A368, &qword_1D85A22C0);
      sub_1D844A16C(&qword_1ECA3A6B0, &qword_1ECA3A368, &qword_1D85A22C0, &protocol conformance descriptor for Ref<A>);
      swift_bridgeObjectRetain_n();

      v7 = sub_1D8581208();

      if (v7)
      {
        goto LABEL_13;
      }

LABEL_10:
      v8 = 0;
      return v8 & 1;
    }

LABEL_9:

    goto LABEL_10;
  }

  if (v6)
  {
    goto LABEL_9;
  }

LABEL_13:
  v10 = *(v4 + 36);
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v13[1];
  v8 = (v12 | v14) == 0;
  if (v12 && v14)
  {
    if (*v11 == *v13 && v12 == v14)
    {
      v8 = 1;
    }

    else
    {
      v8 = sub_1D8581AB8();
    }
  }

  return v8 & 1;
}

uint64_t sub_1D857A634()
{
  OUTLINED_FUNCTION_60_3();
  v3 = v3 && v2 == 0xE300000000000000;
  if (v3 || (v4 = v1, (OUTLINED_FUNCTION_7(6710642, 0xE300000000000000) & 1) != 0))
  {

    return 0;
  }

  else
  {
    v6 = v4 == 0x656372756F73 && v0 == 0xE600000000000000;
    if (v6 || (OUTLINED_FUNCTION_7(0x656372756F73, 0xE600000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = v4 == 0xD000000000000018 && 0x80000001D8589510 == v0;
      if (v7 || (OUTLINED_FUNCTION_7(0xD000000000000018, 0x80000001D8589510) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = v4 == 0x726174617661 && v0 == 0xE600000000000000;
        if (v8 || (OUTLINED_FUNCTION_7(0x726174617661, 0xE600000000000000) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = OUTLINED_FUNCTION_105_3();
          v10 = v3 && v0 == 0xE700000000000000;
          if (v10 || (OUTLINED_FUNCTION_7(v9, 0xE700000000000000) & 1) != 0)
          {

            return 4;
          }

          else if (v4 == 0x656C646E6168 && v0 == 0xE600000000000000)
          {

            return 5;
          }

          else
          {
            OUTLINED_FUNCTION_7(0x656C646E6168, 0xE600000000000000);
            OUTLINED_FUNCTION_369();
            if (v4)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1D857A7AC(char a1)
{
  result = 6710642;
  switch(a1)
  {
    case 1:
      result = 0x656372756F73;
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
      result = 0x726174617661;
      break;
    case 4:
      result = 0x746361746E6F63;
      break;
    case 5:
      result = 0x656C646E6168;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D857A858@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D857A634();
  *a1 = result;
  return result;
}

uint64_t sub_1D857A880()
{
  sub_1D857B5FC();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D857A8B8()
{
  sub_1D857B5FC();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void FriendSuggestion.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AD38, &unk_1D85AA0D0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_110();
  v2 = OUTLINED_FUNCTION_167();
  __swift_project_boxed_opaque_existential_1(v2, v3);
  sub_1D857B5FC();
  OUTLINED_FUNCTION_64_2(&type metadata for FriendSuggestion.CodingKeys);

  v4 = OUTLINED_FUNCTION_167();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_4();
  sub_1D844A16C(v6, &qword_1ECA3A5D8, &qword_1D85A3300, v7);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_186_4();
  sub_1D8581A58();
  if (v0)
  {
  }

  else
  {

    OUTLINED_FUNCTION_290();
    sub_1D857B650();
    OUTLINED_FUNCTION_186_4();
    sub_1D8581A58();
    sub_1D857B6A4();
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_186_4();
    sub_1D8581A58();
    type metadata accessor for FriendSuggestion(0);
    sub_1D8580D78();
    OUTLINED_FUNCTION_7_9();
    sub_1D857B520(v8, v9, MEMORY[0x1E6968FB8]);
    OUTLINED_FUNCTION_186_4();
    sub_1D8581A58();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A368, &qword_1D85A22C0);
    OUTLINED_FUNCTION_4();
    sub_1D844A16C(v10, &qword_1ECA3A368, &qword_1D85A22C0, v11);
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_186_4();
    sub_1D85819E8();

    OUTLINED_FUNCTION_186_4();
    sub_1D8581998();
  }

  v12 = OUTLINED_FUNCTION_291();
  v13(v12);
  OUTLINED_FUNCTION_284_0();
}

uint64_t FriendSuggestion.hash(into:)(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_189();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_5();
  sub_1D844A16C(v4, &qword_1ECA3A5D8, &qword_1D85A3300, v5);
  OUTLINED_FUNCTION_161();
  sub_1D85811E8();
  sub_1D85812B8();
  sub_1D85812B8();

  v6 = type metadata accessor for FriendSuggestion(0);
  sub_1D8580D78();
  OUTLINED_FUNCTION_7_9();
  sub_1D857B520(v7, v8, MEMORY[0x1E6968FC0]);
  sub_1D85811E8();
  if (*(v1 + *(v6 + 32) + 8))
  {
    OUTLINED_FUNCTION_414();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A368, &qword_1D85A22C0);
    OUTLINED_FUNCTION_5();
    sub_1D844A16C(v9, &qword_1ECA3A368, &qword_1D85A22C0, v10);
    OUTLINED_FUNCTION_161();
    sub_1D85811E8();
  }

  else
  {
    sub_1D8581B78();
  }

  if (!*(v1 + *(v6 + 36) + 8))
  {
    return sub_1D8581B78();
  }

  OUTLINED_FUNCTION_414();
  return sub_1D85812B8();
}

uint64_t sub_1D857ADAC(uint64_t (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_379(a1);
  a1(v3);
  return sub_1D8581B98();
}

void FriendSuggestion.init(from:)()
{
  OUTLINED_FUNCTION_285();
  v2 = v1;
  v4 = v3;
  sub_1D8580D78();
  OUTLINED_FUNCTION_1();
  v36 = v6;
  v37 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_1();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AD60, &qword_1D85AA0E0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v10);
  v38 = type metadata accessor for FriendSuggestion(0);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_1();
  v39 = v13 - v12;
  v40 = v2;
  v14 = OUTLINED_FUNCTION_151();
  __swift_project_boxed_opaque_existential_1(v14, v15);
  sub_1D857B5FC();
  sub_1D8581BA8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v16 = OUTLINED_FUNCTION_194();
    __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_231();
    sub_1D844A16C(v18, v19, v20, v21);
    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_175_1();
    sub_1D8581958();
    *v39 = v41;
    OUTLINED_FUNCTION_290();
    sub_1D857B6F8();
    OUTLINED_FUNCTION_175_1();
    sub_1D8581958();
    sub_1D857B74C();
    OUTLINED_FUNCTION_175_1();
    sub_1D8581958();
    *(v39 + 16) = v41;
    LOBYTE(v41) = 3;
    OUTLINED_FUNCTION_7_9();
    sub_1D857B520(v22, v23, MEMORY[0x1E6968FD0]);
    OUTLINED_FUNCTION_175_1();
    sub_1D8581958();
    (*(v36 + 32))(v39 + v38[7], v9, v37);
    v24 = OUTLINED_FUNCTION_194();
    __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_231();
    sub_1D844A16C(v26, v27, v28, v29);
    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_175_1();
    sub_1D85818E8();
    *(v39 + v38[8]) = v41;
    OUTLINED_FUNCTION_175_1();
    v30 = sub_1D8581898();
    v32 = v31;
    v33 = OUTLINED_FUNCTION_126();
    v34(v33);
    v35 = (v39 + v38[9]);
    *v35 = v30;
    v35[1] = v32;
    sub_1D857B7A0(v39, v4, type metadata accessor for FriendSuggestion);
    __swift_destroy_boxed_opaque_existential_1(v40);
    sub_1D857B7FC(v39, type metadata accessor for FriendSuggestion);
  }

  OUTLINED_FUNCTION_284_0();
}

uint64_t sub_1D857B328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_1D8581B58();
  a4(v6);
  return sub_1D8581B98();
}

uint64_t sub_1D857B36C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1DA7191F0](v3);
  if (v3)
  {
    v5 = (a2 + 48);
    do
    {
      if (*v5)
      {
        MEMORY[0x1DA7191F0](1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389B8, &qword_1D8590B30);
        v6 = &qword_1EE0E0090;
        v7 = &qword_1ECA389B8;
        v8 = &qword_1D8590B30;
      }

      else
      {
        MEMORY[0x1DA7191F0](0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A368, &qword_1D85A22C0);
        v6 = &unk_1ECA3A6D0;
        v7 = &qword_1ECA3A368;
        v8 = &qword_1D85A22C0;
      }

      sub_1D844A16C(v6, v7, v8, &protocol conformance descriptor for Ref<A>);
      result = sub_1D85811E8();
      v5 += 24;
      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_1D857B4CC()
{
  result = qword_1ECA5B058;
  if (!qword_1ECA5B058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA5B058);
  }

  return result;
}

uint64_t sub_1D857B520(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D857B568(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA3A628, &unk_1D85A38A0);
    a2();
    OUTLINED_FUNCTION_189();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D857B5FC()
{
  result = qword_1ECA5B060[0];
  if (!qword_1ECA5B060[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA5B060);
  }

  return result;
}

unint64_t sub_1D857B650()
{
  result = qword_1ECA3AD48;
  if (!qword_1ECA3AD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3AD48);
  }

  return result;
}

unint64_t sub_1D857B6A4()
{
  result = qword_1ECA3AD50;
  if (!qword_1ECA3AD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3AD50);
  }

  return result;
}

unint64_t sub_1D857B6F8()
{
  result = qword_1ECA3AD70;
  if (!qword_1ECA3AD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3AD70);
  }

  return result;
}

unint64_t sub_1D857B74C()
{
  result = qword_1ECA3AD78;
  if (!qword_1ECA3AD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3AD78);
  }

  return result;
}

uint64_t sub_1D857B7A0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_0();
  v4 = OUTLINED_FUNCTION_194();
  v5(v4);
  return a2;
}

uint64_t sub_1D857B7FC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_0();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1D857B858()
{
  result = qword_1ECA3AD80;
  if (!qword_1ECA3AD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3AD80);
  }

  return result;
}

unint64_t sub_1D857B8F8()
{
  result = qword_1ECA3AD90;
  if (!qword_1ECA3AD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3AD90);
  }

  return result;
}

unint64_t sub_1D857B950()
{
  result = qword_1ECA3AD98;
  if (!qword_1ECA3AD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3AD98);
  }

  return result;
}

uint64_t dispatch thunk of FriendServiceProtocol.listFriends(player:after:)()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_201(v0, v1, v2, v3, v4);
  OUTLINED_FUNCTION_130_1();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_176(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_30_3(v6);

  return v9(v8);
}

uint64_t dispatch thunk of FriendServiceProtocol.remove(friends:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_478();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_28(v10, v11, v12, v13);
  OUTLINED_FUNCTION_54();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_176(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_13(v15);
  OUTLINED_FUNCTION_471();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of FriendServiceProtocol.listFriendSuggestions(player:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_296(a1, a2, a3);
  OUTLINED_FUNCTION_130_1();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_12_0(v4);

  return v7(v6);
}

uint64_t dispatch thunk of FriendServiceProtocol.describeFriendSuggestions(friendSuggestions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_296(a1, a2, a3);
  OUTLINED_FUNCTION_130_1();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_12_0(v4);

  return v7(v6);
}

uint64_t dispatch thunk of FriendServiceProtocol.denyRequests(player:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_478();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_28(v10, v11, v12, v13);
  OUTLINED_FUNCTION_54();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_176(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_13(v15);
  OUTLINED_FUNCTION_471();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of FriendServiceProtocol.sendRequests(player:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_478();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_28(v10, v11, v12, v13);
  OUTLINED_FUNCTION_54();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_176(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_13(v15);
  OUTLINED_FUNCTION_471();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of FriendServiceProtocol.listRequests(player:after:)()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_201(v0, v1, v2, v3, v4);
  OUTLINED_FUNCTION_130_1();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_176(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_30_3(v6);

  return v9(v8);
}

uint64_t dispatch thunk of FriendServiceProtocol.acceptRequests(player:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_478();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_28(v10, v11, v12, v13);
  OUTLINED_FUNCTION_54();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_176(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_13(v15);
  OUTLINED_FUNCTION_471();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of FriendServiceProtocol.ignoreRequests(player:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_478();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_28(v10, v11, v12, v13);
  OUTLINED_FUNCTION_54();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_176(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_13(v15);
  OUTLINED_FUNCTION_471();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of FriendServiceProtocol.cancelRequests(player:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_478();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_28(v10, v11, v12, v13);
  OUTLINED_FUNCTION_54();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_176(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_13(v15);
  OUTLINED_FUNCTION_471();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t sub_1D857C3A8(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_1D857C430(uint64_t a1)
{
  sub_1D857C6CC(319, &qword_1ECA3ADA8, &type metadata for PersonHandle, MEMORY[0x1E69E62F8]);
  if (v2 <= 0x3F)
  {
    OUTLINED_FUNCTION_24_3(v1, &qword_1EE0E0088, &qword_1ECA38A18, &qword_1D8590940);
    if (v4 <= 0x3F)
    {
      OUTLINED_FUNCTION_23_1(v3, &qword_1ECA3ADB0, MEMORY[0x1E69E6370]);
      if (v5 <= 0x3F)
      {
        sub_1D847ECC0(319);
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D857C550(uint64_t a1)
{
  OUTLINED_FUNCTION_24_3(a1, &qword_1ECA3ADB8, &qword_1ECA3A5E0, &unk_1D85A3308);
  if (v1 <= 0x3F)
  {
    sub_1D8580D78();
    if (v2 <= 0x3F)
    {
      sub_1D857C668(319, &qword_1ECA3A7A0, &qword_1ECA3A368, &qword_1D85A22C0, MEMORY[0x1E69E6720]);
      if (v4 <= 0x3F)
      {
        OUTLINED_FUNCTION_23_1(v3, &qword_1EE0E0060, MEMORY[0x1E69E6158]);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D857C668(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D857C6CC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

_BYTE *storeEnumTagSinglePayload for FriendSuggestion.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_282(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_280(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_281(result, v6);
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
          result = OUTLINED_FUNCTION_262(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FriendRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_282(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_280(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_281(result, v6);
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
          result = OUTLINED_FUNCTION_262(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1D857C8D8(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_282(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_280(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_281(result, v6);
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
          result = OUTLINED_FUNCTION_262(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1D857C9B8(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1D857CA68()
{
  result = qword_1ECA5BC90[0];
  if (!qword_1ECA5BC90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA5BC90);
  }

  return result;
}

unint64_t sub_1D857CAC0()
{
  result = qword_1ECA5BEA0[0];
  if (!qword_1ECA5BEA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA5BEA0);
  }

  return result;
}

unint64_t sub_1D857CB18()
{
  result = qword_1ECA5C0B0[0];
  if (!qword_1ECA5C0B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA5C0B0);
  }

  return result;
}

unint64_t sub_1D857CB70()
{
  result = qword_1ECA5C2C0[0];
  if (!qword_1ECA5C2C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA5C2C0);
  }

  return result;
}

unint64_t sub_1D857CBC8()
{
  result = qword_1ECA5C4D0[0];
  if (!qword_1ECA5C4D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA5C4D0);
  }

  return result;
}

unint64_t sub_1D857CC20()
{
  result = qword_1ECA5C5E0;
  if (!qword_1ECA5C5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA5C5E0);
  }

  return result;
}

unint64_t sub_1D857CC78()
{
  result = qword_1ECA5C5E8[0];
  if (!qword_1ECA5C5E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA5C5E8);
  }

  return result;
}

unint64_t sub_1D857CCD0()
{
  result = qword_1ECA5C670;
  if (!qword_1ECA5C670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA5C670);
  }

  return result;
}

unint64_t sub_1D857CD28()
{
  result = qword_1ECA5C678;
  if (!qword_1ECA5C678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA5C678);
  }

  return result;
}

unint64_t sub_1D857CD80()
{
  result = qword_1ECA5C700;
  if (!qword_1ECA5C700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA5C700);
  }

  return result;
}

unint64_t sub_1D857CDD8()
{
  result = qword_1ECA5C708[0];
  if (!qword_1ECA5C708[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA5C708);
  }

  return result;
}

unint64_t sub_1D857CE30()
{
  result = qword_1ECA5C790;
  if (!qword_1ECA5C790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA5C790);
  }

  return result;
}

unint64_t sub_1D857CE88()
{
  result = qword_1ECA5C798[0];
  if (!qword_1ECA5C798[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA5C798);
  }

  return result;
}

unint64_t sub_1D857CEE0()
{
  result = qword_1ECA5C820;
  if (!qword_1ECA5C820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA5C820);
  }

  return result;
}

unint64_t sub_1D857CF38()
{
  result = qword_1ECA5C828[0];
  if (!qword_1ECA5C828[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA5C828);
  }

  return result;
}

unint64_t sub_1D857CF8C()
{
  result = qword_1ECA3ADC0;
  if (!qword_1ECA3ADC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3ADC0);
  }

  return result;
}

unint64_t sub_1D857CFE0()
{
  result = qword_1ECA3ADC8;
  if (!qword_1ECA3ADC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3ADC8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_64_2(uint64_t a1)
{

  return sub_1D8581BB8();
}

uint64_t static GameServicesActorID.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D8581AB8();
  }
}

uint64_t sub_1D857D148(uint64_t a1, uint64_t a2)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1D8581AB8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D857D1BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D857D148(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1D857D1F4()
{
  sub_1D843D538();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D857D22C()
{
  sub_1D843D538();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t GameServicesActorID.hashValue.getter()
{
  sub_1D8581B58();
  sub_1D85812B8();
  return sub_1D8581B98();
}

uint64_t sub_1D857D2B8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1D857D2C0@<X0>(uint64_t *a1@<X8>)
{
  result = GameServicesActorID.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D857D2F0(uint64_t a1)
{
  sub_1D8581B58();
  sub_1D85812B8();
  return sub_1D8581B98();
}

uint64_t sub_1D857D594()
{
  sub_1D8580530(v0 + 16);
  OUTLINED_FUNCTION_70_3();

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

void sub_1D857D5C8()
{
  OUTLINED_FUNCTION_386();
  v3 = v2;
  v4 = sub_1D85810B8();
  OUTLINED_FUNCTION_1();
  v16 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_309();
  v15 = sub_1D85810E8();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_228_1();
  v10 = *v3;
  v11 = v3[1];
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = v10;
  v13[4] = v11;
  v17[4] = sub_1D8580664;
  v17[5] = v13;
  OUTLINED_FUNCTION_15_5();
  v17[1] = 1107296256;
  v17[2] = sub_1D857D870;
  v17[3] = &block_descriptor;
  v14 = _Block_copy(v17);

  sub_1D85810C8();
  sub_1D8436304(&unk_1EE0E0078);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AE40, &qword_1D85AB5A8);
  sub_1D8436360(&unk_1EE0E0048);
  sub_1D8581748();
  MEMORY[0x1DA718D30](0, v1, v0, v14);
  _Block_release(v14);
  (*(v16 + 8))(v0, v4);
  (*(v8 + 8))(v1, v15);

  OUTLINED_FUNCTION_388();
}

uint64_t sub_1D857D870(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1D857D8B4()
{

  OUTLINED_FUNCTION_70_3();

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

uint64_t sub_1D857D8F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F746361 && a2 == 0xE500000000000000;
  if (v4 || (OUTLINED_FUNCTION_7(0x726F746361, 0xE500000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746567726174 && a2 == 0xE600000000000000;
    if (v6 || (OUTLINED_FUNCTION_7(0x746567726174, 0xE600000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x746E656D75677261 && a2 == 0xE900000000000073;
      if (v7 || (OUTLINED_FUNCTION_7(0x746E656D75677261, 0xE900000000000073) & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000014 && 0x80000001D8589820 == a2)
      {

        return 3;
      }

      else
      {
        v9 = OUTLINED_FUNCTION_7(0xD000000000000014, 0x80000001D8589820);

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1D857DA20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D857D8F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D857DA48()
{
  sub_1D843D12C();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D857DA80()
{
  sub_1D843D12C();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void sub_1D857DAB8()
{
  OUTLINED_FUNCTION_386();
  v2 = v0;
  v3 = sub_1D85810A8();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_1();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AE28, &qword_1D85AB468);
  OUTLINED_FUNCTION_363(v10);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_309();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AE00, &qword_1D85AAD58);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_128();
  sub_1D843DACC(v2, v1, &qword_1ECA3AE28, &qword_1D85AB468);
  if (__swift_getEnumTagSinglePayload(v1, 1, v12) == 1)
  {
    v14 = sub_1D8436E18(v1, &qword_1ECA3AE28, &qword_1D85AB468);
    v17 = sub_1D84355A0(v14, v15, v16);
    (*(v5 + 16))(v9, v17, v3);
    v18 = sub_1D8581088();
    v19 = sub_1D8581688();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1D8433000, v18, v19, "Task Queue continuation in Actor System is nil. Cannot call finish", v20, 2u);
      OUTLINED_FUNCTION_41_4();
    }

    v21 = OUTLINED_FUNCTION_151();
    v22(v21);
  }

  else
  {
    v23 = OUTLINED_FUNCTION_228();
    v24(v23);
    sub_1D8581548();
    v25 = OUTLINED_FUNCTION_233();
    v26(v25);
  }

  OUTLINED_FUNCTION_388();
}

uint64_t sub_1D857DD20()
{
  OUTLINED_FUNCTION_174();
  sub_1D8443420(*(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120));
  v1 = OUTLINED_FUNCTION_151();
  v2(v1);

  OUTLINED_FUNCTION_146();

  return v3();
}

uint64_t sub_1D857DDAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A608, &qword_1D85AAD30);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v21 - v9;
  sub_1D843DACC(a3, v21 - v9, &qword_1ECA3A608, &qword_1D85AAD30);
  v11 = sub_1D8581528();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D8436E18(v10, &qword_1ECA3A608, &qword_1D85AAD30);
  }

  else
  {
    sub_1D8581518();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_1D85814E8();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_1D8581298() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_1D8436E18(a3, &qword_1ECA3A608, &qword_1D85AAD30);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D8436E18(a3, &qword_1ECA3A608, &qword_1D85AAD30);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t GameServicesActorSystem.JSONInvocationEncoder.recordGenericSubstitution<A>(_:)(uint64_t a1)
{
  v2 = sub_1D85817F8();
  if (!v3)
  {
    v2 = sub_1D8581C28();
  }

  v4 = v2;
  v5 = v3;
  sub_1D843AEC0(sub_1D857FB78);
  v6 = *(*(v1 + 16) + 16);
  result = sub_1D843B024(v6, sub_1D857FB78);
  v8 = *(v1 + 16);
  *(v8 + 16) = v6 + 1;
  v9 = v8 + 16 * v6;
  *(v9 + 32) = v4;
  *(v9 + 40) = v5;
  *(v1 + 16) = v8;
  return result;
}

uint64_t sub_1D857E164@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  v3 = sub_1D8580B18();
  OUTLINED_FUNCTION_46_4(v3);
  result = sub_1D8580B08();
  a1[1] = result;
  a1[2] = v2;
  return result;
}

uint64_t sub_1D857E1C8(uint64_t a1, uint64_t a2)
{
  swift_conformsToProtocol();
  swift_conformsToProtocol();
  return GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(a1, a2);
}

uint64_t sub_1D857E240(uint64_t a1, uint64_t a2)
{
  swift_conformsToProtocol();
  v3 = swift_conformsToProtocol();
  return GameServicesActorSystem.JSONInvocationEncoder.recordReturnType<A>(_:)(v3, a2);
}

uint64_t sub_1D857E2BC(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v3 = a1(0);
  OUTLINED_FUNCTION_46_4(v3);
  return a2();
}

uint64_t GameServicesActorSystem.JSONInvocationDecoder.decodeGenericSubstitutions()()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v14 = MEMORY[0x1E69E7CC0];
  result = sub_1D857FEE0(0, v2, 0);
  v5 = 0;
  v3 = v14;
  v6 = (v1 + 40);
  while (v5 < *(v1 + 16))
  {
    v8 = *(v6 - 1);
    v7 = *v6;

    v9 = sub_1D8581788();
    if (!v9)
    {
      sub_1D8581768();

      MEMORY[0x1DA718990](v8, v7);
      sub_1D857FB24();
      OUTLINED_FUNCTION_10_0();
      swift_allocError();
      *v13 = 0xD000000000000013;
      v13[1] = 0x80000001D85895C0;
      OUTLINED_FUNCTION_27_5(v13, 1);
      swift_willThrow();

      return v3;
    }

    v10 = v9;

    v12 = *(v14 + 16);
    v11 = *(v14 + 24);
    if (v12 >= v11 >> 1)
    {
      result = sub_1D857FEE0((v11 > 1), v12 + 1, 1);
    }

    ++v5;
    *(v14 + 16) = v12 + 1;
    *(v14 + 8 * v12 + 32) = v10;
    v6 += 2;
    if (v2 == v5)
    {
      return v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D857E4C4(uint64_t a1)
{
  swift_conformsToProtocol();
  swift_conformsToProtocol();
  return GameServicesActorSystem.JSONInvocationDecoder.decodeNextArgument<A>()(a1);
}

uint64_t sub_1D857E538()
{
  OUTLINED_FUNCTION_148();
  (*(v0 + 16))(0, 0xF000000000000000, 0);
  OUTLINED_FUNCTION_57();

  return v1();
}

uint64_t GameServicesActorSystem.JSONResultHandler.onThrow<A>(error:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  *(v4 + 40) = *v3;
  return OUTLINED_FUNCTION_0_20();
}

uint64_t sub_1D857E5C0()
{
  OUTLINED_FUNCTION_174();
  v1 = v0[5];
  v2 = sub_1D84F42C8(v0[3], v0[4]);
  v3 = OUTLINED_FUNCTION_25_7();
  v1(v3);
  MEMORY[0x1DA719650](v2);
  OUTLINED_FUNCTION_57();

  return v4();
}

uint64_t sub_1D857E644()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_129_0();
  swift_conformsToProtocol();
  swift_conformsToProtocol();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_191(v1);
  OUTLINED_FUNCTION_506();

  return GameServicesActorSystem.JSONResultHandler.onReturn<A>(value:)();
}

uint64_t sub_1D857E6F4()
{
  OUTLINED_FUNCTION_148();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_191(v1);

  return GameServicesActorSystem.JSONResultHandler.onReturnVoid()();
}

uint64_t sub_1D857E774()
{
  OUTLINED_FUNCTION_174();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_191(v1);
  v3 = OUTLINED_FUNCTION_40_0();

  return GameServicesActorSystem.JSONResultHandler.onThrow<A>(error:)(v3, v4, v5);
}

uint64_t sub_1D857E81C()
{
  type metadata accessor for GameServicesActorSystem.TaskQueue(0);
  OUTLINED_FUNCTION_123();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t GameServicesActorSystem.__allocating_init(invoker:)()
{
  OUTLINED_FUNCTION_129_0();
  v0 = swift_allocObject();
  v1 = OUTLINED_FUNCTION_506();
  GameServicesActorSystem.init(invoker:)(v1, v2);
  return v0;
}

uint64_t sub_1D857E8A8()
{
  OUTLINED_FUNCTION_204();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v4 = swift_task_alloc();
    v0[14] = v4;
    *v4 = v0;
    v4[1] = sub_1D857EA84;

    return sub_1D843E488();
  }

  else
  {
    sub_1D84355A0(0, v2, v3);
    v6 = OUTLINED_FUNCTION_59_3();
    v7(v6);
    v8 = sub_1D8581088();
    v9 = sub_1D8581688();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1D8433000, v8, v9, "Actor System has been deallocated", v10, 2u);
      OUTLINED_FUNCTION_41_4();
    }

    v12 = v0[11];
    v11 = v0[12];
    v13 = v0[10];

    (*(v12 + 8))(v11, v13);
    sub_1D857FB24();
    OUTLINED_FUNCTION_10_0();
    v14 = swift_allocError();
    *v15 = xmmword_1D85AAC10;
    OUTLINED_FUNCTION_24_4(v14, v15);
    swift_willThrow();

    OUTLINED_FUNCTION_146();

    return v16();
  }
}

uint64_t sub_1D857EA84()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D857EB7C()
{
  OUTLINED_FUNCTION_148();

  OUTLINED_FUNCTION_57();

  return v0();
}

uint64_t sub_1D857EBDC()
{
  OUTLINED_FUNCTION_148();

  OUTLINED_FUNCTION_146();

  return v0();
}

uint64_t sub_1D857EC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  v13 = *(v12 + 224);
  v14 = *(v12 + 128);

  v15 = OUTLINED_FUNCTION_233();
  v16(v15);
  MEMORY[0x1DA719660](v13);
  v14(0, 0xF000000000000000, v13);
  swift_unknownObjectRelease();
  MEMORY[0x1DA719650](v13);
  MEMORY[0x1DA719650](v13);

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_173();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t *GameServicesActorSystem.deinit()
{
  if (*(v0 + OBJC_IVAR____TtC12GameServices23GameServicesActorSystem_taskRef))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    sub_1D8581598();
  }

  sub_1D84364C8(*(v0 + 16), *(v0 + 24));

  sub_1D8436E18(v0 + OBJC_IVAR____TtC12GameServices23GameServicesActorSystem_taskQueue, &qword_1ECA3ADF8, &qword_1D85AAD38);

  return v0;
}

uint64_t GameServicesActorSystem.__deallocating_deinit()
{
  GameServicesActorSystem.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D857EE58()
{
  OUTLINED_FUNCTION_148();
  sub_1D843F6E8(*(v0 + 128), *(v0 + 136));
  v1 = OUTLINED_FUNCTION_194();
  sub_1D84364C8(v1, v2);
  OUTLINED_FUNCTION_146();

  return v3();
}

uint64_t GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[11] = a7;
  v8[12] = v7;
  v8[9] = a3;
  v8[10] = a5;
  v8[7] = a1;
  v8[8] = a2;
  return OUTLINED_FUNCTION_0_20();
}

uint64_t sub_1D857EEDC()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_69_6();
  OUTLINED_FUNCTION_32_3();
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_1D857EF88;
  v2 = OUTLINED_FUNCTION_57_4();

  return sub_1D843CA8C(v2, v3, v4, v5);
}

uint64_t sub_1D857EF88()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (v0)
  {

    OUTLINED_FUNCTION_38_5();
    OUTLINED_FUNCTION_535();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_344_1();
    sub_1D8443C38(v9, v10);

    OUTLINED_FUNCTION_535();

    return v12(v11, v12, v13, v14, v15, v16, v17, v18);
  }
}

uint64_t GameServicesActorSystem.createLocalClientActorSystem()()
{
  v1 = swift_allocObject();

  GameServicesActorSystem.init(invoker:)(&unk_1D85AAD98, v0);
  return v1;
}

uint64_t sub_1D857F1AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return OUTLINED_FUNCTION_0_20();
}

uint64_t sub_1D857F1C4()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v0[7] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[8] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A188, &qword_1D85A4C10);
  *v5 = v0;
  v5[1] = sub_1D857F2CC;
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_535();

  return MEMORY[0x1EEE6DE38](v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1D857F2CC()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D857F3E8()
{
  OUTLINED_FUNCTION_148();

  OUTLINED_FUNCTION_146();

  return v0();
}

void sub_1D857F444()
{
  OUTLINED_FUNCTION_386();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AE30, &qword_1D85AB598);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_283();
  (*(v5 + 16))(v0, v2, v3);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  (*(v5 + 32))(v8 + v7, v0, v3);
  OUTLINED_FUNCTION_506();
  GameServicesActorSystem.routeToLocalActor(invocationData:completionHandler:)();

  OUTLINED_FUNCTION_388();
}

uint64_t GameServicesActorSystem.forward(invocationData:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_20();
}

uint64_t sub_1D857F598()
{
  OUTLINED_FUNCTION_204();
  v1 = v0[4];
  v2 = *(v1 + 16);
  v0[5] = v2;
  v0[6] = *(v1 + 24);
  if (v2)
  {

    v10 = (v2 + *v2);
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_1D857F700;
    v5 = v0[2];
    v4 = v0[3];

    return v10(v5, v4);
  }

  else
  {
    sub_1D857FB24();
    OUTLINED_FUNCTION_10_0();
    v7 = swift_allocError();
    *v8 = 0;
    v8[1] = 0;
    OUTLINED_FUNCTION_24_4(v7, v8);
    swift_willThrow();
    OUTLINED_FUNCTION_146();

    return v9();
  }
}

uint64_t sub_1D857F700()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_153();
  v7 = v6;
  OUTLINED_FUNCTION_62();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_37();
  *v10 = v9;
  v7[8] = v0;

  if (!v0)
  {
    v7[9] = v3;
    v7[10] = v5;
  }

  OUTLINED_FUNCTION_38_5();
  OUTLINED_FUNCTION_535();

  return MEMORY[0x1EEE6DFA0](v11);
}

uint64_t sub_1D857F80C()
{
  OUTLINED_FUNCTION_148();
  sub_1D84364C8(v0[5], v0[6]);
  v1 = v0[1];
  v3 = v0[9];
  v2 = v0[10];

  return v1(v2, v3);
}

uint64_t sub_1D857F870()
{
  OUTLINED_FUNCTION_148();
  sub_1D84364C8(*(v0 + 40), *(v0 + 48));
  OUTLINED_FUNCTION_146();

  return v1();
}

uint64_t sub_1D857F8CC()
{
  OUTLINED_FUNCTION_148();
  v0 = OUTLINED_FUNCTION_63_2();
  v1(v0);

  OUTLINED_FUNCTION_146();

  return v2();
}

uint64_t sub_1D857F974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_190();
  swift_conformsToProtocol();
  swift_conformsToProtocol();
  v21 = swift_task_alloc();
  v22 = OUTLINED_FUNCTION_176(v21);
  *v22 = v23;
  v22[1] = sub_1D8442FA8;
  OUTLINED_FUNCTION_173();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t sub_1D857FA64()
{
  OUTLINED_FUNCTION_204();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_176(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_191(v11);

  return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v9, v7, v5, v13, v3, v14, v1);
}

unint64_t sub_1D857FB24()
{
  result = qword_1ECA3ADF0;
  if (!qword_1ECA3ADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3ADF0);
  }

  return result;
}

char *sub_1D857FB78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A0C8, &qword_1D859F0C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1D857FC80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1D8436A4C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AE48, &qword_1D85AB5B0);
  sub_1D8581808();

  v7 = *(*(v9 + 56) + 8 * v6);
  type metadata accessor for GameServicesActorRegistry.WeakDistributedActorReference();
  sub_1D84363B0();
  sub_1D8581828();
  *v3 = v9;
  return v7;
}

uint64_t sub_1D857FD5C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1D8436A4C(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AE48, &qword_1D85AB5B0);
  if ((sub_1D8581808() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1D8436A4C(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_1D8581AF8();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    *(v16[7] + 8 * v12) = a1;
  }

  else
  {
    sub_1D857FE98(v12, a2, a3, a1, v16);
  }
}

unint64_t sub_1D857FE98(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

char *sub_1D857FEE0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D857FF00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D857FF00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AE78, &unk_1D85AB5F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

uint64_t sub_1D8580000()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_129_0();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_176(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_191(v2);
  v4 = OUTLINED_FUNCTION_506();

  return sub_1D857F1AC(v4, v5, v0);
}

uint64_t sub_1D8580094()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_129_0();
  OUTLINED_FUNCTION_153();
  v1 = *v0;
  OUTLINED_FUNCTION_37();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_506();

  return v4(v3);
}

unint64_t sub_1D858018C()
{
  result = qword_1EE0E0168;
  if (!qword_1EE0E0168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E0168);
  }

  return result;
}

unint64_t sub_1D85801E4()
{
  result = qword_1ECA3AE18;
  if (!qword_1ECA3AE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3AE18);
  }

  return result;
}

unint64_t sub_1D858023C()
{
  result = qword_1ECA3AE20;
  if (!qword_1ECA3AE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3AE20);
  }

  return result;
}

uint64_t sub_1D8580290(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      return OUTLINED_FUNCTION_48_2(result);
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

      return OUTLINED_FUNCTION_321(result, a2);
    }

    *(result + 16) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_321(result, a2);
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12GameServices0aB16ActorSystemErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_1D85802FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_1D85803BC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_226(-1);
  }

  if (a2 < 0 && *(a1 + 24))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_226(v2);
}

void *sub_1D85803FC(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
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

      return OUTLINED_FUNCTION_49_2(result, a2);
    }

    *(result + 24) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_49_2(result, a2);
    }
  }

  return result;
}

uint64_t sub_1D8580444(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_226(-1);
  }

  if (a2 < 0 && *(a1 + 16))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_226(v2);
}

uint64_t sub_1D8580480(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      return OUTLINED_FUNCTION_48_2(result);
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

      return OUTLINED_FUNCTION_49_2(result, a2);
    }

    *(result + 16) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_49_2(result, a2);
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1D85804DC()
{
  result = qword_1ECA5CB30[0];
  if (!qword_1ECA5CB30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA5CB30);
  }

  return result;
}

uint64_t sub_1D8580564(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AE30, &qword_1D85AB598);
  OUTLINED_FUNCTION_363(v6);
  if (a3)
  {
    MEMORY[0x1DA719660](a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AE30, &qword_1D85AB598);
    return sub_1D85814F8();
  }

  else
  {
    sub_1D8580650(a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AE30, &qword_1D85AB598);
    return sub_1D8581508();
  }
}

uint64_t sub_1D8580650(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D843DDD8(result, a2);
  }

  return result;
}

uint64_t sub_1D8580664()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    sub_1D857FC80(v1, v2);
    swift_endAccess();
  }

  return result;
}

unint64_t sub_1D8580710()
{
  result = qword_1ECA5CC40[0];
  if (!qword_1ECA5CC40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA5CC40);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_46_4(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t Ref.rawValue.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1D8580910(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_21();
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1D858096C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_21();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D85809CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_21();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D8580A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_21();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}