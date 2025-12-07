uint64_t sub_1D849DBA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_236();
  OUTLINED_FUNCTION_487();
  OUTLINED_FUNCTION_153();
  v18 = *(v17 + 80);
  v42 = *(v17 + 72);
  OUTLINED_FUNCTION_193();
  v20 = *(v19 + 64);
  v22 = *(v21 + 56);
  v41 = *(v21 + 48);
  OUTLINED_FUNCTION_193();
  v24 = *(v23 + 40);
  v26 = v25[4];
  v27 = v25[3];
  v28 = v25[2];
  OUTLINED_FUNCTION_171_0();
  v30 = v29;
  OUTLINED_FUNCTION_37();
  *v31 = v30;

  (*(v27 + 8))(v26, v28);
  (*(v41 + 8))(v22, v24);
  (*(v42 + 8))(v18, v20);

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_428();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, v41, v20 - 8, v42, v16, a14, a15, a16);
}

unint64_t sub_1D849DDF4()
{
  result = qword_1ECA397F0;
  if (!qword_1ECA397F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA397E8, &unk_1D859A110);
    sub_1D849DE78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA397F0);
  }

  return result;
}

unint64_t sub_1D849DE78()
{
  result = qword_1ECA397F8;
  if (!qword_1ECA397F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39800, &qword_1D85962C0);
    sub_1D849DEFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA397F8);
  }

  return result;
}

unint64_t sub_1D849DEFC()
{
  result = qword_1ECA39808;
  if (!qword_1ECA39808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39808);
  }

  return result;
}

unint64_t sub_1D849DF50()
{
  result = qword_1ECA39810;
  if (!qword_1ECA39810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA397E8, &unk_1D859A110);
    sub_1D849DFD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39810);
  }

  return result;
}

unint64_t sub_1D849DFD4()
{
  result = qword_1ECA39818;
  if (!qword_1ECA39818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39800, &qword_1D85962C0);
    sub_1D849E058();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39818);
  }

  return result;
}

unint64_t sub_1D849E058()
{
  result = qword_1ECA39820;
  if (!qword_1ECA39820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39820);
  }

  return result;
}

uint64_t sub_1D849E0AC()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_31_0(&unk_1D85968F8);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_42_0(v1);

  return v4(v3);
}

uint64_t sub_1D849E138(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1D8581018();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39840, &qword_1D85962E0);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D849E260);
}

uint64_t sub_1D849E260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_24(&unk_1D85968F8);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_201_0(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_27_0(v16);
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_69_0();
  v14 = type metadata accessor for $DistributedGameKitServiceProtocol();
  OUTLINED_FUNCTION_91(v14);
  if (v12)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  v27 = OUTLINED_FUNCTION_253_0();
  OUTLINED_FUNCTION_340_0(v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39848, &qword_1D85962E8);
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_219_0(23);
  sub_1D8581038();
  sub_1D849EA88();
  v28 = sub_1D849EB38();
  OUTLINED_FUNCTION_31(v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39878, &qword_1D85962F8);
  sub_1D849EBE8();
  sub_1D849ED24();
  v30 = OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_345_0(v30, v31);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v32)
  {
    OUTLINED_FUNCTION_453();
    v33 = OUTLINED_FUNCTION_49_0();
    v34(v33);
    OUTLINED_FUNCTION_331();

LABEL_9:
    OUTLINED_FUNCTION_258_0();

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  sub_1D8581028();
  v35 = swift_task_alloc();
  OUTLINED_FUNCTION_203_0(v35);
  OUTLINED_FUNCTION_0_2();
  sub_1D84A6058(v36, v37, v38, &protocol conformance descriptor for $DistributedGameKitServiceProtocol);
  OUTLINED_FUNCTION_98();
  *(v13 + 16) = v39;
  OUTLINED_FUNCTION_419();
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_118_0();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t DistributedGameKitServiceProtocol<>.describeGameActivityDefinitions(gameActivityDefinitions:)()
{
  OUTLINED_FUNCTION_148();
  v5 = OUTLINED_FUNCTION_371(v1, v2, v3, v4);
  v0[14] = v5;
  OUTLINED_FUNCTION_39(v5);
  v0[15] = v6;
  v0[16] = OUTLINED_FUNCTION_332();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39840, &qword_1D85962E0);
  OUTLINED_FUNCTION_29(v7);
  v0[18] = v8;
  v0[19] = OUTLINED_FUNCTION_332();
  v9 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v9);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_250(v0, v1, v2);
  OUTLINED_FUNCTION_198();
  v3 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1D849E600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_110_0();
    OUTLINED_FUNCTION_90();
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_12:
      OUTLINED_FUNCTION_168_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
    }

    v28 = OUTLINED_FUNCTION_254_0();
    OUTLINED_FUNCTION_341_0(v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39848, &qword_1D85962E8);
    OUTLINED_FUNCTION_121();
    OUTLINED_FUNCTION_219_0(23);
    sub_1D8581038();
    sub_1D849EA88();
    v29 = sub_1D849EB38();
    OUTLINED_FUNCTION_31(v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39878, &qword_1D85962F8);
    sub_1D849EBE8();
    sub_1D849ED24();
    v31 = OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_345_0(v31, v32);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v33)
    {
      OUTLINED_FUNCTION_452();
      v34 = OUTLINED_FUNCTION_49_0();
      v35(v34);
      OUTLINED_FUNCTION_331();

      goto LABEL_12;
    }

    sub_1D8581028();
    v44 = swift_task_alloc();
    v45 = OUTLINED_FUNCTION_90_0(v44);
    *v45 = v46;
    OUTLINED_FUNCTION_294(v45);
    OUTLINED_FUNCTION_10_2();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_54();
    v48 = v15 + *v15;
    v16 = swift_task_alloc();
    v17 = OUTLINED_FUNCTION_286(v16);
    *v17 = v18;
    OUTLINED_FUNCTION_17(v17);
    OUTLINED_FUNCTION_169();

    return v22(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, v48, a12, a13, a14);
  }
}

uint64_t sub_1D849E8F8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
  v10[1] = sub_1D84A7CD8;

  return DistributedGameKitServiceProtocol<>.describeGameActivityDefinitions(gameActivityDefinitions:)();
}

unint64_t sub_1D849EA88()
{
  result = qword_1ECA39850;
  if (!qword_1ECA39850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39848, &qword_1D85962E8);
    sub_1D844A16C(&qword_1ECA39858, &qword_1ECA39860, &qword_1D85962F0, &protocol conformance descriptor for Ref<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39850);
  }

  return result;
}

unint64_t sub_1D849EB38()
{
  result = qword_1ECA39868;
  if (!qword_1ECA39868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39848, &qword_1D85962E8);
    sub_1D844A16C(&qword_1ECA39870, &qword_1ECA39860, &qword_1D85962F0, &protocol conformance descriptor for Ref<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39868);
  }

  return result;
}

unint64_t sub_1D849EBE8()
{
  result = qword_1ECA39880;
  if (!qword_1ECA39880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39878, &qword_1D85962F8);
    sub_1D849EC6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39880);
  }

  return result;
}

unint64_t sub_1D849EC6C()
{
  result = qword_1ECA39888;
  if (!qword_1ECA39888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39890, &qword_1D8596300);
    sub_1D84A6058(&qword_1ECA39898, 255, type metadata accessor for GameActivityDefinition, &protocol conformance descriptor for GameActivityDefinition);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39888);
  }

  return result;
}

unint64_t sub_1D849ED24()
{
  result = qword_1ECA398A0;
  if (!qword_1ECA398A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39878, &qword_1D85962F8);
    sub_1D849EDA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA398A0);
  }

  return result;
}

unint64_t sub_1D849EDA8()
{
  result = qword_1ECA398A8;
  if (!qword_1ECA398A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39890, &qword_1D8596300);
    sub_1D84A6058(&qword_1ECA398B0, 255, type metadata accessor for GameActivityDefinition, &protocol conformance descriptor for GameActivityDefinition);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA398A8);
  }

  return result;
}

uint64_t sub_1D849EE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_426();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_31_0(&unk_1D85968F0);
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_97(v12);
  *v13 = v14;
  v13[1] = sub_1D8442F30;
  OUTLINED_FUNCTION_207();

  return v22(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_1D849EF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[17] = a7;
  v8[18] = v7;
  v8[15] = a5;
  v8[16] = a6;
  v8[13] = a3;
  v8[14] = a4;
  v8[11] = a1;
  v8[12] = a2;
  v9 = sub_1D8581018();
  v8[19] = v9;
  v8[20] = *(v9 - 8);
  v8[21] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB0, &unk_1D8590C60);
  v8[22] = v10;
  v8[23] = *(v10 - 8);
  v8[24] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA398B8, &qword_1D8596318);
  v8[25] = v11;
  v8[26] = *(v11 - 8);
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  v8[29] = v12;
  v8[30] = *(v12 - 8);
  v8[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D849F138);
}

uint64_t sub_1D849F138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    v15[32] = OUTLINED_FUNCTION_157_0();
    OUTLINED_FUNCTION_354();
    v16 = type metadata accessor for $DistributedGameKitServiceProtocol();
    OUTLINED_FUNCTION_91(v16);
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v61(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12, a13, a14);
    }

    v30 = v15[13];
    v15[5] = v15[12];
    v15[6] = v30;

    v31 = OUTLINED_FUNCTION_232_0();
    OUTLINED_FUNCTION_60(v31, v32, v33, v34, (v15 + 5));
    OUTLINED_FUNCTION_2_2(&qword_1ECA38BB0);
    OUTLINED_FUNCTION_2(&qword_1ECA38B40);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v35, v36);
    v15[9] = v15[14];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA398C0, &qword_1D8596320);
    v37 = OUTLINED_FUNCTION_28_0();
    OUTLINED_FUNCTION_290_0(v37, v38, v39, v40, (v15 + 9));
    sub_1D84A0D94();
    sub_1D84A0EF0();
    OUTLINED_FUNCTION_150_0();
    v15[10] = v15[15];

    OUTLINED_FUNCTION_216();
    OUTLINED_FUNCTION_198();
    sub_1D8581038();
    OUTLINED_FUNCTION_150_0();
    v41 = v15[17];
    v15[7] = v15[16];
    v15[8] = v41;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB8, &unk_1D8596010);
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_95_0();
    OUTLINED_FUNCTION_252(v42, v43, v44, v45, v46);
    sub_1D84751F0();
    v47 = sub_1D8475274();
    OUTLINED_FUNCTION_31(v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v48);
    OUTLINED_FUNCTION_269_0();
    OUTLINED_FUNCTION_16_0(&qword_1ECA39908);
    OUTLINED_FUNCTION_15_0(&qword_1ECA39910);
    v49 = OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353(v49, v50);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v51)
    {
      v52 = v15[30];
      a10 = v15[29];
      a11 = v15[31];
      a9 = v15[28];
      v53 = v15[26];
      v55 = v15[24];
      v54 = v15[25];
      v57 = v15[22];
      v56 = v15[23];

      (*(v56 + 8))(v55, v57);
      v58 = *(v53 + 8);
      v59 = OUTLINED_FUNCTION_258();
      v58(v59);
      (v58)(a9, v54);
      (*(v52 + 8))(a11, a10);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v68 = swift_task_alloc();
    v15[34] = v68;
    OUTLINED_FUNCTION_0_2();
    sub_1D84A6058(v69, v70, v71, &protocol conformance descriptor for $DistributedGameKitServiceProtocol);
    OUTLINED_FUNCTION_217();
    *v68 = v72;
    v68[1] = sub_1D849F7A0;
    OUTLINED_FUNCTION_337();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_50(&unk_1D85968F0);
    v74 = v17;
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v15[33] = v18;
    *v18 = v19;
    v18[1] = sub_1D849F634;
    OUTLINED_FUNCTION_169();

    return v27(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, v74, a12, a13, a14);
  }
}

uint64_t sub_1D849F634()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_334();
  v1 = *v0;
  OUTLINED_FUNCTION_37();
  *v2 = v1;

  OUTLINED_FUNCTION_341();

  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_511();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D849F7A0()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 280) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t DistributedGameKitServiceProtocol<>.listGameActivities(game:filters:excludedFilters:after:)()
{
  OUTLINED_FUNCTION_174();
  v3 = v2;
  v5 = v4;
  *(v1 + 176) = v6;
  *(v1 + 184) = v0;
  *(v1 + 160) = v7;
  *(v1 + 168) = v8;
  *(v1 + 144) = v9;
  *(v1 + 152) = v10;
  *(v1 + 136) = v11;
  v12 = sub_1D8581018();
  *(v1 + 192) = v12;
  OUTLINED_FUNCTION_39(v12);
  *(v1 + 200) = v13;
  *(v1 + 208) = OUTLINED_FUNCTION_332();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB0, &unk_1D8590C60);
  *(v1 + 216) = v14;
  OUTLINED_FUNCTION_39(v14);
  *(v1 + 224) = v15;
  *(v1 + 232) = OUTLINED_FUNCTION_332();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA398B8, &qword_1D8596318);
  *(v1 + 240) = v16;
  OUTLINED_FUNCTION_39(v16);
  *(v1 + 248) = v17;
  *(v1 + 256) = swift_task_alloc();
  *(v1 + 264) = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  *(v1 + 272) = v18;
  OUTLINED_FUNCTION_39(v18);
  *(v1 + 280) = v19;
  v20 = OUTLINED_FUNCTION_332();
  v21 = *v5;
  v22 = v5[1];
  *(v1 + 288) = v20;
  *(v1 + 296) = v21;
  *(v1 + 304) = v22;
  *(v1 + 312) = *v3;
  v23 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v23);
}

{
  OUTLINED_FUNCTION_148();
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v0 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v0);
}

uint64_t sub_1D849FC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    v15 = *(v14 + 160);
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    *(v14 + 328) = *(v14 + 112);
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v15)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v61(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12, a13, a14);
    }

    v31 = *(v14 + 304);
    *(v14 + 72) = *(v14 + 296);
    *(v14 + 80) = v31;

    v32 = OUTLINED_FUNCTION_232_0();
    OUTLINED_FUNCTION_60(v32, v33, v34, v35, v14 + 72);
    OUTLINED_FUNCTION_2_2(&qword_1ECA38BB0);
    OUTLINED_FUNCTION_2(&qword_1ECA38B40);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v36, v37);
    *(v14 + 120) = *(v14 + 144);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA398C0, &qword_1D8596320);
    v38 = OUTLINED_FUNCTION_28_0();
    OUTLINED_FUNCTION_290_0(v38, v39, v40, v41, v14 + 120);
    sub_1D84A0D94();
    sub_1D84A0EF0();
    OUTLINED_FUNCTION_150_0();
    *(v14 + 128) = *(v14 + 152);

    OUTLINED_FUNCTION_216();
    OUTLINED_FUNCTION_198();
    sub_1D8581038();
    OUTLINED_FUNCTION_150_0();
    v42 = *(v14 + 320);
    *(v14 + 88) = *(v14 + 312);
    *(v14 + 96) = v42;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB8, &unk_1D8596010);
    v43 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_214(v43, v44, v45, v46, v14 + 88);
    sub_1D84751F0();
    v47 = sub_1D8475274();
    OUTLINED_FUNCTION_31(v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v48);
    OUTLINED_FUNCTION_269_0();
    OUTLINED_FUNCTION_16_0(&qword_1ECA39908);
    OUTLINED_FUNCTION_15_0(&qword_1ECA39910);
    v49 = OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353(v49, v50);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v51)
    {
      v52 = *(v14 + 280);
      a10 = *(v14 + 272);
      a11 = *(v14 + 288);
      a9 = *(v14 + 264);
      v53 = *(v14 + 248);
      v55 = *(v14 + 232);
      v54 = *(v14 + 240);
      v57 = *(v14 + 216);
      v56 = *(v14 + 224);

      (*(v56 + 8))(v55, v57);
      v58 = *(v53 + 8);
      v59 = OUTLINED_FUNCTION_258();
      v58(v59);
      (v58)(a9, v54);
      (*(v52 + 8))(a11, a10);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    *(v14 + 336) = v68;
    *v68 = v69;
    v68[1] = sub_1D84A01E8;
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    v17 = *(v14 + 296);
    v16 = *(v14 + 304);
    *(v14 + 104) = *(v14 + 184);
    *(v14 + 40) = v17;
    *(v14 + 48) = v16;
    *(v14 + 56) = *(v14 + 312);
    OUTLINED_FUNCTION_54();
    v71 = v18 + *v18;
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    *(v14 + 352) = v19;
    *v19 = v20;
    v19[1] = sub_1D84A03D4;
    OUTLINED_FUNCTION_169();

    return v28(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, v71, a12, a13, a14);
  }
}

uint64_t sub_1D84A01E8()
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

uint64_t sub_1D84A03D4()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 360) = v0;

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

uint64_t sub_1D84A0610()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_327_0();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_535();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1D84A0690(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
  v13 = swift_task_alloc();
  v8[14] = v13;
  *v13 = v8;
  v13[1] = sub_1D84A0AB0;

  return DistributedGameKitServiceProtocol<>.listGameActivities(game:filters:excludedFilters:after:)();
}

uint64_t sub_1D84A0AB0()
{
  OUTLINED_FUNCTION_153();
  v26 = *(v0 + 104);
  OUTLINED_FUNCTION_193();
  v25 = *(v1 + 96);
  OUTLINED_FUNCTION_193();
  v3 = *(v2 + 88);
  v24 = *(v4 + 80);
  OUTLINED_FUNCTION_193();
  v23 = *(v5 + 72);
  OUTLINED_FUNCTION_193();
  v7 = *(v6 + 64);
  v22 = *(v8 + 56);
  OUTLINED_FUNCTION_193();
  v21 = *(v9 + 48);
  OUTLINED_FUNCTION_193();
  v11 = *(v10 + 40);
  v13 = v12[4];
  v14 = v12[3];
  v15 = v12[2];
  OUTLINED_FUNCTION_171_0();
  v17 = v16;
  OUTLINED_FUNCTION_37();
  *v18 = v17;

  (*(v14 + 8))(v13, v15);
  (*(v21 + 8))(v22, v11);
  (*(v23 + 8))(v24, v7);
  (*(v25 + 8))(v26, v3);

  OUTLINED_FUNCTION_317_0();

  return v19();
}

unint64_t sub_1D84A0D94()
{
  result = qword_1ECA398C8;
  if (!qword_1ECA398C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA398C0, &qword_1D8596320);
    sub_1D84A0E18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA398C8);
  }

  return result;
}

unint64_t sub_1D84A0E18()
{
  result = qword_1ECA398D0;
  if (!qword_1ECA398D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA398D8, &qword_1D8596328);
    sub_1D84A0E9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA398D0);
  }

  return result;
}

unint64_t sub_1D84A0E9C()
{
  result = qword_1ECA398E0;
  if (!qword_1ECA398E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA398E0);
  }

  return result;
}

unint64_t sub_1D84A0EF0()
{
  result = qword_1ECA398E8;
  if (!qword_1ECA398E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA398C0, &qword_1D8596320);
    sub_1D84A0F74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA398E8);
  }

  return result;
}

unint64_t sub_1D84A0F74()
{
  result = qword_1ECA398F0;
  if (!qword_1ECA398F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA398D8, &qword_1D8596328);
    sub_1D84A0FF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA398F0);
  }

  return result;
}

unint64_t sub_1D84A0FF8()
{
  result = qword_1ECA398F8;
  if (!qword_1ECA398F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA398F8);
  }

  return result;
}

uint64_t sub_1D84A104C()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_31_0(&unk_1D85968E8);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_42_0(v1);

  return v4(v3);
}

uint64_t sub_1D84A10D8(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1D8581018();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39918, &qword_1D8596348);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84A1200);
}

uint64_t sub_1D84A1200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_24(&unk_1D85968E8);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_201_0(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_27_0(v16);
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_69_0();
  v14 = type metadata accessor for $DistributedGameKitServiceProtocol();
  OUTLINED_FUNCTION_91(v14);
  if (v12)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_175_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39920, &qword_1D8596350);
  v27 = OUTLINED_FUNCTION_280_0();
  OUTLINED_FUNCTION_34_0(v27, v28, v29, v30, v13 + 40);
  sub_1D84A214C();
  v31 = sub_1D84A21FC();
  OUTLINED_FUNCTION_31(v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39950, &qword_1D8596360);
  sub_1D84A22AC();
  sub_1D84A23E8();
  v33 = OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_353(v33, v34);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v35)
  {
    OUTLINED_FUNCTION_453();
    v36 = OUTLINED_FUNCTION_49_0();
    v37(v36);
    OUTLINED_FUNCTION_331();

LABEL_9:
    OUTLINED_FUNCTION_258_0();

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v38 = swift_task_alloc();
  OUTLINED_FUNCTION_203_0(v38);
  OUTLINED_FUNCTION_0_2();
  sub_1D84A6058(v39, v40, v41, &protocol conformance descriptor for $DistributedGameKitServiceProtocol);
  OUTLINED_FUNCTION_98();
  *(v13 + 16) = v42;
  OUTLINED_FUNCTION_419();
  OUTLINED_FUNCTION_9_0(v43);
  OUTLINED_FUNCTION_118_0();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t sub_1D84A1480()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D84A1578()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_519();
  v0 = OUTLINED_FUNCTION_77();
  v1(v0);
  v2 = OUTLINED_FUNCTION_80();
  v3(v2);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_511();

  return v6(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1D84A1620()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_519();
  v0 = OUTLINED_FUNCTION_77();
  v1(v0);
  v2 = OUTLINED_FUNCTION_80();
  v3(v2);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_511();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t DistributedGameKitServiceProtocol<>.describeGameActivities(activities:)()
{
  OUTLINED_FUNCTION_148();
  v5 = OUTLINED_FUNCTION_371(v1, v2, v3, v4);
  v0[14] = v5;
  OUTLINED_FUNCTION_39(v5);
  v0[15] = v6;
  v0[16] = OUTLINED_FUNCTION_332();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39918, &qword_1D8596348);
  OUTLINED_FUNCTION_29(v7);
  v0[18] = v8;
  v0[19] = OUTLINED_FUNCTION_332();
  v9 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v9);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_250(v0, v1, v2);
  OUTLINED_FUNCTION_198();
  v3 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1D84A17B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_110_0();
    OUTLINED_FUNCTION_90();
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_12:
      OUTLINED_FUNCTION_168_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14);
    }

    OUTLINED_FUNCTION_174_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39920, &qword_1D8596350);
    v29 = OUTLINED_FUNCTION_280_0();
    OUTLINED_FUNCTION_34_0(v29, v30, v31, v32, v15 + 56);
    sub_1D84A214C();
    v33 = sub_1D84A21FC();
    OUTLINED_FUNCTION_31(v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39950, &qword_1D8596360);
    sub_1D84A22AC();
    sub_1D84A23E8();
    v35 = OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353(v35, v36);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v37)
    {
      OUTLINED_FUNCTION_452();
      v38 = OUTLINED_FUNCTION_49_0();
      v39(v38);
      OUTLINED_FUNCTION_331();

      goto LABEL_12;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v48 = swift_task_alloc();
    v49 = OUTLINED_FUNCTION_90_0(v48);
    *v49 = v50;
    OUTLINED_FUNCTION_294(v49);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_54();
    v52 = v16 + *v16;
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_286(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_17(v18);
    OUTLINED_FUNCTION_169();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, v52, a12, a13, a14);
  }
}

uint64_t sub_1D84A1A80()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D84A1B78()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_518();
  v0 = OUTLINED_FUNCTION_77();
  v1(v0);
  v2 = OUTLINED_FUNCTION_80();
  v3(v2);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_243_0();

  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_511();

  return v6(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1D84A1C1C()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_95();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 192) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {
    OUTLINED_FUNCTION_255();

    v8 = OUTLINED_FUNCTION_56_0();

    return v9(v8);
  }
}

uint64_t sub_1D84A1D48()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_518();
  v0 = OUTLINED_FUNCTION_77();
  v1(v0);
  v2 = OUTLINED_FUNCTION_80();
  v3(v2);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_243_0();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_511();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1D84A1DEC()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_243_0();

  OUTLINED_FUNCTION_146();

  return v0();
}

uint64_t sub_1D84A1E50(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
  v10[1] = sub_1D84A1FE0;

  return DistributedGameKitServiceProtocol<>.describeGameActivities(activities:)();
}

uint64_t sub_1D84A1FE0()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_171_0();
  *v0 = v1;
  OUTLINED_FUNCTION_476(v2, v3);
  v4 = OUTLINED_FUNCTION_188();
  v5(v4);

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_535();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

unint64_t sub_1D84A214C()
{
  result = qword_1ECA39928;
  if (!qword_1ECA39928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39920, &qword_1D8596350);
    sub_1D844A16C(&qword_1ECA39930, &qword_1ECA39938, &qword_1D8596358, &protocol conformance descriptor for Ref<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39928);
  }

  return result;
}

unint64_t sub_1D84A21FC()
{
  result = qword_1ECA39940;
  if (!qword_1ECA39940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39920, &qword_1D8596350);
    sub_1D844A16C(&qword_1ECA39948, &qword_1ECA39938, &qword_1D8596358, &protocol conformance descriptor for Ref<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39940);
  }

  return result;
}

unint64_t sub_1D84A22AC()
{
  result = qword_1ECA39958;
  if (!qword_1ECA39958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39950, &qword_1D8596360);
    sub_1D84A2330();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39958);
  }

  return result;
}

unint64_t sub_1D84A2330()
{
  result = qword_1ECA39960;
  if (!qword_1ECA39960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39968, &qword_1D8596368);
    sub_1D84A6058(&qword_1ECA39970, 255, type metadata accessor for GameActivityInstance, &protocol conformance descriptor for GameActivityInstance);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39960);
  }

  return result;
}

unint64_t sub_1D84A23E8()
{
  result = qword_1ECA39978;
  if (!qword_1ECA39978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39950, &qword_1D8596360);
    sub_1D84A246C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39978);
  }

  return result;
}

unint64_t sub_1D84A246C()
{
  result = qword_1ECA39980;
  if (!qword_1ECA39980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39968, &qword_1D8596368);
    sub_1D84A6058(&qword_1ECA39988, 255, type metadata accessor for GameActivityInstance, &protocol conformance descriptor for GameActivityInstance);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39980);
  }

  return result;
}

uint64_t sub_1D84A2524()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_259_0(&qword_1D85968E0);
  v8 = v0;
  v2 = *v1;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_64(v4);

  return v8(v6, v2);
}

uint64_t sub_1D84A25C4(uint64_t a1, char a2)
{
  *(v3 + 177) = a2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v2;
  v4 = sub_1D8581018();
  *(v3 + 56) = v4;
  *(v3 + 64) = *(v4 - 8);
  *(v3 + 72) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39990, &qword_1D8596380);
  *(v3 + 80) = v5;
  *(v3 + 88) = *(v5 - 8);
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = type metadata accessor for GameActivityInstance(0);
  *(v3 + 112) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39998, &qword_1D8596388);
  *(v3 + 120) = v6;
  *(v3 + 128) = *(v6 - 8);
  *(v3 + 136) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84A2788);
}

uint64_t sub_1D84A2788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_426();
  OUTLINED_FUNCTION_177();
  if (swift_distributed_actor_is_remote())
  {
    *(v15 + 144) = OUTLINED_FUNCTION_157_0();
    OUTLINED_FUNCTION_354();
    v16 = type metadata accessor for $DistributedGameKitServiceProtocol();
    OUTLINED_FUNCTION_91(v16);
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_240();

      return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12);
    }

    sub_1D84A3A34(*(v15 + 40), *(v15 + 112));
    OUTLINED_FUNCTION_72_0();
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_233_0(v27, v28, v29, &protocol conformance descriptor for GameActivityInstance);
    v30 = OUTLINED_FUNCTION_61_0(&qword_1ECA39988);
    OUTLINED_FUNCTION_31(v30);
    *(v15 + 176) = *(v15 + 177);
    v31 = OUTLINED_FUNCTION_325_0();
    OUTLINED_FUNCTION_51_1(v31, v32, v33, v34, v15 + 176);
    sub_1D84A3A98();
    v35 = sub_1D84A3AEC();
    OUTLINED_FUNCTION_31(v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v36);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v37)
    {

      v38 = OUTLINED_FUNCTION_52();
      v39(v38);
      v40 = OUTLINED_FUNCTION_51_0();
      v41(v40);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    OUTLINED_FUNCTION_343_0(v50, v51);
    v52 = swift_task_alloc();
    *(v15 + 160) = v52;
    OUTLINED_FUNCTION_0_2();
    sub_1D84A6058(v53, v54, v55, &protocol conformance descriptor for $DistributedGameKitServiceProtocol);
    OUTLINED_FUNCTION_81();
    *v52 = v56;
    v52[1] = sub_1D84A2BFC;
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_240();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v57, v58, v59, v60, v61, v62, v63);
  }

  else
  {
    OUTLINED_FUNCTION_24(&qword_1D85968E0);
    v17 = swift_task_alloc();
    *(v15 + 152) = v17;
    *v17 = v15;
    v17[1] = sub_1D84A2AAC;
    OUTLINED_FUNCTION_121_0(*(v15 + 40));
    OUTLINED_FUNCTION_240();

    return v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }
}

uint64_t sub_1D84A2AAC()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_334();
  v1 = *v0;
  OUTLINED_FUNCTION_37();
  *v2 = v1;

  OUTLINED_FUNCTION_341();

  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_535();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D84A2BFC()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D84A2CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_306_0();
  v12 = OUTLINED_FUNCTION_67();
  v13(v12);
  v14 = OUTLINED_FUNCTION_69();
  v15(v14);
  v16 = OUTLINED_FUNCTION_68();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1D84A2DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_306_0();
  v12 = OUTLINED_FUNCTION_67();
  v13(v12);
  v14 = OUTLINED_FUNCTION_69();
  v15(v14);
  v16 = OUTLINED_FUNCTION_68();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t DistributedGameKitServiceProtocol<>.createOrUpdateGameActivity(activity:context:)()
{
  OUTLINED_FUNCTION_148();
  v3 = v2;
  *(v1 + 80) = v4;
  *(v1 + 88) = v0;
  *(v1 + 64) = v5;
  *(v1 + 72) = v6;
  *(v1 + 56) = v7;
  v8 = sub_1D8581018();
  *(v1 + 96) = v8;
  OUTLINED_FUNCTION_39(v8);
  *(v1 + 104) = v9;
  *(v1 + 112) = OUTLINED_FUNCTION_332();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39990, &qword_1D8596380);
  *(v1 + 120) = v10;
  OUTLINED_FUNCTION_39(v10);
  *(v1 + 128) = v11;
  *(v1 + 136) = OUTLINED_FUNCTION_332();
  *(v1 + 144) = type metadata accessor for GameActivityInstance(0);
  *(v1 + 152) = OUTLINED_FUNCTION_332();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39998, &qword_1D8596388);
  *(v1 + 160) = v12;
  OUTLINED_FUNCTION_39(v12);
  *(v1 + 168) = v13;
  *(v1 + 176) = OUTLINED_FUNCTION_332();
  *(v1 + 226) = *v3;
  v14 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v14);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4);
}

uint64_t sub_1D84A3020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_427();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    v15 = *(v14 + 64);
    OUTLINED_FUNCTION_83_0();
    *(v14 + 184) = *(v14 + 48);
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v15)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_239();

      return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14);
    }

    sub_1D84A3A34(*(v14 + 56), *(v14 + 152));
    OUTLINED_FUNCTION_72_0();
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_233_0(v28, v29, v30, &protocol conformance descriptor for GameActivityInstance);
    v31 = OUTLINED_FUNCTION_61_0(&qword_1ECA39988);
    OUTLINED_FUNCTION_31(v31);
    *(v14 + 225) = *(v14 + 226);
    v32 = OUTLINED_FUNCTION_325_0();
    OUTLINED_FUNCTION_51_1(v32, v33, v34, v35, v14 + 225);
    sub_1D84A3A98();
    v36 = sub_1D84A3AEC();
    OUTLINED_FUNCTION_31(v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v37);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v38)
    {

      v39 = OUTLINED_FUNCTION_52();
      v40(v39);
      v41 = OUTLINED_FUNCTION_51_0();
      v42(v41);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    OUTLINED_FUNCTION_343_0(v51, v52);
    v53 = swift_task_alloc();
    *(v14 + 192) = v53;
    *v53 = v14;
    v53[1] = sub_1D84A33A4;
    OUTLINED_FUNCTION_53(*(v14 + 88));
    OUTLINED_FUNCTION_239();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v54, v55, v56, v57, v58, v59, v60);
  }

  else
  {
    v16 = *(v14 + 226);
    *(v14 + 40) = *(v14 + 88);
    *(v14 + 224) = v16;
    OUTLINED_FUNCTION_54();
    v62 = v17 + *v17;
    v18 = swift_task_alloc();
    *(v14 + 208) = v18;
    *v18 = v14;
    v18[1] = sub_1D84A3570;
    OUTLINED_FUNCTION_108_0(*(v14 + 56));
    OUTLINED_FUNCTION_239();

    return v23(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, v62, a12, a13, a14);
  }
}

uint64_t sub_1D84A33A4()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D84A349C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_246_0(*(v12 + 184));
  v13 = OUTLINED_FUNCTION_67();
  v14(v13);
  v15 = OUTLINED_FUNCTION_69();
  v16(v15);
  v17 = OUTLINED_FUNCTION_68();
  v18(v17);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_173();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t sub_1D84A3570()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 216) = v0;

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

uint64_t sub_1D84A36BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_246_0(*(v12 + 184));
  v13 = OUTLINED_FUNCTION_67();
  v14(v13);
  v15 = OUTLINED_FUNCTION_69();
  v16(v15);
  v17 = OUTLINED_FUNCTION_68();
  v18(v17);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_338_0();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t sub_1D84A3784()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_338_0();

  OUTLINED_FUNCTION_146();

  return v0();
}

uint64_t sub_1D84A37FC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a2;
  v8[2] = *a2;
  v8[3] = *(v10 - 8);
  v8[4] = swift_task_alloc();
  sub_1D8580F88();
  v11 = a2[1];
  v8[5] = v11;
  v8[6] = *(v11 - 8);
  v8[7] = swift_task_alloc();
  sub_1D8580F88();
  v12 = swift_task_alloc();
  v8[8] = v12;
  *v12 = v8;
  v12[1] = sub_1D847472C;

  return DistributedGameKitServiceProtocol<>.createOrUpdateGameActivity(activity:context:)();
}

uint64_t sub_1D84A3A34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameActivityInstance(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D84A3A98()
{
  result = qword_1ECA399A0;
  if (!qword_1ECA399A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA399A0);
  }

  return result;
}

unint64_t sub_1D84A3AEC()
{
  result = qword_1ECA399A8;
  if (!qword_1ECA399A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA399A8);
  }

  return result;
}

uint64_t sub_1D84A3B40()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_24(&unk_1D85968D8);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_104_0(v1);

  return v4(v3);
}

uint64_t sub_1D84A3BD0(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_1D8581018();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE0, &qword_1D8590E40);
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = type metadata accessor for GameActivityInstance(0);
  v3[16] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39998, &qword_1D8596388);
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84A3D94);
}

uint64_t sub_1D84A3D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_426();
  OUTLINED_FUNCTION_177();
  if (swift_distributed_actor_is_remote())
  {
    v15[20] = OUTLINED_FUNCTION_157_0();
    OUTLINED_FUNCTION_354();
    v16 = type metadata accessor for $DistributedGameKitServiceProtocol();
    OUTLINED_FUNCTION_91(v16);
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_168_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_240();

      return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12);
    }

    sub_1D84A3A34(v15[6], v15[16]);
    OUTLINED_FUNCTION_72_0();
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_233_0(v27, v28, v29, &protocol conformance descriptor for GameActivityInstance);
    v30 = OUTLINED_FUNCTION_61_0(&qword_1ECA39988);
    OUTLINED_FUNCTION_31(v30);
    v31 = OUTLINED_FUNCTION_253_0();
    OUTLINED_FUNCTION_340_0(v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E10, &qword_1D8590D20);
    OUTLINED_FUNCTION_121();
    OUTLINED_FUNCTION_219_0(16);
    sub_1D8581038();
    sub_1D84769B4();
    v32 = sub_1D8476AE8();
    OUTLINED_FUNCTION_31(v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v33);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v34)
    {

      v35 = OUTLINED_FUNCTION_52();
      v36(v35);
      v37 = OUTLINED_FUNCTION_51_0();
      v38(v37);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    sub_1D8581028();
    v47 = swift_task_alloc();
    v15[22] = v47;
    OUTLINED_FUNCTION_0_2();
    sub_1D84A6058(v48, v49, v50, &protocol conformance descriptor for $DistributedGameKitServiceProtocol);
    OUTLINED_FUNCTION_81();
    *v47 = v51;
    v47[1] = sub_1D84A4228;
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_240();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v52, v53, v54, v55, v56, v57, v58);
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D85968D8);
    v17 = swift_task_alloc();
    v15[21] = v17;
    *v17 = v15;
    v17[1] = sub_1D84A40D8;
    OUTLINED_FUNCTION_121_0(v15[6]);
    OUTLINED_FUNCTION_240();

    return v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }
}

uint64_t sub_1D84A40D8()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_334();
  v1 = *v0;
  OUTLINED_FUNCTION_37();
  *v2 = v1;

  OUTLINED_FUNCTION_341();

  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_535();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D84A4228()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 184) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D84A4320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_297_0();
  v12 = OUTLINED_FUNCTION_67();
  v13(v12);
  v14 = OUTLINED_FUNCTION_69();
  v15(v14);
  v16 = OUTLINED_FUNCTION_68();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_168_0();

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1D84A43E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_297_0();
  v12 = OUTLINED_FUNCTION_67();
  v13(v12);
  v14 = OUTLINED_FUNCTION_69();
  v15(v14);
  v16 = OUTLINED_FUNCTION_68();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_243_0();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t DistributedGameKitServiceProtocol<>.shareGameActivity(activity:receivingPlayers:)()
{
  OUTLINED_FUNCTION_148();
  v1[12] = v2;
  v1[13] = v0;
  v1[10] = v3;
  v1[11] = v4;
  v1[8] = v5;
  v1[9] = v6;
  v7 = sub_1D8581018();
  v1[14] = v7;
  OUTLINED_FUNCTION_39(v7);
  v1[15] = v8;
  v1[16] = OUTLINED_FUNCTION_332();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE0, &qword_1D8590E40);
  OUTLINED_FUNCTION_29(v9);
  v1[18] = v10;
  v1[19] = OUTLINED_FUNCTION_332();
  v1[20] = type metadata accessor for GameActivityInstance(0);
  v1[21] = OUTLINED_FUNCTION_332();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39998, &qword_1D8596388);
  v1[22] = v11;
  OUTLINED_FUNCTION_39(v11);
  v1[23] = v12;
  v1[24] = OUTLINED_FUNCTION_332();
  v13 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v13);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4);
}

uint64_t sub_1D84A4634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_427();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_73();
    v15[25] = v15[6];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_239();

      return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
    }

    sub_1D84A3A34(v15[8], v15[21]);
    OUTLINED_FUNCTION_72_0();
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_233_0(v27, v28, v29, &protocol conformance descriptor for GameActivityInstance);
    v30 = OUTLINED_FUNCTION_61_0(&qword_1ECA39988);
    OUTLINED_FUNCTION_31(v30);
    v31 = OUTLINED_FUNCTION_254_0();
    OUTLINED_FUNCTION_341_0(v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E10, &qword_1D8590D20);
    OUTLINED_FUNCTION_121();
    OUTLINED_FUNCTION_219_0(16);
    sub_1D8581038();
    sub_1D84769B4();
    v32 = sub_1D8476AE8();
    OUTLINED_FUNCTION_31(v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v33);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v34)
    {

      v35 = OUTLINED_FUNCTION_52();
      v36(v35);
      v37 = OUTLINED_FUNCTION_51_0();
      v38(v37);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    sub_1D8581028();
    v47 = swift_task_alloc();
    v15[26] = v47;
    *v47 = v15;
    v47[1] = sub_1D84A49D0;
    OUTLINED_FUNCTION_53(v15[13]);
    OUTLINED_FUNCTION_239();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v48, v49, v50, v51, v52, v53, v54);
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_54();
    v56 = v16 + *v16;
    v17 = swift_task_alloc();
    v15[28] = v17;
    *v17 = v15;
    v17[1] = sub_1D84A4B94;
    OUTLINED_FUNCTION_65_1(v15[8]);
    OUTLINED_FUNCTION_183_0();
    OUTLINED_FUNCTION_239();

    return v22(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, v56, a12, a13, a14);
  }
}

uint64_t sub_1D84A49D0()
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

uint64_t sub_1D84A4AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_296_0();
  v12 = OUTLINED_FUNCTION_67();
  v13(v12);
  v14 = OUTLINED_FUNCTION_69();
  v15(v14);
  v16 = OUTLINED_FUNCTION_68();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1D84A4B94()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 232) = v0;

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

uint64_t sub_1D84A4CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_296_0();
  v12 = OUTLINED_FUNCTION_67();
  v13(v12);
  v14 = OUTLINED_FUNCTION_69();
  v15(v14);
  v16 = OUTLINED_FUNCTION_68();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_274_0();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1D84A4DAC()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_274_0();

  OUTLINED_FUNCTION_146();

  return v0();
}

uint64_t sub_1D84A4E30(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a2;
  v8[2] = *a2;
  v8[3] = *(v10 - 8);
  v8[4] = swift_task_alloc();
  sub_1D8580F88();
  v11 = a2[1];
  v8[5] = v11;
  v8[6] = *(v11 - 8);
  v8[7] = swift_task_alloc();
  sub_1D8580F88();
  v12 = swift_task_alloc();
  v8[8] = v12;
  *v12 = v8;
  v12[1] = sub_1D847472C;

  return DistributedGameKitServiceProtocol<>.shareGameActivity(activity:receivingPlayers:)();
}

uint64_t sub_1D84A506C()
{
  type metadata accessor for $DistributedGameKitServiceProtocol();
  OUTLINED_FUNCTION_0_2();
  sub_1D84A6058(v0, v1, v2, &protocol conformance descriptor for $DistributedGameKitServiceProtocol);
  v3 = OUTLINED_FUNCTION_188();

  return MEMORY[0x1EEE6CC98](v3);
}

uint64_t sub_1D84A50E0(uint64_t a1)
{
  type metadata accessor for $DistributedGameKitServiceProtocol();
  OUTLINED_FUNCTION_0_2();
  sub_1D84A6058(v1, v2, v3, &protocol conformance descriptor for $DistributedGameKitServiceProtocol);
  sub_1D843D180();
  return sub_1D8580FD8();
}

uint64_t sub_1D84A5164@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for $DistributedGameKitServiceProtocol();
  OUTLINED_FUNCTION_0_2();
  sub_1D84A6058(v3, v4, v5, &protocol conformance descriptor for $DistributedGameKitServiceProtocol);
  sub_1D843EE3C();
  OUTLINED_FUNCTION_221();
  result = sub_1D8580FE8();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D84A5FA0(uint64_t a1)
{
  OUTLINED_FUNCTION_0_2();
  result = sub_1D84A6058(v2, v3, v4, &protocol conformance descriptor for $DistributedGameKitServiceProtocol);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D84A6058(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t dispatch thunk of GameKitServiceProtocol.describeAchievements(achievements:)()
{
  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_296(v0, v1, v2);
  OUTLINED_FUNCTION_131();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_12_0(v4);
  OUTLINED_FUNCTION_309_1();

  return v9(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t dispatch thunk of GameKitServiceProtocol.listAchievements(games:after:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
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

uint64_t dispatch thunk of GameKitServiceProtocol.getAchievementsProgresses(achievements:player:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
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

uint64_t dispatch thunk of GameKitServiceProtocol.resetAchievementsProgress(achievements:players:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
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

uint64_t dispatch thunk of GameKitServiceProtocol.revealAchievements(achievements:players:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
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

uint64_t dispatch thunk of GameKitServiceProtocol.submitAchievementsProgress(progress:)()
{
  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_296(v0, v1, v2);
  OUTLINED_FUNCTION_131();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_12_0(v4);
  OUTLINED_FUNCTION_309_1();

  return v9(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t dispatch thunk of GameKitServiceProtocol.describeLeaderboards(leaderboards:)()
{
  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_296(v0, v1, v2);
  OUTLINED_FUNCTION_131();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_12_0(v4);
  OUTLINED_FUNCTION_309_1();

  return v9(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t dispatch thunk of GameKitServiceProtocol.listLeaderboardEntries(leaderboards:range:locale:timeScope:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_426();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_220_1(v12, v13, v14, v15, v16, v17, v18);
  OUTLINED_FUNCTION_131();
  v33 = v19 + *v19;
  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_176(v20);
  *v21 = v22;
  OUTLINED_FUNCTION_191(v21);
  OUTLINED_FUNCTION_230_0();
  OUTLINED_FUNCTION_240();

  return v30(v23, v24, v25, v26, v27, v28, v29, v30, a9, v33, a11, a12);
}

uint64_t dispatch thunk of GameKitServiceProtocol.listLeaderboardEntries(leaderboards:players:locale:timeScope:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_163(v12, v13, v14, v15, v16, v17);
  OUTLINED_FUNCTION_54();
  v32 = v18 + *v18;
  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_176(v19);
  *v20 = v21;
  OUTLINED_FUNCTION_191(v20);
  OUTLINED_FUNCTION_85_0();
  OUTLINED_FUNCTION_207();

  return v28(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, v32, a12);
}

uint64_t dispatch thunk of GameKitServiceProtocol.listLeaderboards(games:players:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
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

uint64_t dispatch thunk of GameKitServiceProtocol.submitLeaderboardEntries(entries:)()
{
  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_296(v0, v1, v2);
  OUTLINED_FUNCTION_131();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_12_0(v4);
  OUTLINED_FUNCTION_309_1();

  return v9(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t dispatch thunk of GameKitServiceProtocol.describeLeaderboardSets(leaderboardSets:)()
{
  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_296(v0, v1, v2);
  OUTLINED_FUNCTION_131();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_12_0(v4);
  OUTLINED_FUNCTION_309_1();

  return v9(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t dispatch thunk of GameKitServiceProtocol.listLeaderboardSets(games:)()
{
  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_296(v0, v1, v2);
  OUTLINED_FUNCTION_131();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_12_0(v4);
  OUTLINED_FUNCTION_309_1();

  return v9(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t dispatch thunk of GameKitServiceProtocol.listLeaderboards(leaderboardSets:)()
{
  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_296(v0, v1, v2);
  OUTLINED_FUNCTION_131();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_12_0(v4);
  OUTLINED_FUNCTION_309_1();

  return v9(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t dispatch thunk of GameKitServiceProtocol.refreshChallengeDefinitions(game:filters:scope:)()
{
  OUTLINED_FUNCTION_219();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_131();
  v15 = (v10 + *v10);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_176(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_191(v12);

  return v15(v9, v7, v5, v3, v1);
}

uint64_t dispatch thunk of GameKitServiceProtocol.refreshChallengeDefinitions(game:filters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
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

uint64_t dispatch thunk of GameKitServiceProtocol.refreshChallengeDefinitions(challengeDefinitions:scope:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
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

uint64_t dispatch thunk of GameKitServiceProtocol.listChallengeDefinitions(game:filters:after:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_163(v12, v13, v14, v15, v16, v17);
  OUTLINED_FUNCTION_54();
  v32 = v18 + *v18;
  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_97(v19);
  *v20 = v21;
  v20[1] = sub_1D8442F30;
  OUTLINED_FUNCTION_85_0();
  OUTLINED_FUNCTION_207();

  return v28(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, v32, a12);
}

uint64_t dispatch thunk of GameKitServiceProtocol.describeChallengeDefinitions(challengeDefinitions:)()
{
  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_296(v0, v1, v2);
  OUTLINED_FUNCTION_131();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_12_0(v4);
  OUTLINED_FUNCTION_309_1();

  return v9(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t dispatch thunk of GameKitServiceProtocol.refreshChallenges(player:filters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
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

uint64_t dispatch thunk of GameKitServiceProtocol.listChallenges(player:filters:after:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_163(v12, v13, v14, v15, v16, v17);
  OUTLINED_FUNCTION_54();
  v32 = v18 + *v18;
  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_97(v19);
  *v20 = v21;
  v20[1] = sub_1D8442F30;
  OUTLINED_FUNCTION_85_0();
  OUTLINED_FUNCTION_207();

  return v28(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, v32, a12);
}

uint64_t dispatch thunk of GameKitServiceProtocol.describeChallenges(challenges:)()
{
  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_296(v0, v1, v2);
  OUTLINED_FUNCTION_131();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_12_0(v4);
  OUTLINED_FUNCTION_309_1();

  return v9(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t dispatch thunk of GameKitServiceProtocol.refreshGameActivity(game:scope:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
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

uint64_t dispatch thunk of GameKitServiceProtocol.refreshGameActivity(game:)()
{
  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_296(v0, v1, v2);
  OUTLINED_FUNCTION_131();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_12_0(v4);
  OUTLINED_FUNCTION_309_1();

  return v9(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t dispatch thunk of GameKitServiceProtocol.listGameActivityDefinitions(game:filters:after:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_163(v12, v13, v14, v15, v16, v17);
  OUTLINED_FUNCTION_54();
  v32 = v18 + *v18;
  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_97(v19);
  *v20 = v21;
  v20[1] = sub_1D8442F30;
  OUTLINED_FUNCTION_85_0();
  OUTLINED_FUNCTION_207();

  return v28(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, v32, a12);
}

uint64_t dispatch thunk of GameKitServiceProtocol.describeGameActivityDefinitions(gameActivityDefinitions:)()
{
  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_296(v0, v1, v2);
  OUTLINED_FUNCTION_131();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_12_0(v4);
  OUTLINED_FUNCTION_309_1();

  return v9(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t dispatch thunk of GameKitServiceProtocol.describeGameActivities(activities:)()
{
  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_296(v0, v1, v2);
  OUTLINED_FUNCTION_131();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_12_0(v4);
  OUTLINED_FUNCTION_309_1();

  return v9(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t dispatch thunk of GameKitServiceProtocol.createOrUpdateGameActivity(activity:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
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

uint64_t dispatch thunk of GameKitServiceProtocol.shareGameActivity(activity:receivingPlayers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
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

uint64_t OUTLINED_FUNCTION_15_0(unint64_t *a1)
{

  return sub_1D844A16C(a1, v1, v2, &protocol conformance descriptor for Page<A>);
}

uint64_t OUTLINED_FUNCTION_16_0(unint64_t *a1)
{

  return sub_1D844A16C(a1, v1, v2, &protocol conformance descriptor for Page<A>);
}

uint64_t OUTLINED_FUNCTION_25_0()
{
  v2 = *(v1 + 96);
  *(v1 + 40) = v0;
  return *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_61_0(unint64_t *a1)
{

  return sub_1D84A6058(a1, 255, v1, &protocol conformance descriptor for GameActivityInstance);
}

uint64_t OUTLINED_FUNCTION_67_0(uint64_t a1, uint64_t a2)
{

  return sub_1D8581038();
}

uint64_t OUTLINED_FUNCTION_76_0(uint64_t a1, uint64_t a2)
{

  return sub_1D8581038();
}

uint64_t OUTLINED_FUNCTION_102_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1D8581038();
}

uint64_t OUTLINED_FUNCTION_150_0()
{

  return GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v1, v0);
}

uint64_t OUTLINED_FUNCTION_174_0()
{
  *(v0 + 56) = *(v0 + 72);
}

uint64_t OUTLINED_FUNCTION_192_0(unint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E66B0];

  return sub_1D848CA5C(a1, a2, v3);
}

uint64_t OUTLINED_FUNCTION_193_0(unint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E66E0];

  return sub_1D848CA5C(a1, a2, v3);
}

uint64_t OUTLINED_FUNCTION_210_0()
{
}

uint64_t OUTLINED_FUNCTION_229_0()
{
}

uint64_t OUTLINED_FUNCTION_233_0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1D84A6058(a1, 255, v4, a4);
}

uint64_t OUTLINED_FUNCTION_238_0()
{
}

uint64_t OUTLINED_FUNCTION_244_0()
{
  *(v0 + 56) = *(v0 + 72);
}

uint64_t OUTLINED_FUNCTION_246_0(uint64_t a1)
{
}

uint64_t OUTLINED_FUNCTION_247_0()
{
}

uint64_t OUTLINED_FUNCTION_258_0()
{
}

uint64_t OUTLINED_FUNCTION_267_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1D8581038();
}

uint64_t OUTLINED_FUNCTION_269_0()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_288_0()
{
}

uint64_t OUTLINED_FUNCTION_290_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1D8581038();
}

uint64_t OUTLINED_FUNCTION_294_0(uint64_t a1, uint64_t a2)
{

  return sub_1D8581028();
}

uint64_t OUTLINED_FUNCTION_296_0()
{
}

uint64_t OUTLINED_FUNCTION_297_0()
{
}

uint64_t OUTLINED_FUNCTION_298_0()
{
}

uint64_t OUTLINED_FUNCTION_300_0()
{
}

uint64_t OUTLINED_FUNCTION_306_0()
{
}

uint64_t OUTLINED_FUNCTION_307_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[13] = a1;

  return sub_1D8581018();
}

uint64_t OUTLINED_FUNCTION_327_0()
{
}

uint64_t OUTLINED_FUNCTION_336_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[13] = a5;
  v6[14] = v5;
  v6[11] = a3;
  v6[12] = a4;
  v6[9] = a1;
  v6[10] = a2;

  return sub_1D8581018();
}

uint64_t OUTLINED_FUNCTION_338_0()
{
}

uint64_t OUTLINED_FUNCTION_340_0(uint64_t a1)
{
  *(v1 + 40) = a1;
}

uint64_t OUTLINED_FUNCTION_342_0(uint64_t a1, uint64_t a2)
{

  return sub_1D8581028();
}

uint64_t OUTLINED_FUNCTION_343_0(uint64_t a1, uint64_t a2)
{

  return sub_1D8581028();
}

uint64_t OUTLINED_FUNCTION_344_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1D8580FA8();
}

uint64_t OUTLINED_FUNCTION_345_0(uint64_t a1, uint64_t a2)
{

  return GameServicesActorSystem.JSONInvocationEncoder.recordReturnType<A>(_:)(a1, a2);
}

uint64_t static GameServiceChangeEventType.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      sub_1D84A8658(*a2, 0);
      sub_1D84A8658(v2, 0);
      v5 = sub_1D84A8680(v2, v4, &qword_1ECA38A78, &unk_1D85A22B0, &qword_1ECA399C8);
      sub_1D84A866C(v2, 0);
      v6 = v4;
      v7 = 0;
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  if (v3 != 1)
  {
    if (v5 == 2 && v4 == 0)
    {
      sub_1D84A866C(*a1, 2u);
      sub_1D84A866C(0, 2u);
      LOBYTE(v5) = 1;
      return v5 & 1;
    }

    goto LABEL_12;
  }

  if (v5 != 1)
  {
LABEL_12:
    sub_1D84A8658(*a2, *(a2 + 8));
    sub_1D84A8658(v2, v3);
    sub_1D84A866C(v2, v3);
    sub_1D84A866C(v4, v5);
    LOBYTE(v5) = 0;
    return v5 & 1;
  }

  sub_1D84A8658(*a2, 1u);
  sub_1D84A8658(v2, 1u);
  LOBYTE(v5) = sub_1D84A8680(v2, v4, &qword_1ECA38B48, &qword_1D8590B40, &qword_1ECA399D0);
  sub_1D84A866C(v2, 1u);
  v6 = v4;
  v7 = 1;
LABEL_7:
  sub_1D84A866C(v6, v7);
  return v5 & 1;
}

uint64_t sub_1D84A8658(uint64_t result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return v2;
}

uint64_t sub_1D84A866C(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1D84A8680(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v5 = *(a1 + 16);
  if (v5 == *(a2 + 16))
  {
    if (!v5 || a1 == a2)
    {
      v13 = 1;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
      sub_1D844A16C(a5, a3, a4, &protocol conformance descriptor for Ref<A>);
      v11 = a1 + 40;
      v12 = a2 + 40;
      do
      {

        v13 = sub_1D8581208();

        if ((v13 & 1) == 0)
        {
          break;
        }

        v11 += 16;
        v12 += 16;
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t GameServiceChangeEventType.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (!*(v1 + 8))
  {
    MEMORY[0x1DA7191F0](0);
    v4 = &qword_1ECA38A78;
    v5 = &unk_1D85A22B0;
    v6 = &unk_1ECA38AA0;
    return sub_1D84A89BC(a1, v3, v4, v5, v6);
  }

  if (*(v1 + 8) == 1)
  {
    MEMORY[0x1DA7191F0](1);
    v4 = &qword_1ECA38B48;
    v5 = &qword_1D8590B40;
    v6 = &unk_1ECA38B60;
    return sub_1D84A89BC(a1, v3, v4, v5, v6);
  }

  return MEMORY[0x1DA7191F0](2);
}

uint64_t GameServiceChangeEventType.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1D8581B58();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x1DA7191F0](2);
      return sub_1D8581B98();
    }

    MEMORY[0x1DA7191F0](1);
    v3 = &qword_1ECA38B48;
    v4 = &qword_1D8590B40;
    v5 = &unk_1ECA38B60;
  }

  else
  {
    MEMORY[0x1DA7191F0](0);
    v3 = &qword_1ECA38A78;
    v4 = &unk_1D85A22B0;
    v5 = &unk_1ECA38AA0;
  }

  sub_1D84A89BC(v7, v1, v3, v4, v5);
  return sub_1D8581B98();
}

uint64_t sub_1D84A890C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1D8581B58();
  if (v3)
  {
    if (v3 != 1)
    {
      MEMORY[0x1DA7191F0](2);
      return sub_1D8581B98();
    }

    MEMORY[0x1DA7191F0](1);
    v4 = &qword_1ECA38B48;
    v5 = &qword_1D8590B40;
    v6 = &unk_1ECA38B60;
  }

  else
  {
    MEMORY[0x1DA7191F0](0);
    v4 = &qword_1ECA38A78;
    v5 = &unk_1D85A22B0;
    v6 = &unk_1ECA38AA0;
  }

  sub_1D84A89BC(v8, v2, v4, v5, v6);
  return sub_1D8581B98();
}

uint64_t sub_1D84A89BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v9 = *(a2 + 16);
  result = MEMORY[0x1DA7191F0](v9);
  if (v9)
  {
    v11 = a2 + 40;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
      sub_1D844A16C(a5, a3, a4, &protocol conformance descriptor for Ref<A>);
      sub_1D85811E8();

      v11 += 16;
      --v9;
    }

    while (v9);
  }

  return result;
}

unint64_t sub_1D84A8A90()
{
  result = qword_1ECA399C0;
  if (!qword_1ECA399C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA399C0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12GameServices0A22ServiceChangeEventTypeO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_1D84A8B00(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D84A8B40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D84A8B84(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

void *static $DistributedLeaderboardServiceProtocol.resolve(id:using:)(void *a1, uint64_t a2)
{
  type metadata accessor for $DistributedLeaderboardServiceProtocol();
  type metadata accessor for GameServicesActorSystem(0);
  OUTLINED_FUNCTION_14_0();
  sub_1D84A8E00(v5);
  OUTLINED_FUNCTION_0_3();
  sub_1D84A8E00(v6);
  v7 = sub_1D8580F48();
  v8 = v7;
  if (!v2 && !v7)
  {
    v8 = swift_distributedActor_remote_initialize();
    v9 = a1[1];
    v8[14] = *a1;
    v8[15] = v9;
    v8[16] = a2;
  }

  return v8;
}

unint64_t sub_1D84A8E00(uint64_t a1)
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

uint64_t $DistributedLeaderboardServiceProtocol.deinit()
{
  type metadata accessor for GameServicesActorSystem(0);
  OUTLINED_FUNCTION_14_0();
  sub_1D84A8E00(v1);
  sub_1D8580F68();

  swift_defaultActor_destroy();
  return v0;
}

uint64_t $DistributedLeaderboardServiceProtocol.__deallocating_deinit()
{
  if (swift_distributed_actor_is_remote())
  {

    swift_defaultActor_destroy();
  }

  else
  {
    $DistributedLeaderboardServiceProtocol.deinit();
  }

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D84A8F24()
{
  sub_1D8581B58();
  type metadata accessor for $DistributedLeaderboardServiceProtocol();
  OUTLINED_FUNCTION_0_3();
  sub_1D84A8E00(v0);
  sub_1D85811E8();
  return sub_1D8581B98();
}

uint64_t $DistributedLeaderboardServiceProtocol.__allocating_init(actorSystem:)(uint64_t a1)
{
  v2 = swift_allocObject();
  $DistributedLeaderboardServiceProtocol.init(actorSystem:)(a1);
  return v2;
}

void *$DistributedLeaderboardServiceProtocol.init(actorSystem:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  v1[16] = a1;
  type metadata accessor for $DistributedLeaderboardServiceProtocol();
  type metadata accessor for GameServicesActorSystem(0);
  OUTLINED_FUNCTION_14_0();
  sub_1D84A8E00(v3);
  OUTLINED_FUNCTION_0_3();
  sub_1D84A8E00(v4);

  OUTLINED_FUNCTION_324();
  sub_1D8580F58();
  v1[14] = v6;
  v1[15] = v7;

  OUTLINED_FUNCTION_298();
  OUTLINED_FUNCTION_324();
  sub_1D8580F38();

  return v1;
}

uint64_t $DistributedLeaderboardServiceProtocol.unownedExecutor.getter()
{
  if ((sub_1D8580FF8() & 1) == 0)
  {
    type metadata accessor for $DistributedLeaderboardServiceProtocol();
    OUTLINED_FUNCTION_0_3();
    sub_1D84A8E00(v1);
    OUTLINED_FUNCTION_151();
    return sub_1D8580F28();
  }

  return v0;
}

uint64_t sub_1D84A9160@<X0>(uint64_t *a1@<X8>)
{
  result = $DistributedLeaderboardServiceProtocol.actorSystem.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D84A91EC()
{
  OUTLINED_FUNCTION_366();
  type metadata accessor for $DistributedLeaderboardServiceProtocol();
  OUTLINED_FUNCTION_0_3();
  sub_1D84A8E00(v0);
  OUTLINED_FUNCTION_188();
  return sub_1D8580FC8();
}

uint64_t sub_1D84A924C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D8581B58();
  type metadata accessor for $DistributedLeaderboardServiceProtocol();
  sub_1D85811E8();
  return sub_1D8581B98();
}

uint64_t sub_1D84A92C8()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_31_0(&unk_1D85999B8);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_42_0(v1);

  return v4(v3);
}

uint64_t sub_1D84A9354(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1D8581018();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E0, &unk_1D8598150);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84A947C);
}

uint64_t sub_1D84A947C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_24(&unk_1D85999B8);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_201_0(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_27_0(v16);
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_110_1();
  v14 = type metadata accessor for $DistributedLeaderboardServiceProtocol();
  OUTLINED_FUNCTION_91(v14);
  if (v12)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_175_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E8, &unk_1D8596090);
  v27 = OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_84(v27, v28, v29, v30, v13 + 40);
  sub_1D848A55C();
  v31 = sub_1D848A60C();
  OUTLINED_FUNCTION_31(v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39600, &unk_1D85960A0);
  sub_1D848A6BC();
  v33 = sub_1D848A7F8();
  OUTLINED_FUNCTION_10(v33);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v34)
  {
    OUTLINED_FUNCTION_453();
    v35 = OUTLINED_FUNCTION_49_0();
    v36(v35);
    OUTLINED_FUNCTION_331();

LABEL_9:
    OUTLINED_FUNCTION_258_0();

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v37 = swift_task_alloc();
  OUTLINED_FUNCTION_203_0(v37);
  OUTLINED_FUNCTION_0_3();
  sub_1D84A8E00(v38);
  OUTLINED_FUNCTION_98();
  *(v13 + 16) = v39;
  *(v13 + 24) = sub_1D8484458;
  OUTLINED_FUNCTION_9_0(v40);
  OUTLINED_FUNCTION_173();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t DistributedLeaderboardServiceProtocol<>.describe(leaderboards:)()
{
  OUTLINED_FUNCTION_148();
  v5 = OUTLINED_FUNCTION_371(v1, v2, v3, v4);
  v0[14] = v5;
  OUTLINED_FUNCTION_39(v5);
  v0[15] = v6;
  v0[16] = OUTLINED_FUNCTION_332();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E0, &unk_1D8598150);
  v0[17] = v7;
  OUTLINED_FUNCTION_39(v7);
  v0[18] = v8;
  v0[19] = OUTLINED_FUNCTION_332();
  v9 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v9);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_250(v0, v1, v2);
  OUTLINED_FUNCTION_198();
  v3 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1D84A97F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    v15 = v14[10];
    OUTLINED_FUNCTION_83_0();
    OUTLINED_FUNCTION_110_0();
    OUTLINED_FUNCTION_90();
    if (v15)
    {
      OUTLINED_FUNCTION_342();

LABEL_12:
      OUTLINED_FUNCTION_168_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
    }

    OUTLINED_FUNCTION_174_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E8, &unk_1D8596090);
    v29 = OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_84(v29, v30, v31, v32, (v14 + 7));
    sub_1D848A55C();
    v33 = sub_1D848A60C();
    OUTLINED_FUNCTION_31(v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39600, &unk_1D85960A0);
    sub_1D848A6BC();
    v35 = sub_1D848A7F8();
    OUTLINED_FUNCTION_10(v35);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v36)
    {
      OUTLINED_FUNCTION_452();
      v37 = OUTLINED_FUNCTION_49_0();
      v38(v37);
      OUTLINED_FUNCTION_331();

      goto LABEL_12;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v14[21] = v47;
    *v47 = v48;
    v47[1] = sub_1D84848FC;
    OUTLINED_FUNCTION_215_0();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_210(v14[12]);
    OUTLINED_FUNCTION_54();
    v50 = v16 + *v16;
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_286(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_17(v18);
    OUTLINED_FUNCTION_169();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, v50, a12, a13, a14);
  }
}

uint64_t sub_1D84A9AD0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
  v10[1] = sub_1D84BD878;

  return DistributedLeaderboardServiceProtocol<>.describe(leaderboards:)();
}

unint64_t sub_1D84A9C80(uint64_t a1)
{
  result = OUTLINED_FUNCTION_505(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39618, &qword_1D859F1C0);
    OUTLINED_FUNCTION_121_1();
    sub_1D84A8E00(v4);
    OUTLINED_FUNCTION_150();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1D84A9D08()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_31_0(&qword_1D85999B0);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_82_0(v1);

  return v5(v3);
}

uint64_t sub_1D84A9DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 96) = a4;
  *(v6 + 104) = v5;
  *(v6 + 289) = a5;
  *(v6 + 80) = a2;
  *(v6 + 88) = a3;
  *(v6 + 72) = a1;
  v7 = sub_1D8581018();
  *(v6 + 112) = v7;
  *(v6 + 120) = *(v7 - 8);
  *(v6 + 128) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39640, &unk_1D85960C0);
  *(v6 + 136) = v8;
  *(v6 + 144) = *(v8 - 8);
  *(v6 + 152) = swift_task_alloc();
  v9 = sub_1D8580EF8();
  *(v6 + 160) = v9;
  *(v6 + 168) = *(v9 - 8);
  *(v6 + 176) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39648, &unk_1D859F1E0);
  *(v6 + 184) = v10;
  *(v6 + 192) = *(v10 - 8);
  *(v6 + 200) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39650, &unk_1D85960D0);
  *(v6 + 208) = v11;
  *(v6 + 216) = *(v11 - 8);
  *(v6 + 224) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E0, &unk_1D8598150);
  *(v6 + 232) = v12;
  *(v6 + 240) = *(v12 - 8);
  *(v6 + 248) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84AA07C);
}

uint64_t sub_1D84AA07C()
{
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_487();
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    v3 = OUTLINED_FUNCTION_275_1();
    *(v1 + 264) = v3;
    *v3 = v1;
    v3[1] = sub_1D848B1E4;
    OUTLINED_FUNCTION_207_0(*(v1 + 72));
    OUTLINED_FUNCTION_177_0();

    __asm { BR              X5 }
  }

  *(v1 + 256) = $DistributedLeaderboardServiceProtocol.actorSystem.getter();
  OUTLINED_FUNCTION_354();
  v2 = type metadata accessor for $DistributedLeaderboardServiceProtocol();
  OUTLINED_FUNCTION_91(v2);
  if (v0)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  *(v1 + 56) = *(v1 + 72);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E8, &unk_1D8596090);
  v6 = OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_84(v6, v7, v8, v9, v1 + 56);
  sub_1D848A55C();
  v10 = sub_1D848A60C();
  OUTLINED_FUNCTION_31(v10);
  *(v1 + 40) = *(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39658, &unk_1D859F1F0);
  OUTLINED_FUNCTION_229(0x65676E6172, v11, v12, v13, v1 + 40);
  OUTLINED_FUNCTION_139_0(&unk_1ECA39660);
  v14 = OUTLINED_FUNCTION_138_0(&unk_1ECA39668);
  OUTLINED_FUNCTION_31(v14);
  v15 = OUTLINED_FUNCTION_191_0();
  v16(v15);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_212_1(v17);
  v18 = OUTLINED_FUNCTION_21_0(&unk_1ECA39678);
  OUTLINED_FUNCTION_31(v18);
  *(v1 + 288) = *(v1 + 289);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39680, &unk_1D85960E0);
  v19 = OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_102_0(v19, v20, v21, v22, v1 + 288);
  sub_1D848CAC8();
  v23 = sub_1D848CBA0();
  OUTLINED_FUNCTION_31(v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA396A8, &unk_1D859F200);
  sub_1D848CC78();
  v25 = sub_1D848CD28();
  OUTLINED_FUNCTION_10(v25);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v26)
  {
    v74 = *(v1 + 232);
    v75 = *(v1 + 248);
    v70 = *(v1 + 208);
    v72 = *(v1 + 224);
    v67 = *(v1 + 200);

    v27 = OUTLINED_FUNCTION_169_0();
    v29 = v28(v27);
    v37 = OUTLINED_FUNCTION_189_0(v29, v30, v31, v32, v33, v34, v35, v36, v67);
    v39 = v38(v37);
    v47 = OUTLINED_FUNCTION_320_0(v39, v40, v41, v42, v43, v44, v45, v46, v68, v70, v72);
    v49 = v48(v47);
    v57 = OUTLINED_FUNCTION_319_0(v49, v50, v51, v52, v53, v54, v55, v56, v69, v71, v73, v74, v75);
    v58(v57);
    OUTLINED_FUNCTION_331();

LABEL_9:

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_177_0();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v61 = swift_task_alloc();
  *(v1 + 272) = v61;
  OUTLINED_FUNCTION_0_3();
  sub_1D84A8E00(v62);
  OUTLINED_FUNCTION_98();
  *v61 = v63;
  v61[1] = sub_1D848B38C;
  OUTLINED_FUNCTION_215_0();
  OUTLINED_FUNCTION_9_0(v64);
  OUTLINED_FUNCTION_169_1();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t DistributedLeaderboardServiceProtocol<>.listLeaderboardEntries(leaderboards:range:locale:timeScope:)()
{
  OUTLINED_FUNCTION_148();
  v3 = v2;
  *(v1 + 136) = v4;
  *(v1 + 144) = v0;
  *(v1 + 120) = v5;
  *(v1 + 128) = v6;
  *(v1 + 104) = v7;
  *(v1 + 112) = v8;
  *(v1 + 88) = v9;
  *(v1 + 96) = v10;
  v11 = sub_1D8581018();
  *(v1 + 152) = v11;
  OUTLINED_FUNCTION_39(v11);
  *(v1 + 160) = v12;
  *(v1 + 168) = OUTLINED_FUNCTION_332();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39640, &unk_1D85960C0);
  *(v1 + 176) = v13;
  OUTLINED_FUNCTION_39(v13);
  *(v1 + 184) = v14;
  *(v1 + 192) = OUTLINED_FUNCTION_332();
  v15 = sub_1D8580EF8();
  *(v1 + 200) = v15;
  OUTLINED_FUNCTION_39(v15);
  *(v1 + 208) = v16;
  *(v1 + 216) = OUTLINED_FUNCTION_332();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39648, &unk_1D859F1E0);
  *(v1 + 224) = v17;
  OUTLINED_FUNCTION_39(v17);
  *(v1 + 232) = v18;
  *(v1 + 240) = OUTLINED_FUNCTION_332();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39650, &unk_1D85960D0);
  *(v1 + 248) = v19;
  OUTLINED_FUNCTION_39(v19);
  *(v1 + 256) = v20;
  *(v1 + 264) = OUTLINED_FUNCTION_332();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E0, &unk_1D8598150);
  *(v1 + 272) = v21;
  OUTLINED_FUNCTION_39(v21);
  *(v1 + 280) = v22;
  *(v1 + 288) = OUTLINED_FUNCTION_332();
  *(v1 + 338) = *v3;
  v23 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v23);
}

{
  OUTLINED_FUNCTION_148();
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v0 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v0);
}

uint64_t sub_1D84AA800()
{
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_487();
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    v2 = *(v0 + 338);
    *(v0 + 56) = *(v0 + 144);
    *(v0 + 336) = v2;
    v3 = swift_task_alloc();
    *(v0 + 320) = v3;
    *v3 = v0;
    v3[1] = sub_1D848C05C;
    OUTLINED_FUNCTION_207_0(*(v0 + 88));
    OUTLINED_FUNCTION_177_0();

    __asm { BRAA            X7, X16 }
  }

  v1 = *(v0 + 120);
  OUTLINED_FUNCTION_166();
  sub_1D8580F98();
  *(v0 + 296) = *(v0 + 64);
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_90();
  if (v1)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  *(v0 + 72) = *(v0 + 88);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E8, &unk_1D8596090);
  v6 = OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_84(v6, v7, v8, v9, v0 + 72);
  sub_1D848A55C();
  v10 = sub_1D848A60C();
  OUTLINED_FUNCTION_31(v10);
  *(v0 + 40) = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39658, &unk_1D859F1F0);
  OUTLINED_FUNCTION_229(0x65676E6172, v11, v12, v13, v0 + 40);
  OUTLINED_FUNCTION_139_0(&unk_1ECA39660);
  v14 = OUTLINED_FUNCTION_138_0(&unk_1ECA39668);
  OUTLINED_FUNCTION_31(v14);
  v15 = OUTLINED_FUNCTION_191_0();
  v16(v15);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_212_1(v17);
  v18 = OUTLINED_FUNCTION_21_0(&unk_1ECA39678);
  OUTLINED_FUNCTION_31(v18);
  *(v0 + 337) = *(v0 + 338);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39680, &unk_1D85960E0);
  v19 = OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_102_0(v19, v20, v21, v22, v0 + 337);
  sub_1D848CAC8();
  v23 = sub_1D848CBA0();
  OUTLINED_FUNCTION_31(v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA396A8, &unk_1D859F200);
  sub_1D848CC78();
  v25 = sub_1D848CD28();
  OUTLINED_FUNCTION_10(v25);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v26)
  {
    v72 = *(v0 + 272);
    v73 = *(v0 + 288);
    v68 = *(v0 + 248);
    v70 = *(v0 + 264);
    v65 = *(v0 + 240);

    v27 = OUTLINED_FUNCTION_169_0();
    v29 = v28(v27);
    v37 = OUTLINED_FUNCTION_189_0(v29, v30, v31, v32, v33, v34, v35, v36, v65);
    v39 = v38(v37);
    v47 = OUTLINED_FUNCTION_320_0(v39, v40, v41, v42, v43, v44, v45, v46, v66, v68, v70);
    v49 = v48(v47);
    v57 = OUTLINED_FUNCTION_319_0(v49, v50, v51, v52, v53, v54, v55, v56, v67, v69, v71, v72, v73);
    v58(v57);
    OUTLINED_FUNCTION_331();

LABEL_9:

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_177_0();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  swift_task_alloc();
  OUTLINED_FUNCTION_168();
  *(v0 + 304) = v61;
  *v61 = v62;
  v61[1] = sub_1D848BE74;
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_169_1();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t sub_1D84AAD98(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a3;
  v9 = *a2;
  v8[3] = *a2;
  v8[4] = *(v9 - 8);
  v8[5] = swift_task_alloc();
  sub_1D8580F88();
  v10 = a2[1];
  v8[6] = v10;
  v8[7] = *(v10 - 8);
  v8[8] = swift_task_alloc();
  sub_1D8580F88();
  v11 = a2[2];
  v8[9] = v11;
  v8[10] = *(v11 - 8);
  v8[11] = swift_task_alloc();
  sub_1D8580F88();
  v12 = a2[3];
  v8[12] = v12;
  v8[13] = *(v12 - 8);
  v8[14] = swift_task_alloc();
  sub_1D8580F88();
  v13 = swift_task_alloc();
  v8[15] = v13;
  *v13 = v8;
  v13[1] = sub_1D84AB1D0;

  return DistributedLeaderboardServiceProtocol<>.listLeaderboardEntries(leaderboards:range:locale:timeScope:)();
}

uint64_t sub_1D84AB1D0()
{
  OUTLINED_FUNCTION_153();
  v28 = *(v0 + 112);
  OUTLINED_FUNCTION_193();
  v27 = *(v1 + 104);
  OUTLINED_FUNCTION_193();
  v24 = *(v2 + 96);
  OUTLINED_FUNCTION_193();
  v26 = *(v3 + 88);
  OUTLINED_FUNCTION_193();
  v25 = *(v4 + 80);
  OUTLINED_FUNCTION_193();
  v6 = *(v5 + 72);
  v23 = *(v7 + 64);
  OUTLINED_FUNCTION_193();
  v22 = *(v8 + 56);
  OUTLINED_FUNCTION_193();
  v10 = *(v9 + 48);
  v12 = v11[5];
  v13 = v11[4];
  v14 = v11[3];
  OUTLINED_FUNCTION_171_0();
  v16 = v15;
  OUTLINED_FUNCTION_42();
  *v17 = v16;
  *v19 = v18;

  (*(v13 + 8))(v12, v14);
  (*(v22 + 8))(v23, v10);
  (*(v25 + 8))(v26, v6);
  (*(v27 + 8))(v28, v24);

  v20 = *(v16 + 8);

  return v20();
}

unint64_t sub_1D84AB4D0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_505(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39658, &unk_1D859F1F0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1D84AB538()
{
  OUTLINED_FUNCTION_204();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_24(&unk_1D85999A8);
  v7 = *v6;
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_176(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_191(v9);

  return v12(v5, v3, v1, v7);
}

uint64_t sub_1D84AB5F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 273) = a4;
  *(v5 + 80) = a3;
  *(v5 + 88) = v4;
  *(v5 + 64) = a1;
  *(v5 + 72) = a2;
  v6 = sub_1D8581018();
  *(v5 + 96) = v6;
  *(v5 + 104) = *(v6 - 8);
  *(v5 + 112) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39640, &unk_1D85960C0);
  *(v5 + 120) = v7;
  *(v5 + 128) = *(v7 - 8);
  *(v5 + 136) = swift_task_alloc();
  v8 = sub_1D8580EF8();
  *(v5 + 144) = v8;
  *(v5 + 152) = *(v8 - 8);
  *(v5 + 160) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39648, &unk_1D859F1E0);
  *(v5 + 168) = v9;
  *(v5 + 176) = *(v9 - 8);
  *(v5 + 184) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE0, &qword_1D8590E40);
  *(v5 + 192) = v10;
  *(v5 + 200) = *(v10 - 8);
  *(v5 + 208) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E0, &unk_1D8598150);
  *(v5 + 216) = v11;
  *(v5 + 224) = *(v11 - 8);
  *(v5 + 232) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84AB8B8);
}

uint64_t sub_1D84AB8B8()
{
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_487();
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    v3 = OUTLINED_FUNCTION_275_1();
    *(v1 + 248) = v3;
    *v3 = v1;
    v3[1] = sub_1D848D650;
    OUTLINED_FUNCTION_207_0(*(v1 + 64));
    OUTLINED_FUNCTION_177_0();

    __asm { BR              X4 }
  }

  *(v1 + 240) = $DistributedLeaderboardServiceProtocol.actorSystem.getter();
  OUTLINED_FUNCTION_354();
  v2 = type metadata accessor for $DistributedLeaderboardServiceProtocol();
  OUTLINED_FUNCTION_91(v2);
  if (v0)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  *(v1 + 40) = *(v1 + 64);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E8, &unk_1D8596090);
  v6 = OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_84(v6, v7, v8, v9, v1 + 40);
  sub_1D848A55C();
  v10 = sub_1D848A60C();
  OUTLINED_FUNCTION_31(v10);
  *(v1 + 48) = *(v1 + 72);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E10, &qword_1D8590D20);
  v11 = OUTLINED_FUNCTION_35_2();
  OUTLINED_FUNCTION_51_1(v11, v12, v13, v14, v1 + 48);
  sub_1D84769B4();
  v15 = sub_1D8476AE8();
  OUTLINED_FUNCTION_31(v15);
  v16 = OUTLINED_FUNCTION_191_0();
  v17(v16);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_212_1(v18);
  v19 = OUTLINED_FUNCTION_21_0(&unk_1ECA39678);
  OUTLINED_FUNCTION_31(v19);
  *(v1 + 272) = *(v1 + 273);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39680, &unk_1D85960E0);
  v20 = OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_102_0(v20, v21, v22, v23, v1 + 272);
  sub_1D848CAC8();
  v24 = sub_1D848CBA0();
  OUTLINED_FUNCTION_31(v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA396A8, &unk_1D859F200);
  sub_1D848CC78();
  v26 = sub_1D848CD28();
  OUTLINED_FUNCTION_10(v26);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v27)
  {
    v75 = *(v1 + 216);
    v76 = *(v1 + 232);
    v71 = *(v1 + 192);
    v73 = *(v1 + 208);
    v68 = *(v1 + 184);

    v28 = OUTLINED_FUNCTION_169_0();
    v30 = v29(v28);
    v38 = OUTLINED_FUNCTION_189_0(v30, v31, v32, v33, v34, v35, v36, v37, v68);
    v40 = v39(v38);
    v48 = OUTLINED_FUNCTION_320_0(v40, v41, v42, v43, v44, v45, v46, v47, v69, v71, v73);
    v50 = v49(v48);
    v58 = OUTLINED_FUNCTION_319_0(v50, v51, v52, v53, v54, v55, v56, v57, v70, v72, v74, v75, v76);
    v59(v58);
    OUTLINED_FUNCTION_331();

LABEL_9:

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_177_0();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v62 = swift_task_alloc();
  *(v1 + 256) = v62;
  OUTLINED_FUNCTION_0_3();
  sub_1D84A8E00(v63);
  OUTLINED_FUNCTION_98();
  *v62 = v64;
  v62[1] = sub_1D848D7F8;
  OUTLINED_FUNCTION_9_0(v65);
  OUTLINED_FUNCTION_169_1();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t DistributedLeaderboardServiceProtocol<>.listLeaderboardEntries(leaderboards:players:locale:timeScope:)()
{
  OUTLINED_FUNCTION_148();
  v3 = v2;
  *(v1 + 120) = v4;
  *(v1 + 128) = v0;
  *(v1 + 104) = v5;
  *(v1 + 112) = v6;
  *(v1 + 88) = v7;
  *(v1 + 96) = v8;
  *(v1 + 80) = v9;
  v10 = sub_1D8581018();
  *(v1 + 136) = v10;
  OUTLINED_FUNCTION_39(v10);
  *(v1 + 144) = v11;
  *(v1 + 152) = OUTLINED_FUNCTION_332();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39640, &unk_1D85960C0);
  *(v1 + 160) = v12;
  OUTLINED_FUNCTION_39(v12);
  *(v1 + 168) = v13;
  *(v1 + 176) = OUTLINED_FUNCTION_332();
  v14 = sub_1D8580EF8();
  *(v1 + 184) = v14;
  OUTLINED_FUNCTION_39(v14);
  *(v1 + 192) = v15;
  *(v1 + 200) = OUTLINED_FUNCTION_332();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39648, &unk_1D859F1E0);
  *(v1 + 208) = v16;
  OUTLINED_FUNCTION_39(v16);
  *(v1 + 216) = v17;
  *(v1 + 224) = OUTLINED_FUNCTION_332();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE0, &qword_1D8590E40);
  *(v1 + 232) = v18;
  OUTLINED_FUNCTION_39(v18);
  *(v1 + 240) = v19;
  *(v1 + 248) = OUTLINED_FUNCTION_332();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E0, &unk_1D8598150);
  *(v1 + 256) = v20;
  OUTLINED_FUNCTION_39(v20);
  *(v1 + 264) = v21;
  *(v1 + 272) = OUTLINED_FUNCTION_332();
  *(v1 + 322) = *v3;
  v22 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v22);
}

{
  OUTLINED_FUNCTION_148();
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v0 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v0);
}

uint64_t sub_1D84AC014()
{
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_487();
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    v2 = *(v0 + 322);
    *(v0 + 40) = *(v0 + 128);
    *(v0 + 320) = v2;
    v3 = swift_task_alloc();
    *(v0 + 304) = v3;
    *v3 = v0;
    v3[1] = sub_1D848E478;
    OUTLINED_FUNCTION_207_0(*(v0 + 80));
    OUTLINED_FUNCTION_177_0();

    __asm { BRAA            X6, X16 }
  }

  v1 = *(v0 + 104);
  OUTLINED_FUNCTION_83_0();
  *(v0 + 280) = *(v0 + 48);
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_90();
  if (v1)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  *(v0 + 56) = *(v0 + 80);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E8, &unk_1D8596090);
  v6 = OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_84(v6, v7, v8, v9, v0 + 56);
  sub_1D848A55C();
  v10 = sub_1D848A60C();
  OUTLINED_FUNCTION_31(v10);
  *(v0 + 64) = *(v0 + 88);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E10, &qword_1D8590D20);
  v11 = OUTLINED_FUNCTION_35_2();
  OUTLINED_FUNCTION_51_1(v11, v12, v13, v14, v0 + 64);
  sub_1D84769B4();
  v15 = sub_1D8476AE8();
  OUTLINED_FUNCTION_31(v15);
  v16 = OUTLINED_FUNCTION_191_0();
  v17(v16);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_212_1(v18);
  v19 = OUTLINED_FUNCTION_21_0(&unk_1ECA39678);
  OUTLINED_FUNCTION_31(v19);
  *(v0 + 321) = *(v0 + 322);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39680, &unk_1D85960E0);
  v20 = OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_102_0(v20, v21, v22, v23, v0 + 321);
  sub_1D848CAC8();
  v24 = sub_1D848CBA0();
  OUTLINED_FUNCTION_31(v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA396A8, &unk_1D859F200);
  sub_1D848CC78();
  v26 = sub_1D848CD28();
  OUTLINED_FUNCTION_10(v26);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v27)
  {
    v73 = *(v0 + 256);
    v74 = *(v0 + 272);
    v69 = *(v0 + 232);
    v71 = *(v0 + 248);
    v66 = *(v0 + 224);

    v28 = OUTLINED_FUNCTION_169_0();
    v30 = v29(v28);
    v38 = OUTLINED_FUNCTION_189_0(v30, v31, v32, v33, v34, v35, v36, v37, v66);
    v40 = v39(v38);
    v48 = OUTLINED_FUNCTION_320_0(v40, v41, v42, v43, v44, v45, v46, v47, v67, v69, v71);
    v50 = v49(v48);
    v58 = OUTLINED_FUNCTION_319_0(v50, v51, v52, v53, v54, v55, v56, v57, v68, v70, v72, v73, v74);
    v59(v58);
    OUTLINED_FUNCTION_331();

LABEL_9:

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_177_0();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  swift_task_alloc();
  OUTLINED_FUNCTION_168();
  *(v0 + 288) = v62;
  *v62 = v63;
  v62[1] = sub_1D848E290;
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_169_1();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t sub_1D84AC574(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a3;
  v9 = *a2;
  v8[3] = *a2;
  v8[4] = *(v9 - 8);
  v8[5] = swift_task_alloc();
  sub_1D8580F88();
  v10 = a2[1];
  v8[6] = v10;
  v8[7] = *(v10 - 8);
  v8[8] = swift_task_alloc();
  sub_1D8580F88();
  v11 = a2[2];
  v8[9] = v11;
  v8[10] = *(v11 - 8);
  v8[11] = swift_task_alloc();
  sub_1D8580F88();
  v12 = a2[3];
  v8[12] = v12;
  v8[13] = *(v12 - 8);
  v8[14] = swift_task_alloc();
  sub_1D8580F88();
  v13 = swift_task_alloc();
  v8[15] = v13;
  *v13 = v8;
  v13[1] = sub_1D84BD83C;

  return DistributedLeaderboardServiceProtocol<>.listLeaderboardEntries(leaderboards:players:locale:timeScope:)();
}

uint64_t sub_1D84AC984()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_129_0();
  OUTLINED_FUNCTION_24(&unk_1D85999A0);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_176(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_191(v3);

  return v6(v1, v0);
}

uint64_t sub_1D84ACA24(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_1D8581018();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE0, &qword_1D8590E40);
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39578, &unk_1D85981A0);
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84ACBB8);
}

uint64_t sub_1D84ACBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  if (swift_distributed_actor_is_remote())
  {
    v13[20] = $DistributedLeaderboardServiceProtocol.actorSystem.getter();
    OUTLINED_FUNCTION_354();
    v14 = type metadata accessor for $DistributedLeaderboardServiceProtocol();
    OUTLINED_FUNCTION_91(v14);
    if (v12)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_168_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_197();

      return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12);
    }

    v13[5] = v13[8];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA392E0, &qword_1D8591020);
    v25 = OUTLINED_FUNCTION_87_0();
    OUTLINED_FUNCTION_229(v25, v26, v27, v28, (v13 + 5));
    sub_1D847C154();
    v29 = sub_1D847C0A4();
    OUTLINED_FUNCTION_31(v29);
    v13[6] = v13[9];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E10, &qword_1D8590D20);
    v30 = OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_51_1(v30, v31, v32, v33, (v13 + 6));
    sub_1D84769B4();
    v34 = sub_1D8476AE8();
    OUTLINED_FUNCTION_31(v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA396D8, &unk_1D859F230);
    sub_1D848FFF0();
    v36 = sub_1D84900A0();
    OUTLINED_FUNCTION_10(v36);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v37)
    {
      OUTLINED_FUNCTION_274_1();
      v38 = OUTLINED_FUNCTION_52();
      v39(v38);
      v40 = OUTLINED_FUNCTION_51_0();
      v41(v40);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v50 = swift_task_alloc();
    v13[22] = v50;
    OUTLINED_FUNCTION_0_3();
    sub_1D84A8E00(v51);
    OUTLINED_FUNCTION_98();
    *v50 = v52;
    v50[1] = sub_1D84AD03C;
    OUTLINED_FUNCTION_9_0(v53);
    OUTLINED_FUNCTION_173();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D85999A0);
    v15 = swift_task_alloc();
    v13[21] = v15;
    *v15 = v13;
    v15[1] = sub_1D84ACEF0;
    OUTLINED_FUNCTION_207_0(v13[8]);
    OUTLINED_FUNCTION_197();

    return v18(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
  }
}

uint64_t sub_1D84ACEF0()
{
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_320();
  v2 = *v1;
  OUTLINED_FUNCTION_37();
  *v3 = v2;

  OUTLINED_FUNCTION_510();

  OUTLINED_FUNCTION_507();
  if (!v0)
  {
    v4 = OUTLINED_FUNCTION_482();
  }

  return v5(v4);
}

uint64_t sub_1D84AD03C()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 184) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D84AD134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_298_0();
  v12 = OUTLINED_FUNCTION_69_1();
  v13(v12);
  v14 = OUTLINED_FUNCTION_166();
  v15(v14);
  v16 = OUTLINED_FUNCTION_151();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_243_0();

  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_173();

  return v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1D84AD200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_298_0();
  v12 = OUTLINED_FUNCTION_69_1();
  v13(v12);
  v14 = OUTLINED_FUNCTION_166();
  v15(v14);
  v16 = OUTLINED_FUNCTION_151();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_243_0();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t DistributedLeaderboardServiceProtocol<>.listLeaderboards(games:players:)()
{
  OUTLINED_FUNCTION_148();
  v6 = OUTLINED_FUNCTION_272_0(v1, v2, v3, v4, v5);
  v0[16] = v6;
  OUTLINED_FUNCTION_39(v6);
  v0[17] = v7;
  v0[18] = OUTLINED_FUNCTION_332();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE0, &qword_1D8590E40);
  v0[19] = v8;
  OUTLINED_FUNCTION_39(v8);
  v0[20] = v9;
  v0[21] = OUTLINED_FUNCTION_332();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39578, &unk_1D85981A0);
  v0[22] = v10;
  OUTLINED_FUNCTION_39(v10);
  v0[23] = v11;
  v0[24] = OUTLINED_FUNCTION_332();
  v12 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v12);
}

{
  OUTLINED_FUNCTION_148();
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v0 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v0);
}

uint64_t sub_1D84AD418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    v15 = v14[12];
    OUTLINED_FUNCTION_83_0();
    v14[25] = v14[6];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v15)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14);
    }

    v14[7] = v14[10];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA392E0, &qword_1D8591020);
    v27 = OUTLINED_FUNCTION_87_0();
    OUTLINED_FUNCTION_229(v27, v28, v29, v30, (v14 + 7));
    sub_1D847C154();
    v31 = sub_1D847C0A4();
    OUTLINED_FUNCTION_31(v31);
    v14[8] = v14[11];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E10, &qword_1D8590D20);
    v32 = OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_51_1(v32, v33, v34, v35, (v14 + 8));
    sub_1D84769B4();
    v36 = sub_1D8476AE8();
    OUTLINED_FUNCTION_31(v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA396D8, &unk_1D859F230);
    sub_1D848FFF0();
    v38 = sub_1D84900A0();
    OUTLINED_FUNCTION_10(v38);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v39)
    {
      OUTLINED_FUNCTION_271_0();
      v40 = OUTLINED_FUNCTION_52();
      v41(v40);
      v42 = OUTLINED_FUNCTION_51_0();
      v43(v42);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v14[26] = v52;
    *v52 = v53;
    v52[1] = sub_1D84AD7AC;
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_210(v14[14]);
    OUTLINED_FUNCTION_54();
    v55 = v16 + *v16;
    v17 = swift_task_alloc();
    v14[28] = v17;
    *v17 = v14;
    v17[1] = sub_1D84AD968;
    OUTLINED_FUNCTION_207_0(v14[10]);
    OUTLINED_FUNCTION_169();

    return v22(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, v55, a12, a13, a14);
  }
}

uint64_t sub_1D84AD7AC()
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

uint64_t sub_1D84AD8A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_295();
  v12 = OUTLINED_FUNCTION_69_1();
  v13(v12);
  v14 = OUTLINED_FUNCTION_166();
  v15(v14);
  v16 = OUTLINED_FUNCTION_151();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_231_1();

  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_173();

  return v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1D84AD968()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_95();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 232) = v0;

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

uint64_t sub_1D84ADAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_295();
  v12 = OUTLINED_FUNCTION_69_1();
  v13(v12);
  v14 = OUTLINED_FUNCTION_166();
  v15(v14);
  v16 = OUTLINED_FUNCTION_151();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_231_1();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1D84ADB6C()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_231_1();

  OUTLINED_FUNCTION_146();

  return v0();
}

uint64_t sub_1D84ADBDC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a3;
  v10 = *a2;
  v8[3] = *a2;
  v8[4] = *(v10 - 8);
  v8[5] = swift_task_alloc();
  sub_1D8580F88();
  v11 = a2[1];
  v8[6] = v11;
  v8[7] = *(v11 - 8);
  v8[8] = swift_task_alloc();
  sub_1D8580F88();
  v12 = swift_task_alloc();
  v8[9] = v12;
  *v12 = v8;
  v12[1] = sub_1D84ADE24;

  return DistributedLeaderboardServiceProtocol<>.listLeaderboards(games:players:)();
}

uint64_t sub_1D84ADE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_171_0();
  *v12 = v13;
  *v15 = v14;

  v16 = OUTLINED_FUNCTION_367();
  v17(v16);
  v18 = OUTLINED_FUNCTION_166();
  v19(v18);

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_1D84AE008()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_129_0();
  OUTLINED_FUNCTION_24(&unk_1D8599998);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_176(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_191(v3);

  return v6(v1, v0);
}

uint64_t sub_1D84AE0A8(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_1D8581018();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE0, &qword_1D8590E40);
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E0, &unk_1D8598150);
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84AE23C);
}

uint64_t sub_1D84AE23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  if (swift_distributed_actor_is_remote())
  {
    v13[20] = $DistributedLeaderboardServiceProtocol.actorSystem.getter();
    OUTLINED_FUNCTION_354();
    v14 = type metadata accessor for $DistributedLeaderboardServiceProtocol();
    OUTLINED_FUNCTION_91(v14);
    if (v12)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_168_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_197();

      return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12);
    }

    v13[5] = v13[8];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E8, &unk_1D8596090);
    v25 = OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_84(v25, v26, v27, v28, (v13 + 5));
    sub_1D848A55C();
    v29 = sub_1D848A60C();
    OUTLINED_FUNCTION_31(v29);
    v13[6] = v13[9];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E10, &qword_1D8590D20);
    v30 = OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_51_1(v30, v31, v32, v33, (v13 + 6));
    sub_1D84769B4();
    v34 = sub_1D8476AE8();
    OUTLINED_FUNCTION_31(v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA399E8, &qword_1D85981C8);
    sub_1D84AEFCC();
    v36 = sub_1D84AF100();
    OUTLINED_FUNCTION_10(v36);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v37)
    {
      OUTLINED_FUNCTION_274_1();
      v38 = OUTLINED_FUNCTION_52();
      v39(v38);
      v40 = OUTLINED_FUNCTION_51_0();
      v41(v40);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v50 = swift_task_alloc();
    v13[22] = v50;
    OUTLINED_FUNCTION_0_3();
    sub_1D84A8E00(v51);
    OUTLINED_FUNCTION_98();
    *v50 = v52;
    v50[1] = sub_1D84AE574;
    OUTLINED_FUNCTION_9_0(v53);
    OUTLINED_FUNCTION_173();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D8599998);
    v15 = swift_task_alloc();
    v13[21] = v15;
    *v15 = v13;
    v15[1] = sub_1D84BD858;
    OUTLINED_FUNCTION_207_0(v13[8]);
    OUTLINED_FUNCTION_197();

    return v18(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
  }
}

uint64_t sub_1D84AE574()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 184) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t DistributedLeaderboardServiceProtocol<>.previousOcurrences(leaderboards:players:)()
{
  OUTLINED_FUNCTION_148();
  v6 = OUTLINED_FUNCTION_272_0(v1, v2, v3, v4, v5);
  v0[16] = v6;
  OUTLINED_FUNCTION_39(v6);
  v0[17] = v7;
  v0[18] = OUTLINED_FUNCTION_332();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE0, &qword_1D8590E40);
  v0[19] = v8;
  OUTLINED_FUNCTION_39(v8);
  v0[20] = v9;
  v0[21] = OUTLINED_FUNCTION_332();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E0, &unk_1D8598150);
  v0[22] = v10;
  OUTLINED_FUNCTION_39(v10);
  v0[23] = v11;
  v0[24] = OUTLINED_FUNCTION_332();
  v12 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v12);
}

{
  OUTLINED_FUNCTION_148();
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v0 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v0);
}

uint64_t sub_1D84AE7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    v15 = v14[12];
    OUTLINED_FUNCTION_83_0();
    v14[25] = v14[6];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v15)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14);
    }

    v14[7] = v14[10];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E8, &unk_1D8596090);
    v27 = OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_84(v27, v28, v29, v30, (v14 + 7));
    sub_1D848A55C();
    v31 = sub_1D848A60C();
    OUTLINED_FUNCTION_31(v31);
    v14[8] = v14[11];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E10, &qword_1D8590D20);
    v32 = OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_51_1(v32, v33, v34, v35, (v14 + 8));
    sub_1D84769B4();
    v36 = sub_1D8476AE8();
    OUTLINED_FUNCTION_31(v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA399E8, &qword_1D85981C8);
    sub_1D84AEFCC();
    v38 = sub_1D84AF100();
    OUTLINED_FUNCTION_10(v38);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v39)
    {
      OUTLINED_FUNCTION_271_0();
      v40 = OUTLINED_FUNCTION_52();
      v41(v40);
      v42 = OUTLINED_FUNCTION_51_0();
      v43(v42);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v14[26] = v52;
    *v52 = v53;
    v52[1] = sub_1D84AEB4C;
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_210(v14[14]);
    OUTLINED_FUNCTION_54();
    v55 = v16 + *v16;
    v17 = swift_task_alloc();
    v14[28] = v17;
    *v17 = v14;
    v17[1] = sub_1D84AEC44;
    OUTLINED_FUNCTION_207_0(v14[10]);
    OUTLINED_FUNCTION_169();

    return v22(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, v55, a12, a13, a14);
  }
}

uint64_t sub_1D84AEB4C()
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

uint64_t sub_1D84AEC44()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_95();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 232) = v0;

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

uint64_t sub_1D84AED84(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a3;
  v10 = *a2;
  v8[3] = *a2;
  v8[4] = *(v10 - 8);
  v8[5] = swift_task_alloc();
  sub_1D8580F88();
  v11 = a2[1];
  v8[6] = v11;
  v8[7] = *(v11 - 8);
  v8[8] = swift_task_alloc();
  sub_1D8580F88();
  v12 = swift_task_alloc();
  v8[9] = v12;
  *v12 = v8;
  v12[1] = sub_1D84BD86C;

  return DistributedLeaderboardServiceProtocol<>.previousOcurrences(leaderboards:players:)();
}

unint64_t sub_1D84AEFCC()
{
  result = qword_1ECA399F0;
  if (!qword_1ECA399F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA399E8, &qword_1D85981C8);
    sub_1D84AF050();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA399F0);
  }

  return result;
}

unint64_t sub_1D84AF050()
{
  result = qword_1ECA399F8;
  if (!qword_1ECA399F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39A00, &qword_1D85981D0);
    sub_1D848211C(&qword_1ECA38DB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA399F8);
  }

  return result;
}

unint64_t sub_1D84AF100()
{
  result = qword_1ECA39A08;
  if (!qword_1ECA39A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA399E8, &qword_1D85981C8);
    sub_1D84AF184();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39A08);
  }

  return result;
}

unint64_t sub_1D84AF184()
{
  result = qword_1ECA39A10;
  if (!qword_1ECA39A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39A00, &qword_1D85981D0);
    sub_1D848211C(&qword_1ECA38DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39A10);
  }

  return result;
}

uint64_t sub_1D84AF234()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_31_0(&unk_1D8599990);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_42_0(v1);

  return v4(v3);
}

uint64_t sub_1D84AF2C0(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_1D8581018();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39708, &unk_1D859F250);
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84AF3E8);
}

uint64_t sub_1D84AF3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_177();
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_31_0(&unk_1D8599990);
    v17 = swift_task_alloc();
    v15[15] = v17;
    *v17 = v15;
    v17[1] = sub_1D84BD870;
    OUTLINED_FUNCTION_207_0(v15[6]);
    OUTLINED_FUNCTION_207();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  v15[14] = $DistributedLeaderboardServiceProtocol.actorSystem.getter();
  OUTLINED_FUNCTION_354();
  v16 = type metadata accessor for $DistributedLeaderboardServiceProtocol();
  OUTLINED_FUNCTION_91(v16);
  if (v14)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  v15[5] = v15[6];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39710, &qword_1D8596140);
  v27 = OUTLINED_FUNCTION_279_0();
  OUTLINED_FUNCTION_51_1(v27, v28, v29, v30, (v15 + 5));
  OUTLINED_FUNCTION_128_0();
  sub_1D84AFFA0(v31);
  OUTLINED_FUNCTION_127_0();
  v33 = sub_1D84AFFA0(v32);
  OUTLINED_FUNCTION_31(v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v34);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v35)
  {

    v36 = OUTLINED_FUNCTION_49_0();
    v37(v36);
    OUTLINED_FUNCTION_331();

LABEL_9:

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_207();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v38 = swift_task_alloc();
  v15[16] = v38;
  OUTLINED_FUNCTION_0_3();
  sub_1D84A8E00(v39);
  *v38 = v15;
  v38[1] = sub_1D84AF6D8;
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_207();

  return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v40, v41, v42, v43, v44, v45, v46);
}

uint64_t sub_1D84AF6D8()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t DistributedLeaderboardServiceProtocol<>.submit(entries:)()
{
  OUTLINED_FUNCTION_148();
  v5 = OUTLINED_FUNCTION_333(v1, v2, v3, v4);
  v0[13] = v5;
  OUTLINED_FUNCTION_39(v5);
  v0[14] = v6;
  v0[15] = OUTLINED_FUNCTION_332();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39708, &unk_1D859F250);
  v0[16] = v7;
  OUTLINED_FUNCTION_39(v7);
  v0[17] = v8;
  v0[18] = OUTLINED_FUNCTION_332();
  v9 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v9);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_250(v0, v1, v2);
  OUTLINED_FUNCTION_198();
  v3 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1D84AF8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_177();
  if (swift_distributed_actor_is_remote())
  {
    v15 = v14[9];
    OUTLINED_FUNCTION_83_0();
    v14[19] = v14[6];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v15)
    {
      OUTLINED_FUNCTION_342();

LABEL_11:

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_207();

      return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12);
    }

    v14[7] = v14[8];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39710, &qword_1D8596140);
    v27 = OUTLINED_FUNCTION_279_0();
    OUTLINED_FUNCTION_51_1(v27, v28, v29, v30, (v14 + 7));
    OUTLINED_FUNCTION_128_0();
    sub_1D84AFFA0(v31);
    OUTLINED_FUNCTION_127_0();
    v33 = sub_1D84AFFA0(v32);
    OUTLINED_FUNCTION_31(v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v34);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v35)
    {

      v36 = OUTLINED_FUNCTION_49_0();
      v37(v36);
      OUTLINED_FUNCTION_331();

      goto LABEL_11;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v46 = swift_task_alloc();
    v14[20] = v46;
    *v46 = v14;
    OUTLINED_FUNCTION_200_0(v46);
    OUTLINED_FUNCTION_207_0(v47);
    OUTLINED_FUNCTION_267_1();
    OUTLINED_FUNCTION_207();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v48, v49, v50, v51, v52, v53, v54);
  }

  else
  {
    OUTLINED_FUNCTION_210(v14[11]);
    OUTLINED_FUNCTION_131();
    v56 = v16 + *v16;
    v17 = swift_task_alloc();
    v14[22] = v17;
    *v17 = v14;
    v17[1] = sub_1D84AFCE8;
    OUTLINED_FUNCTION_44(v14[8]);
    OUTLINED_FUNCTION_207();

    return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, v56, a11, a12);
  }
}

uint64_t sub_1D84AFBF0()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D84AFCE8()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 184) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {

    OUTLINED_FUNCTION_146();

    return v8();
  }
}

uint64_t sub_1D84AFE14(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  v8[2] = *a2;
  v8[3] = *(v9 - 8);
  v8[4] = swift_task_alloc();
  sub_1D8580F88();
  v10 = swift_task_alloc();
  v8[5] = v10;
  *v10 = v8;
  v10[1] = sub_1D84BD85C;

  return DistributedLeaderboardServiceProtocol<>.submit(entries:)();
}

unint64_t sub_1D84AFFA0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_505(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39710, &qword_1D8596140);
    OUTLINED_FUNCTION_126_0();
    sub_1D84A8E00(v4);
    OUTLINED_FUNCTION_150();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1D84B0048()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_31_0(&unk_1D8599988);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_42_0(v1);

  return v4(v3);
}

uint64_t sub_1D84B00D4(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_1D8581018();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E0, &unk_1D8598150);
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84B01FC);
}

uint64_t sub_1D84B01FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_177();
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_31_0(&unk_1D8599988);
    v17 = swift_task_alloc();
    v15[15] = v17;
    *v17 = v15;
    v17[1] = sub_1D84B049C;
    OUTLINED_FUNCTION_207_0(v15[6]);
    OUTLINED_FUNCTION_207();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  v15[14] = $DistributedLeaderboardServiceProtocol.actorSystem.getter();
  OUTLINED_FUNCTION_354();
  v16 = type metadata accessor for $DistributedLeaderboardServiceProtocol();
  OUTLINED_FUNCTION_91(v16);
  if (v14)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  v15[5] = v15[6];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E8, &unk_1D8596090);
  v27 = OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_84(v27, v28, v29, v30, (v15 + 5));
  sub_1D848A55C();
  v31 = sub_1D848A60C();
  OUTLINED_FUNCTION_31(v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v32);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v33)
  {

    v34 = OUTLINED_FUNCTION_49_0();
    v35(v34);
    OUTLINED_FUNCTION_331();

LABEL_9:

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_207();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v36 = swift_task_alloc();
  v15[16] = v36;
  OUTLINED_FUNCTION_0_3();
  sub_1D84A8E00(v37);
  *v36 = v15;
  v36[1] = sub_1D84B05C4;
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_207();

  return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v38, v39, v40, v41, v42, v43, v44);
}

uint64_t sub_1D84B049C()
{
  OUTLINED_FUNCTION_174();
  v1 = *v0;
  OUTLINED_FUNCTION_37();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1D84B05C4()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D84B06BC()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_331_0();
  v0 = OUTLINED_FUNCTION_77();
  v1(v0);
  v2 = OUTLINED_FUNCTION_80();
  v3(v2);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_511();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t DistributedLeaderboardServiceProtocol<>.reset(leaderboards:)()
{
  OUTLINED_FUNCTION_148();
  v5 = OUTLINED_FUNCTION_333(v1, v2, v3, v4);
  v0[13] = v5;
  OUTLINED_FUNCTION_39(v5);
  v0[14] = v6;
  v0[15] = OUTLINED_FUNCTION_332();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E0, &unk_1D8598150);
  v0[16] = v7;
  OUTLINED_FUNCTION_39(v7);
  v0[17] = v8;
  v0[18] = OUTLINED_FUNCTION_332();
  v9 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v9);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_250(v0, v1, v2);
  OUTLINED_FUNCTION_198();
  v3 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1D84B0858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_177();
  if (swift_distributed_actor_is_remote())
  {
    v15 = v14[9];
    OUTLINED_FUNCTION_83_0();
    v14[19] = v14[6];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v15)
    {
      OUTLINED_FUNCTION_342();

LABEL_11:

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_207();

      return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12);
    }

    v14[7] = v14[8];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E8, &unk_1D8596090);
    v27 = OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_84(v27, v28, v29, v30, (v14 + 7));
    sub_1D848A55C();
    v31 = sub_1D848A60C();
    OUTLINED_FUNCTION_31(v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v32);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v33)
    {

      v34 = OUTLINED_FUNCTION_49_0();
      v35(v34);
      OUTLINED_FUNCTION_331();

      goto LABEL_11;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v44 = swift_task_alloc();
    v14[20] = v44;
    *v44 = v14;
    OUTLINED_FUNCTION_200_0(v44);
    OUTLINED_FUNCTION_207_0(v45);
    OUTLINED_FUNCTION_267_1();
    OUTLINED_FUNCTION_207();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v46, v47, v48, v49, v50, v51, v52);
  }

  else
  {
    OUTLINED_FUNCTION_210(v14[11]);
    OUTLINED_FUNCTION_131();
    v54 = v16 + *v16;
    v17 = swift_task_alloc();
    v14[22] = v17;
    *v17 = v14;
    v17[1] = sub_1D84B0CD4;
    OUTLINED_FUNCTION_44(v14[8]);
    OUTLINED_FUNCTION_207();

    return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, v54, a11, a12);
  }
}

uint64_t sub_1D84B0B34()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D84B0C2C()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_330();
  v0 = OUTLINED_FUNCTION_77();
  v1(v0);
  v2 = OUTLINED_FUNCTION_80();
  v3(v2);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_511();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1D84B0CD4()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 184) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {

    OUTLINED_FUNCTION_146();

    return v8();
  }
}

uint64_t sub_1D84B0E00(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  v8[2] = *a2;
  v8[3] = *(v9 - 8);
  v8[4] = swift_task_alloc();
  sub_1D8580F88();
  v10 = swift_task_alloc();
  v8[5] = v10;
  *v10 = v8;
  v10[1] = sub_1D84B0F8C;

  return DistributedLeaderboardServiceProtocol<>.reset(leaderboards:)();
}

uint64_t sub_1D84B0F8C()
{
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_171_0();
  v1 = v0;
  OUTLINED_FUNCTION_37();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_188();
  v4(v3);

  OUTLINED_FUNCTION_146();

  return v5();
}

uint64_t sub_1D84B10E8()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_31_0(&unk_1D8599980);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_42_0(v1);

  return v4(v3);
}

uint64_t sub_1D84B1174(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1D8581018();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39738, &unk_1D859F280);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84B129C);
}

uint64_t sub_1D84B129C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_24(&unk_1D8599980);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_201_0(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_27_0(v16);
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_110_1();
  v14 = type metadata accessor for $DistributedLeaderboardServiceProtocol();
  OUTLINED_FUNCTION_91(v14);
  if (v12)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_175_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39740, &unk_1D8596160);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_194_0();
  OUTLINED_FUNCTION_84(v27, v28, v29, v30, v13 + 40);
  sub_1D8491E2C();
  v31 = sub_1D8491EDC();
  OUTLINED_FUNCTION_31(v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39770, &unk_1D8596170);
  sub_1D8491F8C();
  v33 = sub_1D84920E8();
  OUTLINED_FUNCTION_10(v33);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v34)
  {
    OUTLINED_FUNCTION_453();
    v35 = OUTLINED_FUNCTION_49_0();
    v36(v35);
    OUTLINED_FUNCTION_331();

LABEL_9:
    OUTLINED_FUNCTION_258_0();

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v37 = swift_task_alloc();
  OUTLINED_FUNCTION_203_0(v37);
  OUTLINED_FUNCTION_0_3();
  sub_1D84A8E00(v38);
  OUTLINED_FUNCTION_98();
  *(v13 + 16) = v39;
  *(v13 + 24) = sub_1D8484458;
  OUTLINED_FUNCTION_9_0(v40);
  OUTLINED_FUNCTION_173();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t DistributedLeaderboardServiceProtocol<>.describe(leaderboardSets:)()
{
  OUTLINED_FUNCTION_148();
  v5 = OUTLINED_FUNCTION_371(v1, v2, v3, v4);
  v0[14] = v5;
  OUTLINED_FUNCTION_39(v5);
  v0[15] = v6;
  v0[16] = OUTLINED_FUNCTION_332();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39738, &unk_1D859F280);
  v0[17] = v7;
  OUTLINED_FUNCTION_39(v7);
  v0[18] = v8;
  v0[19] = OUTLINED_FUNCTION_332();
  v9 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v9);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_250(v0, v1, v2);
  OUTLINED_FUNCTION_198();
  v3 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1D84B161C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    v15 = v14[10];
    OUTLINED_FUNCTION_83_0();
    OUTLINED_FUNCTION_110_0();
    OUTLINED_FUNCTION_90();
    if (v15)
    {
      OUTLINED_FUNCTION_342();

LABEL_12:
      OUTLINED_FUNCTION_168_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
    }

    OUTLINED_FUNCTION_174_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39740, &unk_1D8596160);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_194_0();
    OUTLINED_FUNCTION_84(v29, v30, v31, v32, (v14 + 7));
    sub_1D8491E2C();
    v33 = sub_1D8491EDC();
    OUTLINED_FUNCTION_31(v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39770, &unk_1D8596170);
    sub_1D8491F8C();
    v35 = sub_1D84920E8();
    OUTLINED_FUNCTION_10(v35);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v36)
    {
      OUTLINED_FUNCTION_452();
      v37 = OUTLINED_FUNCTION_49_0();
      v38(v37);
      OUTLINED_FUNCTION_331();

      goto LABEL_12;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v14[21] = v47;
    *v47 = v48;
    v47[1] = sub_1D84848FC;
    OUTLINED_FUNCTION_215_0();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_210(v14[12]);
    OUTLINED_FUNCTION_54();
    v50 = v16 + *v16;
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_286(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_17(v18);
    OUTLINED_FUNCTION_169();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, v50, a12, a13, a14);
  }
}

uint64_t sub_1D84B18F8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
  v10[1] = sub_1D84BD878;

  return DistributedLeaderboardServiceProtocol<>.describe(leaderboardSets:)();
}

uint64_t sub_1D84B1A88()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_31_0(&unk_1D8599978);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_42_0(v1);

  return v4(v3);
}

uint64_t sub_1D84B1B14(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1D8581018();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39578, &unk_1D85981A0);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84B1C3C);
}

uint64_t sub_1D84B1C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_24(&unk_1D8599978);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_201_0(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_27_0(v16);
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_110_1();
  v14 = type metadata accessor for $DistributedLeaderboardServiceProtocol();
  OUTLINED_FUNCTION_91(v14);
  if (v12)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_175_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA392E0, &qword_1D8591020);
  v27 = OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_229(v27, v28, v29, v30, v13 + 40);
  sub_1D847C154();
  v31 = sub_1D847C0A4();
  OUTLINED_FUNCTION_31(v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA397B0, &unk_1D8596190);
  sub_1D8492BB0();
  v33 = sub_1D8492C60();
  OUTLINED_FUNCTION_10(v33);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v34)
  {
    OUTLINED_FUNCTION_453();
    v35 = OUTLINED_FUNCTION_49_0();
    v36(v35);
    OUTLINED_FUNCTION_331();

LABEL_9:
    OUTLINED_FUNCTION_258_0();

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v37 = swift_task_alloc();
  OUTLINED_FUNCTION_203_0(v37);
  OUTLINED_FUNCTION_0_3();
  sub_1D84A8E00(v38);
  OUTLINED_FUNCTION_98();
  *(v13 + 16) = v39;
  *(v13 + 24) = sub_1D84A1480;
  OUTLINED_FUNCTION_9_0(v40);
  OUTLINED_FUNCTION_173();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t DistributedLeaderboardServiceProtocol<>.listLeaderboardSets(games:)()
{
  OUTLINED_FUNCTION_148();
  v5 = OUTLINED_FUNCTION_371(v1, v2, v3, v4);
  v0[14] = v5;
  OUTLINED_FUNCTION_39(v5);
  v0[15] = v6;
  v0[16] = OUTLINED_FUNCTION_332();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39578, &unk_1D85981A0);
  v0[17] = v7;
  OUTLINED_FUNCTION_39(v7);
  v0[18] = v8;
  v0[19] = OUTLINED_FUNCTION_332();
  v9 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v9);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_250(v0, v1, v2);
  OUTLINED_FUNCTION_198();
  v3 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1D84B1FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    v15 = v14[10];
    OUTLINED_FUNCTION_83_0();
    OUTLINED_FUNCTION_110_0();
    OUTLINED_FUNCTION_90();
    if (v15)
    {
      OUTLINED_FUNCTION_342();

LABEL_12:
      OUTLINED_FUNCTION_168_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
    }

    OUTLINED_FUNCTION_174_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA392E0, &qword_1D8591020);
    v29 = OUTLINED_FUNCTION_87_0();
    OUTLINED_FUNCTION_229(v29, v30, v31, v32, (v14 + 7));
    sub_1D847C154();
    v33 = sub_1D847C0A4();
    OUTLINED_FUNCTION_31(v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA397B0, &unk_1D8596190);
    sub_1D8492BB0();
    v35 = sub_1D8492C60();
    OUTLINED_FUNCTION_10(v35);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v36)
    {
      OUTLINED_FUNCTION_452();
      v37 = OUTLINED_FUNCTION_49_0();
      v38(v37);
      OUTLINED_FUNCTION_331();

      goto LABEL_12;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v14[21] = v47;
    *v47 = v48;
    v47[1] = sub_1D84A1A80;
    OUTLINED_FUNCTION_215_0();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_210(v14[12]);
    OUTLINED_FUNCTION_54();
    v50 = v16 + *v16;
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_286(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_17(v18);
    OUTLINED_FUNCTION_169();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, v50, a12, a13, a14);
  }
}

uint64_t sub_1D84B2290(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
  v10[1] = sub_1D84B2420;

  return DistributedLeaderboardServiceProtocol<>.listLeaderboardSets(games:)();
}

uint64_t sub_1D84B2420()
{
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_171_0();
  *v0 = v1;
  *v3 = v2;

  v4 = OUTLINED_FUNCTION_188();
  v5(v4);

  OUTLINED_FUNCTION_146();

  return v6();
}

uint64_t sub_1D84B259C()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_31_0(&unk_1D8599970);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_42_0(v1);

  return v4(v3);
}

uint64_t sub_1D84B2628(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1D8581018();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39738, &unk_1D859F280);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84B2750);
}

uint64_t sub_1D84B2750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_24(&unk_1D8599970);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_201_0(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_27_0(v16);
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_110_1();
  v14 = type metadata accessor for $DistributedLeaderboardServiceProtocol();
  OUTLINED_FUNCTION_91(v14);
  if (v12)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_175_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39740, &unk_1D8596160);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_194_0();
  OUTLINED_FUNCTION_84(v27, v28, v29, v30, v13 + 40);
  sub_1D8491E2C();
  v31 = sub_1D8491EDC();
  OUTLINED_FUNCTION_31(v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA396D8, &unk_1D859F230);
  sub_1D848FFF0();
  v33 = sub_1D84900A0();
  OUTLINED_FUNCTION_10(v33);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v34)
  {
    OUTLINED_FUNCTION_453();
    v35 = OUTLINED_FUNCTION_49_0();
    v36(v35);
    OUTLINED_FUNCTION_331();

LABEL_9:
    OUTLINED_FUNCTION_258_0();

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v37 = swift_task_alloc();
  OUTLINED_FUNCTION_203_0(v37);
  OUTLINED_FUNCTION_0_3();
  sub_1D84A8E00(v38);
  OUTLINED_FUNCTION_98();
  *(v13 + 16) = v39;
  *(v13 + 24) = sub_1D8484458;
  OUTLINED_FUNCTION_9_0(v40);
  OUTLINED_FUNCTION_173();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t DistributedLeaderboardServiceProtocol<>.listLeaderboards(leaderboardSets:)()
{
  OUTLINED_FUNCTION_148();
  v5 = OUTLINED_FUNCTION_371(v1, v2, v3, v4);
  v0[14] = v5;
  OUTLINED_FUNCTION_39(v5);
  v0[15] = v6;
  v0[16] = OUTLINED_FUNCTION_332();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39738, &unk_1D859F280);
  v0[17] = v7;
  OUTLINED_FUNCTION_39(v7);
  v0[18] = v8;
  v0[19] = OUTLINED_FUNCTION_332();
  v9 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v9);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_250(v0, v1, v2);
  OUTLINED_FUNCTION_198();
  v3 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1D84B2AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    v15 = v14[10];
    OUTLINED_FUNCTION_83_0();
    OUTLINED_FUNCTION_110_0();
    OUTLINED_FUNCTION_90();
    if (v15)
    {
      OUTLINED_FUNCTION_342();

LABEL_12:
      OUTLINED_FUNCTION_168_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
    }

    OUTLINED_FUNCTION_174_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39740, &unk_1D8596160);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_194_0();
    OUTLINED_FUNCTION_84(v29, v30, v31, v32, (v14 + 7));
    sub_1D8491E2C();
    v33 = sub_1D8491EDC();
    OUTLINED_FUNCTION_31(v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA396D8, &unk_1D859F230);
    sub_1D848FFF0();
    v35 = sub_1D84900A0();
    OUTLINED_FUNCTION_10(v35);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v36)
    {
      OUTLINED_FUNCTION_452();
      v37 = OUTLINED_FUNCTION_49_0();
      v38(v37);
      OUTLINED_FUNCTION_331();

      goto LABEL_12;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v14[21] = v47;
    *v47 = v48;
    v47[1] = sub_1D84848FC;
    OUTLINED_FUNCTION_215_0();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_210(v14[12]);
    OUTLINED_FUNCTION_54();
    v50 = v16 + *v16;
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_286(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_17(v18);
    OUTLINED_FUNCTION_169();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, v50, a12, a13, a14);
  }
}

uint64_t sub_1D84B2DAC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
  v10[1] = sub_1D84BD878;

  return DistributedLeaderboardServiceProtocol<>.listLeaderboards(leaderboardSets:)();
}

uint64_t sub_1D84B2F3C()
{
  type metadata accessor for $DistributedLeaderboardServiceProtocol();
  OUTLINED_FUNCTION_0_3();
  sub_1D84A8E00(v0);
  v1 = OUTLINED_FUNCTION_188();

  return MEMORY[0x1EEE6CC98](v1);
}

uint64_t sub_1D84B2FB0(uint64_t a1)
{
  type metadata accessor for $DistributedLeaderboardServiceProtocol();
  OUTLINED_FUNCTION_0_3();
  sub_1D84A8E00(v1);
  sub_1D843D180();
  return sub_1D8580FD8();
}

uint64_t sub_1D84B3034@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for $DistributedLeaderboardServiceProtocol();
  OUTLINED_FUNCTION_0_3();
  sub_1D84A8E00(v4);
  sub_1D843EE3C();
  result = sub_1D8580FE8();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t LeaderboardPlayerScope.rawValue.getter()
{
  if (*v0)
  {
    return 0x6C61626F6C67;
  }

  else
  {
    return 0x73646E65697266;
  }
}

uint64_t sub_1D84B3110@<X0>(uint64_t *a1@<X8>)
{
  result = LeaderboardPlayerScope.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D84B3138()
{
  OUTLINED_FUNCTION_99();
  sub_1D84BD7E8();
  OUTLINED_FUNCTION_102();
  return sub_1D8581438();
}

uint64_t sub_1D84B3180()
{
  OUTLINED_FUNCTION_99();
  sub_1D84BD7E8();
  OUTLINED_FUNCTION_102();
  return sub_1D85813E8();
}

uint64_t sub_1D84B31C4(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6E69727275636572;
  }

  else
  {
    v3 = 0x63697373616C63;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE900000000000067;
  }

  if (a2)
  {
    v5 = 0x6E69727275636572;
  }

  else
  {
    v5 = 0x63697373616C63;
  }

  if (a2)
  {
    v6 = 0xE900000000000067;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D8581AB8();
  }

  return v8 & 1;
}

uint64_t sub_1D84B3268(unsigned __int8 a1, char a2)
{
  v2 = 0x68343274736170;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x6B65655774736170;
    }

    else
    {
      v4 = 0x656D69546C6C61;
    }

    if (v3 == 1)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v4 = 0x68343274736170;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x6B65655774736170;
    }

    else
    {
      v2 = 0x656D69546C6C61;
    }

    if (a2 == 1)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D8581AB8();
  }

  return v8 & 1;
}

uint64_t sub_1D84B3364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v6 = OUTLINED_FUNCTION_188();
  sub_1D848211C(v6);
  OUTLINED_FUNCTION_291();
  sub_1D85813D8();
  OUTLINED_FUNCTION_291();
  sub_1D85813D8();
  if (v12 == v10 && v13 == v11)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D8581AB8();
  }

  return v8 & 1;
}

uint64_t sub_1D84B343C(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6C61626F6C67;
  }

  else
  {
    v3 = 0x73646E65697266;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (a2)
  {
    v5 = 0x6C61626F6C67;
  }

  else
  {
    v5 = 0x73646E65697266;
  }

  if (a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D8581AB8();
  }

  return v8 & 1;
}

uint64_t sub_1D84B350C(uint64_t a1, char a2)
{
  sub_1D85812B8();
}

uint64_t sub_1D84B3574(uint64_t a1, char a2)
{
  sub_1D85812B8();
}

uint64_t sub_1D84B35E4(uint64_t a1, unsigned __int8 a2)
{
  sub_1D85812B8();
}

uint64_t sub_1D84B3678(uint64_t a1, char a2)
{
  sub_1D8581B58();
  sub_1D85812B8();

  return sub_1D8581B98();
}

uint64_t sub_1D84B36FC(uint64_t a1, char a2)
{
  sub_1D8581B58();
  sub_1D85812B8();

  return sub_1D8581B98();
}

uint64_t sub_1D84B379C(uint64_t a1, char a2)
{
  sub_1D8581B58();
  sub_1D85812B8();

  return sub_1D8581B98();
}

void *LeaderboardScore.init(player:value:context:leaderboard:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v5 = result[1];
  v6 = *a4;
  v7 = a4[1];
  *a5 = *result;
  a5[1] = v5;
  a5[2] = a2;
  a5[3] = a3;
  a5[4] = v6;
  a5[5] = v7;
  return result;
}

uint64_t static LeaderboardScore.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = sub_1D84B3364(*a1, a1[1], *a2, a2[1], &qword_1ECA389B8, &qword_1D8590B30);
  v9 = 0;
  if ((v8 & 1) != 0 && v2 == v4 && v3 == v5)
  {
    v11 = OUTLINED_FUNCTION_194();
    v9 = sub_1D84B3364(v11, v12, v6, v7, v13, v14);
  }

  return v9 & 1;
}

uint64_t sub_1D84B3904()
{
  OUTLINED_FUNCTION_263_0();
  v2 = OUTLINED_FUNCTION_70();
  v4 = v1 == v2 && v3 == 0xE600000000000000;
  if (v4 || (OUTLINED_FUNCTION_7(v2, 0xE600000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_439(1970037110);
    v7 = v4 && v0 == 0xE500000000000000;
    if (v7 || (OUTLINED_FUNCTION_7(v6, 0xE500000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_219_1();
      v9 = v4 && v0 == 0xE700000000000000;
      if (v9 || (OUTLINED_FUNCTION_7(v8, 0xE700000000000000) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v10 = OUTLINED_FUNCTION_299();
        if (v1 == v10 && v0 == v11)
        {

          return 3;
        }

        else
        {
          OUTLINED_FUNCTION_7(v10, v11);
          OUTLINED_FUNCTION_369();
          if (v1)
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
}

uint64_t sub_1D84B39F4()
{
  result = OUTLINED_FUNCTION_70();
  switch(v1)
  {
    case 1:
      result = OUTLINED_FUNCTION_232_1(1970037110);
      break;
    case 2:
      result = 0x747865746E6F63;
      break;
    case 3:
      result = OUTLINED_FUNCTION_299();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D84B3A88@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D84B3904();
  *a1 = result;
  return result;
}

uint64_t sub_1D84B3AB0()
{
  sub_1D84B3D14();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84B3AE8()
{
  sub_1D84B3D14();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void LeaderboardScore.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39A18, &qword_1D8598230);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_110();
  v5 = *v0;
  OUTLINED_FUNCTION_252_1();
  OUTLINED_FUNCTION_260(v3, v3[3]);
  sub_1D84B3D14();

  OUTLINED_FUNCTION_359();
  sub_1D8581BB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389B8, &qword_1D8590B30);
  OUTLINED_FUNCTION_1_1();
  sub_1D848211C(v6);
  OUTLINED_FUNCTION_27_1();
  sub_1D8581A58();
  OUTLINED_FUNCTION_228_0();
  if (!v5)
  {
    OUTLINED_FUNCTION_290();
    OUTLINED_FUNCTION_232();
    sub_1D8581A38();
    if (!v1)
    {
      OUTLINED_FUNCTION_340();
      OUTLINED_FUNCTION_232();
      sub_1D8581A48();
      OUTLINED_FUNCTION_191_1();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38A90, &qword_1D8590AB0);
      OUTLINED_FUNCTION_1_1();
      sub_1D848211C(v7);
      OUTLINED_FUNCTION_27_1();
      OUTLINED_FUNCTION_232();
      sub_1D8581A58();
      OUTLINED_FUNCTION_228_0();
    }
  }

  v8 = OUTLINED_FUNCTION_291();
  v9(v8);
  OUTLINED_FUNCTION_220_2();
  OUTLINED_FUNCTION_284_0();
}

unint64_t sub_1D84B3D14()
{
  result = qword_1ECA43DB0;
  if (!qword_1ECA43DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA43DB0);
  }

  return result;
}

uint64_t LeaderboardScore.hash(into:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OUTLINED_FUNCTION_150();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_122_0();
  sub_1D848211C(v5);
  OUTLINED_FUNCTION_161();
  sub_1D85811E8();
  MEMORY[0x1DA7191F0](v1);
  MEMORY[0x1DA7191F0](v2);
  OUTLINED_FUNCTION_284_1();
  sub_1D848211C(&unk_1ECA38A98);
  OUTLINED_FUNCTION_161();
  return sub_1D85811E8();
}

uint64_t LeaderboardScore.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_1D8581B58();
  v7 = OUTLINED_FUNCTION_189();
  __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  v9 = sub_1D848211C(&qword_1EE0E0090);
  OUTLINED_FUNCTION_412(v9, v10, v11, v12, v13, v14, v15, v16, v28, v1, v2, v30);
  sub_1D85811E8();
  MEMORY[0x1DA7191F0](v3);
  MEMORY[0x1DA7191F0](v4);
  v17 = OUTLINED_FUNCTION_194();
  __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
  v19 = sub_1D848211C(&unk_1ECA38A98);
  OUTLINED_FUNCTION_412(v19, v20, v21, v22, v23, v24, v25, v26, v29, v5, v6, v31);
  sub_1D85811E8();
  return sub_1D8581B98();
}

void LeaderboardScore.init(from:)()
{
  OUTLINED_FUNCTION_285();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39A20, &qword_1D8598238);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_260(v2, v2[3]);
  v6 = sub_1D84B3D14();
  OUTLINED_FUNCTION_237_0(&type metadata for LeaderboardScore.CodingKeys, v7, v6);
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_509();
    __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
    OUTLINED_FUNCTION_3();
    sub_1D848211C(v10);
    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_185_0();
    sub_1D8581958();
    OUTLINED_FUNCTION_290();
    OUTLINED_FUNCTION_185_0();
    v15 = sub_1D8581938();
    OUTLINED_FUNCTION_340();
    OUTLINED_FUNCTION_185_0();
    v11 = sub_1D8581948();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38A90, &qword_1D8590AB0);
    OUTLINED_FUNCTION_191_1();
    OUTLINED_FUNCTION_3();
    sub_1D848211C(v12);
    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_185_0();
    sub_1D8581958();
    v13 = OUTLINED_FUNCTION_199_0();
    v14(v13);
    *v4 = v16;
    v4[1] = v17;
    v4[2] = v15;
    v4[3] = v11;
    v4[4] = v16;
    v4[5] = v17;

    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  OUTLINED_FUNCTION_480();
  OUTLINED_FUNCTION_284_0();
}

uint64_t sub_1D84B4200(uint64_t a1)
{
  sub_1D8581B58();
  LeaderboardScore.hash(into:)();
  return sub_1D8581B98();
}

GameServices::LeaderboardTimeScope_optional __swiftcall LeaderboardTimeScope.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D8581868();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t LeaderboardTimeScope.rawValue.getter()
{
  v1 = 0x6B65655774736170;
  if (*v0 != 1)
  {
    v1 = 0x656D69546C6C61;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x68343274736170;
  }
}

uint64_t sub_1D84B431C@<X0>(uint64_t *a1@<X8>)
{
  result = LeaderboardTimeScope.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D84B4344()
{
  OUTLINED_FUNCTION_99();
  sub_1D84BD794();
  OUTLINED_FUNCTION_102();
  return sub_1D8581438();
}

uint64_t sub_1D84B438C()
{
  OUTLINED_FUNCTION_99();
  sub_1D84BD794();
  OUTLINED_FUNCTION_102();
  return sub_1D85813E8();
}

uint64_t sub_1D84B43F4@<X0>(char *a2@<X8>)
{
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

  *a2 = v5;
  return result;
}

uint64_t LeaderboardType.rawValue.getter()
{
  if (*v0)
  {
    return 0x6E69727275636572;
  }

  else
  {
    return 0x63697373616C63;
  }
}

uint64_t sub_1D84B44A0@<X0>(uint64_t *a1@<X8>)
{
  result = LeaderboardType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D84B44C8()
{
  OUTLINED_FUNCTION_99();
  sub_1D84BD740();
  OUTLINED_FUNCTION_102();
  return sub_1D8581438();
}

uint64_t sub_1D84B4510()
{
  OUTLINED_FUNCTION_99();
  sub_1D84BD740();
  OUTLINED_FUNCTION_102();
  return sub_1D85813E8();
}

uint64_t static LeaderboardVisibility.fromVisibility(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v5 = 0;
  if (a2)
  {
    v4 = result == 0x524F465F45444948 && a2 == 0xEC0000004C4C415FLL;
    if (v4 || (result = sub_1D8581AB8(), (result & 1) != 0))
    {
      v5 = 1;
    }
  }

  *a3 = v5;
  return result;
}

uint64_t sub_1D84B45EC()
{
  OUTLINED_FUNCTION_263_0();
  v3 = v1 == 0x41726F46776F6873 && v2 == 0xEA00000000006C6CLL;
  if (v3 || (OUTLINED_FUNCTION_7(0x41726F46776F6873, 0xEA00000000006C6CLL) & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0x41726F4665646968 && v0 == 0xEA00000000006C6CLL)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_7(0x41726F4665646968, 0xEA00000000006C6CLL);
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

uint64_t sub_1D84B46A0(char a1)
{
  if (a1)
  {
    return 0x41726F4665646968;
  }

  else
  {
    return 0x41726F46776F6873;
  }
}

uint64_t sub_1D84B46F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D84B45EC();
  *a1 = result;
  return result;
}

uint64_t sub_1D84B4718()
{
  sub_1D84B4AC4();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84B4750()
{
  sub_1D84B4AC4();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D84B4788()
{
  sub_1D84B4B18();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84B47C0()
{
  sub_1D84B4B18();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D84B47F8()
{
  sub_1D84B4B6C();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84B4830()
{
  sub_1D84B4B6C();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void LeaderboardVisibility.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_285();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39A28, &qword_1D8598240);
  OUTLINED_FUNCTION_1();
  v47 = v27;
  v48 = v26;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v28);
  v46 = v45 - v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39A30, &qword_1D8598248);
  OUTLINED_FUNCTION_1();
  v45[0] = v31;
  v45[1] = v30;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_250_0();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39A38, &qword_1D8598250);
  OUTLINED_FUNCTION_1();
  v35 = v34;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v36);
  v38 = v45 - v37;
  v39 = *v23;
  OUTLINED_FUNCTION_260(v25, v25[3]);
  sub_1D84B4AC4();
  sub_1D8581BB8();
  v40 = (v35 + 8);
  if (v39)
  {
    OUTLINED_FUNCTION_338();
    sub_1D84B4B18();
    v41 = v46;
    sub_1D8581988();
    (*(v47 + 8))(v41, v48);
  }

  else
  {
    sub_1D84B4B6C();
    sub_1D8581988();
    v42 = OUTLINED_FUNCTION_362();
    v44(v42, v43);
  }

  (*v40)(v38, v33);
  OUTLINED_FUNCTION_284_0();
}

unint64_t sub_1D84B4AC4()
{
  result = qword_1ECA43DB8;
  if (!qword_1ECA43DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA43DB8);
  }

  return result;
}

unint64_t sub_1D84B4B18()
{
  result = qword_1ECA43DC0;
  if (!qword_1ECA43DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA43DC0);
  }

  return result;
}

unint64_t sub_1D84B4B6C()
{
  result = qword_1ECA43DC8;
  if (!qword_1ECA43DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA43DC8);
  }

  return result;
}

uint64_t LeaderboardVisibility.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_379(a1);
  v1 = OUTLINED_FUNCTION_298();
  MEMORY[0x1DA7191F0](v1);
  return sub_1D8581B98();
}

void LeaderboardVisibility.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_285();
  a22 = v25;
  a23 = v26;
  v70 = v23;
  v28 = v27;
  v67 = v29;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39A40, &qword_1D8598258);
  OUTLINED_FUNCTION_1();
  v66 = v30;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v31);
  v33 = v62 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39A48, &qword_1D8598260);
  OUTLINED_FUNCTION_1();
  v65 = v35;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_160();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39A50, &unk_1D8598268);
  OUTLINED_FUNCTION_1();
  v68 = v38;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v39);
  v41 = v62 - v40;
  OUTLINED_FUNCTION_260(v28, v28[3]);
  sub_1D84B4AC4();
  v42 = v70;
  sub_1D8581BA8();
  if (v42)
  {
    goto LABEL_10;
  }

  v63 = v34;
  v64 = v24;
  v70 = v28;
  v43 = v69;
  v44 = sub_1D8581968();
  v45 = sub_1D84BACA0(v44, 0);
  if (v47 == v48 >> 1)
  {
    v69 = v45;
LABEL_9:
    v58 = sub_1D85817C8();
    swift_allocError();
    v60 = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38AD0, &qword_1D8590AE0);
    *v60 = &type metadata for LeaderboardVisibility;
    sub_1D8581888();
    sub_1D85817B8();
    (*(*(v58 - 8) + 104))(v60, *MEMORY[0x1E69E6AF8], v58);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v68 + 8))(v41, v37);
    v28 = v70;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v28);
LABEL_11:
    OUTLINED_FUNCTION_480();
    OUTLINED_FUNCTION_284_0();
    return;
  }

  v62[1] = 0;
  if (v47 < (v48 >> 1))
  {
    v49 = *(v46 + v47);
    v50 = sub_1D84BAE48(v47 + 1, v48 >> 1, v45, v46, v47, v48);
    v52 = v51;
    v54 = v53;
    swift_unknownObjectRelease();
    if (v52 == v54 >> 1)
    {
      if (v49)
      {
        OUTLINED_FUNCTION_338();
        sub_1D84B4B18();
        v55 = v33;
        OUTLINED_FUNCTION_240_0(&type metadata for LeaderboardVisibility.HideForAllCodingKeys, &a13);
        v56 = v67;
        v57 = v68;
        swift_unknownObjectRelease();
        (*(v66 + 8))(v55, v43);
      }

      else
      {
        a12 = 0;
        sub_1D84B4B6C();
        v61 = v64;
        OUTLINED_FUNCTION_240_0(&type metadata for LeaderboardVisibility.ShowForAllCodingKeys, &a12);
        v56 = v67;
        v57 = v68;
        swift_unknownObjectRelease();
        (*(v65 + 8))(v61, v63);
      }

      (*(v57 + 8))(v41, v52);
      *v56 = v49;
      __swift_destroy_boxed_opaque_existential_1(v70);
      goto LABEL_11;
    }

    v69 = v50;
    goto LABEL_9;
  }

  __break(1u);
}

void *GameWithPlayer.init(_:_:)@<X0>(void *result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = result[1];
  v4 = *a2;
  v5 = a2[1];
  *a3 = *result;
  a3[1] = v3;
  a3[2] = v4;
  a3[3] = v5;
  return result;
}

uint64_t static GameWithPlayer.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a2[2];
  v3 = a2[3];
  if (sub_1D84B3364(*a1, a1[1], *a2, a2[1], &qword_1ECA38B38, &qword_1D85981B0))
  {
    v4 = OUTLINED_FUNCTION_194();
    v8 = sub_1D84B3364(v4, v5, v2, v3, v6, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1D84B5164(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667175 && a2 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_7(1701667175, 0xE400000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_70();
    if (a1 == v6 && a2 == 0xE600000000000000)
    {

      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_7(v6, 0xE600000000000000);
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
}

uint64_t sub_1D84B5200(char a1)
{
  if (a1)
  {
    return 0x726579616C70;
  }

  else
  {
    return 1701667175;
  }
}

uint64_t sub_1D84B5234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D84B5164(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D84B525C()
{
  sub_1D84BAEC4();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84B5294()
{
  sub_1D84BAEC4();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void GameWithPlayer.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39A58, &qword_1D8598278);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_110();
  v4 = *v0;
  OUTLINED_FUNCTION_260(v2, v2[3]);
  sub_1D84BAEC4();

  OUTLINED_FUNCTION_359();
  sub_1D8581BB8();
  v5 = OUTLINED_FUNCTION_167();
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_1_1();
  sub_1D848211C(v7);
  OUTLINED_FUNCTION_27_1();
  sub_1D8581A58();
  OUTLINED_FUNCTION_228_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_338();

    v8 = OUTLINED_FUNCTION_509();
    __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
    OUTLINED_FUNCTION_1_1();
    sub_1D848211C(v10);
    OUTLINED_FUNCTION_27_1();
    OUTLINED_FUNCTION_232();
    sub_1D8581A58();
    OUTLINED_FUNCTION_228_0();
  }

  v11 = OUTLINED_FUNCTION_291();
  v12(v11);
  OUTLINED_FUNCTION_220_2();
  OUTLINED_FUNCTION_284_0();
}

uint64_t GameWithPlayer.hash(into:)(uint64_t a1)
{
  OUTLINED_FUNCTION_284_1();
  sub_1D848211C(&unk_1ECA38B58);
  OUTLINED_FUNCTION_161();
  sub_1D85811E8();
  OUTLINED_FUNCTION_284_1();
  sub_1D848211C(&qword_1EE0E0090);
  OUTLINED_FUNCTION_161();
  return sub_1D85811E8();
}

uint64_t GameWithPlayer.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1D8581B58();
  v5 = OUTLINED_FUNCTION_194();
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  v7 = sub_1D848211C(&unk_1ECA38B58);
  OUTLINED_FUNCTION_412(v7, v8, v9, v10, v11, v12, v13, v14, v26, v1, v2, v28);
  sub_1D85811E8();
  v15 = OUTLINED_FUNCTION_194();
  __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  v17 = sub_1D848211C(&qword_1EE0E0090);
  OUTLINED_FUNCTION_412(v17, v18, v19, v20, v21, v22, v23, v24, v27, v3, v4, v29);
  sub_1D85811E8();
  return sub_1D8581B98();
}

void GameWithPlayer.init(from:)()
{
  OUTLINED_FUNCTION_285();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39A60, &qword_1D8598280);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_260(v2, v2[3]);
  v6 = sub_1D84BAEC4();
  OUTLINED_FUNCTION_237_0(&type metadata for GameWithPlayer.CodingKeys, v7, v6);
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_509();
    __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
    OUTLINED_FUNCTION_3();
    sub_1D848211C(v10);
    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_185_0();
    sub_1D8581958();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389B8, &qword_1D8590B30);
    OUTLINED_FUNCTION_338();
    OUTLINED_FUNCTION_3();
    sub_1D848211C(v11);
    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_185_0();
    sub_1D8581958();
    v12 = OUTLINED_FUNCTION_199_0();
    v13(v12);
    *v4 = v14;
    v4[1] = v15;
    v4[2] = v14;
    v4[3] = v15;

    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  OUTLINED_FUNCTION_480();
  OUTLINED_FUNCTION_284_0();
}

uint64_t sub_1D84B5880(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 3);
  v6 = *v1;
  v7 = v2;
  v8 = v3;
  sub_1D8581B58();
  GameWithPlayer.hash(into:)(v5);
  return sub_1D8581B98();
}

uint64_t RecurringLeaderboardProperties.startDate.getter()
{
  OUTLINED_FUNCTION_393_0();
  sub_1D8580EA8();
  OUTLINED_FUNCTION_4_0();
  v0 = OUTLINED_FUNCTION_194();

  return v1(v0);
}

uint64_t RecurringLeaderboardProperties.startDate.setter()
{
  OUTLINED_FUNCTION_85_1();
  sub_1D8580EA8();
  OUTLINED_FUNCTION_4_0();
  v0 = OUTLINED_FUNCTION_151();

  return v1(v0);
}

uint64_t RecurringLeaderboardProperties.nextStartDate.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  type metadata accessor for RecurringLeaderboardProperties(v0);
  return OUTLINED_FUNCTION_106();
}

uint64_t RecurringLeaderboardProperties.duration.setter(double a1)
{
  result = type metadata accessor for RecurringLeaderboardProperties(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t RecurringLeaderboardProperties.duration.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  type metadata accessor for RecurringLeaderboardProperties(v0);
  return OUTLINED_FUNCTION_106();
}

uint64_t RecurringLeaderboardProperties.init(startDate:nextStartDate:duration:)(double a1)
{
  OUTLINED_FUNCTION_263_0();
  v5 = v4;
  v6 = sub_1D8580EA8();
  OUTLINED_FUNCTION_4_0();
  v8 = *(v7 + 32);
  v8(v5, v2, v6);
  v9 = type metadata accessor for RecurringLeaderboardProperties(0);
  result = (v8)(v5 + *(v9 + 20), v1, v6);
  *(v5 + *(v9 + 24)) = a1;
  return result;
}

BOOL static RecurringLeaderboardProperties.== infix(_:_:)()
{
  OUTLINED_FUNCTION_263_0();
  if (_s12GameServices0A7HistoryV04PlayC0V2eeoiySbAE_AEtFZ_0() & 1) != 0 && (v3 = type metadata accessor for RecurringLeaderboardProperties(0), (OUTLINED_FUNCTION_278_1(v3)))
  {
    return *(v1 + *(v2 + 24)) == *(v0 + *(v2 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D84B5BA8()
{
  OUTLINED_FUNCTION_263_0();
  v3 = v1 == 0x7461447472617473 && v2 == 0xE900000000000065;
  if (v3 || (OUTLINED_FUNCTION_7(0x7461447472617473, 0xE900000000000065) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0x726174537478656ELL && v0 == 0xED00006574614474;
    if (v5 || (OUTLINED_FUNCTION_7(0x726174537478656ELL, 0xED00006574614474) & 1) != 0)
    {

      return 1;
    }

    else if (v1 == 0x6E6F697461727564 && v0 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      OUTLINED_FUNCTION_7(0x6E6F697461727564, 0xE800000000000000);
      OUTLINED_FUNCTION_369();
      if (v1)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1D84B5C98(char a1)
{
  if (!a1)
  {
    return 0x7461447472617473;
  }

  if (a1 == 1)
  {
    return 0x726174537478656ELL;
  }

  return 0x6E6F697461727564;
}

uint64_t sub_1D84B5D08@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D84B5BA8();
  *a1 = result;
  return result;
}

uint64_t sub_1D84B5D30()
{
  sub_1D84BAF38();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84B5D68()
{
  sub_1D84BAF38();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void RecurringLeaderboardProperties.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_285();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39A68, &qword_1D8598288);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_110();
  v26 = OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_260(v26, v27);
  sub_1D84BAF38();
  OUTLINED_FUNCTION_359();
  OUTLINED_FUNCTION_217_1();
  sub_1D8581BB8();
  sub_1D8580EA8();
  OUTLINED_FUNCTION_4_1();
  sub_1D84A8E00(v28);
  OUTLINED_FUNCTION_217_1();
  sub_1D8581A58();
  if (!v24)
  {
    type metadata accessor for RecurringLeaderboardProperties(0);
    OUTLINED_FUNCTION_217_1();
    sub_1D8581A58();
    sub_1D8581A28();
  }

  v29 = OUTLINED_FUNCTION_291();
  v30(v29);
  OUTLINED_FUNCTION_284_0();
}

uint64_t RecurringLeaderboardProperties.hash(into:)()
{
  sub_1D8580EA8();
  OUTLINED_FUNCTION_4_1();
  sub_1D84A8E00(v1);
  OUTLINED_FUNCTION_206_1();
  sub_1D85811E8();
  v2 = type metadata accessor for RecurringLeaderboardProperties(0);
  OUTLINED_FUNCTION_206_1();
  sub_1D85811E8();
  v3 = *(v0 + *(v2 + 24));
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  return MEMORY[0x1DA719210](*&v3);
}

uint64_t RecurringLeaderboardProperties.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v33 = sub_1D8580EA8();
  OUTLINED_FUNCTION_1();
  v31 = v4;
  v6 = MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v6);
  v32 = (&v27 - v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39A70, &qword_1D8598290);
  OUTLINED_FUNCTION_1();
  v34 = v9;
  v35 = v8;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_250_0();
  v11 = type metadata accessor for RecurringLeaderboardProperties(0);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_1();
  v15 = v14 - v13;
  OUTLINED_FUNCTION_260(a1, a1[3]);
  sub_1D84BAF38();
  sub_1D8581BA8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = v15;
  v29 = a1;
  v27 = v11;
  v38 = 0;
  OUTLINED_FUNCTION_4_1();
  sub_1D84A8E00(v16);
  OUTLINED_FUNCTION_238_1();
  OUTLINED_FUNCTION_164();
  v32 = v17;
  v17();
  v37 = 1;
  OUTLINED_FUNCTION_238_1();
  v19 = v27;
  v18 = v28;
  OUTLINED_FUNCTION_164();
  v32();
  v36 = 2;
  sub_1D8581928();
  v20 = v18;
  v21 = v29;
  v23 = v22;
  v24 = OUTLINED_FUNCTION_362();
  v25(v24, v35);
  *(v20 + *(v19 + 24)) = v23;
  sub_1D84BB2DC();
  __swift_destroy_boxed_opaque_existential_1(v21);
  return sub_1D84BB334();
}

uint64_t LeaderboardDescription.baseLeaderboardId.setter()
{
  OUTLINED_FUNCTION_129_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t LeaderboardDescription.groupId.setter()
{
  OUTLINED_FUNCTION_129_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t sub_1D84B6518()
{
  v1 = OUTLINED_FUNCTION_393_0();
  v2 = type metadata accessor for RecurringLeaderboardProperties(v1);

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v2);
}

uint64_t LeaderboardDescription.recurringProperties.getter()
{
  v2 = OUTLINED_FUNCTION_393_0();
  v3 = v1 + *(type metadata accessor for LeaderboardDescription(v2) + 24);

  return sub_1D84BAF8C(v3, v0);
}

uint64_t LeaderboardDescription.recurringProperties.setter()
{
  v2 = OUTLINED_FUNCTION_85_1();
  v3 = v1 + *(type metadata accessor for LeaderboardDescription(v2) + 24);

  return sub_1D84BAFFC(v0, v3);
}

uint64_t LeaderboardDescription.recurringProperties.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  type metadata accessor for LeaderboardDescription(v0);
  return OUTLINED_FUNCTION_106();
}

uint64_t LeaderboardDescription.title.getter()
{
  type metadata accessor for LeaderboardDescription(0);
  OUTLINED_FUNCTION_188_1();
  return OUTLINED_FUNCTION_194();
}

uint64_t LeaderboardDescription.title.setter()
{
  OUTLINED_FUNCTION_129_0();
  type metadata accessor for LeaderboardDescription(0);
  result = OUTLINED_FUNCTION_235_1();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t LeaderboardDescription.title.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  type metadata accessor for LeaderboardDescription(v0);
  return OUTLINED_FUNCTION_106();
}

uint64_t LeaderboardDescription.type.getter()
{
  v2 = OUTLINED_FUNCTION_393_0();
  result = type metadata accessor for LeaderboardDescription(v2);
  *v0 = *(v1 + *(result + 32));
  return result;
}

uint64_t LeaderboardDescription.type.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for LeaderboardDescription(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t LeaderboardDescription.type.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  type metadata accessor for LeaderboardDescription(v0);
  return OUTLINED_FUNCTION_106();
}

uint64_t LeaderboardDescription.supportsChallenge.setter(char a1)
{
  result = type metadata accessor for LeaderboardDescription(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t LeaderboardDescription.supportsChallenge.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  type metadata accessor for LeaderboardDescription(v0);
  return OUTLINED_FUNCTION_106();
}

uint64_t LeaderboardDescription.image.getter()
{
  v0 = OUTLINED_FUNCTION_393_0();
  v1 = type metadata accessor for LeaderboardDescription(v0);
  OUTLINED_FUNCTION_202_1(*(v1 + 40));
}

uint64_t LeaderboardDescription.image.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  type metadata accessor for LeaderboardDescription(0);
  result = OUTLINED_FUNCTION_235_1();
  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t LeaderboardDescription.image.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  type metadata accessor for LeaderboardDescription(v0);
  return OUTLINED_FUNCTION_106();
}

uint64_t LeaderboardDescription.activityIdentifier.getter()
{
  type metadata accessor for LeaderboardDescription(0);
  OUTLINED_FUNCTION_188_1();
  return OUTLINED_FUNCTION_194();
}

uint64_t LeaderboardDescription.activityIdentifier.setter()
{
  OUTLINED_FUNCTION_129_0();
  type metadata accessor for LeaderboardDescription(0);
  result = OUTLINED_FUNCTION_235_1();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t LeaderboardDescription.activityIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  type metadata accessor for LeaderboardDescription(v0);
  return OUTLINED_FUNCTION_106();
}

uint64_t LeaderboardDescription.activityProperties.getter()
{
  type metadata accessor for LeaderboardDescription(0);
}

uint64_t LeaderboardDescription.activityProperties.setter()
{
  v2 = OUTLINED_FUNCTION_85_1();
  v3 = *(type metadata accessor for LeaderboardDescription(v2) + 48);

  *(v1 + v3) = v0;
  return result;
}

uint64_t LeaderboardDescription.activityProperties.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  type metadata accessor for LeaderboardDescription(v0);
  return OUTLINED_FUNCTION_106();
}

uint64_t LeaderboardDescription.releaseState.getter()
{
  v2 = OUTLINED_FUNCTION_393_0();
  result = type metadata accessor for LeaderboardDescription(v2);
  *v0 = *(v1 + *(result + 52));
  return result;
}

uint64_t sub_1D84B6A48()
{
  v2 = OUTLINED_FUNCTION_393_0();
  result = type metadata accessor for LeaderboardDescription(v2);
  *v0 = *(v1 + *(result + 56));
  return result;
}

uint64_t LeaderboardDescription.effectiveVisibility.getter()
{
  v2 = OUTLINED_FUNCTION_393_0();
  result = type metadata accessor for LeaderboardDescription(v2);
  *v0 = *(v1 + *(result + 56)) & 1;
  return result;
}

uint64_t LeaderboardDescription.description.getter()
{
  type metadata accessor for LeaderboardDescription(0);
  OUTLINED_FUNCTION_188_1();
  return OUTLINED_FUNCTION_194();
}

void LeaderboardDescription.init(baseLeaderboardId:groupId:recurringProperties:title:type:supportsChallenge:image:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>, char *x7_0@<X7>, uint64_t a9, uint64_t *a10)
{
  v32 = *x7_0;
  v36 = a10[1];
  v37 = *a10;
  OUTLINED_FUNCTION_30_1();
  v18 = (a8 + v17);
  v19 = (a8 + v12[10]);
  *v19 = 0;
  v19[1] = 0;
  v20 = v12[12];
  v21 = (a8 + v12[11]);
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  v22 = sub_1D84BAFFC(a5, a8 + v11);
  *v18 = a6;
  v18[1] = a7;
  OUTLINED_FUNCTION_79_0(v22, v23, v24, v25, v26, v27, v28, v29, a4, v31, v32, a5, v34, a9);

  *v19 = v37;
  v19[1] = v36;
  *v21 = 0;
  v21[1] = 0;
  *(a8 + v20) = 0;
  OUTLINED_FUNCTION_51_2();
}

void LeaderboardDescription.init(baseLeaderboardId:groupId:recurringProperties:title:type:supportsChallenge:image:activityIdentifier:activityProperties:releaseState:visibility:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t *a34, uint64_t a35)
{
  OUTLINED_FUNCTION_513();
  v60 = v38;
  v61 = v39;
  v59 = v40;
  v54 = v41;
  v55 = v42;
  OUTLINED_FUNCTION_62_0();
  v58 = v43;
  v45 = *v44;
  v56 = a34[1];
  v57 = *a34;
  v46 = type metadata accessor for LeaderboardDescription(0);
  v47 = v46[6];
  v48 = type metadata accessor for RecurringLeaderboardProperties(0);
  __swift_storeEnumTagSinglePayload(v35 + v47, 1, 1, v48);
  v49 = (v35 + v46[7]);
  v50 = (v35 + v46[10]);
  *v50 = 0;
  v50[1] = 0;
  v51 = v46[12];
  v52 = (v35 + v46[11]);
  *v35 = v37;
  v35[1] = v36;
  v35[2] = v54;
  v35[3] = v55;
  sub_1D84BAFFC(v59, v35 + v47);
  *v49 = v60;
  v49[1] = v61;
  *(v35 + v46[8]) = v45;
  *(v35 + v46[9]) = v58;

  *v50 = v57;
  v50[1] = v56;
  *v52 = a35;
  v52[1] = a19;
  *(v35 + v51) = a20;
  OUTLINED_FUNCTION_226_0(v46[13]);
  *v53 = 0;
  v53[1] = 0;
  OUTLINED_FUNCTION_514();
}

void LeaderboardDescription.init(baseLeaderboardId:groupId:recurringProperties:title:type:supportsChallenge:image:activityIdentifier:activityProperties:releaseState:visibility:description:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, void *a9@<X8>, char a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v26 = *a8;
  v32 = a11[1];
  v33 = *a11;
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_104_1();
  v28 = (a9 + v27);
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  sub_1D84BAFFC(a5, a9 + v18);
  *v19 = a6;
  v19[1] = a7;
  *(a9 + v21[8]) = v26;
  *(a9 + v21[9]) = a10;

  *v22 = v33;
  v22[1] = v32;
  *v28 = a12;
  v28[1] = a13;
  *(a9 + v20) = a14;
  OUTLINED_FUNCTION_226_0(v21[13]);
  *v29 = a17;
  v29[1] = a18;
}

BOOL static LeaderboardDescription.== infix(_:_:)()
{
  OUTLINED_FUNCTION_129_0();
  v3 = type metadata accessor for RecurringLeaderboardProperties(0);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_1();
  v7 = v6 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39A78, &qword_1D8598298);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_160();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39A80, &unk_1D85982A0);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v68 - v11;
  v13 = *v1 == *v0 && v1[1] == v0[1];
  if (!v13 && (sub_1D8581AB8() & 1) == 0)
  {
    return 0;
  }

  v14 = v1[3];
  v15 = v0[3];
  if (v14)
  {
    if (!v15)
    {
      return 0;
    }

    v16 = v1[2] == v0[2] && v14 == v15;
    if (!v16 && (sub_1D8581AB8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v17 = type metadata accessor for LeaderboardDescription(0);
  v18 = v17[6];
  v19 = *(v9 + 48);
  sub_1D84BAF8C(v1 + v18, v12);
  sub_1D84BAF8C(v0 + v18, &v12[v19]);
  OUTLINED_FUNCTION_282_0(v12);
  if (v13)
  {
    OUTLINED_FUNCTION_282_0(&v12[v19]);
    if (v13)
    {
      sub_1D8436E18(v12, &qword_1ECA39A78, &qword_1D8598298);
      goto LABEL_20;
    }

    goto LABEL_31;
  }

  v26 = OUTLINED_FUNCTION_167();
  sub_1D84BAF8C(v26, v27);
  OUTLINED_FUNCTION_282_0(&v12[v19]);
  if (v28)
  {
    OUTLINED_FUNCTION_123_1();
    sub_1D84BB334();
LABEL_31:
    v29 = &qword_1ECA39A80;
    v30 = &unk_1D85982A0;
LABEL_37:
    sub_1D8436E18(v12, v29, v30);
    return 0;
  }

  sub_1D84BB06C(&v12[v19], v7);
  OUTLINED_FUNCTION_199_0();
  v31 = _s12GameServices0A7HistoryV04PlayC0V2eeoiySbAE_AEtFZ_0();
  if ((v31 & 1) == 0 || (_s12GameServices0A7HistoryV04PlayC0V2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    sub_1D84BB334();
    sub_1D84BB334();
    v29 = &qword_1ECA39A78;
    v30 = &qword_1D8598298;
    goto LABEL_37;
  }

  v32 = *(v3 + 24);
  v33 = *(v2 + v32);
  v34 = *(v7 + v32);
  sub_1D84BB334();
  sub_1D84BB334();
  sub_1D8436E18(v12, &qword_1ECA39A78, &qword_1D8598298);
  if (v33 != v34)
  {
    return 0;
  }

LABEL_20:
  OUTLINED_FUNCTION_154_0();
  if (v22)
  {
    if (!v20)
    {
      return 0;
    }

    OUTLINED_FUNCTION_207_1(v21);
    v25 = v13 && v23 == v24;
    if (!v25 && (sub_1D8581AB8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  if ((sub_1D84B31C4(*(v1 + v17[8]), *(v0 + v17[8])) & 1) == 0 || *(v1 + v17[9]) != *(v0 + v17[9]))
  {
    return 0;
  }

  v36 = v17[10];
  v37 = (v1 + v36);
  v38 = *(v1 + v36 + 8);
  v39 = (v0 + v36);
  v40 = v39[1];
  if (!v38)
  {
    if (!v40)
    {

      goto LABEL_49;
    }

LABEL_47:

    return 0;
  }

  v41 = *v39;
  v69 = *v37;
  v70 = v38;
  if (!v40)
  {
    goto LABEL_47;
  }

  v68[0] = v41;
  v68[1] = v40;
  v42 = OUTLINED_FUNCTION_69_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v42, v43);
  OUTLINED_FUNCTION_125_0();
  sub_1D848211C(v44);
  swift_bridgeObjectRetain_n();

  v45 = sub_1D8581208();

  if ((v45 & 1) == 0)
  {
    return 0;
  }

LABEL_49:
  OUTLINED_FUNCTION_154_0();
  if (v48)
  {
    if (!v46)
    {
      return 0;
    }

    OUTLINED_FUNCTION_207_1(v47);
    v51 = v13 && v49 == v50;
    if (!v51 && (sub_1D8581AB8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v46)
  {
    return 0;
  }

  v52 = v17[12];
  v53 = *(v1 + v52);
  v54 = *(v0 + v52);
  if (v53)
  {
    if (!v54)
    {
      return 0;
    }

    v55 = sub_1D84BAB00(v53, v54);

    if ((v55 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v54)
  {
    return 0;
  }

  v56 = v17[13];
  v57 = *(v1 + v56);
  v58 = *(v0 + v56);
  if (v57 == 3)
  {
    if (v58 != 3)
    {
      return 0;
    }
  }

  else
  {
    LOBYTE(v69) = v57;
    if (v58 == 3)
    {
      return 0;
    }

    LOBYTE(v68[0]) = v58;
    sub_1D847B7D0();
    if ((sub_1D8581208() & 1) == 0)
    {
      return 0;
    }
  }

  v59 = v17[14];
  v60 = *(v1 + v59);
  v61 = *(v0 + v59);
  if (v60 == 2)
  {
    if (v61 != 2)
    {
      return 0;
    }
  }

  else if (v61 == 2 || ((v61 ^ v60) & 1) != 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_154_0();
  if (!v64)
  {
    return !v62;
  }

  if (!v62)
  {
    return 0;
  }

  OUTLINED_FUNCTION_207_1(v63);
  v67 = v13 && v65 == v66;
  return v67 || (sub_1D8581AB8() & 1) != 0;
}

uint64_t sub_1D84B7474(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001D85858D0 == a2;
  if (v3 || (OUTLINED_FUNCTION_7(0xD000000000000011, 0x80000001D85858D0) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_222_1();
    v7 = v3 && a2 == 0xE700000000000000;
    if (v7 || (OUTLINED_FUNCTION_7(v6, 0xE700000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v8 = a1 == 0xD000000000000013 && 0x80000001D85858F0 == a2;
      if (v8 || (OUTLINED_FUNCTION_7(0xD000000000000013, 0x80000001D85858F0) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v9 = OUTLINED_FUNCTION_439(1819568500);
        v10 = v3 && a2 == 0xE500000000000000;
        if (v10 || (OUTLINED_FUNCTION_7(v9, 0xE500000000000000) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v11 = a1 == 1701869940 && a2 == 0xE400000000000000;
          if (v11 || (OUTLINED_FUNCTION_7(1701869940, 0xE400000000000000) & 1) != 0)
          {

            return 4;
          }

          else
          {
            v12 = a1 == 0xD000000000000011 && 0x80000001D8585910 == a2;
            if (v12 || (OUTLINED_FUNCTION_7(0xD000000000000011, 0x80000001D8585910) & 1) != 0)
            {

              return 5;
            }

            else
            {
              v13 = OUTLINED_FUNCTION_439(1734438249);
              v14 = v3 && a2 == 0xE500000000000000;
              if (v14 || (OUTLINED_FUNCTION_7(v13, 0xE500000000000000) & 1) != 0)
              {

                return 6;
              }

              else
              {
                v15 = a1 == 0xD000000000000012 && 0x80000001D8585930 == a2;
                if (v15 || (OUTLINED_FUNCTION_7(0xD000000000000012, 0x80000001D8585930) & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v16 = a1 == 0xD000000000000012 && 0x80000001D8585950 == a2;
                  if (v16 || (OUTLINED_FUNCTION_7(0xD000000000000012, 0x80000001D8585950) & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v17 = OUTLINED_FUNCTION_223();
                    v19 = a1 == v17 && a2 == v18;
                    if (v19 || (OUTLINED_FUNCTION_7(v17, v18) & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v20 = a1 == 0x696C696269736976 && a2 == 0xEA00000000007974;
                      if (v20 || (OUTLINED_FUNCTION_7(0x696C696269736976, 0xEA00000000007974) & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v21 = OUTLINED_FUNCTION_473();
                        if (a1 == v21 && a2 == v22)
                        {

                          return 11;
                        }

                        else
                        {
                          OUTLINED_FUNCTION_7(v21, v22);
                          OUTLINED_FUNCTION_369();
                          if (a1)
                          {
                            return 11;
                          }

                          else
                          {
                            return 12;
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

uint64_t sub_1D84B774C(char a1)
{
  result = 0x644970756F7267;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = OUTLINED_FUNCTION_232_1(1819568500);
      break;
    case 4:
      result = 1701869940;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = OUTLINED_FUNCTION_232_1(1734438249);
      break;
    case 7:
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = OUTLINED_FUNCTION_223();
      break;
    case 10:
      result = 0x696C696269736976;
      break;
    case 11:
      result = OUTLINED_FUNCTION_473();
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_1D84B7888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D84B7474(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D84B78B8()
{
  sub_1D84BB0D0();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84B78F0()
{
  sub_1D84BB0D0();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void LeaderboardDescription.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39A90, &unk_1D85982B0);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  v8 = OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_260(v8, v9);
  sub_1D84BB0D0();
  OUTLINED_FUNCTION_217_1();
  sub_1D8581BB8();
  LOBYTE(v15) = 0;
  OUTLINED_FUNCTION_58_0();
  sub_1D8581A08();
  if (!v1)
  {
    OUTLINED_FUNCTION_290();
    OUTLINED_FUNCTION_58_0();
    sub_1D8581998();
    v10 = type metadata accessor for LeaderboardDescription(0);
    OUTLINED_FUNCTION_340();
    type metadata accessor for RecurringLeaderboardProperties(0);
    OUTLINED_FUNCTION_36_1();
    sub_1D84A8E00(v11);
    OUTLINED_FUNCTION_218_0();
    OUTLINED_FUNCTION_117_1();
    sub_1D85819E8();
    OUTLINED_FUNCTION_256_1(v10[7]);
    LOBYTE(v15) = 3;
    OUTLINED_FUNCTION_58_0();
    sub_1D8581998();
    LOBYTE(v15) = *(v0 + v10[8]);
    OUTLINED_FUNCTION_255_1();
    sub_1D84BB124();
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_117_1();
    sub_1D8581A58();
    OUTLINED_FUNCTION_203_1(5);
    OUTLINED_FUNCTION_117_1();
    sub_1D8581A18();
    OUTLINED_FUNCTION_205_1(v10[10]);

    v12 = OUTLINED_FUNCTION_509();
    __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
    OUTLINED_FUNCTION_1_1();
    sub_1D848211C(v14);
    OUTLINED_FUNCTION_27_1();
    OUTLINED_FUNCTION_117_1();
    sub_1D85819E8();

    OUTLINED_FUNCTION_256_1(v10[11]);
    LOBYTE(v15) = 7;
    OUTLINED_FUNCTION_58_0();
    sub_1D8581998();
    v15 = *(v0 + v10[12]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39AA8, &qword_1D859A9B0);
    sub_1D84BB220(&unk_1ECA39AB0);
    OUTLINED_FUNCTION_27_1();
    OUTLINED_FUNCTION_117_1();
    sub_1D85819E8();
    LOBYTE(v15) = *(v0 + v10[13]);
    sub_1D8466A84();
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_117_1();
    sub_1D85819E8();
    LOBYTE(v15) = *(v0 + v10[14]);
    sub_1D84BB178();
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_117_1();
    sub_1D85819E8();
    OUTLINED_FUNCTION_256_1(v10[15]);
    LOBYTE(v15) = 11;
    OUTLINED_FUNCTION_58_0();
    sub_1D8581998();
  }

  (*(v4 + 8))(v7, v2);
  OUTLINED_FUNCTION_480();
  OUTLINED_FUNCTION_284_0();
}

uint64_t LeaderboardDescription.hash(into:)()
{
  v3 = OUTLINED_FUNCTION_85_1();
  v4 = type metadata accessor for RecurringLeaderboardProperties(v3);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_1();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39A78, &qword_1D8598298);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_160();
  sub_1D85812B8();
  if (*(v1 + 24))
  {
    OUTLINED_FUNCTION_414();
    sub_1D85812B8();
  }

  else
  {
    OUTLINED_FUNCTION_402();
  }

  v10 = type metadata accessor for LeaderboardDescription(0);
  sub_1D84BAF8C(v1 + v10[6], v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v4) == 1)
  {
    OUTLINED_FUNCTION_402();
  }

  else
  {
    sub_1D84BB06C(v2, v8);
    OUTLINED_FUNCTION_414();
    sub_1D8580EA8();
    OUTLINED_FUNCTION_4_1();
    sub_1D84A8E00(v11);
    OUTLINED_FUNCTION_164();
    sub_1D85811E8();
    OUTLINED_FUNCTION_164();
    sub_1D85811E8();
    v12 = *(v8 + *(v4 + 24));
    if (v12 == 0.0)
    {
      v12 = 0.0;
    }

    MEMORY[0x1DA719210](*&v12);
    OUTLINED_FUNCTION_123_1();
    sub_1D84BB334();
  }

  if (*(v1 + v10[7] + 8))
  {
    OUTLINED_FUNCTION_414();
    OUTLINED_FUNCTION_367();
    sub_1D85812B8();
  }

  else
  {
    OUTLINED_FUNCTION_402();
  }

  sub_1D85812B8();

  sub_1D8581B78();
  if (*(v1 + v10[10] + 8))
  {
    OUTLINED_FUNCTION_414();

    v13 = OUTLINED_FUNCTION_150();
    __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
    OUTLINED_FUNCTION_6();
    sub_1D848211C(v15);
    OUTLINED_FUNCTION_367();
    sub_1D85811E8();
  }

  else
  {
    OUTLINED_FUNCTION_402();
  }

  if (*(v1 + v10[11] + 8))
  {
    OUTLINED_FUNCTION_414();
    OUTLINED_FUNCTION_367();
    sub_1D85812B8();
  }

  else
  {
    OUTLINED_FUNCTION_402();
  }

  v16 = *(v1 + v10[12]);
  if (v16)
  {
    OUTLINED_FUNCTION_414();
    sub_1D84BACE8(v0, v16);
  }

  else
  {
    OUTLINED_FUNCTION_402();
  }

  if (*(v1 + v10[13]) == 3)
  {
    OUTLINED_FUNCTION_402();
  }

  else
  {
    OUTLINED_FUNCTION_414();
    sub_1D846779C();
    sub_1D85811E8();
  }

  v17 = *(v1 + v10[14]);
  if (v17 == 2)
  {
    OUTLINED_FUNCTION_402();
  }

  else
  {
    OUTLINED_FUNCTION_414();
    MEMORY[0x1DA7191F0](v17 & 1);
  }

  if (!*(v1 + v10[15] + 8))
  {
    return OUTLINED_FUNCTION_402();
  }

  OUTLINED_FUNCTION_414();
  return sub_1D85812B8();
}

void LeaderboardDescription.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_285();
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39A78, &qword_1D8598298);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_250_0();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39AC0, &qword_1D85982C0);
  OUTLINED_FUNCTION_1();
  v30 = v29;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_110();
  v32 = type metadata accessor for LeaderboardDescription(0);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_2_1();
  v36 = (v35 - v34);
  v38 = *(v37 + 24);
  v39 = type metadata accessor for RecurringLeaderboardProperties(0);
  v61 = v38;
  __swift_storeEnumTagSinglePayload(v36 + v38, 1, 1, v39);
  v40 = (v36 + v32[10]);
  *v40 = 0;
  v40[1] = 0;
  v60 = v40;
  v59 = v27;
  v41 = OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_260(v41, v42);
  sub_1D84BB0D0();
  OUTLINED_FUNCTION_359();
  sub_1D8581BA8();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v27);

    sub_1D8436E18(v36 + v38, &qword_1ECA39A78, &qword_1D8598298);
  }

  else
  {
    v43 = v30;
    LOBYTE(v62) = 0;
    *v36 = sub_1D8581908();
    v36[1] = v44;
    OUTLINED_FUNCTION_83_1(1);
    v36[2] = sub_1D8581898();
    v36[3] = v45;
    OUTLINED_FUNCTION_340();
    OUTLINED_FUNCTION_36_1();
    sub_1D84A8E00(v46);
    sub_1D85818E8();
    sub_1D84BAFFC(v25, v36 + v61);
    OUTLINED_FUNCTION_83_1(3);
    v47 = sub_1D8581898();
    v48 = (v36 + v32[7]);
    *v48 = v47;
    v48[1] = v49;
    OUTLINED_FUNCTION_255_1();
    sub_1D84BB1CC();
    OUTLINED_FUNCTION_214_1();
    sub_1D8581958();
    *(v36 + v32[8]) = 0;
    OUTLINED_FUNCTION_83_1(5);
    *(v36 + v32[9]) = sub_1D8581918() & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389C8, &qword_1D8590820);
    OUTLINED_FUNCTION_3();
    sub_1D848211C(v50);
    OUTLINED_FUNCTION_127();
    sub_1D85818E8();

    *v60 = v62;
    v60[1] = v63;
    OUTLINED_FUNCTION_83_1(7);
    v51 = sub_1D8581898();
    v52 = (v36 + v32[11]);
    *v52 = v51;
    v52[1] = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39AA8, &qword_1D859A9B0);
    sub_1D84BB220(&unk_1ECA39AD8);
    OUTLINED_FUNCTION_127();
    sub_1D85818E8();
    *(v36 + v32[12]) = v62;
    sub_1D847387C();
    OUTLINED_FUNCTION_214_1();
    sub_1D85818E8();
    *(v36 + v32[13]) = 0;
    sub_1D84BB288();
    sub_1D85818E8();
    *(v36 + v32[14]) = 0;
    v54 = sub_1D8581898();
    v56 = v55;
    (*(v43 + 8))(v24, v58);
    v57 = (v36 + v32[15]);
    *v57 = v54;
    v57[1] = v56;
    sub_1D84BB2DC();
    __swift_destroy_boxed_opaque_existential_1(v59);
    OUTLINED_FUNCTION_291();
    sub_1D84BB334();
  }

  OUTLINED_FUNCTION_220_2();
  OUTLINED_FUNCTION_284_0();
}

uint64_t LeaderboardEntry.context.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1D84B8748()
{
  v2 = OUTLINED_FUNCTION_393_0();
  v4 = *(v3(v2) + 20);
  sub_1D8580EA8();
  OUTLINED_FUNCTION_4_0();
  v7 = *(v6 + 16);

  return v7(v0, v1 + v4, v5);
}

uint64_t sub_1D84B87D8()
{
  v2 = OUTLINED_FUNCTION_85_1();
  v4 = *(v3(v2) + 20);
  sub_1D8580EA8();
  OUTLINED_FUNCTION_4_0();
  v6 = *(v5 + 40);

  return v6(v1 + v4, v0);
}

uint64_t LeaderboardEntry.dateEarned.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  type metadata accessor for LeaderboardEntry(v0);
  return OUTLINED_FUNCTION_106();
}

uint64_t LeaderboardEntry.formattedScore.getter()
{
  type metadata accessor for LeaderboardEntry(0);
  OUTLINED_FUNCTION_188_1();
  return OUTLINED_FUNCTION_194();
}

uint64_t LeaderboardEntry.formattedScore.setter()
{
  OUTLINED_FUNCTION_129_0();
  type metadata accessor for LeaderboardEntry(0);
  result = OUTLINED_FUNCTION_235_1();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t LeaderboardEntry.formattedScore.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  type metadata accessor for LeaderboardEntry(v0);
  return OUTLINED_FUNCTION_106();
}

uint64_t LeaderboardEntry.leaderboard.getter()
{
  v0 = OUTLINED_FUNCTION_393_0();
  v1 = type metadata accessor for LeaderboardEntry(v0);
  OUTLINED_FUNCTION_202_1(*(v1 + 28));
}

uint64_t LeaderboardEntry.leaderboard.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  type metadata accessor for LeaderboardEntry(0);
  result = OUTLINED_FUNCTION_235_1();
  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t LeaderboardEntry.leaderboard.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  type metadata accessor for LeaderboardEntry(v0);
  return OUTLINED_FUNCTION_106();
}

uint64_t LeaderboardEntry.player.getter()
{
  v0 = OUTLINED_FUNCTION_393_0();
  v1 = type metadata accessor for LeaderboardEntry(v0);
  OUTLINED_FUNCTION_202_1(*(v1 + 32));
}

uint64_t LeaderboardEntry.player.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  type metadata accessor for LeaderboardEntry(0);
  result = OUTLINED_FUNCTION_235_1();
  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t LeaderboardEntry.player.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  type metadata accessor for LeaderboardEntry(v0);
  return OUTLINED_FUNCTION_106();
}

uint64_t LeaderboardEntry.rank.setter()
{
  v2 = OUTLINED_FUNCTION_85_1();
  result = type metadata accessor for LeaderboardEntry(v2);
  *(v1 + *(result + 36)) = v0;
  return result;
}

uint64_t LeaderboardEntry.rank.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  type metadata accessor for LeaderboardEntry(v0);
  return OUTLINED_FUNCTION_106();
}

uint64_t LeaderboardEntry.score.setter()
{
  v2 = OUTLINED_FUNCTION_85_1();
  result = type metadata accessor for LeaderboardEntry(v2);
  *(v1 + *(result + 40)) = v0;
  return result;
}

uint64_t LeaderboardEntry.score.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  type metadata accessor for LeaderboardEntry(v0);
  return OUTLINED_FUNCTION_106();
}

uint64_t LeaderboardEntry.init(context:dateEarned:formattedScore:leaderboard:player:rank:score:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v14 = *a6;
  v15 = a6[1];
  v17 = *a7;
  v16 = a7[1];
  *a9 = a1;
  *(a9 + 8) = a2 & 1;
  v18 = type metadata accessor for LeaderboardEntry(0);
  v19 = v18[5];
  sub_1D8580EA8();
  OUTLINED_FUNCTION_4_0();
  result = (*(v20 + 32))(a9 + v19, a3);
  v22 = (a9 + v18[6]);
  *v22 = a4;
  v22[1] = a5;
  v23 = (a9 + v18[7]);
  *v23 = v14;
  v23[1] = v15;
  v24 = (a9 + v18[8]);
  *v24 = v17;
  v24[1] = v16;
  *(a9 + v18[9]) = a8;
  *(a9 + v18[10]) = a10;
  return result;
}

BOOL static LeaderboardEntry.== infix(_:_:)()
{
  OUTLINED_FUNCTION_263_0();
  v5 = *(v3 + 8);
  if (*(v4 + 8))
  {
    if (!*(v3 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*v1 != *v0)
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  v6 = type metadata accessor for LeaderboardEntry(0);
  if (OUTLINED_FUNCTION_278_1(v6))
  {
    v7 = OUTLINED_FUNCTION_140_1(v2[6]);
    v11 = v7 == v10 && v8 == v9;
    if (v11 || (sub_1D8581AB8() & 1) != 0)
    {
      v12 = OUTLINED_FUNCTION_140_1(v2[7]);
      if (sub_1D84B3364(v12, v13, v14, v15, &qword_1ECA38A90, &qword_1D8590AB0))
      {
        v16 = OUTLINED_FUNCTION_140_1(v2[8]);
        if ((sub_1D84B3364(v16, v17, v18, v19, &qword_1ECA389B8, &qword_1D8590B30) & 1) != 0 && *(v1 + v2[9]) == *(v0 + v2[9]))
        {
          return *(v1 + v2[10]) == *(v0 + v2[10]);
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1D84B8DB8()
{
  OUTLINED_FUNCTION_263_0();
  v2 = OUTLINED_FUNCTION_219_1();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_7(v2, 0xE700000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = v1 == 0x6E72614565746164 && v0 == 0xEA00000000006465;
    if (v6 || (OUTLINED_FUNCTION_7(0x6E72614565746164, 0xEA00000000006465) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_229_1();
      v9 = v1 == v7 && v0 == v8;
      if (v9 || (OUTLINED_FUNCTION_7(v7, v8) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v10 = OUTLINED_FUNCTION_299();
        v12 = v1 == v10 && v0 == v11;
        if (v12 || (OUTLINED_FUNCTION_7(v10, v11) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v13 = OUTLINED_FUNCTION_70();
          v14 = v1 == v13 && v0 == 0xE600000000000000;
          if (v14 || (OUTLINED_FUNCTION_7(v13, 0xE600000000000000) & 1) != 0)
          {

            return 4;
          }

          else
          {
            v15 = v1 == 1802396018 && v0 == 0xE400000000000000;
            if (v15 || (OUTLINED_FUNCTION_7(1802396018, 0xE400000000000000) & 1) != 0)
            {

              return 5;
            }

            else
            {
              v16 = OUTLINED_FUNCTION_439(1919902579);
              if (v4 && v0 == 0xE500000000000000)
              {

                return 6;
              }

              else
              {
                OUTLINED_FUNCTION_7(v16, 0xE500000000000000);
                OUTLINED_FUNCTION_369();
                if (v1)
                {
                  return 6;
                }

                else
                {
                  return 7;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1D84B8F50(char a1)
{
  result = 0x747865746E6F63;
  switch(a1)
  {
    case 1:
      result = 0x6E72614565746164;
      break;
    case 2:
      result = OUTLINED_FUNCTION_229_1();
      break;
    case 3:
      result = OUTLINED_FUNCTION_299();
      break;
    case 4:
      result = OUTLINED_FUNCTION_70();
      break;
    case 5:
      result = 1802396018;
      break;
    case 6:
      result = 0x65726F6373;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D84B902C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D84B8DB8();
  *a1 = result;
  return result;
}

uint64_t sub_1D84B9054()
{
  sub_1D84BB388();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84B908C()
{
  sub_1D84BB388();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void LeaderboardEntry.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39AE8, &qword_1D85982C8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_110();
  v2 = OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_260(v2, v3);
  sub_1D84BB388();
  OUTLINED_FUNCTION_359();
  OUTLINED_FUNCTION_217_1();
  sub_1D8581BB8();
  OUTLINED_FUNCTION_232();
  sub_1D85819C8();
  if (!v0)
  {
    v4 = type metadata accessor for LeaderboardEntry(0);
    OUTLINED_FUNCTION_290();
    sub_1D8580EA8();
    OUTLINED_FUNCTION_4_1();
    sub_1D84A8E00(v5);
    OUTLINED_FUNCTION_218_0();
    OUTLINED_FUNCTION_232();
    sub_1D8581A58();
    OUTLINED_FUNCTION_256_1(v4[6]);
    OUTLINED_FUNCTION_340();
    OUTLINED_FUNCTION_232();
    sub_1D8581A08();
    OUTLINED_FUNCTION_205_1(v4[7]);
    OUTLINED_FUNCTION_191_1();

    v6 = OUTLINED_FUNCTION_509();
    __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
    OUTLINED_FUNCTION_1_1();
    sub_1D848211C(v8);
    OUTLINED_FUNCTION_27_1();
    OUTLINED_FUNCTION_232();
    sub_1D8581A58();
    OUTLINED_FUNCTION_228_0();
    OUTLINED_FUNCTION_205_1(v4[8]);
    OUTLINED_FUNCTION_255_1();

    v9 = OUTLINED_FUNCTION_509();
    __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
    OUTLINED_FUNCTION_1_1();
    sub_1D848211C(v11);
    OUTLINED_FUNCTION_27_1();
    OUTLINED_FUNCTION_232();
    sub_1D8581A58();
    OUTLINED_FUNCTION_228_0();
    OUTLINED_FUNCTION_203_1(5);
    OUTLINED_FUNCTION_232();
    sub_1D8581A48();
    OUTLINED_FUNCTION_203_1(6);
    OUTLINED_FUNCTION_232();
    sub_1D8581A38();
  }

  v12 = OUTLINED_FUNCTION_291();
  v13(v12);
  OUTLINED_FUNCTION_220_2();
  OUTLINED_FUNCTION_284_0();
}

uint64_t LeaderboardEntry.hash(into:)(uint64_t a1)
{
  if (*(v1 + 8) == 1)
  {
    OUTLINED_FUNCTION_402();
  }

  else
  {
    v2 = *v1;
    OUTLINED_FUNCTION_414();
    MEMORY[0x1DA7191F0](v2);
  }

  v3 = type metadata accessor for LeaderboardEntry(0);
  sub_1D8580EA8();
  OUTLINED_FUNCTION_4_1();
  sub_1D84A8E00(v4);
  sub_1D85811E8();
  sub_1D85812B8();
  v5 = OUTLINED_FUNCTION_150();
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_122_0();
  sub_1D848211C(v7);
  OUTLINED_FUNCTION_161();
  sub_1D85811E8();
  v8 = OUTLINED_FUNCTION_150();
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  sub_1D848211C(&qword_1EE0E0090);
  OUTLINED_FUNCTION_161();
  sub_1D85811E8();
  MEMORY[0x1DA7191F0](*(v1 + *(v3 + 36)));
  return MEMORY[0x1DA7191F0](*(v1 + *(v3 + 40)));
}

uint64_t sub_1D84B94E4(uint64_t (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_379(a1);
  a1(v3);
  return sub_1D8581B98();
}

void LeaderboardEntry.init(from:)()
{
  OUTLINED_FUNCTION_285();
  v2 = v1;
  v33 = sub_1D8580EA8();
  OUTLINED_FUNCTION_1();
  v32 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_1();
  v7 = v6 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39AF0, &qword_1D85982D0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v8);
  v9 = type metadata accessor for LeaderboardEntry(0);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_1();
  v13 = v12 - v11;
  v34 = v2;
  v14 = OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_260(v14, v15);
  sub_1D84BB388();
  sub_1D8581BA8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    LOBYTE(v35) = 0;
    OUTLINED_FUNCTION_175_1();
    *v13 = sub_1D85818C8();
    *(v13 + 8) = v16 & 1;
    OUTLINED_FUNCTION_290();
    OUTLINED_FUNCTION_4_1();
    sub_1D84A8E00(v17);
    OUTLINED_FUNCTION_175_1();
    sub_1D8581958();
    (*(v32 + 32))(v13 + v9[5], v7, v33);
    OUTLINED_FUNCTION_105_0(2);
    v18 = sub_1D8581908();
    v19 = (v13 + v9[6]);
    *v19 = v18;
    v19[1] = v20;
    v21 = OUTLINED_FUNCTION_189();
    __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
    OUTLINED_FUNCTION_191_1();
    OUTLINED_FUNCTION_3();
    sub_1D848211C(v23);
    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_175_1();
    sub_1D8581958();
    v24 = (v13 + v9[7]);
    *v24 = v35;
    v24[1] = v36;
    v25 = OUTLINED_FUNCTION_189();
    __swift_instantiateConcreteTypeFromMangledNameV2(v25, v26);
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_3();
    sub_1D848211C(v27);
    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_175_1();
    sub_1D8581958();
    v28 = (v13 + v9[8]);
    *v28 = v35;
    v28[1] = v36;
    OUTLINED_FUNCTION_105_0(5);
    *(v13 + v9[9]) = sub_1D8581948();
    OUTLINED_FUNCTION_105_0(6);
    v29 = sub_1D8581938();
    v30 = OUTLINED_FUNCTION_78_0();
    v31(v30);
    *(v13 + v9[10]) = v29;
    sub_1D84BB2DC();
    __swift_destroy_boxed_opaque_existential_1(v34);
    sub_1D84BB334();
  }

  OUTLINED_FUNCTION_284_0();
}